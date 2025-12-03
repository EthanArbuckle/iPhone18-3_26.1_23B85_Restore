@interface NFRemoteAdminState
- (BOOL)pendingImmediateRetry;
- (NFRemoteAdminState)initWithCoder:(id)coder;
- (NFRemoteAdminState)initWithIdentifier:(id)identifier sourceURL:(id)l retryDate:(id)date;
- (NFRemoteAdminStateRetryInterval)retryInterval;
- (id)description;
- (void)clearRetryInterval;
- (void)encodeWithCoder:(id)coder;
- (void)refreshRetryInterval;
- (void)save;
- (void)setPendingImmediateRetry:(BOOL)retry;
- (void)updateNextRetryInterval:(id)interval;
@end

@implementation NFRemoteAdminState

- (NFRemoteAdminState)initWithIdentifier:(id)identifier sourceURL:(id)l retryDate:(id)date
{
  identifierCopy = identifier;
  lCopy = l;
  dateCopy = date;
  v17.receiver = self;
  v17.super_class = NFRemoteAdminState;
  v11 = [(NFRemoteAdminState *)&v17 init];
  if (v11)
  {
    v12 = [identifierCopy copy];
    serverIdentifier = v11->_serverIdentifier;
    v11->_serverIdentifier = v12;

    objc_storeStrong(&v11->_sourceUrl, l);
    v14 = [dateCopy copy];
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

- (void)updateNextRetryInterval:(id)interval
{
  intervalCopy = interval;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (intervalCopy)
  {
    selfCopy->_retryCount = intervalCopy[1];
    v5 = intervalCopy[2];
  }

  else
  {
    v5 = 0;
    selfCopy->_retryCount = 0;
  }

  v6 = v5;
  v7 = [v6 copy];
  retryAfter = selfCopy->_retryAfter;
  selfCopy->_retryAfter = v7;

  objc_sync_exit(selfCopy);
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

- (void)setPendingImmediateRetry:(BOOL)retry
{
  obj = self;
  objc_sync_enter(obj);
  obj->_hasPendingConnection = retry;
  objc_sync_exit(obj);
}

- (BOOL)pendingImmediateRetry
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  hasPendingConnection = selfCopy->_hasPendingConnection;
  objc_sync_exit(selfCopy);

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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (v3)
  {
    v3->_delayValueIndex = selfCopy->_retryCount;
    objc_setProperty_nonatomic_copy(v3, v5, selfCopy->_retryAfter, 16);
  }

  objc_sync_exit(selfCopy);

  return v3;
}

- (id)description
{
  v3 = [NSString alloc];
  serverIdentifier = [(NFRemoteAdminState *)self serverIdentifier];
  retryInterval = [(NFRemoteAdminState *)self retryInterval];
  v6 = retryInterval;
  if (retryInterval)
  {
    v7 = *(retryInterval + 16);
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

  unsentScriptResponse = [(NFRemoteAdminState *)self unsentScriptResponse];
  if ([unsentScriptResponse count])
  {
    v9 = "Y";
  }

  sourceUrl = [(NFRemoteAdminState *)self sourceUrl];
  v13 = [v3 initWithFormat:@"{ServerId: %@, retryInterval: %@, immediate: %s, unsent: %s, sourceURL: %@", serverIdentifier, v8, v10, v9, sourceUrl];

  return v13;
}

- (NFRemoteAdminState)initWithCoder:(id)coder
{
  coderCopy = coder;
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
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serverIdentifier"];
    serverIdentifier = v5->_serverIdentifier;
    v5->_serverIdentifier = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hasPendingConnection"];
    v5->_hasPendingConnection = [v13 BOOLValue];
    v14 = [coderCopy decodeObjectOfClasses:v37 forKey:@"unsentScriptResponse"];
    unsentScriptResponse = v5->_unsentScriptResponse;
    v5->_unsentScriptResponse = v14;

    v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"retryCount"];

    v5->_retryCount = [v36 unsignedIntegerValue];
    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"retryAfter"];
    retryAfter = v5->_retryAfter;
    v5->_retryAfter = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sourceUrl"];
    sourceUrl = v5->_sourceUrl;
    v5->_sourceUrl = v18;

    v20 = [NFNSCheckedDecoder coder:coderCopy decodeDictOfClass:objc_opt_class() forKey:@"httpHeaderInfo"];
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
    v31 = [coderCopy decodeObjectOfClasses:v30 forKey:@"APNFirstRequester"];
    APNConnectionRequesterFirst = v5->_APNConnectionRequesterFirst;
    v5->_APNConnectionRequesterFirst = v31;

    v33 = [coderCopy decodeObjectOfClasses:v30 forKey:@"APNLastRequester"];
    APNConnectionRequesterLatest = v5->_APNConnectionRequesterLatest;
    v5->_APNConnectionRequesterLatest = v33;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  serverIdentifier = self->_serverIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:serverIdentifier forKey:@"serverIdentifier"];
  v5 = [NSNumber numberWithBool:self->_hasPendingConnection];
  [coderCopy encodeObject:v5 forKey:@"hasPendingConnection"];

  [coderCopy encodeObject:self->_unsentScriptResponse forKey:@"unsentScriptResponse"];
  v6 = [NSNumber numberWithUnsignedInteger:self->_retryCount];
  [coderCopy encodeObject:v6 forKey:@"retryCount"];

  [coderCopy encodeObject:self->_retryAfter forKey:@"retryAfter"];
  [coderCopy encodeObject:self->_sourceUrl forKey:@"sourceUrl"];
  [coderCopy encodeObject:self->_httpHeaderInfo forKey:@"httpHeaderInfo"];
  [coderCopy encodeObject:self->_APNConnectionRequesterFirst forKey:@"APNFirstRequester"];
  [coderCopy encodeObject:self->_APNConnectionRequesterLatest forKey:@"APNLastRequester"];
}

@end