@interface APPCControllerDaemonSettings
+ (id)storageWithDefaultValues:(id)values;
- (BOOL)httpUseFixedHttpSessionManagerValue;
- (BOOL)useAMSMescalValue;
- (double)httpLookBackWindowValue;
- (int64_t)cacheSizeLimitValue;
- (int64_t)httpMaximumConnectionsPerHostTempSessionValue;
- (int64_t)httpMaximumConnectionsPerHostValue;
- (void)setCacheSizeLimitValue:(int64_t)value;
- (void)setHttpLookBackWindowValue:(double)value;
- (void)setHttpMaximumConnectionsPerHostTempSessionValue:(int64_t)value;
- (void)setHttpMaximumConnectionsPerHostValue:(int64_t)value;
- (void)setHttpUseFixedHttpSessionManagerValue:(BOOL)value;
- (void)setUseAMSMescalValue:(BOOL)value;
@end

@implementation APPCControllerDaemonSettings

+ (id)storageWithDefaultValues:(id)values
{
  v3 = [[APSettingsStorageKeychain alloc] initWithDefaultValues:&off_100494758];

  return v3;
}

- (BOOL)useAMSMescalValue
{
  useAMSMescal = [(APPCControllerDaemonSettings *)self useAMSMescal];
  bOOLValue = [useAMSMescal BOOLValue];

  return bOOLValue;
}

- (void)setUseAMSMescalValue:(BOOL)value
{
  v4 = [NSNumber numberWithBool:value];
  [(APPCControllerDaemonSettings *)self setUseAMSMescal:v4];
}

- (BOOL)httpUseFixedHttpSessionManagerValue
{
  httpUseFixedHttpSessionManager = [(APPCControllerDaemonSettings *)self httpUseFixedHttpSessionManager];
  bOOLValue = [httpUseFixedHttpSessionManager BOOLValue];

  return bOOLValue;
}

- (void)setHttpUseFixedHttpSessionManagerValue:(BOOL)value
{
  v4 = [NSNumber numberWithBool:value];
  [(APPCControllerDaemonSettings *)self setHttpUseFixedHttpSessionManager:v4];
}

- (int64_t)httpMaximumConnectionsPerHostValue
{
  httpMaximumConnectionsPerHost = [(APPCControllerDaemonSettings *)self httpMaximumConnectionsPerHost];
  integerValue = [httpMaximumConnectionsPerHost integerValue];

  return integerValue;
}

- (void)setHttpMaximumConnectionsPerHostValue:(int64_t)value
{
  v4 = [NSNumber numberWithInteger:value];
  [(APPCControllerDaemonSettings *)self setHttpMaximumConnectionsPerHost:v4];
}

- (int64_t)httpMaximumConnectionsPerHostTempSessionValue
{
  httpMaximumConnectionsPerHostTempSession = [(APPCControllerDaemonSettings *)self httpMaximumConnectionsPerHostTempSession];
  integerValue = [httpMaximumConnectionsPerHostTempSession integerValue];

  return integerValue;
}

- (void)setHttpMaximumConnectionsPerHostTempSessionValue:(int64_t)value
{
  v4 = [NSNumber numberWithInteger:value];
  [(APPCControllerDaemonSettings *)self setHttpMaximumConnectionsPerHostTempSession:v4];
}

- (double)httpLookBackWindowValue
{
  httpLookBackWindow = [(APPCControllerDaemonSettings *)self httpLookBackWindow];
  [httpLookBackWindow doubleValue];
  v4 = v3;

  return v4;
}

- (void)setHttpLookBackWindowValue:(double)value
{
  v4 = [NSNumber numberWithDouble:value];
  [(APPCControllerDaemonSettings *)self setHttpLookBackWindow:v4];
}

- (int64_t)cacheSizeLimitValue
{
  cacheSizeLimit = [(APPCControllerDaemonSettings *)self cacheSizeLimit];
  integerValue = [cacheSizeLimit integerValue];

  return integerValue;
}

- (void)setCacheSizeLimitValue:(int64_t)value
{
  v4 = [NSNumber numberWithInteger:value];
  [(APPCControllerDaemonSettings *)self setCacheSizeLimit:v4];
}

@end