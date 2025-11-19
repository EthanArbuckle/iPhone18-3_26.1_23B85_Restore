@interface SDUnlockWakeGestureRecord
- (id)description;
@end

@implementation SDUnlockWakeGestureRecord

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(SDUnlockWakeGestureRecord *)self date];
  v6 = [(SDUnlockWakeGestureRecord *)self onWrist];
  v7 = @"NO";
  if (v6)
  {
    v7 = @"YES";
  }

  v8 = [NSString stringWithFormat:@"<%@: %p, date:%@, on wrist:%@>", v4, self, v5, v7];

  return v8;
}

@end