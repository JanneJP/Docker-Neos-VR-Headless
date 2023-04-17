FROM mono

ARG DEBIAN_FRONTEND=noninteractive

ARG STEAM_USERNAME
ARG STEAM_PASSWORD
ARG BETA_CODE

RUN useradd -m steam
RUN apt-get update
RUN apt-get install wget -y

RUN dpkg --add-architecture i386
RUN apt-get update
RUN apt-get install lib32gcc1 -y

RUN mkdir -p /opt/game
RUN chown steam:steam /opt/game

USER steam

WORKDIR /home/steam

RUN wget https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz
RUN tar xvf steamcmd_linux.tar.gz

RUN chown steam:steam /home/steam

RUN ./steamcmd.sh +force_install_dir /opt/game +login ${STEAM_USERNAME} ${STEAM_PASSWORD} +app_update 740250 -beta headless-client -betapassword ${BETA_CODE} +quit

WORKDIR /opt/game

ENTRYPOINT [ "mono",  "Neos.exe" ]