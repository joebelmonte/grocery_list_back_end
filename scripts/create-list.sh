#!/bin/bash
NAME="Bob's second list"
TOKEN="BAhJIiVmOWI5ZDExYTBlZWNhYjA5MDRkY2MyNjYzZDRiMGQ1ZQY6BkVG--d00fd9eb0943765181ea6197bba6bb344320d719"

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/lists"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "list": {
      "name": "'"${NAME}"'"
    }
  }'

echo
