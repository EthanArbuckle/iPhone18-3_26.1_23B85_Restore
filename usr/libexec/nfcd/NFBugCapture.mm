@interface NFBugCapture
+ (id)_getInstance;
+ (void)handleCallback:(unint64_t)a3;
- (BOOL)_checkRateLimitForType:(id)a3 subType:(id)a4;
- (NFBugCapture)init;
- (id)_buildTapToRadarURL;
- (void)_handleCallbackSync:(unint64_t)a3;
- (void)_requestTapToRadarSync:(id)a3 componentName:(id)a4 preferences:(id)a5 withType:(id)a6 withSubTypeContext:(id)a7 additionalInfo:(id)a8;
- (void)requestAutoBugCapture:(id)a3 subType:(id)a4 subTypeContext:(id)a5 attachments:(id)a6 completion:(id)a7;
@end

@implementation NFBugCapture

- (NFBugCapture)init
{
  v32.receiver = self;
  v32.super_class = NFBugCapture;
  v3 = [(NFBugCapture *)&v32 init];
  if (!v3)
  {
    goto LABEL_5;
  }

  if (objc_opt_class())
  {
    sub_10027EA3C(v4);
    v6 = *(v5 + 3912);
    if (objc_opt_class())
    {
      v7 = objc_opt_class();
      pendingRequest = v3->_pendingRequest;
      v3->_lsApplicationWorkspace = v7;
      v3->_pendingRequest = 0;

      componentName = v3->_componentName;
      v3->_componentName = 0;

      additionalInfo = v3->_additionalInfo;
      v3->_additionalInfo = 0;

      v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v12 = dispatch_queue_attr_make_with_qos_class(v11, QOS_CLASS_UTILITY, 0);
      v13 = dispatch_queue_create("com.apple.stockholm.BugCapture", v12);
      queue = v3->_queue;
      v3->_queue = v13;

      userDefaults = v3->_userDefaults;
      v3->_userDefaults = 0;

      type = v3->_type;
      v3->_type = 0;

      subTypeContext = v3->_subTypeContext;
      v3->_subTypeContext = 0;

LABEL_5:
      v18 = v3;
      goto LABEL_16;
    }
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v20 = Logger;
    Class = object_getClass(v3);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(v3);
    Name = sel_getName(a2);
    v24 = 45;
    if (isMetaClass)
    {
      v24 = 43;
    }

    v20(3, "%c[%{public}s %{public}s]:%i Failed to get weak linked class", v24, ClassName, Name, 74);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v25 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    v26 = object_getClass(v3);
    if (class_isMetaClass(v26))
    {
      v27 = 43;
    }

    else
    {
      v27 = 45;
    }

    v28 = object_getClassName(v3);
    v29 = sel_getName(a2);
    *buf = 67109890;
    v34 = v27;
    v35 = 2082;
    v36 = v28;
    v37 = 2082;
    v38 = v29;
    v39 = 1024;
    v40 = 74;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get weak linked class", buf, 0x22u);
  }

  v18 = 0;
LABEL_16:

  return v18;
}

+ (id)_getInstance
{
  if (qword_10035DA88 != -1)
  {
    dispatch_once(&qword_10035DA88, &stru_10031ADA0);
  }

  v3 = qword_10035DA80;

  return v3;
}

- (id)_buildTapToRadarURL
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = self->_pendingRequest;
  v6 = [(NSMutableDictionary *)self->_additionalInfo objectForKeyedSubscript:@"FailureKey"];
  v7 = [(NSMutableDictionary *)self->_additionalInfo objectForKeyedSubscript:@"Attachments"];
  if (!v7)
  {
    v70 = 0;
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v7 componentsJoinedByString:{@", "}];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
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
        v14 = 45;
        if (isMetaClass)
        {
          v14 = 43;
        }

        v10(3, "%c[%{public}s %{public}s]:%i Attachments must be an NSString* or NSArray<NSString *>*", v14, ClassName, Name, 128);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v15 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = object_getClass(self);
        if (class_isMetaClass(v16))
        {
          v17 = 43;
        }

        else
        {
          v17 = 45;
        }

        *buf = 67109890;
        v72 = v17;
        v73 = 2082;
        v74 = object_getClassName(self);
        v75 = 2082;
        v76 = sel_getName(a2);
        v77 = 1024;
        v78 = 128;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Attachments must be an NSString* or NSArray<NSString *>*", buf, 0x22u);
      }

      v70 = 0;
      goto LABEL_18;
    }

    v8 = v7;
  }

  v70 = v8;
LABEL_18:
  [(NSMutableDictionary *)self->_additionalInfo removeObjectForKey:@"Attachments"];
