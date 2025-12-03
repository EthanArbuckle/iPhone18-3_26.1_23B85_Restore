@interface EPSagaTransactionUpdateAppRemovability
- (BOOL)_havePairedOrMigratingDevices:(id)devices rollback:(BOOL)rollback;
- (EPTransactionDelegate)delegate;
- (void)_setAppRemovability:(unint64_t)removability;
- (void)beginRollbackWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry;
- (void)beginTransactionWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry;
@end

@implementation EPSagaTransactionUpdateAppRemovability

- (void)beginTransactionWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry
{
  entryCopy = entry;
  registryCopy = registry;
  v8 = [registryCopy serviceFromClass:objc_opt_class()];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100076770;
  v10[3] = &unk_1001757C0;
  v10[4] = self;
  v11 = entryCopy;
  v9 = entryCopy;
  [v8 grabRegistryWithReadBlock:v10];
}

- (void)beginRollbackWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry
{
  entryCopy = entry;
  registryCopy = registry;
  v8 = [registryCopy serviceFromClass:objc_opt_class()];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10007685C;
  v10[3] = &unk_1001757C0;
  v10[4] = self;
  v11 = entryCopy;
  v9 = entryCopy;
  [v8 grabRegistryWithReadBlock:v10];
}

- (BOOL)_havePairedOrMigratingDevices:(id)devices rollback:(BOOL)rollback
{
  devicesCopy = devices;
  v6 = +[EPNanoRegistryStatusCodeElection sharedInstance];
  if ([v6 statusCode] == 1)
  {
    v7 = 1;
  }

  else
  {
    v8 = +[EPNanoRegistryStatusCodeElection sharedInstance];
    v7 = [v8 statusCode] == 4;
  }

  activeDeviceID = [devicesCopy activeDeviceID];
  if (v7)
  {
    v10 = nr_daemon_log();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

    if (v11)
    {
      v12 = nr_daemon_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "NR is pairing or migrating, require Watch-related Apps", buf, 2u);
      }

      LOBYTE(v13) = 1;
LABEL_32:

      goto LABEL_33;
    }

    LOBYTE(v13) = 1;
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v14 = devicesCopy;
    v15 = [v14 countByEnumeratingWithState:&v27 objects:v33 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v28;
      while (2)
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v28 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v27 + 1) + 8 * i);
          v20 = [v14 objectForKeyedSubscript:{v19, v27}];
          isPaired = [v20 isPaired];
          if (rollback)
          {
            if ((isPaired & 1) != 0 || [v20 isArchived])
            {
              v22 = [v19 isEqual:activeDeviceID];

              if ((v22 & 1) == 0)
              {
                goto LABEL_28;
              }
            }

            else
            {
            }
          }

          else
          {
            if (isPaired)
            {

LABEL_28:
              v13 = 1;
              goto LABEL_29;
            }

            isArchived = [v20 isArchived];

            if (isArchived)
            {
              goto LABEL_28;
            }
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v27 objects:v33 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    v13 = 0;
LABEL_29:

    v24 = nr_daemon_log();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);

    if (v25)
    {
      v12 = nr_daemon_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v32 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Have paired or waiting for migration devices = %{BOOL}d", buf, 8u);
      }

      goto LABEL_32;
    }
  }

LABEL_33:

  return v13;
}

- (void)_setAppRemovability:(unint64_t)removability
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100076D88;
  v3[3] = &unk_100178110;
  v3[4] = removability;
  [&off_100187EE0 enumerateObjectsUsingBlock:v3];
}

- (EPTransactionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end