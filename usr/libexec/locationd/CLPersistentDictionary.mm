@interface CLPersistentDictionary
- (void)persist;
@end

@implementation CLPersistentDictionary

- (void)persist
{
  if ([(CLPersistentDictionary *)self isModified])
  {
    v3 = [(CLPersistentDictionary *)self underlyingDictionary];
    v4 = [(CLPersistentDictionary *)self filename];
    v5 = [(CLPersistentDictionary *)self dataProtection];
    if (byte_102663950 == 1)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_101B2A05C();
      }

      v6 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289282;
        v19 = 2082;
        v20 = "";
        v21 = 2114;
        v22 = v4;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#PersistentDictionary saving to file which didn't exist on boot, file:%{public, location:escape_only}@}", buf, 0x1Cu);
      }
    }

    v7 = objc_autoreleasePoolPush();
    sub_10000FF38(v17, "CLPersistentDictionary saving to file", 0);
    v16 = 0;
    v8 = [NSPropertyListSerialization dataWithPropertyList:v3 format:200 options:0 error:&v16];
    if (v16)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_101B2A070();
      }

      v9 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289538;
        *&buf[4] = 0;
        v19 = 2082;
        v20 = "";
        v21 = 2114;
        v22 = v4;
        v23 = 2114;
        v24 = v16;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#PersistentDictionary Errors serializing the plist indicate non-plist types being stored therein, file:%{public, location:escape_only}@, error:%{public, location:escape_only}@}", buf, 0x26u);
        if (qword_1025D47A0 != -1)
        {
          sub_101B2A070();
        }
      }

      v10 = off_1025D47A8;
      if (!os_signpost_enabled(off_1025D47A8))
      {
        goto LABEL_29;
      }

      *buf = 68289538;
      *&buf[4] = 0;
      v19 = 2082;
      v20 = "";
      v21 = 2114;
      v22 = v4;
      v23 = 2114;
      v24 = v16;
      v11 = "#PersistentDictionary Errors serializing the plist indicate non-plist types being stored therein";
      v12 = "{msg%{public}.0s:#PersistentDictionary Errors serializing the plist indicate non-plist types being stored therein, file:%{public, location:escape_only}@, error:%{public, location:escape_only}@}";
    }

    else
    {
      v13 = 536870913;
      if (v5)
      {
        v13 = 1;
      }

      if (v5 == 1)
      {
        v14 = 1073741825;
      }

      else
      {
        v14 = v13;
      }

      [(NSData *)v8 writeToFile:v4 options:v14 error:&v16];
      if (!v16)
      {
        goto LABEL_29;
      }

      if (qword_1025D47A0 != -1)
      {
        sub_101B2A070();
      }

      v15 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289538;
        *&buf[4] = 0;
        v19 = 2082;
        v20 = "";
        v21 = 2114;
        v22 = v4;
        v23 = 2114;
        v24 = v16;
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#PersistentDictionary Writing plist to file should never result in an error, file:%{public, location:escape_only}@, error:%{public, location:escape_only}@}", buf, 0x26u);
        if (qword_1025D47A0 != -1)
        {
          sub_101B2A070();
        }
      }

      v10 = off_1025D47A8;
      if (!os_signpost_enabled(off_1025D47A8))
      {
        goto LABEL_29;
      }

      *buf = 68289538;
      *&buf[4] = 0;
      v19 = 2082;
      v20 = "";
      v21 = 2114;
      v22 = v4;
      v23 = 2114;
      v24 = v16;
      v11 = "#PersistentDictionary Writing plist to file should never result in an error";
      v12 = "{msg%{public}.0s:#PersistentDictionary Writing plist to file should never result in an error, file:%{public, location:escape_only}@, error:%{public, location:escape_only}@}";
    }

    _os_signpost_emit_with_name_impl(dword_100000000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v11, v12, buf, 0x26u);
LABEL_29:
    sub_10001A420(v17);
    objc_autoreleasePoolPop(v7);
    [(CLPersistentDictionary *)self markModifiedClean];
  }
}

@end