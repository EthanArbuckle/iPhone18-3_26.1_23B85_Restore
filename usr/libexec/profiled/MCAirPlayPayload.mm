@interface MCAirPlayPayload
- (id)handlerWithProfileHandler:(id)a3;
@end

@implementation MCAirPlayPayload

- (id)handlerWithProfileHandler:(id)a3
{
  v4 = a3;
  v5 = [(MCNewPayloadHandler *)[MCAirPlayPayloadHandler alloc] initWithPayload:self profileHandler:v4];

  return v5;
}

@end