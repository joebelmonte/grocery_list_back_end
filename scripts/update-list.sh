#!/bin/bash
NAME="Updated Name"
TOKEN="BAhJIiU3NWI3OWVlMWZiMDkyZjhhN2QxYTMyYmIxOWM5ZGQ3ZAY6BkVG--0adc7a1923fc2fc681b644125efb3476915b9621"
ID="3"

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/lists/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "list": {
      "name": "'"${NAME}"'"
    }
  }'

echo
