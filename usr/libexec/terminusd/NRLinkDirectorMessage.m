@interface NRLinkDirectorMessage
- (id)description;
- (void)dealloc;
@end

@implementation NRLinkDirectorMessage

- (id)description
{
  v3 = [NSString alloc];
  v4 = sub_100029538(self);
  if (self)
  {
    messageVersion = self->_messageVersion;
    payloadLength = self->_payloadLength;
  }

  else
  {
    messageVersion = 0;
    payloadLength = 0;
  }

  v7 = [v3 initWithFormat:@"[%llu, vers %u, len %u]", v4, messageVersion, payloadLength];

  return v7;
}

- (void)dealloc
{
  if (self)
  {
    messageBufferPtr = self->_messageBufferPtr;
    if (messageBufferPtr)
    {
      free(messageBufferPtr);
      self->_messageBufferPtr = 0;
    }

    self->_messageLen = 0;
  }

  v4.receiver = self;
  v4.super_class = NRLinkDirectorMessage;
  [(NRLinkDirectorMessage *)&v4 dealloc];
}

@end