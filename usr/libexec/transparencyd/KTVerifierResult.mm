@interface KTVerifierResult
+ (id)resultsForUris:(id)uris application:(id)application failure:(id)failure;
- (BOOL)sentToIDS;
- (KTVerifierResult)initWithUri:(id)uri application:(id)application ktResult:(unint64_t)result transparentData:(id)data loggableDatas:(id)datas;
- (unint64_t)optInTernaryState;
- (void)setOptInTernaryState:(unint64_t)state;
@end

@implementation KTVerifierResult

- (unint64_t)optInTernaryState
{
  v2 = objc_getAssociatedObject(self, @"optInKey");
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setOptInTernaryState:(unint64_t)state
{
  v4 = [NSNumber numberWithUnsignedInteger:state];
  objc_setAssociatedObject(self, @"optInKey", v4, 1);
}

- (BOOL)sentToIDS
{
  v2 = objc_getAssociatedObject(self, @"sentToIdsKey");
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

+ (id)resultsForUris:(id)uris application:(id)application failure:(id)failure
{
  urisCopy = uris;
  applicationCopy = application;
  failureCopy = failure;
  v10 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [urisCopy count]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = urisCopy;
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
        v18 = [v17 initWithUri:v16 application:applicationCopy failure:{failureCopy, v20}];
        [v10 addObject:v18];
      }

      v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v13);
  }

  return v10;
}

- (KTVerifierResult)initWithUri:(id)uri application:(id)application ktResult:(unint64_t)result transparentData:(id)data loggableDatas:(id)datas
{
  dataCopy = data;
  datasCopy = datas;
  v14 = [(KTVerifierResult *)self initWithUri:uri application:application ktResult:result];
  if (v14)
  {
    currentPublicID = [dataCopy currentPublicID];
    [(KTVerifierResult *)v14 setPublicID:currentPublicID];

    -[KTVerifierResult setStaticAccountKeyEnforced:](v14, "setStaticAccountKeyEnforced:", [dataCopy staticKeyEnforced]);
    -[KTVerifierResult setStaticAccountKeyStatus:](v14, "setStaticAccountKeyStatus:", [dataCopy staticKeyStatus]);
    currentPublicID2 = [dataCopy currentPublicID];
    publicKeyInfo = [currentPublicID2 publicKeyInfo];

    -[KTVerifierResult setEverOptedIn:](v14, "setEverOptedIn:", [dataCopy accountEverOptedIn:publicKeyInfo] == 1);
    -[KTVerifierResult setRecentlyOptedIn:](v14, "setRecentlyOptedIn:", [dataCopy accountRecentlyOptedIn:publicKeyInfo] == 1);
    -[KTVerifierResult setOptedIn:](v14, "setOptedIn:", [dataCopy currentAccountOptInState] == 1);
    -[KTVerifierResult setOptInTernaryState:](v14, "setOptInTernaryState:", [dataCopy currentAccountOptInState]);
    [(KTVerifierResult *)v14 setLoggableDatas:datasCopy];
  }

  return v14;
}

@end