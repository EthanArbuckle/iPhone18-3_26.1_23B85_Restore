@interface CRTest_8264
- (BOOL)shouldRun:(id)run;
- (CRTest_8264)init;
- (void)run:(id)run withContext:(id)context;
@end

@implementation CRTest_8264

- (CRTest_8264)init
{
  v8.receiver = self;
  v8.super_class = CRTest_8264;
  v2 = [(CRTest *)&v8 init];
  v3 = v2;
  if (v2)
  {
    [(CRTest *)v2 setName:@"8264"];
    [(CRTest *)v3 setTestId:&off_100011510];
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
  v13.super_class = CRTest_8264;
  if (-[CRTest shouldRun:](&v13, "shouldRun:", runCopy) && ([runCopy partSPC], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = objc_opt_new();
    [(CRTest *)self setTestingRemovableSPC:v6];

    partSPC = [runCopy partSPC];
    v8 = [partSPC containsObject:@"IPHONE COMP BATTERY"];

    if (v8)
    {
      testingRemovableSPC = [(CRTest *)self testingRemovableSPC];
      [testingRemovableSPC addObject:@"IPHONE COMP BATTERY"];
    }

    testingRemovableSPC2 = [(CRTest *)self testingRemovableSPC];
    v11 = [testingRemovableSPC2 count] != 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)run:(id)run withContext:(id)context
{
  runCopy = run;
  v6 = objc_opt_new();
  [v6 setObject:&__kCFBooleanTrue forKeyedSubscript:@"needRequestURL"];
  overrides = [(CRTest *)self overrides];

  if (overrides)
  {
    overrides2 = [(CRTest *)self overrides];
    [v6 addEntriesFromDictionary:overrides2];
  }

  v11 = @"parameters";
  v12 = v6;
  v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  testId = [(CRTest *)self testId];
  [runCopy startTest:testId parameters:v9];
}

@end