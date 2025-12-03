@interface MCOSXServerAccountPayload
- (id)handlerWithProfileHandler:(id)handler;
@end

@implementation MCOSXServerAccountPayload

- (id)handlerWithProfileHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [(MCNewPayloadHandler *)[MCOSXServerAccountPayloadHandler alloc] initWithPayload:self profileHandler:handlerCopy];

  return v5;
}

@end