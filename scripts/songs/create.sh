curl --include --request POST "http://localhost:4741/songs/" \
  --header 'Content-Type: application/json' \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "song": {
      "name": "'"${NAME}"'",
      "composer_id": "'"${COMPOSER_ID}"'"
    }
  }'
