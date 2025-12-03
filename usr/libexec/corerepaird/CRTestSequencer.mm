@interface CRTestSequencer
- (CRTestSequencer)initWithDelegate:(id)delegate;
- (void)handleResult:(id)result;
- (void)initTestSequence;
- (void)start;
@end

@implementation CRTestSequencer

- (CRTestSequencer)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = CRTestSequencer;
  v5 = [(CRTestSequencer *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(CRTestSequencer *)v5 setDelegate:delegateCopy];
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
      testSequence = [(CRTestSequencer *)self testSequence];
      v8 = [testSequence objectAtIndexedSubscript:v6];

      v9 = handleForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        name = [v8 name];
        *buf = 138412290;
        v38 = name;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Checking test: %@", buf, 0xCu);
      }

      lastRunTestIndex2 = v6 + 1;
      delegate = [(CRTestSequencer *)self delegate];
      v13 = [NSNumber numberWithInteger:((v6 + 1) / 17.0 * 100.0)];
      [delegate updateTestSuiteProgress:v13];

      testContext = [(CRTestSequencer *)self testContext];
      LODWORD(delegate) = [v8 shouldRun:testContext];

      if (delegate)
      {
        delegate2 = [(CRTestSequencer *)self delegate];
        testContext2 = [(CRTestSequencer *)self testContext];
        v17 = [v8 promptContinue:delegate2 withContext:testContext2];

        v18 = handleForCategory();
        v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
        if (v17)
        {
          if (v19)
          {
            name2 = [v8 name];
            *buf = 138412290;
            v38 = name2;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Running test: %@", buf, 0xCu);
          }

          v21 = dispatch_semaphore_create(0);
          [v8 setRunningSemaphore:v21];
          delegate3 = [(CRTestSequencer *)self delegate];
          testContext3 = [(CRTestSequencer *)self testContext];
          [v8 run:delegate3 withContext:testContext3];

          dispatch_semaphore_wait(v21, 0xFFFFFFFFFFFFFFFFLL);
        }

        else
        {
          if (v19)
          {
            name3 = [v8 name];
            *buf = 138412290;
            v38 = name3;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Cancelling test: %@", buf, 0xCu);
          }

          v21 = objc_alloc_init(ASTTestResult);
          [v21 setStatusCode:&off_100011528];
          testContext4 = [(CRTestSequencer *)self testContext];
          [v8 update:testContext4 testIndex:v6 testResult:v21];
        }
      }

      testContext5 = [(CRTestSequencer *)self testContext];
      doRetry = [testContext5 doRetry];

      if (doRetry)
      {
        v28 = handleForCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          testContext6 = [(CRTestSequencer *)self testContext];
          lastRunTestIndex = [testContext6 lastRunTestIndex];
          *buf = 134217984;
          v38 = lastRunTestIndex;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Retrying test index: %ld", buf, 0xCu);
        }

        testContext7 = [(CRTestSequencer *)self testContext];
        lastRunTestIndex2 = [testContext7 lastRunTestIndex];

        testContext8 = [(CRTestSequencer *)self testContext];
        [testContext8 setDoRetry:0];

        testContext9 = [(CRTestSequencer *)self testContext];
        [testContext9 setLastTestStatusCode:&off_100011540];
      }

      v6 = lastRunTestIndex2;
    }

    while (lastRunTestIndex2 < 17);
    v34 = handleForCategory();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Test sequencer completed", buf, 2u);
    }

    v35 = objc_opt_new();
    [(CRTestSequencer *)self setSuiteResult:v35];

    delegate4 = [(CRTestSequencer *)self delegate];
    [delegate4 completeTestSuite:@"Repair Assistant" description:@"SSR suite"];

    [(CRTestSequencer *)self setStarted:0];
    [(CRTestSequencer *)self setTestContext:0];
  }
}

