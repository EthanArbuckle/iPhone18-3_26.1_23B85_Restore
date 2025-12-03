@interface CKOperation
- (id)ic_loggingValues;
@end

@implementation CKOperation

- (id)ic_loggingValues
{
  v13.receiver = self;
  v13.super_class = CKOperation;
  ic_loggingValues = [(CKOperation *)&v13 ic_loggingValues];
  v4 = [ic_loggingValues mutableCopy];

  metrics = [(CKOperation *)self metrics];
  cloudKitMetrics = [metrics cloudKitMetrics];
  [cloudKitMetrics duration];
  v8 = v7;

  if (v8 > 0.0)
  {
    metrics2 = [(CKOperation *)self metrics];
    cloudKitMetrics2 = [metrics2 cloudKitMetrics];
    [cloudKitMetrics2 duration];
    v11 = [NSNumber numberWithDouble:?];
    [v4 setObject:v11 forKeyedSubscript:@"duration"];
  }

  return v4;
}

@end