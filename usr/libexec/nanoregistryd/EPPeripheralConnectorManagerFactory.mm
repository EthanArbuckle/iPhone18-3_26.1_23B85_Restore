@interface EPPeripheralConnectorManagerFactory
+ (id)sharedConnectorManagerFactory;
- (BOOL)isConnected:(id)connected;
- (EPPeripheralConnectorManagerFactory)init;
- (id)connectorManagerWithUuid:(id)uuid;
@end

@implementation EPPeripheralConnectorManagerFactory

+ (id)sharedConnectorManagerFactory
{
  if (qword_1001B3950 != -1)
  {
    sub_100101ABC();
  }

  v3 = qword_1001B3948;

  return v3;
}

- (EPPeripheralConnectorManagerFactory)init
{
  v6.receiver = self;
  v6.super_class = EPPeripheralConnectorManagerFactory;
  v2 = [(EPPeripheralConnectorManagerFactory *)&v6 init];
  if (v2)
  {
    v3 = +[NSMapTable strongToWeakObjectsMapTable];
    connectorManagers = v2->_connectorManagers;
    v2->_connectorManagers = v3;
  }

  return v2;
}

- (id)connectorManagerWithUuid:(id)uuid
{
  uuidCopy = uuid;
  v5 = [(NSMapTable *)self->_connectorManagers objectForKey:uuidCopy];
  if (v5)
  {
    v6 = v5;
    v7 = sub_1000A98C0();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

    if (!v8)
    {
      goto LABEL_10;
    }

    v9 = sub_1000A98C0();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    uUIDString = [uuidCopy UUIDString];
    v15 = 134218242;
    v16 = v6;
    v17 = 2112;
    v18 = uUIDString;
    v11 = "EPPeripheralConnectorManagerFactory: Reusing existing EPPeripheralConnectorManager %p to manage BT peripheral %@";
    goto LABEL_8;
  }

  v6 = [[EPPeripheralConnectorManager alloc] initWithUuid:uuidCopy];
  [(NSMapTable *)self->_connectorManagers setObject:v6 forKey:uuidCopy];
  v12 = sub_1000A98C0();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

  if (!v13)
  {
    goto LABEL_10;
  }

  v9 = sub_1000A98C0();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    uUIDString = [uuidCopy UUIDString];
    v15 = 134218242;
    v16 = v6;
    v17 = 2112;
    v18 = uUIDString;
    v11 = "EPPeripheralConnectorManagerFactory: Created new EPPeripheralConnectorManager %p to manage BT peripheral %@";
LABEL_8:
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v11, &v15, 0x16u);
  }

LABEL_9:

LABEL_10:

  return v6;
}

- (BOOL)isConnected:(id)connected
{
  v3 = [(NSMapTable *)self->_connectorManagers objectForKey:connected];
  isConnected = [v3 isConnected];

  return isConnected;
}

@end