@interface MCFontPayload
- (id)handlerWithProfileHandler:(id)a3;
@end

@implementation MCFontPayload

- (id)handlerWithProfileHandler:(id)a3
{
  v4 = a3;
  v5 = [(MCNewPayloadHandler *)[MCFontPayloadHandler alloc] initWithPayload:self profileHandler:v4];

  return v5;
}

@end