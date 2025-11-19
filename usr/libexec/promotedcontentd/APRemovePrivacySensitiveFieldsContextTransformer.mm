@interface APRemovePrivacySensitiveFieldsContextTransformer
+ (id)transformedContextForDroppedDueToPolicyFromContext:(id)a3;
@end

@implementation APRemovePrivacySensitiveFieldsContextTransformer

+ (id)transformedContextForDroppedDueToPolicyFromContext:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableDictionary dictionary];
  v5 = [v3 objectForKeyedSubscript:@"header"];
  v6 = +[NSMutableDictionary dictionary];
  v7 = [v5 objectForKeyedSubscript:@"onboard_status"];
  [v6 setObject:v7 forKeyedSubscript:@"onboard_status"];

  v8 = [v5 objectForKeyedSubscript:@"contentEnvironment"];
  [v6 setObject:v8 forKeyedSubscript:@"contentEnvironment"];

  v9 = [v5 objectForKeyedSubscript:@"placement"];
  [v6 setObject:v9 forKeyedSubscript:@"placement"];

  v10 = [v6 copy];
  [v4 setObject:v10 forKeyedSubscript:@"header"];

  v11 = [v3 objectForKeyedSubscript:?];

  v12 = +[NSMutableDictionary dictionary];
  v13 = [v11 objectForKeyedSubscript:@"feedMetadata"];
  v14 = +[NSMutableDictionary dictionary];
  v38 = v13;
  v15 = [v13 objectForKeyedSubscript:@"channelId"];
  [v14 setObject:v15 forKeyedSubscript:@"channelId"];

  v37 = v14;
  [v12 setObject:v14 forKeyedSubscript:@"feedMetadata"];
  v16 = [v11 objectForKeyedSubscript:@"creativeType"];
  [v12 setObject:v16 forKeyedSubscript:@"creativeType"];

  v17 = [v11 objectForKeyedSubscript:@"superFeedMetadata"];
  [v12 setObject:v17 forKeyedSubscript:@"superFeedMetadata"];

  v18 = [v11 objectForKeyedSubscript:@"adOpId"];
  [v12 setObject:v18 forKeyedSubscript:@"adOpId"];

  v19 = [v11 objectForKeyedSubscript:@"anfComponentMetadata"];
  if (v19)
  {
    +[NSMutableDictionary dictionary];
    v20 = v36 = v6;
    v21 = [v19 objectForKeyedSubscript:@"shouldUseComponentMetadata"];
    [v20 setObject:v21 forKeyedSubscript:@"shouldUseComponentMetadata"];

    v35 = [v19 objectForKeyedSubscript:@"source"];
    v22 = +[NSMutableDictionary dictionary];
    v34 = [v35 objectForKeyedSubscript:@"publicationMetadata"];
    v23 = +[NSMutableDictionary dictionary];
    v24 = [v34 objectForKeyedSubscript:@"superfeed_key1"];
    [v23 setObject:v24 forKeyedSubscript:@"superfeed_key1"];

    v25 = [v23 copy];
    [v22 setObject:v25 forKeyedSubscript:@"publicationMetadata"];

    v26 = [v22 copy];
    [v20 setObject:v26 forKeyedSubscript:@"source"];

    v27 = [v20 copy];
    [v12 setObject:v27 forKeyedSubscript:@"anfComponentMetadata"];

    v6 = v36;
  }

  v28 = [v12 copy];
  [v4 setObject:v28 forKeyedSubscript:@"body"];

  v29 = APLegacyNewsContextKey;
  v30 = [v4 copy];
  v31 = [v30 jsonStringWithOptions:0];
  v32 = [v29 stringByAppendingString:v31];

  return v32;
}

@end