# Terraform-LabDay
Lab created for the use of Channel SE team

How do I get everything I need installed?

We’re glad you asked - there are many options to install Terraform. We recommend [Homebrew]: (brew.sh)
Note: Install Xcode on MacOS prior to installation of Homebrew. Trust us on this.


main.tf - AWS resources defined

providers.tf - Definies how to access AWS securely

datasources.tf - Creates the Ubuntu AMI (Amazon Machine Image)

userdata.tpl - Used to bootstrap (load a program that will be ready to use) the Ubuntu AMI