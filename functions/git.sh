function amendao() {
  git add . &&
  git commit --amend &&
  git push -f
}

function commitall(){
  git add . &&
  git commit -m "$1"
}