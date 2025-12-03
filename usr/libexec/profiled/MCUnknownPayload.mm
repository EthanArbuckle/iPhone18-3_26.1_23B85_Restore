@interface MCUnknownPayload
- (id)handlerWithProfileHandler:(id)handler;
@end

@implementation MCUnknownPayload

- (id)handlerWithProfileHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [(MCNewPayloadHandler *)[MCNewUnknownPayloadHandler alloc] initWithPayload:self profileHandler:handlerCopy];

  return v5;
}

@end