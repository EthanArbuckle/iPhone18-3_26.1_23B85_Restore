@interface MCDefaultsPayload
- (id)handlerWithProfileHandler:(id)handler;
@end

@implementation MCDefaultsPayload

- (id)handlerWithProfileHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [[MCNewDefaultsPayloadHandler alloc] initWithPayload:self profileHandler:handlerCopy];

  return v5;
}

@end