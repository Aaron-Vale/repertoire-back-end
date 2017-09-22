curl --include --request POST "http://localhost:4741/composers/" \
  --header 'Content-Type: application/json' \
  --data '{
    "composer": {
      "name": "'"${NAME}"'"
    }
  }'
