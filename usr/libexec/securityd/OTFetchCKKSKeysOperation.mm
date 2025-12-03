@interface OTFetchCKKSKeysOperation
- (OTFetchCKKSKeysOperation)initWithDependencies:(id)dependencies refetchNeeded:(BOOL)needed;
- (OTFetchCKKSKeysOperation)initWithDependencies:(id)dependencies viewsToFetch:(id)fetch;
- (void)groupStart;
@end

@implementation OTFetchCKKSKeysOperation

- (void)groupStart
{
  v3 = +[NSMutableArray array];
  ckks = [(OTFetchCKKSKeysOperation *)self ckks];

  if (ckks)
  {
    v5 = sub_100006274("octagon-ckks");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      ckks2 = [(OTFetchCKKSKeysOperation *)self ckks];
      *buf = 138412290;
      v25 = ckks2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Waiting for %@", buf, 0xCu);
    }

    ckks3 = [(OTFetchCKKSKeysOperation *)self ckks];
    v8 = [ckks3 findKeySets:{-[OTFetchCKKSKeysOperation fetchBeforeGettingKeyset](self, "fetchBeforeGettingKeyset")}];
    v9 = [v8 timeout:{-[OTFetchCKKSKeysOperation desiredTimeout](self, "desiredTimeout")}];
    [v3 addObject:v9];
  }

  objc_initWeak(buf, self);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10009DB54;
  v20[3] = &unk_100344D38;
  objc_copyWeak(&v22, buf);
  v10 = v3;
  v21 = v10;
  v11 = [CKKSResultOperation named:@"proceed-with-ckks-keys" withBlock:v20];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v16 objects:v23 count:16];
  if (v13)
  {
    v14 = *v17;
    do
    {
      v15 = 0;
      do
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v12);
        }

        [v11 addDependency:{*(*(&v16 + 1) + 8 * v15), v16}];
        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v12 countByEnumeratingWithState:&v16 objects:v23 count:16];
    }

    while (v13);
  }

  [(CKKSGroupOperation *)self runBeforeGroupFinished:v11];
  objc_destroyWeak(&v22);
  objc_destroyWeak(buf);
}

- (OTFetchCKKSKeysOperation)initWithDependencies:(id)dependencies viewsToFetch:(id)fetch
{
  fetchCopy = fetch;
  v8 = [(OTFetchCKKSKeysOperation *)self initWithDependencies:dependencies refetchNeeded:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong((&v8->_ckks + 6), fetch);
  }

  return v9;
}

- (OTFetchCKKSKeysOperation)initWithDependencies:(id)dependencies refetchNeeded:(BOOL)needed
{
  dependenciesCopy = dependencies;
  v17.receiver = self;
  v17.super_class = OTFetchCKKSKeysOperation;
  v7 = [(CKKSGroupOperation *)&v17 init];
  if (v7)
  {
    ckks = [dependenciesCopy ckks];
    v9 = *(v7 + 174);
    *(v7 + 174) = ckks;

    v10 = *(v7 + 182);
    *(v7 + 182) = 0;

    v11 = *(v7 + 134);
    *(v7 + 134) = &__NSArray0__struct;

    v12 = *(v7 + 150);
    *(v7 + 150) = &__NSArray0__struct;

    v13 = *(v7 + 142);
    *(v7 + 142) = &__NSArray0__struct;

    *(v7 + 166) = 15000000000;
    v7[128] = needed;
    v14 = +[NSSet set];
    v15 = *(v7 + 158);
    *(v7 + 158) = v14;
  }

  return v7;
}

@end