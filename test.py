#!/usr/bin/python3

with open('spotifyuris.txt','r') as f:
    spotifyUris = f.readlines()

for spotifyUri in spotifyUris:
    if "\n"  in spotifyUri:
        spotifyUri = spotifyUri[:-1]
    print(spotifyUri)
