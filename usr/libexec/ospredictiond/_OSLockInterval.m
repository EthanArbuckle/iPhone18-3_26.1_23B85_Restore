@interface _OSLockInterval
- (BOOL)hasReasonableDuration;
- (id)copyWithZone:(_NSZone *)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = _OSLockInterval;
  v4 = [(_OSIInterval *)&v6 copyWithZone:a3];
  [v4 setIsLocked:{-[_OSLockInterval isLocked](self, "isLocked")}];
  return v4;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = _OSLockInterval;
  v3 = [(_OSIInterval *)&v8 description];
  v4 = [(_OSLockInterval *)self isLocked];
  v5 = @"N";
  if (v4)
  {
    v5 = @"Y";
  }

  v6 = [NSString stringWithFormat:@"[Locked=%@] %@", v5, v3];

  return v6;
}

@end