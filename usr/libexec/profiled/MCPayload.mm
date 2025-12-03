@interface MCPayload
- (id)handlerWithProfileHandler:(id)handler;
@end

@implementation MCPayload

- (id)handlerWithProfileHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [[MCNewPayloadHandler alloc] initWithPayload:self profileHandler:handlerCopy];

  return v5;
}

@end