LABEL_19:
  if ([(NSString *)self->_componentName isEqualToString:@"NFC-SE"])
  {
    v68 = v6;
    [(NSMutableDictionary *)self->_additionalInfo removeObjectForKey:@"FailureKey"];

    v18 = @"Crash/Hang/Data Loss";
    if (self->_additionalInfo)
    {
      v19 = [NSString stringWithFormat:@"%@\n", self->_additionalInfo];
      v20 = [(NSMutableDictionary *)self->_additionalInfo objectForKeyedSubscript:@"Status Word"];

      if (v20)
      {
        v21 = [(NSMutableDictionary *)self->_additionalInfo objectForKeyedSubscript:@"Status Word"];
        v22 = [NSString stringWithFormat:@"Returned with status: %@ \n", v21];
        v23 = [(__CFString *)v19 stringByAppendingString:v22];

        v19 = v23;
      }

      v24 = [(NSMutableDictionary *)self->_additionalInfo objectForKey:@"Classification"];
      v25 = v24;
      if (v24)
      {
        v26 = v24;
      }

      else
      {
        v26 = @"Crash/Hang/Data Loss";
      }

      v18 = v26;
    }

    else
    {
      v19 = &stru_10031EA18;
    }

    v41 = [NSString stringWithFormat:@"Error: %@\n", self->_pendingRequest];
    v5 = [(__CFString *)v19 stringByAppendingString:v41];

    v27 = @"1414626";
    v28 = @"TTR";
    goto LABEL_41;
  }

  if ([(NSString *)self->_componentName isEqualToString:@"Purple Stockholm"])
  {
    v68 = v6;
    v27 = @"483780";
    v28 = @"1.0";
    v18 = @"Crash/Hang/Data Loss";
LABEL_41:
    if ((-[__CFString isEqual:](v27, "isEqual:", @"483780") & 1) == 0 && [v68 isEqual:@"ttrTransaction"])
    {
      v42 = [(NSString *)v5 stringByAppendingString:@"Please provide the following details inline (in RADAR DESCRIPTION) for transaction failures.\n\n****IMPORTANT****\n\nTransactional issues frequently require follow up at the site of the failure. Without merchant name and location, this is not possible. In order to facilitate and expedite investigation into your issue, please provide the following details inline (in RADAR DESCRIPTION). Thanks.\n\n1. Merchant name and location: \n\n2. Where was the error reported (e.g. in-store terminal, gas pump, transit gate, on phone/watch)? \n\n3. Has the card been used successfully at other merchants? (Yes/No): \n\n4. When was the last time this card worked at this merchant? (Specific date/'n' days ago/Never/I don't remember): \n\n5.Apple Card (yes/no)? \n\nPlease provide responses inline (in RADAR DESCRIPTION)"];

      v5 = v42;
    }

    v43 = [NSURLQueryItem queryItemWithName:@"ComponentID" value:v27];
    [v3 addObject:v43];

    v44 = [NSURLQueryItem queryItemWithName:@"ComponentName" value:self->_componentName];
    [v3 addObject:v44];

    v45 = [NSURLQueryItem queryItemWithName:@"ComponentVersion" value:v28];
    [v3 addObject:v45];

    v46 = [NSURLQueryItem queryItemWithName:@"Classification" value:v18];
    [v3 addObject:v46];

    v47 = [NSURLQueryItem queryItemWithName:@"Reproducibility" value:@"I Didn't Try"];
    [v3 addObject:v47];

    v48 = [[NSString alloc] initWithFormat:@"NFC/SE TTR - %@", self->_pendingRequest];
    v49 = [NSURLQueryItem queryItemWithName:@"Title" value:v48];
    [v3 addObject:v49];

    v50 = [NSURLQueryItem queryItemWithName:@"Description" value:v5];
    [v3 addObject:v50];

    v51 = [NSURLQueryItem queryItemWithName:@"IncludeDevicePrefixInTitle" value:@"1"];
    [v3 addObject:v51];

    if (v70)
    {
      v52 = [NSURLQueryItem queryItemWithName:@"Attachments" value:?];
      [v3 addObject:v52];
    }

    [v4 setScheme:@"tap-to-radar"];
    [v4 setHost:@"new"];
    [v4 setQueryItems:v3];
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v53 = NFLogGetLogger();
    if (v53)
    {
      v54 = v53;
      v55 = object_getClass(self);
      v56 = class_isMetaClass(v55);
      v64 = object_getClassName(self);
      v67 = sel_getName(a2);
      v57 = 45;
      if (v56)
      {
        v57 = 43;
      }

      v54(6, "%c[%{public}s %{public}s]:%i URL: %{public}@", v57, v64, v67, 176, v4);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v58 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      v59 = object_getClass(self);
      if (class_isMetaClass(v59))
      {
        v60 = 43;
      }

      else
      {
        v60 = 45;
      }

      v61 = object_getClassName(self);
      v62 = sel_getName(a2);
      *buf = 67110146;
      v72 = v60;
      v73 = 2082;
      v74 = v61;
      v75 = 2082;
      v76 = v62;
      v77 = 1024;
      v78 = 176;
      v79 = 2114;
      v80 = v4;
      _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i URL: %{public}@", buf, 0x2Cu);
    }

    v40 = [v4 URL];
    v6 = v68;
    goto LABEL_56;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v29 = NFLogGetLogger();
  if (v29)
  {
    v30 = v29;
    v31 = object_getClass(self);
    v32 = class_isMetaClass(v31);
    v33 = object_getClassName(self);
    v66 = sel_getName(a2);
    v34 = 45;
    if (v32)
    {
      v34 = 43;
    }

    v30(3, "%c[%{public}s %{public}s]:%i Ignoring TTR callback with wrong component name. Should either be NFC-SE or Purple Stockholm", v34, v33, v66, 152);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v35 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    v36 = object_getClass(self);
    if (class_isMetaClass(v36))
    {
      v37 = 43;
    }

    else
    {
      v37 = 45;
    }

    v38 = object_getClassName(self);
    v39 = sel_getName(a2);
    *buf = 67109890;
    v72 = v37;
    v73 = 2082;
    v74 = v38;
    v75 = 2082;
    v76 = v39;
    v77 = 1024;
    v78 = 152;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Ignoring TTR callback with wrong component name. Should either be NFC-SE or Purple Stockholm", buf, 0x22u);
  }

  v40 = 0;
  v18 = @"Crash/Hang/Data Loss";
LABEL_56:

  return v40;
}

