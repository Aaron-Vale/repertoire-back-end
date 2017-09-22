curl --include --request PATCH "http://localhost:4741/composers/${ID}" \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "composer": {
      "name": "'"${NAME}"'"
    }
  }'
