curl --include --request PATCH "http://localhost:4741/songs/${ID}" \
  --header "Content-Type: application/json" \
  --data '{
    "song": {
      "name": "'"${NAME}"'"
    }
  }'
