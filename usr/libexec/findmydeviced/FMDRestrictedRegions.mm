@interface FMDRestrictedRegions
+ (id)sharedInstance;
- (BOOL)isRestrictedLocationWithLatitude:(double)latitude longitude:(double)longitude;
- (BOOL)isRestrictedSKU;
- (FMDRestrictedRegions)init;
- (GEOMapRegion)fineKoreaRegion;
- (void)_setupRegions;
- (void)_setupSKUs;
@end

@implementation FMDRestrictedRegions

+ (id)sharedInstance
{
  if (qword_100314A00 != -1)
  {
    sub_10022EAD4();
  }

  v3 = qword_1003149F8;

  return v3;
}

- (FMDRestrictedRegions)init
{
  v5.receiver = self;
  v5.super_class = FMDRestrictedRegions;
  v2 = [(FMDRestrictedRegions *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(FMDRestrictedRegions *)v2 _setupRegions];
    [(FMDRestrictedRegions *)v3 _setupSKUs];
  }

  return v3;
}

- (BOOL)isRestrictedLocationWithLatitude:(double)latitude longitude:(double)longitude
{
  if (_os_feature_enabled_impl())
  {
    return 0;
  }

  v8 = +[FMSystemInfo sharedInstance];
  if ([v8 isInternalBuild])
  {
    v9 = [FMPreferencesUtil BOOLForKey:@"simulateRestrictedRegionPresence" inDomain:kFMDNotBackedUpPrefDomain];

    if (v9)
    {
      return 1;
    }
  }

  else
  {
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  regions = [(FMDRestrictedRegions *)self regions];
  v11 = [regions countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(regions);
        }

        if ([*(*(&v17 + 1) + 8 * i) containsCoordinate:{latitude, longitude}])
        {
          fineKoreaRegion = [(FMDRestrictedRegions *)self fineKoreaRegion];
          v7 = [fineKoreaRegion containsCoordinate:{latitude, longitude}];

          goto LABEL_17;
        }
      }

      v12 = [regions countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v7 = 0;
LABEL_17:

  return v7;
}

- (void)_setupRegions
{
  v3 = [NSMutableArray arrayWithCapacity:1];
  regions = self->_regions;
  self->_regions = v3;

  v5 = objc_alloc_init(GEOMapRegion);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [&off_1002E8978 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(&off_1002E8978);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [v10 objectAtIndexedSubscript:1];
        [v11 doubleValue];
        v13 = v12;

        v14 = [v10 objectAtIndexedSubscript:0];
        [v14 doubleValue];
        v16 = v15;

        v17 = [[GEOLatLng alloc] initWithLatitude:v13 longitude:v16];
        [v5 addVertex:v17];
      }

      v7 = [&off_1002E8978 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  regions = [(FMDRestrictedRegions *)self regions];
  [regions addObject:v5];
}

- (GEOMapRegion)fineKoreaRegion
{
  if (qword_100314A10 != -1)
  {
    sub_10022EAE8();
  }

  v3 = qword_100314A08;

  return v3;
}

- (void)_setupSKUs
{
  v3 = +[NSMutableSet set];
  sku = self->_sku;
  self->_sku = v3;

  v5 = self->_sku;

  [(NSMutableSet *)v5 addObject:@"KH"];
}

- (BOOL)isRestrictedSKU
{
  if (_os_feature_enabled_impl())
  {
    return 0;
  }

  v4 = +[FMSystemInfo sharedInstance];
  if ([v4 isInternalBuild])
  {
    v5 = [FMPreferencesUtil BOOLForKey:@"simulateRestrictedRegionPresence" inDomain:kFMDNotBackedUpPrefDomain];

    if (v5)
    {
      return 1;
    }
  }

  else
  {
  }

  currentDeviceSKURegion = [(FMDRestrictedRegions *)self currentDeviceSKURegion];

  if (!currentDeviceSKURegion)
  {
    v7 = MGCopyAnswer();
    [(FMDRestrictedRegions *)self setCurrentDeviceSKURegion:v7];
  }

  v8 = [(FMDRestrictedRegions *)self sku];
  currentDeviceSKURegion2 = [(FMDRestrictedRegions *)self currentDeviceSKURegion];
  v10 = [v8 containsObject:currentDeviceSKURegion2];

  return v10;
}

@end