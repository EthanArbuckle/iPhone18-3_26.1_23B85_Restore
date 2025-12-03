@interface MCAppleServicesPayload
- (id)handlerWithProfileHandler:(id)handler;
@end

@implementation MCAppleServicesPayload

- (id)handlerWithProfileHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [(MCNewPayloadHandler *)[MCAppleServicesPayloadHandler alloc] initWithPayload:self profileHandler:handlerCopy];

  return v5;
}

@end