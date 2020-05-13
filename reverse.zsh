# https://qiita.com/b4b4r07/items/e465efe0b020407bdd44
function reverse() {
    perl -e 'print reverse <>' ${@+"$@"}
}
