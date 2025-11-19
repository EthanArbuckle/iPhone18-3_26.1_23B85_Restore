@interface MCHomeScreenLayoutPayload
- (id)handlerWithProfileHandler:(id)a3;
@end

@implementation MCHomeScreenLayoutPayload

- (id)handlerWithProfileHandler:(id)a3
{
  v4 = a3;
  v5 = [(MCNewPayloadHandler *)[MCHomeScreenLayoutPayloadHandler alloc] initWithPayload:self profileHandler:v4];

  return v5;
}

@end