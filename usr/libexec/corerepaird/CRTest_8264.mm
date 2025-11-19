@interface CRTest_8264
- (BOOL)shouldRun:(id)a3;
- (CRTest_8264)init;
- (void)run:(id)a3 withContext:(id)a4;
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
  v13.super_class = CRTest_8264;
  if (-[CRTest shouldRun:](&v13, "shouldRun:", v4) && ([v4 partSPC], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = objc_opt_new();
    [(CRTest *)self setTestingRemovableSPC:v6];

    v7 = [v4 partSPC];
    v8 = [v7 containsObject:@"IPHONE COMP BATTERY"];

    if (v8)
    {
      v9 = [(CRTest *)self testingRemovableSPC];
      [v9 addObject:@"IPHONE COMP BATTERY"];
    }

    v10 = [(CRTest *)self testingRemovableSPC];
    v11 = [v10 count] != 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)run:(id)a3 withContext:(id)a4
{
  v5 = a3;
  v6 = objc_opt_new();
  [v6 setObject:&__kCFBooleanTrue forKeyedSubscript:@"needRequestURL"];
  v7 = [(CRTest *)self overrides];

  if (v7)
  {
    v8 = [(CRTest *)self overrides];
    [v6 addEntriesFromDictionary:v8];
  }

  v11 = @"parameters";
  v12 = v6;
  v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v10 = [(CRTest *)self testId];
  [v5 startTest:v10 parameters:v9];
}

@end