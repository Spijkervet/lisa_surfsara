############
# SURFsara Lisa installation
############

# Copy .forward for e-mailing from Lisa
cp .forward $HOME

# Install zsh
sh install_zsh.sh

echo 'alias queue="squeue -u $(id -u)"' >> ~/.bashrc
echo 'alias queue="squeue -u $(id -u)"' >> ~/.zshrc

source ~/.bashrc
source ~/.zshrc
