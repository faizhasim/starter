#!/usr/bin/env bash

cat <<EOF > ~/.mackup.cfg
[storage]
engine = icloud
EOF

mkdir -p ~/.mackup
touch ~/.mackup/maven-settings-security-hack.cfg

cat <<EOF > ~/.mackup/maven-settings-security-hack.cfg
[application]
name = Maven settings-security.xml hack

[configuration_files]
.m2/settings-security.xml
EOF