- (void)handleResult:(id)result
{
  resultCopy = result;
  v5 = 0;
  while (1)
  {
    testSequence = [(CRTestSequencer *)self testSequence];
    v7 = [testSequence objectAtIndexedSubscript:v5];
    runningSemaphore = [v7 runningSemaphore];

    if (runningSemaphore)
    {
      break;
    }

    if (++v5 == 17)
    {
      v9 = 0;
      goto LABEL_12;
    }
  }

  testSequence2 = [(CRTestSequencer *)self testSequence];
  v9 = [testSequence2 objectAtIndexedSubscript:v5];

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

  if (resultCopy)
  {
    testId = [resultCopy testId];
    if (testId && (v13 = testId, [v9 statusCode], v14 = objc_claimAutoreleasedReturnValue(), v14, v13, v14))
    {
      testId2 = [resultCopy testId];
      testId3 = [v9 testId];
      v17 = [testId2 isEqualToNumber:testId3];

      if (v17)
      {
        testContext = [(CRTestSequencer *)self testContext];
        [v9 update:testContext testIndex:v5 testResult:resultCopy];

        runningSemaphore2 = [v9 runningSemaphore];
        dispatch_semaphore_signal(runningSemaphore2);

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
  testSequence = [(CRTestSequencer *)self testSequence];
  [testSequence setObject:v4 atIndexedSubscript:0];

  v6 = objc_alloc_init(CRTest_8259);
  testSequence2 = [(CRTestSequencer *)self testSequence];
  [testSequence2 setObject:v6 atIndexedSubscript:1];

  v8 = objc_alloc_init(CRTest_9006);
  testSequence3 = [(CRTestSequencer *)self testSequence];
  [testSequence3 setObject:v8 atIndexedSubscript:2];

  v10 = objc_alloc_init(CRTest_9008);
  testSequence4 = [(CRTestSequencer *)self testSequence];
  [testSequence4 setObject:v10 atIndexedSubscript:3];

  v12 = objc_alloc_init(CRTest_8268);
  testSequence5 = [(CRTestSequencer *)self testSequence];
  [testSequence5 setObject:v12 atIndexedSubscript:4];

  v14 = objc_alloc_init(CRTest_8340);
  testSequence6 = [(CRTestSequencer *)self testSequence];
  [testSequence6 setObject:v14 atIndexedSubscript:5];

  v16 = objc_alloc_init(CRTest_8185_Staged);
  testSequence7 = [(CRTestSequencer *)self testSequence];
  [testSequence7 setObject:v16 atIndexedSubscript:6];

  v18 = objc_alloc_init(CRTest_8343);
  testSequence8 = [(CRTestSequencer *)self testSequence];
  [testSequence8 setObject:v18 atIndexedSubscript:7];

  v20 = objc_alloc_init(CRTest_7004);
  testSequence9 = [(CRTestSequencer *)self testSequence];
  [testSequence9 setObject:v20 atIndexedSubscript:8];

  v22 = objc_alloc_init(CRTest_6002);
  testSequence10 = [(CRTestSequencer *)self testSequence];
  [testSequence10 setObject:v22 atIndexedSubscript:9];

  v24 = objc_alloc_init(CRTest_8185_Patch);
  testSequence11 = [(CRTestSequencer *)self testSequence];
  [testSequence11 setObject:v24 atIndexedSubscript:10];

  v26 = objc_alloc_init(CRTest_8276);
  testSequence12 = [(CRTestSequencer *)self testSequence];
  [testSequence12 setObject:v26 atIndexedSubscript:11];

  v28 = objc_alloc_init(CRTest_8185_Update);
  testSequence13 = [(CRTestSequencer *)self testSequence];
  [testSequence13 setObject:v28 atIndexedSubscript:12];

  v30 = objc_alloc_init(CRTest_9013);
  testSequence14 = [(CRTestSequencer *)self testSequence];
  [testSequence14 setObject:v30 atIndexedSubscript:13];

  v32 = objc_alloc_init(CRTest_8185);
  testSequence15 = [(CRTestSequencer *)self testSequence];
  [testSequence15 setObject:v32 atIndexedSubscript:14];

  v34 = objc_alloc_init(CRTest_8264);
  testSequence16 = [(CRTestSequencer *)self testSequence];
  [testSequence16 setObject:v34 atIndexedSubscript:15];

  v37 = objc_alloc_init(CRTest_9010);
  testSequence17 = [(CRTestSequencer *)self testSequence];
  [testSequence17 setObject:v37 atIndexedSubscript:16];
}

@end