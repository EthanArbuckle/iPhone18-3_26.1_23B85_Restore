@interface MCCellularPayload
- (id)handlerWithProfileHandler:(id)a3;
@end

@implementation MCCellularPayload

- (id)handlerWithProfileHandler:(id)a3
{
  v4 = a3;
  v5 = [(MCNewPayloadHandler *)[MCCellularPayloadHandler alloc] initWithPayload:self profileHandler:v4];

  return v5;
}

@end