@interface MCAirPrintPayload
- (id)handlerWithProfileHandler:(id)a3;
@end

@implementation MCAirPrintPayload

- (id)handlerWithProfileHandler:(id)a3
{
  v4 = a3;
  v5 = [(MCNewPayloadHandler *)[MCAirPrintPayloadHandler alloc] initWithPayload:self profileHandler:v4];

  return v5;
}

@end