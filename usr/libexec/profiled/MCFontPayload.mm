@interface MCFontPayload
- (id)handlerWithProfileHandler:(id)handler;
@end

@implementation MCFontPayload

- (id)handlerWithProfileHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [(MCNewPayloadHandler *)[MCFontPayloadHandler alloc] initWithPayload:self profileHandler:handlerCopy];

  return v5;
}

@end