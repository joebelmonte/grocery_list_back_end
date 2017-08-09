#!/bin/bash
TOKEN="BAhJIiU3NWI3OWVlMWZiMDkyZjhhN2QxYTMyYmIxOWM5ZGQ3ZAY6BkVG--0adc7a1923fc2fc681b644125efb3476915b9621"


API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/lists"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo
