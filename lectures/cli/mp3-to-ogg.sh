#!/bin/bash
# transcode from mp3 to high-quality (q=8) ogg vorbis
# bin-depends: mp3info2, lame, and oggenc
#
# tested on Fedora 20 (with RPM-Fusion repos enabled)
# adapted 2013 December 22 from
# https://www.linuxquestions.org/questions/programm \
# ing-9/bash-mp3-to-ogg-script-535632/

# find all the mp3's
find . -iname "*.mp3" | while read file
# for each mp3..
do
# pull the metadata / tags
  eval "`mp3info2 -p "ARTIST='%a' LABEL='%l' TRACK='%n'
                    TITLE='%t' GENRE='%g' YEAR='%y' 
                    COMMENT='%c'" "$file"`"
# set file name without file extension=mp3
  ofile=${file#./}
# pipe the raw audio to OGGENC encoder
# saving at quality=8 with original metadata
  lame --decode "${file}" - |
    oggenc -q 8 -a "$ARTIST" -t "$TITLE" \
    -l "$LABEL" -G "$GENRE" -d "$YEAR" -N "$TRACK" \
    -c "comment=$COMMENT" -o "${ofile%[Mm][Pp]3}ogg" -
done