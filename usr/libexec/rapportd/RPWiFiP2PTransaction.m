@interface RPWiFiP2PTransaction
+ (id)sharedInstance;
- (void)activateForClient:(id)a3;
- (void)invalidateForClient:(id)a3;
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

- (void)activateForClient:(id)a3
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10007A334;
  v11[3] = &unk_1001AB488;
  v11[4] = self;
  v4 = a3;
  v12 = v4;
  v5 = objc_retainBlock(v11);
  v6 = self;
  objc_sync_enter(v6);
  v7 = [(NSMutableSet *)v6->_activeClients count];
  objc_sync_exit(v6);

  if (!v7)
  {
    v8 = [(objc_class *)off_1001D4240() shared];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10007A408;
    v9[3] = &unk_1001AD778;
    v9[4] = v6;
    v10 = v4;
    [v8 beginTransaction:4 completionHandler:v9];
  }

  (v5[2])(v5);
}

- (void)invalidateForClient:(id)a3
{
  v9 = a3;
  v4 = self;
  objc_sync_enter(v4);
  if (![(NSMutableSet *)v4->_activeClients count])
  {
LABEL_21:
    objc_sync_exit(v4);

    goto LABEL_22;
  }

  if (([(NSMutableSet *)v4->_activeClients containsObject:v9]& 1) == 0)
  {
    if (dword_1001D41D0 <= 10 && (dword_1001D41D0 != -1 || _LogCategory_Initialize()))
    {
      activeClients = v4->_activeClients;
      LogPrintF();
    }

    goto LABEL_21;
  }

  [(NSMutableSet *)v4->_activeClients removeObject:v9];
  if (dword_1001D41D0 <= 30 && (dword_1001D41D0 != -1 || _LogCategory_Initialize()))
  {
    v6 = v9;
    LogPrintF();
  }

  if ([(NSMutableSet *)v4->_activeClients count])
  {
    if (dword_1001D41D0 <= 30 && (dword_1001D41D0 != -1 || _LogCategory_Initialize()))
    {
      v7 = v4->_activeClients;
      LogPrintF();
    }

    goto LABEL_21;
  }

  objc_sync_exit(v4);

  v5 = [(objc_class *)off_1001D4240() shared];
  [v5 endTransaction:4];

  if (dword_1001D41D0 <= 30 && (dword_1001D41D0 != -1 || _LogCategory_Initialize()))
  {
    sub_10011DF04();
  }

LABEL_22:
}

@end