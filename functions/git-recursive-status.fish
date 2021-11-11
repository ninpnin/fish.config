function git-recursive-status
    for d in */
        cd $d
        if test -d ".git/"
            if string length -q -- (git status -s)
                echo "Changes in: $d"
                git status -s
            end
        end
        cd ..
    end
end
