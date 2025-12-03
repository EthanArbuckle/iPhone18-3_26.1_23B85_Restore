@interface MCWebClipPayload
- (id)handlerWithProfileHandler:(id)handler;
@end

@implementation MCWebClipPayload

- (id)handlerWithProfileHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [(MCNewPayloadHandler *)[MCNewWebClipPayloadHandler alloc] initWithPayload:self profileHandler:handlerCopy];

  return v5;
}

@end