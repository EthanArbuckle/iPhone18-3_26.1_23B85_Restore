@interface MCSCEPPayload
- (id)handlerWithProfileHandler:(id)handler;
@end

@implementation MCSCEPPayload

- (id)handlerWithProfileHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [(MCNewPayloadHandler *)[MCNewSCEPPayloadHandler alloc] initWithPayload:self profileHandler:handlerCopy];

  return v5;
}

@end