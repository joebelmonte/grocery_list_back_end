#!/bin/bash
TOKEN="BAhJIiU2NGJlMjcxNjA3MGI1YzI1YzZlZjNmNWFhZThkZjc4YQY6BkVG--68e21a6c86daaf94bbe0df7bbbe7ed83f8bfb371"
ID="3"

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/sign-out"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN"

echo
