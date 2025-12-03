@interface MCSubCalAccountPayload
- (id)handlerWithProfileHandler:(id)handler;
@end

@implementation MCSubCalAccountPayload

- (id)handlerWithProfileHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [(MCNewPayloadHandler *)[MCNewSubCalAccountPayloadHandler alloc] initWithPayload:self profileHandler:handlerCopy];

  return v5;
}

@end