@interface CRTest_9010
- (BOOL)shouldRun:(id)a3;
- (CRTest_9010)init;
- (void)run:(id)a3 withContext:(id)a4;
- (void)update:(id)a3 testIndex:(int64_t)a4 testResult:(id)a5;
@end

@implementation CRTest_9010

- (CRTest_9010)init
{
  v8.receiver = self;
  v8.super_class = CRTest_9010;
  v2 = [(CRTest *)&v8 init];
  v3 = v2;
  if (v2)
  {
    [(CRTest *)v2 setName:@"9010"];
    [(CRTest *)v3 setTestId:&off_1000112E8];
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
  v4 = [(CRTest *)self overrides];

  if (!v4)
  {
    return 1;
  }

  v5 = [(CRTest *)self overrides];
  v6 = [v5 objectForKeyedSubscript:@"enabled"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 BOOLValue];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)run:(id)a3 withContext:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  v9 = [v6 lastTestStatusCode];

  if (v9)
  {
    v10 = [v6 lastTestStatusCode];
    [v8 setObject:v10 forKeyedSubscript:@"testStatusCode"];
  }

  v11 = [v6 lastRunTestId];

  if (v11)
  {
    v12 = [v6 lastRunTestId];
    [v8 setObject:v12 forKeyedSubscript:@"testIdentifier"];
  }

  v13 = [v6 removedPartSPC];

  if (v13)
  {
    v14 = [v6 removedPartSPC];
    v15 = [v14 allObjects];
    [v8 setObject:v15 forKeyedSubscript:@"removedPartSPC"];
  }

  v18 = @"parameters";
  v19 = v8;
  v16 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v17 = [(CRTest *)self testId];
  [v7 startTest:v17 parameters:v16];
}

- (void)update:(id)a3 testIndex:(int64_t)a4 testResult:(id)a5
{
  v8 = a3;
  if (v8 && a5)
  {
    v15 = v8;
    v9 = a5;
    v10 = [v9 statusCode];
    [(CRTest *)self setStatusCode:v10];

    v11 = [v9 data];

    [(CRTest *)self setResultData:v11];
    v12 = [(CRTest *)self statusCode];
    LODWORD(v11) = [v12 isEqual:&off_100011300];

    if (v11)
    {
      [v15 setDoRetry:1];
    }

    else
    {
      v13 = [(CRTest *)self testId];
      [v15 setLastRunTestId:v13];

      v14 = [(CRTest *)self statusCode];
      [v15 setLastTestStatusCode:v14];

      [v15 setLastRunTestIndex:a4];
    }

    v8 = v15;
  }
}

@end