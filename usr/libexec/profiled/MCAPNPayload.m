@interface MCAPNPayload
- (id)handlerWithProfileHandler:(id)a3;
@end

@implementation MCAPNPayload

- (id)handlerWithProfileHandler:(id)a3
{
  v4 = a3;
  v5 = [(MCNewPayloadHandler *)[MCNewAPNPayloadHandler alloc] initWithPayload:self profileHandler:v4];

  return v5;
}

@end