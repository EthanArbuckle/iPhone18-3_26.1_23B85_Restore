@interface MCGmailAccountPayload
- (id)handlerWithProfileHandler:(id)a3;
@end

@implementation MCGmailAccountPayload

- (id)handlerWithProfileHandler:(id)a3
{
  v4 = a3;
  v5 = [[MCGmailAccountPayloadHandler alloc] initWithPayload:self profileHandler:v4];

  return v5;
}

@end