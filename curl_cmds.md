
## Login
curl -i -X POST -H "Content-Type: application/json" -d "{\"email\":\"hattemaker@gmail.com\",\"password\":\"mikemike\"}" http://localhost:3000/v1/auth/sign_in

## Show users
curl -i -X GET http://localhost:3000/v1/users/1

## List stuff
curl -i -X GET -H "access-token: UDjjdUe3sfP-1DCbDt4LNw" -H "token-type: Bearer" -H "client: R5a1QylvFaAuXTN4_TO9PQ" -H "expiry: 1466354392" -H "uid: hattemaker@gmail.com" http://localhost:3000/v1/users

curl -i -X GET -H "access-token: UDjjdUe3sfP-1DCbDt4LNw" -H "token-type: Bearer" -H "client: R5a1QylvFaAuXTN4_TO9PQ" -H "expiry: 1466354392" -H "uid: hattemaker@gmail.com" http://localhost:3000/v1/products

curl -i -X GET -H "access-token: UDjjdUe3sfP-1DCbDt4LNw" -H "token-type: Bearer" -H "client: R5a1QylvFaAuXTN4_TO9PQ" -H "expiry: 1466354392" -H "uid: hattemaker@gmail.com" http://localhost:3000/v1/product_types



## Create Product Type
curl -i -X POST -H "Content-Type: application/json" -H "access-token: UDjjdUe3sfP-1DCbDt4LNw" -H "token-type: Bearer" -H "client: R5a1QylvFaAuXTN4_TO9PQ" -H "expiry: 1466354392" -H "uid: hattemaker@gmail.com" -d "{\"name\":\"Drink\",\"amount\":\"1\",\"amount_type\":\"L\",\"user_id\":\"1\"}" http://localhost:3000/v1/product_types

curl -i -X POST -H "Content-Type: application/json" -H "access-token: UDjjdUe3sfP-1DCbDt4LNw" -H "token-type: Bearer" -H "client: R5a1QylvFaAuXTN4_TO9PQ" -H "expiry: 1466354392" -H "uid: hattemaker@gmail.com" -d "{\"name\":\"Food\",\"amount\":\"1\",\"amount_type\":\"false\",\"user_id\":\"1\"}" http://localhost:3000/v1/product_types

curl -i -X POST -H "Content-Type: application/json" -H "access-token: UDjjdUe3sfP-1DCbDt4LNw" -H "token-type: Bearer" -H "client: R5a1QylvFaAuXTN4_TO9PQ" -H "expiry: 1466354392" -H "uid: hattemaker@gmail.com" -d "{\"name\":\"Super Food\",\"amount\":\"1\",\"amount_type\":\"false\"}" http://localhost:3000/v1/product_types

curl -i -X POST -H "Content-Type: application/json" -H "access-token: UDjjdUe3sfP-1DCbDt4LNw" -H "token-type: Bearer" -H "client: R5a1QylvFaAuXTN4_TO9PQ" -H "expiry: 1466354392" -H "uid: hattemaker@gmail.com" -d "{\"name\":\"Test Food\",\"amount\":\"1\",\"amount_type\":\"false\",\"user_id\":\"3\"}" http://localhost:3000/v1/product_types


## Create Product
curl -i -X POST -H "Content-Type: application/json" -H "access-token: UDjjdUe3sfP-1DCbDt4LNw" -H "token-type: Bearer" -H "client: R5a1QylvFaAuXTN4_TO9PQ" -H "expiry: 1466354392" -H "uid: hattemaker@gmail.com" -d "{\"name\":\"Coke\",\"amount_needed\":\"0\",\"amount_in_stock\":\"0\",\"product_type_id\":\"1\"}" http://localhost:3000/v1/products


curl -i -X POST -H "Content-Type: application/json" -H "access-token: UDjjdUe3sfP-1DCbDt4LNw" -H "token-type: Bearer" -H "client: R5a1QylvFaAuXTN4_TO9PQ" -H "expiry: 1466354392" -H "uid: hattemaker@gmail.com" -d "{\"name\":\"Coke 2\",\"amount_needed\":\"0\",\"amount_in_stock\":\"0\",\"product_type_id\":\"1\"}" http://localhost:3000/v1/products
