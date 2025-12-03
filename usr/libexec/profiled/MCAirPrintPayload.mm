@interface MCAirPrintPayload
- (id)handlerWithProfileHandler:(id)handler;
@end

@implementation MCAirPrintPayload

- (id)handlerWithProfileHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [(MCNewPayloadHandler *)[MCAirPrintPayloadHandler alloc] initWithPayload:self profileHandler:handlerCopy];

  return v5;
}

@end