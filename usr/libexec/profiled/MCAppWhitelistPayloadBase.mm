@interface MCAppWhitelistPayloadBase
- (id)handlerWithProfileHandler:(id)handler;
@end

@implementation MCAppWhitelistPayloadBase

- (id)handlerWithProfileHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [(MCNewPayloadHandler *)[MCAppWhitelistPayloadHandler alloc] initWithPayload:self profileHandler:handlerCopy];

  return v5;
}

@end