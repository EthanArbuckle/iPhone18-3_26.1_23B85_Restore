@interface CLAccessoryObserverHelper
+ (BOOL)isDenyListAccessory:(id)a3 name:(id)a4 model:(id)a5 serialNumber:(id)a6 firmware:(id)a7 hardwareRevision:(id)a8;
+ (BOOL)isString:(id)a3 prefixedBy:(id)a4;
@end

@implementation CLAccessoryObserverHelper

+ (BOOL)isString:(id)a3 prefixedBy:(id)a4
{
  result = 0;
  if (a3 && a4)
  {
    if ([a3 rangeOfString:a4 options:9])
    {
      v6 = 1;
    }

    else
    {
      v6 = v5 == 0;
    }

    return !v6;
  }

  return result;
}

+ (BOOL)isDenyListAccessory:(id)a3 name:(id)a4 model:(id)a5 serialNumber:(id)a6 firmware:(id)a7 hardwareRevision:(id)a8
{
  v13 = a3;
  if (a3)
  {
    v13 = [a3 stringByTrimmingCharactersInSet:{+[NSCharacterSet whitespaceCharacterSet](NSCharacterSet, "whitespaceCharacterSet")}];
  }

  if (a4)
  {
    a4 = [a4 stringByTrimmingCharactersInSet:{+[NSCharacterSet whitespaceCharacterSet](NSCharacterSet, "whitespaceCharacterSet")}];
  }

  if (a5)
  {
    a5 = [a5 stringByTrimmingCharactersInSet:{+[NSCharacterSet whitespaceCharacterSet](NSCharacterSet, "whitespaceCharacterSet")}];
  }

  if (a6)
  {
    v14 = [a6 stringByTrimmingCharactersInSet:{+[NSCharacterSet whitespaceCharacterSet](NSCharacterSet, "whitespaceCharacterSet")}];
    if (!a7)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v14 = 0;
  if (a7)
  {
LABEL_9:
    a7 = [a7 stringByTrimmingCharactersInSet:{+[NSCharacterSet whitespaceCharacterSet](NSCharacterSet, "whitespaceCharacterSet")}];
  }

LABEL_10:
  if (a8)
  {
    v15 = [a8 stringByTrimmingCharactersInSet:{+[NSCharacterSet whitespaceCharacterSet](NSCharacterSet, "whitespaceCharacterSet")}];
  }

  else
  {
    v15 = 0;
  }

  if ([v13 length])
  {
    v16 = v13;
  }

  else
  {
    v16 = 0;
  }

  if ([a4 length])
  {
    v17 = a4;
  }

  else
  {
    v17 = 0;
  }

  if ([a5 length])
  {
    v18 = a5;
  }

  else
  {
    v18 = 0;
  }

  if ([v14 length])
  {
    v19 = v14;
  }

  else
  {
    v19 = 0;
  }

  if (![a7 length])
  {
    a7 = 0;
  }

  if ([v15 length])
  {
    v20 = v15;
  }

  else
  {
    v20 = 0;
  }

  if (v16 && v18 && a7)
  {
    if (![v16 caseInsensitiveCompare:@"HARMAN"] && !objc_msgSend(v18, "caseInsensitiveCompare:", @"MIB2") && (+[CLAccessoryObserverHelper isString:prefixedBy:](CLAccessoryObserverHelper, "isString:prefixedBy:", a7, @"CLU4_MMX2_VW") || +[CLAccessoryObserverHelper isString:prefixedBy:](CLAccessoryObserverHelper, "isString:prefixedBy:", a7, @"CLU4_MMX2_SK") || +[CLAccessoryObserverHelper isString:prefixedBy:](CLAccessoryObserverHelper, "isString:prefixedBy:", a7, @"CLU4_MMX2_SE")))
    {
      if (qword_1025D45E0 != -1)
      {
        sub_1018EE0CC();
      }

      v24 = qword_1025D45E8;
      if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
      {
        *v30 = 0;
        _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEBUG, "Rejecting accessory on deny list: HARMAN", v30, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018EFEBC();
      }

LABEL_79:
      LOBYTE(v21) = 1;
      return v21;
    }

    if (![v16 caseInsensitiveCompare:@"VOLKSWAGEN AG"] && !objc_msgSend(v18, "caseInsensitiveCompare:", @"MIB STD") && !objc_msgSend(a7, "caseInsensitiveCompare:", @"1.0.0") && v19 && !objc_msgSend(v19, "caseInsensitiveCompare:", @"EP.2015.1"))
    {
      if (qword_1025D45E0 != -1)
      {
        sub_1018EE0CC();
      }

      v25 = qword_1025D45E8;
      if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
      {
        *v29 = 0;
        _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEBUG, "Rejecting accessory on deny list: Volkswagen AG, 1.0.0", v29, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018EFDD8();
      }

      goto LABEL_79;
    }

    if ((![v16 caseInsensitiveCompare:@"VOLKSWAGEN AG"] || !objc_msgSend(v16, "caseInsensitiveCompare:", @"SKODA AUTO a.s.") || !objc_msgSend(v16, "caseInsensitiveCompare:", @"SEAT S.A.")) && !objc_msgSend(v18, "caseInsensitiveCompare:", @"MIB STD") && (!objc_msgSend(a7, "caseInsensitiveCompare:", @"2.0.0") || +[CLAccessoryObserverHelper isString:prefixedBy:](CLAccessoryObserverHelper, "isString:prefixedBy:", a7, @"035") || +[CLAccessoryObserverHelper isString:prefixedBy:](CLAccessoryObserverHelper, "isString:prefixedBy:", a7, @"X35")))
    {
      if (qword_1025D45E0 != -1)
      {
        sub_1018EE0CC();
      }

      v23 = qword_1025D45E8;
      if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEBUG, "Rejecting accessory on deny list: Volkswagen AG, 2.0.0", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018EFCF4();
      }

      goto LABEL_79;
    }
  }

  LOBYTE(v21) = 0;
  if (v16 && v17 && v18 && a7 && v20)
  {
    if (![v17 caseInsensitiveCompare:@"BENTLEY"] && (!objc_msgSend(v16, "caseInsensitiveCompare:", @"HARMAN") || !objc_msgSend(v16, "caseInsensitiveCompare:", @"AISIN")) && !objc_msgSend(v18, "caseInsensitiveCompare:", @"MIB2"))
    {
      v21 = [CLAccessoryObserverHelper isString:a7 prefixedBy:@"CLU5_"];
      if (!v21)
      {
        return v21;
      }

      if (![v20 caseInsensitiveCompare:@"1.0.0"])
      {
        if (qword_1025D45E0 != -1)
        {
          sub_1018EE0CC();
        }

        v22 = qword_1025D45E8;
        if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
        {
          *v27 = 0;
          _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "Rejecting accessory on deny list: BENTLEY", v27, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018EFC10();
        }

        goto LABEL_79;
      }
    }

    LOBYTE(v21) = 0;
  }

  return v21;
}

@end