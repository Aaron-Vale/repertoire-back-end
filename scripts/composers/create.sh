curl --include --request POST "http://localhost:4741/composers/" \
  --header 'Content-Type: application/json' \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "composer": {
      "name": "'"${NAME}"'"
    }
  }'
