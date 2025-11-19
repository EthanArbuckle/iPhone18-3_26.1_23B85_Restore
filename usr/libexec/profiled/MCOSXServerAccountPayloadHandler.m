@interface MCOSXServerAccountPayloadHandler
- (BOOL)isInstalled;
- (id)_installedAccount;
- (id)accountStore;
- (void)_deleteAccountAndAssociatedData:(id)a3;
- (void)remove;
- (void)setAsideWithInstaller:(id)a3;
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
  v3 = [(MCOSXServerAccountPayloadHandler *)self accountStore];
  v4 = [v3 accountTypeWithAccountTypeIdentifier:ACAccountTypeIdentifierOSXServer];

  v24 = self;
  v5 = [(MCOSXServerAccountPayloadHandler *)self accountStore];
  v6 = [v5 accountsWithAccountType:v4];

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
    v9 = v24;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        v12 = [v11 mcProfileUUID];
        v13 = [(MCNewPayloadHandler *)v9 payload];
        v14 = [v13 profile];
        v15 = [v14 UUID];
        if ([v12 isEqualToString:v15])
        {
          v23 = v11;
          v16 = [v11 mcPayloadUUID];
          v17 = [(MCNewPayloadHandler *)v9 payload];
          [v17 UUID];
          v18 = v7;
          v20 = v19 = v8;
          v26 = [v16 isEqualToString:v20];

          v8 = v19;
          v7 = v18;

          v9 = v24;
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
  v2 = [(MCOSXServerAccountPayloadHandler *)self _installedAccount];
  v3 = v2 != 0;

  return v3;
}

- (void)setAsideWithInstaller:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = MCOSXServerAccountPayloadHandler;
  [(MCNewPayloadHandler *)&v7 setAsideWithInstaller:v4];
  v5 = [(MCOSXServerAccountPayloadHandler *)self _installedAccount];
  if (v5)
  {
    [(MCOSXServerAccountPayloadHandler *)self setSetAsideAccount:v5];
    v6 = [v5 identifier];
    [v4 addSetAsideAccountIdentifier:v6 forPayloadClass:objc_opt_class()];
  }
}

- (void)_deleteAccountAndAssociatedData:(id)a3
{
  v4 = a3;
  v5 = [[DMCProcessAssertion alloc] initWithReason:@"profiled-DeleteAccount"];
  v6 = dispatch_get_global_queue(17, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100084774;
  block[3] = &unk_10011CC68;
  block[4] = self;
  v10 = v4;
  v11 = v5;
  v7 = v5;
  v8 = v4;
  dispatch_async(v6, block);
}

- (void)remove
{
  v3 = [(MCNewPayloadHandler *)self profileHandler];
  v4 = [v3 isSetAside];

  if (v4)
  {
    v5 = [(MCOSXServerAccountPayloadHandler *)self setAsideAccount];
    [(MCOSXServerAccountPayloadHandler *)self setSetAsideAccount:0];
    if (!v5)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v5 = [(MCOSXServerAccountPayloadHandler *)self _installedAccount];
  if (v5)
  {
LABEL_5:
    [(MCOSXServerAccountPayloadHandler *)self _deleteAccountAndAssociatedData:v5];
  }

LABEL_6:
}

@end