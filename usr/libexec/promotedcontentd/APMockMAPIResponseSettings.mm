@interface APMockMAPIResponseSettings
+ (id)storageWithDefaultValues:(id)a3;
- (NSArray)contentDataObjects;
- (id)_parseContentDataJson:(id)a3;
@end

@implementation APMockMAPIResponseSettings

+ (id)storageWithDefaultValues:(id)a3
{
  v3 = a3;
  v4 = [[APSettingsStorageUserDefaults alloc] initWithDefaultValues:v3];

  return v4;
}

- (NSArray)contentDataObjects
{
  v3 = [(APMockMAPIResponseSettings *)self responseJson];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 dataUsingEncoding:4];
    v21 = 0;
    v6 = [NSJSONSerialization JSONObjectWithData:v5 options:0 error:&v21];
    v7 = v21;

    if (v7 || ![v6 count])
    {
      v8 = 0;
    }

    else
    {
      v9 = objc_alloc_init(NSMutableArray);
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v10 = v6;
      v11 = [v10 countByEnumeratingWithState:&v17 objects:v22 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v18;
        do
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v18 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = [(APMockMAPIResponseSettings *)self _parseContentDataJson:*(*(&v17 + 1) + 8 * i), v17];
            if (v15)
            {
              [v9 addObject:v15];
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v17 objects:v22 count:16];
        }

        while (v12);
      }

      v8 = [v9 copy];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_parseContentDataJson:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(APContentData);
  v5 = objc_alloc_init(APRepresentationData);
  v6 = [v3 objectForKeyedSubscript:@"ttl"];
  v7 = [v6 integerValue];

  v8 = +[NSDate now];
  v9 = [v8 dateByAddingTimeInterval:v7];
  [v4 setExpirationDate:v9];

  v10 = [v3 objectForKeyedSubscript:@"adamId"];
  [v5 setAdamID:v10];

  v11 = [v3 objectForKeyedSubscript:@"metadata"];
  [v5 setMetadata:v11];

  v12 = [v3 objectForKeyedSubscript:@"journeyRelayAdGroupId"];
  [v5 setJourneyRelayAdGroupId:v12];

  v13 = [v3 objectForKeyedSubscript:@"journeyRelayCampaignId"];
  [v5 setJourneyRelayCampaignId:v13];

  v14 = [v3 objectForKeyedSubscript:@"parentAppCheckEnabled"];
  [v5 setParentAppCheckEnabled:{objc_msgSend(v14, "BOOLValue")}];

  v15 = [v3 objectForKeyedSubscript:@"rank"];
  [v5 setRank:{objc_msgSend(v15, "integerValue")}];

  v16 = [NSUUID alloc];
  v17 = [v3 objectForKeyedSubscript:@"iAdId"];

  v18 = [v16 initWithUUIDString:v17];
  [v5 setIAdID:v18];

  [v5 setInstallAttribution:&__NSDictionary0__struct];
  [v5 setPlacementType:5];
  [v4 addRepresentation:v5];

  return v4;
}

@end