@interface KTFixupOperation
- (KTFixupOperation)initWithDependenics:(id)a3 intendedState:(id)a4 errorState:(id)a5;
- (void)groupStart;
@end

@implementation KTFixupOperation

- (KTFixupOperation)initWithDependenics:(id)a3 intendedState:(id)a4 errorState:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = KTFixupOperation;
  v11 = [(KTGroupOperation *)&v15 init];
  v12 = v11;
  if (v11)
  {
    [(KTFixupOperation *)v11 setDeps:v8];
    [(KTFixupOperation *)v12 setErrorState:v10];
    [(KTFixupOperation *)v12 setIntendedState:v9];
    v13 = v12;
  }

  return v12;
}

- (void)groupStart
{
  v3 = [(KTFixupOperation *)self intendedState];
  [(KTFixupOperation *)self setNextState:v3];

  v4 = objc_alloc_init(NSOperation);
  [(KTFixupOperation *)self setFinishedOp:v4];

  v5 = [(KTFixupOperation *)self finishedOp];
  [(KTGroupOperation *)self dependOnBeforeGroupFinished:v5];

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
        v11 = [objc_opt_class() fixupName];
        v12 = [(KTFixupOperation *)self deps];
        v13 = [v12 smDataStore];
        v14 = [v13 haveDoneFixup:v11];

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
            v41 = v11;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Already performed fixup %@", buf, 0xCu);
          }
        }

        else
        {
          v16 = objc_alloc(objc_opt_class());
          v17 = [(KTFixupOperation *)self deps];
          v18 = [v16 initWithDependencies:v17];

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
              v41 = v11;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Failed to create fixup operation %@", buf, 0xCu);
            }

            v28 = obj;
            goto LABEL_33;
          }

          v19 = [v18 doFixupOperation];
          v20 = v19;
          if (v19)
          {
            if (v6)
            {
              [v19 addDependency:v6];
            }

            objc_initWeak(buf, self);
            v32[0] = _NSConcreteStackBlock;
            v32[1] = 3221225472;
            v32[2] = sub_100015A14;
            v32[3] = &unk_1003174D8;
            objc_copyWeak(&v35, buf);
            v33 = v11;
            v21 = v20;
            v34 = v21;
            v22 = [NSBlockOperation blockOperationWithBlock:v32];

            [v22 addDependency:v21];
            v23 = [(KTGroupOperation *)self operationQueue];
            [v23 addOperation:v21];

            v24 = [(KTGroupOperation *)self operationQueue];
            [v24 addOperation:v22];

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
              v41 = v11;
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
      v26 = [(KTFixupOperation *)self finishedOp];
      [v26 addDependency:v6];
      goto LABEL_31;
    }
  }

  else
  {
    v26 = obj;
LABEL_31:
  }

  v28 = [(KTGroupOperation *)self operationQueue];
  v11 = [(KTFixupOperation *)self finishedOp];
  [v28 addOperation:v11];
LABEL_33:
}

@end