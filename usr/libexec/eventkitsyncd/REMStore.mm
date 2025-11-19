@interface REMStore
+ (id)eks_storeForSyncing;
- (id)eks_defaultLocalList;
- (id)eks_localAccount;
@end

@implementation REMStore

+ (id)eks_storeForSyncing
{
  v2 = objc_alloc_init(REMStore);
  [v2 setMode:3];

  return v2;
}

- (id)eks_localAccount
{
  v3 = +[REMAccount localAccountID];
  v9 = 0;
  v4 = [(REMStore *)self fetchAccountWithObjectID:v3 error:&v9];
  v5 = v9;

  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_10006EC9C(v5, v7);
    }
  }

  return v4;
}

- (id)eks_defaultLocalList
{
  v2 = [(REMStore *)self eks_localAccount];
  v8 = 0;
  v3 = [v2 fetchListsWithError:&v8];
  v4 = v8;
  if (v3)
  {
    v5 = [v3 firstObject];
  }

  else
  {
    v6 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_10006ED14(v4, v6);
    }

    v5 = 0;
  }

  return v5;
}

@end