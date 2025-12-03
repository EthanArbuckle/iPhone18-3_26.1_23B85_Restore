@interface OTPairingPacketContext
- (NSData)packetData;
- (NSError)error;
- (NSString)sessionIdentifier;
- (OTPairingPacketContext)initWithMessage:(id)message fromID:(id)d context:(id)context;
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
      message = [(OTPairingPacketContext *)self message];
      v5 = [message objectForKeyedSubscript:@"error"];

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
  message = [(OTPairingPacketContext *)self message];
  v3 = [message objectForKeyedSubscript:@"packet"];

  return v3;
}

- (NSString)sessionIdentifier
{
  message = [(OTPairingPacketContext *)self message];
  v3 = [message objectForKeyedSubscript:@"session"];

  return v3;
}

- (int)messageType
{
  message = [(OTPairingPacketContext *)self message];
  v4 = [message objectForKeyedSubscript:@"m"];

  if (v4)
  {
    intValue = [v4 intValue];
  }

  else
  {
    packetData = [(OTPairingPacketContext *)self packetData];

    if (packetData)
    {
      intValue = 1;
    }

    else
    {
      intValue = 2;
    }
  }

  return intValue;
}

- (OTPairingPacketContext)initWithMessage:(id)message fromID:(id)d context:(id)context
{
  messageCopy = message;
  dCopy = d;
  contextCopy = context;
  v16.receiver = self;
  v16.super_class = OTPairingPacketContext;
  v11 = [(OTPairingPacketContext *)&v16 init];
  v12 = v11;
  if (v11)
  {
    [(OTPairingPacketContext *)v11 setMessage:messageCopy];
    [(OTPairingPacketContext *)v12 setFromID:dCopy];
    incomingResponseIdentifier = [contextCopy incomingResponseIdentifier];
    [(OTPairingPacketContext *)v12 setIncomingResponseIdentifier:incomingResponseIdentifier];

    outgoingResponseIdentifier = [contextCopy outgoingResponseIdentifier];
    [(OTPairingPacketContext *)v12 setOutgoingResponseIdentifier:outgoingResponseIdentifier];
  }

  return v12;
}

@end