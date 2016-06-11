
## SETUP Team
curl -i -X POST -H "Content-Type: application/json" -d "{\"name\":\"Køny Kløs\", \"secret\":\"test123\"}" http://localhost:3000/v1/teams


## SETUP User
curl -i -X POST -H "Content-Type: application/json" -d "{\"email\":\"hattemaker@gmail.com\",\"password\":\"mikemike\",\"password_confirmation\":\"mikemike\",\"name\":\"Jay\",\"team_id\":1}" http://localhost:3000/v1/auth


## LOGIN
curl -i -X POST -H "Content-Type: application/json" -d "{\"email\":\"hattemaker@gmail.com\",\"password\":\"mikemike\"}" http://localhost:3000/v1/auth/sign_in



## SETUP Product type
curl -i -X POST -H "Content-Type: application/json" -H "access-token: DRi004fJsm7tVb1JEtYcxA" -H "token-type: Bearer" -H "client: fUpj7Oy4pp4hK7qYZEuQNQ" -H "expiry: 1466825057" -H "uid: hattemaker@gmail.com" -d "{\"name\":\"Super Food\"}" http://localhost:3000/v1/product_types


## SETUP Products
curl -i -X POST -H "Content-Type: application/json" -H "access-token: DRi004fJsm7tVb1JEtYcxA" -H "token-type: Bearer" -H "client: fUpj7Oy4pp4hK7qYZEuQNQ" -H "expiry: 1466825057" -H "uid: hattemaker@gmail.com" -d "{\"name\":\"Kale\",\"amount_needed\":\"0\",\"amount_in_stock\":\"0\",\"product_type_id\":1}" http://localhost:3000/v1/products

curl -i -X POST -H "Content-Type: application/json" -H "access-token: DRi004fJsm7tVb1JEtYcxA" -H "token-type: Bearer" -H "client: fUpj7Oy4pp4hK7qYZEuQNQ" -H "expiry: 1466825057" -H "uid: hattemaker@gmail.com" -d "{\"name\":\"Goji Berries\",\"amount_needed\":\"0\",\"amount_in_stock\":\"0\",\"product_type_id\":1}" http://localhost:3000/v1/products

curl -i -X POST -H "Content-Type: application/json" -H "access-token: DRi004fJsm7tVb1JEtYcxA" -H "token-type: Bearer" -H "client: fUpj7Oy4pp4hK7qYZEuQNQ" -H "expiry: 1466825057" -H "uid: hattemaker@gmail.com" -d "{\"name\":\"Fat-free milk\",\"amount_needed\":\"0\",\"amount_in_stock\":\"0\",\"product_type_id\":1}" http://localhost:3000/v1/products





## GET Team 1

curl -i -X GET -H "Content-Type: application/json" -H "access-token: DRi004fJsm7tVb1JEtYcxA" -H "token-type: Bearer" -H "client: fUpj7Oy4pp4hK7qYZEuQNQ" -H "expiry: 1466825057" -H "uid: hattemaker@gmail.com" http://localhost:3000/v1/teams/1




## GET Products

curl -i -X GET -H "Content-Type: application/json" -H "access-token: DRi004fJsm7tVb1JEtYcxA" -H "token-type: Bearer" -H "client: fUpj7Oy4pp4hK7qYZEuQNQ" -H "expiry: 1466825057" -H "uid: hattemaker@gmail.com" http://localhost:3000/v1/products
