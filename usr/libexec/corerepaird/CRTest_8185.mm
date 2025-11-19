@interface CRTest_8185
- (BOOL)shouldRun:(id)a3;
- (CRTest_8185)init;
- (void)run:(id)a3 withContext:(id)a4;
@end

@implementation CRTest_8185

- (CRTest_8185)init
{
  v8.receiver = self;
  v8.super_class = CRTest_8185;
  v2 = [(CRTest *)&v8 init];
  v3 = v2;
  if (v2)
  {
    [(CRTest *)v2 setName:@"8185"];
    [(CRTest *)v3 setTestId:&off_100011288];
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
  v8.receiver = self;
  v8.super_class = CRTest_8185;
  if ([(CRTest *)&v8 shouldRun:v4])
  {
    v5 = [v4 partSPC];
    v6 = v5 != 0;
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
  [v8 setObject:&__kCFBooleanTrue forKeyedSubscript:@"skipStageEAN"];
  [v8 setObject:&__kCFBooleanTrue forKeyedSubscript:@"ignoreStagedData"];
  v9 = [v6 serialNumber];

  if (v9)
  {
    v10 = [v6 serialNumber];
    [v8 setObject:v10 forKeyedSubscript:@"KGBSerialNumber"];
  }

  v11 = [v6 partSPC];
  if (v11)
  {
    v12 = v11;
    v13 = [v6 partSPC];
    v14 = [v13 count];

    if (v14)
    {
      v15 = [v6 partSPC];
      v16 = [v15 componentsJoinedByString:{@", "}];
      [v8 setObject:v16 forKeyedSubscript:@"partSPC"];
    }
  }

  v17 = [v6 rik];

  if (v17)
  {
    v18 = [v6 rik];
    [v8 setObject:v18 forKeyedSubscript:@"keyBlob"];
  }

  v19 = [v6 PrCL];

  if (v19)
  {
    v33 = @"PrCL";
    v20 = [v6 PrCL];
    v34 = v20;
    v21 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    [v8 setObject:v21 forKeyedSubscript:@"updateProperties"];
  }

  v22 = [v6 patchItems];
  if (v22)
  {
    v23 = v22;
    v24 = [v6 patchItems];
    v25 = [v24 count];

    if (v25)
    {
      v26 = [v6 patchItems];
      [v8 setObject:v26 forKeyedSubscript:@"patchItems"];
    }
  }

  v27 = [(CRTest *)self overrides];

  if (v27)
  {
    v28 = [(CRTest *)self overrides];
    [v8 addEntriesFromDictionary:v28];
  }

  v31 = @"parameters";
  v32 = v8;
  v29 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
  v30 = [(CRTest *)self testId];
  [v7 startTest:v30 parameters:v29];
}

@end