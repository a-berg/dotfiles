#!/usr/bin/env fish
function create_tree
    if test (count $argv) -gt 1
        echo "Use it only with 1 argument please"
    else
        set FOLDERS controllers domain infrastructure usecases
         "Creating the folder: $argv with subfolders: $FOLDERS"
        mkdir -p $argv
        touch $argv/__init__.py
        for FOLDER in $FOLDERS
            mkdir -p $argv/$FOLDER
            touch $argv/$FOLDER/__init__.py
        end
        mkdir -p $argv/domain/entities
        touch -p $argv/domain/entities/__init__.py
        mkdir -p $argv/domain/services
        mkdir -p $argv/domain/services/__init__.py
    end
end
