@interface LSApplicationRecord
+ (id)sr_applicationRecordWithIdentifier:(id)identifier error:(id *)error;
@end

@implementation LSApplicationRecord

+ (id)sr_applicationRecordWithIdentifier:(id)identifier error:(id *)error
{
  v4 = [LSApplicationRecord bundleRecordWithApplicationIdentifier:identifier error:error];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

@end