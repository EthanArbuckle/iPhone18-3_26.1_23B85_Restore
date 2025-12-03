@interface APMescalSigningServiceSettings
+ (id)storageWithDefaultValues:(id)values;
- (BOOL)useAMSMescal;
- (void)setUseAMSMescal:(BOOL)mescal;
@end

@implementation APMescalSigningServiceSettings

+ (id)storageWithDefaultValues:(id)values
{
  valuesCopy = values;
  v4 = [[APSettingsStorageKeychain alloc] initWithDefaultValues:valuesCopy];

  return v4;
}

- (BOOL)useAMSMescal
{
  useAMSMescalObject = [(APMescalSigningServiceSettings *)self useAMSMescalObject];

  if (!useAMSMescalObject)
  {
    return 1;
  }

  useAMSMescalObject2 = [(APMescalSigningServiceSettings *)self useAMSMescalObject];
  bOOLValue = [useAMSMescalObject2 BOOLValue];

  return bOOLValue;
}

- (void)setUseAMSMescal:(BOOL)mescal
{
  v4 = [NSNumber numberWithBool:mescal];
  [(APMescalSigningServiceSettings *)self setUseAMSMescalObject:v4];
}

@end