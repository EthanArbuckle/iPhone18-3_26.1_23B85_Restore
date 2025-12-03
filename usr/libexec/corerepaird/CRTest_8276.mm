@interface CRTest_8276
- (BOOL)shouldRun:(id)run;
- (CRTest_8276)init;
- (void)run:(id)run withContext:(id)context;
- (void)update:(id)update testIndex:(int64_t)index testResult:(id)result;
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
  v13.receiver = self;
  v13.super_class = CRTest_8276;
  if (![(CRTest *)&v13 shouldRun:runCopy])
  {
    goto LABEL_4;
  }

  partSPC = [runCopy partSPC];

  if (partSPC)
  {
    if ((+[CRDeviceMap supportPeCoNet]& 1) != 0)
    {
LABEL_4:
      LOBYTE(partSPC) = 0;
      goto LABEL_5;
    }

    if ((+[CRDeviceMap supportLiDAR]& 1) != 0)
    {
      v7 = objc_opt_new();
      [(CRTest *)self setTestingRemovableSPC:v7];

      partSPC2 = [runCopy partSPC];
      v9 = [partSPC2 containsObject:@"IPHONE COMP CAMERA"];

      if (v9)
      {
        testingRemovableSPC = [(CRTest *)self testingRemovableSPC];
        [testingRemovableSPC addObject:@"IPHONE COMP CAMERA"];
      }

      testingRemovableSPC2 = [(CRTest *)self testingRemovableSPC];
      LOBYTE(partSPC) = [testingRemovableSPC2 count]!= 0;
    }

    else
    {
      testingRemovableSPC2 = handleForCategory();
      if (os_log_type_enabled(testingRemovableSPC2, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, testingRemovableSPC2, OS_LOG_TYPE_DEFAULT, "LiDAR not supported", v12, 2u);
      }

      LOBYTE(partSPC) = 0;
    }
  }

LABEL_5:

  return partSPC;
}

- (void)run:(id)run withContext:(id)context
{
  runCopy = run;
  v6 = objc_opt_new();
  [v6 setObject:&off_100011480 forKeyedSubscript:@"sessionTimeOut"];
  [v6 setObject:&off_100011498 forKeyedSubscript:@"sceneErrorTimeOut"];
  [v6 setObject:&off_1000114B0 forKeyedSubscript:@"userNotMovingTimeout"];
  [v6 setObject:&off_100011568 forKeyedSubscript:@"noMovementAttitudeChangeMinThreshold"];
  v9 = @"parameters";
  v10 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  testId = [(CRTest *)self testId];
  [runCopy startTest:testId parameters:v7];
}

- (void)update:(id)update testIndex:(int64_t)index testResult:(id)result
{
  updateCopy = update;
  if (updateCopy && result)
  {
    v16.receiver = self;
    v16.super_class = CRTest_8276;
    [(CRTest *)&v16 update:updateCopy testIndex:index testResult:result];
    resultData = [(CRTest *)self resultData];
    v10 = [resultData objectForKeyedSubscript:@"PrCL"];
    if (!v10)
    {
LABEL_6:

      goto LABEL_7;
    }

    v11 = v10;
    resultData2 = [(CRTest *)self resultData];
    v13 = [resultData2 objectForKeyedSubscript:@"PrCL"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      resultData = [(CRTest *)self resultData];
      v15 = [resultData objectForKeyedSubscript:@"PrCL"];
      [updateCopy setPrCL:v15];

      goto LABEL_6;
    }
  }

LABEL_7:
}

@end