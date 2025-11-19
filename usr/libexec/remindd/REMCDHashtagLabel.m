@interface REMCDHashtagLabel
- (BOOL)validateForInsert:(id *)a3;
- (BOOL)validateForInsert_Swift:(id *)a3;
- (id)remChangedObjectID;
- (void)didSave;
- (void)willSave;
- (void)willSave_Swift;
@end

@implementation REMCDHashtagLabel

- (BOOL)validateForInsert:(id *)a3
{
  v12.receiver = self;
  v12.super_class = REMCDHashtagLabel;
  if (![(REMCDHashtagLabel *)&v12 validateForInsert:?])
  {
    return 0;
  }

  v5 = [(REMCDHashtagLabel *)self accountIdentifier];
  v6 = [v5 length];

  if (!v6)
  {
    v7 = +[REMLogStore write];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_100769628(self, v7);
    }
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  v8 = self;
  v9 = [(REMCDHashtagLabel *)v8 validateForInsert_Swift:a3];
  if (a3 && *a3)
  {
    v10 = +[REMLogStore write];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100769730(v8, a3, v10);
    }
  }

  return v9;
}

- (void)willSave
{
  v5.receiver = self;
  v5.super_class = REMCDHashtagLabel;
  [(REMCDHashtagLabel *)&v5 willSave];
  v3 = [(REMCDHashtagLabel *)self uuidForChangeTracking];

  if (!v3)
  {
    v4 = +[NSUUID UUID];
    [(REMCDHashtagLabel *)self setUuidForChangeTracking:v4];
  }

  if (objc_opt_respondsToSelector())
  {
    [(REMCDHashtagLabel *)self willSave_Swift];
  }
}

- (void)didSave
{
  v3.receiver = self;
  v3.super_class = REMCDHashtagLabel;
  [(REMCDHashtagLabel *)&v3 didSave];
  if (objc_opt_respondsToSelector())
  {
    [(REMCDHashtagLabel *)self didSave_Swift];
  }
}

- (id)remChangedObjectID
{
  v3 = [(REMCDHashtagLabel *)self uuidForChangeTracking];
  if (v3)
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [REMObjectID objectIDWithUUID:v3 entityName:v5];
  }

  else
  {
    v7 = +[REMLogStore read];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10076982C(self, v7);
    }

    v6 = 0;
  }

  return v6;
}

- (void)willSave_Swift
{
  v2 = self;
  if (![(REMCDHashtagLabel *)v2 didCleanUpManualSortHintOnDeletion])
  {
    [(REMCDHashtagLabel *)v2 setDidCleanUpManualSortHintOnDeletion:1];
    sub_100471CB8();
  }
}

- (BOOL)validateForInsert_Swift:(id *)a3
{
  v3 = self;
  if (![(REMCDHashtagLabel *)v3 didEnqueueApprovalCascade])
  {
    [(REMCDHashtagLabel *)v3 setDidEnqueueApprovalCascade:1];
    sub_100472C1C();
  }

  return 1;
}

@end