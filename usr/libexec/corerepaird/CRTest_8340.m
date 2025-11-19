@interface CRTest_8340
- (BOOL)shouldRun:(id)a3;
- (CRTest_8340)init;
- (void)run:(id)a3 withContext:(id)a4;
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
  v16.receiver = self;
  v16.super_class = CRTest_8340;
  if (-[CRTest shouldRun:](&v16, "shouldRun:", v4) && ([v4 partSPC], v5 = objc_claimAutoreleasedReturnValue(), v5, v5) && (+[CRDeviceMap supportHarvestPearl](CRDeviceMap, "supportHarvestPearl") & 1) == 0)
  {
    v8 = objc_opt_new();
    [(CRTest *)self setTestingRemovableSPC:v8];

    v9 = [v4 partSPC];
    v10 = [v9 containsObject:@"IPHONE COMP FACEID"];

    if (v10)
    {
      v11 = [(CRTest *)self testingRemovableSPC];
      [v11 addObject:@"IPHONE COMP FACEID"];
    }

    v12 = [v4 partSPC];
    v13 = [v12 containsObject:@"IPAD FRONT CAMERA"];

    if (v13)
    {
      v14 = [(CRTest *)self testingRemovableSPC];
      [v14 addObject:@"IPAD FRONT CAMERA"];
    }

    v15 = [(CRTest *)self testingRemovableSPC];
    v6 = [v15 count] != 0;
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
  v9 = [v6 rik];

  if (v9)
  {
    v10 = [v6 rik];
    [v8 setObject:v10 forKeyedSubscript:@"keyBlob"];
  }

  v11 = [(CRTest *)self overrides];

  if (v11)
  {
    v12 = [(CRTest *)self overrides];
    [v8 addEntriesFromDictionary:v12];
  }

  v15 = @"parameters";
  v16 = v8;
  v13 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v14 = [(CRTest *)self testId];
  [v7 startTest:v14 parameters:v13];
}

@end