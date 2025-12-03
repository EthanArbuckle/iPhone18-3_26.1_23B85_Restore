@interface MCWebContentFilterPayload
- (id)handlerWithProfileHandler:(id)handler;
@end

@implementation MCWebContentFilterPayload

- (id)handlerWithProfileHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [(MCNewPayloadHandler *)[MCWebContentFilterPayloadHandler alloc] initWithPayload:self profileHandler:handlerCopy];

  return v5;
}

@end