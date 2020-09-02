#!/bin/sh -l

token="$INPUT_TOKEN"
context="$INPUT_CONTEXT"
url="$INPUT_URL"
command_string=$INPUT_COMMAND_STRING

echo $command_string

rancher login --token $token --context $context $url
rancher kubectl $command_string
