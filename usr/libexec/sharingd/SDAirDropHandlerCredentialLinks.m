@interface SDAirDropHandlerCredentialLinks
+ (void)openPasswordManagerURL:(id)a3;
- (BOOL)canHandleTransfer;
- (id)credential;
- (id)suitableContentsDescription;
- (int64_t)transferTypes;
- (void)handleAction;
- (void)updatePossibleActions;
@end

@implementation SDAirDropHandlerCredentialLinks

- (BOOL)canHandleTransfer
{
  if (![(SDAirDropHandler *)self isJustLinks])
  {
    return 0;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [(SDAirDropHandler *)self transfer];
  v4 = [v3 completedURLs];

  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [NSURLComponents componentsWithURL:*(*(&v14 + 1) + 8 * i) resolvingAgainstBaseURL:0];
        v10 = [v9 scheme];
        v11 = [v10 isEqual:@"EncryptedCredential"];

        if (!v11)
        {
          v12 = 0;
          goto LABEL_13;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v12 = 1;
LABEL_13:

  return v12;
}

- (void)handleAction
{
  v3 = [(SDAirDropHandlerCredentialLinks *)self credential];
  v4 = v3;
  if (!v3)
  {
    v5 = airdrop_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100152814();
    }

    goto LABEL_11;
  }

  v5 = [v3 passwordManagerURL];
  v6 = airdrop_log();
  v7 = v6;
  if (!v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1001527E0();
    }

LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Opening password manager url", v11, 2u);
  }

  [(objc_class *)off_1009717C8() openPasswordManagerURL:v5];
  v8 = 1;
LABEL_12:

  credential = self->_credential;
  self->_credential = 0;

  v10 = [(SDAirDropHandler *)self completionHandler];
  v10[2](v10, v8, 0, 1);
}

+ (void)openPasswordManagerURL:(id)a3
{
  v3 = off_1009717C8;
  v4 = a3;
  [(objc_class *)v3() openPasswordManagerURL:v4];
}

- (id)suitableContentsDescription
{
  v3 = [(SDAirDropHandler *)self senderName];
  v4 = [(SDAirDropHandler *)self totalSharedItemsCount];
  v5 = [(SDAirDropHandlerCredentialLinks *)self credential];
  v6 = [v5 displayName];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if (v6 && v4 == 1)
    {
      goto LABEL_8;
    }

LABEL_12:
    v21 = @"CREDENTIAL";
    v16 = [NSNumber numberWithUnsignedInteger:v4];
    v22 = v16;
    v17 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v23 = v17;
    v18 = [NSArray arrayWithObjects:&v23 count:1];
    v8 = [(SDAirDropHandler *)self alertMessageLocalizedKeyForTypeDicts:v18];

    v15 = SFLocalizedStringForKey();
    goto LABEL_13;
  }

  v7 = [v5 passkeyCredential];

  if (v6 && v4 == 1)
  {
    if (v7)
    {
      v8 = [(SDAirDropHandler *)self alertMessageLocalizedKeyForTypeDicts:&off_100910148];
      v9 = SFLocalizedStringForKeyInStringsFileNamed();
LABEL_9:
      v10 = v9;
      v11 = [NSString localizedStringWithFormat:v9, v3, v6];

      goto LABEL_14;
    }

LABEL_8:
    v8 = [(SDAirDropHandler *)self alertMessageLocalizedKeyForTypeDicts:&off_100910160];
    v9 = SFLocalizedStringForKey();
    goto LABEL_9;
  }

  if (!v7)
  {
    goto LABEL_12;
  }

  v24 = @"PASSKEY";
  v12 = [NSNumber numberWithUnsignedInteger:v4];
  v25 = v12;
  v13 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  v26 = v13;
  v14 = [NSArray arrayWithObjects:&v26 count:1];
  v8 = [(SDAirDropHandler *)self alertMessageLocalizedKeyForTypeDicts:v14];

  v15 = SFLocalizedStringForKeyInStringsFileNamed();
LABEL_13:
  v19 = v15;
  v11 = [NSString localizedStringWithFormat:v15, v3, v4];

LABEL_14:

  return v11;
}

- (int64_t)transferTypes
{
  v3.receiver = self;
  v3.super_class = SDAirDropHandlerCredentialLinks;
  return [(SDAirDropHandler *)&v3 transferTypes]| 0x40000;
}

- (void)updatePossibleActions
{
  v19.receiver = self;
  v19.super_class = SDAirDropHandlerCredentialLinks;
  [(SDAirDropHandler *)&v19 updatePossibleActions];
  v3 = [SFAirDropAction alloc];
  v4 = [(SDAirDropHandler *)self transfer];
  v5 = [v4 identifier];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [(SDAirDropHandler *)self singleItemActionTitle];
  v9 = [(SDAirDropHandler *)self singleItemActionTitle];
  v10 = [v3 initWithTransferIdentifier:v5 actionIdentifier:v7 title:v8 singleItemTitle:v9 type:1];

  objc_initWeak(&location, self);
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_100152500;
  v16 = &unk_1008CDB10;
  objc_copyWeak(&v17, &location);
  [v10 setActionHandler:&v13];
  v20 = v10;
  v11 = [NSArray arrayWithObjects:&v20 count:1, v13, v14, v15, v16];
  v12 = [(SDAirDropHandler *)self transfer];
  [v12 setPossibleActions:v11];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (id)credential
{
  credential = self->_credential;
  if (credential)
  {
    v3 = credential;
  }

  else
  {
    v5 = airdrop_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Grabbing credential from AirDrop handler...", v18, 2u);
    }

    v6 = +[SDAppleIDAgent sharedAgent];
    v7 = [v6 myAccount];

    if (!v7)
    {
      v8 = airdrop_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100152848();
      }
    }

    v9 = [v7 identity];
    if (!v9)
    {
      v10 = airdrop_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10015287C();
      }
    }

    v11 = [v9 copyPrivateKey];
    if (!v11)
    {
      v12 = airdrop_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1001528B0();
      }
    }

    v13 = [(SDAirDropHandler *)self transfer];
    v14 = [v13 completedURLs];
    v15 = [v14 firstObject];
    v16 = SFSharablePasswordForEncryptedAirDropURL();

    if (v11)
    {
      CFRelease(v11);
    }

    if (v16)
    {
      objc_storeStrong(&self->_credential, v16);
    }

    v3 = self->_credential;
  }

  return v3;
}

@end