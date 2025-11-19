@interface APIDAccountsWeakContainer
+ (id)sharedInstance;
- (APIDAccountsWeakContainer)init;
- (id)addIDAccount:(id)a3;
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

- (id)addIDAccount:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v17 = [(APIDAccountsWeakContainer *)self lock];
    [v17 lock];
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = [(APIDAccountsWeakContainer *)self idAccounts];
    v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * v9);
        v11 = [v10 iAdID];
        v12 = [v4 iAdID];
        v13 = [v11 isEqual:v12];

        if (v13)
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
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

    v15 = [(APIDAccountsWeakContainer *)self idAccounts];
    [v15 addPointer:v4];

    v14 = v4;
LABEL_13:
    [v17 unlock];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end