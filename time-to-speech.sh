#!/bin/bash

# First of all, make this script executable
# chmod +x time-to-speech.sh

# Then create a schedule to run the script using crontab
# crontab -e
# 0 * * * * /path/to/script/time-to-speech.sh

# The audio files location
DIR="$HOME/bin/time-to-speech/audio/"

# The audio files language
# make sure that you have the audio
# files named in the following format
# 1-fr.wav, 2-fr.wav, 3-fr.wav, ...
# 1-es.wav, 2-es.wav, 3-es.wav, ...
# 1-en.wav, 2-en.wav, 3-en.wav, ...
# You can make and download your audio files here:
# http://public.research.att.com/~ttsweb/tts/demo.php
LANG="-en"

# The audio files extension
# .wav, .mp3
EXT=".wav"

# let's rock
HOUR=$(date +%-l)
aplay -q "$DIR$HOUR$LANG$EXT"
notify-send 'What time is it?' "$HOUR o'clock!" -u low -i clock

# Aplay only works with ALSA audio

# Thanks to Charles Socci who made
# the script I used to inspire me
# http://charlessocci.com/2009/05/27/a-linux-talking-clock/
