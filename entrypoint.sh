#!/bin/sh -l

token="$INPUT_TOKEN"
context="$INPUT_CONTEXT"
url="$INPUT_URL"
command_string='$INPUT_COMMAND_STRING'

echo CMD STR $command
command_to_execute="rancher --debug kubectl $command_string"

echo CMD EXEC $command_to_execute

rancher login --token $token --context $context $url
eval $command_to_execute
