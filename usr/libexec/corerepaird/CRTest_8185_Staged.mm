@interface CRTest_8185_Staged
- (BOOL)shouldRun:(id)run;
- (CRTest_8185_Staged)init;
- (void)run:(id)run withContext:(id)context;
@end

@implementation CRTest_8185_Staged

- (CRTest_8185_Staged)init
{
  v8.receiver = self;
  v8.super_class = CRTest_8185_Staged;
  v2 = [(CRTest *)&v8 init];
  v3 = v2;
  if (v2)
  {
    [(CRTest *)v2 setName:@"8185_Staged"];
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
  v17.receiver = self;
  v17.super_class = CRTest_8185_Staged;
  if (![(CRTest *)&v17 shouldRun:runCopy])
  {
    goto LABEL_14;
  }

  partSPC = [runCopy partSPC];

  if (partSPC)
  {
    partSPC2 = [runCopy partSPC];
    v7 = [partSPC2 containsObject:@"IPHONE COMP FACEID"];

    if (v7)
    {
      goto LABEL_12;
    }

    partSPC3 = [runCopy partSPC];
    v9 = [partSPC3 containsObject:@"IPAD FRONT CAMERA"];

    if (v9)
    {
      goto LABEL_12;
    }

    partSPC4 = [runCopy partSPC];
    v11 = [partSPC4 containsObject:@"IPHONE ENCLOSURE"];

    if (v11)
    {
      goto LABEL_12;
    }

    partSPC5 = [runCopy partSPC];
    if (([partSPC5 containsObject:@"IPHONE COMP CAMERA"] & 1) == 0)
    {
      partSPC6 = [runCopy partSPC];
      if (![partSPC6 containsObject:@"IPHONE COMP RCAM"])
      {
        partSPC7 = [runCopy partSPC];
        v15 = [partSPC7 containsObject:@"IPAD REAR CAMERA"];

        if ((v15 & 1) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_10;
      }
    }

LABEL_10:
    if ((+[CRDeviceMap supportLiDAR](CRDeviceMap, "supportLiDAR") & 1) != 0 || (+[CRDeviceMap supportPeCoNet]& 1) != 0)
    {
LABEL_12:
      LOBYTE(partSPC) = 1;
      goto LABEL_15;
    }

LABEL_14:
    LOBYTE(partSPC) = 0;
  }

LABEL_15:

  return partSPC;
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

  overrides = [(CRTest *)self overrides];

  if (overrides)
  {
    overrides2 = [(CRTest *)self overrides];
    [v8 addEntriesFromDictionary:overrides2];
  }

  v23 = @"parameters";
  v24 = v8;
  v21 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  testId = [(CRTest *)self testId];
  [runCopy startTest:testId parameters:v21];
}

@end