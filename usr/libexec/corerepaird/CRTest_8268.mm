@interface CRTest_8268
- (BOOL)shouldRun:(id)run;
- (CRTest_8268)init;
- (void)run:(id)run withContext:(id)context;
@end

@implementation CRTest_8268

- (CRTest_8268)init
{
  v8.receiver = self;
  v8.super_class = CRTest_8268;
  v2 = [(CRTest *)&v8 init];
  v3 = v2;
  if (v2)
  {
    [(CRTest *)v2 setName:@"8268"];
    [(CRTest *)v3 setTestId:&off_1000114F8];
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
  v18.receiver = self;
  v18.super_class = CRTest_8268;
  if (!-[CRTest shouldRun:](&v18, "shouldRun:", runCopy) || ([runCopy partSPC], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    v16 = 0;
    goto LABEL_14;
  }

  v6 = objc_opt_new();
  [(CRTest *)self setTestingRemovableSPC:v6];

  partSPC = [runCopy partSPC];
  v8 = [partSPC containsObject:@"MPU"];

  if (v8)
  {
    testingRemovableSPC = [(CRTest *)self testingRemovableSPC];
    [testingRemovableSPC addObject:@"MPU"];
  }

  partSPC2 = [runCopy partSPC];
  v11 = [partSPC2 containsObject:@"IPAD TOUCH ID"];

  if (v11)
  {
    testingRemovableSPC2 = [(CRTest *)self testingRemovableSPC];
    [testingRemovableSPC2 addObject:@"IPAD TOUCH ID"];
  }

  partSPC3 = [runCopy partSPC];
  if ([partSPC3 containsObject:@"IPHONE COMP DISPLAY"])
  {
    v14 = +[CRDeviceMap hasMesa];

    if (!v14 || !+[CRFDRUtils hasMesaUnsealedData])
    {
      goto LABEL_12;
    }

    partSPC3 = [(CRTest *)self testingRemovableSPC];
    [partSPC3 addObject:@"IPHONE COMP DISPLAY"];
  }

LABEL_12:
  testingRemovableSPC3 = [(CRTest *)self testingRemovableSPC];
  v16 = [testingRemovableSPC3 count] != 0;

LABEL_14:
  return v16;
}

- (void)run:(id)run withContext:(id)context
{
  contextCopy = context;
  runCopy = run;
  v8 = objc_opt_new();
  v9 = [contextCopy rik];

  if (v9)
  {
    v10 = [contextCopy rik];
    [v8 setObject:v10 forKeyedSubscript:@"keyBlob"];
  }

  overrides = [(CRTest *)self overrides];

  if (overrides)
  {
    overrides2 = [(CRTest *)self overrides];
    [v8 addEntriesFromDictionary:overrides2];
  }

  v15 = @"parameters";
  v16 = v8;
  v13 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  testId = [(CRTest *)self testId];
  [runCopy startTest:testId parameters:v13];
}

@end