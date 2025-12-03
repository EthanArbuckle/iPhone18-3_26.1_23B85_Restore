@interface MCDomainsPayload
- (id)handlerWithProfileHandler:(id)handler;
@end

@implementation MCDomainsPayload

- (id)handlerWithProfileHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [(MCNewPayloadHandler *)[MCDomainsPayloadHandler alloc] initWithPayload:self profileHandler:handlerCopy];

  return v5;
}

@end