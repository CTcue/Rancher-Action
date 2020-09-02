#!/bin/sh -l

token="$INPUT_TOKEN"
context="$INPUT_CONTEXT"
url="$INPUT_URL"
command_string='$INPUT_COMMAND_STRING'
command_to_execute="rancher kubectl $command_string"

rancher login --token $token --context $context $url
eval $command_to_execute
