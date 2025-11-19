@interface PTPCPassiveCollectionConfig
- (PTPCPassiveCollectionConfig)initWithName:(id)a3 collectMSS:(BOOL)a4 collectAppInFocus:(BOOL)a5 collectLoggingPerfPowerMetrics:(BOOL)a6 collectLoggingHangs:(BOOL)a7 collectLoggingUserInteraction:(BOOL)a8 collectLoggingMetalFramePacing:(BOOL)a9 collectLoggingScrolling:(BOOL)a10 collectLoggingAppLaunch:(BOOL)a11;
- (id)debugDescription;
- (id)loggingDataCategoryNames;
@end

@implementation PTPCPassiveCollectionConfig

- (PTPCPassiveCollectionConfig)initWithName:(id)a3 collectMSS:(BOOL)a4 collectAppInFocus:(BOOL)a5 collectLoggingPerfPowerMetrics:(BOOL)a6 collectLoggingHangs:(BOOL)a7 collectLoggingUserInteraction:(BOOL)a8 collectLoggingMetalFramePacing:(BOOL)a9 collectLoggingScrolling:(BOOL)a10 collectLoggingAppLaunch:(BOOL)a11
{
  v18 = a3;
  v22.receiver = self;
  v22.super_class = PTPCPassiveCollectionConfig;
  v19 = [(PTPCPassiveCollectionConfig *)&v22 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_name, a3);
    v20->_collectMSS = a4;
    v20->_collectAppInFocus = a5;
    v20->_collectLoggingPerfPowerMetrics = a6;
    v20->_collectLoggingHangs = a7;
    v20->_collectLoggingUserInteraction = a8;
    v20->_collectLoggingMetalFramePacing = a9;
    v20->_collectLoggingScrolling = a10;
    v20->_collectLoggingAppLaunch = a11;
  }

  return v20;
}

- (id)loggingDataCategoryNames
{
  v3 = objc_alloc_init(NSMutableArray);
  if ([(PTPCPassiveCollectionConfig *)self collectLoggingUserInteraction])
  {
    [v3 addObject:@"InteractionTracking"];
  }

  if ([(PTPCPassiveCollectionConfig *)self collectLoggingMetalFramePacing])
  {
    [v3 addObject:@"MetalFramePacing"];
  }

  if ([(PTPCPassiveCollectionConfig *)self collectLoggingScrolling])
  {
    [v3 addObject:@"Scrolling"];
  }

  if ([(PTPCPassiveCollectionConfig *)self collectLoggingPerfPowerMetrics])
  {
    [v3 addObject:@"PerfPowerMetrics"];
  }

  if ([(PTPCPassiveCollectionConfig *)self collectLoggingAppLaunch])
  {
    [v3 addObject:@"AppLaunch"];
  }

  if ([(PTPCPassiveCollectionConfig *)self collectLoggingHangs])
  {
    [v3 addObject:@"Hangs"];
  }

  return v3;
}

- (id)debugDescription
{
  v23 = [(PTPCPassiveCollectionConfig *)self name];
  if ([(PTPCPassiveCollectionConfig *)self collectMSS])
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  v4 = v3;
  if ([(PTPCPassiveCollectionConfig *)self collectAppInFocus])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v6 = v5;
  if ([(PTPCPassiveCollectionConfig *)self collectLoggingPerfPowerMetrics])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = v7;
  if ([(PTPCPassiveCollectionConfig *)self collectLoggingHangs])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  v10 = v9;
  if ([(PTPCPassiveCollectionConfig *)self collectLoggingUserInteraction])
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  v12 = v11;
  if ([(PTPCPassiveCollectionConfig *)self collectLoggingMetalFramePacing])
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  v14 = v13;
  if ([(PTPCPassiveCollectionConfig *)self collectLoggingScrolling])
  {
    v15 = @"YES";
  }

  else
  {
    v15 = @"NO";
  }

  v16 = v15;
  if ([(PTPCPassiveCollectionConfig *)self collectLoggingAppLaunch])
  {
    v17 = @"YES";
  }

  else
  {
    v17 = @"NO";
  }

  v18 = v17;
  v19 = [(PTPCPassiveCollectionConfig *)self loggingDataCategoryNames];
  v20 = v19;
  v21 = @"-";
  if (v19)
  {
    v21 = v19;
  }

  v24 = [NSString stringWithFormat:@"Collection configuration name %@:\nCollect MSS: %@\nCollect App InFocus: %@\nCollect PerfPowerMetrics (Logging): %@\nCollect Hangs (Logging): %@\nCollect User Interaction (Logging): %@\nCollect Metal FramePacing (Logging): %@\nCollect Scrolling (Logging): %@\nCollect AppLaunch (Logging): %@\nLogging data categories: %@", v23, v4, v6, v8, v10, v12, v14, v16, v18, v21];

  return v24;
}

@end