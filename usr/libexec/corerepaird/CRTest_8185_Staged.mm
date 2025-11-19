@interface CRTest_8185_Staged
- (BOOL)shouldRun:(id)a3;
- (CRTest_8185_Staged)init;
- (void)run:(id)a3 withContext:(id)a4;
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
  v17.receiver = self;
  v17.super_class = CRTest_8185_Staged;
  if (![(CRTest *)&v17 shouldRun:v4])
  {
    goto LABEL_14;
  }

  v5 = [v4 partSPC];

  if (v5)
  {
    v6 = [v4 partSPC];
    v7 = [v6 containsObject:@"IPHONE COMP FACEID"];

    if (v7)
    {
      goto LABEL_12;
    }

    v8 = [v4 partSPC];
    v9 = [v8 containsObject:@"IPAD FRONT CAMERA"];

    if (v9)
    {
      goto LABEL_12;
    }

    v10 = [v4 partSPC];
    v11 = [v10 containsObject:@"IPHONE ENCLOSURE"];

    if (v11)
    {
      goto LABEL_12;
    }

    v12 = [v4 partSPC];
    if (([v12 containsObject:@"IPHONE COMP CAMERA"] & 1) == 0)
    {
      v13 = [v4 partSPC];
      if (![v13 containsObject:@"IPHONE COMP RCAM"])
      {
        v14 = [v4 partSPC];
        v15 = [v14 containsObject:@"IPAD REAR CAMERA"];

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
      LOBYTE(v5) = 1;
      goto LABEL_15;
    }

LABEL_14:
    LOBYTE(v5) = 0;
  }

LABEL_15:

  return v5;
}

- (void)run:(id)a3 withContext:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  [v8 setObject:&__kCFBooleanTrue forKeyedSubscript:@"enableStagedSeal"];
  [v8 setObject:&__kCFBooleanTrue forKeyedSubscript:@"ignoreStagedData"];
  [v8 setObject:&__kCFBooleanTrue forKeyedSubscript:@"skipStageEAN"];
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

  v19 = [(CRTest *)self overrides];

  if (v19)
  {
    v20 = [(CRTest *)self overrides];
    [v8 addEntriesFromDictionary:v20];
  }

  v23 = @"parameters";
  v24 = v8;
  v21 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  v22 = [(CRTest *)self testId];
  [v7 startTest:v22 parameters:v21];
}

@end