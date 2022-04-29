# Terraform-LabDay
Lab created for the use of Channel SE team

## How do I get everything I need installed?

We’re glad you asked - there are many options to install Terraform. We recommend [Homebrew](https://brew.sh/) <br/>
Note: Install [Xcode](https://apps.apple.com/us/app/xcode/id497799835?mt=12) on MacOS prior to installation of Homebrew. Trust us on this.

## Useful tools to install prior to install

- brew install [terraform](https://www.terraform.io/downloads)
- brew install [git](https://git-scm.com/downloads)
- brew install [awscli](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)
- brew install [azure-cli](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli-macos)
- brew install [`--cask google-cloud-sdk`](https://cloud.google.com/sdk/docs/install-sdk)
- brew install [warrensbox/tap/tfswitch](https://tfswitch.warrensbox.com/Install/)     (optional, yet strongly recommended)

## Core Terraform files in this repo

main.tf - AWS resources defined

providers.tf - Definies how to access AWS securely

datasources.tf - Creates the Ubuntu AMI (Amazon Machine Image)

userdata.tpl - Used to bootstrap (load a program that will be ready to use) the Ubuntu AMI