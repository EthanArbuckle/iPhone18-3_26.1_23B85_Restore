@interface MCHomeScreenLayoutPayload
- (id)handlerWithProfileHandler:(id)handler;
@end

@implementation MCHomeScreenLayoutPayload

- (id)handlerWithProfileHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [(MCNewPayloadHandler *)[MCHomeScreenLayoutPayloadHandler alloc] initWithPayload:self profileHandler:handlerCopy];

  return v5;
}

@end