@interface SDAppleIDURLResponse
- (SDAppleIDURLResponse)initWithHTTPUTLResponse:(id)a3 data:(id)a4;
@end

@implementation SDAppleIDURLResponse

- (SDAppleIDURLResponse)initWithHTTPUTLResponse:(id)a3 data:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = SDAppleIDURLResponse;
  v8 = [(SDAppleIDURLResponse *)&v16 init];
  if (v8)
  {
    v8->_statusCode = [v6 statusCode];
    v9 = [v6 MIMEType];
    v10 = [v9 hasPrefix:@"application/json"];

    if (v10)
    {
      v15 = 0;
      v11 = [NSJSONSerialization JSONObjectWithData:v7 options:0 error:&v15];
      v12 = v15;
      v13 = v12;
      if (v11)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_storeStrong(&v8->_responseInfo, v11);
        }

        else if (dword_1009718C8 <= 60 && (dword_1009718C8 != -1 || _LogCategory_Initialize()))
        {
          sub_100165138();
        }
      }

      else
      {
        sub_10016516C(v12, &v17, &v18);
        v11 = v17;
        v13 = v18;
      }
    }

    else
    {
      v11 = 0;
      v13 = 0;
    }
  }

  return v8;
}

@end