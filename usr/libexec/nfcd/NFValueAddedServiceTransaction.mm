@interface NFValueAddedServiceTransaction
- (NFValueAddedServiceTransaction)initWithCoder:(id)coder;
- (NFValueAddedServiceTransaction)initWithDictionary:(id)dictionary;
- (id)asDictionary;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NFValueAddedServiceTransaction

- (NFValueAddedServiceTransaction)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v27.receiver = self;
  v27.super_class = NFValueAddedServiceTransaction;
  v5 = [(NFValueAddedServiceTransaction *)&v27 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"MerchantId"];
    merchantId = v5->_merchantId;
    v5->_merchantId = v6;

    v8 = [dictionaryCopy objectForKeyedSubscript:@"SignupUrl"];
    signupUrl = v5->_signupUrl;
    v5->_signupUrl = v8;

    v10 = [dictionaryCopy objectForKeyedSubscript:@"TerminalAppVersion"];
    terminalAppVersion = v5->_terminalAppVersion;
    v5->_terminalAppVersion = v10;

    v12 = [dictionaryCopy objectForKeyedSubscript:@"TerminalMode"];
    terminalMode = v5->_terminalMode;
    v5->_terminalMode = v12;

    v14 = [dictionaryCopy objectForKeyedSubscript:@"PassData"];
    passData = v5->_passData;
    v5->_passData = v14;

    v16 = [dictionaryCopy objectForKeyedSubscript:@"Token"];
    token = v5->_token;
    v5->_token = v16;

    v18 = [dictionaryCopy objectForKeyedSubscript:@"Filter"];
    filter = v5->_filter;
    v5->_filter = v18;

    v20 = [dictionaryCopy objectForKeyedSubscript:@"FilterType"];
    filterType = v5->_filterType;
    v5->_filterType = v20;

    v22 = [dictionaryCopy objectForKeyedSubscript:@"Error"];
    if (v22)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&v5->_error, v22);
        v23 = [NSNumber numberWithBool:[(NSError *)v5->_error code]== 0];
        didSucceed = v5->_didSucceed;
        v5->_didSucceed = v23;
      }
    }

    v25 = [dictionaryCopy objectForKeyedSubscript:@"Result"];

    if (v25)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5->_result = [v25 unsignedIntValue];
      }
    }
  }

  return v5;
}

- (NFValueAddedServiceTransaction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v27.receiver = self;
  v27.super_class = NFValueAddedServiceTransaction;
  v5 = [(NFValueAddedServiceTransaction *)&v27 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MerchantId"];
    merchantId = v5->_merchantId;
    v5->_merchantId = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SignupUrl"];
    signupUrl = v5->_signupUrl;
    v5->_signupUrl = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"TerminalAppVersion"];
    terminalAppVersion = v5->_terminalAppVersion;
    v5->_terminalAppVersion = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"TerminalMode"];
    terminalMode = v5->_terminalMode;
    v5->_terminalMode = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PassData"];
    passData = v5->_passData;
    v5->_passData = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Token"];
    token = v5->_token;
    v5->_token = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Error"];
    error = v5->_error;
    v5->_error = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DidSucceed"];
    didSucceed = v5->_didSucceed;
    v5->_didSucceed = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Filter"];
    filter = v5->_filter;
    v5->_filter = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FilterType"];
    filterType = v5->_filterType;
    v5->_filterType = v24;

    v5->_result = [coderCopy decodeInt32ForKey:@"Result"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  merchantId = self->_merchantId;
  coderCopy = coder;
  [coderCopy encodeObject:merchantId forKey:@"MerchantId"];
  [coderCopy encodeObject:self->_signupUrl forKey:@"SignupUrl"];
  [coderCopy encodeObject:self->_terminalAppVersion forKey:@"TerminalAppVersion"];
  [coderCopy encodeObject:self->_terminalMode forKey:@"TerminalMode"];
  [coderCopy encodeObject:self->_passData forKey:@"PassData"];
  [coderCopy encodeObject:self->_token forKey:@"Token"];
  [coderCopy encodeObject:self->_error forKey:@"Error"];
  [coderCopy encodeObject:self->_didSucceed forKey:@"DidSucceed"];
  [coderCopy encodeObject:self->_filter forKey:@"Filter"];
  [coderCopy encodeObject:self->_filterType forKey:@"FilterType"];
  [coderCopy encodeInt32:self->_result forKey:@"Result"];
}

