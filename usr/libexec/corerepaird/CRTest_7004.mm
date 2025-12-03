@interface CRTest_7004
- (BOOL)shouldRun:(id)run;
- (CRTest_7004)init;
@end

@implementation CRTest_7004

- (CRTest_7004)init
{
  v8.receiver = self;
  v8.super_class = CRTest_7004;
  v2 = [(CRTest *)&v8 init];
  v3 = v2;
  if (v2)
  {
    [(CRTest *)v2 setName:@"7004"];
    [(CRTest *)v3 setTestId:&off_1000112B8];
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
  v16.super_class = CRTest_7004;
  if (-[CRTest shouldRun:](&v16, "shouldRun:", runCopy) && ([runCopy partSPC], v5 = objc_claimAutoreleasedReturnValue(), v5, v5) && ((+[CRDeviceMap supportLiDAR](CRDeviceMap, "supportLiDAR") & 1) != 0 || +[CRDeviceMap supportPeCoNet](CRDeviceMap, "supportPeCoNet")))
  {
    v6 = objc_opt_new();
    [(CRTest *)self setTestingRemovableSPC:v6];

    partSPC = [runCopy partSPC];
    v8 = [partSPC containsObject:@"IPHONE COMP CAMERA"];

    if (v8)
    {
      testingRemovableSPC = [(CRTest *)self testingRemovableSPC];
      [testingRemovableSPC addObject:@"IPHONE COMP CAMERA"];
    }

    partSPC2 = [runCopy partSPC];
    v11 = [partSPC2 containsObject:@"IPHONE COMP RCAM"];

    if (v11)
    {
      testingRemovableSPC2 = [(CRTest *)self testingRemovableSPC];
      [testingRemovableSPC2 addObject:@"IPHONE COMP RCAM"];
    }

    testingRemovableSPC3 = [(CRTest *)self testingRemovableSPC];
    v14 = [testingRemovableSPC3 count] != 0;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end