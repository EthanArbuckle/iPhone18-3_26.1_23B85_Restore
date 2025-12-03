@interface CRTest_6002
- (BOOL)shouldRun:(id)run;
- (CRTest_6002)init;
- (void)run:(id)run withContext:(id)context;
- (void)update:(id)update testIndex:(int64_t)index testResult:(id)result;
@end

@implementation CRTest_6002

- (CRTest_6002)init
{
  v8.receiver = self;
  v8.super_class = CRTest_6002;
  v2 = [(CRTest *)&v8 init];
  v3 = v2;
  if (v2)
  {
    [(CRTest *)v2 setName:@"6002"];
    [(CRTest *)v3 setTestId:&off_100011318];
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
  v22.receiver = self;
  v22.super_class = CRTest_6002;
  if ([(CRTest *)&v22 shouldRun:runCopy])
  {
    partSPC = [runCopy partSPC];

    if (partSPC)
    {
      if ((+[CRDeviceMap supportPeCoNet]& 1) != 0)
      {
        v6 = objc_opt_new();
        [(CRTest *)self setTestingRemovableSPC:v6];

        partSPC2 = [runCopy partSPC];
        v8 = [partSPC2 containsObject:@"IPHONE COMP CAMERA"];

        if (v8)
        {
          testingRemovableSPC = [(CRTest *)self testingRemovableSPC];
          [testingRemovableSPC addObject:@"IPHONE COMP CAMERA"];
        }

        partSPC3 = [runCopy partSPC];
        v11 = [partSPC3 containsObject:@"IPHONE COMP RCAM"];

        if (v11)
        {
          testingRemovableSPC2 = [(CRTest *)self testingRemovableSPC];
          [testingRemovableSPC2 addObject:@"IPHONE COMP RCAM"];
        }

        partSPC4 = [runCopy partSPC];
        v14 = [partSPC4 containsObject:@"IPAD REAR CAMERA"];

        if (v14)
        {
          testingRemovableSPC3 = [(CRTest *)self testingRemovableSPC];
          [testingRemovableSPC3 addObject:@"IPAD REAR CAMERA"];
        }

        partSPC5 = [runCopy partSPC];
        v17 = [partSPC5 containsObject:@"IPHONE ENCLOSURE"];

        if (v17)
        {
          testingRemovableSPC4 = [(CRTest *)self testingRemovableSPC];
          [testingRemovableSPC4 addObject:@"IPHONE ENCLOSURE"];
        }

        testingRemovableSPC5 = [(CRTest *)self testingRemovableSPC];
        LOBYTE(partSPC) = [testingRemovableSPC5 count]!= 0;
      }

      else
      {
        testingRemovableSPC5 = handleForCategory();
        if (os_log_type_enabled(testingRemovableSPC5, OS_LOG_TYPE_DEFAULT))
        {
          *v21 = 0;
          _os_log_impl(&_mh_execute_header, testingRemovableSPC5, OS_LOG_TYPE_DEFAULT, "PeCoNet not supported", v21, 2u);
        }

        LOBYTE(partSPC) = 0;
      }
    }
  }

  else
  {
    LOBYTE(partSPC) = 0;
  }

  return partSPC;
}

- (void)run:(id)run withContext:(id)context
{
  runCopy = run;
  v6 = objc_opt_new();
  [v6 setObject:&off_100011330 forKeyedSubscript:@"sessionTimeOut"];
  [v6 setObject:&off_100011348 forKeyedSubscript:@"sceneErrorTimeOut"];
  [v6 setObject:&off_100011360 forKeyedSubscript:@"userNotMovingTimeout"];
  [v6 setObject:&off_100011558 forKeyedSubscript:@"noMovementAttitudeChangeMinThreshold"];
  [v6 setObject:&off_100011378 forKeyedSubscript:@"sceneErrorWarningThreshold"];
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
    v17.receiver = self;
    v17.super_class = CRTest_6002;
    [(CRTest *)&v17 update:updateCopy testIndex:index testResult:result];
    resultData = [(CRTest *)self resultData];
    v10 = [resultData objectForKeyedSubscript:@"patchItem"];
    if (!v10)
    {
LABEL_6:

      goto LABEL_7;
    }

    v11 = v10;
    resultData2 = [(CRTest *)self resultData];
    v13 = [resultData2 objectForKeyedSubscript:@"patchItem"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      resultData = [updateCopy patchItems];
      resultData3 = [(CRTest *)self resultData];
      v16 = [resultData3 objectForKeyedSubscript:@"patchItem"];
      [resultData addObject:v16];

      goto LABEL_6;
    }
  }

LABEL_7:
}

@end