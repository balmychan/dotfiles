if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

function play() {
  mplayer ~/Dropbox/Media/Music/$1.m4a -novideo $@
}

function download() {
  youtube-dl -f 140 https://www.youtube.com/watch?v=$1 -o ~/Dropbox/Media/Music/$2.m4a
}
