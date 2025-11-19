@interface MCLoggingPayload
- (id)handlerWithProfileHandler:(id)a3;
@end

@implementation MCLoggingPayload

- (id)handlerWithProfileHandler:(id)a3
{
  v4 = a3;
  v5 = [(MCNewPayloadHandler *)[MCLoggingPayloadHandler alloc] initWithPayload:self profileHandler:v4];

  return v5;
}

@end