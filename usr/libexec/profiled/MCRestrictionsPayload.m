@interface MCRestrictionsPayload
- (id)handlerWithProfileHandler:(id)a3;
@end

@implementation MCRestrictionsPayload

- (id)handlerWithProfileHandler:(id)a3
{
  v4 = a3;
  v5 = [(MCNewPayloadHandler *)[MCNewRestrictionsPayloadHandler alloc] initWithPayload:self profileHandler:v4];

  return v5;
}

@end