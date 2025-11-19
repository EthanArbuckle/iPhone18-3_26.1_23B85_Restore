@interface CRTest_6002
- (BOOL)shouldRun:(id)a3;
- (CRTest_6002)init;
- (void)run:(id)a3 withContext:(id)a4;
- (void)update:(id)a3 testIndex:(int64_t)a4 testResult:(id)a5;
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
  v22.receiver = self;
  v22.super_class = CRTest_6002;
  if ([(CRTest *)&v22 shouldRun:v4])
  {
    v5 = [v4 partSPC];

    if (v5)
    {
      if ((+[CRDeviceMap supportPeCoNet]& 1) != 0)
      {
        v6 = objc_opt_new();
        [(CRTest *)self setTestingRemovableSPC:v6];

        v7 = [v4 partSPC];
        v8 = [v7 containsObject:@"IPHONE COMP CAMERA"];

        if (v8)
        {
          v9 = [(CRTest *)self testingRemovableSPC];
          [v9 addObject:@"IPHONE COMP CAMERA"];
        }

        v10 = [v4 partSPC];
        v11 = [v10 containsObject:@"IPHONE COMP RCAM"];

        if (v11)
        {
          v12 = [(CRTest *)self testingRemovableSPC];
          [v12 addObject:@"IPHONE COMP RCAM"];
        }

        v13 = [v4 partSPC];
        v14 = [v13 containsObject:@"IPAD REAR CAMERA"];

        if (v14)
        {
          v15 = [(CRTest *)self testingRemovableSPC];
          [v15 addObject:@"IPAD REAR CAMERA"];
        }

        v16 = [v4 partSPC];
        v17 = [v16 containsObject:@"IPHONE ENCLOSURE"];

        if (v17)
        {
          v18 = [(CRTest *)self testingRemovableSPC];
          [v18 addObject:@"IPHONE ENCLOSURE"];
        }

        v19 = [(CRTest *)self testingRemovableSPC];
        LOBYTE(v5) = [v19 count]!= 0;
      }

      else
      {
        v19 = handleForCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *v21 = 0;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "PeCoNet not supported", v21, 2u);
        }

        LOBYTE(v5) = 0;
      }
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)run:(id)a3 withContext:(id)a4
{
  v5 = a3;
  v6 = objc_opt_new();
  [v6 setObject:&off_100011330 forKeyedSubscript:@"sessionTimeOut"];
  [v6 setObject:&off_100011348 forKeyedSubscript:@"sceneErrorTimeOut"];
  [v6 setObject:&off_100011360 forKeyedSubscript:@"userNotMovingTimeout"];
  [v6 setObject:&off_100011558 forKeyedSubscript:@"noMovementAttitudeChangeMinThreshold"];
  [v6 setObject:&off_100011378 forKeyedSubscript:@"sceneErrorWarningThreshold"];
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
    v17.receiver = self;
    v17.super_class = CRTest_6002;
    [(CRTest *)&v17 update:v8 testIndex:a4 testResult:a5];
    v9 = [(CRTest *)self resultData];
    v10 = [v9 objectForKeyedSubscript:@"patchItem"];
    if (!v10)
    {
LABEL_6:

      goto LABEL_7;
    }

    v11 = v10;
    v12 = [(CRTest *)self resultData];
    v13 = [v12 objectForKeyedSubscript:@"patchItem"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v9 = [v8 patchItems];
      v15 = [(CRTest *)self resultData];
      v16 = [v15 objectForKeyedSubscript:@"patchItem"];
      [v9 addObject:v16];

      goto LABEL_6;
    }
  }

LABEL_7:
}

@end