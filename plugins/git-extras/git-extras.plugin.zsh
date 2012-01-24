#!/bin/zsh 
git-alias() {


case $# in
  0) git config --get-regexp 'alias.*' | colrm 1 6 | sed 's/[ ]/ = /' | sort ;;
  1) git alias | grep -e "$1" ;;
  *) git config --global "alias.$1" "$2" ;;
esac

}


git-back() {


if test $# -eq 0; then
  git reset --soft HEAD~1
else
  if `echo $1 | grep -q [^[:digit:]]`; then
    echo $1 is not a number
  else
    git reset --soft HEAD~$1
  fi
fi
}


git-bug() {


if test "$1" = "finish"; then
  test -z $2 && echo "bug <name> required." && exit 1
  branch=bug/$2
  git merge --no-ff $branch && git delete-branch $branch
else
  test -z $1 && echo "bug <name> required." && exit 1
  branch=bug/$1
  git checkout -b $branch &> /dev/null
  git checkout $branch &> /dev/null
fi
}


git-changelog() {


CHANGELOG=`ls | egrep 'change|history' -i`
if test "$CHANGELOG" = ""; then CHANGELOG='History.md'; fi
DATE=`date +'%Y-%m-%d'`
HEAD="\nn.n.n / $DATE \n==================\n"

if test "$1" = "--list"; then
  version=`git for-each-ref refs/tags --sort=-authordate --format='%(refname)' \
    --count=1 | sed 's/^refs\/tags\///'`
  if test -z "$version"; then
    git log --pretty="format:  * %s"
  else
    git log --pretty="format:  * %s" $version..
  fi
else
  tmp="/tmp/changelog"
  echo $HEAD > $tmp
  git-changelog --list >> $tmp
  echo '' >> $tmp
  if [ -f $CHANGELOG ]; then cat $CHANGELOG >> $tmp; fi
  mv $tmp $CHANGELOG
  test -n "$EDITOR" && $EDITOR $CHANGELOG
fi

}


git-commits-since() {


SINCE="last week"
test $# -ne 0 && SINCE=$@
echo "... commits since $SINCE" >&2
git log --pretty='%an - %s' --after="@{$SINCE}"
}


git-contrib() {


user="$*"

test -z "$user" && echo "user name required." && exit 1

count=`git log --oneline --pretty="format: %an" | grep "$user" | wc -l`
test $count -eq 0 && echo "$user did not contribute." && exit 1
git shortlog | grep "$user (" -A $count

}


git-count() {


if test "$1" = "--all"; then
  git shortlog -n $@ | grep "):" | sed 's|:||'
  echo
fi

echo total `git log --oneline | wc -l`
}


git-create-branch() {


branch=$1
test -z $branch && echo "branch required." && exit 1

git push origin origin:refs/heads/$branch
git fetch origin
git checkout --track -b $branch origin/$branch
git pull

}


git-delete-branch() {


branch=$1
test -z $branch && echo "branch required." && exit 1
git branch -D $branch
git branch -d -r origin/$branch && git push origin :$branch

}


git-delete-submodule() {


submodule=$1

test -z $submodule && echo "submodule required" && exit 1
test ! -f .gitmodules && echo ".gitmodules file not found" && exit 2

NAME=$(echo $submodule | sed 's/\/$//g')
test -z $(git config --file=.gitmodules submodule.$NAME.url) && echo "submodule not found" && exit 3

git config --remove-section submodule.$NAME
git config --file=.gitmodules --remove-section submodule.$NAME
git rm --cached $NAME

}


git-delete-tag() {


tagname=$1
test -z $tagname && echo "tag required." && exit 1
git tag -d $tagname && git push origin :refs/tags/$tagname

}


git-feature() {


if test "$1" = "finish"; then
  test -z $2 && echo "feature <name> required." && exit 1
  branch=feature/$2
  git merge --no-ff $branch && git delete-branch $branch
else
  test -z $1 && echo "feature <name> required." && exit 1
  branch=feature/$1
  git checkout -b $branch &> /dev/null
  git checkout $branch &> /dev/null
fi
}


