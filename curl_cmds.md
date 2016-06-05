
## Login
curl -i -X POST -H "Content-Type: application/json" -d "{\"email\":\"hattemaker@gmail.com\",\"password\":\"mikemike\"}" http://localhost:3000/v1/auth/sign_in

## Show user1
curl -i -X GET http://localhost:3000/v1/users/1

## List users
curl -i -X GET -H "access-token: UDjjdUe3sfP-1DCbDt4LNw" -H "token-type: Bearer" -H "client: R5a1QylvFaAuXTN4_TO9PQ" -H "expiry: 1466354392" -H "uid: hattemaker@gmail.com" http://localhost:3000/v1/users
