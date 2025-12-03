@interface MCGmailAccountPayload
- (id)handlerWithProfileHandler:(id)handler;
@end

@implementation MCGmailAccountPayload

- (id)handlerWithProfileHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [[MCGmailAccountPayloadHandler alloc] initWithPayload:self profileHandler:handlerCopy];

  return v5;
}

@end