
# >>> autosource <<< #
complete -W $(ls) dothis

function deactivate_check {
  if [ ! -z "${VIRTUAL_ENV}" ]; then
    deactivate
  fi
}

function autosource { 
  # Navigating parent directory
  local ldir=$(pwd)
  while [ ${ldir} != "/" ]; do
    if [ -d "${ldir}/venv" ]; then
      deactivate_check
      source "${ldir}/venv/bin/activate"
      return
    fi
    ldir=$(dirname ${ldir})
  done
  deactivate_check
}

function lazycd {
  cd $1
  autosource
}

LAZYCD="v0.1"
alias cd=lazycd
autosource
# >>> autosource/ <<< #
