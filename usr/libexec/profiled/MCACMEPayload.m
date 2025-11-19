@interface MCACMEPayload
- (id)handlerWithProfileHandler:(id)a3;
@end

@implementation MCACMEPayload

- (id)handlerWithProfileHandler:(id)a3
{
  v4 = a3;
  v5 = [(MCNewPayloadHandler *)[MCACMEPayloadHandler alloc] initWithPayload:self profileHandler:v4];

  return v5;
}

@end