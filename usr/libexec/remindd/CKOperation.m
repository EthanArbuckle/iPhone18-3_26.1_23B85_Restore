@interface CKOperation
- (id)ic_loggingValues;
@end

@implementation CKOperation

- (id)ic_loggingValues
{
  v13.receiver = self;
  v13.super_class = CKOperation;
  v3 = [(CKOperation *)&v13 ic_loggingValues];
  v4 = [v3 mutableCopy];

  v5 = [(CKOperation *)self metrics];
  v6 = [v5 cloudKitMetrics];
  [v6 duration];
  v8 = v7;

  if (v8 > 0.0)
  {
    v9 = [(CKOperation *)self metrics];
    v10 = [v9 cloudKitMetrics];
    [v10 duration];
    v11 = [NSNumber numberWithDouble:?];
    [v4 setObject:v11 forKeyedSubscript:@"duration"];
  }

  return v4;
}

@end