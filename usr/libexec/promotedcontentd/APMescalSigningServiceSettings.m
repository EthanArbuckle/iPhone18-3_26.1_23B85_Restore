@interface APMescalSigningServiceSettings
+ (id)storageWithDefaultValues:(id)a3;
- (BOOL)useAMSMescal;
- (void)setUseAMSMescal:(BOOL)a3;
@end

@implementation APMescalSigningServiceSettings

+ (id)storageWithDefaultValues:(id)a3
{
  v3 = a3;
  v4 = [[APSettingsStorageKeychain alloc] initWithDefaultValues:v3];

  return v4;
}

- (BOOL)useAMSMescal
{
  v3 = [(APMescalSigningServiceSettings *)self useAMSMescalObject];

  if (!v3)
  {
    return 1;
  }

  v4 = [(APMescalSigningServiceSettings *)self useAMSMescalObject];
  v5 = [v4 BOOLValue];

  return v5;
}

- (void)setUseAMSMescal:(BOOL)a3
{
  v4 = [NSNumber numberWithBool:a3];
  [(APMescalSigningServiceSettings *)self setUseAMSMescalObject:v4];
}

@end