import subprocess
import os
import pprint
import traceback

import yaml

TRACK_INFO_FILENAME = 'track-info.yaml'
SPEECH_SPEED = 150
SPEECH_GAP = 4
pPrinter = pprint.PrettyPrinter(indent=2, width=120)

introText = '\n  _                 _   _             '
introText += '\n | |               | | | |            '
introText += '\n | |__   ___   ___ | |_| | ___  __ _  '
introText += '\n | \'_ \ / _ \ / _ \| __| |/ _ \/ _` | '
introText += '\n | |_) | (_) | (_) | |_| |  __/ (_| | '
introText += '\n |_.__/ \___/ \___/ \__|_|\___|\__, | '
introText += '\n           | |/ _|              __/ | '
introText += '\n  ___  ___ | | |_ ___  __ _  __|___/  '
introText += '\n / __|/ _ \| |  _/ _ \/ _` |/ _ \     '
introText += '\n \__ \ (_) | | ||  __/ (_| |  __/     '
introText += '\n |___/\___/|_|_| \___|\__, |\___|     '
introText += '\n                       __/ |          '
introText += '\n                      |___/           \n'
print(introText)

## Create output directory if it doesn't exist
PROJECT_DIR = os.path.dirname(os.path.realpath(__file__))
SOURCE_DIR = os.path.join(PROJECT_DIR, "src")
OUTPUT_DIR = os.path.join(PROJECT_DIR, "build")
try:
    os.makedirs(OUTPUT_DIR)
except OSError:
    if not os.path.isdir(OUTPUT_DIR):
        raise

## Run lilypond
lilypondFiles = ['solfege-exercises-major.ly', 'solfege-exercises-minor.ly']
for fileName in lilypondFiles:
    try:
        lilypondFilePath = os.path.join(SOURCE_DIR, fileName)
        stuff = subprocess.call(["lilypond", "--loglevel=BASIC_PROGRESS", "--output=" + OUTPUT_DIR, "--pdf", lilypondFilePath])
    except:
        print("ERROR! Something went wrong with Lilypond document generation. Check if you have Lilypond installed and available on the path!")
        traceback.print_exc()

# Run text-to-speech
trackInfoPath = os.path.join(SOURCE_DIR, TRACK_INFO_FILENAME)

# Reading from track info file
try:
    stream = open(trackInfoPath, 'r')
    yamlData = yaml.load(stream)

    print("Building track info...")

    infoMajor = yamlData['infoMajor']
    infoMinor = yamlData['infoMinor']
    
    for trackInfo in infoMajor['trackInfo']:
        try:
            wavFileName = '{0:02d}-{1}.wav'.format(trackInfo['trackNum'], trackInfo['title'])
            wavFilePath = os.path.join(OUTPUT_DIR, wavFileName)
            result = subprocess.call(['espeak', '-ven+m1' , '-s', '{0}'.format(SPEECH_SPEED), '-g', '{0}'.format(SPEECH_GAP), '-w', wavFilePath, trackInfo['text']])
        except:
            print("ERROR! Something went wrong with text-to-speech generation!")
            traceback.print_exc()

except:
    print("Track info file failed to load!")
    traceback.print_exc()
finally:
    stream.close()

print("Done!\n\n")