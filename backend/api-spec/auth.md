# POST /auth
ユーザーを新規作成する

## Request
### Body
    {
      "emailr": <string>,
      "password": <string>
    }

#### 正常系
  200
  {
    "data": {
      "allowPasswordChange": <boolean>,
      "createdAt": <datetime: ISO8601>
      "email": <string>  # 例)hogehoge@gmail.com
      "id": 5
      "provider": "email"
      "uid": <string>  # 例)hogehoge@gmail.com
      "updatedAt": <datetime: ISO8601>
    },
    status: 200,
    statusText: "OK",
    "headers": {
      "access-token": <string>,
      "client": <string>,
      "uid": <string>,
    },
  }
