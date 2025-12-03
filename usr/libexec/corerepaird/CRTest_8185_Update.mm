@interface CRTest_8185_Update
- (BOOL)shouldRun:(id)run;
- (CRTest_8185_Update)init;
- (void)run:(id)run withContext:(id)context;
@end

@implementation CRTest_8185_Update

- (CRTest_8185_Update)init
{
  v8.receiver = self;
  v8.super_class = CRTest_8185_Update;
  v2 = [(CRTest *)&v8 init];
  v3 = v2;
  if (v2)
  {
    [(CRTest *)v2 setName:@"8185_Update"];
    [(CRTest *)v3 setTestId:&off_100011288];
    if (os_variant_has_internal_content())
    {
      v4 = [[CRUserDefaults alloc] initWithSuiteName:@"com.apple.corerepaird.test"];
      name = [(CRTest *)v3 name];
      v6 = [v4 dictionaryForKey:name];
      [(CRTest *)v3 setOverrides:v6];
    }
  }

  return v3;
}

- (BOOL)shouldRun:(id)run
{
  runCopy = run;
  v10.receiver = self;
  v10.super_class = CRTest_8185_Update;
  if (-[CRTest shouldRun:](&v10, "shouldRun:", runCopy) && ([runCopy partSPC], v5 = objc_claimAutoreleasedReturnValue(), v5, v5) && (+[CRDeviceMap supportPeCoNet](CRDeviceMap, "supportPeCoNet") & 1) == 0)
  {
    if ((+[CRDeviceMap supportLiDAR]& 1) != 0)
    {
      partSPC = [runCopy partSPC];
      v6 = [partSPC containsObject:@"IPHONE COMP CAMERA"];
    }

    else
    {
      partSPC = handleForCategory();
      if (os_log_type_enabled(partSPC, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, partSPC, OS_LOG_TYPE_DEFAULT, "LiDAR not supported", v9, 2u);
      }

      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)run:(id)run withContext:(id)context
{
  contextCopy = context;
  runCopy = run;
  v8 = objc_opt_new();
  [v8 setObject:&__kCFBooleanTrue forKeyedSubscript:@"enableStagedSeal"];
  [v8 setObject:&__kCFBooleanTrue forKeyedSubscript:@"ignoreStagedData"];
  [v8 setObject:&__kCFBooleanTrue forKeyedSubscript:@"skipStageEAN"];
  serialNumber = [contextCopy serialNumber];

  if (serialNumber)
  {
    serialNumber2 = [contextCopy serialNumber];
    [v8 setObject:serialNumber2 forKeyedSubscript:@"KGBSerialNumber"];
  }

  partSPC = [contextCopy partSPC];
  if (partSPC)
  {
    v12 = partSPC;
    partSPC2 = [contextCopy partSPC];
    v14 = [partSPC2 count];

    if (v14)
    {
      partSPC3 = [contextCopy partSPC];
      v16 = [partSPC3 componentsJoinedByString:{@", "}];
      [v8 setObject:v16 forKeyedSubscript:@"partSPC"];
    }
  }

  v17 = [contextCopy rik];

  if (v17)
  {
    v18 = [contextCopy rik];
    [v8 setObject:v18 forKeyedSubscript:@"keyBlob"];
  }

  prCL = [contextCopy PrCL];

  if (prCL)
  {
    v28 = @"PrCL";
    prCL2 = [contextCopy PrCL];
    v29 = prCL2;
    v21 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    [v8 setObject:v21 forKeyedSubscript:@"updateProperties"];
  }

  overrides = [(CRTest *)self overrides];

  if (overrides)
  {
    overrides2 = [(CRTest *)self overrides];
    [v8 addEntriesFromDictionary:overrides2];
  }

  v26 = @"parameters";
  v27 = v8;
  v24 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
  testId = [(CRTest *)self testId];
  [runCopy startTest:testId parameters:v24];
}

@end