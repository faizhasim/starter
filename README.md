# Starter

Take the monotony out of macOS system setup.

When configuring a new Mac, or when performing a clean installation of macOS, there are a number of setup tasks that may be automated, including:

- The installation of 3rd party applications.
- The installation of command line tools.
- Configuration of system and application preferences.
- Creation of a local file system hierarchy

Starter allows users to configure these settings prior to installation, and create reproducible macOS environments.

## Installation

Install `Xcode` from App Store.

Simply clone the repository, `cd` into the local `starter` repository and then:

    ./install

Changes that the installation need to be run few time to success.

Ensure mackup config is ready. I'm using iCloud Drive to sync my setup, hence, all iCloud Drive along with the documents need to sync first.

To configure the various system and application preferences, `cd` into the local `starter` repository and then:

    ./starter

## Tools

Starter uses Homebrew and Cask to install 3rd party applications.

While Starter will install these tools prior to launch, it is recommended that any 'dotfiles' that may affect the configuration of these tools be installed prior to initializing Starter.


TODO/Manual
===========

- MySQL DMG (due to Oracle license)
- Seek internal tools no longer part of homebrew cask.
- All Gantry version installations, compiled from scratch: https://gist.github.com/faizhasim/5bfc7ad469c9fe1298b94c160b42ce04 
