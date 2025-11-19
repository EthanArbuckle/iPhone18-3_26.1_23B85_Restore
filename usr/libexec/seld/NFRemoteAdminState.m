@interface NFRemoteAdminState
- (BOOL)pendingImmediateRetry;
- (NFRemoteAdminState)initWithCoder:(id)a3;
- (NFRemoteAdminState)initWithIdentifier:(id)a3 sourceURL:(id)a4 retryDate:(id)a5;
- (NFRemoteAdminStateRetryInterval)retryInterval;
- (id)description;
- (void)clearRetryInterval;
- (void)encodeWithCoder:(id)a3;
- (void)refreshRetryInterval;
- (void)save;
- (void)setPendingImmediateRetry:(BOOL)a3;
- (void)updateNextRetryInterval:(id)a3;
@end

@implementation NFRemoteAdminState

- (NFRemoteAdminState)initWithIdentifier:(id)a3 sourceURL:(id)a4 retryDate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = NFRemoteAdminState;
  v11 = [(NFRemoteAdminState *)&v17 init];
  if (v11)
  {
    v12 = [v8 copy];
    serverIdentifier = v11->_serverIdentifier;
    v11->_serverIdentifier = v12;

    objc_storeStrong(&v11->_sourceUrl, a4);
    v14 = [v10 copy];
    retryAfter = v11->_retryAfter;
    v11->_retryAfter = v14;

    v11->_retryCount = 0;
  }

  return v11;
}

- (void)save
{
  v2 = sub_100033310();
  sub_10003563C(v2);
}

- (void)updateNextRetryInterval:(id)a3
{
  v9 = a3;
  v4 = self;
  objc_sync_enter(v4);
  if (v9)
  {
    v4->_retryCount = v9[1];
    v5 = v9[2];
  }

  else
  {
    v5 = 0;
    v4->_retryCount = 0;
  }

  v6 = v5;
  v7 = [v6 copy];
  retryAfter = v4->_retryAfter;
  v4->_retryAfter = v7;

  objc_sync_exit(v4);
}

- (void)refreshRetryInterval
{
  obj = self;
  objc_sync_enter(obj);
  if (obj->_hasPendingConnection)
  {
    obj->_retryCount = 0;
    v2 = +[NSDate date];
    retryAfter = obj->_retryAfter;
    obj->_retryAfter = v2;

    obj->_hasPendingConnection = 0;
    [(NFRemoteAdminState *)obj save];
  }

  objc_sync_exit(obj);
}

- (void)setPendingImmediateRetry:(BOOL)a3
{
  obj = self;
  objc_sync_enter(obj);
  obj->_hasPendingConnection = a3;
  objc_sync_exit(obj);
}

- (BOOL)pendingImmediateRetry
{
  v2 = self;
  objc_sync_enter(v2);
  hasPendingConnection = v2->_hasPendingConnection;
  objc_sync_exit(v2);

  return hasPendingConnection;
}

- (void)clearRetryInterval
{
  obj = self;
  objc_sync_enter(obj);
  retryAfter = obj->_retryAfter;
  obj->_retryCount = 0;
  obj->_retryAfter = 0;

  objc_sync_exit(obj);
}

- (NFRemoteAdminStateRetryInterval)retryInterval
{
  v3 = objc_alloc_init(NFRemoteAdminStateRetryInterval);
  v4 = self;
  objc_sync_enter(v4);
  if (v3)
  {
    v3->_delayValueIndex = v4->_retryCount;
    objc_setProperty_nonatomic_copy(v3, v5, v4->_retryAfter, 16);
  }

  objc_sync_exit(v4);

  return v3;
}

