@interface LiveActivityInfo
+ (id)liveActivityWithBundleID:(id)d startedWithCBInForeground:(BOOL)foreground;
- (LiveActivityInfo)initWithBundleID:(id)d startedWithCBInForeground:(BOOL)foreground;
- (id)description;
- (id)liveActivityStateToString;
@end

@implementation LiveActivityInfo

- (id)liveActivityStateToString
{
  state = [(LiveActivityInfo *)self state];
  if (state > 4)
  {
    return @"Unknown";
  }

  else
  {
    return off_100B0E650[state];
  }
}

- (LiveActivityInfo)initWithBundleID:(id)d startedWithCBInForeground:(BOOL)foreground
{
  foregroundCopy = foreground;
  dCopy = d;
  v10.receiver = self;
  v10.super_class = LiveActivityInfo;
  v7 = [(LiveActivityInfo *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(LiveActivityInfo *)v7 setBundleID:dCopy];
    [(LiveActivityInfo *)v8 setStartedWithCBInForeground:foregroundCopy];
  }

  return v8;
}

+ (id)liveActivityWithBundleID:(id)d startedWithCBInForeground:(BOOL)foreground
{
  foregroundCopy = foreground;
  dCopy = d;
  v7 = [[self alloc] initWithBundleID:dCopy startedWithCBInForeground:foregroundCopy];

  return v7;
}

- (id)description
{
  v3 = objc_opt_class();
  bundleID = [(LiveActivityInfo *)self bundleID];
  startedWithCBInForeground = [(LiveActivityInfo *)self startedWithCBInForeground];
  liveActivityStateToString = [(LiveActivityInfo *)self liveActivityStateToString];
  v7 = [NSString stringWithFormat:@"<%@:bundleID:%@ startedWithCBInForeground:%d state:%@(%ld)", v3, bundleID, startedWithCBInForeground, liveActivityStateToString, [(LiveActivityInfo *)self state]];

  return v7;
}

@end