@interface REMCDObjectEffectiveVersionValidationDelegateImpl
- (BOOL)preprocessTreeNode:(id)a3;
- (RDStoreControllerManagedObjectContext)managedObjectContext;
- (REMCDObjectEffectiveVersionValidationDelegateImpl)initWithManagedObjectContext:(id)a3;
- (void)processBatchOfTreeNodes:(id)a3;
@end

@implementation REMCDObjectEffectiveVersionValidationDelegateImpl

- (REMCDObjectEffectiveVersionValidationDelegateImpl)initWithManagedObjectContext:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = REMCDObjectEffectiveVersionValidationDelegateImpl;
  v5 = [(REMCDObjectEffectiveVersionValidationDelegateImpl *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_managedObjectContext, v4);
  }

  return v6;
}

- (BOOL)preprocessTreeNode:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = REMDynamicCast();
  v6 = v5;
  if (v5)
  {
    v7 = [v5 managedObjectID];
    v8 = [v6 backingCDObject];
    if (v8)
    {
LABEL_3:
      v9 = [v8 validateEffectiveMinimumSupportedVersionApplyingChange:1];
LABEL_20:

      goto LABEL_21;
    }

    v10 = [(REMCDObjectEffectiveVersionValidationDelegateImpl *)self managedObjectContext];
    v17 = 0;
    v11 = [v10 existingObjectWithID:v7 error:&v17];
    v12 = v17;

    if (v11)
    {
      v13 = v12 == 0;
    }

    else
    {
      v13 = 0;
    }

    if (v13)
    {
      objc_opt_class();
      v15 = REMDynamicCast();
      if (v15)
      {
        v8 = v15;
        [v6 setBackingCDObject:v15];

        goto LABEL_3;
      }

      v14 = +[REMLogStore write];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10076AB64(v7, v11, v14);
      }
    }

    else
    {
      v14 = +[REMLogStore write];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10076AC1C();
      }
    }

    v8 = +[REMLogStore write];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10076ACA0();
    }

    v9 = 0;
    goto LABEL_20;
  }

  v7 = +[REMLogStore write];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    sub_10076AD14();
  }

  v9 = 0;
LABEL_21:

  return v9;
}

- (void)processBatchOfTreeNodes:(id)a3
{
  v4 = a3;
  v5 = [(REMCDObjectEffectiveVersionValidationDelegateImpl *)self managedObjectContext];
  v6 = [v5 hasChanges];

  if (v6)
  {
    v7 = [(REMCDObjectEffectiveVersionValidationDelegateImpl *)self managedObjectContext];
    v8 = [v7 updatedObjects];
    v9 = [v8 count];

    v10 = [(REMCDObjectEffectiveVersionValidationDelegateImpl *)self managedObjectContext];
    v21 = 0;
    v11 = [v10 coreDataSave:&v21];
    v12 = v21;

    v13 = +[REMLogStore write];
    v14 = v13;
    if (!v11 || v12)
    {
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_10;
      }

      v15 = [(REMCDObjectEffectiveVersionValidationDelegateImpl *)self managedObjectContext];
      v16 = [v15 transactionAuthor];
      v19 = [v4 count];
      *buf = 138544130;
      v23 = v16;
      v24 = 2048;
      v25 = v19;
      v26 = 2048;
      v27 = v9;
      v28 = 2114;
      v29 = v12;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "REMCDObjectEffectiveVersionValidationDelegateImpl.processBatchOfTreeNodes: SAVE COREDATA ERROR {author: %{public}@, nodesToFlush.count: %ld, update.count: %ld, error: %{public}@}", buf, 0x2Au);
    }

    else
    {
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
LABEL_10:

        goto LABEL_11;
      }

      v15 = [(REMCDObjectEffectiveVersionValidationDelegateImpl *)self managedObjectContext];
      v16 = [v15 transactionAuthor];
      v17 = [v4 count];
      *buf = 138543874;
      v23 = v16;
      v24 = 2048;
      v25 = v17;
      v26 = 2048;
      v27 = v9;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "REMCDObjectEffectiveVersionValidationDelegateImpl.processBatchOfTreeNodes: SAVE COREDATA {author: %{public}@, nodesToFlush.count: %ld, update.count: %ld}", buf, 0x20u);
    }

    goto LABEL_10;
  }

  v12 = +[REMLogStore write];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v14 = [(REMCDObjectEffectiveVersionValidationDelegateImpl *)self managedObjectContext];
    v18 = [v14 transactionAuthor];
    *buf = 138543618;
    v23 = v18;
    v24 = 2048;
    v25 = [v4 count];
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "REMCDObjectEffectiveVersionValidationDelegateImpl.processBatchOfTreeNodes: No changes in MoC, no need to save {author: %{public}@, nodesToFlush.count: %ld}", buf, 0x16u);

    goto LABEL_10;
  }

LABEL_11:

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000BEFE4;
  v20[3] = &unk_1008DBE00;
  v20[4] = self;
  [v4 enumerateObjectsUsingBlock:v20];
}

- (RDStoreControllerManagedObjectContext)managedObjectContext
{
  WeakRetained = objc_loadWeakRetained(&self->_managedObjectContext);

  return WeakRetained;
}

@end