import subprocess
import shutil
import os

## Create output directory if it doesn't exist
projectDir = os.path.dirname(os.path.realpath(__file__))
sourceDir = os.path.join(projectDir, "src")
outputDir = os.path.join(projectDir, "build")
try:
    os.makedirs(outputDir)
except OSError:
    if not os.path.isdir(outputDir):
        raise

## Run lilypond
lilypondFiles = ['solfege-exercises-major.ly', 'solfege-exercises-minor.ly']
for fileName in lilypondFiles:
    try:
        lilypondFilePath = os.path.join(sourceDir, fileName)
        stuff = subprocess.call(["lilypond", "--loglevel=BASIC_PROGRESS", "--output=" + outputDir, "--pdf", lilypondFilePath])
    except:
        print("ERROR! Something went wrong with Lilypond document generation. Check if you have Lilypond installed and available on the path!")

# Run text-to-speech
