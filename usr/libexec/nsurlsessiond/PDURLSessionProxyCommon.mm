@interface PDURLSessionProxyCommon
+ (Class)messageSubclassForMessageType:(unsigned __int16)type isReply:(BOOL)reply;
+ (id)allowedClassesForUnarchiving;
+ (void)getComponentsForFullIdentifier:(id)identifier bundleIdentifier:(id *)bundleIdentifier sessionIdentifier:(id *)sessionIdentifier;
@end

@implementation PDURLSessionProxyCommon

+ (Class)messageSubclassForMessageType:(unsigned __int16)type isReply:(BOOL)reply
{
  if (type <= 1004)
  {
    if (type > 6)
    {
      if (type > 1001)
      {
        if (type != 1003)
        {
          goto LABEL_44;
        }

        v4 = off_1000D48C8;
        if (!reply)
        {
          v4 = off_1000D48C0;
        }
      }

      else
      {
        if (type != 1001)
        {
          goto LABEL_44;
        }

        v4 = off_1000D48A8;
        if (!reply)
        {
          v4 = off_1000D48A0;
        }
      }
    }

    else
    {
      if (type != 2)
      {
        goto LABEL_44;
      }

      v4 = off_1000D4898;
      if (!reply)
      {
        v4 = off_1000D4890;
      }
    }

LABEL_43:
    v5 = *v4;
    v6 = objc_opt_class();
    goto LABEL_45;
  }

  if (type <= 1010)
  {
    if (type > 1007)
    {
      if (type == 1008 || type == 1009)
      {
        goto LABEL_44;
      }

      v4 = off_1000D48D8;
      if (!reply)
      {
        v4 = off_1000D48D0;
      }
    }

    else
    {
      if (type != 1006)
      {
        goto LABEL_44;
      }

      v4 = off_1000D48B8;
      if (!reply)
      {
        v4 = off_1000D48B0;
      }
    }

    goto LABEL_43;
  }

  if (type <= 3000)
  {
    if (type != 1012)
    {
      goto LABEL_44;
    }

    v4 = &off_1000D48F8;
    if (!reply)
    {
      v4 = off_1000D48F0;
    }

    goto LABEL_43;
  }

  if (type == 3001)
  {
    v4 = off_1000D48E8;
    if (!reply)
    {
      v4 = off_1000D48E0;
    }

    goto LABEL_43;
  }

LABEL_44:
  v6 = objc_opt_class();
LABEL_45:

  return v6;
}

+ (void)getComponentsForFullIdentifier:(id)identifier bundleIdentifier:(id *)bundleIdentifier sessionIdentifier:(id *)sessionIdentifier
{
  identifierCopy = identifier;
  v8 = [identifierCopy componentsSeparatedByString:@"|"];
  v9 = v8;
  if (bundleIdentifier && sessionIdentifier && [v8 count] == 2)
  {
    *bundleIdentifier = [v9 objectAtIndex:0];
    *sessionIdentifier = [v9 objectAtIndex:1];
  }

  else
  {
    v10 = qword_1000EB1D8;
    if (os_log_type_enabled(qword_1000EB1D8, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = identifierCopy;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Could not break full NSURLSession identifier %@ into bundle ID and session ID components", &v11, 0xCu);
    }
  }
}

+ (id)allowedClassesForUnarchiving
{
  if (qword_1000EB168 != -1)
  {
    dispatch_once(&qword_1000EB168, &stru_1000D55F0);
  }

  v3 = qword_1000EB160;

  return v3;
}

@end