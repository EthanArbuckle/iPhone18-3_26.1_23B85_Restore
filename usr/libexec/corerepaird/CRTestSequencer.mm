@interface CRTestSequencer
- (CRTestSequencer)initWithDelegate:(id)a3;
- (void)handleResult:(id)a3;
- (void)initTestSequence;
- (void)start;
@end

@implementation CRTestSequencer

- (CRTestSequencer)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CRTestSequencer;
  v5 = [(CRTestSequencer *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(CRTestSequencer *)v5 setDelegate:v4];
    [(CRTestSequencer *)v6 setStarted:0];
    [(CRTestSequencer *)v6 initTestSequence];
  }

  return v6;
}

- (void)start
{
  v3 = os_transaction_create();
  if ([(CRTestSequencer *)self started])
  {
    v4 = handleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000095FC();
    }
  }

  else
  {
    [(CRTestSequencer *)self setStarted:1];
    v5 = objc_alloc_init(CRTestContext);
    [(CRTestSequencer *)self setTestContext:v5];

    v6 = 0;
    do
    {
      v7 = [(CRTestSequencer *)self testSequence];
      v8 = [v7 objectAtIndexedSubscript:v6];

      v9 = handleForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [v8 name];
        *buf = 138412290;
        v38 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Checking test: %@", buf, 0xCu);
      }

      v11 = v6 + 1;
      v12 = [(CRTestSequencer *)self delegate];
      v13 = [NSNumber numberWithInteger:((v6 + 1) / 17.0 * 100.0)];
      [v12 updateTestSuiteProgress:v13];

      v14 = [(CRTestSequencer *)self testContext];
      LODWORD(v12) = [v8 shouldRun:v14];

      if (v12)
      {
        v15 = [(CRTestSequencer *)self delegate];
        v16 = [(CRTestSequencer *)self testContext];
        v17 = [v8 promptContinue:v15 withContext:v16];

        v18 = handleForCategory();
        v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
        if (v17)
        {
          if (v19)
          {
            v20 = [v8 name];
            *buf = 138412290;
            v38 = v20;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Running test: %@", buf, 0xCu);
          }

          v21 = dispatch_semaphore_create(0);
          [v8 setRunningSemaphore:v21];
          v22 = [(CRTestSequencer *)self delegate];
          v23 = [(CRTestSequencer *)self testContext];
          [v8 run:v22 withContext:v23];

          dispatch_semaphore_wait(v21, 0xFFFFFFFFFFFFFFFFLL);
        }

        else
        {
          if (v19)
          {
            v24 = [v8 name];
            *buf = 138412290;
            v38 = v24;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Cancelling test: %@", buf, 0xCu);
          }

          v21 = objc_alloc_init(ASTTestResult);
          [v21 setStatusCode:&off_100011528];
          v25 = [(CRTestSequencer *)self testContext];
          [v8 update:v25 testIndex:v6 testResult:v21];
        }
      }

      v26 = [(CRTestSequencer *)self testContext];
      v27 = [v26 doRetry];

      if (v27)
      {
        v28 = handleForCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v29 = [(CRTestSequencer *)self testContext];
          v30 = [v29 lastRunTestIndex];
          *buf = 134217984;
          v38 = v30;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Retrying test index: %ld", buf, 0xCu);
        }

        v31 = [(CRTestSequencer *)self testContext];
        v11 = [v31 lastRunTestIndex];

        v32 = [(CRTestSequencer *)self testContext];
        [v32 setDoRetry:0];

        v33 = [(CRTestSequencer *)self testContext];
        [v33 setLastTestStatusCode:&off_100011540];
      }

      v6 = v11;
    }

    while (v11 < 17);
    v34 = handleForCategory();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Test sequencer completed", buf, 2u);
    }

    v35 = objc_opt_new();
    [(CRTestSequencer *)self setSuiteResult:v35];

    v36 = [(CRTestSequencer *)self delegate];
    [v36 completeTestSuite:@"Repair Assistant" description:@"SSR suite"];

    [(CRTestSequencer *)self setStarted:0];
    [(CRTestSequencer *)self setTestContext:0];
  }
}

