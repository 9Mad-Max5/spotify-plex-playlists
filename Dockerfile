FROM python:alpine
LABEL Description="Container to sync Spotify playlists to Plex."

VOLUME /config
VOLUME /log

ENV SPOTIPY_CLIENT_ID="" \
SPOTIPY_CLIENT_SECRET="" \
PLEX_URL="" \
PLEX_TOKEN="" \
#SPOTIFY_URIS="" \
SECONDS_TO_WAIT=1800 \
LOGLEVEL="INFO"

WORKDIR /app/

COPY spotify-sync.py /app/spotify-sync.py
COPY requirements.txt /app/requirements.txt
#ADD spotifyuris.txt /config/

RUN pip install -r requirements.txt

CMD python spotify-sync.py
