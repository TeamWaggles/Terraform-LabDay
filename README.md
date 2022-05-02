# Terraform-LabDay
Lab created for the use of Channel SE team

## How do I get everything I need installed?

We’re glad you asked - there are many options to install Terraform. We recommend [Homebrew](https://brew.sh/) <br/>
Note: Install [Xcode](https://apps.apple.com/us/app/xcode/id497799835?mt=12) on MacOS prior to installation of Homebrew. Trust us on this.

## Useful tools to install prior to install

### Code Editors
- brew install [--cask visual-studio-code](https://code.visualstudio.com/download)
- brew install [`--cask atom`](https://atom.io/)
- brew install [`--cask sublime-text`](https://www.sublimetext.com/)

### Software
- brew install [terraform](https://www.terraform.io/downloads)
- brew install [git](https://git-scm.com/downloads)
- brew install [awscli](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)
- brew install [azure-cli](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli-macos)
- brew install [`--cask google-cloud-sdk`](https://cloud.google.com/sdk/docs/install-sdk)
- brew install [warrensbox/tap/tfswitch](https://tfswitch.warrensbox.com/Install/)     (optional, yet strongly recommended)

Additionally, our good friend Anthony Rees created a [repo](https://github.com/alainlubin/laptop_setup) from which you can run a script to install the above tools and more. You may need to comment out applications you don't need to streamline the process. Note: I'm using a fork of his repo.

## Core Terraform files in this repo

main.tf - AWS resources defined

providers.tf - Definies how to access AWS securely

datasources.tf - Creates the Ubuntu AMI (Amazon Machine Image)

userdata.tpl - Used to bootstrap (load a program that will be ready to use) the Ubuntu AMI

**Note: Terraform 13.0 is in use for this repo**