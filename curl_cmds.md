
## SETUP Team
curl -i -X POST -H "Content-Type: application/json" -d "{\"name\":\"Køny Kløs\", \"secret\":\"test123\"}" https://restockapi.herokuapp.com/v1/teams


## SETUP User
curl -i -X POST -H "Content-Type: application/json" -d "{\"email\":\"hattemaker@gmail.com\",\"password\":\"mikemike\",\"password_confirmation\":\"mikemike\",\"name\":\"Jay\",\"team_id\":1}" https://restockapi.herokuapp.com/v1/auth


## LOGIN
curl -i -X POST -H "Content-Type: application/json" -d "{\"email\":\"hattemaker@gmail.com\",\"password\":\"mikemike\"}" https://restockapi.herokuapp.com/v1/auth/sign_in



## SETUP Product type
curl -i -X POST -H "Content-Type: application/json" -H "access-token: kJd1UsO_zXwG8xlRGoCNHA" -H "token-type: Bearer" -H "client: s7DQQguVgXcX13T3e4gsmw" -H "expiry: 1466872734" -H "uid: hattemaker@gmail.com" -d "{\"name\":\"Super Food\"}" https://restockapi.herokuapp.com/v1/product_types


## SETUP Products
curl -i -X POST -H "Content-Type: application/json" -H "access-token: kJd1UsO_zXwG8xlRGoCNHA" -H "token-type: Bearer" -H "client: s7DQQguVgXcX13T3e4gsmw" -H "expiry: 1466872734" -H "uid: hattemaker@gmail.com" -d "{\"name\":\"Kale\",\"amount_needed\":\"0\",\"amount_in_stock\":\"0\",\"product_type_id\":1}" https://restockapi.herokuapp.com/v1/products

curl -i -X POST -H "Content-Type: application/json" -H "access-token: kJd1UsO_zXwG8xlRGoCNHA" -H "token-type: Bearer" -H "client: s7DQQguVgXcX13T3e4gsmw" -H "expiry: 1466872734" -H "uid: hattemaker@gmail.com" -d "{\"name\":\"Goji Berries\",\"amount_needed\":\"0\",\"amount_in_stock\":\"0\",\"product_type_id\":1}" https://restockapi.herokuapp.com/v1/products

curl -i -X POST -H "Content-Type: application/json" -H "access-token: kJd1UsO_zXwG8xlRGoCNHA" -H "token-type: Bearer" -H "client: s7DQQguVgXcX13T3e4gsmw" -H "expiry: 1466872734" -H "uid: hattemaker@gmail.com" -d "{\"name\":\"Fat-free milk\",\"amount_needed\":\"0\",\"amount_in_stock\":\"0\",\"product_type_id\":1}" https://restockapi.herokuapp.com/v1/products



## DELETE product
curl -i -X POST -H "Content-Type: application/json" -H "access-token: kJd1UsO_zXwG8xlRGoCNHA" -H "token-type: Bearer" -H "client: s7DQQguVgXcX13T3e4gsmw" -H "expiry: 1466872734" -H "uid: hattemaker@gmail.com" -d "{\"id\":"6"}" https://restockapi.herokuapp.com/v1/products





## GET Team 1

curl -i -X GET -H "Content-Type: application/json" -H "access-token: DRi004fJsm7tVb1JEtYcxA" -H "token-type: Bearer" -H "client: fUpj7Oy4pp4hK7qYZEuQNQ" -H "expiry: 1466825057" -H "uid: hattemaker@gmail.com" https://restockapi.herokuapp.com/v1/teams/1




## GET Products

curl -i -X GET -H "Content-Type: application/json" -H "access-token: DRi004fJsm7tVb1JEtYcxA" -H "token-type: Bearer" -H "client: fUpj7Oy4pp4hK7qYZEuQNQ" -H "expiry: 1466825057" -H "uid: hattemaker@gmail.com" https://restockapi.herokuapp.com/v1/products
