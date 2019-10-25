# AUTOSOURCE    
Automatic activate and deactivate python virtualenvs when moving around directories. 
**Note**: this first version activates only virtualenv which are in directories named "venv"

### Install
```
$ wget -O autosource.sh https://raw.githubusercontent.com/samuelesabella/autosource/master/autosource.sh && bash <(curl -s https://raw.githubusercontent.com/samuelesabella/autosource/master/installer.sh) && rm autosource.sh
```
The installation script will add an alias for the command *cd* into your **bash_profile** (macOS) or **bashrc** (linux).

# Uninstall
Edit the file **~/.bash_profile** (macOS) or **~/.bashrc** (linux) and remove the lines between the *"autosource tags"*
