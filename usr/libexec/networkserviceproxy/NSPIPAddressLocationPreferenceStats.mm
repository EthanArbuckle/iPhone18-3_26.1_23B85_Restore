@interface NSPIPAddressLocationPreferenceStats
- (id)analyticsDict;
@end

@implementation NSPIPAddressLocationPreferenceStats

- (id)analyticsDict
{
  tierType = [(NSPIPAddressLocationPreferenceStats *)self tierType];

  if (tierType)
  {
    v4 = objc_alloc_init(NSMutableDictionary);
    v5 = [NSNumber numberWithUnsignedInteger:[(NSPIPAddressLocationPreferenceStats *)self locationPreference]];
    [v4 setObject:v5 forKeyedSubscript:@"LocationSharingPreference"];

    tierType2 = [(NSPIPAddressLocationPreferenceStats *)self tierType];
    [v4 setObject:tierType2 forKeyedSubscript:@"TierType"];
  }

  else
  {
    v8 = nplog_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      v9 = 136315138;
      v10 = "[NSPIPAddressLocationPreferenceStats analyticsDict]";
      _os_log_fault_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "%s called with null self.tierType", &v9, 0xCu);
    }

    v4 = 0;
  }

  return v4;
}

@end