@interface MSDContentServerURLRetryPolicy
- (MSDContentServerURLRetryPolicy)initWithContext:(id)a3;
- (id)buildLocalURLListFromContext:(id)a3;
- (id)getCredential;
- (id)getURLSchemaList:(id)a3;
- (id)nextTry;
@end

@implementation MSDContentServerURLRetryPolicy

- (MSDContentServerURLRetryPolicy)initWithContext:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = MSDContentServerURLRetryPolicy;
  v5 = [(MSDContentServerURLRetryPolicy *)&v20 init];
  if (v5)
  {
    v6 = [v4 fdc];
    [(MSDContentServerURLRetryPolicy *)v5 setFdc:v6];

    v7 = [v4 fdc];
    v8 = [v4 originServer];
    v9 = [v7 localCredentialForOriginServer:v8];
    [(MSDContentServerURLRetryPolicy *)v5 setLocalCredential:v9];

    v10 = [v4 fdc];
    v11 = [v4 originServer];
    v12 = [v10 remoteCredentialForOriginServer:v11];
    [(MSDContentServerURLRetryPolicy *)v5 setRemoteCredential:v12];

    v13 = [(MSDContentServerURLRetryPolicy *)v5 localCredential];
    [(MSDContentServerURLRetryPolicy *)v5 setCachingHubAvailable:v13 != 0];

    [(MSDContentServerURLRetryPolicy *)v5 setServerType:@"remoteCDN"];
    if ([v4 tryCachingHub] && -[MSDContentServerURLRetryPolicy cachingHubAvailable](v5, "cachingHubAvailable"))
    {
      v14 = [(MSDContentServerURLRetryPolicy *)v5 buildLocalURLListFromContext:v4];
      [(MSDContentServerURLRetryPolicy *)v5 setLocalURLList:v14];

      [(MSDContentServerURLRetryPolicy *)v5 setServerType:@"localCachingHub"];
    }

    v15 = [(MSDContentServerURLRetryPolicy *)v5 remoteCredential];

    if (v15)
    {
      v16 = [(MSDContentServerURLRetryPolicy *)v5 remoteCredential];
      v17 = [(MSDContentServerURLRetryPolicy *)v5 getURLSchemaList:v16];
      [(MSDContentServerURLRetryPolicy *)v5 setRemoteURLList:v17];
    }

    [(MSDContentServerURLRetryPolicy *)v5 setCurrentTry:0];
    -[MSDContentServerURLRetryPolicy setLocalHubReachable:](v5, "setLocalHubReachable:", [v4 tryCachingHub]);
    v18 = v5;
  }

  return v5;
}

- (id)nextTry
{
  v3 = [(MSDContentServerURLRetryPolicy *)self serverType];
  v4 = [v3 isEqualToString:@"localCachingHub"];

  if (v4)
  {
    v5 = [(MSDContentServerURLRetryPolicy *)self currentTry];
    v6 = [(MSDContentServerURLRetryPolicy *)self localURLList];
    v7 = [v6 count];

    if (v5 < v7)
    {
      v8 = [(MSDContentServerURLRetryPolicy *)self localURLList];
      v9 = [v8 objectAtIndex:{-[MSDContentServerURLRetryPolicy currentTry](self, "currentTry")}];

      goto LABEL_8;
    }

    v10 = sub_100063A54();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000D8C20(self, v10);
    }

    [(MSDContentServerURLRetryPolicy *)self setLocalHubReachable:0];
    [(MSDContentServerURLRetryPolicy *)self setServerType:@"remoteCDN"];
    [(MSDContentServerURLRetryPolicy *)self setCurrentTry:0];
  }

  v9 = 0;
LABEL_8:
  v11 = [(MSDContentServerURLRetryPolicy *)self serverType];
  v12 = [v11 isEqualToString:@"remoteCDN"];

  if (v12)
  {
    if (-[MSDContentServerURLRetryPolicy currentTry](self, "currentTry") || (-[MSDContentServerURLRetryPolicy remoteURLList](self, "remoteURLList"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 count], v14, !v15))
    {
      v13 = sub_100063A54();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1000D8C98(self, v13);
      }
    }

    else
    {
      v13 = [(MSDContentServerURLRetryPolicy *)self remoteURLList];
      v16 = [v13 objectAtIndex:0];

      v9 = v16;
    }
  }

  if (v9)
  {
    v17 = objc_alloc_init(MSDServerRetryInfo);
    [(MSDServerRetryInfo *)v17 setUrlSchema:v9];
    v18 = [(MSDContentServerURLRetryPolicy *)self serverType];
    [(MSDServerRetryInfo *)v17 setServerType:v18];

    [(MSDServerRetryInfo *)v17 setLocalHubReachable:[(MSDContentServerURLRetryPolicy *)self localHubReachable]];
    v19 = [(MSDContentServerURLRetryPolicy *)self getCredential];
    [(MSDServerRetryInfo *)v17 setCredential:v19];
  }

  else
  {
    v17 = 0;
  }

  [(MSDContentServerURLRetryPolicy *)self setCurrentTry:[(MSDContentServerURLRetryPolicy *)self currentTry]+ 1];

  return v17;
}

- (id)getCredential
{
  v3 = [(MSDContentServerURLRetryPolicy *)self serverType];
  if ([v3 isEqualToString:@"localCachingHub"])
  {
    [(MSDContentServerURLRetryPolicy *)self localCredential];
  }

  else
  {
    [(MSDContentServerURLRetryPolicy *)self remoteCredential];
  }
  v4 = ;

  return v4;
}

- (id)buildLocalURLListFromContext:(id)a3
{
  v4 = a3;
  v5 = [(MSDContentServerURLRetryPolicy *)self localCredential];
  v6 = [(MSDContentServerURLRetryPolicy *)self getURLSchemaList:v5];

  v7 = [v4 cachedLocalURL];
  v8 = [v6 containsObject:v7];

  if (v8)
  {
    v9 = [v4 cachedLocalURL];
    [v6 removeObject:v9];

    v10 = [v4 cachedLocalURL];
    [v6 insertObject:v10 atIndex:0];
  }

  return v6;
}

- (id)getURLSchemaList:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableArray);
  v6 = [v4 objectForKey:@"URLSchema"];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v5 addObjectsFromArray:v6];
LABEL_6:
      v7 = v5;
      goto LABEL_11;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v5 addObject:v6];
      goto LABEL_6;
    }

    v8 = sub_100063A54();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = 138543874;
      v12 = self;
      v13 = 2114;
      v14 = objc_opt_class();
      v15 = 2114;
      v16 = v4;
      v10 = v14;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@: Unrecognized URL Scheme type :%{public}@ from download credential %{public}@", &v11, 0x20u);
    }
  }

  else
  {
    sub_1000D8D10(self, v4);
  }

  v7 = 0;
LABEL_11:

  return v7;
}

@end