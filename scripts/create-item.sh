#!/bin/bash
TOKEN="BAhJIiVmOWI5ZDExYTBlZWNhYjA5MDRkY2MyNjYzZDRiMGQ1ZQY6BkVG--d00fd9eb0943765181ea6197bba6bb344320d719"
NAME="Bob's second test item"
QUANTITY="1"
PRICE="19.99"
STORE="Star Market"
CATEGORY="Dairy"
NOTES="Bob's second test item"
LISTID="6"

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/lists/${LISTID}/items"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "item": {
      "name": "'"${NAME}"'",
      "quantity": "'"${QUANTITY}"'",
      "price": "'"${PRICE}"'",
      "store": "'"${STORE}"'",
      "category": "'"${CATEGORY}"'",
      "notes": "'"${NOTES}"'"
    }
  }'

echo
