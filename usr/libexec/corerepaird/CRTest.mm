@interface CRTest
- (BOOL)shouldRun:(id)run;
- (CRTest)init;
- (void)run:(id)run withContext:(id)context;
- (void)update:(id)update testIndex:(int64_t)index testResult:(id)result;
@end

@implementation CRTest

- (CRTest)init
{
  v6.receiver = self;
  v6.super_class = CRTest;
  v2 = [(CRTest *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(CRTest *)v2 setStatusCode:&off_1000113C0];
    v4 = objc_opt_new();
    [(CRTest *)v3 setResultData:v4];

    [(CRTest *)v3 setRunningSemaphore:0];
    [(CRTest *)v3 setOverrides:0];
    [(CRTest *)v3 setTestingRemovableSPC:0];
  }

  return v3;
}

- (BOOL)shouldRun:(id)run
{
  runCopy = run;
  if (runCopy)
  {
    overrides = [(CRTest *)self overrides];

    if (overrides)
    {
      overrides2 = [(CRTest *)self overrides];
      v7 = [overrides2 objectForKeyedSubscript:@"enabled"];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && ![v7 BOOLValue])
      {
        v10 = 0;
        goto LABEL_11;
      }
    }

    lastTestStatusCode = [runCopy lastTestStatusCode];
    if (lastTestStatusCode)
    {
      v7 = lastTestStatusCode;
      lastTestStatusCode2 = [runCopy lastTestStatusCode];
      v10 = [lastTestStatusCode2 isEqual:&off_1000113D8];

LABEL_11:
      goto LABEL_12;
    }

    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

LABEL_12:

  return v10 & 1;
}

- (void)run:(id)run withContext:(id)context
{
  runCopy = run;
  v6 = objc_opt_new();
  v9 = @"parameters";
  v10 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  testId = [(CRTest *)self testId];
  [runCopy startTest:testId parameters:v7];
}

- (void)update:(id)update testIndex:(int64_t)index testResult:(id)result
{
  updateCopy = update;
  if (updateCopy && result)
  {
    resultCopy = result;
    statusCode = [resultCopy statusCode];
    [(CRTest *)self setStatusCode:statusCode];

    data = [resultCopy data];

    [(CRTest *)self setResultData:data];
    overrides = [(CRTest *)self overrides];

    if (overrides)
    {
      overrides2 = [(CRTest *)self overrides];
      v14 = [overrides2 objectForKeyedSubscript:@"forceFailed"];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v14 BOOLValue])
      {
        [(CRTest *)self setStatusCode:&off_1000113C0];
      }
    }

    testId = [(CRTest *)self testId];
    [updateCopy setLastRunTestId:testId];

    statusCode2 = [(CRTest *)self statusCode];
    [updateCopy setLastTestStatusCode:statusCode2];

    [updateCopy setLastRunTestIndex:index];
    lastTestStatusCode = [updateCopy lastTestStatusCode];
    if (lastTestStatusCode)
    {
      v18 = lastTestStatusCode;
      lastTestStatusCode2 = [updateCopy lastTestStatusCode];
      v20 = [lastTestStatusCode2 isEqual:&off_1000113D8];

      if ((v20 & 1) == 0)
      {
        testingRemovableSPC = [(CRTest *)self testingRemovableSPC];
        if (testingRemovableSPC && (v22 = testingRemovableSPC, -[CRTest testingRemovableSPC](self, "testingRemovableSPC"), v23 = objc_claimAutoreleasedReturnValue(), v24 = [v23 count], v23, v22, v24))
        {
          [updateCopy setLastTestStatusCode:&off_1000113D8];
          removedPartSPC = [updateCopy removedPartSPC];
          testingRemovableSPC2 = [(CRTest *)self testingRemovableSPC];
          [removedPartSPC unionSet:testingRemovableSPC2];

          partSPC = [updateCopy partSPC];
          testingRemovableSPC3 = [(CRTest *)self testingRemovableSPC];
          allObjects = [testingRemovableSPC3 allObjects];
          [partSPC removeObjectsInArray:allObjects];

          partSPC2 = [updateCopy partSPC];
          v31 = [partSPC2 count];

          if (!v31)
          {
            v32 = handleForCategory();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              *v37 = 0;
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "No more remaining SPC", v37, 2u);
            }

            [updateCopy setLastTestStatusCode:&off_1000113F0];
          }
        }

        else
        {
          removedPartSPC2 = [updateCopy removedPartSPC];
          v34 = [NSSet alloc];
          partSPC3 = [updateCopy partSPC];
          v36 = [v34 initWithArray:partSPC3];
          [removedPartSPC2 unionSet:v36];
        }
      }
    }
  }
}

@end