- (void)handleResult:(id)a3
{
  v4 = a3;
  v5 = 0;
  while (1)
  {
    v6 = [(CRTestSequencer *)self testSequence];
    v7 = [v6 objectAtIndexedSubscript:v5];
    v8 = [v7 runningSemaphore];

    if (v8)
    {
      break;
    }

    if (++v5 == 17)
    {
      v9 = 0;
      goto LABEL_12;
    }
  }

  v10 = [(CRTestSequencer *)self testSequence];
  v9 = [v10 objectAtIndexedSubscript:v5];

  if (!v9 || ([v9 runningSemaphore], v11 = objc_claimAutoreleasedReturnValue(), v11, !v11))
  {
LABEL_12:
    v20 = handleForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_1000096CC();
    }

    goto LABEL_14;
  }

  if (v4)
  {
    v12 = [v4 testId];
    if (v12 && (v13 = v12, [v9 statusCode], v14 = objc_claimAutoreleasedReturnValue(), v14, v13, v14))
    {
      v15 = [v4 testId];
      v16 = [v9 testId];
      v17 = [v15 isEqualToNumber:v16];

      if (v17)
      {
        v18 = [(CRTestSequencer *)self testContext];
        [v9 update:v18 testIndex:v5 testResult:v4];

        v19 = [v9 runningSemaphore];
        dispatch_semaphore_signal(v19);

        [v9 setRunningSemaphore:0];
        goto LABEL_15;
      }

      v20 = handleForCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_100009630();
      }
    }

    else
    {
      v20 = handleForCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_100009664();
      }
    }
  }

  else
  {
    v20 = handleForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_100009698();
    }
  }

LABEL_14:

LABEL_15:
}

- (void)initTestSequence
{
  v3 = [[NSMutableArray alloc] initWithCapacity:17];
  [(CRTestSequencer *)self setTestSequence:v3];

  v4 = objc_alloc_init(CRTest_8262);
  v5 = [(CRTestSequencer *)self testSequence];
  [v5 setObject:v4 atIndexedSubscript:0];

  v6 = objc_alloc_init(CRTest_8259);
  v7 = [(CRTestSequencer *)self testSequence];
  [v7 setObject:v6 atIndexedSubscript:1];

  v8 = objc_alloc_init(CRTest_9006);
  v9 = [(CRTestSequencer *)self testSequence];
  [v9 setObject:v8 atIndexedSubscript:2];

  v10 = objc_alloc_init(CRTest_9008);
  v11 = [(CRTestSequencer *)self testSequence];
  [v11 setObject:v10 atIndexedSubscript:3];

  v12 = objc_alloc_init(CRTest_8268);
  v13 = [(CRTestSequencer *)self testSequence];
  [v13 setObject:v12 atIndexedSubscript:4];

  v14 = objc_alloc_init(CRTest_8340);
  v15 = [(CRTestSequencer *)self testSequence];
  [v15 setObject:v14 atIndexedSubscript:5];

  v16 = objc_alloc_init(CRTest_8185_Staged);
  v17 = [(CRTestSequencer *)self testSequence];
  [v17 setObject:v16 atIndexedSubscript:6];

  v18 = objc_alloc_init(CRTest_8343);
  v19 = [(CRTestSequencer *)self testSequence];
  [v19 setObject:v18 atIndexedSubscript:7];

  v20 = objc_alloc_init(CRTest_7004);
  v21 = [(CRTestSequencer *)self testSequence];
  [v21 setObject:v20 atIndexedSubscript:8];

  v22 = objc_alloc_init(CRTest_6002);
  v23 = [(CRTestSequencer *)self testSequence];
  [v23 setObject:v22 atIndexedSubscript:9];

  v24 = objc_alloc_init(CRTest_8185_Patch);
  v25 = [(CRTestSequencer *)self testSequence];
  [v25 setObject:v24 atIndexedSubscript:10];

  v26 = objc_alloc_init(CRTest_8276);
  v27 = [(CRTestSequencer *)self testSequence];
  [v27 setObject:v26 atIndexedSubscript:11];

  v28 = objc_alloc_init(CRTest_8185_Update);
  v29 = [(CRTestSequencer *)self testSequence];
  [v29 setObject:v28 atIndexedSubscript:12];

  v30 = objc_alloc_init(CRTest_9013);
  v31 = [(CRTestSequencer *)self testSequence];
  [v31 setObject:v30 atIndexedSubscript:13];

  v32 = objc_alloc_init(CRTest_8185);
  v33 = [(CRTestSequencer *)self testSequence];
  [v33 setObject:v32 atIndexedSubscript:14];

  v34 = objc_alloc_init(CRTest_8264);
  v35 = [(CRTestSequencer *)self testSequence];
  [v35 setObject:v34 atIndexedSubscript:15];

  v37 = objc_alloc_init(CRTest_9010);
  v36 = [(CRTestSequencer *)self testSequence];
  [v36 setObject:v37 atIndexedSubscript:16];
}

@end