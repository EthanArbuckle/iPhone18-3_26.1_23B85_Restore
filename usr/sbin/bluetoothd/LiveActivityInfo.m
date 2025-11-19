@interface LiveActivityInfo
+ (id)liveActivityWithBundleID:(id)a3 startedWithCBInForeground:(BOOL)a4;
- (LiveActivityInfo)initWithBundleID:(id)a3 startedWithCBInForeground:(BOOL)a4;
- (id)description;
- (id)liveActivityStateToString;
@end

@implementation LiveActivityInfo

- (id)liveActivityStateToString
{
  v2 = [(LiveActivityInfo *)self state];
  if (v2 > 4)
  {
    return @"Unknown";
  }

  else
  {
    return off_100B0E650[v2];
  }
}

- (LiveActivityInfo)initWithBundleID:(id)a3 startedWithCBInForeground:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v10.receiver = self;
  v10.super_class = LiveActivityInfo;
  v7 = [(LiveActivityInfo *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(LiveActivityInfo *)v7 setBundleID:v6];
    [(LiveActivityInfo *)v8 setStartedWithCBInForeground:v4];
  }

  return v8;
}

+ (id)liveActivityWithBundleID:(id)a3 startedWithCBInForeground:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [[a1 alloc] initWithBundleID:v6 startedWithCBInForeground:v4];

  return v7;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = [(LiveActivityInfo *)self bundleID];
  v5 = [(LiveActivityInfo *)self startedWithCBInForeground];
  v6 = [(LiveActivityInfo *)self liveActivityStateToString];
  v7 = [NSString stringWithFormat:@"<%@:bundleID:%@ startedWithCBInForeground:%d state:%@(%ld)", v3, v4, v5, v6, [(LiveActivityInfo *)self state]];

  return v7;
}

@end