git-fresh-branch() {


branch=$1

test -z $branch && echo "branch required." && exit 1

git symbolic-ref HEAD refs/heads/$branch
rm .git/index
git clean -fdx

}


git-gh-pages() {


echo 'setting up gh-pages'
git symbolic-ref HEAD refs/heads/gh-pages \
  && rm .git/index \
  && git clean -fdx \
  && echo 'My Page' > index.html \
  && git add . \
  && git commit -a -m 'Initial commit' \
  && git push -u origin gh-pages \
  && git fetch origin \
  && echo 'complete'

}


git-graft() {


src=$1
dst=$2

test -z $src && echo "source branch required." && exit 1

git checkout $dst \
  && git merge --no-ff $src \
  && git branch -d $src

}


git-ignore() {


if test $# -eq 0; then
  test -f .gitignore && cat .gitignore
else
  for pattern in $@; do
    echo "... adding '$pattern' to .gitignore"
    echo $pattern >> .gitignore
  done
fi

}


git-pull-request() {


request=$1
repo=${PWD##*/}
user=`git config github.user`
url="https://github.com/$user/$repo/pull/$request.patch"

test -z "$request" && echo "pull request number required" && exit 1
test -z "$repo" && echo "failed to detect repo" && exit 2
test -z "$user" && echo "failed to fetch github.user" && exit 3

echo "pulling $url"
curl -# $url \
  | git am --signoff \
  && echo "completed pull request $request"
}


git-refactor() {


if test "$1" = "finish"; then
  test -z $2 && echo "refactor <name> required." && exit 1
  branch=refactor/$2
  git merge --no-ff $branch && git delete-branch $branch
else
  test -z $1 && echo "refactor <name> required." && exit 1
  branch=refactor/$1
  git checkout -b $branch &> /dev/null
  git checkout $branch &> /dev/null
fi
}


git-release() {
#!/usr/bin/env sh

hook() {
  local hook=.git/hooks/$1.sh
  if test -f $hook; then
    echo "... $1"
    . $hook
  fi
}

if test $# -gt 0; then
  hook pre-release
  echo "... releasing $1"
  git commit -a -m "Release $1" \
    && git tag $1 \
    && git push \
    && git push --tags \
    && hook post-release \
    && echo "... complete"
else
  echo "tag required" && exit 1
fi

}


git-repl() {


while true; do
  # Readline
  read -r -p "git> " cmd

  # EOF
  test $? -ne 0 && break

  # History
  history -s "$cmd"

  # Built-in commands
  case $cmd in
    ls) cmd=ls-files;;
    quit) break;;
  esac

  # Execute
  git $cmd
done

echo
}


git-setup() {


dir=$(test -z "$*" && echo "." || echo "$*")
mkdir -p "$dir" \
  && cd "$dir" \
  && touch README \
  && git init \
  && git add . \
  && git commit -m 'Initial commit'

}


git-summary() {


COMMITISH=""
test $# -ne 0 && COMMITISH=$@
project=${PWD##*/}
commit_count=`git log --oneline $COMMITISH | wc -l | tr -d ' '`
file_count=`git ls-files | wc -l | tr -d ' '`
authors=`git shortlog -n -s $COMMITISH | awk '
  { args[NR] = $0; sum += $0 }
  END {
    for (i = 1; i <= NR; ++i) {
      printf "%-30s %2.1f%%\n", args[i], 100 * args[i] / sum
    }
  }'`

echo
echo " project: $project"
echo " commits: $commit_count"
if test "$COMMITISH" = ""; then
    echo " files  : $file_count"
fi
echo " authors: "
echo "$authors"
echo

}


git-touch() {


filename="$*"

test -z "$filename" && echo "filename required" && exit 1

touch "$filename" \
  && git add "$filename"

}


git-undo() {


if test $# -eq 0; then
  git reset --hard HEAD~1
else
  if `echo $1 | grep -q [^[:digit:]]`; then
    echo $1 is not a number
  else
    git reset --hard HEAD~$1
  fi
fi
}


