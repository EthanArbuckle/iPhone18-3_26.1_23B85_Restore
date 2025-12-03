@interface MCCellularPayload
- (id)handlerWithProfileHandler:(id)handler;
@end

@implementation MCCellularPayload

- (id)handlerWithProfileHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [(MCNewPayloadHandler *)[MCCellularPayloadHandler alloc] initWithPayload:self profileHandler:handlerCopy];

  return v5;
}

@end