@interface NFVASResponse
+ (BOOL)validateDictionary:(id)dictionary;
- (NFVASResponse)initWithDictionary:(id)dictionary;
- (id)asDictionary;
- (id)description;
@end

@implementation NFVASResponse

+ (BOOL)validateDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKeyedSubscript:@"Token"];
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v5 = [dictionaryCopy objectForKeyedSubscript:@"PassData"];

  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v4 = [dictionaryCopy objectForKeyedSubscript:@"StatusCode"];

  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v5 = [dictionaryCopy objectForKeyedSubscript:@"MobileCapabilities"];

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

  v4 = [dictionaryCopy objectForKeyedSubscript:@"Request"];

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

- (NFVASResponse)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v18.receiver = self;
  v18.super_class = NFVASResponse;
  v5 = [(NFVASResponse *)&v18 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"Token"];
    token = v5->_token;
    v5->_token = v6;

    v8 = [dictionaryCopy objectForKeyedSubscript:@"PassData"];
    vasData = v5->_vasData;
    v5->_vasData = v8;

    v10 = [dictionaryCopy objectForKeyedSubscript:@"StatusCode"];
    statusCode = v5->_statusCode;
    v5->_statusCode = v10;

    v12 = [dictionaryCopy objectForKeyedSubscript:@"MobileCapabilities"];
    mobileCapabilities = v5->_mobileCapabilities;
    v5->_mobileCapabilities = v12;

    v14 = [dictionaryCopy objectForKeyedSubscript:@"Request"];
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
    asDictionary = [(NFVASRequest *)request asDictionary];
    [v4 setObject:asDictionary forKeyedSubscript:@"Request"];
  }

  return v4;
}

- (id)description
{
  v3 = [NSString alloc];
  v9.receiver = self;
  v9.super_class = NFVASResponse;
  v4 = [(NFVASResponse *)&v9 description];
  unsignedIntValue = [(NSNumber *)self->_statusCode unsignedIntValue];
  mobileCapabilities = self->_mobileCapabilities;
  v7 = [v3 initWithFormat:@"%@ status=0x%04x data=%@ token=%@ mobileCapabilities=%@ request=%@", v4, unsignedIntValue, self->_vasData, self->_token, mobileCapabilities, self->_request];

  return v7;
}

@end