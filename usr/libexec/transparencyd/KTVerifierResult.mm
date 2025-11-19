@interface KTVerifierResult
+ (id)resultsForUris:(id)a3 application:(id)a4 failure:(id)a5;
- (BOOL)sentToIDS;
- (KTVerifierResult)initWithUri:(id)a3 application:(id)a4 ktResult:(unint64_t)a5 transparentData:(id)a6 loggableDatas:(id)a7;
- (unint64_t)optInTernaryState;
- (void)setOptInTernaryState:(unint64_t)a3;
@end

@implementation KTVerifierResult

- (unint64_t)optInTernaryState
{
  v2 = objc_getAssociatedObject(self, @"optInKey");
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (void)setOptInTernaryState:(unint64_t)a3
{
  v4 = [NSNumber numberWithUnsignedInteger:a3];
  objc_setAssociatedObject(self, @"optInKey", v4, 1);
}

- (BOOL)sentToIDS
{
  v2 = objc_getAssociatedObject(self, @"sentToIdsKey");
  v3 = [v2 BOOLValue];

  return v3;
}

+ (id)resultsForUris:(id)a3 application:(id)a4 failure:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v7 count]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = v7;
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v20 + 1) + 8 * i);
        v17 = [KTVerifierResult alloc];
        v18 = [v17 initWithUri:v16 application:v8 failure:{v9, v20}];
        [v10 addObject:v18];
      }

      v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v13);
  }

  return v10;
}

- (KTVerifierResult)initWithUri:(id)a3 application:(id)a4 ktResult:(unint64_t)a5 transparentData:(id)a6 loggableDatas:(id)a7
{
  v12 = a6;
  v13 = a7;
  v14 = [(KTVerifierResult *)self initWithUri:a3 application:a4 ktResult:a5];
  if (v14)
  {
    v15 = [v12 currentPublicID];
    [(KTVerifierResult *)v14 setPublicID:v15];

    -[KTVerifierResult setStaticAccountKeyEnforced:](v14, "setStaticAccountKeyEnforced:", [v12 staticKeyEnforced]);
    -[KTVerifierResult setStaticAccountKeyStatus:](v14, "setStaticAccountKeyStatus:", [v12 staticKeyStatus]);
    v16 = [v12 currentPublicID];
    v17 = [v16 publicKeyInfo];

    -[KTVerifierResult setEverOptedIn:](v14, "setEverOptedIn:", [v12 accountEverOptedIn:v17] == 1);
    -[KTVerifierResult setRecentlyOptedIn:](v14, "setRecentlyOptedIn:", [v12 accountRecentlyOptedIn:v17] == 1);
    -[KTVerifierResult setOptedIn:](v14, "setOptedIn:", [v12 currentAccountOptInState] == 1);
    -[KTVerifierResult setOptInTernaryState:](v14, "setOptInTernaryState:", [v12 currentAccountOptInState]);
    [(KTVerifierResult *)v14 setLoggableDatas:v13];
  }

  return v14;
}

@end