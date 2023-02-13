for dir in `cat ./.syncinclude`; do
    dir="${dir/#\~/$HOME}"
    # eval is evil, do not use eval
    eval "rsync -r ${dir} ."
done
