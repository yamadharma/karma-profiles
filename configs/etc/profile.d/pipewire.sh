#!/usr/bin/env sh

## Enable PipeWire
systemctl --user enable --now pipewire.service
systemctl --user enable --now pipewire-media-session.service

## Replace PuleAudio
systemctl --user disable pulseaudio.socket pulseaudio.service
systemctl --user enable pipewire.socket pipewire-pulse.socket
systemctl --user mask pulseaudio.socket pulseaudio.service
