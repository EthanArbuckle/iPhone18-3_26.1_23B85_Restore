@interface MSDRapportMessage
- (MSDRapportMessage)initWithIdentifier:(id)identifier andPayload:(id)payload usingOptions:(id)options;
- (id)description;
- (unint64_t)extractProtocolVersion;
@end

@implementation MSDRapportMessage

- (MSDRapportMessage)initWithIdentifier:(id)identifier andPayload:(id)payload usingOptions:(id)options
{
  identifierCopy = identifier;
  payloadCopy = payload;
  optionsCopy = options;
  v14.receiver = self;
  v14.super_class = MSDRapportMessage;
  v11 = [(MSDRapportMessage *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(MSDRapportMessage *)v11 setIdentifier:identifierCopy];
    [(MSDRapportMessage *)v12 setPayload:payloadCopy];
    [(MSDRapportMessage *)v12 setOptions:optionsCopy];
  }

  return v12;
}

- (unint64_t)extractProtocolVersion
{
  payload = [(MSDRapportMessage *)self payload];

  if (payload)
  {
    payload2 = [(MSDRapportMessage *)self payload];
    v5 = [payload2 objectForKey:@"ProtocolVersion"];

    if (v5)
    {
      payload = [v5 unsignedIntegerValue];
    }

    else
    {
      payload = 1;
    }
  }

  return payload;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  identifier = [(MSDRapportMessage *)self identifier];
  v6 = [NSString stringWithFormat:@"<%@[%p]: Identifier=%@>", v4, self, identifier];

  return v6;
}

@end