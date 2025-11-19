@interface MSDRapportMessage
- (MSDRapportMessage)initWithIdentifier:(id)a3 andPayload:(id)a4 usingOptions:(id)a5;
- (id)description;
- (unint64_t)extractProtocolVersion;
@end

@implementation MSDRapportMessage

- (MSDRapportMessage)initWithIdentifier:(id)a3 andPayload:(id)a4 usingOptions:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = MSDRapportMessage;
  v11 = [(MSDRapportMessage *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(MSDRapportMessage *)v11 setIdentifier:v8];
    [(MSDRapportMessage *)v12 setPayload:v9];
    [(MSDRapportMessage *)v12 setOptions:v10];
  }

  return v12;
}

- (unint64_t)extractProtocolVersion
{
  v3 = [(MSDRapportMessage *)self payload];

  if (v3)
  {
    v4 = [(MSDRapportMessage *)self payload];
    v5 = [v4 objectForKey:@"ProtocolVersion"];

    if (v5)
    {
      v3 = [v5 unsignedIntegerValue];
    }

    else
    {
      v3 = 1;
    }
  }

  return v3;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(MSDRapportMessage *)self identifier];
  v6 = [NSString stringWithFormat:@"<%@[%p]: Identifier=%@>", v4, self, v5];

  return v6;
}

@end