@interface CRTest_8268
- (BOOL)shouldRun:(id)a3;
- (CRTest_8268)init;
- (void)run:(id)a3 withContext:(id)a4;
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
  v18.receiver = self;
  v18.super_class = CRTest_8268;
  if (!-[CRTest shouldRun:](&v18, "shouldRun:", v4) || ([v4 partSPC], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    v16 = 0;
    goto LABEL_14;
  }

  v6 = objc_opt_new();
  [(CRTest *)self setTestingRemovableSPC:v6];

  v7 = [v4 partSPC];
  v8 = [v7 containsObject:@"MPU"];

  if (v8)
  {
    v9 = [(CRTest *)self testingRemovableSPC];
    [v9 addObject:@"MPU"];
  }

  v10 = [v4 partSPC];
  v11 = [v10 containsObject:@"IPAD TOUCH ID"];

  if (v11)
  {
    v12 = [(CRTest *)self testingRemovableSPC];
    [v12 addObject:@"IPAD TOUCH ID"];
  }

  v13 = [v4 partSPC];
  if ([v13 containsObject:@"IPHONE COMP DISPLAY"])
  {
    v14 = +[CRDeviceMap hasMesa];

    if (!v14 || !+[CRFDRUtils hasMesaUnsealedData])
    {
      goto LABEL_12;
    }

    v13 = [(CRTest *)self testingRemovableSPC];
    [v13 addObject:@"IPHONE COMP DISPLAY"];
  }

LABEL_12:
  v15 = [(CRTest *)self testingRemovableSPC];
  v16 = [v15 count] != 0;

LABEL_14:
  return v16;
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