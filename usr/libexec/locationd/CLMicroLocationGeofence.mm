@interface CLMicroLocationGeofence
- (CLMicroLocationGeofence)init;
- (void)dealloc;
@end

@implementation CLMicroLocationGeofence

- (CLMicroLocationGeofence)init
{
  v3.receiver = self;
  v3.super_class = CLMicroLocationGeofence;
  return [(CLMicroLocationGeofence *)&v3 init];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLMicroLocationGeofence;
  [(CLMicroLocationGeofence *)&v3 dealloc];
}

@end