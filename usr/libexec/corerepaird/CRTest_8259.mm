@interface CRTest_8259
- (CRTest_8259)init;
- (void)run:(id)run withContext:(id)context;
- (void)update:(id)update testIndex:(int64_t)index testResult:(id)result;
@end

@implementation CRTest_8259

- (CRTest_8259)init
{
  v8.receiver = self;
  v8.super_class = CRTest_8259;
  v2 = [(CRTest *)&v8 init];
  v3 = v2;
  if (v2)
  {
    [(CRTest *)v2 setName:@"8259"];
    [(CRTest *)v3 setTestId:&off_100011420];
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

- (void)run:(id)run withContext:(id)context
{
  runCopy = run;
  v6 = objc_opt_new();
  overrides = [(CRTest *)self overrides];

  if (overrides)
  {
    overrides2 = [(CRTest *)self overrides];
    [v6 addEntriesFromDictionary:overrides2];
  }

  else
  {
    [v6 setObject:&off_100011240 forKeyedSubscript:@"endpointURLs"];
  }

  v11 = @"parameters";
  v12 = v6;
  v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  testId = [(CRTest *)self testId];
  [runCopy startTest:testId parameters:v9];
}

- (void)update:(id)update testIndex:(int64_t)index testResult:(id)result
{
  updateCopy = update;
  resultCopy = result;
  v10 = resultCopy;
  if (updateCopy && resultCopy)
  {
    statusCode = [resultCopy statusCode];
    v12 = [statusCode isEqual:&off_100011438];

    if ((v12 & 1) == 0)
    {
      [v10 setStatusCode:&off_100011450];
    }

    v13.receiver = self;
    v13.super_class = CRTest_8259;
    [(CRTest *)&v13 update:updateCopy testIndex:index testResult:v10];
  }
}

@end