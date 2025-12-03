@interface RPWiFiP2PTransaction
+ (id)sharedInstance;
- (void)activateForClient:(id)client;
- (void)invalidateForClient:(id)client;
@end

@implementation RPWiFiP2PTransaction

+ (id)sharedInstance
{
  if (qword_1001D6320 != -1)
  {
    sub_10011DE64();
  }

  v3 = qword_1001D6328;

  return v3;
}

- (void)activateForClient:(id)client
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10007A334;
  v11[3] = &unk_1001AB488;
  v11[4] = self;
  clientCopy = client;
  v12 = clientCopy;
  v5 = objc_retainBlock(v11);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = [(NSMutableSet *)selfCopy->_activeClients count];
  objc_sync_exit(selfCopy);

  if (!v7)
  {
    shared = [(objc_class *)off_1001D4240() shared];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10007A408;
    v9[3] = &unk_1001AD778;
    v9[4] = selfCopy;
    v10 = clientCopy;
    [shared beginTransaction:4 completionHandler:v9];
  }

  (v5[2])(v5);
}

- (void)invalidateForClient:(id)client
{
  clientCopy = client;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (![(NSMutableSet *)selfCopy->_activeClients count])
  {
LABEL_21:
    objc_sync_exit(selfCopy);

    goto LABEL_22;
  }

  if (([(NSMutableSet *)selfCopy->_activeClients containsObject:clientCopy]& 1) == 0)
  {
    if (dword_1001D41D0 <= 10 && (dword_1001D41D0 != -1 || _LogCategory_Initialize()))
    {
      activeClients = selfCopy->_activeClients;
      LogPrintF();
    }

    goto LABEL_21;
  }

  [(NSMutableSet *)selfCopy->_activeClients removeObject:clientCopy];
  if (dword_1001D41D0 <= 30 && (dword_1001D41D0 != -1 || _LogCategory_Initialize()))
  {
    v6 = clientCopy;
    LogPrintF();
  }

  if ([(NSMutableSet *)selfCopy->_activeClients count])
  {
    if (dword_1001D41D0 <= 30 && (dword_1001D41D0 != -1 || _LogCategory_Initialize()))
    {
      v7 = selfCopy->_activeClients;
      LogPrintF();
    }

    goto LABEL_21;
  }

  objc_sync_exit(selfCopy);

  shared = [(objc_class *)off_1001D4240() shared];
  [shared endTransaction:4];

  if (dword_1001D41D0 <= 30 && (dword_1001D41D0 != -1 || _LogCategory_Initialize()))
  {
    sub_10011DF04();
  }

LABEL_22:
}

@end