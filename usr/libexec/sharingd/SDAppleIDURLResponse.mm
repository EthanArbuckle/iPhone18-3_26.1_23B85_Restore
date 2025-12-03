@interface SDAppleIDURLResponse
- (SDAppleIDURLResponse)initWithHTTPUTLResponse:(id)response data:(id)data;
@end

@implementation SDAppleIDURLResponse

- (SDAppleIDURLResponse)initWithHTTPUTLResponse:(id)response data:(id)data
{
  responseCopy = response;
  dataCopy = data;
  v16.receiver = self;
  v16.super_class = SDAppleIDURLResponse;
  v8 = [(SDAppleIDURLResponse *)&v16 init];
  if (v8)
  {
    v8->_statusCode = [responseCopy statusCode];
    mIMEType = [responseCopy MIMEType];
    v10 = [mIMEType hasPrefix:@"application/json"];

    if (v10)
    {
      v15 = 0;
      v11 = [NSJSONSerialization JSONObjectWithData:dataCopy options:0 error:&v15];
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