# Docker-Neos-VR-Headless
Dockerized headless client for Neos VR

## Requirements

- [Docker](https://docs.docker.com/get-docker/)

- [NeosVR patreon](https://www.patreon.com/neosvr/) membership at the $15 level

- Member of the [NeosVR discord](http://discord.gg/NeosVR), with your account linked with Patreon

## How to

- Create a new [steam account](https://store.steampowered.com/join/)

- Add [Neos VR](https://store.steampowered.com/app/740250/Neos_VR/) to your new accounts game library

- Disable steam guard. Otherwise the image building process might fail.

- Grab the Headless client beta code from the [#headless-client](https://discord.com/channels/402159838827905024/619845139770376192) discord channel, in the first pinned message. Requires linked patreon account and patronage level.

- Build the neos-headless image

        docker build . -t neos-headless:latest --build-arg BETA_CODE=<BETA CODE HERE> --build-arg STEAM_USERNAME=<STEAM USERNAME HERE> --build-arg STEAM_PASSWORD=<STEAM PASSWORD HERE>

- Make a copy of the `example.Config.json` and call it `Config.json`, place it next to `docker-compose.yml`

- Make a copy of `example.env` and call it `.env`, place it next to `Config.json` and `docker-compose.yml`

- Edit both to your liking. Refer the the wiki link below for more information about the `Config.json` file.

- Start the server

        docker compose up -d

- The server should become reachable via the worlds browser in a couple minutes.

## Notes

Special characters in either the Steam or Neos account passwords might cause issues with the process.

## Useful mods

[Headless Tweaks](https://github.com/New-Project-Final-Final-WIP/HeadlessTweaks)

## Resources

[Wiki: Headless Client](https://wiki.neos.com/Headless_Client)

[Wiki: Configuration file](https://wiki.neos.com/Headless_Client/Configuration_File)
