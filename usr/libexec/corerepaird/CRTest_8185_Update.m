@interface CRTest_8185_Update
- (BOOL)shouldRun:(id)a3;
- (CRTest_8185_Update)init;
- (void)run:(id)a3 withContext:(id)a4;
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
      v5 = [(CRTest *)v3 name];
      v6 = [v4 dictionaryForKey:v5];
      [(CRTest *)v3 setOverrides:v6];
    }
  }

  return v3;
}

- (BOOL)shouldRun:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CRTest_8185_Update;
  if (-[CRTest shouldRun:](&v10, "shouldRun:", v4) && ([v4 partSPC], v5 = objc_claimAutoreleasedReturnValue(), v5, v5) && (+[CRDeviceMap supportPeCoNet](CRDeviceMap, "supportPeCoNet") & 1) == 0)
  {
    if ((+[CRDeviceMap supportLiDAR]& 1) != 0)
    {
      v8 = [v4 partSPC];
      v6 = [v8 containsObject:@"IPHONE COMP CAMERA"];
    }

    else
    {
      v8 = handleForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "LiDAR not supported", v9, 2u);
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

- (void)run:(id)a3 withContext:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  [v8 setObject:&__kCFBooleanTrue forKeyedSubscript:@"enableStagedSeal"];
  [v8 setObject:&__kCFBooleanTrue forKeyedSubscript:@"ignoreStagedData"];
  [v8 setObject:&__kCFBooleanTrue forKeyedSubscript:@"skipStageEAN"];
  v9 = [v6 serialNumber];

  if (v9)
  {
    v10 = [v6 serialNumber];
    [v8 setObject:v10 forKeyedSubscript:@"KGBSerialNumber"];
  }

  v11 = [v6 partSPC];
  if (v11)
  {
    v12 = v11;
    v13 = [v6 partSPC];
    v14 = [v13 count];

    if (v14)
    {
      v15 = [v6 partSPC];
      v16 = [v15 componentsJoinedByString:{@", "}];
      [v8 setObject:v16 forKeyedSubscript:@"partSPC"];
    }
  }

  v17 = [v6 rik];

  if (v17)
  {
    v18 = [v6 rik];
    [v8 setObject:v18 forKeyedSubscript:@"keyBlob"];
  }

  v19 = [v6 PrCL];

  if (v19)
  {
    v28 = @"PrCL";
    v20 = [v6 PrCL];
    v29 = v20;
    v21 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    [v8 setObject:v21 forKeyedSubscript:@"updateProperties"];
  }

  v22 = [(CRTest *)self overrides];

  if (v22)
  {
    v23 = [(CRTest *)self overrides];
    [v8 addEntriesFromDictionary:v23];
  }

  v26 = @"parameters";
  v27 = v8;
  v24 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
  v25 = [(CRTest *)self testId];
  [v7 startTest:v25 parameters:v24];
}

@end