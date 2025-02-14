# custom functions
function mkcd
    if test -z $argv
        echo "Usage: mkcd <directory>"
        return 1
    end

    mkdir -p $argv[1]
    cd $argv[1]
end
