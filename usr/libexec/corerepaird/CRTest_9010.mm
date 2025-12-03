@interface CRTest_9010
- (BOOL)shouldRun:(id)run;
- (CRTest_9010)init;
- (void)run:(id)run withContext:(id)context;
- (void)update:(id)update testIndex:(int64_t)index testResult:(id)result;
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
      name = [(CRTest *)v3 name];
      v6 = [v4 dictionaryForKey:name];
      [(CRTest *)v3 setOverrides:v6];
    }
  }

  return v3;
}

- (BOOL)shouldRun:(id)run
{
  overrides = [(CRTest *)self overrides];

  if (!overrides)
  {
    return 1;
  }

  overrides2 = [(CRTest *)self overrides];
  v6 = [overrides2 objectForKeyedSubscript:@"enabled"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v6 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (void)run:(id)run withContext:(id)context
{
  contextCopy = context;
  runCopy = run;
  v8 = objc_opt_new();
  lastTestStatusCode = [contextCopy lastTestStatusCode];

  if (lastTestStatusCode)
  {
    lastTestStatusCode2 = [contextCopy lastTestStatusCode];
    [v8 setObject:lastTestStatusCode2 forKeyedSubscript:@"testStatusCode"];
  }

  lastRunTestId = [contextCopy lastRunTestId];

  if (lastRunTestId)
  {
    lastRunTestId2 = [contextCopy lastRunTestId];
    [v8 setObject:lastRunTestId2 forKeyedSubscript:@"testIdentifier"];
  }

  removedPartSPC = [contextCopy removedPartSPC];

  if (removedPartSPC)
  {
    removedPartSPC2 = [contextCopy removedPartSPC];
    allObjects = [removedPartSPC2 allObjects];
    [v8 setObject:allObjects forKeyedSubscript:@"removedPartSPC"];
  }

  v18 = @"parameters";
  v19 = v8;
  v16 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  testId = [(CRTest *)self testId];
  [runCopy startTest:testId parameters:v16];
}

- (void)update:(id)update testIndex:(int64_t)index testResult:(id)result
{
  updateCopy = update;
  if (updateCopy && result)
  {
    v15 = updateCopy;
    resultCopy = result;
    statusCode = [resultCopy statusCode];
    [(CRTest *)self setStatusCode:statusCode];

    data = [resultCopy data];

    [(CRTest *)self setResultData:data];
    statusCode2 = [(CRTest *)self statusCode];
    LODWORD(data) = [statusCode2 isEqual:&off_100011300];

    if (data)
    {
      [v15 setDoRetry:1];
    }

    else
    {
      testId = [(CRTest *)self testId];
      [v15 setLastRunTestId:testId];

      statusCode3 = [(CRTest *)self statusCode];
      [v15 setLastTestStatusCode:statusCode3];

      [v15 setLastRunTestIndex:index];
    }

    updateCopy = v15;
  }
}

@end