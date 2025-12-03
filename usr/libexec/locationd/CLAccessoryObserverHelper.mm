@interface CLAccessoryObserverHelper
+ (BOOL)isDenyListAccessory:(id)accessory name:(id)name model:(id)model serialNumber:(id)number firmware:(id)firmware hardwareRevision:(id)revision;
+ (BOOL)isString:(id)string prefixedBy:(id)by;
@end

@implementation CLAccessoryObserverHelper

+ (BOOL)isString:(id)string prefixedBy:(id)by
{
  result = 0;
  if (string && by)
  {
    if ([string rangeOfString:by options:9])
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

+ (BOOL)isDenyListAccessory:(id)accessory name:(id)name model:(id)model serialNumber:(id)number firmware:(id)firmware hardwareRevision:(id)revision
{
  accessoryCopy = accessory;
  if (accessory)
  {
    accessoryCopy = [accessory stringByTrimmingCharactersInSet:{+[NSCharacterSet whitespaceCharacterSet](NSCharacterSet, "whitespaceCharacterSet")}];
  }

  if (name)
  {
    name = [name stringByTrimmingCharactersInSet:{+[NSCharacterSet whitespaceCharacterSet](NSCharacterSet, "whitespaceCharacterSet")}];
  }

  if (model)
  {
    model = [model stringByTrimmingCharactersInSet:{+[NSCharacterSet whitespaceCharacterSet](NSCharacterSet, "whitespaceCharacterSet")}];
  }

  if (number)
  {
    v14 = [number stringByTrimmingCharactersInSet:{+[NSCharacterSet whitespaceCharacterSet](NSCharacterSet, "whitespaceCharacterSet")}];
    if (!firmware)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v14 = 0;
  if (firmware)
  {
LABEL_9:
    firmware = [firmware stringByTrimmingCharactersInSet:{+[NSCharacterSet whitespaceCharacterSet](NSCharacterSet, "whitespaceCharacterSet")}];
  }

LABEL_10:
  if (revision)
  {
    v15 = [revision stringByTrimmingCharactersInSet:{+[NSCharacterSet whitespaceCharacterSet](NSCharacterSet, "whitespaceCharacterSet")}];
  }

  else
  {
    v15 = 0;
  }

  if ([accessoryCopy length])
  {
    v16 = accessoryCopy;
  }

  else
  {
    v16 = 0;
  }

  if ([name length])
  {
    nameCopy = name;
  }

  else
  {
    nameCopy = 0;
  }

  if ([model length])
  {
    modelCopy = model;
  }

  else
  {
    modelCopy = 0;
  }

  if ([v14 length])
  {
    v19 = v14;
  }

  else
  {
    v19 = 0;
  }

  if (![firmware length])
  {
    firmware = 0;
  }

  if ([v15 length])
  {
    v20 = v15;
  }

  else
  {
    v20 = 0;
  }

  if (v16 && modelCopy && firmware)
  {
    if (![v16 caseInsensitiveCompare:@"HARMAN"] && !objc_msgSend(modelCopy, "caseInsensitiveCompare:", @"MIB2") && (+[CLAccessoryObserverHelper isString:prefixedBy:](CLAccessoryObserverHelper, "isString:prefixedBy:", firmware, @"CLU4_MMX2_VW") || +[CLAccessoryObserverHelper isString:prefixedBy:](CLAccessoryObserverHelper, "isString:prefixedBy:", firmware, @"CLU4_MMX2_SK") || +[CLAccessoryObserverHelper isString:prefixedBy:](CLAccessoryObserverHelper, "isString:prefixedBy:", firmware, @"CLU4_MMX2_SE")))
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

    if (![v16 caseInsensitiveCompare:@"VOLKSWAGEN AG"] && !objc_msgSend(modelCopy, "caseInsensitiveCompare:", @"MIB STD") && !objc_msgSend(firmware, "caseInsensitiveCompare:", @"1.0.0") && v19 && !objc_msgSend(v19, "caseInsensitiveCompare:", @"EP.2015.1"))
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

    if ((![v16 caseInsensitiveCompare:@"VOLKSWAGEN AG"] || !objc_msgSend(v16, "caseInsensitiveCompare:", @"SKODA AUTO a.s.") || !objc_msgSend(v16, "caseInsensitiveCompare:", @"SEAT S.A.")) && !objc_msgSend(modelCopy, "caseInsensitiveCompare:", @"MIB STD") && (!objc_msgSend(firmware, "caseInsensitiveCompare:", @"2.0.0") || +[CLAccessoryObserverHelper isString:prefixedBy:](CLAccessoryObserverHelper, "isString:prefixedBy:", firmware, @"035") || +[CLAccessoryObserverHelper isString:prefixedBy:](CLAccessoryObserverHelper, "isString:prefixedBy:", firmware, @"X35")))
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
  if (v16 && nameCopy && modelCopy && firmware && v20)
  {
    if (![nameCopy caseInsensitiveCompare:@"BENTLEY"] && (!objc_msgSend(v16, "caseInsensitiveCompare:", @"HARMAN") || !objc_msgSend(v16, "caseInsensitiveCompare:", @"AISIN")) && !objc_msgSend(modelCopy, "caseInsensitiveCompare:", @"MIB2"))
    {
      v21 = [CLAccessoryObserverHelper isString:firmware prefixedBy:@"CLU5_"];
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