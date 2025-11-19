@interface MSDCommandServerRequest
- (BOOL)isValid;
- (id)copyWithZone:(_NSZone *)a3;
- (id)getDataDictFromPayload:(id)a3 error:(id *)a4;
@end

@implementation MSDCommandServerRequest

- (BOOL)isValid
{
  v9.receiver = self;
  v9.super_class = MSDCommandServerRequest;
  if (![(MSDServerRequest *)&v9 isValid])
  {
    return 0;
  }

  v3 = [(MSDCommandServerRequest *)self server];
  if (v3)
  {
    v4 = [(MSDCommandServerRequest *)self port];
    if (v4)
    {
      v5 = [(MSDCommandServerRequest *)self deviceUDID];
      if (v5)
      {
        v6 = [(MSDCommandServerRequest *)self hubVersion];
        v7 = v6 != 0;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)getDataDictFromPayload:(id)a3 error:(id *)a4
{
  v6 = [a3 objectForKey:@"data"];
  v7 = sub_100063A54();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(MSDServerRequest *)self getName];
    v11 = 138543618;
    v12 = v8;
    v13 = 2114;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: data from server: %{public}@", &v11, 0x16u);
  }

  if (v6 && [v6 length])
  {
    v9 = [NSDictionary dictionaryFromJsonData:v6];
    if (!v9)
    {
      sub_1000E5DE8(self, a4);
    }
  }

  else
  {
    sub_1000E5EB8(self, a4);
    v9 = 0;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = MSDCommandServerRequest;
  v4 = [(MSDServerRequest *)&v6 copyWithZone:a3];
  [v4 setServer:self->_server];
  [v4 setPort:self->_port];
  [v4 setHubVersion:self->_hubVersion];
  [v4 setDeviceUDID:self->_deviceUDID];
  return v4;
}

@end