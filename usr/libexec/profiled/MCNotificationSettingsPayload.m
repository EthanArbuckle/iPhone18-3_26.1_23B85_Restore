@interface MCNotificationSettingsPayload
- (id)handlerWithProfileHandler:(id)a3;
@end

@implementation MCNotificationSettingsPayload

- (id)handlerWithProfileHandler:(id)a3
{
  v4 = a3;
  v5 = [(MCNewPayloadHandler *)[MCNotificationSettingsPayloadHandler alloc] initWithPayload:self profileHandler:v4];

  return v5;
}

@end