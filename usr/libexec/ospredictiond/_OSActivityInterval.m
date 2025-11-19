@interface _OSActivityInterval
- (BOOL)hasReasonableDuration;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation _OSActivityInterval

- (BOOL)hasReasonableDuration
{
  [(_OSIInterval *)self duration];
  if (v3 < 30.0)
  {
    return 0;
  }

  [(_OSIInterval *)self duration];
  return v5 <= 604800.0;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = _OSActivityInterval;
  v4 = [(_OSIInterval *)&v6 copyWithZone:a3];
  [v4 setIsActive:{-[_OSActivityInterval isActive](self, "isActive")}];
  return v4;
}

@end