@interface CRTest_9008
- (BOOL)shouldRun:(id)run;
- (CRTest_9008)init;
- (void)update:(id)update testIndex:(int64_t)index testResult:(id)result;
@end

@implementation CRTest_9008

- (CRTest_9008)init
{
  v8.receiver = self;
  v8.super_class = CRTest_9008;
  v2 = [(CRTest *)&v8 init];
  v3 = v2;
  if (v2)
  {
    [(CRTest *)v2 setName:@"9008"];
    [(CRTest *)v3 setTestId:&off_1000112A0];
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
  v10.receiver = self;
  v10.super_class = CRTest_9008;
  if ([(CRTest *)&v10 shouldRun:runCopy])
  {
    v5 = [runCopy rik];
    if (v5)
    {
      v6 = v5;
      partSPC = [runCopy partSPC];
      v8 = partSPC == 0;
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)update:(id)update testIndex:(int64_t)index testResult:(id)result
{
  updateCopy = update;
  if (!updateCopy || !result)
  {
    goto LABEL_11;
  }

  v23.receiver = self;
  v23.super_class = CRTest_9008;
  [(CRTest *)&v23 update:updateCopy testIndex:index testResult:result];
  resultData = [(CRTest *)self resultData];
  v10 = [resultData objectForKeyedSubscript:@"preflightPartSPC"];
  if (!v10)
  {
    goto LABEL_6;
  }

  v11 = v10;
  resultData2 = [(CRTest *)self resultData];
  v13 = [resultData2 objectForKeyedSubscript:@"preflightPartSPC"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    resultData = [(CRTest *)self resultData];
    v15 = [resultData objectForKeyedSubscript:@"preflightPartSPC"];
    [updateCopy setPartSPC:v15];

LABEL_6:
  }

  resultData3 = [(CRTest *)self resultData];
  v17 = [resultData3 objectForKeyedSubscript:@"preflightRIK"];
  if (!v17)
  {
LABEL_10:

    goto LABEL_11;
  }

  v18 = v17;
  resultData4 = [(CRTest *)self resultData];
  v20 = [resultData4 objectForKeyedSubscript:@"preflightRIK"];
  objc_opt_class();
  v21 = objc_opt_isKindOfClass();

  if (v21)
  {
    resultData3 = [(CRTest *)self resultData];
    v22 = [resultData3 objectForKeyedSubscript:@"preflightRIK"];
    [updateCopy setRik:v22];

    goto LABEL_10;
  }

LABEL_11:
}

@end