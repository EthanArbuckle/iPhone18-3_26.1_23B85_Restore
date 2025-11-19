@interface CRTest_8185_Patch
- (BOOL)shouldRun:(id)a3;
- (CRTest_8185_Patch)init;
- (void)run:(id)a3 withContext:(id)a4;
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
  v12.receiver = self;
  v12.super_class = CRTest_8185_Patch;
  if (-[CRTest shouldRun:](&v12, "shouldRun:", v4) && ([v4 partSPC], v5 = objc_claimAutoreleasedReturnValue(), v5, v5) && +[CRDeviceMap supportPeCoNet](CRDeviceMap, "supportPeCoNet"))
  {
    v6 = [v4 partSPC];
    if ([v6 containsObject:@"IPHONE COMP CAMERA"])
    {
      v7 = 1;
    }

    else
    {
      v9 = [v4 partSPC];
      if ([v9 containsObject:@"IPHONE COMP RCAM"])
      {
        v7 = 1;
      }

      else
      {
        v10 = [v4 partSPC];
        if ([v10 containsObject:@"IPAD REAR CAMERA"])
        {
          v7 = 1;
        }

        else
        {
          v11 = [v4 partSPC];
          v7 = [v11 containsObject:@"IPHONE ENCLOSURE"];
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

  v19 = [v6 patchItems];
  if (v19)
  {
    v20 = v19;
    v21 = [v6 patchItems];
    v22 = [v21 count];

    if (v22)
    {
      v23 = [v6 patchItems];
      [v8 setObject:v23 forKeyedSubscript:@"patchItems"];
    }
  }

  v24 = [(CRTest *)self overrides];

  if (v24)
  {
    v25 = [(CRTest *)self overrides];
    [v8 addEntriesFromDictionary:v25];
  }

  v28 = @"parameters";
  v29 = v8;
  v26 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  v27 = [(CRTest *)self testId];
  [v7 startTest:v27 parameters:v26];
}

@end