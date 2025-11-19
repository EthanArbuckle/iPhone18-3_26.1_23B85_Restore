@interface W5PeerDatabaseListener
- (BOOL)handleClientRequest:(id)a3;
- (W5PeerDatabaseListener)initWithDatabaseAccessManager:(id)a3;
@end

@implementation W5PeerDatabaseListener

- (W5PeerDatabaseListener)initWithDatabaseAccessManager:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = W5PeerDatabaseListener;
  v6 = [(W5PeerDatabaseListener *)&v10 init];
  v7 = v6;
  if (!v6 || (objc_storeStrong(&v6->_databaseManager, a3), !v7->_databaseManager))
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

- (BOOL)handleClientRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 payload];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 version];
    v8 = sub_100098A04();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 136315906;
      *&v21[4] = "[W5PeerDatabaseListener handleClientRequest:]";
      *&v21[12] = 2112;
      *&v21[14] = v4;
      *&v21[22] = 2112;
      v22 = v6;
      v23 = 2112;
      v24 = v7;
      LODWORD(v20) = 42;
      v19 = v21;
      _os_log_send_and_compose_impl();
    }

    v9 = objc_alloc_init(W5PeerDatabaseResponsePayload);
    v10 = [NSNumber numberWithInteger:[(W5PeerDatabaseListener *)self currentVersion]];
    [(W5PeerDatabaseResponsePayload *)v9 setVersion:v10];

    [(W5PeerDatabaseResponsePayload *)v9 setStatus:1];
    if ([v7 integerValue] == 1 || objc_msgSend(v7, "integerValue") == 2)
    {
      v11 = [v6 fetchRequest];

      if (v11)
      {
        v12 = [v6 fetchRequest];
        [v12 setResultType:2];

        databaseManager = self->_databaseManager;
        v14 = [v6 fetchRequest];
        v15 = [(W5DatabaseManager *)databaseManager performFetch:v14];
        [(W5PeerDatabaseResponsePayload *)v9 setFetchedResults:v15];

        [(W5DatabaseManager *)self->_databaseManager releaseMoc];
LABEL_14:
        v17 = [v4 handler];
        (v17)[2](v17, v9, 0);

        goto LABEL_15;
      }

      v16 = sub_100098A04();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *v21 = 136315394;
        *&v21[4] = "[W5PeerDatabaseListener handleClientRequest:]";
        *&v21[12] = 2112;
        *&v21[14] = v4;
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
        *&v21[14] = v7;
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