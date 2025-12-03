@interface EPNanoRegistryStatusCodeElection
+ (id)newService:(id)service;
+ (id)sharedInstanceWithQueue:(id)queue delegate:(id)delegate;
- (EPNanoRegistryStatusCodeElection)initWithQueue:(id)queue delegate:(id)delegate;
- (EPNanoRegistryStatusCodeElectionDelegate)delegate;
- (NSString)statusCodeString;
- (id)newStatusCodeVote:(unint64_t)vote;
- (id)statusCodeStringForStatusCode:(unint64_t)code;
- (unint64_t)holdElectionWithVotes:(id)votes;
- (void)resourceWasRemoved;
- (void)setStatusCode:(unint64_t)code;
- (void)updateStatusCode;
@end

@implementation EPNanoRegistryStatusCodeElection

+ (id)newService:(id)service
{
  serviceCopy = service;
  v5 = [serviceCopy serviceFromProtocol:&OBJC_PROTOCOL___EPNanoRegistryStatusCodeElectionDelegate];
  queue = [serviceCopy queue];

  v7 = [self sharedInstanceWithQueue:queue delegate:v5];

  return v7;
}

+ (id)sharedInstanceWithQueue:(id)queue delegate:(id)delegate
{
  queueCopy = queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100096E00;
  block[3] = &unk_1001786E8;
  delegateCopy = delegate;
  selfCopy = self;
  v14 = queueCopy;
  v7 = qword_1001B3920;
  v8 = delegateCopy;
  v9 = queueCopy;
  if (v7 != -1)
  {
    dispatch_once(&qword_1001B3920, block);
  }

  v10 = qword_1001B3918;
  v11 = qword_1001B3918;

  return v10;
}

- (EPNanoRegistryStatusCodeElection)initWithQueue:(id)queue delegate:(id)delegate
{
  delegateCopy = delegate;
  v7 = [(EPResourceManager *)self initWithQueue:queue];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_delegate, delegateCopy);
    if (qword_1001B3928 != -1)
    {
      sub_100101AA8();
    }
  }

  return v8;
}

- (void)updateStatusCode
{
  +[NSMutableArray array];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10009714C;
  v5 = v4[3] = &unk_1001785C0;
  v3 = v5;
  [(EPResourceManager *)self enumerateResourcesWithBlock:v4];
  [(EPNanoRegistryStatusCodeElection *)self setStatusCode:[(EPNanoRegistryStatusCodeElection *)self holdElectionWithVotes:v3]];
}

- (unint64_t)holdElectionWithVotes:(id)votes
{
  votesCopy = votes;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = [votesCopy countByEnumeratingWithState:&v21 objects:v31 count:16];
  if (!v5)
  {
    goto LABEL_12;
  }

  v6 = v5;
  v7 = *v22;
  v8 = -1;
  do
  {
    for (i = 0; i != v6; i = i + 1)
    {
      if (*v22 != v7)
      {
        objc_enumerationMutation(votesCopy);
      }

      v10 = [qword_1001B3938 objectForKeyedSubscript:*(*(&v21 + 1) + 8 * i)];
      integerValue = [v10 integerValue];

      if (integerValue > v8)
      {
        v8 = integerValue;
      }
    }

    v6 = [votesCopy countByEnumeratingWithState:&v21 objects:v31 count:16];
  }

  while (v6);
  if (v8 < 0)
  {
LABEL_12:
    integerValue2 = 0;
  }

  else
  {
    v12 = [qword_1001B3930 objectAtIndexedSubscript:v8];
    integerValue2 = [v12 integerValue];
  }

  v14 = [votesCopy count];
  if (integerValue2 == 3 && v14 == 1)
  {
    integerValue2 = 0;
  }

  v16 = nr_daemon_log();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

  if (v17)
  {
    v18 = nr_daemon_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [(EPNanoRegistryStatusCodeElection *)self statusCodeStringForStatusCode:integerValue2];
      *buf = 134218498;
      v26 = integerValue2;
      v27 = 2112;
      v28 = v19;
      v29 = 2114;
      v30 = votesCopy;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "EPNanoRegistryStatusCodeElection: Held NRPairedDeviceRegistryStatusCode election. statusCode: [%ld]%@ votes: %{public}@", buf, 0x20u);
    }
  }

  return integerValue2;
}

- (void)setStatusCode:(unint64_t)code
{
  if (self->_statusCode != code)
  {
    v5 = nr_daemon_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    if (v6)
    {
      v7 = nr_daemon_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [(EPNanoRegistryStatusCodeElection *)self statusCodeStringForStatusCode:code];
        v10 = 134218242;
        codeCopy = code;
        v12 = 2112;
        v13 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "EPNanoRegistryStatusCodeElection: Setting statusCode to [%ld]%@", &v10, 0x16u);
      }
    }

    self->_statusCode = code;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained statusCodeManager:self electionOutcomeChanged:self->_statusCode];
  }
}

- (id)statusCodeStringForStatusCode:(unint64_t)code
{
  v3 = qword_1001B3940;
  v4 = [NSNumber numberWithUnsignedInteger:code];
  v5 = [v3 objectForKeyedSubscript:v4];

  return v5;
}

- (NSString)statusCodeString
{
  statusCode = [(EPNanoRegistryStatusCodeElection *)self statusCode];

  return [(EPNanoRegistryStatusCodeElection *)self statusCodeStringForStatusCode:statusCode];
}

- (id)newStatusCodeVote:(unint64_t)vote
{
  v5 = [(EPResourceManager *)self newResourceWithDelegate:0];
  v6 = [NSNumber numberWithUnsignedInteger:vote];
  [v5 setStatusCodeVoteNumber:v6];

  [(EPNanoRegistryStatusCodeElection *)self updateStatusCode];
  return v5;
}

- (void)resourceWasRemoved
{
  queue = [(EPResourceManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = nr_daemon_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = nr_daemon_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "EPNanoRegistryStatusCodeElection: resourceWasRemoved", v7, 2u);
    }
  }

  [(EPNanoRegistryStatusCodeElection *)self updateStatusCode];
}

- (EPNanoRegistryStatusCodeElectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end