- (id)description
{
  v3 = [NSString alloc];
  v4 = [(NFRemoteAdminState *)self serverIdentifier];
  v5 = [(NFRemoteAdminState *)self retryInterval];
  v6 = v5;
  if (v5)
  {
    v7 = *(v5 + 16);
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = "N";
  if ([(NFRemoteAdminState *)self pendingImmediateRetry])
  {
    v10 = "Y";
  }

  else
  {
    v10 = "N";
  }

  v11 = [(NFRemoteAdminState *)self unsentScriptResponse];
  if ([v11 count])
  {
    v9 = "Y";
  }

  v12 = [(NFRemoteAdminState *)self sourceUrl];
  v13 = [v3 initWithFormat:@"{ServerId: %@, retryInterval: %@, immediate: %s, unsent: %s, sourceURL: %@", v4, v8, v10, v9, v12];

  return v13;
}

- (NFRemoteAdminState)initWithCoder:(id)a3
{
  v4 = a3;
  v38.receiver = self;
  v38.super_class = NFRemoteAdminState;
  v5 = [(NFRemoteAdminState *)&v38 init];
  if (v5)
  {
    v6 = [NSSet alloc];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v37 = [v6 initWithObjects:{v7, v8, v9, v10, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serverIdentifier"];
    serverIdentifier = v5->_serverIdentifier;
    v5->_serverIdentifier = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hasPendingConnection"];
    v5->_hasPendingConnection = [v13 BOOLValue];
    v14 = [v4 decodeObjectOfClasses:v37 forKey:@"unsentScriptResponse"];
    unsentScriptResponse = v5->_unsentScriptResponse;
    v5->_unsentScriptResponse = v14;

    v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"retryCount"];

    v5->_retryCount = [v36 unsignedIntegerValue];
    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"retryAfter"];
    retryAfter = v5->_retryAfter;
    v5->_retryAfter = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sourceUrl"];
    sourceUrl = v5->_sourceUrl;
    v5->_sourceUrl = v18;

    v20 = [NFNSCheckedDecoder coder:v4 decodeDictOfClass:objc_opt_class() forKey:@"httpHeaderInfo"];
    httpHeaderInfo = v5->_httpHeaderInfo;
    v5->_httpHeaderInfo = v20;

    v22 = [NSSet alloc];
    v23 = objc_opt_class();
    v24 = objc_opt_class();
    v25 = objc_opt_class();
    v26 = objc_opt_class();
    v27 = objc_opt_class();
    v28 = objc_opt_class();
    v29 = objc_opt_class();
    v30 = [v22 initWithObjects:{v23, v24, v25, v26, v27, v28, v29, objc_opt_class(), 0}];
    v31 = [v4 decodeObjectOfClasses:v30 forKey:@"APNFirstRequester"];
    APNConnectionRequesterFirst = v5->_APNConnectionRequesterFirst;
    v5->_APNConnectionRequesterFirst = v31;

    v33 = [v4 decodeObjectOfClasses:v30 forKey:@"APNLastRequester"];
    APNConnectionRequesterLatest = v5->_APNConnectionRequesterLatest;
    v5->_APNConnectionRequesterLatest = v33;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  serverIdentifier = self->_serverIdentifier;
  v7 = a3;
  [v7 encodeObject:serverIdentifier forKey:@"serverIdentifier"];
  v5 = [NSNumber numberWithBool:self->_hasPendingConnection];
  [v7 encodeObject:v5 forKey:@"hasPendingConnection"];

  [v7 encodeObject:self->_unsentScriptResponse forKey:@"unsentScriptResponse"];
  v6 = [NSNumber numberWithUnsignedInteger:self->_retryCount];
  [v7 encodeObject:v6 forKey:@"retryCount"];

  [v7 encodeObject:self->_retryAfter forKey:@"retryAfter"];
  [v7 encodeObject:self->_sourceUrl forKey:@"sourceUrl"];
  [v7 encodeObject:self->_httpHeaderInfo forKey:@"httpHeaderInfo"];
  [v7 encodeObject:self->_APNConnectionRequesterFirst forKey:@"APNFirstRequester"];
  [v7 encodeObject:self->_APNConnectionRequesterLatest forKey:@"APNLastRequester"];
}

@end