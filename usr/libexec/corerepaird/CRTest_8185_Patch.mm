@interface CRTest_8185_Patch
- (BOOL)shouldRun:(id)run;
- (CRTest_8185_Patch)init;
- (void)run:(id)run withContext:(id)context;
@end

@implementation CRTest_8185_Patch

- (CRTest_8185_Patch)init
{
  v8.receiver = self;
  v8.super_class = CRTest_8185_Patch;
  v2 = [(CRTest *)&v8 init];
  v3 = v2;
  if (v2)
  {
    [(CRTest *)v2 setName:@"8185_Patch"];
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
  v12.receiver = self;
  v12.super_class = CRTest_8185_Patch;
  if (-[CRTest shouldRun:](&v12, "shouldRun:", runCopy) && ([runCopy partSPC], v5 = objc_claimAutoreleasedReturnValue(), v5, v5) && +[CRDeviceMap supportPeCoNet](CRDeviceMap, "supportPeCoNet"))
  {
    partSPC = [runCopy partSPC];
    if ([partSPC containsObject:@"IPHONE COMP CAMERA"])
    {
      v7 = 1;
    }

    else
    {
      partSPC2 = [runCopy partSPC];
      if ([partSPC2 containsObject:@"IPHONE COMP RCAM"])
      {
        v7 = 1;
      }

      else
      {
        partSPC3 = [runCopy partSPC];
        if ([partSPC3 containsObject:@"IPAD REAR CAMERA"])
        {
          v7 = 1;
        }

        else
        {
          partSPC4 = [runCopy partSPC];
          v7 = [partSPC4 containsObject:@"IPHONE ENCLOSURE"];
        }
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

- (void)run:(id)run withContext:(id)context
{
  contextCopy = context;
  runCopy = run;
  v8 = objc_opt_new();
  [v8 setObject:&__kCFBooleanTrue forKeyedSubscript:@"enableStagedSeal"];
  [v8 setObject:&__kCFBooleanTrue forKeyedSubscript:@"ignoreStagedData"];
  [v8 setObject:&__kCFBooleanTrue forKeyedSubscript:@"skipStageEAN"];
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

  patchItems = [contextCopy patchItems];
  if (patchItems)
  {
    v20 = patchItems;
    patchItems2 = [contextCopy patchItems];
    v22 = [patchItems2 count];

    if (v22)
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

  v28 = @"parameters";
  v29 = v8;
  v26 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  testId = [(CRTest *)self testId];
  [runCopy startTest:testId parameters:v26];
}

@end