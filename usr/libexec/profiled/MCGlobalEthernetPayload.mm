@interface MCGlobalEthernetPayload
- (id)handlerWithProfileHandler:(id)handler;
@end

@implementation MCGlobalEthernetPayload

- (id)handlerWithProfileHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [[MCGlobalEthernetPayloadHandler alloc] initWithPayload:self profileHandler:handlerCopy];

  return v5;
}

@end