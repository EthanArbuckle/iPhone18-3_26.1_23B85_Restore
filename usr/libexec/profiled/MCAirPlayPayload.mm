@interface MCAirPlayPayload
- (id)handlerWithProfileHandler:(id)handler;
@end

@implementation MCAirPlayPayload

- (id)handlerWithProfileHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [(MCNewPayloadHandler *)[MCAirPlayPayloadHandler alloc] initWithPayload:self profileHandler:handlerCopy];

  return v5;
}

@end