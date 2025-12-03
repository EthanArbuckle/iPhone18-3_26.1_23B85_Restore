@interface SDUnlockWakeGestureRecord
- (id)description;
@end

@implementation SDUnlockWakeGestureRecord

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  date = [(SDUnlockWakeGestureRecord *)self date];
  onWrist = [(SDUnlockWakeGestureRecord *)self onWrist];
  v7 = @"NO";
  if (onWrist)
  {
    v7 = @"YES";
  }

  v8 = [NSString stringWithFormat:@"<%@: %p, date:%@, on wrist:%@>", v4, self, date, v7];

  return v8;
}

@end