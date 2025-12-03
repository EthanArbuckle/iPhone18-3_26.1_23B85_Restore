@interface MCLDAPAccountPayload
- (id)handlerWithProfileHandler:(id)handler;
@end

@implementation MCLDAPAccountPayload

- (id)handlerWithProfileHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [(MCNewPayloadHandler *)[MCNewLDAPAccountPayloadHandler alloc] initWithPayload:self profileHandler:handlerCopy];

  return v5;
}

@end