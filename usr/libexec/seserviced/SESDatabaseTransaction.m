@interface SESDatabaseTransaction
- (id)stageEndPointEntityUpdates:(id)a3 fromEndPoint:(id)a4;
- (id)stageEndPointEntityWithIdentifier:(id)a3 endPointCAEntity:(id)a4 airInstanceEntity:(id)a5 clientName:(id)a6 handle:(id)a7 error:(id *)a8;
- (void)dealloc;
@end

@implementation SESDatabaseTransaction

- (void)dealloc
{
  if (self->_state == 1)
  {
    v3 = SESDefaultLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      state = self->_state;
      *buf = 67109120;
      v7 = state;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Transaction object deallocated in unexpected state %u", buf, 8u);
    }

    [(NSManagedObjectContext *)self->_managedObjectContext rollback];
  }

  v5.receiver = self;
  v5.super_class = SESDatabaseTransaction;
  [(SESDatabaseTransaction *)&v5 dealloc];
}

- (id)stageEndPointEntityWithIdentifier:(id)a3 endPointCAEntity:(id)a4 airInstanceEntity:(id)a5 clientName:(id)a6 handle:(id)a7 error:(id *)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  if (v16 && v15 && v14 && v17)
  {
    v29 = 0;
    v19 = sub_10003CA94(SESEndpointDatabase, v14, v17, v18, &v29);
    v20 = v29;
    v21 = v20;
    if (v19)
    {
      if (a8)
      {
        v22 = SESDefaultLogObject();
        *a8 = SESCreateAndLogError();
      }
    }

    else
    {
      if (!v20)
      {
        v27 = sub_1003AD0FC(self);
        v28 = [NSEntityDescription insertNewObjectForEntityForName:@"SEEndPointEntity" inManagedObjectContext:v27];

        [v28 setIdentifier:v14];
        [v28 setClientName:v17];
        [v28 setAuthority:v15];
        [v28 setInstance:v16];
        if ([v28 validateForInsert:a8])
        {
          v23 = v28;
        }

        else
        {
          v23 = 0;
        }

        goto LABEL_9;
      }

      if (a8)
      {
        v26 = v20;
        v23 = 0;
        *a8 = v21;
        goto LABEL_9;
      }
    }

    v23 = 0;
LABEL_9:

    goto LABEL_13;
  }

  if (a8)
  {
    v24 = SESDefaultLogObject();
    *a8 = SESCreateAndLogError();
  }

  v23 = 0;
LABEL_13:

  return v23;
}

- (id)stageEndPointEntityUpdates:(id)a3 fromEndPoint:(id)a4
{
  v5 = a3;
  v6 = a4;
  v13 = 0;
  v7 = [v6 encodeWithError:&v13];
  v8 = v13;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = v7 == 0;
  }

  if (v9)
  {
    v10 = SESDefaultLogObject();
    v11 = SESCreateAndLogError();
  }

  else
  {
    [v5 setEndPointData:v7];
    v11 = 0;
  }

  return v11;
}

@end