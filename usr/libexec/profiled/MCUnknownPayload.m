@interface MCUnknownPayload
- (id)handlerWithProfileHandler:(id)a3;
@end

@implementation MCUnknownPayload

- (id)handlerWithProfileHandler:(id)a3
{
  v4 = a3;
  v5 = [(MCNewPayloadHandler *)[MCNewUnknownPayloadHandler alloc] initWithPayload:self profileHandler:v4];

  return v5;
}

@end