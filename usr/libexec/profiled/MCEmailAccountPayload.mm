@interface MCEmailAccountPayload
- (id)handlerWithProfileHandler:(id)a3;
@end

@implementation MCEmailAccountPayload

- (id)handlerWithProfileHandler:(id)a3
{
  v4 = a3;
  v5 = [[MCNewEmailAccountPayloadHandler alloc] initWithPayload:self profileHandler:v4];

  return v5;
}

@end