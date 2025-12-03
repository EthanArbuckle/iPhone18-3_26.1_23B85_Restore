@interface APIDAccountsWeakContainer
+ (id)sharedInstance;
- (APIDAccountsWeakContainer)init;
- (id)addIDAccount:(id)account;
@end

@implementation APIDAccountsWeakContainer

+ (id)sharedInstance
{
  if (qword_1004EA1F0 != -1)
  {
    sub_100396D04();
  }

  v3 = qword_1004EA1E8;

  return v3;
}

- (APIDAccountsWeakContainer)init
{
  v8.receiver = self;
  v8.super_class = APIDAccountsWeakContainer;
  v2 = [(APIDAccountsWeakContainer *)&v8 init];
  if (v2)
  {
    v3 = [[APUnfairLock alloc] initWithOptions:1];
    lock = v2->_lock;
    v2->_lock = v3;

    v5 = +[NSPointerArray weakObjectsPointerArray];
    idAccounts = v2->_idAccounts;
    v2->_idAccounts = v5;
  }

  return v2;
}

- (id)addIDAccount:(id)account
{
  accountCopy = account;
  if (accountCopy)
  {
    lock = [(APIDAccountsWeakContainer *)self lock];
    [lock lock];
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    idAccounts = [(APIDAccountsWeakContainer *)self idAccounts];
    v6 = [idAccounts countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v19;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(idAccounts);
        }

        v10 = *(*(&v18 + 1) + 8 * v9);
        iAdID = [v10 iAdID];
        iAdID2 = [accountCopy iAdID];
        v13 = [iAdID isEqual:iAdID2];

        if (v13)
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [idAccounts countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v14 = v10;

      if (v14)
      {
        goto LABEL_13;
      }
    }

    else
    {
LABEL_10:
    }

    idAccounts2 = [(APIDAccountsWeakContainer *)self idAccounts];
    [idAccounts2 addPointer:accountCopy];

    v14 = accountCopy;
LABEL_13:
    [lock unlock];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end