- (id)description
{
  v3 = [(NSNumber *)self->_terminalMode intValue]- 1;
  if (v3 > 7)
  {
    v4 = @"Unknown";
  }

  else
  {
    v4 = off_100318350[v3];
  }

  v11 = v4;
  v5 = self->_result;
  if (v5 > 4)
  {
    v6 = @"Unknown Error";
  }

  else
  {
    v6 = off_100318390[v5];
  }

  v10 = [NSString alloc];
  v12.receiver = self;
  v12.super_class = NFValueAddedServiceTransaction;
  v7 = [(NFValueAddedServiceTransaction *)&v12 description];
  v8 = [v10 initWithFormat:@"%@ { merchantID=%@ signupURL=%@ terminalAppVersion=%@ terminalModeDescription=%@ terminalMode=%@ filter=%@ filterType=%@ didSucceed=%@ passData=%@ token=%@ errorCode=0x%04x error=%@ result=0x%04x resultDescription=%@ }", v7, self->_merchantId, self->_signupUrl, self->_terminalAppVersion, v11, self->_terminalMode, self->_filter, self->_filterType, self->_didSucceed, self->_passData, self->_token, -[NSError code](self->_error, "code"), self->_error, self->_result, v6];

  return v8;
}

- (id)asDictionary
{
  v3 = [(NSNumber *)self->_terminalMode intValue]- 1;
  if (v3 > 7)
  {
    v4 = @"Unknown";
  }

  else
  {
    v4 = off_100318350[v3];
  }

  v5 = self->_result;
  if (v5 > 4)
  {
    v6 = @"Unknown Error";
  }

  else
  {
    v6 = off_100318390[v5];
  }

  v7 = objc_opt_new();
  v8 = v7;
  merchantId = self->_merchantId;
  if (merchantId)
  {
    [v7 setObject:merchantId forKeyedSubscript:@"merchantID"];
  }

  signupUrl = self->_signupUrl;
  if (signupUrl)
  {
    [v8 setObject:signupUrl forKeyedSubscript:@"signupURL"];
  }

  terminalAppVersion = self->_terminalAppVersion;
  if (terminalAppVersion)
  {
    [v8 setObject:terminalAppVersion forKeyedSubscript:@"terminalAppVersion"];
  }

  [v8 setObject:v4 forKeyedSubscript:@"terminalModeDescription"];
  terminalMode = self->_terminalMode;
  if (terminalMode)
  {
    [v8 setObject:terminalMode forKeyedSubscript:@"terminalMode"];
  }

  filter = self->_filter;
  if (filter)
  {
    [v8 setObject:filter forKeyedSubscript:@"filter"];
  }

  filterType = self->_filterType;
  if (filterType)
  {
    [v8 setObject:filterType forKeyedSubscript:@"filterType"];
  }

  didSucceed = self->_didSucceed;
  if (didSucceed)
  {
    [v8 setObject:didSucceed forKeyedSubscript:@"didSucceed"];
  }

  passData = self->_passData;
  if (passData)
  {
    [v8 setObject:passData forKeyedSubscript:@"passData"];
  }

  token = self->_token;
  if (token)
  {
    [v8 setObject:token forKeyedSubscript:@"token"];
  }

  if (self->_error)
  {
    v18 = [[NSString alloc] initWithFormat:@"0x%04x", -[NSError code](self->_error, "code")];
    [v8 setObject:v18 forKeyedSubscript:@"errorCode"];

    v19 = [(NSError *)self->_error description];
    [v8 setObject:v19 forKeyedSubscript:@"error"];
  }

  [v8 setObject:v6 forKeyedSubscript:@"resultDescription"];
  v20 = [NSNumber numberWithUnsignedInt:self->_result];
  [v8 setObject:v20 forKeyedSubscript:@"result"];

  return v8;
}

@end