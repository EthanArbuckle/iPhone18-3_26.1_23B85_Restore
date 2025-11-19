@interface CASServerService
- (CASServerService)init;
@end

@implementation CASServerService

- (CASServerService)init
{
  v7.receiver = self;
  v7.super_class = CASServerService;
  v2 = [(CASServerService *)&v7 init];
  if (v2)
  {
    v3 = [CBMutableService alloc];
    v4 = [CBUUID UUIDWithString:CBUUIDCommonAudioServiceString];
    v5 = [v3 initWithType:v4 primary:1];
    [(Service *)v2 setService:v5];
  }

  return v2;
}

@end