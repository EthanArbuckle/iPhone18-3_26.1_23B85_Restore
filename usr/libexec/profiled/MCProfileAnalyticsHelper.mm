@interface MCProfileAnalyticsHelper
+ (id)_containsPayloadsDictionary;
+ (id)_getBoolDictionaryFromKeySet:(id)set;
+ (void)addContainsPayloadInfoWithProfile:(id)profile eventPayload:(id)payload;
@end

@implementation MCProfileAnalyticsHelper

+ (void)addContainsPayloadInfoWithProfile:(id)profile eventPayload:(id)payload
{
  profileCopy = profile;
  payloadCopy = payload;
  v6 = +[MCProfileAnalyticsHelper _containsPayloadsDictionary];
  allValues = [v6 allValues];
  v8 = [NSSet setWithArray:allValues];
  v9 = [MCProfileAnalyticsHelper _getBoolDictionaryFromKeySet:v8];

  [v9 setObject:&__kCFBooleanFalse forKeyedSubscript:@"profile_containsPayload_other"];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v20 = profileCopy;
  payloads = [profileCopy payloads];
  v11 = [payloads countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v22;
    do
    {
      v14 = 0;
      do
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(payloads);
        }

        type = [*(*(&v21 + 1) + 8 * v14) type];
        v16 = [v6 objectForKeyedSubscript:type];

        if (!v16 || ([v9 objectForKeyedSubscript:v16], v17 = objc_claimAutoreleasedReturnValue(), v17, v18 = v16, !v17))
        {
          v18 = @"profile_containsPayload_other";
        }

        [v9 setObject:&__kCFBooleanTrue forKeyedSubscript:v18];

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [payloads countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v12);
  }

  [payloadCopy addEntriesFromDictionary:v9];
}

+ (id)_containsPayloadsDictionary
{
  if (qword_100136C28 != -1)
  {
    sub_1000C2CEC();
  }

  v3 = qword_100136C20;

  return v3;
}

+ (id)_getBoolDictionaryFromKeySet:(id)set
{
  setCopy = set;
  v4 = objc_alloc_init(NSMutableDictionary);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = setCopy;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v4 setObject:&__kCFBooleanFalse forKeyedSubscript:{*(*(&v11 + 1) + 8 * i), v11}];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  return v4;
}

@end