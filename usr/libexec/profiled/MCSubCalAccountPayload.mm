@interface MCSubCalAccountPayload
- (id)handlerWithProfileHandler:(id)a3;
@end

@implementation MCSubCalAccountPayload

- (id)handlerWithProfileHandler:(id)a3
{
  v4 = a3;
  v5 = [(MCNewPayloadHandler *)[MCNewSubCalAccountPayloadHandler alloc] initWithPayload:self profileHandler:v4];

  return v5;
}

@end