@interface CRTest_8343
- (BOOL)shouldRun:(id)a3;
- (CRTest_8343)init;
@end

@implementation CRTest_8343

- (CRTest_8343)init
{
  v8.receiver = self;
  v8.super_class = CRTest_8343;
  v2 = [(CRTest *)&v8 init];
  v3 = v2;
  if (v2)
  {
    [(CRTest *)v2 setName:@"8343"];
    [(CRTest *)v3 setTestId:&off_1000112D0];
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
  v16.super_class = CRTest_8343;
  if (-[CRTest shouldRun:](&v16, "shouldRun:", v4) && ([v4 partSPC], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = objc_opt_new();
    [(CRTest *)self setTestingRemovableSPC:v6];

    v7 = [v4 partSPC];
    v8 = [v7 containsObject:@"IPHONE COMP FACEID"];

    if (v8)
    {
      v9 = [(CRTest *)self testingRemovableSPC];
      [v9 addObject:@"IPHONE COMP FACEID"];
    }

    v10 = [v4 partSPC];
    v11 = [v10 containsObject:@"IPAD FRONT CAMERA"];

    if (v11)
    {
      v12 = [(CRTest *)self testingRemovableSPC];
      [v12 addObject:@"IPAD FRONT CAMERA"];
    }

    v13 = [(CRTest *)self testingRemovableSPC];
    v14 = [v13 count] != 0;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end