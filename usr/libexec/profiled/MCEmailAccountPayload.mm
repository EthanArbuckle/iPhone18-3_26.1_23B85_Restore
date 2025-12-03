@interface MCEmailAccountPayload
- (id)handlerWithProfileHandler:(id)handler;
@end

@implementation MCEmailAccountPayload

- (id)handlerWithProfileHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [[MCNewEmailAccountPayloadHandler alloc] initWithPayload:self profileHandler:handlerCopy];

  return v5;
}

@end