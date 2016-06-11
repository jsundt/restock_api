curl -i -X POST -H "Content-Type: application/json" -d "{\"name\":\"Køny Kløs1\", \"secret\":\"test123\"}" http://localhost:3000/v1/teams

curl -i -X POST -H "Content-Type: application/json" -d "{\"email\":\"hattemaker@gmail.com\",\"password\":\"mikemike\",\"password_confirmation\":\"mikemike\",\"name\":\"Jay\",\"team_id\":1}" http://localhost:3000/v1/auth

<!-- curl -i -X POST -H "Content-Type: application/json" -d "{\"email\":\"hattemaker+test@gmail.com\",\"password\":\"mikemike\",\"password_confirmation\":\"mikemike\",\"name\":\"Jay\",\"team_id\":2}" http://localhost:3000/v1/auth -->


curl -i -X POST -H "Content-Type: application/json" -H "access-token: DRi004fJsm7tVb1JEtYcxA" -H "token-type: Bearer" -H "client: fUpj7Oy4pp4hK7qYZEuQNQ" -H "expiry: 1466825057" -H "uid: hattemaker@gmail.com" -d "{\"name\":\"Super Food\"}" http://localhost:3000/v1/product_types


curl -i -X POST -H "Content-Type: application/json" -H "access-token: DRi004fJsm7tVb1JEtYcxA" -H "token-type: Bearer" -H "client: fUpj7Oy4pp4hK7qYZEuQNQ" -H "expiry: 1466825057" -H "uid: hattemaker@gmail.com" -d "{\"name\":\"Kale\",\"amount_needed\":\"0\",\"amount_in_stock\":\"0\",\"product_type_id\":1}" http://localhost:3000/v1/products

curl -i -X POST -H "Content-Type: application/json" -H "access-token: DRi004fJsm7tVb1JEtYcxA" -H "token-type: Bearer" -H "client: fUpj7Oy4pp4hK7qYZEuQNQ" -H "expiry: 1466825057" -H "uid: hattemaker@gmail.com" -d "{\"name\":\"Goji Berries\",\"amount_needed\":\"0\",\"amount_in_stock\":\"0\",\"product_type_id\":1}" http://localhost:3000/v1/products

curl -i -X POST -H "Content-Type: application/json" -H "access-token: DRi004fJsm7tVb1JEtYcxA" -H "token-type: Bearer" -H "client: fUpj7Oy4pp4hK7qYZEuQNQ" -H "expiry: 1466825057" -H "uid: hattemaker@gmail.com" -d "{\"name\":\"Fat-free milk\",\"amount_needed\":\"0\",\"amount_in_stock\":\"0\",\"product_type_id\":1}" http://localhost:3000/v1/products


curl -i -X GET -H "Content-Type: application/json" -H "access-token: DRi004fJsm7tVb1JEtYcxA" -H "token-type: Bearer" -H "client: fUpj7Oy4pp4hK7qYZEuQNQ" -H "expiry: 1466825057" -H "uid: hattemaker@gmail.com" http://localhost:3000/v1/products








curl -i -X POST -H "Content-Type: application/json" -d "{\"email\":\"hattemaker@gmail.com\",\"password\":\"mikemike\"}" http://localhost:3000/v1/auth/sign_in








curl -i -X POST -H "Content-Type: application/json" -d "{\"name\":\"Jay\",\"email\":\"hattemaker@gmail.com\",\"password\":\"mikemike\",\"password_confirmation\":\"mikemike\"}" https://restockapi.herokuapp.com/v1/auth

curl -i -X POST -H "Content-Type: application/json" -d "{\"email\":\"hattemaker@gmail.com\",\"password\":\"mikemike\"}" https://restockapi.herokuapp.com/v1/auth/sign_in



curl -i -X GET -H "access-token: MBRx5HanuBw0mXw44CvJTg" -H "token-type: Bearer" -H "client: SEYuwFFKs82ar4CbC6SPkA" -H "expiry: 1466373422" -H "uid: hattemaker@gmail.com" https://restockapi.herokuapp.com/v1/users

curl -i -X POST -H "Content-Type: application/json" -H "access-token: MBRx5HanuBw0mXw44CvJTg" -H "token-type: Bearer" -H "client: SEYuwFFKs82ar4CbC6SPkA" -H "expiry: 1466373422" -H "uid: hattemaker@gmail.com" -d "{\"name\":\"Super Food\",\"amount\":\"1\",\"amount_type\":\"false\"}" https://restockapi.herokuapp.com/v1/product_types


curl -i -X POST -H "Content-Type: application/json" -H "access-token: MBRx5HanuBw0mXw44CvJTg" -H "token-type: Bearer" -H "client: SEYuwFFKs82ar4CbC6SPkA" -H "expiry: 1466373422" -H "uid: hattemaker@gmail.com" -d "{\"name\":\"Kale\",\"amount_needed\":\"0\",\"amount_in_stock\":\"0\",\"product_type_id\":\"1\"}" https://restockapi.herokuapp.com/v1/products


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
