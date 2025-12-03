@interface NFATLMobileSettings
+ (BOOL)findAID:(id)d filterType:(int64_t)type;
+ (id)_getFilterWithType:(int64_t)type;
@end

@implementation NFATLMobileSettings

+ (BOOL)findAID:(id)d filterType:(int64_t)type
{
  dCopy = d;
  v7 = [self _getFilterWithType:type];
  if (![v7 count])
  {
    goto LABEL_14;
  }

  if (type == 2)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v32;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v32 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v31 + 1) + 8 * i);
          v30 = 0;
          v14 = [NSRegularExpression regularExpressionWithPattern:v13 options:0 error:&v30];
          v15 = v30;
          v26 = 0;
          v27 = &v26;
          v28 = 0x2020000000;
          v29 = 0;
          v16 = [dCopy length];
          v25[0] = _NSConcreteStackBlock;
          v25[1] = 3221225472;
          v25[2] = sub_100206668;
          v25[3] = &unk_10031BBA8;
          v25[4] = &v26;
          [v14 enumerateMatchesInString:dCopy options:0 range:0 usingBlock:{v16, v25}];
          v17 = *(v27 + 24);

          _Block_object_dispose(&v26, 8);
          if (v17)
          {

            v20 = 1;
            goto LABEL_16;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v31 objects:v35 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_14;
  }

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100206688;
  v22[3] = &unk_10031BBD0;
  v23 = dCopy;
  typeCopy = type;
  v18 = [v7 indexOfObjectPassingTest:v22];
  v19 = [v7 count];

  if (v18 >= v19)
  {
LABEL_14:
    v20 = 0;
    goto LABEL_16;
  }

  v20 = 1;
LABEL_16:

  return v20;
}

+ (id)_getFilterWithType:(int64_t)type
{
  if (objc_opt_respondsToSelector())
  {
    v6 = +[AppletTranslator getNFCSettings];
    v7 = [v6 objectForKeyedSubscript:@"Version"];
    if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ([v7 floatValue], v8 < 1.0))
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v10 = Logger;
        Class = object_getClass(self);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(self);
        Name = sel_getName(a2);
        [v7 floatValue];
        v16 = 45;
        if (isMetaClass)
        {
          v16 = 43;
        }

        v10(3, "%c[%{public}s %{public}s]:%i Invalid config version: %f", v16, ClassName, Name, 88, v15);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v17 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = object_getClass(self);
        if (class_isMetaClass(v18))
        {
          v19 = 43;
        }

        else
        {
          v19 = 45;
        }

        v20 = object_getClassName(self);
        v21 = sel_getName(a2);
        [v7 floatValue];
        *buf = 67110146;
        v39 = v19;
        v40 = 2082;
        v41 = v20;
        v42 = 2082;
        v43 = v21;
        v44 = 1024;
        v45 = 88;
        v46 = 2048;
        v47 = v22;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid config version: %f", buf, 0x2Cu);
      }

      goto LABEL_15;
    }

    v33 = [v6 objectForKeyedSubscript:@"ISO7816_SELECT_BLACKLIST"];

    if (!v33)
    {
      v7 = 0;
LABEL_15:
      v23 = 0;
LABEL_16:

      goto LABEL_27;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (type <= 2)
      {
        switch(type)
        {
          case 0:
            v34 = @"AID_FILTER_EXACT";
            goto LABEL_48;
          case 1:
            v34 = @"AID_FILTER_PREFIX";
            goto LABEL_48;
          case 2:
            v34 = @"AID_FILTER_REGEX";
LABEL_48:
            v35 = [v33 objectForKeyedSubscript:v34];
LABEL_50:
            v7 = v35;

            goto LABEL_51;
        }

LABEL_46:
        v7 = v33;
        goto LABEL_51;
      }

      if (type == 3)
      {
        v7 = [v6 objectForKeyedSubscript:@"ISO7816_SELECT_PACE_APP_LIST"];

        if (!v7)
        {
          v7 = &off_100339198;
        }

LABEL_51:
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v7 = v7;
          v23 = v7;
          goto LABEL_16;
        }

        goto LABEL_15;
      }

      if (type == 4)
      {
        v37 = @"F049442E43484E";
        v35 = [NSArray arrayWithObjects:&v37 count:1];
        goto LABEL_50;
      }

      if (type != 5)
      {
        goto LABEL_46;
      }
    }

    v23 = 0;
    v7 = v33;
    goto LABEL_16;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v24 = NFLogGetLogger();
  if (v24)
  {
    v25 = v24;
    v26 = object_getClass(self);
    v27 = class_isMetaClass(v26);
    v28 = object_getClassName(self);
    v36 = sel_getName(a2);
    v29 = 45;
    if (v27)
    {
      v29 = 43;
    }

    v25(3, "%c[%{public}s %{public}s]:%i Unable to read NFC settings from ATL", v29, v28, v36, 78);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v6 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v30 = object_getClass(self);
    if (class_isMetaClass(v30))
    {
      v31 = 43;
    }

    else
    {
      v31 = 45;
    }

    *buf = 67109890;
    v39 = v31;
    v40 = 2082;
    v41 = object_getClassName(self);
    v42 = 2082;
    v43 = sel_getName(a2);
    v44 = 1024;
    v45 = 78;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unable to read NFC settings from ATL", buf, 0x22u);
  }

  v23 = 0;
LABEL_27:

  return v23;
}

@end