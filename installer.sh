function autosource_install {
  local profile=~/.bash_profile
  if [ "$OSTYPE" == "linux-gnu" ]; then
    profile=~/.bashrc
  fi

  if ! grep -q ">>> autosource <<<" $profile ; then
    echo "\n$(cat autosource.sh)" >> ${profile}
    echo "autosource: installed"
  else 
    echo "autosource: already installed"
  fi
}

autosource_install
