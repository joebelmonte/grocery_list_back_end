#!/bin/bash
TOKEN="BAhJIiU2Y2YyYjJhMzk2MWRmZDMzZDY4NmI4YmIyMzQzZjI4ZQY6BkVG--cd2d3b591fad8df2a752b07c7b14112fe51c8cbc"


API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/examples"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo
