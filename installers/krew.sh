#!/usr/bin/env bash

###############################################################################
# Krew
###############################################################################

kubectl krew update
kubectl krew install ctx
kubectl krew install ns
kubectl krew install advise-policy