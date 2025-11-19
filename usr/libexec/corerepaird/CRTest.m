@interface CRTest
- (BOOL)shouldRun:(id)a3;
- (CRTest)init;
- (void)run:(id)a3 withContext:(id)a4;
- (void)update:(id)a3 testIndex:(int64_t)a4 testResult:(id)a5;
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

- (BOOL)shouldRun:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(CRTest *)self overrides];

    if (v5)
    {
      v6 = [(CRTest *)self overrides];
      v7 = [v6 objectForKeyedSubscript:@"enabled"];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && ![v7 BOOLValue])
      {
        v10 = 0;
        goto LABEL_11;
      }
    }

    v8 = [v4 lastTestStatusCode];
    if (v8)
    {
      v7 = v8;
      v9 = [v4 lastTestStatusCode];
      v10 = [v9 isEqual:&off_1000113D8];

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

- (void)run:(id)a3 withContext:(id)a4
{
  v5 = a3;
  v6 = objc_opt_new();
  v9 = @"parameters";
  v10 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v8 = [(CRTest *)self testId];
  [v5 startTest:v8 parameters:v7];
}

- (void)update:(id)a3 testIndex:(int64_t)a4 testResult:(id)a5
{
  v8 = a3;
  if (v8 && a5)
  {
    v9 = a5;
    v10 = [v9 statusCode];
    [(CRTest *)self setStatusCode:v10];

    v11 = [v9 data];

    [(CRTest *)self setResultData:v11];
    v12 = [(CRTest *)self overrides];

    if (v12)
    {
      v13 = [(CRTest *)self overrides];
      v14 = [v13 objectForKeyedSubscript:@"forceFailed"];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v14 BOOLValue])
      {
        [(CRTest *)self setStatusCode:&off_1000113C0];
      }
    }

    v15 = [(CRTest *)self testId];
    [v8 setLastRunTestId:v15];

    v16 = [(CRTest *)self statusCode];
    [v8 setLastTestStatusCode:v16];

    [v8 setLastRunTestIndex:a4];
    v17 = [v8 lastTestStatusCode];
    if (v17)
    {
      v18 = v17;
      v19 = [v8 lastTestStatusCode];
      v20 = [v19 isEqual:&off_1000113D8];

      if ((v20 & 1) == 0)
      {
        v21 = [(CRTest *)self testingRemovableSPC];
        if (v21 && (v22 = v21, -[CRTest testingRemovableSPC](self, "testingRemovableSPC"), v23 = objc_claimAutoreleasedReturnValue(), v24 = [v23 count], v23, v22, v24))
        {
          [v8 setLastTestStatusCode:&off_1000113D8];
          v25 = [v8 removedPartSPC];
          v26 = [(CRTest *)self testingRemovableSPC];
          [v25 unionSet:v26];

          v27 = [v8 partSPC];
          v28 = [(CRTest *)self testingRemovableSPC];
          v29 = [v28 allObjects];
          [v27 removeObjectsInArray:v29];

          v30 = [v8 partSPC];
          v31 = [v30 count];

          if (!v31)
          {
            v32 = handleForCategory();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              *v37 = 0;
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "No more remaining SPC", v37, 2u);
            }

            [v8 setLastTestStatusCode:&off_1000113F0];
          }
        }

        else
        {
          v33 = [v8 removedPartSPC];
          v34 = [NSSet alloc];
          v35 = [v8 partSPC];
          v36 = [v34 initWithArray:v35];
          [v33 unionSet:v36];
        }
      }
    }
  }
}

@end