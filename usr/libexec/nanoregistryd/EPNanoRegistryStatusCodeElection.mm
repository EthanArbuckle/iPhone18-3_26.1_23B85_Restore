@interface EPNanoRegistryStatusCodeElection
+ (id)newService:(id)a3;
+ (id)sharedInstanceWithQueue:(id)a3 delegate:(id)a4;
- (EPNanoRegistryStatusCodeElection)initWithQueue:(id)a3 delegate:(id)a4;
- (EPNanoRegistryStatusCodeElectionDelegate)delegate;
- (NSString)statusCodeString;
- (id)newStatusCodeVote:(unint64_t)a3;
- (id)statusCodeStringForStatusCode:(unint64_t)a3;
- (unint64_t)holdElectionWithVotes:(id)a3;
- (void)resourceWasRemoved;
- (void)setStatusCode:(unint64_t)a3;
- (void)updateStatusCode;
@end

@implementation EPNanoRegistryStatusCodeElection

+ (id)newService:(id)a3
{
  v4 = a3;
  v5 = [v4 serviceFromProtocol:&OBJC_PROTOCOL___EPNanoRegistryStatusCodeElectionDelegate];
  v6 = [v4 queue];

  v7 = [a1 sharedInstanceWithQueue:v6 delegate:v5];

  return v7;
}

+ (id)sharedInstanceWithQueue:(id)a3 delegate:(id)a4
{
  v6 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100096E00;
  block[3] = &unk_1001786E8;
  v15 = a4;
  v16 = a1;
  v14 = v6;
  v7 = qword_1001B3920;
  v8 = v15;
  v9 = v6;
  if (v7 != -1)
  {
    dispatch_once(&qword_1001B3920, block);
  }

  v10 = qword_1001B3918;
  v11 = qword_1001B3918;

  return v10;
}

- (EPNanoRegistryStatusCodeElection)initWithQueue:(id)a3 delegate:(id)a4
{
  v6 = a4;
  v7 = [(EPResourceManager *)self initWithQueue:a3];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_delegate, v6);
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

- (unint64_t)holdElectionWithVotes:(id)a3
{
  v4 = a3;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v21 objects:v31 count:16];
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
        objc_enumerationMutation(v4);
      }

      v10 = [qword_1001B3938 objectForKeyedSubscript:*(*(&v21 + 1) + 8 * i)];
      v11 = [v10 integerValue];

      if (v11 > v8)
      {
        v8 = v11;
      }
    }

    v6 = [v4 countByEnumeratingWithState:&v21 objects:v31 count:16];
  }

  while (v6);
  if (v8 < 0)
  {
LABEL_12:
    v13 = 0;
  }

  else
  {
    v12 = [qword_1001B3930 objectAtIndexedSubscript:v8];
    v13 = [v12 integerValue];
  }

  v14 = [v4 count];
  if (v13 == 3 && v14 == 1)
  {
    v13 = 0;
  }

  v16 = nr_daemon_log();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

  if (v17)
  {
    v18 = nr_daemon_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [(EPNanoRegistryStatusCodeElection *)self statusCodeStringForStatusCode:v13];
      *buf = 134218498;
      v26 = v13;
      v27 = 2112;
      v28 = v19;
      v29 = 2114;
      v30 = v4;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "EPNanoRegistryStatusCodeElection: Held NRPairedDeviceRegistryStatusCode election. statusCode: [%ld]%@ votes: %{public}@", buf, 0x20u);
    }
  }

  return v13;
}

- (void)setStatusCode:(unint64_t)a3
{
  if (self->_statusCode != a3)
  {
    v5 = nr_daemon_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    if (v6)
    {
      v7 = nr_daemon_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [(EPNanoRegistryStatusCodeElection *)self statusCodeStringForStatusCode:a3];
        v10 = 134218242;
        v11 = a3;
        v12 = 2112;
        v13 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "EPNanoRegistryStatusCodeElection: Setting statusCode to [%ld]%@", &v10, 0x16u);
      }
    }

    self->_statusCode = a3;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained statusCodeManager:self electionOutcomeChanged:self->_statusCode];
  }
}

- (id)statusCodeStringForStatusCode:(unint64_t)a3
{
  v3 = qword_1001B3940;
  v4 = [NSNumber numberWithUnsignedInteger:a3];
  v5 = [v3 objectForKeyedSubscript:v4];

  return v5;
}

- (NSString)statusCodeString
{
  v3 = [(EPNanoRegistryStatusCodeElection *)self statusCode];

  return [(EPNanoRegistryStatusCodeElection *)self statusCodeStringForStatusCode:v3];
}

- (id)newStatusCodeVote:(unint64_t)a3
{
  v5 = [(EPResourceManager *)self newResourceWithDelegate:0];
  v6 = [NSNumber numberWithUnsignedInteger:a3];
  [v5 setStatusCodeVoteNumber:v6];

  [(EPNanoRegistryStatusCodeElection *)self updateStatusCode];
  return v5;
}

- (void)resourceWasRemoved
{
  v3 = [(EPResourceManager *)self queue];
  dispatch_assert_queue_V2(v3);

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