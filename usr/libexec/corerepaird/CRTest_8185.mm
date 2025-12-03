@interface CRTest_8185
- (BOOL)shouldRun:(id)run;
- (CRTest_8185)init;
- (void)run:(id)run withContext:(id)context;
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
  v8.receiver = self;
  v8.super_class = CRTest_8185;
  if ([(CRTest *)&v8 shouldRun:runCopy])
  {
    partSPC = [runCopy partSPC];
    v6 = partSPC != 0;
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
  [v8 setObject:&__kCFBooleanTrue forKeyedSubscript:@"skipStageEAN"];
  [v8 setObject:&__kCFBooleanTrue forKeyedSubscript:@"ignoreStagedData"];
  serialNumber = [contextCopy serialNumber];

  if (serialNumber)
  {
    serialNumber2 = [contextCopy serialNumber];
    [v8 setObject:serialNumber2 forKeyedSubscript:@"KGBSerialNumber"];
  }

  partSPC = [contextCopy partSPC];
  if (partSPC)
  {
    v12 = partSPC;
    partSPC2 = [contextCopy partSPC];
    v14 = [partSPC2 count];

    if (v14)
    {
      partSPC3 = [contextCopy partSPC];
      v16 = [partSPC3 componentsJoinedByString:{@", "}];
      [v8 setObject:v16 forKeyedSubscript:@"partSPC"];
    }
  }

  v17 = [contextCopy rik];

  if (v17)
  {
    v18 = [contextCopy rik];
    [v8 setObject:v18 forKeyedSubscript:@"keyBlob"];
  }

  prCL = [contextCopy PrCL];

  if (prCL)
  {
    v33 = @"PrCL";
    prCL2 = [contextCopy PrCL];
    v34 = prCL2;
    v21 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    [v8 setObject:v21 forKeyedSubscript:@"updateProperties"];
  }

  patchItems = [contextCopy patchItems];
  if (patchItems)
  {
    v23 = patchItems;
    patchItems2 = [contextCopy patchItems];
    v25 = [patchItems2 count];

    if (v25)
    {
      patchItems3 = [contextCopy patchItems];
      [v8 setObject:patchItems3 forKeyedSubscript:@"patchItems"];
    }
  }

  overrides = [(CRTest *)self overrides];

  if (overrides)
  {
    overrides2 = [(CRTest *)self overrides];
    [v8 addEntriesFromDictionary:overrides2];
  }

  v31 = @"parameters";
  v32 = v8;
  v29 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
  testId = [(CRTest *)self testId];
  [runCopy startTest:testId parameters:v29];
}

@end