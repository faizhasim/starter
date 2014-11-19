#!/usr/bin/env bash

###############################################################################
# QuickTime                                                                   #
###############################################################################

# Play video on open
defaults write com.apple.QuickTimePlayerX MGPlayMovieOnOpen -bool true

# Set recording quality
# High:    MGCompressionPresetHighQuality
# Maximum: MGCompressionPresetMaximumQuality
defaults write com.apple.QuickTimePlayerX MGRecordingCompressionPresetIdentifier -string 'MGCompressionPresetMaximumQuality'

# Show mouse clicks in screen recordings
defaults write com.apple.QuickTimePlayerX MGScreenRecordingDocumentShowMouseClicksUserDefaultsKey -bool true
