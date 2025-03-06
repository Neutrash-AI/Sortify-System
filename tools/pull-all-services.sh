#!/bin/bash

# pull latest changes from a specified branch in a subdirectory
git_pull_repo() {
    local subdirectory="$1"
    local branch="${2:-main}" # default to main
    
    # if subdirectory variable is empty, pull the main repository
    if [ -z "$subdirectory" ]; then
        echo "Updating main repository"
        git pull origin "$branch"
    else
        echo "Updating $subdirectory"
        (cd "./$subdirectory" && git pull origin "$branch")
    fi

    echo "" # insert newline
}

git_pull_repo "" "main"
git_pull_repo "Sortify-FE" "main"
git_pull_repo "Sortify-BE" "main"
git_pull_repo "Sortify-Hardware" "main"