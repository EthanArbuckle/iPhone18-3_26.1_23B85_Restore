@interface MSDContinuityHelper
+ (id)sharedInstance;
- (BOOL)preserveContinuityPairingRecord;
- (BOOL)shouldRestoreRapportPairingRecord;
- (BOOL)shouldRestoreUCBPairingRecord;
- (void)removeRapportPairingIfNeeded;
- (void)removeUCBPairingIfNeeded;
- (void)restoreContinuityPairingRecordIfNeeded;
@end

@implementation MSDContinuityHelper

+ (id)sharedInstance
{
  if (qword_1001A5600 != -1)
  {
    sub_1000CAA9C();
  }

  v3 = qword_1001A55F8;

  return v3;
}

- (BOOL)preserveContinuityPairingRecord
{
  v2 = sub_100063A54();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Saving continuity pairing info stored in keychain.", buf, 2u);
  }

  v3 = +[NSFileManager defaultManager];
  v4 = [v3 fileExistsAtPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/com.apple.MobileStoreDemo.rapportkeychain"];

  if (v4)
  {
    v5 = +[NSFileManager defaultManager];
    v21 = 0;
    v6 = [v5 removeItemAtPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/com.apple.MobileStoreDemo.rapportkeychain" error:&v21];
    v7 = v21;

    if ((v6 & 1) == 0)
    {
      v13 = sub_100063A54();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1000CAAB0(v7);
      }

      goto LABEL_22;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = +[NSFileManager defaultManager];
  v10 = [v9 fileExistsAtPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/com.apple.MobileStoreDemo.ucbkeychain"];

  if (v10)
  {
    v11 = +[NSFileManager defaultManager];
    v20 = v8;
    v12 = [v11 removeItemAtPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/com.apple.MobileStoreDemo.ucbkeychain" error:&v20];
    v7 = v20;

    if ((v12 & 1) == 0)
    {
      v13 = sub_100063A54();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1000CAAB0(v7);
      }

LABEL_22:

      v18 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    v7 = v8;
  }

  v14 = +[MSDCryptoHandler sharedInstance];
  v15 = [v14 preserveAndEncryptKeychainItemsForKey:@"com.apple.rapport" toFile:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/com.apple.MobileStoreDemo.rapportkeychain"];

  if ((v15 & 1) == 0)
  {
    v13 = sub_100063A54();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1000CAB40(v13);
    }

    goto LABEL_22;
  }

  v16 = +[MSDCryptoHandler sharedInstance];
  v17 = [v16 preserveAndEncryptKeychainItemsForKey:@"com.apple.continuity.encryption" toFile:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/com.apple.MobileStoreDemo.ucbkeychain"];

  if ((v17 & 1) == 0)
  {
    v13 = sub_100063A54();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1000CAB84(v13);
    }

    goto LABEL_22;
  }

  v18 = 1;
LABEL_15:

  return v18;
}

- (void)restoreContinuityPairingRecordIfNeeded
{
  shouldRestoreRapportPairingRecord = [(MSDContinuityHelper *)self shouldRestoreRapportPairingRecord];
  v4 = sub_100063A54();
  v5 = v4;
  if (shouldRestoreRapportPairingRecord)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Restoring rapport pairing information to keychain.", buf, 2u);
    }

    v6 = +[MSDCryptoHandler sharedInstance];
    v7 = [v6 restoreAndDecryptKeychainItemsForKey:@"com.apple.rapport" fromFile:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/com.apple.MobileStoreDemo.rapportkeychain"];

    if (v7)
    {
      [(MSDContinuityHelper *)self removeRapportPairingIfNeeded];
      shouldRestoreUCBPairingRecord = [(MSDContinuityHelper *)self shouldRestoreUCBPairingRecord];
      v9 = sub_100063A54();
      v10 = v9;
      if (shouldRestoreUCBPairingRecord)
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *v13 = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Restoring UCB pairing information to keychain.", v13, 2u);
        }

        v11 = +[MSDCryptoHandler sharedInstance];
        v12 = [v11 restoreAndDecryptKeychainItemsForKey:@"com.apple.continuity.encryption" fromFile:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/com.apple.MobileStoreDemo.ucbkeychain"];

        if (v12)
        {
          [(MSDContinuityHelper *)self removeUCBPairingIfNeeded];
        }

        else
        {
          sub_1000CAC1C();
        }
      }

      else
      {
        sub_1000CAC78(v9);
      }
    }

    else
    {
      sub_1000CAC1C();
    }
  }

  else
  {
    sub_1000CABC8(v4);
  }
}

- (BOOL)shouldRestoreRapportPairingRecord
{
  v2 = +[MSDTargetDevice sharedInstance];
  v3 = +[NSFileManager defaultManager];
  if ([v2 isContentFrozen])
  {
    getSavedRequest = [v2 getSavedRequest];
    if ([getSavedRequest isEqualToString:@"RevertSnapshot"])
    {
      v5 = [v3 fileExistsAtPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/com.apple.MobileStoreDemo.rapportkeychain"];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = [v3 fileExistsAtPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/com.apple.MobileStoreDemo.rapportkeychain"];
  }

  return v5;
}

- (BOOL)shouldRestoreUCBPairingRecord
{
  v2 = +[MSDTargetDevice sharedInstance];
  v3 = +[NSFileManager defaultManager];
  if ([v2 isContentFrozen])
  {
    getSavedRequest = [v2 getSavedRequest];
    if ([getSavedRequest isEqualToString:@"RevertSnapshot"])
    {
      v5 = [v3 fileExistsAtPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/com.apple.MobileStoreDemo.ucbkeychain"];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = [v3 fileExistsAtPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/com.apple.MobileStoreDemo.ucbkeychain"];
  }

  return v5;
}

- (void)removeRapportPairingIfNeeded
{
  v3 = +[MSDTargetDevice sharedInstance];
  v2 = +[NSFileManager defaultManager];
  if (([v3 isContentFrozen] & 1) == 0)
  {
    [v2 removeItemAtPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/com.apple.MobileStoreDemo.rapportkeychain" error:0];
  }
}

- (void)removeUCBPairingIfNeeded
{
  v3 = +[MSDTargetDevice sharedInstance];
  v2 = +[NSFileManager defaultManager];
  if (([v3 isContentFrozen] & 1) == 0)
  {
    [v2 removeItemAtPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/com.apple.MobileStoreDemo.ucbkeychain" error:0];
  }
}

@end