@interface _ICCloudDefaultValuesConfigurationStorage
+ (id)sharedConfiguration;
- (id)minimumSearchTermLengthByBaseLanguage;
- (id)throttlingPolicy;
@end

@implementation _ICCloudDefaultValuesConfigurationStorage

+ (id)sharedConfiguration
{
  if (qword_1009529B8 != -1)
  {
    sub_100765A48();
  }

  v3 = qword_1009529B0;

  return v3;
}

- (id)throttlingPolicy
{
  v2 = [[ICCloudThrottlingLevel alloc] initWithBatchInterval:0 numberOfBatches:60.0];
  v3 = [ICCloudThrottlingPolicy alloc];
  v7 = v2;
  v4 = [NSArray arrayWithObjects:&v7 count:1];
  v5 = [(ICCloudThrottlingPolicy *)v3 initWithThrottlingLevels:v4 resetInterval:86400.0];

  return v5;
}

- (id)minimumSearchTermLengthByBaseLanguage
{
  v4[0] = REMMinimumSearchTermLengthBaseLanguageDefault;
  v4[1] = @"zh-Hans";
  v5[0] = &off_100904EF0;
  v5[1] = &off_100904F08;
  v4[2] = @"zh-Hant";
  v4[3] = @"ja";
  v5[2] = &off_100904F08;
  v5[3] = &off_100904F08;
  v4[4] = @"ko";
  v5[4] = &off_100904F08;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:5];

  return v2;
}

@end