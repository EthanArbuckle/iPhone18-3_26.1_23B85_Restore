@interface _GCAgentConnectionRegistration
- (_GCAgentConnectionRegistration)initWithUserIdentifier:(unsigned int)a3;
- (void)invalidate;
@end

@implementation _GCAgentConnectionRegistration

- (_GCAgentConnectionRegistration)initWithUserIdentifier:(unsigned int)a3
{
  v5.receiver = self;
  v5.super_class = _GCAgentConnectionRegistration;
  result = [(_GCAgentConnectionRegistration *)&v5 init];
  if (result)
  {
    result->_userIdentifier = a3;
  }

  return result;
}

- (void)invalidate
{
  connectionInterruptedRegistration = self->_connectionInterruptedRegistration;
  self->_connectionInterruptedRegistration = 0;

  connectionInvalidationRegistration = self->_connectionInvalidationRegistration;
  self->_connectionInvalidationRegistration = 0;
}

@end