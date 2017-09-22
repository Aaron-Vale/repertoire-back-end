curl --include --request POST "http://localhost:4741/instruments/" \
  --header 'Content-Type: application/json' \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "instrument": {
      "name": "'"${NAME}"'"
    }
  }'
