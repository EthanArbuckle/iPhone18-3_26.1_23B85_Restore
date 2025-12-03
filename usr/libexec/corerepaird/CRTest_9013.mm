@interface CRTest_9013
- (BOOL)needBatteryLock;
- (BOOL)shouldRun:(id)run;
- (CRTest_9013)init;
@end

@implementation CRTest_9013

- (CRTest_9013)init
{
  v8.receiver = self;
  v8.super_class = CRTest_9013;
  v2 = [(CRTest *)&v8 init];
  v3 = v2;
  if (v2)
  {
    [(CRTest *)v2 setName:@"9013"];
    [(CRTest *)v3 setTestId:&off_100011408];
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
  v13.super_class = CRTest_9013;
  if (-[CRTest shouldRun:](&v13, "shouldRun:", runCopy) && ([runCopy partSPC], v5 = objc_claimAutoreleasedReturnValue(), v5, v5) && -[CRTest_9013 needBatteryLock](self, "needBatteryLock"))
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

- (BOOL)needBatteryLock
{
  v2 = 1;
  v3 = MGGetProductType();
  if (v3 > 3048527335)
  {
    if (v3 == 3048527336)
    {
      return v2;
    }

    v4 = 3591055299;
  }

  else
  {
    if (v3 == 1781728947)
    {
      return v2;
    }

    v4 = 1872992317;
  }

  if (v3 != v4)
  {
    return 0;
  }

  return v2;
}

@end