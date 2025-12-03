@interface KTFixupOperation
- (KTFixupOperation)initWithDependenics:(id)dependenics intendedState:(id)state errorState:(id)errorState;
- (void)groupStart;
@end

@implementation KTFixupOperation

- (KTFixupOperation)initWithDependenics:(id)dependenics intendedState:(id)state errorState:(id)errorState
{
  dependenicsCopy = dependenics;
  stateCopy = state;
  errorStateCopy = errorState;
  v15.receiver = self;
  v15.super_class = KTFixupOperation;
  v11 = [(KTGroupOperation *)&v15 init];
  v12 = v11;
  if (v11)
  {
    [(KTFixupOperation *)v11 setDeps:dependenicsCopy];
    [(KTFixupOperation *)v12 setErrorState:errorStateCopy];
    [(KTFixupOperation *)v12 setIntendedState:stateCopy];
    v13 = v12;
  }

  return v12;
}

- (void)groupStart
{
  intendedState = [(KTFixupOperation *)self intendedState];
  [(KTFixupOperation *)self setNextState:intendedState];

  v4 = objc_alloc_init(NSOperation);
  [(KTFixupOperation *)self setFinishedOp:v4];

  finishedOp = [(KTFixupOperation *)self finishedOp];
  [(KTGroupOperation *)self dependOnBeforeGroupFinished:finishedOp];

  v43[0] = objc_opt_class();
  v43[1] = objc_opt_class();
  [NSArray arrayWithObjects:v43 count:2];
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  obj = v37 = 0u;
  v6 = 0;
  v7 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (v7)
  {
    v31 = *v37;
    *&v8 = 138412290;
    v29 = v8;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v37 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v36 + 1) + 8 * v9);
        fixupName = [objc_opt_class() fixupName];
        deps = [(KTFixupOperation *)self deps];
        smDataStore = [deps smDataStore];
        v14 = [smDataStore haveDoneFixup:fixupName];

        if (v14)
        {
          if (qword_10038BBB0 != -1)
          {
            sub_100247260();
          }

          v15 = qword_10038BBB8;
          if (os_log_type_enabled(qword_10038BBB8, OS_LOG_TYPE_INFO))
          {
            *buf = v29;
            v41 = fixupName;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Already performed fixup %@", buf, 0xCu);
          }
        }

        else
        {
          v16 = objc_alloc(objc_opt_class());
          deps2 = [(KTFixupOperation *)self deps];
          v18 = [v16 initWithDependencies:deps2];

          if (!v18)
          {
            if (qword_10038BBB0 != -1)
            {
              sub_100247238();
            }

            v27 = qword_10038BBB8;
            if (os_log_type_enabled(qword_10038BBB8, OS_LOG_TYPE_ERROR))
            {
              *buf = v29;
              v41 = fixupName;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Failed to create fixup operation %@", buf, 0xCu);
            }

            operationQueue3 = obj;
            goto LABEL_33;
          }

          doFixupOperation = [v18 doFixupOperation];
          v20 = doFixupOperation;
          if (doFixupOperation)
          {
            if (v6)
            {
              [doFixupOperation addDependency:v6];
            }

            objc_initWeak(buf, self);
            v32[0] = _NSConcreteStackBlock;
            v32[1] = 3221225472;
            v32[2] = sub_100015A14;
            v32[3] = &unk_1003174D8;
            objc_copyWeak(&v35, buf);
            v33 = fixupName;
            v21 = v20;
            v34 = v21;
            v22 = [NSBlockOperation blockOperationWithBlock:v32];

            [v22 addDependency:v21];
            operationQueue = [(KTGroupOperation *)self operationQueue];
            [operationQueue addOperation:v21];

            operationQueue2 = [(KTGroupOperation *)self operationQueue];
            [operationQueue2 addOperation:v22];

            objc_destroyWeak(&v35);
            objc_destroyWeak(buf);

            v6 = v22;
          }

          else
          {
            if (qword_10038BBB0 != -1)
            {
              sub_100247210();
            }

            v25 = qword_10038BBB8;
            if (os_log_type_enabled(qword_10038BBB8, OS_LOG_TYPE_INFO))
            {
              *buf = v29;
              v41 = fixupName;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Fixup %@ can't run right now, skipping for now", buf, 0xCu);
            }
          }
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }

    if (v6)
    {
      finishedOp2 = [(KTFixupOperation *)self finishedOp];
      [finishedOp2 addDependency:v6];
      goto LABEL_31;
    }
  }

  else
  {
    finishedOp2 = obj;
LABEL_31:
  }

  operationQueue3 = [(KTGroupOperation *)self operationQueue];
  fixupName = [(KTFixupOperation *)self finishedOp];
  [operationQueue3 addOperation:fixupName];
LABEL_33:
}

@end