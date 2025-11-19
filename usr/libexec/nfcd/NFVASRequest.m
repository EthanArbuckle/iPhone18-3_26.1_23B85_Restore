@interface NFVASRequest
+ (BOOL)validateDictionary:(id)a3;
- (NFVASRequest)initWithDictionary:(id)a3;
- (id)asDictionary;
- (id)description;
@end

@implementation NFVASRequest

+ (BOOL)validateDictionary:(id)a3
{
  v3 = a3;
  if (v3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = 0;
      v4 = v3;
      goto LABEL_17;
    }
  }

  v4 = [v3 objectForKeyedSubscript:@"TerminalCap"];

  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v5 = [v3 objectForKeyedSubscript:@"TerminalProtocol"];

  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v4 = [v3 objectForKeyedSubscript:@"MerchantId"];

  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v5 = [v3 objectForKeyedSubscript:@"SignupUrl"];

  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_16:
      v6 = 0;
      v4 = v5;
      goto LABEL_17;
    }
  }

  v4 = [v3 objectForKeyedSubscript:@"Filter"];

  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_14:
      v6 = 0;
      goto LABEL_17;
    }
  }

  v6 = 1;
LABEL_17:

  return v6;
}

- (NFVASRequest)initWithDictionary:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = NFVASRequest;
  v5 = [(NFVASRequest *)&v17 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"TerminalCap"];
    terminalCap = v5->_terminalCap;
    v5->_terminalCap = v6;

    v8 = [v4 objectForKeyedSubscript:@"TerminalProtocol"];
    terminalProtocol = v5->_terminalProtocol;
    v5->_terminalProtocol = v8;

    v10 = [v4 objectForKeyedSubscript:@"MerchantId"];
    merchantId = v5->_merchantId;
    v5->_merchantId = v10;

    v12 = [v4 objectForKeyedSubscript:@"SignupUrl"];
    signupUrl = v5->_signupUrl;
    v5->_signupUrl = v12;

    v14 = [v4 objectForKeyedSubscript:@"Filter"];
    filter = v5->_filter;
    v5->_filter = v14;
  }

  return v5;
}

- (id)asDictionary
{
  v3 = objc_opt_new();
  v4 = v3;
  terminalCap = self->_terminalCap;
  if (terminalCap)
  {
    [v3 setObject:terminalCap forKeyedSubscript:@"TerminalCap"];
  }

  terminalProtocol = self->_terminalProtocol;
  if (terminalProtocol)
  {
    [v4 setObject:terminalProtocol forKeyedSubscript:@"TerminalProtocol"];
  }

  merchantId = self->_merchantId;
  if (merchantId)
  {
    [v4 setObject:merchantId forKeyedSubscript:@"MerchantId"];
  }

  signupUrl = self->_signupUrl;
  if (signupUrl)
  {
    [v4 setObject:signupUrl forKeyedSubscript:@"SignupUrl"];
  }

  filter = self->_filter;
  if (filter)
  {
    [v4 setObject:filter forKeyedSubscript:@"Filter"];
  }

  return v4;
}

- (id)description
{
  v3 = [NSString alloc];
  v7.receiver = self;
  v7.super_class = NFVASRequest;
  v4 = [(NFVASRequest *)&v7 description];
  v5 = [v3 initWithFormat:@"%@ protocol=0x%04x capability=0x%04x merchantId=%@ url=%@ filter=%@", v4, -[NSNumber unsignedIntValue](self->_terminalProtocol, "unsignedIntValue"), -[NSNumber unsignedIntValue](self->_terminalCap, "unsignedIntValue"), self->_merchantId, self->_signupUrl, self->_filter];

  return v5;
}

@end