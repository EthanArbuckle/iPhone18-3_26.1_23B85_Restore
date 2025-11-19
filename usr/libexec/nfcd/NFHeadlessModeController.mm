@interface NFHeadlessModeController
- (NFHeadlessModeController)init;
@end

@implementation NFHeadlessModeController

- (NFHeadlessModeController)init
{
  v71.receiver = self;
  v71.super_class = NFHeadlessModeController;
  v3 = [(NFHeadlessModeController *)&v71 init];
  if (v3)
  {
    v4 = +[NSUserDefaults standardUserDefaults];
    v5 = sub_1002340EC();
    v6 = [v4 dataForKey:@"LastBootUUID"];
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_UTILITY, 0);
    v9 = dispatch_queue_create("com.apple.nfcd.lpem", v8);
    v10 = *(v3 + 3);
    *(v3 + 3) = v9;

    dispatch_queue_set_specific(*(v3 + 3), kNFLOG_DISPATCH_SPECIFIC_KEY, 0, 0);
    if (v6 && ([v5 isEqualToData:v6] & 1) != 0)
    {
      v11 = [v4 integerForKey:@"HeadlessFeatures"];
      *(v3 + 4) = v11;
      if (v11)
      {
        v12 = sub_1002269CC(v3);
      }

      else
      {
        v26 = sub_100226978(v3);
      }

      v25 = 1;
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v14 = Logger;
        Class = object_getClass(v3);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v3);
        Name = sel_getName(a2);
        v18 = 45;
        if (isMetaClass)
        {
          v18 = 43;
        }

        v14(6, "%c[%{public}s %{public}s]:%i LPEM first config after boot", v18, ClassName, Name, 191);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v19 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = object_getClass(v3);
        if (class_isMetaClass(v20))
        {
          v21 = 43;
        }

        else
        {
          v21 = 45;
        }

        v22 = object_getClassName(v3);
        v23 = sel_getName(a2);
        *buf = 67109890;
        v73 = v21;
        v74 = 2082;
        v75 = v22;
        v76 = 2082;
        v77 = v23;
        v78 = 1024;
        v79 = 191;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i LPEM first config after boot", buf, 0x22u);
      }

      v24 = sub_100226978(v3);
      v25 = 0;
    }

    v3[9] = v25;
    if (v5)
    {
      [v4 setObject:v5 forKey:@"LastBootUUID"];
    }

    v3[10] = 0;
    v27 = [NSDictionary dictionaryWithContentsOfFile:@"/Library/Preferences/Logging/Subsystems/com.apple.nfc.plist"];
    v28 = v27;
    if (v27)
    {
      v29 = [v27 objectForKey:@"OverrideB0LP"];
      if (v29)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v30 = NFLogGetLogger();
          if (v30)
          {
            v31 = v30;
            v32 = object_getClass(v3);
            v33 = class_isMetaClass(v32);
            v34 = object_getClassName(v3);
            v68 = sel_getName(a2);
            v35 = 45;
            if (v33)
            {
              v35 = 43;
            }

            v31(6, "%c[%{public}s %{public}s]:%i SMC value will be overwritten by Profile", v35, v34, v68, 217);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v36 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            v37 = object_getClass(v3);
            if (class_isMetaClass(v37))
            {
              v38 = 43;
            }

            else
            {
              v38 = 45;
            }

            v39 = object_getClassName(v3);
            v40 = sel_getName(a2);
            *buf = 67109890;
            v73 = v38;
            v74 = 2082;
            v75 = v39;
            v76 = 2082;
            v77 = v40;
            v78 = 1024;
            v79 = 217;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i SMC value will be overwritten by Profile", buf, 0x22u);
          }

          v3[10] = 1;
        }
      }
    }

    if ([v4 BOOLForKey:@"OverrideB0LP"])
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v41 = NFLogGetLogger();
      if (v41)
      {
        v42 = v41;
        v43 = object_getClass(v3);
        v44 = class_isMetaClass(v43);
        v45 = object_getClassName(v3);
        v69 = sel_getName(a2);
        v46 = 45;
        if (v44)
        {
          v46 = 43;
        }

        v42(6, "%c[%{public}s %{public}s]:%i SMC value will be overwritten by defaults", v46, v45, v69, 222);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v47 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        v48 = object_getClass(v3);
        if (class_isMetaClass(v48))
        {
          v49 = 43;
        }

        else
        {
          v49 = 45;
        }

        v50 = object_getClassName(v3);
        v51 = sel_getName(a2);
        *buf = 67109890;
        v73 = v49;
        v74 = 2082;
        v75 = v50;
        v76 = 2082;
        v77 = v51;
        v78 = 1024;
        v79 = 222;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i SMC value will be overwritten by defaults", buf, 0x22u);
      }

      v3[10] = 1;
    }

    v3[11] = 1;
    v52 = sub_100226A20(v3);
    if (v52)
    {
      v53 = v52;
      CFProperty = IORegistryEntryCreateCFProperty(v52, @"IOPMUBootLPMFWSCC", 0, 0);
      IOObjectRelease(v53);
      if (CFProperty)
      {
        v3[11] = [CFProperty intValue] == 0;
      }

      else
      {
        v3[11] = 1;
      }
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v55 = NFLogGetLogger();
      if (v55)
      {
        v56 = v55;
        v57 = object_getClass(v3);
        v58 = class_isMetaClass(v57);
        v66 = object_getClassName(v3);
        v70 = sel_getName("queryPMUCapability");
        v59 = 45;
        if (v58)
        {
          v59 = 43;
        }

        v56(3, "%c[%{public}s %{public}s]:%i Could not find service: %s", v59, v66, v70, 239, "AppleDialogSPMIPMU");
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v60 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        v61 = object_getClass(v3);
        if (class_isMetaClass(v61))
        {
          v62 = 43;
        }

        else
        {
          v62 = 45;
        }

        v63 = object_getClassName(v3);
        v64 = sel_getName("queryPMUCapability");
        *buf = 67110146;
        v73 = v62;
        v74 = 2082;
        v75 = v63;
        v76 = 2082;
        v77 = v64;
        v78 = 1024;
        v79 = 239;
        v80 = 2080;
        v81 = "AppleDialogSPMIPMU";
        _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Could not find service: %s", buf, 0x2Cu);
      }
    }
  }

  return v3;
}

@end