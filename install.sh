############
# SURFsara Lisa installation
############

# Copy .forward for e-mailing from Lisa, add mail_template program to path
cp .forward $HOME
cp mail_template $HOME/.local/bin

# Install zsh
sh install_zsh.sh

echo 'alias queue="squeue -u $(id -u)"' >> ~/.bashrc
echo 'alias queue="squeue -u $(id -u)"' >> ~/.zshrc

echo 'export TMPDIR=/tmp/$USER' >> ~/.bashrc
echo 'export TMPDIR=/tmp/$USER' >> ~/.zshrc

source ~/.bashrc
source ~/.zshrc
