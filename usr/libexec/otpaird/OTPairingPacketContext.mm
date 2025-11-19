@interface OTPairingPacketContext
- (NSData)packetData;
- (NSError)error;
- (NSString)sessionIdentifier;
- (OTPairingPacketContext)initWithMessage:(id)a3 fromID:(id)a4 context:(id)a5;
- (int)messageType;
@end

@implementation OTPairingPacketContext

- (NSError)error
{
  if ([(OTPairingPacketContext *)self messageType]== 2)
  {
    error = self->_error;
    if (!error)
    {
      v4 = [(OTPairingPacketContext *)self message];
      v5 = [v4 objectForKeyedSubscript:@"error"];

      v6 = [NSError errorWithDomain:@"com.apple.security.otpaird" code:4 description:v5];
      v7 = self->_error;
      self->_error = v6;

      error = self->_error;
    }

    v8 = error;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSData)packetData
{
  v2 = [(OTPairingPacketContext *)self message];
  v3 = [v2 objectForKeyedSubscript:@"packet"];

  return v3;
}

- (NSString)sessionIdentifier
{
  v2 = [(OTPairingPacketContext *)self message];
  v3 = [v2 objectForKeyedSubscript:@"session"];

  return v3;
}

- (int)messageType
{
  v3 = [(OTPairingPacketContext *)self message];
  v4 = [v3 objectForKeyedSubscript:@"m"];

  if (v4)
  {
    v5 = [v4 intValue];
  }

  else
  {
    v6 = [(OTPairingPacketContext *)self packetData];

    if (v6)
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }
  }

  return v5;
}

- (OTPairingPacketContext)initWithMessage:(id)a3 fromID:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = OTPairingPacketContext;
  v11 = [(OTPairingPacketContext *)&v16 init];
  v12 = v11;
  if (v11)
  {
    [(OTPairingPacketContext *)v11 setMessage:v8];
    [(OTPairingPacketContext *)v12 setFromID:v9];
    v13 = [v10 incomingResponseIdentifier];
    [(OTPairingPacketContext *)v12 setIncomingResponseIdentifier:v13];

    v14 = [v10 outgoingResponseIdentifier];
    [(OTPairingPacketContext *)v12 setOutgoingResponseIdentifier:v14];
  }

  return v12;
}

@end