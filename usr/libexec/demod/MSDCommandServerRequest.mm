@interface MSDCommandServerRequest
- (BOOL)isValid;
- (id)copyWithZone:(_NSZone *)zone;
- (id)getDataDictFromPayload:(id)payload error:(id *)error;
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

  server = [(MSDCommandServerRequest *)self server];
  if (server)
  {
    port = [(MSDCommandServerRequest *)self port];
    if (port)
    {
      deviceUDID = [(MSDCommandServerRequest *)self deviceUDID];
      if (deviceUDID)
      {
        hubVersion = [(MSDCommandServerRequest *)self hubVersion];
        v7 = hubVersion != 0;
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

- (id)getDataDictFromPayload:(id)payload error:(id *)error
{
  v6 = [payload objectForKey:@"data"];
  v7 = sub_100063A54();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    getName = [(MSDServerRequest *)self getName];
    v11 = 138543618;
    v12 = getName;
    v13 = 2114;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: data from server: %{public}@", &v11, 0x16u);
  }

  if (v6 && [v6 length])
  {
    v9 = [NSDictionary dictionaryFromJsonData:v6];
    if (!v9)
    {
      sub_1000E5DE8(self, error);
    }
  }

  else
  {
    sub_1000E5EB8(self, error);
    v9 = 0;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = MSDCommandServerRequest;
  v4 = [(MSDServerRequest *)&v6 copyWithZone:zone];
  [v4 setServer:self->_server];
  [v4 setPort:self->_port];
  [v4 setHubVersion:self->_hubVersion];
  [v4 setDeviceUDID:self->_deviceUDID];
  return v4;
}

@end