###############################################################################
# Lexicon:
###############################################################################
# 1. "Get to the command line" - This means opening a terminal or command prompt on your computer. Which can 
#     be done by searching for "Terminal" on macOS or opening VSCode and using the integrated terminal.
#     YOU MUST USE BASH or SHELL or ZSHELL!  If you are on a Windows machine, you can install Git Bash
#     plugin for VSCode and use that.
# 2. "Run the following command" - This means typing the command into the terminal at the command prompt and pressing Enter.
# 3. Container = a Docker container, or GitHub container, or any other container that is used to run a program.
#    This is sometimes called a "Runner" or "Environment" or "VM (erroneously)".
# 4. Directory: Also known as a folder in Windows and Mac.  But the proper term is directory

#
###############################################################################
# INSTALLING THE GOOGLE CLOUD SDK AND CLI
###############################################################################
# 1. First you must download the gcloud sdk
#    Go here and follow the instructions:   https://cloud.google.com/sdk/docs/install
# If you are using macOS. you must select the correct version for your processor:
#   - Apple M2 and M3 processors are ARM64
#   - Apple M1 processors are x86_64
# 2. Extract the archive to any location on your file system (preferably your Home 
#    directory). On macOS, this can be achieved by opening the downloaded .tar.gz 
#    archive file in the preferred location.

# 3. Open a terminal and navigate to the extracted directory. For example, if you
#    extracted the archive to your Home directory, you can use the following command:
cd ~/google-cloud-sdk
# 4. Run the following command to install the gcloud sdk:
./install.sh
# 5. Follow the on-screen instructions to complete the installation. You may be
#    prompted to update your PATH environment variable. If so, follow the
#    instructions to add the gcloud command to your PATH.
#    To initialize the gcloud sdk, run the following command:
gcloud init
# 6. After the installation is complete, you can verify that the gcloud command
#    is available by running the following command:
gcloud --version
# 7. If you want to use the gcloud command in any terminal session, you need to
#    add the gcloud command to your PATH. You can do this by adding the following
#    line to your shell configuration file (e.g., ~/.bashrc, ~/.zshrc, etc.):
echo 'source ~/google-cloud-sdk/path.bash.inc' >> ~/.bashrc
# 8. If you are using zsh, you can add the following line to your ~/.zshrc file:
echo 'source ~/google-cloud-sdk/path.zsh.inc' >> ~/.zshrc
# 9. After adding the above lines, you need to restart your terminal or run the
#    following command to apply the changes:
source ~/.bashrc
# or
source ~/.zshrc
# 10. Now you can use the gcloud command in any terminal session. You can verify
#     that the gcloud command is available by running the following command:
gcloud --version
# 11. To authenticate your gcloud sdk with your Google Cloud account, run the
#    following command:
gcloud auth login
# 12. This will open a web browser window where you can log in to your Google
#    Cloud account. After logging in, you will be prompted to grant permission
#    to the gcloud sdk to access your Google Cloud resources. Click "Allow" to
#    grant permission.
# 13. After granting permission, you will see a message in the terminal indicating
#     that the authentication was successful. You can verify that you are
#     authenticated by running the following command:
gcloud auth list
# 14. This will display a list of accounts that are authenticated with the gcloud
#     sdk. The active account will be marked with an asterisk (*). If you have
#     multiple accounts, you can set the active account by running the following
#     command:
gcloud config set account <account-email>
# 15. Replace <account-email> with the email address of the account you want to set as active.
# 16. You can verify that the active account is set by running the following command:
gcloud config get-value account
# 17. This will display the email address of the currently set active account.
# 18. To set the default project for your gcloud sdk, you need to know the project ID of your Google Cloud project.
# 19. You can find your project ID in the Google Cloud Console under "Project
#     Settings" or by running the following command:
gcloud projects list
# 20. This will list all the projects associated with your Google Cloud account.
# 21. Find the project you want to set as default and note its project ID.
# 22. Now, run the following command to set the default project:
# gcloud config set project <project-id>
# 23. Replace <project-id> with the ID of your Google Cloud project.
# 24. You can verify that the default project is set by running the following command:
gcloud config get-value project
# 25. This will display the ID of the currently set default project.


###############################################################################
# INSTALLING TERRAFORM
###############################################################################
# 1. First you must download the terraform CLI
#    Go here and follow the instructions:   https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli
