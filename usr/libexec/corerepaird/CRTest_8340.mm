@interface CRTest_8340
- (BOOL)shouldRun:(id)run;
- (CRTest_8340)init;
- (void)run:(id)run withContext:(id)context;
@end

@implementation CRTest_8340

- (CRTest_8340)init
{
  v8.receiver = self;
  v8.super_class = CRTest_8340;
  v2 = [(CRTest *)&v8 init];
  v3 = v2;
  if (v2)
  {
    [(CRTest *)v2 setName:@"8340"];
    [(CRTest *)v3 setTestId:&off_100011258];
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
  v16.receiver = self;
  v16.super_class = CRTest_8340;
  if (-[CRTest shouldRun:](&v16, "shouldRun:", runCopy) && ([runCopy partSPC], v5 = objc_claimAutoreleasedReturnValue(), v5, v5) && (+[CRDeviceMap supportHarvestPearl](CRDeviceMap, "supportHarvestPearl") & 1) == 0)
  {
    v8 = objc_opt_new();
    [(CRTest *)self setTestingRemovableSPC:v8];

    partSPC = [runCopy partSPC];
    v10 = [partSPC containsObject:@"IPHONE COMP FACEID"];

    if (v10)
    {
      testingRemovableSPC = [(CRTest *)self testingRemovableSPC];
      [testingRemovableSPC addObject:@"IPHONE COMP FACEID"];
    }

    partSPC2 = [runCopy partSPC];
    v13 = [partSPC2 containsObject:@"IPAD FRONT CAMERA"];

    if (v13)
    {
      testingRemovableSPC2 = [(CRTest *)self testingRemovableSPC];
      [testingRemovableSPC2 addObject:@"IPAD FRONT CAMERA"];
    }

    testingRemovableSPC3 = [(CRTest *)self testingRemovableSPC];
    v6 = [testingRemovableSPC3 count] != 0;
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