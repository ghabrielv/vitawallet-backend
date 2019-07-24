# VitaWallet

This api is implemented according to the JSON API spec.

# Group Fees
Fees group

## Fees [/api/fee]


### Get fee [GET /api/fee]


+ Request Get fee
**GET**&nbsp;&nbsp;`/api/fee`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "btc_buy": 10239.3,
              "btc_sell": 9878.58
            }

# Group Transactions
Transactions group

## Transactions [/api/transaction]


### Create transaction [POST /api/transaction]


+ Request Create transaction
**POST**&nbsp;&nbsp;`/api/transaction`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            transaction[currency_send]=usd&transaction[currency_receive]=btc&transaction[amount]=6984.89

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": 10,
                "amount": 6984.89,
                "fee": 10239.3,
                "commission": 0.0,
                "total": 0.6821647964216304,
                "currency_receive": "btc",
                "created_at": "2019-07-24T12:27:58.880Z"
              },
              "type": "transactions"
            }
