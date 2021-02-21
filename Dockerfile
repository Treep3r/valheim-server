FROM steamcmd/steamcmd:latest

ARG SERVER_DIRECTORY=/server
ARG WORLDS_DIRECTORY=/root/.config/unity3d/IronGate/Valheim/worlds/

ENV	SERVER_DIRECTORY=$SERVER_DIRECTORY \
    WORLDS_DIRECTORY=$WORLDS_DIRECTORY \
    SERVER_NAME="scones' dedicated valheim server dockerized" \
    SERVER_PASSWORD="some password default you need to change" \
    IS_PUBLIC="1" \
    PORT="2456" \
    WORLD_NAME="Some great valheim world"

RUN mkdir -p $SERVER_DIRECTORY
RUN mkdir -p $WORLDS_DIRECTORY

WORKDIR $SERVER_DIRECTORY

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["bash", "/entrypoint.sh"]
