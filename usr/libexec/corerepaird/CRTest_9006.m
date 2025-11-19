@interface CRTest_9006
- (CRTest_9006)init;
- (void)update:(id)a3 testIndex:(int64_t)a4 testResult:(id)a5;
@end

@implementation CRTest_9006

- (CRTest_9006)init
{
  v8.receiver = self;
  v8.super_class = CRTest_9006;
  v2 = [(CRTest *)&v8 init];
  v3 = v2;
  if (v2)
  {
    [(CRTest *)v2 setName:@"9006"];
    [(CRTest *)v3 setTestId:&off_100011270];
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

- (void)update:(id)a3 testIndex:(int64_t)a4 testResult:(id)a5
{
  v8 = a3;
  if (!v8 || !a5)
  {
    goto LABEL_11;
  }

  v23.receiver = self;
  v23.super_class = CRTest_9006;
  [(CRTest *)&v23 update:v8 testIndex:a4 testResult:a5];
  v9 = [(CRTest *)self resultData];
  v10 = [v9 objectForKeyedSubscript:@"preflightPartSPC"];
  if (!v10)
  {
    goto LABEL_6;
  }

  v11 = v10;
  v12 = [(CRTest *)self resultData];
  v13 = [v12 objectForKeyedSubscript:@"preflightPartSPC"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = [(CRTest *)self resultData];
    v15 = [v9 objectForKeyedSubscript:@"preflightPartSPC"];
    [v8 setPartSPC:v15];

LABEL_6:
  }

  v16 = [(CRTest *)self resultData];
  v17 = [v16 objectForKeyedSubscript:@"preflightRIK"];
  if (!v17)
  {
LABEL_10:

    goto LABEL_11;
  }

  v18 = v17;
  v19 = [(CRTest *)self resultData];
  v20 = [v19 objectForKeyedSubscript:@"preflightRIK"];
  objc_opt_class();
  v21 = objc_opt_isKindOfClass();

  if (v21)
  {
    v16 = [(CRTest *)self resultData];
    v22 = [v16 objectForKeyedSubscript:@"preflightRIK"];
    [v8 setRik:v22];

    goto LABEL_10;
  }

LABEL_11:
}

@end