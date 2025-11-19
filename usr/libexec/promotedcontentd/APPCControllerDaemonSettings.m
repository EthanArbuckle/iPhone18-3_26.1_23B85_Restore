@interface APPCControllerDaemonSettings
+ (id)storageWithDefaultValues:(id)a3;
- (BOOL)httpUseFixedHttpSessionManagerValue;
- (BOOL)useAMSMescalValue;
- (double)httpLookBackWindowValue;
- (int64_t)cacheSizeLimitValue;
- (int64_t)httpMaximumConnectionsPerHostTempSessionValue;
- (int64_t)httpMaximumConnectionsPerHostValue;
- (void)setCacheSizeLimitValue:(int64_t)a3;
- (void)setHttpLookBackWindowValue:(double)a3;
- (void)setHttpMaximumConnectionsPerHostTempSessionValue:(int64_t)a3;
- (void)setHttpMaximumConnectionsPerHostValue:(int64_t)a3;
- (void)setHttpUseFixedHttpSessionManagerValue:(BOOL)a3;
- (void)setUseAMSMescalValue:(BOOL)a3;
@end

@implementation APPCControllerDaemonSettings

+ (id)storageWithDefaultValues:(id)a3
{
  v3 = [[APSettingsStorageKeychain alloc] initWithDefaultValues:&off_100494758];

  return v3;
}

- (BOOL)useAMSMescalValue
{
  v2 = [(APPCControllerDaemonSettings *)self useAMSMescal];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setUseAMSMescalValue:(BOOL)a3
{
  v4 = [NSNumber numberWithBool:a3];
  [(APPCControllerDaemonSettings *)self setUseAMSMescal:v4];
}

- (BOOL)httpUseFixedHttpSessionManagerValue
{
  v2 = [(APPCControllerDaemonSettings *)self httpUseFixedHttpSessionManager];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setHttpUseFixedHttpSessionManagerValue:(BOOL)a3
{
  v4 = [NSNumber numberWithBool:a3];
  [(APPCControllerDaemonSettings *)self setHttpUseFixedHttpSessionManager:v4];
}

- (int64_t)httpMaximumConnectionsPerHostValue
{
  v2 = [(APPCControllerDaemonSettings *)self httpMaximumConnectionsPerHost];
  v3 = [v2 integerValue];

  return v3;
}

- (void)setHttpMaximumConnectionsPerHostValue:(int64_t)a3
{
  v4 = [NSNumber numberWithInteger:a3];
  [(APPCControllerDaemonSettings *)self setHttpMaximumConnectionsPerHost:v4];
}

- (int64_t)httpMaximumConnectionsPerHostTempSessionValue
{
  v2 = [(APPCControllerDaemonSettings *)self httpMaximumConnectionsPerHostTempSession];
  v3 = [v2 integerValue];

  return v3;
}

- (void)setHttpMaximumConnectionsPerHostTempSessionValue:(int64_t)a3
{
  v4 = [NSNumber numberWithInteger:a3];
  [(APPCControllerDaemonSettings *)self setHttpMaximumConnectionsPerHostTempSession:v4];
}

- (double)httpLookBackWindowValue
{
  v2 = [(APPCControllerDaemonSettings *)self httpLookBackWindow];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (void)setHttpLookBackWindowValue:(double)a3
{
  v4 = [NSNumber numberWithDouble:a3];
  [(APPCControllerDaemonSettings *)self setHttpLookBackWindow:v4];
}

- (int64_t)cacheSizeLimitValue
{
  v2 = [(APPCControllerDaemonSettings *)self cacheSizeLimit];
  v3 = [v2 integerValue];

  return v3;
}

- (void)setCacheSizeLimitValue:(int64_t)a3
{
  v4 = [NSNumber numberWithInteger:a3];
  [(APPCControllerDaemonSettings *)self setCacheSizeLimit:v4];
}

@end