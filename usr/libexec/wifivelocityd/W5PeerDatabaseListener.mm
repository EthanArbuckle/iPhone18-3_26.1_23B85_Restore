@interface W5PeerDatabaseListener
- (BOOL)handleClientRequest:(id)request;
- (W5PeerDatabaseListener)initWithDatabaseAccessManager:(id)manager;
@end

@implementation W5PeerDatabaseListener

- (W5PeerDatabaseListener)initWithDatabaseAccessManager:(id)manager
{
  managerCopy = manager;
  v10.receiver = self;
  v10.super_class = W5PeerDatabaseListener;
  v6 = [(W5PeerDatabaseListener *)&v10 init];
  v7 = v6;
  if (!v6 || (objc_storeStrong(&v6->_databaseManager, manager), !v7->_databaseManager))
  {

    v8 = sub_100098A04();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      _os_log_send_and_compose_impl();
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)handleClientRequest:(id)request
{
  requestCopy = request;
  payload = [requestCopy payload];
  v6 = payload;
  if (payload)
  {
    version = [payload version];
    v8 = sub_100098A04();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 136315906;
      *&v21[4] = "[W5PeerDatabaseListener handleClientRequest:]";
      *&v21[12] = 2112;
      *&v21[14] = requestCopy;
      *&v21[22] = 2112;
      v22 = v6;
      v23 = 2112;
      v24 = version;
      LODWORD(v20) = 42;
      v19 = v21;
      _os_log_send_and_compose_impl();
    }

    v9 = objc_alloc_init(W5PeerDatabaseResponsePayload);
    v10 = [NSNumber numberWithInteger:[(W5PeerDatabaseListener *)self currentVersion]];
    [(W5PeerDatabaseResponsePayload *)v9 setVersion:v10];

    [(W5PeerDatabaseResponsePayload *)v9 setStatus:1];
    if ([version integerValue] == 1 || objc_msgSend(version, "integerValue") == 2)
    {
      fetchRequest = [v6 fetchRequest];

      if (fetchRequest)
      {
        fetchRequest2 = [v6 fetchRequest];
        [fetchRequest2 setResultType:2];

        databaseManager = self->_databaseManager;
        fetchRequest3 = [v6 fetchRequest];
        v15 = [(W5DatabaseManager *)databaseManager performFetch:fetchRequest3];
        [(W5PeerDatabaseResponsePayload *)v9 setFetchedResults:v15];

        [(W5DatabaseManager *)self->_databaseManager releaseMoc];
LABEL_14:
        handler = [requestCopy handler];
        (handler)[2](handler, v9, 0);

        goto LABEL_15;
      }

      v16 = sub_100098A04();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *v21 = 136315394;
        *&v21[4] = "[W5PeerDatabaseListener handleClientRequest:]";
        *&v21[12] = 2112;
        *&v21[14] = requestCopy;
        LODWORD(v20) = 22;
        v19 = v21;
LABEL_12:
        _os_log_send_and_compose_impl();
      }
    }

    else
    {
      v16 = sub_100098A04();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *v21 = 136315394;
        *&v21[4] = "[W5PeerDatabaseListener handleClientRequest:]";
        *&v21[12] = 2112;
        *&v21[14] = version;
        LODWORD(v20) = 22;
        v19 = v21;
        goto LABEL_12;
      }
    }

    goto LABEL_14;
  }

LABEL_15:

  return 1;
}

@end