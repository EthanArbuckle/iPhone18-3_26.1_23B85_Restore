@interface KeepAliveManager
+ (void)createMagicSwitchPathFile;
+ (void)deleteMagicSwitchPathFile;
@end

@implementation KeepAliveManager

+ (void)createMagicSwitchPathFile
{
  if (qword_1000213F0 != 2)
  {
    if (!qword_1000213F8)
    {
      v2 = os_transaction_create();
      v3 = qword_1000213F8;
      qword_1000213F8 = v2;
    }

    v4 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "KeepAliveManager --- Creating KeepAlive file", buf, 2u);
    }

    v5 = +[NSData data];
    v11 = 0;
    v6 = [v5 writeToFile:@"/var/mobile/Library/DeviceRegistry/MagicSwitchKeepAlive" options:268435457 error:&v11];
    v7 = v11;

    if (v6)
    {
      goto LABEL_7;
    }

    v8 = [v7 domain];
    if ([v8 isEqualToString:NSCocoaErrorDomain])
    {
      v9 = [v7 code];

      if (v9 == 516)
      {
LABEL_7:
        qword_1000213F0 = 2;
LABEL_14:

        return;
      }
    }

    else
    {
    }

    v10 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "KeepAliveManager --- Failed to create KeepAlive file with error: %@", buf, 0xCu);
    }

    goto LABEL_14;
  }
}

+ (void)deleteMagicSwitchPathFile
{
  if (qword_1000213F0 != 1)
  {
    v2 = qword_1000213F8;
    if (qword_1000213F8)
    {
      qword_1000213F8 = 0;
    }

    v3 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "KeepAliveManager --- Deleting KeepAlive file", buf, 2u);
    }

    v4 = +[NSFileManager defaultManager];
    v10 = 0;
    v5 = [v4 removeItemAtPath:@"/var/mobile/Library/DeviceRegistry/MagicSwitchKeepAlive" error:&v10];
    v6 = v10;

    if (v5)
    {
      goto LABEL_7;
    }

    v7 = [v6 domain];
    if ([v7 isEqualToString:NSCocoaErrorDomain])
    {
      v8 = [v6 code];

      if (v8 == 4)
      {
LABEL_7:
        qword_1000213F0 = 1;
LABEL_14:

        return;
      }
    }

    else
    {
    }

    v9 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "KeepAliveManager --- Failed to delete KeepAlive file with error: %@", buf, 0xCu);
    }

    goto LABEL_14;
  }
}

@end