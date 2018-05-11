PS1='$(pwd|awk -F/ -v "n=$(tput cols)" -v "h=^$HOME" '\''{sub(h,"~");n=0.3*n;b=$1"/"$2} length($0)<=n || NF==3 {print;next;} NF>3{b=b"/../"; e=$NF; n-=length(b $NF); for (i=NF-1;i>3 && n>length(e)+1;i--) e=$i"/"e;} {print b e;}'\'') \$ '

export LC_CTYPE=C 
export LANG=C
source ~/.bashaliases
source ~/.bashscripts

alias crontab="VIM_CRONTAB=true crontab"
export GOPATH="${HOME}/go"
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin":~/bin/splunk/

test -d "${GOPATH}" || mkdir "${GOPATH}"
test -d "${GOPATH}/src/github.com" || mkdir -p "${GOPATH}/src/github.com"
