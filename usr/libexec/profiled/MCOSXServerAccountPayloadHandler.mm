@interface MCOSXServerAccountPayloadHandler
- (BOOL)isInstalled;
- (id)_installedAccount;
- (id)accountStore;
- (void)_deleteAccountAndAssociatedData:(id)data;
- (void)remove;
- (void)setAsideWithInstaller:(id)installer;
@end

@implementation MCOSXServerAccountPayloadHandler

- (id)accountStore
{
  if (qword_100136C38 != -1)
  {
    sub_1000C2D00();
  }

  v3 = qword_100136C30;

  return v3;
}

- (id)_installedAccount
{
  accountStore = [(MCOSXServerAccountPayloadHandler *)self accountStore];
  v4 = [accountStore accountTypeWithAccountTypeIdentifier:ACAccountTypeIdentifierOSXServer];

  selfCopy = self;
  accountStore2 = [(MCOSXServerAccountPayloadHandler *)self accountStore];
  v6 = [accountStore2 accountsWithAccountType:v4];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v7)
  {
    v22 = v4;
    v8 = *v28;
    v9 = selfCopy;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        mcProfileUUID = [v11 mcProfileUUID];
        payload = [(MCNewPayloadHandler *)v9 payload];
        profile = [payload profile];
        uUID = [profile UUID];
        if ([mcProfileUUID isEqualToString:uUID])
        {
          v23 = v11;
          mcPayloadUUID = [v11 mcPayloadUUID];
          payload2 = [(MCNewPayloadHandler *)v9 payload];
          [payload2 UUID];
          v18 = v7;
          v20 = v19 = v8;
          v26 = [mcPayloadUUID isEqualToString:v20];

          v8 = v19;
          v7 = v18;

          v9 = selfCopy;
          if (v26)
          {
            v7 = v23;
            goto LABEL_12;
          }
        }

        else
        {
        }
      }

      v7 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v7);
LABEL_12:
    v4 = v22;
  }

  return v7;
}

- (BOOL)isInstalled
{
  _installedAccount = [(MCOSXServerAccountPayloadHandler *)self _installedAccount];
  v3 = _installedAccount != 0;

  return v3;
}

- (void)setAsideWithInstaller:(id)installer
{
  installerCopy = installer;
  v7.receiver = self;
  v7.super_class = MCOSXServerAccountPayloadHandler;
  [(MCNewPayloadHandler *)&v7 setAsideWithInstaller:installerCopy];
  _installedAccount = [(MCOSXServerAccountPayloadHandler *)self _installedAccount];
  if (_installedAccount)
  {
    [(MCOSXServerAccountPayloadHandler *)self setSetAsideAccount:_installedAccount];
    identifier = [_installedAccount identifier];
    [installerCopy addSetAsideAccountIdentifier:identifier forPayloadClass:objc_opt_class()];
  }
}

- (void)_deleteAccountAndAssociatedData:(id)data
{
  dataCopy = data;
  v5 = [[DMCProcessAssertion alloc] initWithReason:@"profiled-DeleteAccount"];
  v6 = dispatch_get_global_queue(17, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100084774;
  block[3] = &unk_10011CC68;
  block[4] = self;
  v10 = dataCopy;
  v11 = v5;
  v7 = v5;
  v8 = dataCopy;
  dispatch_async(v6, block);
}

- (void)remove
{
  profileHandler = [(MCNewPayloadHandler *)self profileHandler];
  isSetAside = [profileHandler isSetAside];

  if (isSetAside)
  {
    setAsideAccount = [(MCOSXServerAccountPayloadHandler *)self setAsideAccount];
    [(MCOSXServerAccountPayloadHandler *)self setSetAsideAccount:0];
    if (!setAsideAccount)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  setAsideAccount = [(MCOSXServerAccountPayloadHandler *)self _installedAccount];
  if (setAsideAccount)
  {
LABEL_5:
    [(MCOSXServerAccountPayloadHandler *)self _deleteAccountAndAssociatedData:setAsideAccount];
  }

LABEL_6:
}

@end