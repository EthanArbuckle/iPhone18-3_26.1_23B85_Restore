@interface CRTest_8276
- (BOOL)shouldRun:(id)a3;
- (CRTest_8276)init;
- (void)run:(id)a3 withContext:(id)a4;
- (void)update:(id)a3 testIndex:(int64_t)a4 testResult:(id)a5;
@end

@implementation CRTest_8276

- (CRTest_8276)init
{
  v8.receiver = self;
  v8.super_class = CRTest_8276;
  v2 = [(CRTest *)&v8 init];
  v3 = v2;
  if (v2)
  {
    [(CRTest *)v2 setName:@"8276"];
    [(CRTest *)v3 setTestId:&off_100011468];
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
  v13.receiver = self;
  v13.super_class = CRTest_8276;
  if (![(CRTest *)&v13 shouldRun:v4])
  {
    goto LABEL_4;
  }

  v5 = [v4 partSPC];

  if (v5)
  {
    if ((+[CRDeviceMap supportPeCoNet]& 1) != 0)
    {
LABEL_4:
      LOBYTE(v5) = 0;
      goto LABEL_5;
    }

    if ((+[CRDeviceMap supportLiDAR]& 1) != 0)
    {
      v7 = objc_opt_new();
      [(CRTest *)self setTestingRemovableSPC:v7];

      v8 = [v4 partSPC];
      v9 = [v8 containsObject:@"IPHONE COMP CAMERA"];

      if (v9)
      {
        v10 = [(CRTest *)self testingRemovableSPC];
        [v10 addObject:@"IPHONE COMP CAMERA"];
      }

      v11 = [(CRTest *)self testingRemovableSPC];
      LOBYTE(v5) = [v11 count]!= 0;
    }

    else
    {
      v11 = handleForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "LiDAR not supported", v12, 2u);
      }

      LOBYTE(v5) = 0;
    }
  }

LABEL_5:

  return v5;
}

- (void)run:(id)a3 withContext:(id)a4
{
  v5 = a3;
  v6 = objc_opt_new();
  [v6 setObject:&off_100011480 forKeyedSubscript:@"sessionTimeOut"];
  [v6 setObject:&off_100011498 forKeyedSubscript:@"sceneErrorTimeOut"];
  [v6 setObject:&off_1000114B0 forKeyedSubscript:@"userNotMovingTimeout"];
  [v6 setObject:&off_100011568 forKeyedSubscript:@"noMovementAttitudeChangeMinThreshold"];
  v9 = @"parameters";
  v10 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v8 = [(CRTest *)self testId];
  [v5 startTest:v8 parameters:v7];
}

- (void)update:(id)a3 testIndex:(int64_t)a4 testResult:(id)a5
{
  v8 = a3;
  if (v8 && a5)
  {
    v16.receiver = self;
    v16.super_class = CRTest_8276;
    [(CRTest *)&v16 update:v8 testIndex:a4 testResult:a5];
    v9 = [(CRTest *)self resultData];
    v10 = [v9 objectForKeyedSubscript:@"PrCL"];
    if (!v10)
    {
LABEL_6:

      goto LABEL_7;
    }

    v11 = v10;
    v12 = [(CRTest *)self resultData];
    v13 = [v12 objectForKeyedSubscript:@"PrCL"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v9 = [(CRTest *)self resultData];
      v15 = [v9 objectForKeyedSubscript:@"PrCL"];
      [v8 setPrCL:v15];

      goto LABEL_6;
    }
  }

LABEL_7:
}

@end