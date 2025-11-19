@interface PDURLSessionProxyCommon
+ (Class)messageSubclassForMessageType:(unsigned __int16)a3 isReply:(BOOL)a4;
+ (id)allowedClassesForUnarchiving;
+ (void)getComponentsForFullIdentifier:(id)a3 bundleIdentifier:(id *)a4 sessionIdentifier:(id *)a5;
@end

@implementation PDURLSessionProxyCommon

+ (Class)messageSubclassForMessageType:(unsigned __int16)a3 isReply:(BOOL)a4
{
  if (a3 <= 1004)
  {
    if (a3 > 6)
    {
      if (a3 > 1001)
      {
        if (a3 != 1003)
        {
          goto LABEL_44;
        }

        v4 = off_1000D48C8;
        if (!a4)
        {
          v4 = off_1000D48C0;
        }
      }

      else
      {
        if (a3 != 1001)
        {
          goto LABEL_44;
        }

        v4 = off_1000D48A8;
        if (!a4)
        {
          v4 = off_1000D48A0;
        }
      }
    }

    else
    {
      if (a3 != 2)
      {
        goto LABEL_44;
      }

      v4 = off_1000D4898;
      if (!a4)
      {
        v4 = off_1000D4890;
      }
    }

LABEL_43:
    v5 = *v4;
    v6 = objc_opt_class();
    goto LABEL_45;
  }

  if (a3 <= 1010)
  {
    if (a3 > 1007)
    {
      if (a3 == 1008 || a3 == 1009)
      {
        goto LABEL_44;
      }

      v4 = off_1000D48D8;
      if (!a4)
      {
        v4 = off_1000D48D0;
      }
    }

    else
    {
      if (a3 != 1006)
      {
        goto LABEL_44;
      }

      v4 = off_1000D48B8;
      if (!a4)
      {
        v4 = off_1000D48B0;
      }
    }

    goto LABEL_43;
  }

  if (a3 <= 3000)
  {
    if (a3 != 1012)
    {
      goto LABEL_44;
    }

    v4 = &off_1000D48F8;
    if (!a4)
    {
      v4 = off_1000D48F0;
    }

    goto LABEL_43;
  }

  if (a3 == 3001)
  {
    v4 = off_1000D48E8;
    if (!a4)
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

+ (void)getComponentsForFullIdentifier:(id)a3 bundleIdentifier:(id *)a4 sessionIdentifier:(id *)a5
{
  v7 = a3;
  v8 = [v7 componentsSeparatedByString:@"|"];
  v9 = v8;
  if (a4 && a5 && [v8 count] == 2)
  {
    *a4 = [v9 objectAtIndex:0];
    *a5 = [v9 objectAtIndex:1];
  }

  else
  {
    v10 = qword_1000EB1D8;
    if (os_log_type_enabled(qword_1000EB1D8, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v7;
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