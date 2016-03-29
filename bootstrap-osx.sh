echo "Doing brew things"
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew install git wget python watch unrar jq docker-machine docker bash-completion git
brew cask install virtualbox vagrant google-chrome atom slack hipchat iterm2 

echo "Rummaging for my dot things"
curl -so ~/.bashrc https://raw.githubusercontent.com/AZaugg/my-dotfiles/master/dot-bashrc
curl -so ~/.gitconfig https://raw.githubusercontent.com/AZaugg/my-dotfiles/master/dot-gitconfig
curl -so ~/.vimrc https://raw.githubusercontent.com/AZaugg/my-dotfiles/master/dot-vimrc
curl -so ~/.dev_folder_completion.rb https://raw.githubusercontent.com/AZaugg/my-dotfiles/master/dot-dev_folder_completion.rb
chmod 0775 ~/.dev_folder_completion.rb

echo "Doing my pip things"
pip install --upgrade setuptools pip 
pip install virtualenv requests pylint
sudo pip install virtualenvwrapper

echo "Install atom packages"
apm install highlight-selected language-puppet linter linter-pylint python-tools vim-mode atom-terminal-panel todo-show minimap fold-functions

sudo gem install bundler

echo "Setting OSX to how I like it"
defaults write com.apple.screencapture type jpg
defaults write -g com.apple.mouse.scaling -float 1.5
defaults write -g InitialKeyRepeat -int 15
defaults write -g KeyRepeat -int 2

# Prevent annoying apps from starting when phones plugged in
defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool YES

# Set screenshot location
mkdir ~/Development
mkdir ~/Pictures/Screenshots
defaults write com.apple.screencapture location ~/Pictures/Screenshots
killall SystemUIServer
