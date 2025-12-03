@interface SESDatabaseTransaction
- (id)stageEndPointEntityUpdates:(id)updates fromEndPoint:(id)point;
- (id)stageEndPointEntityWithIdentifier:(id)identifier endPointCAEntity:(id)entity airInstanceEntity:(id)instanceEntity clientName:(id)name handle:(id)handle error:(id *)error;
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

- (id)stageEndPointEntityWithIdentifier:(id)identifier endPointCAEntity:(id)entity airInstanceEntity:(id)instanceEntity clientName:(id)name handle:(id)handle error:(id *)error
{
  identifierCopy = identifier;
  entityCopy = entity;
  instanceEntityCopy = instanceEntity;
  nameCopy = name;
  handleCopy = handle;
  if (instanceEntityCopy && entityCopy && identifierCopy && nameCopy)
  {
    v29 = 0;
    v19 = sub_10003CA94(SESEndpointDatabase, identifierCopy, nameCopy, handleCopy, &v29);
    v20 = v29;
    v21 = v20;
    if (v19)
    {
      if (error)
      {
        v22 = SESDefaultLogObject();
        *error = SESCreateAndLogError();
      }
    }

    else
    {
      if (!v20)
      {
        v27 = sub_1003AD0FC(self);
        v28 = [NSEntityDescription insertNewObjectForEntityForName:@"SEEndPointEntity" inManagedObjectContext:v27];

        [v28 setIdentifier:identifierCopy];
        [v28 setClientName:nameCopy];
        [v28 setAuthority:entityCopy];
        [v28 setInstance:instanceEntityCopy];
        if ([v28 validateForInsert:error])
        {
          v23 = v28;
        }

        else
        {
          v23 = 0;
        }

        goto LABEL_9;
      }

      if (error)
      {
        v26 = v20;
        v23 = 0;
        *error = v21;
        goto LABEL_9;
      }
    }

    v23 = 0;
LABEL_9:

    goto LABEL_13;
  }

  if (error)
  {
    v24 = SESDefaultLogObject();
    *error = SESCreateAndLogError();
  }

  v23 = 0;
LABEL_13:

  return v23;
}

- (id)stageEndPointEntityUpdates:(id)updates fromEndPoint:(id)point
{
  updatesCopy = updates;
  pointCopy = point;
  v13 = 0;
  v7 = [pointCopy encodeWithError:&v13];
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
    [updatesCopy setEndPointData:v7];
    v11 = 0;
  }

  return v11;
}

@end