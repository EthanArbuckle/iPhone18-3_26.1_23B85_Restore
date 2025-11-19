@interface NFVASResponse
+ (BOOL)validateDictionary:(id)a3;
- (NFVASResponse)initWithDictionary:(id)a3;
- (id)asDictionary;
- (id)description;
@end

@implementation NFVASResponse

+ (BOOL)validateDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"Token"];
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v5 = [v3 objectForKeyedSubscript:@"PassData"];

  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v4 = [v3 objectForKeyedSubscript:@"StatusCode"];

  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v5 = [v3 objectForKeyedSubscript:@"MobileCapabilities"];

  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_14:
      v6 = 0;
      v4 = v5;
      goto LABEL_15;
    }
  }

  v4 = [v3 objectForKeyedSubscript:@"Request"];

  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![NFVASRequest validateDictionary:v4])
    {
LABEL_13:
      v6 = 0;
      goto LABEL_15;
    }
  }

  v6 = 1;
LABEL_15:

  return v6;
}

- (NFVASResponse)initWithDictionary:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = NFVASResponse;
  v5 = [(NFVASResponse *)&v18 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"Token"];
    token = v5->_token;
    v5->_token = v6;

    v8 = [v4 objectForKeyedSubscript:@"PassData"];
    vasData = v5->_vasData;
    v5->_vasData = v8;

    v10 = [v4 objectForKeyedSubscript:@"StatusCode"];
    statusCode = v5->_statusCode;
    v5->_statusCode = v10;

    v12 = [v4 objectForKeyedSubscript:@"MobileCapabilities"];
    mobileCapabilities = v5->_mobileCapabilities;
    v5->_mobileCapabilities = v12;

    v14 = [v4 objectForKeyedSubscript:@"Request"];
    if (v14)
    {
      v15 = [[NFVASRequest alloc] initWithDictionary:v14];
      request = v5->_request;
      v5->_request = v15;
    }
  }

  return v5;
}

- (id)asDictionary
{
  v3 = objc_opt_new();
  v4 = v3;
  token = self->_token;
  if (token)
  {
    [v3 setObject:token forKeyedSubscript:@"Token"];
  }

  vasData = self->_vasData;
  if (vasData)
  {
    [v4 setObject:vasData forKeyedSubscript:@"PassData"];
  }

  statusCode = self->_statusCode;
  if (statusCode)
  {
    [v4 setObject:statusCode forKeyedSubscript:@"StatusCode"];
  }

  mobileCapabilities = self->_mobileCapabilities;
  if (mobileCapabilities)
  {
    [v4 setObject:mobileCapabilities forKeyedSubscript:@"MobileCapabilities"];
  }

  request = self->_request;
  if (request)
  {
    v10 = [(NFVASRequest *)request asDictionary];
    [v4 setObject:v10 forKeyedSubscript:@"Request"];
  }

  return v4;
}

- (id)description
{
  v3 = [NSString alloc];
  v9.receiver = self;
  v9.super_class = NFVASResponse;
  v4 = [(NFVASResponse *)&v9 description];
  v5 = [(NSNumber *)self->_statusCode unsignedIntValue];
  mobileCapabilities = self->_mobileCapabilities;
  v7 = [v3 initWithFormat:@"%@ status=0x%04x data=%@ token=%@ mobileCapabilities=%@ request=%@", v4, v5, self->_vasData, self->_token, mobileCapabilities, self->_request];

  return v7;
}

@end