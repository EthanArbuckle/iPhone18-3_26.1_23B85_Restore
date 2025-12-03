@interface _OSLockInterval
- (BOOL)hasReasonableDuration;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation _OSLockInterval

- (BOOL)hasReasonableDuration
{
  [(_OSIInterval *)self duration];
  if (v3 < 60.0)
  {
    return 0;
  }

  [(_OSIInterval *)self duration];
  return v5 <= 86400.0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = _OSLockInterval;
  v4 = [(_OSIInterval *)&v6 copyWithZone:zone];
  [v4 setIsLocked:{-[_OSLockInterval isLocked](self, "isLocked")}];
  return v4;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = _OSLockInterval;
  v3 = [(_OSIInterval *)&v8 description];
  isLocked = [(_OSLockInterval *)self isLocked];
  v5 = @"N";
  if (isLocked)
  {
    v5 = @"Y";
  }

  v6 = [NSString stringWithFormat:@"[Locked=%@] %@", v5, v3];

  return v6;
}

@end