- (void)_handleCallbackSync:(unint64_t)a3
{
  dispatch_assert_queue_V2(self->_queue);
  if (self->_pendingRequest)
  {
    if (self->_componentName)
    {
      userDefaults = self->_userDefaults;
      v7 = [NSDate dateWithTimeIntervalSinceNow:86400.0];
      [(NSUserDefaults *)userDefaults setObject:v7 forKey:@"NFTTRProhibitRequestsUntil"];

      [(NSUserDefaults *)self->_userDefaults synchronize];
      if (a3 == 1)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          v38 = Logger;
          Class = object_getClass(self);
          isMetaClass = class_isMetaClass(Class);
          ClassName = object_getClassName(self);
          Name = sel_getName(a2);
          v42 = 45;
          if (isMetaClass)
          {
            v42 = 43;
          }

          v38(6, "%c[%{public}s %{public}s]:%i NotNow response", v42, ClassName, Name, 211);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v43 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          v44 = object_getClass(self);
          if (class_isMetaClass(v44))
          {
            v45 = 43;
          }

          else
          {
            v45 = 45;
          }

          *buf = 67109890;
          v61 = v45;
          v62 = 2082;
          v63 = object_getClassName(self);
          v64 = 2082;
          v65 = sel_getName(a2);
          v66 = 1024;
          v67 = 211;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i NotNow response", buf, 0x22u);
        }
      }

      else
      {
        if (a3 != 2)
        {
          v46 = [(NFBugCapture *)self _buildTapToRadarURL];
          if (v46)
          {
            v47 = [(objc_class *)self->_lsApplicationWorkspace defaultWorkspace];
            [v47 openURL:v46 configuration:0 completionHandler:0];
          }

          goto LABEL_48;
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v8 = NFLogGetLogger();
        if (v8)
        {
          v9 = v8;
          v10 = object_getClass(self);
          v11 = class_isMetaClass(v10);
          v12 = object_getClassName(self);
          v56 = sel_getName(a2);
          v13 = 45;
          if (v11)
          {
            v13 = 43;
          }

          v9(6, "%c[%{public}s %{public}s]:%i User canceled response", v13, v12, v56, 203);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v14 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = object_getClass(self);
          if (class_isMetaClass(v15))
          {
            v16 = 43;
          }

          else
          {
            v16 = 45;
          }

          *buf = 67109890;
          v61 = v16;
          v62 = 2082;
          v63 = object_getClassName(self);
          v64 = 2082;
          v65 = sel_getName(a2);
          v66 = 1024;
          v67 = 203;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i User canceled response", buf, 0x22u);
        }

        v17 = self->_userDefaults;
        v18 = +[NSDate distantFuture];
        [(NSUserDefaults *)v17 setObject:v18 forKey:@"NFTTRProhibitRequestsUntil"];

        [(NSUserDefaults *)self->_userDefaults synchronize];
      }

      sub_100199548(NFBugCapture, self->_type, self->_pendingRequest, self->_subTypeContext, 0, 0);
LABEL_48:
      Main = CFRunLoopGetMain();
      CFRunLoopRemoveSource(Main, self->_runLoopSource, kCFRunLoopCommonModes);
      runLoopSource = self->_runLoopSource;
      if (runLoopSource)
      {
        CFRelease(runLoopSource);
      }

      self->_runLoopSource = 0;
      userNotification = self->_userNotification;
      if (userNotification)
      {
        CFRelease(userNotification);
      }

      self->_userNotification = 0;
      pendingRequest = self->_pendingRequest;
      self->_pendingRequest = 0;

      componentName = self->_componentName;
      self->_componentName = 0;

      additionalInfo = self->_additionalInfo;
      self->_additionalInfo = 0;

      v54 = self->_userDefaults;
      self->_userDefaults = 0;

      type = self->_type;
      self->_type = 0;

      subTypeContext = self->_subTypeContext;
      self->_subTypeContext = 0;
      goto LABEL_53;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v29 = NFLogGetLogger();
    if (v29)
    {
      v30 = v29;
      v31 = object_getClass(self);
      v32 = class_isMetaClass(v31);
      v33 = object_getClassName(self);
      v58 = sel_getName(a2);
      v34 = 45;
      if (v32)
      {
        v34 = 43;
      }

      v30(3, "%c[%{public}s %{public}s]:%i Ignoring TTR callback with no component name", v34, v33, v58, 192);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    subTypeContext = NFSharedLogGetLogger();
    if (os_log_type_enabled(subTypeContext, OS_LOG_TYPE_ERROR))
    {
      v35 = object_getClass(self);
      if (class_isMetaClass(v35))
      {
        v36 = 43;
      }

      else
      {
        v36 = 45;
      }

      *buf = 67109890;
      v61 = v36;
      v62 = 2082;
      v63 = object_getClassName(self);
      v64 = 2082;
      v65 = sel_getName(a2);
      v66 = 1024;
      v67 = 192;
      v28 = "%c[%{public}s %{public}s]:%i Ignoring TTR callback with no component name";
LABEL_33:
      _os_log_impl(&_mh_execute_header, subTypeContext, OS_LOG_TYPE_ERROR, v28, buf, 0x22u);
    }
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v19 = NFLogGetLogger();
    if (v19)
    {
      v20 = v19;
      v21 = object_getClass(self);
      v22 = class_isMetaClass(v21);
      v23 = object_getClassName(self);
      v57 = sel_getName(a2);
      v24 = 45;
      if (v22)
      {
        v24 = 43;
      }

      v20(3, "%c[%{public}s %{public}s]:%i Ignoring TTR callback with no pending request", v24, v23, v57, 189);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    subTypeContext = NFSharedLogGetLogger();
    if (os_log_type_enabled(subTypeContext, OS_LOG_TYPE_ERROR))
    {
      v26 = object_getClass(self);
      if (class_isMetaClass(v26))
      {
        v27 = 43;
      }

      else
      {
        v27 = 45;
      }

      *buf = 67109890;
      v61 = v27;
      v62 = 2082;
      v63 = object_getClassName(self);
      v64 = 2082;
      v65 = sel_getName(a2);
      v66 = 1024;
      v67 = 189;
      v28 = "%c[%{public}s %{public}s]:%i Ignoring TTR callback with no pending request";
      goto LABEL_33;
    }
  }

LABEL_53:
}

+ (void)handleCallback:(unint64_t)a3
{
  v4 = +[NFBugCapture _getInstance];
  v5 = v4;
  if (v4)
  {
    v6 = v4[1];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1001996F4;
    v7[3] = &unk_100315F58;
    v8 = v4;
    v9 = a3;
    dispatch_async(v6, v7);
  }
}

- (void)_requestTapToRadarSync:(id)a3 componentName:(id)a4 preferences:(id)a5 withType:(id)a6 withSubTypeContext:(id)a7 additionalInfo:(id)a8
{
  v15 = a3;
  v150 = a4;
  v16 = a5;
  v149 = a6;
  v17 = a7;
  v18 = a8;
  if ((NFProductIsDevBoard() & 1) == 0 && (NFProductIsVM() & 1) == 0 && !NFProductIsNED())
  {
    v25 = [v18 objectForKey:@"FailureKey"];
    v146 = v16;
    if (v25)
    {
      obj = v15;
      v29 = [[NSUserDefaults alloc] initWithSuiteName:@"nfcd"];
      v30 = [v29 objectForKey:v25];

      v144 = v29;
      if (v30 && ([v29 objectForKey:v25], v31 = objc_claimAutoreleasedReturnValue(), v32 = objc_msgSend(v31, "integerValue"), v31, !v32))
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          v36 = Logger;
          Class = object_getClass(self);
          isMetaClass = class_isMetaClass(Class);
          ClassName = object_getClassName(self);
          Name = sel_getName(a2);
          v40 = 45;
          if (isMetaClass)
          {
            v40 = 43;
          }

          v36(6, "%c[%{public}s %{public}s]:%i Ignoring TTR callback. Toggle switch for this failure is set to OFF in Stockholm internal settings.", v40, ClassName, Name, 391);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v41 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          v42 = object_getClass(self);
          if (class_isMetaClass(v42))
          {
            v43 = 43;
          }

          else
          {
            v43 = 45;
          }

          *buf = 67109890;
          v155 = v43;
          v156 = 2082;
          v157 = object_getClassName(self);
          v158 = 2082;
          v159 = sel_getName(a2);
          v160 = 1024;
          v161 = 391;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Ignoring TTR callback. Toggle switch for this failure is set to OFF in Stockholm internal settings.", buf, 0x22u);
        }

        v34 = 0;
        v15 = obj;
      }

      else
      {
        v15 = obj;
        if ([v25 isEqual:@"ttrTransaction"])
        {
          usleep(0x2625A0u);
        }

        if (v17)
        {
          v33 = [obj stringByAppendingString:v17];

          v34 = 1;
          v15 = v33;
        }

        else
        {
          v34 = 1;
        }
      }
    }

    else
    {
      v34 = 1;
    }

    error = 0;
    dispatch_assert_queue_V2(self->_queue);
    if (self->_pendingRequest && self->_componentName)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v45 = NFLogGetLogger();
      if (v45)
      {
        v46 = v45;
        v47 = object_getClass(self);
        v48 = class_isMetaClass(v47);
        v49 = v15;
        v50 = object_getClassName(self);
        v138 = sel_getName(a2);
        v51 = 45;
        if (v48)
        {
          v51 = 43;
        }

        v132 = v50;
        v15 = v49;
        v46(3, "%c[%{public}s %{public}s]:%i Discarding TTR request, already in flight", v51, v132, v138, 411);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v52 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        v53 = object_getClass(self);
        if (class_isMetaClass(v53))
        {
          v54 = 43;
        }

        else
        {
          v54 = 45;
        }

        v55 = object_getClassName(self);
        v56 = sel_getName(a2);
        *buf = 67109890;
        v155 = v54;
        v156 = 2082;
        v157 = v55;
        v158 = 2082;
        v159 = v56;
        v160 = 1024;
        v161 = 411;
        _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Discarding TTR request, already in flight", buf, 0x22u);
      }

      v16 = v146;
      v28 = v149;
      goto LABEL_112;
    }

    obja = v15;
    sub_10027EB5C(v44);
    if (!**(v57 + 4072))
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v58 = NFLogGetLogger();
      if (v58)
      {
        v59 = v58;
        v60 = object_getClass(self);
        v61 = class_isMetaClass(v60);
        v62 = object_getClassName(self);
        v139 = sel_getName(a2);
        v63 = 45;
        if (v61)
        {
          v63 = 43;
        }

        v59(3, "%c[%{public}s %{public}s]:%i Missing SB notif key SBUserNotificationDismissOnLock", v63, v62, v139, 417);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v64 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        v65 = object_getClass(self);
        if (class_isMetaClass(v65))
        {
          v66 = 43;
        }

        else
        {
          v66 = 45;
        }

        v67 = object_getClassName(self);
        v68 = sel_getName(a2);
        *buf = 67109890;
        v155 = v66;
        v156 = 2082;
        v157 = v67;
        v158 = 2082;
        v159 = v68;
        v160 = 1024;
        v161 = 417;
        _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Missing SB notif key SBUserNotificationDismissOnLock", buf, 0x22u);
      }

      v34 = 0;
    }

    v145 = v18;
    v69 = [NSUserDefaults alloc];
    if (v146)
    {
      v70 = v146;
    }

    else
    {
      v70 = @"com.apple.nfcd.nfttr";
    }

    v71 = [v69 initWithSuiteName:v70];
    userDefaults = self->_userDefaults;
    self->_userDefaults = v71;

    v73 = [(NSUserDefaults *)self->_userDefaults objectForKey:@"NFTTRProhibitRequestsUntil"];
    if (v73)
    {
      v75 = +[NSDate date];
      v76 = [v73 compare:v75];

      if (v76 == 1)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v77 = NFLogGetLogger();
        if (v77)
        {
          v78 = v77;
          v79 = object_getClass(self);
          v80 = class_isMetaClass(v79);
          v133 = object_getClassName(self);
          v140 = sel_getName(a2);
          v81 = 45;
          if (v80)
          {
            v81 = 43;
          }

          v78(6, "%c[%{public}s %{public}s]:%i TTR is prohibited until %{public}@", v81, v133, v140, 426, v73);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v82 = NFSharedLogGetLogger();
        v15 = obja;
        if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
        {
          v83 = object_getClass(self);
          if (class_isMetaClass(v83))
          {
            v84 = 43;
          }

          else
          {
            v84 = 45;
          }

          v85 = object_getClassName(self);
          v86 = sel_getName(a2);
          *buf = 67110146;
          v155 = v84;
          v156 = 2082;
          v157 = v85;
          v158 = 2082;
          v159 = v86;
          v160 = 1024;
          v161 = 426;
          v162 = 2114;
          v163 = v73;
          _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i TTR is prohibited until %{public}@", buf, 0x2Cu);
        }

        v87 = self->_userDefaults;
        self->_userDefaults = 0;

        goto LABEL_87;
      }
    }

    v15 = obja;
    if ((v34 & 1) == 0)
    {
LABEL_87:
      v28 = v149;
      sub_100199548(NFBugCapture, v149, v15, v17, 0, 0);
      v52 = v73;
      v18 = v145;
      v16 = v146;
LABEL_112:

      goto LABEL_14;
    }

    v152[0] = kCFUserNotificationAlertHeaderKey;
    v152[1] = kCFUserNotificationAlertMessageKey;
    v153[0] = @"NFC/SE Error Detected!";
    v153[1] = @"Please file a Radar";
    v152[2] = kCFUserNotificationDefaultButtonTitleKey;
    v152[3] = kCFUserNotificationAlternateButtonTitleKey;
    v153[2] = @"File Radar";
    v153[3] = @"Not Now";
    v152[4] = kCFUserNotificationOtherButtonTitleKey;
    v152[5] = kCFUserNotificationAlertTopMostKey;
    v153[4] = @"Never bother me again";
    v153[5] = &__kCFBooleanTrue;
    v88 = sub_10027EB5C(v74);
    v152[6] = **(v89 + 4072);
    v153[6] = &__kCFBooleanFalse;
    v143 = [NSDictionary dictionaryWithObjects:v153 forKeys:v152 count:7, v88];
    v90 = CFUserNotificationCreate(0, 0.0, 3uLL, &error, v143);
    self->_userNotification = v90;
    if (!v90 || error)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v108 = NFLogGetLogger();
      if (v108)
      {
        v109 = v108;
        v110 = object_getClass(self);
        v111 = class_isMetaClass(v110);
        v112 = object_getClassName(self);
        v113 = sel_getName(a2);
        v114 = 45;
        if (v111)
        {
          v114 = 43;
        }

        v134 = v112;
        v15 = obja;
        v109(3, "%c[%{public}s %{public}s]:%i Couldn't create notification! %d", v114, v134, v113, 451, error);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v115 = NFSharedLogGetLogger();
      v52 = v73;
      if (os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
      {
        v116 = object_getClass(self);
        if (class_isMetaClass(v116))
        {
          v117 = 43;
        }

        else
        {
          v117 = 45;
        }

        v118 = object_getClassName(self);
        v119 = sel_getName(a2);
        *buf = 67110146;
        v155 = v117;
        v156 = 2082;
        v157 = v118;
        v158 = 2082;
        v159 = v119;
        v160 = 1024;
        v161 = 451;
        v162 = 1024;
        LODWORD(v163) = error;
        _os_log_impl(&_mh_execute_header, v115, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Couldn't create notification! %d", buf, 0x28u);
      }

      userNotification = self->_userNotification;
      v18 = v145;
      if (userNotification)
      {
        CFRelease(userNotification);
      }

      self->_userNotification = 0;
      subTypeContext = self->_userDefaults;
      self->_userDefaults = 0;
      v16 = v146;
    }

    else
    {
      RunLoopSource = CFUserNotificationCreateRunLoopSource(0, v90, sub_10019AB80, 0);
      self->_runLoopSource = RunLoopSource;
      if (RunLoopSource)
      {
        Main = CFRunLoopGetMain();
        CFRunLoopAddSource(Main, self->_runLoopSource, kCFRunLoopCommonModes);
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v93 = NFLogGetLogger();
        if (v93)
        {
          v94 = v93;
          v95 = object_getClass(self);
          v96 = class_isMetaClass(v95);
          v97 = object_getClassName(self);
          v141 = sel_getName(a2);
          v98 = 45;
          if (v96)
          {
            v98 = 43;
          }

          v94(6, "%c[%{public}s %{public}s]:%i TTR prompt created", v98, v97, v141, 469);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v99 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
        {
          v100 = object_getClass(self);
          if (class_isMetaClass(v100))
          {
            v101 = 43;
          }

          else
          {
            v101 = 45;
          }

          v102 = object_getClassName(self);
          v103 = sel_getName(a2);
          *buf = 67109890;
          v155 = v101;
          v156 = 2082;
          v157 = v102;
          v158 = 2082;
          v159 = v103;
          v160 = 1024;
          v161 = 469;
          _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i TTR prompt created", buf, 0x22u);
        }

        v15 = obja;
        objc_storeStrong(&self->_pendingRequest, obja);
        objc_storeStrong(&self->_componentName, a4);
        v104 = [v145 mutableCopy];
        additionalInfo = self->_additionalInfo;
        self->_additionalInfo = v104;

        objc_storeStrong(&self->_type, a6);
        v106 = v17;
        subTypeContext = self->_subTypeContext;
        self->_subTypeContext = v106;
        v16 = v146;
        v28 = v149;
        v52 = v73;
        v18 = v145;
        goto LABEL_111;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v121 = NFLogGetLogger();
      if (v121)
      {
        v122 = v121;
        v123 = object_getClass(self);
        v124 = class_isMetaClass(v123);
        v125 = object_getClassName(self);
        v142 = sel_getName(a2);
        v126 = 45;
        if (v124)
        {
          v126 = 43;
        }

        v135 = v125;
        v15 = obja;
        v122(3, "%c[%{public}s %{public}s]:%i Couldn't create runloop source", v126, v135, v142, 461);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v127 = NFSharedLogGetLogger();
      v52 = v73;
      if (os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
      {
        v128 = object_getClass(self);
        if (class_isMetaClass(v128))
        {
          v129 = 43;
        }

        else
        {
          v129 = 45;
        }

        v130 = object_getClassName(self);
        v131 = sel_getName(a2);
        *buf = 67109890;
        v155 = v129;
        v156 = 2082;
        v157 = v130;
        v158 = 2082;
        v159 = v131;
        v160 = 1024;
        v161 = 461;
        _os_log_impl(&_mh_execute_header, v127, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Couldn't create runloop source", buf, 0x22u);
      }

      CFRelease(self->_userNotification);
      self->_userNotification = 0;
      subTypeContext = self->_userDefaults;
      self->_userDefaults = 0;
      v18 = v145;
      v16 = v146;
    }

    v28 = v149;
LABEL_111:

    goto LABEL_112;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v19 = NFLogGetLogger();
  if (v19)
  {
    v20 = v19;
    v21 = object_getClass(self);
    v22 = class_isMetaClass(v21);
    v23 = object_getClassName(self);
    v136 = sel_getName(a2);
    v24 = 45;
    if (v22)
    {
      v24 = 43;
    }

    v20(3, "%c[%{public}s %{public}s]:%i Disabled NF TTR on devboards and VMs", v24, v23, v136, 376);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v25 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    v26 = object_getClass(self);
    if (class_isMetaClass(v26))
    {
      v27 = 43;
    }

    else
    {
      v27 = 45;
    }

    *buf = 67109890;
    v155 = v27;
    v156 = 2082;
    v157 = object_getClassName(self);
    v158 = 2082;
    v159 = sel_getName(a2);
    v160 = 1024;
    v161 = 376;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Disabled NF TTR on devboards and VMs", buf, 0x22u);
  }

  v28 = v149;
LABEL_14:
}

- (BOOL)_checkRateLimitForType:(id)a3 subType:(id)a4
{
  v7 = a4;
  v8 = a3;
  v9 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.nfcd.nfttr"];
  userDefaults = self->_userDefaults;
  self->_userDefaults = v9;

  v11 = [(NSUserDefaults *)self->_userDefaults objectForKey:@"NFABCProhibitRequestsUntil"];
  v12 = [[NSString alloc] initWithFormat:@"T:%@_S:%@", v8, v7];

  if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v13 = v11;
    v14 = objc_opt_new();
    v11 = 0;
    v15 = v13;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v14 = objc_opt_new();
      v13 = 0;
      v15 = v11;
      v11 = 0;
LABEL_23:
      v26 = [[NSMutableDictionary alloc] initWithDictionary:v11];
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_10019AFB0;
      v33[3] = &unk_100317BB0;
      v34 = objc_opt_new();
      v14 = v14;
      v35 = v14;
      v27 = v34;
      [(NSUserDefaults *)v26 enumerateKeysAndObjectsUsingBlock:v33];
      [(NSUserDefaults *)v26 removeObjectsForKeys:v27];
      v28 = [NSDate dateWithTimeIntervalSinceNow:86400.0];
      [(NSUserDefaults *)v26 setObject:v28 forKeyedSubscript:v12];

      [(NSUserDefaults *)self->_userDefaults setObject:v26 forKey:@"NFABCProhibitRequestsUntil"];
      v25 = 1;
      goto LABEL_24;
    }

    v15 = [v11 objectForKeyedSubscript:v12];
    if (v15)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }

    v13 = v16;
    v14 = objc_opt_new();
    if (!v13)
    {
      goto LABEL_23;
    }
  }

  if ([v13 compare:v14] != 1)
  {
    goto LABEL_23;
  }

  sel = a2;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v18 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v21 = 45;
    if (isMetaClass)
    {
      v21 = 43;
    }

    v18(6, "%c[%{public}s %{public}s]:%i ABC is prohibited until %{public}@", v21, ClassName, Name, 498, v13);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v22 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = object_getClass(self);
    if (class_isMetaClass(v23))
    {
      v24 = 43;
    }

    else
    {
      v24 = 45;
    }

    *buf = 67110146;
    v37 = v24;
    v38 = 2082;
    v39 = object_getClassName(self);
    v40 = 2082;
    v41 = sel_getName(sel);
    v42 = 1024;
    v43 = 498;
    v44 = 2114;
    v45 = v13;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ABC is prohibited until %{public}@", buf, 0x2Cu);
  }

  v25 = 0;
  v26 = self->_userDefaults;
  self->_userDefaults = 0;
LABEL_24:

  return v25;
}

- (void)requestAutoBugCapture:(id)a3 subType:(id)a4 subTypeContext:(id)a5 attachments:(id)a6 completion:(id)a7
{
  v13 = a3;
  v14 = a4;
  v80 = a5;
  v79 = a6;
  v15 = a7;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v17 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v21 = 45;
    if (isMetaClass)
    {
      v21 = 43;
    }

    v17(6, "%c[%{public}s %{public}s]:%i Requesting Auto Bug Capture!", v21, ClassName, Name, 533);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v22 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = object_getClass(self);
    if (class_isMetaClass(v23))
    {
      v24 = 43;
    }

    else
    {
      v24 = 45;
    }

    *buf = 67109890;
    v95 = v24;
    v96 = 2082;
    v97 = object_getClassName(self);
    v98 = 2082;
    v99 = sel_getName(a2);
    v100 = 1024;
    v101 = 533;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Requesting Auto Bug Capture!", buf, 0x22u);
  }

  if (!v13)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v38 = NFLogGetLogger();
    if (v38)
    {
      v39 = v38;
      v40 = object_getClass(self);
      v41 = class_isMetaClass(v40);
      v42 = object_getClassName(self);
      v76 = sel_getName(a2);
      v43 = 45;
      if (v41)
      {
        v43 = 43;
      }

      v39(3, "%c[%{public}s %{public}s]:%i Ignoring ABC callback with no error type.", v43, v42, v76, 536);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v44 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      v45 = object_getClass(self);
      if (class_isMetaClass(v45))
      {
        v46 = 43;
      }

      else
      {
        v46 = 45;
      }

      v47 = object_getClassName(self);
      v48 = sel_getName(a2);
      *buf = 67109890;
      v95 = v46;
      v96 = 2082;
      v97 = v47;
      v98 = 2082;
      v99 = v48;
      v100 = 1024;
      v101 = 536;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Ignoring ABC callback with no error type.", buf, 0x22u);
    }

    v30 = v79;
    if (!v15)
    {
      goto LABEL_54;
    }

    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10019B848;
    block[3] = &unk_100318A90;
    v91 = v15;
    dispatch_async(queue, block);
    v28 = v91;
LABEL_53:

    goto LABEL_54;
  }

  if (!v14)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v50 = NFLogGetLogger();
    if (v50)
    {
      v51 = v50;
      v52 = object_getClass(self);
      v53 = class_isMetaClass(v52);
      v54 = object_getClassName(self);
      v77 = sel_getName(a2);
      v55 = 45;
      if (v53)
      {
        v55 = 43;
      }

      v51(3, "%c[%{public}s %{public}s]:%i Ignoring ABC callback with no error subtype.", v55, v54, v77, 547);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v56 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      v57 = object_getClass(self);
      if (class_isMetaClass(v57))
      {
        v58 = 43;
      }

      else
      {
        v58 = 45;
      }

      v59 = object_getClassName(self);
      v60 = sel_getName(a2);
      *buf = 67109890;
      v95 = v58;
      v96 = 2082;
      v97 = v59;
      v98 = 2082;
      v99 = v60;
      v100 = 1024;
      v101 = 547;
      _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Ignoring ABC callback with no error subtype.", buf, 0x22u);
    }

    v30 = v79;
    if (!v15)
    {
      goto LABEL_54;
    }

    v61 = self->_queue;
    v88[0] = _NSConcreteStackBlock;
    v88[1] = 3221225472;
    v88[2] = sub_10019B928;
    v88[3] = &unk_100318A90;
    v89 = v15;
    dispatch_async(v61, v88);
    v28 = v89;
    goto LABEL_53;
  }

  if (!v80)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v62 = NFLogGetLogger();
    if (v62)
    {
      v63 = v62;
      v64 = object_getClass(self);
      v65 = class_isMetaClass(v64);
      v66 = object_getClassName(self);
      v78 = sel_getName(a2);
      v67 = 45;
      if (v65)
      {
        v67 = 43;
      }

      v63(3, "%c[%{public}s %{public}s]:%i Ignoring ABC callback with no error subtype context.", v67, v66, v78, 558);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v68 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
    {
      v69 = object_getClass(self);
      if (class_isMetaClass(v69))
      {
        v70 = 43;
      }

      else
      {
        v70 = 45;
      }

      v71 = object_getClassName(self);
      v72 = sel_getName(a2);
      *buf = 67109890;
      v95 = v70;
      v96 = 2082;
      v97 = v71;
      v98 = 2082;
      v99 = v72;
      v100 = 1024;
      v101 = 558;
      _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Ignoring ABC callback with no error subtype context.", buf, 0x22u);
    }

    v30 = v79;
    if (!v15)
    {
      goto LABEL_54;
    }

    v73 = self->_queue;
    v86[0] = _NSConcreteStackBlock;
    v86[1] = 3221225472;
    v86[2] = sub_10019BA08;
    v86[3] = &unk_100318A90;
    v87 = v15;
    dispatch_async(v73, v86);
    v28 = v87;
    goto LABEL_53;
  }

  if ([(NFBugCapture *)self _checkRateLimitForType:v13 subType:v14])
  {
    sub_10027EA3C(v25);
    v27 = *(v26 + 3912);
    v28 = [objc_alloc(objc_opt_class()) initWithQueue:self->_queue];
    v29 = [v28 signatureWithDomain:@"NFC/SE" type:v13 subType:v14 subtypeContext:v80 detectedProcess:@"Stockholm" triggerThresholdValues:0];
    v30 = v79;
    [v79 count];
    v31 = 0;
    v34 = sub_10027EC58(v32);
    if (*(v35 + 3920) && v33)
    {
      v36 = sub_10027EC58(v34);
      v92 = **(v37 + 3920);
      v93 = v79;
      v31 = [NSDictionary dictionaryWithObjects:&v93 forKeys:&v92 count:1, v36];
    }

    v81[0] = _NSConcreteStackBlock;
    v81[1] = 3221225472;
    v81[2] = sub_10019BBC8;
    v81[3] = &unk_10031ADF0;
    v81[4] = self;
    v83 = a2;
    v82 = v15;
    [v28 snapshotWithSignature:v29 delay:0 events:v31 payload:0 actions:v81 reply:0.0];

    goto LABEL_53;
  }

  v30 = v79;
  if (v15)
  {
    v74 = self->_queue;
    v84[0] = _NSConcreteStackBlock;
    v84[1] = 3221225472;
    v84[2] = sub_10019BAE8;
    v84[3] = &unk_100318A90;
    v85 = v15;
    dispatch_async(v74, v84);
    v28 = v85;
    goto LABEL_53;
  }

LABEL_54:
}

@end