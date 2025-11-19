id sub_100093D80(void *a1, uint64_t a2)
{
  if (!a1)
  {
    v50 = 0;
    goto LABEL_49;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v5 = Logger;
    Class = object_getClass(a1);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(a1);
    Name = sel_getName("enableFieldDetect:");
    v8 = 45;
    if (isMetaClass)
    {
      v8 = 43;
    }

    v5(6, "%c[%{public}s %{public}s]:%i enable: %d", v8, ClassName, Name, 65, a2);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v9 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = object_getClass(a1);
    if (class_isMetaClass(v10))
    {
      v11 = 43;
    }

    else
    {
      v11 = 45;
    }

    *buf = 67110146;
    v63 = v11;
    v64 = 2082;
    v65 = object_getClassName(a1);
    v66 = 2082;
    v67 = sel_getName("enableFieldDetect:");
    v68 = 1024;
    v69 = 65;
    v70 = 1024;
    v71 = a2;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i enable: %d", buf, 0x28u);
  }

  v12 = [a1 expressModeManager];
  sub_100007EE0(v12);

  v13 = [a1 lastKnownRoutingConfig];
  v14 = v13;
  if (v13)
  {
    if (a2)
    {
      v15 = 2;
    }

    else
    {
      v15 = 0;
    }

    v16 = [v13 copy];
    v16[7] = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = [a1 setRoutingConfig:v16];
  if ([v17 code] == 47)
  {
    v18 = [a1 driverWrapper];
    v19 = v18;
    if (v18)
    {
      v20 = [*(v18 + 56) readerModeProtectionActive];

      if (!v20)
      {
        goto LABEL_33;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v21 = NFLogGetLogger();
      if (v21)
      {
        v22 = v21;
        v23 = object_getClass(a1);
        v24 = class_isMetaClass(v23);
        v25 = object_getClassName(a1);
        v58 = sel_getName("enableFieldDetect:");
        v26 = 45;
        if (v24)
        {
          v26 = 43;
        }

        v22(3, "%c[%{public}s %{public}s]:%i Disabling reader mode", v26, v25, v58, 76);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v27 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = object_getClass(a1);
        if (class_isMetaClass(v28))
        {
          v29 = 43;
        }

        else
        {
          v29 = 45;
        }

        v30 = object_getClassName(a1);
        v31 = sel_getName("enableFieldDetect:");
        *buf = 67109890;
        v63 = v29;
        v64 = 2082;
        v65 = v30;
        v66 = 2082;
        v67 = v31;
        v68 = 1024;
        v69 = 76;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Disabling reader mode", buf, 0x22u);
      }

      v32 = [a1 lastKnownRoutingConfig];
      v33 = [v32 wantsReader];

      if (!v33)
      {
        goto LABEL_33;
      }

      if (v16)
      {
        v19 = [v16 copy];
        *(v19 + 4) = 0;
        *(v19 + 8) = 0;
      }

      else
      {
        v19 = 0;
      }

      v34 = [a1 setRoutingConfig:v19];

      v17 = v34;
    }
  }

LABEL_33:
  if (v17)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v35 = NFLogGetLogger();
    if (v35)
    {
      v36 = v35;
      v37 = object_getClass(a1);
      v38 = class_isMetaClass(v37);
      v39 = object_getClassName(a1);
      v59 = sel_getName("enableFieldDetect:");
      v40 = 45;
      if (v38)
      {
        v40 = 43;
      }

      v36(3, "%c[%{public}s %{public}s]:%i Failed to change mode", v40, v39, v59, 84);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v41 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v42 = object_getClass(a1);
      if (class_isMetaClass(v42))
      {
        v43 = 43;
      }

      else
      {
        v43 = 45;
      }

      v44 = object_getClassName(a1);
      v45 = sel_getName("enableFieldDetect:");
      *buf = 67109890;
      v63 = v43;
      v64 = 2082;
      v65 = v44;
      v66 = 2082;
      v67 = v45;
      v68 = 1024;
      v69 = 84;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to change mode", buf, 0x22u);
    }

    v46 = [NSError alloc];
    v47 = [NSString stringWithUTF8String:"nfcd"];
    v48 = [v17 code];
    v60[0] = NSLocalizedDescriptionKey;
    if ([v17 code] > 75)
    {
      v49 = 76;
    }

    else
    {
      v49 = [v17 code];
    }

    v51 = [NSString stringWithUTF8String:off_100317638[v49]];
    v61[0] = v51;
    v61[1] = v17;
    v60[1] = NSUnderlyingErrorKey;
    v60[2] = @"Line";
    v61[2] = &off_100330B40;
    v60[3] = @"Method";
    v52 = [[NSString alloc] initWithFormat:@"%s", sel_getName("enableFieldDetect:")];
    v61[3] = v52;
    v60[4] = NSDebugDescriptionErrorKey;
    v53 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("enableFieldDetect:"), 85];
    v61[4] = v53;
    v54 = [NSDictionary dictionaryWithObjects:v61 forKeys:v60 count:5];
    v50 = [v46 initWithDomain:v47 code:v48 userInfo:v54];
  }

  else
  {
    v50 = 0;
  }

LABEL_49:

  return v50;
}

uint64_t sub_1000943F0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if ([v3 notificationType] != 3)
    {
      a1 = 0;
      goto LABEL_8;
    }

    v5 = v4;
    if ([v5 terminalType] != 5 || objc_msgSend(v5, "terminalSubType") || (objc_msgSend(v5, "userInfo"), v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
    {
      a1 = 0;
LABEL_6:

      goto LABEL_8;
    }

    if (NFIsInternalBuild())
    {
      v8 = *(a1 + 448);
      if (v8 == 2)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          v49 = Logger;
          Class = object_getClass(a1);
          isMetaClass = class_isMetaClass(Class);
          ClassName = object_getClassName(a1);
          Name = sel_getName("updateFieldNotificationWithCHInfo:");
          v53 = 45;
          if (isMetaClass)
          {
            v53 = 43;
          }

          v49(5, "%c[%{public}s %{public}s]:%i Override as receiver detected", v53, ClassName, Name, 152);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v54 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          v55 = object_getClass(a1);
          if (class_isMetaClass(v55))
          {
            v56 = 43;
          }

          else
          {
            v56 = 45;
          }

          *buf = 67109890;
          v82 = v56;
          v83 = 2082;
          v84 = object_getClassName(a1);
          v85 = 2082;
          v86 = sel_getName("updateFieldNotificationWithCHInfo:");
          v87 = 1024;
          v88 = 152;
          _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Override as receiver detected", buf, 0x22u);
        }

        v18 = [v5 userInfo];
        v19 = [NSNumber numberWithBool:1];
        v20 = @"CHReceiverDetected";
        goto LABEL_56;
      }

      if (v8 == 1)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v9 = NFLogGetLogger();
        if (v9)
        {
          v10 = v9;
          v11 = object_getClass(a1);
          v12 = class_isMetaClass(v11);
          v13 = object_getClassName(a1);
          v73 = sel_getName("updateFieldNotificationWithCHInfo:");
          v14 = 45;
          if (v12)
          {
            v14 = 43;
          }

          v10(5, "%c[%{public}s %{public}s]:%i Override as initiator detected", v14, v13, v73, 148);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v15 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = object_getClass(a1);
          if (class_isMetaClass(v16))
          {
            v17 = 43;
          }

          else
          {
            v17 = 45;
          }

          *buf = 67109890;
          v82 = v17;
          v83 = 2082;
          v84 = object_getClassName(a1);
          v85 = 2082;
          v86 = sel_getName("updateFieldNotificationWithCHInfo:");
          v87 = 1024;
          v88 = 148;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Override as initiator detected", buf, 0x22u);
        }

        v18 = [v5 userInfo];
        v19 = [NSNumber numberWithBool:1];
        v20 = @"CHInitiatorDetected";
LABEL_56:
        [(os_unfair_lock_s *)v18 setValue:v19 forKey:v20];
LABEL_79:

        a1 = 1;
        goto LABEL_6;
      }
    }

    v21 = sub_100005F24();
    v18 = sub_10018510C(v21);

    v22 = sub_100005F24();
    v23 = sub_100184DFC(v22);

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v24 = NFLogGetLogger();
    if (v24)
    {
      v25 = v24;
      v26 = object_getClass(a1);
      v27 = class_isMetaClass(v26);
      v28 = object_getClassName(a1);
      v74 = sel_getName("updateFieldNotificationWithCHInfo:");
      v29 = 45;
      if (v27)
      {
        v29 = 43;
      }

      v25(6, "%c[%{public}s %{public}s]:%i Setting local random  in CH field : %llu   %@", v29, v28, v74, 159, v23, v18);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v30 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = object_getClass(a1);
      if (class_isMetaClass(v31))
      {
        v32 = 43;
      }

      else
      {
        v32 = 45;
      }

      *buf = 67110402;
      v82 = v32;
      v83 = 2082;
      v84 = object_getClassName(a1);
      v85 = 2082;
      v86 = sel_getName("updateFieldNotificationWithCHInfo:");
      v87 = 1024;
      v88 = 159;
      v89 = 2048;
      v90 = v23;
      v91 = 2112;
      v92 = v18;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Setting local random  in CH field : %llu   %@", buf, 0x36u);
    }

    v33 = [v5 userInfo];
    [v33 setValue:v18 forKey:@"CHLocalRandom"];

    v34 = [v5 userInfo];
    v19 = [v34 objectForKey:@"CHRemoteRandom"];

    if (!v19 || !v18)
    {
      goto LABEL_79;
    }

    if ([(os_unfair_lock_s *)v19 length]> 8)
    {
      v47 = 0;
      v78 = 0;
      v35 = 0;
    }

    else
    {
      v80 = 0;
      v78 = [(os_unfair_lock_s *)v19 NF_toUint64:&v80];
      v35 = v80;
      if (v35)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v36 = NFLogGetLogger();
        if (v36)
        {
          v37 = v36;
          v38 = object_getClass(a1);
          v39 = class_isMetaClass(v38);
          v40 = object_getClassName(a1);
          v75 = sel_getName("updateFieldNotificationWithCHInfo:");
          v41 = 45;
          if (v39)
          {
            v41 = 43;
          }

          v37(3, "%c[%{public}s %{public}s]:%i Invalid value: %@", v41, v40, v75, 172, v19);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v42 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          v43 = object_getClass(a1);
          if (class_isMetaClass(v43))
          {
            v44 = 43;
          }

          else
          {
            v44 = 45;
          }

          v45 = object_getClassName(a1);
          v46 = sel_getName("updateFieldNotificationWithCHInfo:");
          *buf = 67110146;
          v82 = v44;
          v83 = 2082;
          v84 = v45;
          v85 = 2082;
          v86 = v46;
          v87 = 1024;
          v88 = 172;
          v89 = 2112;
          v90 = v19;
          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid value: %@", buf, 0x2Cu);
        }

        v47 = 0;
      }

      else
      {
        v47 = 1;
      }
    }

    if ([(os_unfair_lock_s *)v18 length]<= 8)
    {
      v79 = v35;
      v57 = [(os_unfair_lock_s *)v18 NF_toUint64:&v79];
      v58 = v79;

      if (v58)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v59 = NFLogGetLogger();
        if (v59)
        {
          v60 = v59;
          v61 = object_getClass(a1);
          v62 = class_isMetaClass(v61);
          v72 = object_getClassName(a1);
          v77 = sel_getName("updateFieldNotificationWithCHInfo:");
          v63 = 45;
          if (v62)
          {
            v63 = 43;
          }

          v60(3, "%c[%{public}s %{public}s]:%i Invalid value: %@", v63, v72, v77, 182, v18);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v64 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
        {
          v65 = object_getClass(a1);
          if (class_isMetaClass(v65))
          {
            v66 = 43;
          }

          else
          {
            v66 = 45;
          }

          v67 = object_getClassName(a1);
          v68 = sel_getName("updateFieldNotificationWithCHInfo:");
          *buf = 67110146;
          v82 = v66;
          v83 = 2082;
          v84 = v67;
          v85 = 2082;
          v86 = v68;
          v87 = 1024;
          v88 = 182;
          v89 = 2112;
          v90 = v18;
          _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid value: %@", buf, 0x2Cu);
        }

        v35 = v58;
      }

      else
      {
        if (v78 < v57)
        {
          v69 = v47;
        }

        else
        {
          v69 = 0;
        }

        if (v69 == 1)
        {
          v35 = [v5 userInfo];
          v70 = [NSNumber numberWithBool:1];
          [v35 setValue:v70 forKey:@"CHInitiatorDetected"];
LABEL_78:

          goto LABEL_79;
        }

        v35 = 0;
      }
    }

    v70 = [v5 userInfo];
    v71 = [NSNumber numberWithBool:1];
    [v70 setValue:v71 forKey:@"CHReceiverDetected"];

    goto LABEL_78;
  }

LABEL_8:

  return a1;
}

void sub_100094D00(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v11 = v3;
    v4 = sub_100003898();
    v5 = [v11 rfTechnology];
    if (v4)
    {
      *(v4 + 16) = v5;
    }

    if (!sub_10017DDC4(a1) || [v11 chFieldType] == 1)
    {
      if ([v11 notificationType] == 2)
      {
        v6 = v11;
        v7 = v6;
        if (v4)
        {
          *(v4 + 32) = 2;
          *(v4 + 20) = 1;
          *(v4 + 40) = [v6 terminalType];
          v8 = [v7 terminalMode];

          *(v4 + 44) = v8;
LABEL_12:

          v3 = v11;
          goto LABEL_13;
        }

        [v6 terminalType];
        [v7 terminalMode];
LABEL_18:

        goto LABEL_12;
      }

      if ([v11 notificationType] != 3)
      {
        goto LABEL_12;
      }
    }

    v9 = v11;
    v7 = v9;
    if (v4)
    {
      *(v4 + 32) = 3;
      *(v4 + 20) = 1;
      *(v4 + 40) = [v9 terminalType];
      v10 = [v7 terminalSubType];

      *(v4 + 36) = v10;
      goto LABEL_12;
    }

    [v9 terminalType];
    [v7 terminalSubType];
    goto LABEL_18;
  }

LABEL_13:
}

void sub_100094E64(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1 && [v3 notificationType] == 2 && objc_msgSend(v4, "terminalType") == 3)
  {
    sub_1000F0974(a1, "com.apple.nearfield.handoff.terminal");
    v5 = NFSharedSignpostLog();
    if (os_signpost_enabled(v5))
    {
      *v6 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "HANDOFF_FIELD_ON_NOTIFICATION", &unk_1002E8B7A, v6, 2u);
    }
  }
}

void sub_100094F20(id *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1 && [v3 notificationType] == 3)
  {
    v5 = v4;
    if ([v5 terminalType] == 2 && objc_msgSend(v5, "terminalSubType") == 4)
    {
      v6 = [v5 homeKitSchemeDataPayload];
      v7 = [v6 NF_asHexString];

      if (v7)
      {
        v8 = +[NSDistributedNotificationCenter defaultCenter];
        [v8 postNotificationName:@"com.apple.nfcd.homekit.field" object:v7 userInfo:0 options:3];

        v9 = a1[14];
        [v9 sendXpcNotificationEventWithString:v7];
      }

      else
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          v11 = Logger;
          Class = object_getClass(a1);
          isMetaClass = class_isMetaClass(Class);
          ClassName = object_getClassName(a1);
          Name = sel_getName("_notifyHKAndUAWithFieldNotification:");
          v15 = 45;
          if (isMetaClass)
          {
            v15 = 43;
          }

          v11(3, "%c[%{public}s %{public}s]:%i Invalid ecp payload ", v15, ClassName, Name, 256);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v16 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = object_getClass(a1);
          if (class_isMetaClass(v17))
          {
            v18 = 43;
          }

          else
          {
            v18 = 45;
          }

          *buf = 67109890;
          v21 = v18;
          v22 = 2082;
          v23 = object_getClassName(a1);
          v24 = 2082;
          v25 = sel_getName("_notifyHKAndUAWithFieldNotification:");
          v26 = 1024;
          v27 = 256;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid ecp payload ", buf, 0x22u);
        }
      }
    }
  }
}

uint64_t sub_100095170(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (([v3 cachedBeforeRFReset] & 1) != 0 || (v5 = *(a1 + 120), objc_msgSend(v5, "suspendOnFieldList"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), v6, v5, !v7))
    {
      a1 = 0;
    }

    else
    {
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v8 = *(a1 + 120);
      v9 = [v8 suspendOnFieldList];

      v10 = [v9 countByEnumeratingWithState:&v32 objects:v46 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v33;
        while (2)
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v33 != v12)
            {
              objc_enumerationMutation(v9);
            }

            if ([*(*(&v32 + 1) + 8 * i) isEqual:v4])
            {
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              Logger = NFLogGetLogger();
              if (Logger)
              {
                v15 = Logger;
                Class = object_getClass(a1);
                isMetaClass = class_isMetaClass(Class);
                ClassName = object_getClassName(a1);
                Name = sel_getName("_checkActiveSessionForSuspensionWithFieldNotification:");
                v20 = *(a1 + 120);
                v21 = 45;
                if (isMetaClass)
                {
                  v21 = 43;
                }

                v15(6, "%c[%{public}s %{public}s]:%i Suspend active session %{public}@ on field", v21, ClassName, Name, 271, v20);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v22 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
              {
                v23 = object_getClass(a1);
                if (class_isMetaClass(v23))
                {
                  v24 = 43;
                }

                else
                {
                  v24 = 45;
                }

                v25 = object_getClassName(a1);
                v26 = sel_getName("_checkActiveSessionForSuspensionWithFieldNotification:");
                v27 = *(a1 + 120);
                *buf = 67110146;
                v37 = v24;
                v38 = 2082;
                v39 = v25;
                v40 = 2082;
                v41 = v26;
                v42 = 1024;
                v43 = 271;
                v44 = 2114;
                v45 = v27;
                _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Suspend active session %{public}@ on field", buf, 0x2Cu);
              }

              v28 = *(a1 + 120);
              v30[0] = _NSConcreteStackBlock;
              v30[1] = 3221225472;
              v30[2] = sub_1000954C0;
              v30[3] = &unk_1003178A8;
              v30[4] = a1;
              v31 = v4;
              [v28 createHandoffTokenWithCompletion:v30];

              a1 = 1;
              goto LABEL_24;
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v32 objects:v46 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

      a1 = 0;
LABEL_24:
    }
  }

  return a1;
}

void sub_1000954C0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  if (v3)
  {
    v5 = *(v3 + 120);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  sub_1001DE960(v3, v6, 2, *(a1 + 40), v4, 0);
}

void sub_100095548(id *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1 && ([v3 cachedBeforeRFReset] & 1) == 0)
  {
    if ([v4 category] == 9)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v6 = Logger;
        Class = object_getClass(a1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(a1);
        Name = sel_getName("_notifyPassKitFieldDetectPresentmentWithFieldNotification:");
        v10 = 45;
        if (isMetaClass)
        {
          v10 = 43;
        }

        v6(6, "%c[%{public}s %{public}s]:%i Suppress field", v10, ClassName, Name, 294);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v11 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = object_getClass(a1);
        if (class_isMetaClass(v12))
        {
          v13 = 43;
        }

        else
        {
          v13 = 45;
        }

        *buf = 67109890;
        v17 = v13;
        v18 = 2082;
        v19 = object_getClassName(a1);
        v20 = 2082;
        v21 = sel_getName("_notifyPassKitFieldDetectPresentmentWithFieldNotification:");
        v22 = 1024;
        v23 = 294;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Suppress field", buf, 0x22u);
      }
    }

    else
    {
      v14 = a1[16];
      [v14 forceNotifyFieldDetectPresentmentWithFieldNotification:v4 walletDomain:3];
    }
  }
}

void sub_100095720(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v91 = a4;
  if (a1)
  {
    v9 = sub_100022774(v7);
    v10 = sub_100003CE4(a1);
    v11 = [a1[16] walletDomain];
    v12 = v11;
    obj = v11 < 5;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    v94 = a1;
    if (Logger)
    {
      v14 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("_handleAppPresentmentWithField:sessionOverridingAppLaunch:walletIntentSessions:");
      v89 = [v7 category];
      v86 = Name;
      a1 = v94;
      v19 = 45;
      if (isMetaClass)
      {
        v19 = 43;
      }

      v14(6, "%c[%{public}s %{public}s]:%i CategoryFromField=0x%lx, ResultFieldDetectCategory=0x%lx", v19, ClassName, v86, 315, v89, v9);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v20 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = object_getClass(a1);
      v22 = v8;
      v23 = v7;
      if (class_isMetaClass(v21))
      {
        v24 = 43;
      }

      else
      {
        v24 = 45;
      }

      v25 = object_getClassName(v94);
      v26 = sel_getName("_handleAppPresentmentWithField:sessionOverridingAppLaunch:walletIntentSessions:");
      v27 = [v23 category];
      *buf = 67110402;
      v101 = v24;
      v7 = v23;
      v8 = v22;
      a1 = v94;
      v102 = 2082;
      v103 = v25;
      v104 = 2082;
      v105 = v26;
      v106 = 1024;
      v107 = 315;
      v108 = 2048;
      v109 = v27;
      v110 = 2048;
      v111 = v9;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i CategoryFromField=0x%lx, ResultFieldDetectCategory=0x%lx", buf, 0x36u);
    }

    if (v10 & 1 | (v9 >> 2) & 1)
    {
      if (v8)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v28 = NFLogGetLogger();
        if (v28)
        {
          v29 = v28;
          v30 = object_getClass(a1);
          v31 = class_isMetaClass(v30);
          v32 = object_getClassName(a1);
          v33 = sel_getName("_handleAppPresentmentWithField:sessionOverridingAppLaunch:walletIntentSessions:");
          v34 = [v8 clientName];
          v35 = 45;
          if (v31)
          {
            v35 = 43;
          }

          v29(6, "%c[%{public}s %{public}s]:%i Notify %{public}@ without app launch trigger", v35, v32, v33, 327, v34);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v36 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v37 = object_getClass(a1);
          if (class_isMetaClass(v37))
          {
            v38 = 43;
          }

          else
          {
            v38 = 45;
          }

          v39 = object_getClassName(a1);
          v40 = sel_getName("_handleAppPresentmentWithField:sessionOverridingAppLaunch:walletIntentSessions:");
          v41 = [v8 clientName];
          *buf = 67110146;
          v101 = v38;
          v102 = 2082;
          v103 = v39;
          v104 = 2082;
          v105 = v40;
          v106 = 1024;
          v107 = 327;
          v108 = 2114;
          v109 = v41;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Notify %{public}@ without app launch trigger", buf, 0x2Cu);
        }

        [v8 handleFieldNotification:v7];
        goto LABEL_44;
      }

      if ((obj & (0x19u >> v12) & 1) != 0 || (v54 = a1[16], v55 = [v54 notifyFieldDetectPresentmentWithFieldNotification:v7], v54, !v55))
      {
LABEL_44:
        v97 = 0u;
        v98 = 0u;
        v95 = 0u;
        v96 = 0u;
        v48 = v91;
        v66 = [v48 countByEnumeratingWithState:&v95 objects:v99 count:16];
        if (v66)
        {
          v67 = v66;
          v90 = v8;
          v68 = v7;
          v69 = *v96;
          obja = v48;
          do
          {
            for (i = 0; i != v67; i = i + 1)
            {
              if (*v96 != v69)
              {
                objc_enumerationMutation(obja);
              }

              v71 = *(*(&v95 + 1) + 8 * i);
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v72 = NFLogGetLogger();
              if (v72)
              {
                v73 = v72;
                v74 = object_getClass(v94);
                v75 = class_isMetaClass(v74);
                v76 = object_getClassName(v94);
                v77 = sel_getName("_handleAppPresentmentWithField:sessionOverridingAppLaunch:walletIntentSessions:");
                v78 = [v71 clientName];
                v79 = 45;
                if (v75)
                {
                  v79 = 43;
                }

                v73(6, "%c[%{public}s %{public}s]:%i Notify %{public}@", v79, v76, v77, 342, v78);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v80 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
              {
                v81 = object_getClass(v94);
                if (class_isMetaClass(v81))
                {
                  v82 = 43;
                }

                else
                {
                  v82 = 45;
                }

                v83 = object_getClassName(v94);
                v84 = sel_getName("_handleAppPresentmentWithField:sessionOverridingAppLaunch:walletIntentSessions:");
                v85 = [v71 clientName];
                *buf = 67110146;
                v101 = v82;
                v102 = 2082;
                v103 = v83;
                v104 = 2082;
                v105 = v84;
                v106 = 1024;
                v107 = 342;
                v108 = 2114;
                v109 = v85;
                _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Notify %{public}@", buf, 0x2Cu);
              }

              [v71 handleFieldNotification:v68];
            }

            v48 = obja;
            v67 = [obja countByEnumeratingWithState:&v95 objects:v99 count:16];
          }

          while (v67);
          v7 = v68;
          v8 = v90;
        }

        goto LABEL_61;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v56 = NFLogGetLogger();
      if (v56)
      {
        v57 = v56;
        v58 = object_getClass(a1);
        v59 = class_isMetaClass(v58);
        v60 = object_getClassName(a1);
        v88 = sel_getName("_handleAppPresentmentWithField:sessionOverridingAppLaunch:walletIntentSessions:");
        v61 = 45;
        if (v59)
        {
          v61 = 43;
        }

        v57(6, "%c[%{public}s %{public}s]:%i App launch in progress; skipping notifications to other sessions", v61, v60, v88, 335);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v48 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_61;
      }

      v62 = object_getClass(a1);
      if (class_isMetaClass(v62))
      {
        v63 = 43;
      }

      else
      {
        v63 = 45;
      }

      v64 = object_getClassName(a1);
      v65 = sel_getName("_handleAppPresentmentWithField:sessionOverridingAppLaunch:walletIntentSessions:");
      *buf = 67109890;
      v101 = v63;
      v102 = 2082;
      v103 = v64;
      v104 = 2082;
      v105 = v65;
      v106 = 1024;
      v107 = 335;
      v53 = "%c[%{public}s %{public}s]:%i App launch in progress; skipping notifications to other sessions";
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v42 = NFLogGetLogger();
      if (v42)
      {
        v43 = v42;
        v44 = object_getClass(a1);
        v45 = class_isMetaClass(v44);
        v46 = object_getClassName(a1);
        v87 = sel_getName("_handleAppPresentmentWithField:sessionOverridingAppLaunch:walletIntentSessions:");
        v47 = 45;
        if (v45)
        {
          v47 = 43;
        }

        v43(6, "%c[%{public}s %{public}s]:%i Field not intent for wallet processing", v47, v46, v87, 321);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v48 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_61;
      }

      v49 = object_getClass(a1);
      if (class_isMetaClass(v49))
      {
        v50 = 43;
      }

      else
      {
        v50 = 45;
      }

      v51 = object_getClassName(a1);
      v52 = sel_getName("_handleAppPresentmentWithField:sessionOverridingAppLaunch:walletIntentSessions:");
      *buf = 67109890;
      v101 = v50;
      v102 = 2082;
      v103 = v51;
      v104 = 2082;
      v105 = v52;
      v106 = 1024;
      v107 = 321;
      v53 = "%c[%{public}s %{public}s]:%i Field not intent for wallet processing";
    }

    _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, v53, buf, 0x22u);
LABEL_61:
  }
}

void sub_100095F8C(uint64_t a1, void *a2, char a3, int a4, void *a5)
{
  v9 = a2;
  v10 = a5;
  if (a1)
  {
    v11 = *(a1 + 240);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10009608C;
    block[3] = &unk_1003178F8;
    v17 = a3;
    block[4] = a1;
    v15 = "_queueFieldDetectProtocolSession:coreNFC:requestor:completion:";
    v16 = a4;
    v14 = v10;
    v13 = v9;
    dispatch_async(v11, block);
  }
}

void sub_10009608C(uint64_t a1)
{
  v2 = &v16;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_100006A3C;
  v20 = sub_100096260;
  v21 = 0;
  if (*(a1 + 68) == 1)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v3 = v3[2];
    }

    v4 = v3;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100096268;
    v14[3] = &unk_1003178D0;
    v5 = *(a1 + 32);
    v6 = *(a1 + 56);
    v15 = *(a1 + 64);
    v14[4] = v5;
    v14[5] = &v16;
    v14[6] = v6;
    [v4 enumerateFieldDetectSessionsUsingBlock:v14];

    v2 = v17;
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    (*(v7 + 16))(v7, *(a1 + 40), v2[5]);
    v2 = v17;
  }

  if (!v2[5])
  {
    v8 = *(a1 + 32);
    if (v8)
    {
      v8 = v8[2];
    }

    v9 = v8;
    [v9 addFieldDetectSession:*(a1 + 40)];

    [*(a1 + 40) willStartSession];
    [*(a1 + 40) didStartSession:0];
    v13 = 0;
    v10 = [*(a1 + 32) driverWrapper];
    v12 = 0;
    sub_100221884(v10, &v13, &v12);
    v11 = v12;

    if (v13 == 1)
    {
      [*(a1 + 40) handleFieldChanged:1];
      if (v11)
      {
        [*(a1 + 40) handleFieldNotification:v11];
      }
    }

    [*(a1 + 32) maybeStartNextSession];
  }

  _Block_object_dispose(&v16, 8);
}

void sub_100096268(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v3 serviceType] == 2)
  {
    v4 = [v3 connection];
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v6 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 48));
      v11 = [v4 NF_clientName];
      v12 = 45;
      if (isMetaClass)
      {
        v12 = 43;
      }

      v6(6, "%c[%{public}s %{public}s]:%i Existing session found (%{public}@)", v12, ClassName, Name, 370, v11);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v13 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v14))
      {
        v15 = 43;
      }

      else
      {
        v15 = 45;
      }

      v16 = object_getClassName(*(a1 + 32));
      v17 = sel_getName(*(a1 + 48));
      v18 = [v4 NF_clientName];
      *buf = 67110146;
      v37 = v15;
      v38 = 2082;
      v39 = v16;
      v40 = 2082;
      v41 = v17;
      v42 = 1024;
      v43 = 370;
      v44 = 2114;
      v45 = v18;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Existing session found (%{public}@)", buf, 0x2Cu);
    }

    v19 = [v4 processIdentifier];
    v20 = *(a1 + 56);
    v21 = [NSError alloc];
    v22 = [NSString stringWithUTF8String:"nfcd"];
    if (v19 == v20)
    {
      v34 = NSLocalizedDescriptionKey;
      v35 = @"Previous session exists";
      v23 = [NSDictionary dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      v24 = [v21 initWithDomain:v22 code:36 userInfo:v23];
      v25 = *(*(a1 + 40) + 8);
      v26 = *(v25 + 40);
      *(v25 + 40) = v24;
    }

    else
    {
      v32[0] = NSLocalizedDescriptionKey;
      v23 = [NSString stringWithUTF8String:"Busy"];
      v33[0] = v23;
      v33[1] = &off_100330B58;
      v32[1] = @"Line";
      v32[2] = @"Method";
      v26 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 48))];
      v33[2] = v26;
      v32[3] = NSDebugDescriptionErrorKey;
      v27 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 48)), 374];
      v33[3] = v27;
      v28 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:4];
      v29 = [v21 initWithDomain:v22 code:2 userInfo:v28];
      v30 = *(*(a1 + 40) + 8);
      v31 = *(v30 + 40);
      *(v30 + 40) = v29;
    }
  }
}

NSString *sub_100096634(void *a1, uint64_t a2, void *a3)
{
  if (!a1)
  {
    v9 = 0;
    goto LABEL_173;
  }

  if (a2 <= 2)
  {
    if (a2 == 1)
    {
      v23 = 0;
    }

    else
    {
      if (a2 != 2)
      {
LABEL_30:
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          v38 = Logger;
          Class = object_getClass(a1);
          isMetaClass = class_isMetaClass(Class);
          ClassName = object_getClassName(a1);
          Name = sel_getName("dumpDomain:info:");
          v41 = 45;
          if (isMetaClass)
          {
            v41 = 43;
          }

          v38(3, "%c[%{public}s %{public}s]:%i Unknown app id: %d", v41, ClassName, Name, 149, a2);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v42 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          v43 = object_getClass(a1);
          if (class_isMetaClass(v43))
          {
            v44 = 43;
          }

          else
          {
            v44 = 45;
          }

          *buf = 67110146;
          *&buf[4] = v44;
          *v241 = 2082;
          *&v241[2] = object_getClassName(a1);
          *&v241[10] = 2082;
          *&v241[12] = sel_getName("dumpDomain:info:");
          *&v241[20] = 1024;
          *&v241[22] = 149;
          *&v241[26] = 1024;
          *&v241[28] = a2;
          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unknown app id: %d", buf, 0x28u);
        }

        v45 = [NSError alloc];
        v46 = [NSString stringWithUTF8String:"nfcd"];
        v235 = NSLocalizedDescriptionKey;
        v47 = [NSString stringWithUTF8String:"Invalid Parameter"];
        v236 = v47;
        v48 = [NSDictionary dictionaryWithObjects:&v236 forKeys:&v235 count:1];
        v9 = [v45 initWithDomain:v46 code:10 userInfo:v48];

        goto LABEL_173;
      }

      v23 = 1;
    }

    v9 = sub_1000981DC(a1, v23, a3);
    goto LABEL_173;
  }

  if (a2 == 3)
  {
    v24 = objc_opt_new();
    v244 = 0;
    v25 = sub_1001599F4(a1, &v244);
    v26 = v244;
    v27 = v26;
    if (v26)
    {
      v9 = v26;
    }

    else if (v25)
    {
      v228 = a3;
      v231 = a1;
      v49 = [v25 response];
      v50 = objc_opt_new();
      v51 = [NFTLV TLVWithData:v49];

      v225 = v50;
      if ([v51 tag] == 111)
      {
        v52 = objc_opt_new();
        [v50 setObject:v52 forKey:@"File Control Info"];
        v53 = [v51 childWithTag:132];
        v54 = v53;
        if (v53)
        {
          v55 = [v53 value];
          [v52 setObject:v55 forKey:@"Dedicated File Name"];
        }

        v56 = [v51 childWithTag:165];

        if (v56)
        {
          v57 = objc_opt_new();
          [v52 setObject:v57 forKey:@"File Control Info (Proprietary)"];
          v58 = [v56 childWithTag:40712];

          if (v58)
          {
            v59 = [v58 value];
            [v57 setObject:v59 forKey:@"Version"];
          }

          v54 = [v56 childWithTag:128];

          if (v54)
          {
            v60 = [v54 value];
            [v57 setObject:v60 forKey:@"Global Update Counter"];
          }

          v61 = v225;
        }

        else
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v132 = NFLogGetLogger();
          if (v132)
          {
            v133 = v132;
            v134 = object_getClass(v231);
            v135 = class_isMetaClass(v134);
            v136 = object_getClassName(v231);
            v212 = sel_getName("decodeCRSResponse:");
            v137 = 45;
            if (v135)
            {
              v137 = 43;
            }

            v133(3, "%c[%{public}s %{public}s]:%i Missing tag: 0x%x", v137, v136, v212, 636, 165);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v57 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
          {
            v138 = object_getClass(v231);
            if (class_isMetaClass(v138))
            {
              v139 = 43;
            }

            else
            {
              v139 = 45;
            }

            *buf = 67110146;
            *&buf[4] = v139;
            *v241 = 2082;
            *&v241[2] = object_getClassName(v231);
            *&v241[10] = 2082;
            *&v241[12] = sel_getName("decodeCRSResponse:");
            *&v241[20] = 1024;
            *&v241[22] = 636;
            *&v241[26] = 1024;
            *&v241[28] = 165;
            _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Missing tag: 0x%x", buf, 0x28u);
          }

          v61 = 0;
        }
      }

      else
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v99 = NFLogGetLogger();
        if (v99)
        {
          v100 = v99;
          v101 = object_getClass(v231);
          v102 = class_isMetaClass(v101);
          v103 = object_getClassName(v231);
          v104 = sel_getName("decodeCRSResponse:");
          v215 = [v51 tag];
          v105 = 45;
          if (v102)
          {
            v105 = 43;
          }

          v100(3, "%c[%{public}s %{public}s]:%i Unexpected tag: 0x%x", v105, v103, v104, 624, v215);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v54 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          v106 = object_getClass(v231);
          if (class_isMetaClass(v106))
          {
            v107 = 43;
          }

          else
          {
            v107 = 45;
          }

          *buf = 67110146;
          *&buf[4] = v107;
          *v241 = 2082;
          *&v241[2] = object_getClassName(v231);
          *&v241[10] = 2082;
          *&v241[12] = sel_getName("decodeCRSResponse:");
          *&v241[20] = 1024;
          *&v241[22] = 624;
          *&v241[26] = 1024;
          *&v241[28] = [v51 tag];
          _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unexpected tag: 0x%x", buf, 0x28u);
        }

        v61 = 0;
        v56 = v51;
      }

      v140 = v228;

      v226 = v61;
      if (v61)
      {
        v141 = v61;
      }

      else
      {
        v141 = @"<ERROR>";
      }

      [v24 setObject:v141 forKey:@"<SELECT>"];
      v142 = objc_opt_new();
      v143 = [NFTLV TLVWithTag:79 value:0];
      v144 = [v143 asData];
      [v142 appendData:v144];

      v145 = [[NSMutableData alloc] initWithBytes:&unk_100296DF2 length:12];
      if (([v231 supportedTechnologies] & 4) != 0)
      {
        [v145 appendBytes:&unk_100296DFE length:1];
      }

      sel = v145;
      v146 = [NFTLV TLVWithTag:92 value:v145];
      v147 = [v146 asData];
      [v142 appendData:v147];

      v148 = sub_1000B3EA0(v231, v142, 0);
      v149 = v148;
      if (v148)
      {
        v150 = v148;
      }

      else
      {
        v150 = @"<ERROR>";
      }

      [v24 setObject:v150 forKey:@"APPS"];
      v151 = sub_100158AB4(v231, 209);
      v152 = v151;
      if (v151)
      {
        v153 = [v151 NF_asHexString];
        [v24 setObject:v153 forKey:@"Version"];
      }

      else
      {
        [v24 setObject:@"<ERROR>" forKey:@"Version"];
      }

      v154 = sub_100158AB4(v231, 217);
      v155 = v154;
      if (!v154)
      {
        goto LABEL_169;
      }

      v156 = v154;
      v221 = v156;
      if ([v156 length] > 3)
      {
        v176 = [v156 bytes];
        v177 = v176;
        if (*v176 == 1)
        {
          v178 = bswap32(*(v176 + 1)) >> 16;
          v233 = v152;
          v179 = v176[3];
          v180 = (v179 >> 2) & 1;
          v242[0] = @"MaxTimeout";
          v167 = [NSNumber numberWithUnsignedShort:v178];
          *buf = v167;
          v242[1] = @"OsloSupport";
          v181 = [NSNumber numberWithBool:v179 & 1];
          *v241 = v181;
          v242[2] = @"AuthMandatory";
          v182 = [NSNumber numberWithBool:v180];
          *&v241[8] = v182;
          v175 = [NSDictionary dictionaryWithObjects:buf forKeys:v242 count:3];

          v152 = v233;
        }

        else
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v186 = NFLogGetLogger();
          v219 = v155;
          if (v186)
          {
            v187 = v186;
            v188 = object_getClass(v231);
            v189 = v149;
            v190 = v152;
            v191 = class_isMetaClass(v188);
            v192 = object_getClassName(v231);
            v193 = sel_getName("decodeCRSPlatformConfiguration:");
            v165 = !v191;
            v152 = v190;
            v149 = v189;
            v155 = v219;
            v194 = 45;
            if (!v165)
            {
              v194 = 43;
            }

            v187(3, "%c[%{public}s %{public}s]:%i Unknown version: %d", v194, v192, v193, 661, *v177);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v167 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v167, OS_LOG_TYPE_ERROR))
          {
            v195 = object_getClass(v231);
            v196 = v149;
            v197 = v152;
            if (class_isMetaClass(v195))
            {
              v198 = 43;
            }

            else
            {
              v198 = 45;
            }

            v199 = object_getClassName(v231);
            v200 = sel_getName("decodeCRSPlatformConfiguration:");
            v201 = *v177;
            *buf = 67110146;
            *&buf[4] = v198;
            v152 = v197;
            v149 = v196;
            v155 = v219;
            *v241 = 2082;
            *&v241[2] = v199;
            *&v241[10] = 2082;
            *&v241[12] = v200;
            *&v241[20] = 1024;
            *&v241[22] = 661;
            *&v241[26] = 1024;
            *&v241[28] = v201;
            _os_log_impl(&_mh_execute_header, v167, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unknown version: %d", buf, 0x28u);
          }

          v175 = 0;
        }

        v140 = v228;
      }

      else
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v157 = NFLogGetLogger();
        if (v157)
        {
          v158 = v157;
          v159 = object_getClass(v231);
          v218 = v155;
          v160 = v149;
          v161 = v152;
          v162 = class_isMetaClass(v159);
          v163 = object_getClassName(v231);
          v164 = sel_getName("decodeCRSPlatformConfiguration:");
          v217 = [v221 length];
          v213 = v164;
          v140 = v228;
          v165 = !v162;
          v152 = v161;
          v149 = v160;
          v155 = v218;
          v166 = 45;
          if (!v165)
          {
            v166 = 43;
          }

          v158(3, "%c[%{public}s %{public}s]:%i Invalid length: %zd", v166, v163, v213, 655, v217);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v167 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v167, OS_LOG_TYPE_ERROR))
        {
          v168 = object_getClass(v231);
          if (class_isMetaClass(v168))
          {
            v169 = 43;
          }

          else
          {
            v169 = 45;
          }

          v232 = object_getClassName(v231);
          v170 = v155;
          v171 = v149;
          v172 = v152;
          v173 = sel_getName("decodeCRSPlatformConfiguration:");
          v174 = [v221 length];
          *buf = 67110146;
          *&buf[4] = v169;
          v140 = v228;
          *v241 = 2082;
          *&v241[2] = v232;
          *&v241[10] = 2082;
          *&v241[12] = v173;
          v152 = v172;
          v149 = v171;
          v155 = v170;
          *&v241[20] = 1024;
          *&v241[22] = 655;
          *&v241[26] = 2048;
          *&v241[28] = v174;
          _os_log_impl(&_mh_execute_header, v167, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid length: %zd", buf, 0x2Cu);
        }

        v175 = 0;
      }

      if (v175)
      {
        [v24 setObject:v175 forKey:@"PlatformConfiguration"];
      }

      else
      {
LABEL_169:
        [v24 setObject:@"<ERROR>" forKey:@"PlatformConfiguration"];
      }

      v202 = v24;
      *v140 = v24;

      v9 = 0;
    }

    else
    {
      v93 = [NSError alloc];
      v94 = [NSString stringWithUTF8String:"nfcd"];
      v242[0] = NSLocalizedDescriptionKey;
      v95 = [NSString stringWithUTF8String:"Command Error"];
      *buf = v95;
      v96 = [NSDictionary dictionaryWithObjects:buf forKeys:v242 count:1];
      v9 = [v93 initWithDomain:v94 code:16 userInfo:v96];
    }

    goto LABEL_172;
  }

  if (a2 != 4)
  {
    if (a2 == 5)
    {
      v229 = objc_opt_new();
      v6 = [[NSData alloc] initWithBytes:"FACTORYTESTAPP" length:14];
      v242[0] = 0;
      v7 = a1;
      v8 = sub_100158A6C(a1, v6, v242);
      v9 = v242[0];

      if (v8)
      {
        if ([v8 status] != 36864)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v74 = NFLogGetLogger();
          if (v74)
          {
            v75 = v74;
            v76 = object_getClass(v7);
            v77 = class_isMetaClass(v76);
            v78 = object_getClassName(v7);
            v79 = sel_getName("dumpFTAppletLogging:");
            v214 = [v8 status];
            v80 = 45;
            if (v77)
            {
              v80 = 43;
            }

            v75(3, "%c[%{public}s %{public}s]:%i Failed to select: 0x%04x", v80, v78, v79, 1125, v214);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v81 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
          {
            v82 = object_getClass(v7);
            if (class_isMetaClass(v82))
            {
              v83 = 43;
            }

            else
            {
              v83 = 45;
            }

            *buf = 67110146;
            *&buf[4] = v83;
            *v241 = 2082;
            *&v241[2] = object_getClassName(v7);
            *&v241[10] = 2082;
            *&v241[12] = sel_getName("dumpFTAppletLogging:");
            *&v241[20] = 1024;
            *&v241[22] = 1125;
            *&v241[26] = 1024;
            *&v241[28] = [v8 status];
            _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to select: 0x%04x", buf, 0x28u);
          }

          v84 = [v8 status];
          v85 = [NSError alloc];
          v86 = [NSString stringWithUTF8String:"nfcd"];
          v244 = NSLocalizedDescriptionKey;
          if (v84 == 26277)
          {
            v87 = [NSString stringWithUTF8String:"Restricted Mode"];
            *buf = v87;
            v88 = [NSDictionary dictionaryWithObjects:buf forKeys:&v244 count:1];
            v89 = v85;
            v90 = v86;
            v91 = 24;
          }

          else
          {
            v87 = [NSString stringWithUTF8String:"Command Error"];
            *buf = v87;
            v88 = [NSDictionary dictionaryWithObjects:buf forKeys:&v244 count:1];
            v89 = v85;
            v90 = v86;
            v91 = 16;
          }

          v92 = [v89 initWithDomain:v90 code:v91 userInfo:v88];

          v21 = 0;
          v10 = v8;
          v11 = v9;
          v9 = v92;
          goto LABEL_150;
        }

        v244 = v9;
        v10 = sub_10015837C(v7, 128, 253, 1, 0, 0, 0, 0, &v244);
        v11 = v244;

        if (v10)
        {
          if ([v10 status] == 27013)
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v12 = NFLogGetLogger();
            if (v12)
            {
              v13 = v12;
              v14 = object_getClass(v7);
              v15 = class_isMetaClass(v14);
              v16 = object_getClassName(v7);
              v207 = sel_getName("dumpFTAppletLogging:");
              v17 = 45;
              if (v15)
              {
                v17 = 43;
              }

              v13(6, "%c[%{public}s %{public}s]:%i No logging data", v17, v16, v207, 1139);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v18 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              v19 = object_getClass(v7);
              if (class_isMetaClass(v19))
              {
                v20 = 43;
              }

              else
              {
                v20 = 45;
              }

              *buf = 67109890;
              *&buf[4] = v20;
              *v241 = 2082;
              *&v241[2] = object_getClassName(v7);
              *&v241[10] = 2082;
              *&v241[12] = sel_getName("dumpFTAppletLogging:");
              *&v241[20] = 1024;
              *&v241[22] = 1139;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i No logging data", buf, 0x22u);
            }

            v21 = objc_opt_new();
            v22 = v21;
            v9 = 0;
          }

          else
          {
            if ([v10 status] != 36864)
            {
              v117 = v7;
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v118 = NFLogGetLogger();
              if (v118)
              {
                v119 = v118;
                v120 = object_getClass(v7);
                v121 = class_isMetaClass(v120);
                v122 = object_getClassName(v7);
                v123 = sel_getName("dumpFTAppletLogging:");
                v216 = [v10 status];
                v211 = v123;
                v117 = v7;
                v124 = 45;
                if (v121)
                {
                  v124 = 43;
                }

                v119(3, "%c[%{public}s %{public}s]:%i Failed to send command: 0x%04x", v124, v122, v211, 1144, v216);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v125 = NFSharedLogGetLogger();
              v24 = v229;
              if (os_log_type_enabled(v125, OS_LOG_TYPE_ERROR))
              {
                v126 = object_getClass(v117);
                if (class_isMetaClass(v126))
                {
                  v127 = 43;
                }

                else
                {
                  v127 = 45;
                }

                *buf = 67110146;
                *&buf[4] = v127;
                *v241 = 2082;
                *&v241[2] = object_getClassName(v117);
                *&v241[10] = 2082;
                *&v241[12] = sel_getName("dumpFTAppletLogging:");
                *&v241[20] = 1024;
                *&v241[22] = 1144;
                *&v241[26] = 1024;
                *&v241[28] = [v10 status];
                _os_log_impl(&_mh_execute_header, v125, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to send command: 0x%04x", buf, 0x28u);
              }

              v128 = [NSError alloc];
              v129 = [NSString stringWithUTF8String:"nfcd"];
              v243 = NSLocalizedDescriptionKey;
              v130 = [NSString stringWithUTF8String:"Command Error"];
              *buf = v130;
              v131 = [NSDictionary dictionaryWithObjects:buf forKeys:&v243 count:1];
              v9 = [v128 initWithDomain:v129 code:16 userInfo:v131];

              v21 = 0;
              goto LABEL_151;
            }

            v21 = [v10 response];
            v116 = v21;
            v11 = v11;
            v9 = v11;
          }

LABEL_150:
          v24 = v229;
LABEL_151:

LABEL_152:
          v184 = v21;
          if (!v9)
          {
            [v24 setValue:v184 forKey:@"FTA Logging"];
            if (a3)
            {
              v185 = v24;
              *a3 = v24;
            }
          }

LABEL_172:
          goto LABEL_173;
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v108 = NFLogGetLogger();
        if (v108)
        {
          v109 = v108;
          v110 = object_getClass(v7);
          v111 = class_isMetaClass(v110);
          v206 = object_getClassName(v7);
          v210 = sel_getName("dumpFTAppletLogging:");
          v112 = 45;
          if (v111)
          {
            v112 = 43;
          }

          v109(3, "%c[%{public}s %{public}s]:%i Failed to send command : %{public}@", v112, v206, v210, 1135, v11);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v113 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
        {
          v114 = object_getClass(v7);
          if (class_isMetaClass(v114))
          {
            v115 = 43;
          }

          else
          {
            v115 = 45;
          }

          *buf = 67110146;
          *&buf[4] = v115;
          *v241 = 2082;
          *&v241[2] = object_getClassName(v7);
          *&v241[10] = 2082;
          *&v241[12] = sel_getName("dumpFTAppletLogging:");
          *&v241[20] = 1024;
          *&v241[22] = 1135;
          *&v241[26] = 2114;
          *&v241[28] = v11;
          _os_log_impl(&_mh_execute_header, v113, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to send command : %{public}@", buf, 0x2Cu);
        }

        if (v11)
        {
          v21 = 0;
          v9 = v11;
          goto LABEL_99;
        }

        v97 = [NSError alloc];
        v11 = [NSString stringWithUTF8String:"nfcd"];
        v243 = NSLocalizedDescriptionKey;
        v10 = [NSString stringWithUTF8String:"Command Error"];
        *buf = v10;
        v98 = &v243;
      }

      else
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v66 = NFLogGetLogger();
        if (v66)
        {
          v67 = v66;
          v68 = object_getClass(v7);
          v69 = class_isMetaClass(v68);
          v205 = object_getClassName(v7);
          v209 = sel_getName("dumpFTAppletLogging:");
          v70 = 45;
          if (v69)
          {
            v70 = 43;
          }

          v67(3, "%c[%{public}s %{public}s]:%i Failed to select : %{public}@", v70, v205, v209, 1121, v9);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v71 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
        {
          v72 = object_getClass(v7);
          if (class_isMetaClass(v72))
          {
            v73 = 43;
          }

          else
          {
            v73 = 45;
          }

          *buf = 67110146;
          *&buf[4] = v73;
          *v241 = 2082;
          *&v241[2] = object_getClassName(v7);
          *&v241[10] = 2082;
          *&v241[12] = sel_getName("dumpFTAppletLogging:");
          *&v241[20] = 1024;
          *&v241[22] = 1121;
          *&v241[26] = 2114;
          *&v241[28] = v9;
          _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to select : %{public}@", buf, 0x2Cu);
        }

        if (v9)
        {
          v21 = 0;
LABEL_99:
          v24 = v229;
          goto LABEL_152;
        }

        v97 = [NSError alloc];
        v11 = [NSString stringWithUTF8String:"nfcd"];
        v244 = NSLocalizedDescriptionKey;
        v10 = [NSString stringWithUTF8String:"Command Error"];
        *buf = v10;
        v98 = &v244;
      }

      v183 = [NSDictionary dictionaryWithObjects:buf forKeys:v98 count:1];
      v9 = [v97 initWithDomain:v11 code:16 userInfo:v183];

      v21 = 0;
      goto LABEL_150;
    }

    goto LABEL_30;
  }

  *buf = 0;
  *v241 = buf;
  *&v241[8] = 0x3032000000;
  *&v241[16] = sub_100006A4C;
  *&v241[24] = sub_10009A0FC;
  *&v241[32] = objc_opt_new();
  v224 = [[NSData alloc] initWithBytes:&unk_100296D70 length:10];
  v239[0] = v224;
  sela = [[NSData alloc] initWithBytes:&unk_100296D7A length:10];
  v239[1] = sela;
  v220 = [[NSData alloc] initWithBytes:&unk_100296D84 length:10];
  v239[2] = v220;
  v230 = a1;
  v28 = [[NSData alloc] initWithBytes:&unk_100296D8E length:10];
  v239[3] = v28;
  v29 = [[NSData alloc] initWithBytes:&unk_100296D98 length:10];
  v239[4] = v29;
  v30 = [[NSData alloc] initWithBytes:&unk_100296DA2 length:10];
  v239[5] = v30;
  v31 = [[NSData alloc] initWithBytes:&unk_100296DAC length:10];
  v239[6] = v31;
  v32 = [[NSData alloc] initWithBytes:&unk_100296DB6 length:10];
  v239[7] = v32;
  v33 = [[NSData alloc] initWithBytes:&unk_100296DC0 length:10];
  v239[8] = v33;
  v34 = [[NSData alloc] initWithBytes:&unk_100296DCA length:10];
  v239[9] = v34;
  v35 = [[NSData alloc] initWithBytes:&unk_100296DD4 length:10];
  v239[10] = v35;
  v36 = [NSArray arrayWithObjects:v239 count:11];

  v234[0] = _NSConcreteStackBlock;
  v234[1] = 3221225472;
  v234[2] = sub_10009A104;
  v234[3] = &unk_100317920;
  v234[4] = v230;
  v234[5] = buf;
  v234[6] = "dumpDomain:info:";
  [v36 enumerateObjectsUsingBlock:v234];
  if ([*(*v241 + 40) count])
  {
    v9 = 0;
    if (a3)
    {
      *a3 = *(*v241 + 40);
    }
  }

  else
  {
    v62 = [NSError alloc];
    v63 = [NSString stringWithUTF8String:"nfcd"];
    v237 = NSLocalizedDescriptionKey;
    v64 = [NSString stringWithUTF8String:"Unknown Error"];
    v238 = v64;
    v65 = [NSDictionary dictionaryWithObjects:&v238 forKeys:&v237 count:1];
    v9 = [v62 initWithDomain:v63 code:6 userInfo:v65];
  }

  _Block_object_dispose(buf, 8);
LABEL_173:

  return v9;
}

id sub_1000981DC(id *a1, int a2, void *a3)
{
  v6 = objc_opt_new();
  v7 = [NSData alloc];
  if (a2)
  {
    v8 = &unk_100296DE6;
    v9 = 12;
  }

  else
  {
    v8 = &unk_100296DDE;
    v9 = 8;
  }

  v10 = [v7 initWithBytes:v8 length:v9];
  v301 = 0;
  v11 = sub_100158A6C(a1, v10, &v301);
  v12 = v301;
  v298 = v11;
  if (v11)
  {
    v297 = v6;
    if ([v11 status] == 36864)
    {
      v289 = a3;
      v296 = v10;
      v13 = [v11 response];
      v14 = objc_opt_new();
      v15 = [NFTLV TLVWithData:v13];

      v293 = a2;
      v292 = v12;
      if ([v15 tag] == 111)
      {
        v16 = objc_opt_new();
        [v14 setObject:v16 forKey:@"File Control Info"];
        v17 = [v15 childWithTag:132];
        v18 = v17;
        if (v17)
        {
          v19 = [v17 value];
          [v16 setObject:v19 forKey:@"Dedicated File Name"];
        }

        v290 = v16;
        v20 = [v15 childWithTag:165];

        if (v20)
        {
          v284 = v14;
          v21 = objc_opt_new();
          v22 = v290;
          [v290 setObject:v21 forKey:@"File Control Info (Proprietary)"];
          v23 = [v20 childWithTag:40805];

          if (v23)
          {
            v24 = [v23 value];
            [v21 setObject:v24 forKey:@"Command Max Data Length"];
          }

          v18 = [v20 childWithTag:40814];

          if (v18)
          {
            v25 = [v18 value];
            [v21 setObject:v25 forKey:@"App Production Lifecycle"];
          }

          v26 = [v20 childWithTag:115];
          if (v26)
          {
            v27 = objc_opt_new();
            [v290 setObject:v27 forKey:@"Security Domain Management"];
            v28 = [v26 childWithTag:6];

            if (v28)
            {
              v29 = [v28 value];
              v30 = [v28 value];
              [v29 subdataWithRange:{6, objc_msgSend(v30, "length") - 6}];
              v32 = v31 = a1;

              [v27 setObject:v32 forKey:@"Tag Allocation Authority"];
              a1 = v31;
              a2 = v293;
            }

            v33 = [v26 childWithTag:96];
            v34 = [v33 childWithTag:6];

            if (v34)
            {
              v35 = [v34 value];
              v36 = [v34 value];
              [v35 subdataWithRange:{6, objc_msgSend(v36, "length") - 6}];
              v38 = v37 = a1;

              [v27 setObject:v38 forKey:@"Card Management Type and Version"];
              a1 = v37;
              a2 = v293;
            }

            v39 = [v26 childWithTag:99];
            v40 = [v39 childWithTag:6];

            if (v40)
            {
              v41 = [v40 value];
              [v40 value];
              v43 = v42 = a1;
              v44 = [v41 subdataWithRange:{6, objc_msgSend(v43, "length") - 6}];

              a1 = v42;
              a2 = v293;

              [v27 setObject:v44 forKey:@"Card Identification Scheme"];
            }

            v45 = [v26 childWithTag:100];
            v46 = [v45 childWithTag:6];

            if (v46)
            {
              v47 = [v46 value];
              v48 = [v46 value];
              [v47 subdataWithRange:{6, objc_msgSend(v48, "length") - 6}];
              v50 = v49 = a1;

              [v27 setObject:v50 forKey:@"Secure Channel Protocol"];
              a1 = v49;
              a2 = v293;
            }

            v51 = [v26 childWithTag:101];
            v52 = [v51 childWithTag:6];

            if (v52)
            {
              v53 = [v52 value];
              [v27 setObject:v53 forKey:@"Card Configuration"];
            }

            v54 = [v26 childWithTag:102];
            v18 = [v54 childWithTag:6];

            if (v18)
            {
              v55 = [v18 value];
              [v27 setObject:v55 forKey:@"Card/Chip Details"];
            }

            v22 = v290;
          }

          v56 = v284;

          v14 = v284;
        }

        else
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          Logger = NFLogGetLogger();
          if (Logger)
          {
            v110 = Logger;
            Class = object_getClass(a1);
            isMetaClass = class_isMetaClass(Class);
            ClassName = object_getClassName(a1);
            Name = sel_getName("decodeRootSecurityDomainResponse:");
            v114 = 45;
            if (isMetaClass)
            {
              v114 = 43;
            }

            v110(3, "%c[%{public}s %{public}s]:%i Missing tag: 0x%x", v114, ClassName, Name, 435, 165);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v26 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            v115 = object_getClass(a1);
            if (class_isMetaClass(v115))
            {
              v116 = 43;
            }

            else
            {
              v116 = 45;
            }

            v117 = object_getClassName(a1);
            v118 = sel_getName("decodeRootSecurityDomainResponse:");
            *buf = 67110146;
            *&buf[4] = v116;
            *&buf[8] = 2082;
            *&buf[10] = v117;
            *&buf[18] = 2082;
            *&buf[20] = v118;
            *&buf[28] = 1024;
            *&buf[30] = 435;
            *&buf[34] = 1024;
            *&buf[36] = 165;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Missing tag: 0x%x", buf, 0x28u);
          }

          v56 = 0;
          v22 = v290;
        }
      }

      else
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v92 = NFLogGetLogger();
        if (v92)
        {
          v93 = v92;
          v94 = object_getClass(a1);
          v95 = class_isMetaClass(v94);
          v96 = object_getClassName(a1);
          v97 = sel_getName("decodeRootSecurityDomainResponse:");
          v277 = [v15 tag];
          v98 = 45;
          if (v95)
          {
            v98 = 43;
          }

          v93(3, "%c[%{public}s %{public}s]:%i Unexpected tag: 0x%x", v98, v96, v97, 423, v277);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v18 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v99 = object_getClass(a1);
          if (class_isMetaClass(v99))
          {
            v100 = 43;
          }

          else
          {
            v100 = 45;
          }

          v101 = object_getClassName(a1);
          v102 = sel_getName("decodeRootSecurityDomainResponse:");
          v103 = [v15 tag];
          *buf = 67110146;
          *&buf[4] = v100;
          *&buf[8] = 2082;
          *&buf[10] = v101;
          *&buf[18] = 2082;
          *&buf[20] = v102;
          *&buf[28] = 1024;
          *&buf[30] = 423;
          *&buf[34] = 1024;
          *&buf[36] = v103;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unexpected tag: 0x%x", buf, 0x28u);
        }

        v56 = 0;
        v20 = v15;
      }

      v291 = v56;
      if (!v56)
      {
        [v297 setObject:@"<ERROR>" forKey:@"<SELECT>"];
        v121 = [NSError alloc];
        v122 = [NSString stringWithUTF8String:"nfcd"];
        v306 = NSLocalizedDescriptionKey;
        v123 = [NSString stringWithUTF8String:"Unknown Error"];
        v307 = v123;
        v124 = [NSDictionary dictionaryWithObjects:&v307 forKeys:&v306 count:1];
        v68 = [v121 initWithDomain:v122 code:6 userInfo:v124];

        v104 = v297;
        v10 = v296;
        v12 = v292;
LABEL_131:

        goto LABEL_132;
      }

      v104 = v297;
      [v297 setObject:v56 forKey:@"<SELECT>"];
      v119 = sub_100092024(a1);
      v12 = v292;
      if (v119)
      {
        v120 = [NSNumber numberWithUnsignedShort:v119];
        [v297 setObject:v120 forKey:@"COUNTER"];
      }

      else
      {
        [v297 setObject:@"<ERROR>" forKey:@"COUNTER"];
      }

      v125 = sub_100158AB4(a1, 40831);
      v126 = v125;
      if (v125)
      {
        v127 = v125;
        v128 = v125;
        if ([v128 length] == 42)
        {
          v129 = objc_opt_new();
          v130 = [NSString alloc];
          v131 = [v128 subdataWithRange:{0, 2}];
          v132 = [v131 NF_asHexString];
          v133 = [v130 initWithFormat:@"IC Fabricator: %@", v132];
          [(__CFString *)v129 addObject:v133];

          v134 = [NSString alloc];
          v135 = [v128 subdataWithRange:{2, 2}];
          v136 = [v135 NF_asHexString];
          v137 = [v134 initWithFormat:@"IC Type: %@", v136];
          [(__CFString *)v129 addObject:v137];

          v138 = [NSString alloc];
          v139 = [v128 subdataWithRange:{4, 2}];
          v140 = [v139 NF_asHexString];
          v141 = [v138 initWithFormat:@"OS Provider: %@", v140];
          [(__CFString *)v129 addObject:v141];

          v142 = [NSString alloc];
          v143 = [v128 subdataWithRange:{6, 2}];
          v144 = [v143 NF_asHexString];
          v145 = [v142 initWithFormat:@"OS Release Date: %@", v144];
          [(__CFString *)v129 addObject:v145];

          v146 = [NSString alloc];
          v147 = [v128 subdataWithRange:{8, 2}];
          v148 = [v147 NF_asHexString];
          v149 = [v146 initWithFormat:@"OS Release Level: %@", v148];
          [(__CFString *)v129 addObject:v149];

          v150 = [NSString alloc];
          v151 = [v128 subdataWithRange:{10, 2}];
          v152 = [v151 NF_asHexString];
          v153 = [v150 initWithFormat:@"IC Fabrication Date: %@", v152];
          [(__CFString *)v129 addObject:v153];

          v154 = [NSString alloc];
          v155 = [v128 subdataWithRange:{12, 4}];
          v156 = [v155 NF_asHexString];
          v157 = [v154 initWithFormat:@"IC Serial Number: %@", v156];
          [(__CFString *)v129 addObject:v157];

          v158 = [NSString alloc];
          v159 = [v128 subdataWithRange:{16, 2}];
          v160 = [v159 NF_asHexString];
          v161 = [v158 initWithFormat:@"IC Batch Identifier: %@", v160];
          [(__CFString *)v129 addObject:v161];

          v162 = [NSString alloc];
          v163 = [v128 subdataWithRange:{18, 2}];
          v164 = [v163 NF_asHexString];
          v165 = [v162 initWithFormat:@"IC Module Fabricator: %@", v164];
          [(__CFString *)v129 addObject:v165];

          v166 = [NSString alloc];
          v167 = [v128 subdataWithRange:{20, 2}];
          v168 = [v167 NF_asHexString];
          v169 = [v166 initWithFormat:@"IC Module Packaging Date: %@", v168];
          [(__CFString *)v129 addObject:v169];

          v170 = [NSString alloc];
          v171 = [v128 subdataWithRange:{22, 2}];
          v172 = [v171 NF_asHexString];
          v173 = [v170 initWithFormat:@"IC Manufacturer: %@", v172];
          [(__CFString *)v129 addObject:v173];

          v174 = [NSString alloc];
          v175 = [v128 subdataWithRange:{24, 2}];
          v176 = [v175 NF_asHexString];
          v177 = [v174 initWithFormat:@"IC Embedding Date: %@", v176];
          [(__CFString *)v129 addObject:v177];

          v178 = [NSString alloc];
          v179 = [v128 subdataWithRange:{26, 2}];
          v180 = [v179 NF_asHexString];
          v181 = [v178 initWithFormat:@"Prepersonalizer Identifier: %@", v180];
          [(__CFString *)v129 addObject:v181];

          v182 = [NSString alloc];
          v183 = [v128 subdataWithRange:{28, 2}];
          v184 = [v183 NF_asHexString];
          v185 = [v182 initWithFormat:@"Prepersonalization Date: %@", v184];
          [(__CFString *)v129 addObject:v185];

          v186 = [NSString alloc];
          v187 = [v128 subdataWithRange:{30, 4}];
          v188 = [v187 NF_asHexString];
          v189 = [v186 initWithFormat:@"Prepersonalization Equipment: %@", v188];
          [(__CFString *)v129 addObject:v189];

          v190 = [NSString alloc];
          v191 = [v128 subdataWithRange:{34, 2}];
          v192 = [v191 NF_asHexString];
          v193 = [v190 initWithFormat:@"Personalizer Identifier: %@", v192];
          [(__CFString *)v129 addObject:v193];

          v194 = [NSString alloc];
          v195 = [v128 subdataWithRange:{36, 2}];
          v196 = [v195 NF_asHexString];
          v197 = [v194 initWithFormat:@"Personalization Date: %@", v196];
          [(__CFString *)v129 addObject:v197];

          v198 = [NSString alloc];
          v199 = [v128 subdataWithRange:{38, 4}];
          v200 = [v199 NF_asHexString];
          v201 = [v198 initWithFormat:@"Personalization Equipment: %@", v200];
          [(__CFString *)v129 addObject:v201];
        }

        else
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v202 = NFLogGetLogger();
          if (v202)
          {
            v203 = v202;
            v204 = object_getClass(a1);
            v205 = class_isMetaClass(v204);
            v206 = object_getClassName(a1);
            v207 = a1;
            v208 = sel_getName("decodeCPLCResponse:");
            v278 = [v128 length];
            v275 = v208;
            a1 = v207;
            a2 = v293;
            v209 = 45;
            if (v205)
            {
              v209 = 43;
            }

            v203(3, "%c[%{public}s %{public}s]:%i Invalid length: %d", v209, v206, v275, 565, v278);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v199 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v199, OS_LOG_TYPE_ERROR))
          {
            v210 = object_getClass(a1);
            if (class_isMetaClass(v210))
            {
              v211 = 43;
            }

            else
            {
              v211 = 45;
            }

            v212 = object_getClassName(a1);
            v213 = sel_getName("decodeCPLCResponse:");
            v214 = [v128 length];
            *buf = 67110146;
            *&buf[4] = v211;
            *&buf[8] = 2082;
            *&buf[10] = v212;
            *&buf[18] = 2082;
            *&buf[20] = v213;
            *&buf[28] = 1024;
            *&buf[30] = 565;
            *&buf[34] = 1024;
            *&buf[36] = v214;
            _os_log_impl(&_mh_execute_header, v199, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid length: %d", buf, 0x28u);
          }

          v129 = 0;
        }

        if (v129)
        {
          v215 = v129;
        }

        else
        {
          v215 = @"<ERROR>";
        }

        v104 = v297;
        [v297 setObject:v215 forKey:@"CPLC"];

        v126 = v127;
      }

      else
      {
        [v297 setObject:@"<ERROR>" forKey:@"CPLC"];
      }

      if (a2 == 1)
      {
        v216 = sub_100092208(a1);
        if (v216)
        {
          v299[0] = _NSConcreteStackBlock;
          v299[1] = 3221225472;
          v299[2] = sub_10009AED0;
          v299[3] = &unk_100317BB0;
          v299[4] = a1;
          v300 = v104;
          [v216 enumerateKeysAndObjectsUsingBlock:v299];
        }

        else
        {
          [v104 setObject:@"<ERROR>" forKey:@"CERTIFICATE-RSA"];
          [v104 setObject:@"<ERROR>" forKey:@"CERTIFICATE-ECC"];
        }

        v217 = sub_100158F70(a1, 254, 0xDF20u);

        if (v217)
        {
          v218 = [[NSString alloc] initWithData:v217 encoding:1];
          v219 = v104;
          v220 = v218;
          if (v218)
          {
            v221 = v218;
          }

          else
          {
            v221 = v217;
          }

          [v219 setObject:v221 forKey:@"PLATFORM"];

          v104 = v219;
        }

        else
        {
          [v104 setObject:@"<ERROR>" forKey:@"PLATFORM"];
        }

        v10 = v296;
      }

      else
      {
        v217 = v126;
        v10 = v296;
      }

      v222 = sub_100158F70(a1, 254, 0xDF21u);

      if (v222)
      {
        v223 = v222;
      }

      else
      {
        v223 = @"<ERROR>";
      }

      [v104 setObject:v223 forKey:@"SERIAL"];
      if (a2 == 1)
      {
        v305 = 0;
        memset(buf, 0, sizeof(buf));
        if (sub_100092D68(a1, buf))
        {
          v302[0] = @"Persistent";
          v224 = [NSNumber numberWithUnsignedInt:*buf];
          v303[0] = v224;
          v302[1] = @"Clear on Reset";
          v294 = [NSNumber numberWithUnsignedInt:*&buf[4]];
          v303[1] = v294;
          v302[2] = @"Clear on Deselect";
          v287 = [NSNumber numberWithUnsignedInt:*&buf[8]];
          v303[2] = v287;
          v302[3] = @"Available Indicies";
          v285 = [NSNumber numberWithUnsignedInt:*&buf[12]];
          v303[3] = v285;
          v302[4] = @"Total Number of Indicies";
          v282 = [NSNumber numberWithUnsignedInt:*&buf[16]];
          v303[4] = v282;
          v302[5] = @"Available persistent memory excluding pre-allocated indices [System]";
          v280 = [NSNumber numberWithUnsignedInt:*&buf[20]];
          v303[5] = v280;
          v302[6] = @"Available transient memory [eUICC]";
          v225 = [NSNumber numberWithUnsignedInt:*&buf[24]];
          v303[6] = v225;
          v302[7] = @"Reserved clear-on-deselect memory [System]";
          v226 = [NSNumber numberWithUnsignedInt:*&buf[28]];
          v303[7] = v226;
          v302[8] = @"Maximum mapped clear-on-deselect memory [System]";
          v227 = [NSNumber numberWithUnsignedInt:*&buf[32]];
          v303[8] = v227;
          v302[9] = @"OS update transient memory reserved [eSE]";
          v228 = [NSNumber numberWithUnsignedInt:*&buf[36]];
          v303[9] = v228;
          v302[10] = @"OS update persistent memory reserved [eSE]";
          v229 = [NSNumber numberWithUnsignedInt:*&buf[40]];
          v303[10] = v229;
          v302[11] = @"Transient common pool [System]";
          v230 = [NSNumber numberWithUnsignedInt:*&buf[44]];
          v303[11] = v230;
          v302[12] = @"Persistent common pool [System]";
          v231 = [NSNumber numberWithUnsignedInt:v305];
          v303[12] = v231;
          v232 = [NSDictionary dictionaryWithObjects:v303 forKeys:v302 count:13];
          [v297 setObject:v232 forKey:@"MEMORY"];

          v10 = v296;
          v12 = v292;

          v104 = v297;
        }

        else
        {
          [v104 setObject:@"<ERROR>" forKey:@"MEMORY"];
        }

        goto LABEL_130;
      }

      v233 = sub_100158F70(a1, 254, 0xDF31u);

      if (!v233)
      {
        [v104 setObject:@"<ERROR>" forKey:@"UPDATE"];
LABEL_130:
        v268 = v104;
        v68 = 0;
        *v289 = v104;
        goto LABEL_131;
      }

      v234 = v233;
      v235 = objc_opt_new();
      v236 = [NSString alloc];
      v237 = [v234 subdataWithRange:{0, 2}];
      v238 = [v237 NF_asHexString];
      v239 = [v236 initWithFormat:@"Sequence Number: %@", v238];
      [v235 addObject:v239];

      if ([v234 length] == 6)
      {
        v288 = 2;
        v295 = @"Device Type: %@";
        v240 = 1;
        v283 = 5;
        v286 = @"Hardware Version: %@";
        v241 = 4;
        v242 = 2;
        v243 = @"Firmware Version: %@";
      }

      else
      {
        if ([v234 length] == 8)
        {
          v295 = @"Device Type: %@";
          v279 = @"JCOP Version: %@";
          v281 = 1;
          v244 = 7;
          v241 = 6;
          v245 = 2;
          v286 = @"Hardware Version: %@";
          v288 = 4;
          v246 = 2;
          v242 = 2;
          v247 = @"Firmware Version: %@";
        }

        else
        {
          if ([v234 length] != 16)
          {
LABEL_129:

            v104 = v297;
            [v297 setObject:v235 forKey:@"UPDATE"];

            v10 = v296;
            goto LABEL_130;
          }

          v248 = [NSString alloc];
          v249 = [v234 subdataWithRange:{2, 2}];
          v250 = [v249 NF_asHexString];
          v251 = [v248 initWithFormat:@"SVC ROM Version: %@", v250];
          [v235 addObject:v251];

          v295 = @"CL Version: %@";
          v279 = @"Device Type: %@";
          v281 = 3;
          v244 = 11;
          v241 = 8;
          v246 = 1;
          v286 = @"SVC FLASH Version: %@";
          v288 = 7;
          v245 = 6;
          v242 = 1;
          v247 = @"Hardware Version: %@";
        }

        v283 = v244;
        v252 = [NSString alloc];
        v253 = [v234 subdataWithRange:{v245, v246}];
        v254 = [v253 NF_asHexString];
        v255 = [v252 initWithFormat:v247, v254];
        [v235 addObject:v255];

        v12 = v292;
        v243 = v279;
        v240 = v281;
      }

      v256 = [NSString alloc];
      v257 = [v234 subdataWithRange:{v288, v242}];
      v258 = [v257 NF_asHexString];
      v259 = [v256 initWithFormat:v243, v258];
      [v235 addObject:v259];

      v260 = [NSString alloc];
      v261 = [v234 subdataWithRange:{v241, v240}];
      v262 = [v261 NF_asHexString];
      v263 = [v260 initWithFormat:v286, v262];
      [v235 addObject:v263];

      v264 = [NSString alloc];
      v265 = [v234 subdataWithRange:{v283, v240}];
      v266 = [v265 NF_asHexString];
      v267 = [v264 initWithFormat:v295, v266];
      [v235 addObject:v267];

      goto LABEL_129;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v69 = NFLogGetLogger();
    if (v69)
    {
      v70 = v69;
      v71 = object_getClass(a1);
      v72 = class_isMetaClass(v71);
      v73 = a1;
      v74 = object_getClassName(a1);
      v75 = v12;
      v76 = sel_getName("dumpRootSecurityDomain:info:");
      v276 = [v11 status];
      v271 = v74;
      v273 = v76;
      v12 = v75;
      v77 = 45;
      if (v72)
      {
        v77 = 43;
      }

      a1 = v73;
      v70(3, "%c[%{public}s %{public}s]:%i Failed to select: 0x%04x", v77, v271, v273, 180, v276);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v78 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
    {
      v79 = object_getClass(a1);
      if (class_isMetaClass(v79))
      {
        v80 = 43;
      }

      else
      {
        v80 = 45;
      }

      v81 = object_getClassName(a1);
      v82 = sel_getName("dumpRootSecurityDomain:info:");
      v83 = [v11 status];
      *buf = 67110146;
      *&buf[4] = v80;
      *&buf[8] = 2082;
      *&buf[10] = v81;
      *&buf[18] = 2082;
      *&buf[20] = v82;
      *&buf[28] = 1024;
      *&buf[30] = 180;
      *&buf[34] = 1024;
      *&buf[36] = v83;
      _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to select: 0x%04x", buf, 0x28u);
    }

    v84 = [v11 status];
    v85 = [NSError alloc];
    v86 = [NSString stringWithUTF8String:"nfcd"];
    if (v84 == 26277)
    {
      v310 = NSLocalizedDescriptionKey;
      v87 = [NSString stringWithUTF8String:"Restricted Mode"];
      v311 = v87;
      v88 = [NSDictionary dictionaryWithObjects:&v311 forKeys:&v310 count:1];
      v89 = v85;
      v90 = v86;
      v91 = 24;
    }

    else
    {
      v308 = NSLocalizedDescriptionKey;
      v87 = [NSString stringWithUTF8String:"Command Error"];
      v309 = v87;
      v88 = [NSDictionary dictionaryWithObjects:&v309 forKeys:&v308 count:1];
      v89 = v85;
      v90 = v86;
      v91 = 16;
    }

    v68 = [v89 initWithDomain:v90 code:v91 userInfo:v88];

    v104 = v297;
  }

  else
  {
    v57 = v6;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v58 = NFLogGetLogger();
    if (v58)
    {
      v59 = v58;
      v60 = object_getClass(a1);
      v61 = class_isMetaClass(v60);
      v270 = object_getClassName(a1);
      v272 = sel_getName("dumpRootSecurityDomain:info:");
      v62 = 45;
      if (v61)
      {
        v62 = 43;
      }

      v59(3, "%c[%{public}s %{public}s]:%i Failed to select : %{public}@", v62, v270, v272, 176, v12);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v63 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      v64 = object_getClass(a1);
      if (class_isMetaClass(v64))
      {
        v65 = 43;
      }

      else
      {
        v65 = 45;
      }

      v66 = object_getClassName(a1);
      v67 = sel_getName("dumpRootSecurityDomain:info:");
      *buf = 67110146;
      *&buf[4] = v65;
      *&buf[8] = 2082;
      *&buf[10] = v66;
      *&buf[18] = 2082;
      *&buf[20] = v67;
      *&buf[28] = 1024;
      *&buf[30] = 176;
      *&buf[34] = 2114;
      *&buf[36] = v12;
      _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to select : %{public}@", buf, 0x2Cu);
    }

    if (v12)
    {
      v12 = v12;
      v68 = v12;
    }

    else
    {
      v105 = [NSError alloc];
      v106 = [NSString stringWithUTF8String:"nfcd"];
      v312 = NSLocalizedDescriptionKey;
      v107 = [NSString stringWithUTF8String:"Command Error"];
      v313 = v107;
      v108 = [NSDictionary dictionaryWithObjects:&v313 forKeys:&v312 count:1];
      v68 = [v105 initWithDomain:v106 code:16 userInfo:v108];
    }

    v104 = v57;
  }

LABEL_132:

  return v68;
}

void sub_10009A104(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v3;
  if (v4)
  {
    v6 = objc_opt_new();
    v125 = 0;
    v7 = sub_100158A6C(v4, v5, &v125);
    v8 = v125;
    if (v7)
    {
      if ([v7 status] == 36864)
      {
        v122 = v6;
        v124 = v8;
        v9 = sub_1001583C0(v4, 128, 1, 0, 0, 0, 0, 0, &v124);
        v10 = v124;

        if (v9)
        {
          if ([v9 status] == 36864)
          {
            v11 = [v9 response];
            v12 = [v11 length];

            if (!v12)
            {
              goto LABEL_55;
            }

            v13 = [v9 response];
            [v122 setValue:v13 forKey:@"FixedBuffer"];
          }

          else
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            Logger = NFLogGetLogger();
            if (Logger)
            {
              v60 = Logger;
              Class = object_getClass(v4);
              isMetaClass = class_isMetaClass(Class);
              ClassName = object_getClassName(v4);
              Name = sel_getName("dumpAppletLogging:info:");
              v119 = [v9 status];
              v65 = 45;
              if (isMetaClass)
              {
                v65 = 43;
              }

              v60(3, "%c[%{public}s %{public}s]:%i Failed to query fixed buffer : 0x%04x", v65, ClassName, Name, 1077, v119);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v66 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
            {
              v67 = object_getClass(v4);
              if (class_isMetaClass(v67))
              {
                v68 = 43;
              }

              else
              {
                v68 = 45;
              }

              v69 = object_getClassName(v4);
              v70 = sel_getName("dumpAppletLogging:info:");
              v71 = [v9 status];
              *buf = 67110146;
              *&buf[4] = v68;
              *v128 = 2082;
              *&v128[2] = v69;
              *&v128[10] = 2082;
              *&v128[12] = v70;
              *&v128[20] = 1024;
              *&v128[22] = 1077;
              *&v128[26] = 1024;
              *&v128[28] = v71;
              _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to query fixed buffer : 0x%04x", buf, 0x28u);
            }

            if ([v9 status] != 27267)
            {
              goto LABEL_55;
            }

            v13 = v10;
            v10 = 0;
          }
        }

        else
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v50 = NFLogGetLogger();
          if (v50)
          {
            v51 = v50;
            v52 = object_getClass(v4);
            v53 = class_isMetaClass(v52);
            v110 = object_getClassName(v4);
            v115 = sel_getName("dumpAppletLogging:info:");
            v54 = 45;
            if (v53)
            {
              v54 = 43;
            }

            v51(3, "%c[%{public}s %{public}s]:%i Failed to query : %{public}@", v54, v110, v115, 1075, v10);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v13 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            v55 = object_getClass(v4);
            if (class_isMetaClass(v55))
            {
              v56 = 43;
            }

            else
            {
              v56 = 45;
            }

            v57 = object_getClassName(v4);
            v58 = sel_getName("dumpAppletLogging:info:");
            *buf = 67110146;
            *&buf[4] = v56;
            *v128 = 2082;
            *&v128[2] = v57;
            *&v128[10] = 2082;
            *&v128[12] = v58;
            *&v128[20] = 1024;
            *&v128[22] = 1075;
            *&v128[26] = 2114;
            *&v128[28] = v10;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to query : %{public}@", buf, 0x2Cu);
          }
        }

LABEL_55:
        v123 = v10;
        v72 = sub_1001583C0(v4, 128, 3, 0, 0, 0, 0, 0, &v123);
        v8 = v123;

        v73 = [v72 response];
        v7 = v73;
        if (!v73 || v8)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v76 = NFLogGetLogger();
          if (v76)
          {
            v77 = v76;
            v78 = object_getClass(v4);
            v79 = class_isMetaClass(v78);
            v111 = object_getClassName(v4);
            v116 = sel_getName("dumpAppletLogging:info:");
            v80 = 45;
            if (v79)
            {
              v80 = 43;
            }

            v77(3, "%c[%{public}s %{public}s]:%i Failed to query : %{public}@", v80, v111, v116, 1097, v8);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v81 = NFSharedLogGetLogger();
          v6 = v122;
          if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
          {
            v82 = object_getClass(v4);
            if (class_isMetaClass(v82))
            {
              v83 = 43;
            }

            else
            {
              v83 = 45;
            }

            v84 = object_getClassName(v4);
            v85 = sel_getName("dumpAppletLogging:info:");
            *buf = 67110146;
            *&buf[4] = v83;
            *v128 = 2082;
            *&v128[2] = v84;
            *&v128[10] = 2082;
            *&v128[12] = v85;
            *&v128[20] = 1024;
            *&v128[22] = 1097;
            *&v128[26] = 2114;
            *&v128[28] = v8;
            _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to query : %{public}@", buf, 0x2Cu);
          }

          v86 = [NSError alloc];
          v87 = [NSString stringWithUTF8String:"nfcd"];
          if (v8)
          {
            v120 = v86;
            v121 = v72;
            v88 = [v8 code];
            v126[0] = NSLocalizedDescriptionKey;
            v89 = v87;
            if ([v8 code]> 75)
            {
              v90 = 76;
            }

            else
            {
              v90 = [v8 code];
            }

            v93 = [NSString stringWithUTF8String:off_100317940[v90]];
            *buf = v93;
            *v128 = v8;
            v126[1] = NSUnderlyingErrorKey;
            v126[2] = @"Line";
            *&v128[8] = &off_100330CA8;
            v126[3] = @"Method";
            v94 = [[NSString alloc] initWithFormat:@"%s", sel_getName("dumpAppletLogging:info:")];
            *&v128[16] = v94;
            v126[4] = NSDebugDescriptionErrorKey;
            v95 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("dumpAppletLogging:info:"), 1098];
            *&v128[24] = v95;
            v96 = [NSDictionary dictionaryWithObjects:buf forKeys:v126 count:5];
            v48 = [v120 initWithDomain:v89 code:v88 userInfo:v96];

            v4 = 0;
            v7 = v121;
            v6 = v122;
            goto LABEL_76;
          }

          v126[0] = NSLocalizedDescriptionKey;
          v91 = [NSString stringWithUTF8String:"Command Error"];
          *buf = v91;
          v92 = [NSDictionary dictionaryWithObjects:buf forKeys:v126 count:1];
          v48 = [v86 initWithDomain:v87 code:16 userInfo:v92];

          v4 = 0;
        }

        else
        {
          v6 = v122;
          if ([v73 length])
          {
            v74 = [v72 response];
            [v122 setValue:v74 forKey:@"CyclicBuffer"];
          }

          v4 = [[NSDictionary alloc] initWithDictionary:v122];
          v75 = v4;
          v48 = 0;
        }

        v8 = v72;
LABEL_76:

        v8 = v48;
        goto LABEL_77;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v24 = NFLogGetLogger();
      if (v24)
      {
        v25 = v24;
        v26 = object_getClass(v4);
        v27 = class_isMetaClass(v26);
        v28 = object_getClassName(v4);
        v29 = a1;
        v30 = v5;
        v31 = v6;
        v32 = sel_getName("dumpAppletLogging:info:");
        v118 = [v7 status];
        v114 = v32;
        v6 = v31;
        v5 = v30;
        a1 = v29;
        v33 = 45;
        if (v27)
        {
          v33 = 43;
        }

        v25(3, "%c[%{public}s %{public}s]:%i Failed to select: 0x%04x", v33, v28, v114, 1057, v118);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v34 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = object_getClass(v4);
        if (class_isMetaClass(v35))
        {
          v36 = 43;
        }

        else
        {
          v36 = 45;
        }

        v37 = object_getClassName(v4);
        v38 = sel_getName("dumpAppletLogging:info:");
        v39 = [v7 status];
        *buf = 67110146;
        *&buf[4] = v36;
        *v128 = 2082;
        *&v128[2] = v37;
        *&v128[10] = 2082;
        *&v128[12] = v38;
        *&v128[20] = 1024;
        *&v128[22] = 1057;
        *&v128[26] = 1024;
        *&v128[28] = v39;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to select: 0x%04x", buf, 0x28u);
      }

      v40 = [v7 status];
      v41 = [NSError alloc];
      v42 = [NSString stringWithUTF8String:"nfcd"];
      v126[0] = NSLocalizedDescriptionKey;
      if (v40 == 26277)
      {
        v43 = [NSString stringWithUTF8String:"Restricted Mode"];
        *buf = v43;
        v44 = [NSDictionary dictionaryWithObjects:buf forKeys:v126 count:1];
        v45 = v41;
        v46 = v42;
        v47 = 24;
      }

      else
      {
        v43 = [NSString stringWithUTF8String:"Command Error"];
        *buf = v43;
        v44 = [NSDictionary dictionaryWithObjects:buf forKeys:v126 count:1];
        v45 = v41;
        v46 = v42;
        v47 = 16;
      }

      v48 = [v45 initWithDomain:v46 code:v47 userInfo:v44];
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v14 = NFLogGetLogger();
      if (v14)
      {
        v15 = v14;
        v16 = object_getClass(v4);
        v17 = class_isMetaClass(v16);
        v109 = object_getClassName(v4);
        v113 = sel_getName("dumpAppletLogging:info:");
        v18 = 45;
        if (v17)
        {
          v18 = 43;
        }

        v15(3, "%c[%{public}s %{public}s]:%i Failed to select : %{public}@", v18, v109, v113, 1053, v8);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v19 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = object_getClass(v4);
        if (class_isMetaClass(v20))
        {
          v21 = 43;
        }

        else
        {
          v21 = 45;
        }

        v22 = object_getClassName(v4);
        v23 = sel_getName("dumpAppletLogging:info:");
        *buf = 67110146;
        *&buf[4] = v21;
        *v128 = 2082;
        *&v128[2] = v22;
        *&v128[10] = 2082;
        *&v128[12] = v23;
        *&v128[20] = 1024;
        *&v128[22] = 1053;
        *&v128[26] = 2114;
        *&v128[28] = v8;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to select : %{public}@", buf, 0x2Cu);
      }

      if (v8)
      {
        v4 = 0;
LABEL_77:

        goto LABEL_78;
      }

      v49 = [NSError alloc];
      v8 = [NSString stringWithUTF8String:"nfcd"];
      v126[0] = NSLocalizedDescriptionKey;
      v7 = [NSString stringWithUTF8String:"Command Error"];
      *buf = v7;
      v42 = [NSDictionary dictionaryWithObjects:buf forKeys:v126 count:1];
      v48 = [v49 initWithDomain:v8 code:16 userInfo:v42];
    }

    v4 = 0;
    goto LABEL_76;
  }

  v8 = 0;
LABEL_78:

  v97 = v4;
  if (v8)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v98 = NFLogGetLogger();
    if (v98)
    {
      v99 = v98;
      v100 = object_getClass(*(a1 + 32));
      v101 = class_isMetaClass(v100);
      v112 = object_getClassName(*(a1 + 32));
      v117 = sel_getName(*(a1 + 48));
      v102 = 45;
      if (v101)
      {
        v102 = 43;
      }

      v99(3, "%c[%{public}s %{public}s]:%i Failed to get data : %{public}@", v102, v112, v117, 116, v8);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v103 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
    {
      v104 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v104))
      {
        v105 = 43;
      }

      else
      {
        v105 = 45;
      }

      v106 = object_getClassName(*(a1 + 32));
      v107 = sel_getName(*(a1 + 48));
      *buf = 67110146;
      *&buf[4] = v105;
      *v128 = 2082;
      *&v128[2] = v106;
      *&v128[10] = 2082;
      *&v128[12] = v107;
      *&v128[20] = 1024;
      *&v128[22] = 116;
      *&v128[26] = 2114;
      *&v128[28] = v8;
      _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get data : %{public}@", buf, 0x2Cu);
    }
  }

  else
  {
    v108 = *(*(*(a1 + 40) + 8) + 40);
    v103 = [v5 NF_asHexString];
    [v108 setValue:v97 forKey:v103];
  }
}

void sub_10009AED0(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v25 = a2;
  v5 = a3;
  v24 = v5;
  if (v4)
  {
    v6 = v5;
    v27 = objc_opt_new();
    v7 = [NFTLV TLVsWithData:v6];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (!v8)
    {
      goto LABEL_38;
    }

    v9 = v8;
    v10 = *v29;
    while (1)
    {
      v11 = 0;
      do
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v28 + 1) + 8 * v11);
        v13 = [v12 tag];
        if (v13 <= 24351)
        {
          if (v13 <= 82)
          {
            if (v13 == 66)
            {
              v14 = [v12 value];
              v15 = v27;
              v16 = v14;
              v17 = @"CA Identifier";
              goto LABEL_33;
            }

            if (v13 == 69)
            {
              v14 = [v12 value];
              v15 = v27;
              v16 = v14;
              v17 = @"CA Security Domain Image Number";
              goto LABEL_33;
            }
          }

          else
          {
            switch(v13)
            {
              case 83:
                v14 = [v12 value];
                v15 = v27;
                v16 = v14;
                v17 = @"Discretionary Data";
                goto LABEL_33;
              case 147:
                v14 = [v12 value];
                v15 = v27;
                v16 = v14;
                v17 = @"Certificate Serial Number";
                goto LABEL_33;
              case 149:
                v14 = [v12 value];
                v15 = v27;
                v16 = v14;
                v17 = @"Key Usage";
                goto LABEL_33;
            }
          }

          goto LABEL_36;
        }

        if (v13 <= 24374)
        {
          switch(v13)
          {
            case 24352:
              v14 = [v12 value];
              v15 = v27;
              v16 = v14;
              v17 = @"Subject Identifier";
              goto LABEL_33;
            case 24356:
              v14 = [v12 value];
              v15 = v27;
              v16 = v14;
              v17 = @"Expiration Date";
              goto LABEL_33;
            case 24357:
              v14 = [v12 value];
              v15 = v27;
              v16 = v14;
              v17 = @"Effective Date";
LABEL_33:
              [(__CFString *)v15 setObject:v16 forKey:v17];
              goto LABEL_34;
          }

LABEL_36:
          v14 = [v12 value];
          v20 = [[NSString alloc] initWithFormat:@"0x%02x", objc_msgSend(v12, "tag")];
          [(__CFString *)v27 setObject:v14 forKey:v20];

          goto LABEL_34;
        }

        if (v13 == 24375)
        {
          v14 = [v12 value];
          v15 = v27;
          v16 = v14;
          v17 = @"Signature";
          goto LABEL_33;
        }

        if (v13 == 24376)
        {
          v14 = [v12 value];
          v15 = v27;
          v16 = v14;
          v17 = @"Public Key Modulus Remainder";
          goto LABEL_33;
        }

        if (v13 != 32585)
        {
          goto LABEL_36;
        }

        v18 = [v12 childWithTag:134];
        v14 = v18;
        if (v18)
        {
          v19 = [v18 value];
          [(__CFString *)v27 setObject:v19 forKey:@"Public Key"];
        }

LABEL_34:

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v21 = [v7 countByEnumeratingWithState:&v28 objects:v32 count:16];
      v9 = v21;
      if (!v21)
      {
LABEL_38:

        goto LABEL_39;
      }
    }
  }

  v27 = 0;
LABEL_39:

  v22 = [[NSString alloc] initWithFormat:@"CERTIFICATE-%@", v25];
  if (v27)
  {
    v23 = v27;
  }

  else
  {
    v23 = @"<ERROR>";
  }

  [*(a1 + 40) setObject:v23 forKey:v22];
}

NSString *sub_10009B324(void *a1, uint64_t a2)
{
  if (!a1)
  {
    goto LABEL_16;
  }

  if ((a2 - 1) < 3)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v4 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("clearLogs:");
      v8 = 45;
      if (isMetaClass)
      {
        v8 = 43;
      }

      v4(3, "%c[%{public}s %{public}s]:%i Unsupported domain", v8, ClassName, Name, 404);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v9 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = object_getClass(a1);
      if (class_isMetaClass(v10))
      {
        v11 = 43;
      }

      else
      {
        v11 = 45;
      }

      *buf = 67109890;
      *&buf[4] = v11;
      v137 = 2082;
      v138 = object_getClassName(a1);
      v139 = 2082;
      v140 = sel_getName("clearLogs:");
      v141 = 1024;
      v142 = 404;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unsupported domain", buf, 0x22u);
    }

    v12 = [NSError alloc];
    v13 = [NSString stringWithUTF8String:"nfcd"];
    v132 = NSLocalizedDescriptionKey;
    v14 = [NSString stringWithUTF8String:"Invalid Parameter"];
    v133 = v14;
    v15 = &v133;
    v16 = &v132;
LABEL_53:
    v64 = [NSDictionary dictionaryWithObjects:v15 forKeys:v16 count:1];
    v26 = [v12 initWithDomain:v13 code:10 userInfo:v64];

    goto LABEL_54;
  }

  if (a2 != 5)
  {
    if (a2 != 4)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v56 = NFLogGetLogger();
      if (v56)
      {
        v57 = v56;
        v58 = object_getClass(a1);
        v59 = class_isMetaClass(v58);
        v113 = object_getClassName(a1);
        v118 = sel_getName("clearLogs:");
        v60 = 45;
        if (v59)
        {
          v60 = 43;
        }

        v57(3, "%c[%{public}s %{public}s]:%i Unknown app id: %d", v60, v113, v118, 408, a2);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v61 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        v62 = object_getClass(a1);
        if (class_isMetaClass(v62))
        {
          v63 = 43;
        }

        else
        {
          v63 = 45;
        }

        *buf = 67110146;
        *&buf[4] = v63;
        v137 = 2082;
        v138 = object_getClassName(a1);
        v139 = 2082;
        v140 = sel_getName("clearLogs:");
        v141 = 1024;
        v142 = 408;
        v143 = 1024;
        LODWORD(v144) = a2;
        _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unknown app id: %d", buf, 0x28u);
      }

      v12 = [NSError alloc];
      v13 = [NSString stringWithUTF8String:"nfcd"];
      v130 = NSLocalizedDescriptionKey;
      v14 = [NSString stringWithUTF8String:"Invalid Parameter"];
      v131 = v14;
      v15 = &v131;
      v16 = &v130;
      goto LABEL_53;
    }

    v125 = [NSArray alloc];
    v124 = [[NSData alloc] initWithBytes:&unk_100296D70 length:10];
    v17 = [[NSData alloc] initWithBytes:&unk_100296D7A length:10];
    v18 = [[NSData alloc] initWithBytes:&unk_100296D84 length:10];
    v19 = [[NSData alloc] initWithBytes:&unk_100296D8E length:10];
    v20 = [[NSData alloc] initWithBytes:&unk_100296D98 length:10];
    v21 = [[NSData alloc] initWithBytes:&unk_100296DA2 length:10];
    v123 = [[NSData alloc] initWithBytes:&unk_100296DAC length:10];
    v22 = [[NSData alloc] initWithBytes:&unk_100296DB6 length:10];
    v23 = [[NSData alloc] initWithBytes:&unk_100296DC0 length:10];
    v24 = [[NSData alloc] initWithBytes:&unk_100296DCA length:10];
    v25 = [[NSData alloc] initWithBytes:&unk_100296DD4 length:10];
    v126 = [v125 initWithObjects:{v124, v17, v18, v19, v20, v21, v123, v22, v23, v24, v25, 0}];

    v128[0] = _NSConcreteStackBlock;
    v128[1] = 3221225472;
    v128[2] = sub_10009C274;
    v128[3] = &unk_100317BD8;
    v128[4] = a1;
    [v126 enumerateObjectsUsingBlock:v128];

LABEL_16:
    v26 = 0;
    goto LABEL_54;
  }

  v27 = [[NSData alloc] initWithBytes:"FACTORYTESTAPP" length:14];
  v129 = 0;
  v28 = sub_100158A6C(a1, v27, &v129);
  v29 = v129;

  if (v28)
  {
    if ([v28 status] != 36864)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v77 = NFLogGetLogger();
      if (v77)
      {
        v78 = v77;
        v79 = object_getClass(a1);
        v80 = class_isMetaClass(v79);
        v81 = object_getClassName(a1);
        v82 = sel_getName("clearFTALogging");
        v122 = [v28 status];
        v83 = 45;
        if (v80)
        {
          v83 = 43;
        }

        v78(3, "%c[%{public}s %{public}s]:%i Failed to select: 0x%04x", v83, v81, v82, 1165, v122);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v84 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
      {
        v85 = object_getClass(a1);
        if (class_isMetaClass(v85))
        {
          v86 = 43;
        }

        else
        {
          v86 = 45;
        }

        v87 = object_getClassName(a1);
        v88 = sel_getName("clearFTALogging");
        v89 = [v28 status];
        *buf = 67110146;
        *&buf[4] = v86;
        v137 = 2082;
        v138 = v87;
        v139 = 2082;
        v140 = v88;
        v141 = 1024;
        v142 = 1165;
        v143 = 1024;
        LODWORD(v144) = v89;
        _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to select: 0x%04x", buf, 0x28u);
      }

      v90 = [v28 status];
      v91 = [NSError alloc];
      v92 = [NSString stringWithUTF8String:"nfcd"];
      v135 = NSLocalizedDescriptionKey;
      if (v90 == 26277)
      {
        v93 = [NSString stringWithUTF8String:"Restricted Mode"];
        *buf = v93;
        v94 = [NSDictionary dictionaryWithObjects:buf forKeys:&v135 count:1];
        v95 = v91;
        v96 = v92;
        v97 = 24;
      }

      else
      {
        v93 = [NSString stringWithUTF8String:"Command Error"];
        *buf = v93;
        v94 = [NSDictionary dictionaryWithObjects:buf forKeys:&v135 count:1];
        v95 = v91;
        v96 = v92;
        v97 = 16;
      }

      v26 = [v95 initWithDomain:v96 code:v97 userInfo:v94];

      v30 = v28;
      v31 = v29;
      goto LABEL_96;
    }

    v135 = v29;
    v30 = sub_10015837C(a1, 128, 253, 2, 0, 0, 0, 0, &v135);
    v31 = v135;

    if (v30)
    {
      if ([v30 status] == 27013)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v32 = NFLogGetLogger();
        if (v32)
        {
          v33 = v32;
          v34 = object_getClass(a1);
          v35 = class_isMetaClass(v34);
          v36 = object_getClassName(a1);
          v117 = sel_getName("clearFTALogging");
          v37 = 45;
          if (v35)
          {
            v37 = 43;
          }

          v33(6, "%c[%{public}s %{public}s]:%i No logging data", v37, v36, v117, 1179);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v38 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          v39 = object_getClass(a1);
          if (class_isMetaClass(v39))
          {
            v40 = 43;
          }

          else
          {
            v40 = 45;
          }

          v41 = object_getClassName(a1);
          v42 = sel_getName("clearFTALogging");
          *buf = 67109890;
          *&buf[4] = v40;
          v137 = 2082;
          v138 = v41;
          v139 = 2082;
          v140 = v42;
          v141 = 1024;
          v142 = 1179;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i No logging data", buf, 0x22u);
        }
      }

      if ([v30 status] != 36864)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v43 = NFLogGetLogger();
        if (v43)
        {
          v44 = v43;
          v45 = object_getClass(a1);
          v46 = class_isMetaClass(v45);
          v47 = object_getClassName(a1);
          v48 = sel_getName("clearFTALogging");
          v121 = [v30 status];
          v49 = 45;
          if (v46)
          {
            v49 = 43;
          }

          v44(3, "%c[%{public}s %{public}s]:%i Failed to send command: 0x%04x", v49, v47, v48, 1182, v121);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v50 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          v51 = object_getClass(a1);
          if (class_isMetaClass(v51))
          {
            v52 = 43;
          }

          else
          {
            v52 = 45;
          }

          v53 = object_getClassName(a1);
          v54 = sel_getName("clearFTALogging");
          v55 = [v30 status];
          *buf = 67110146;
          *&buf[4] = v52;
          v137 = 2082;
          v138 = v53;
          v139 = 2082;
          v140 = v54;
          v141 = 1024;
          v142 = 1182;
          v143 = 1024;
          LODWORD(v144) = v55;
          _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to send command: 0x%04x", buf, 0x28u);
        }
      }

      v26 = 0;
      goto LABEL_96;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v102 = NFLogGetLogger();
    if (v102)
    {
      v103 = v102;
      v104 = object_getClass(a1);
      v105 = class_isMetaClass(v104);
      v115 = object_getClassName(a1);
      v120 = sel_getName("clearFTALogging");
      v106 = 45;
      if (v105)
      {
        v106 = 43;
      }

      v103(3, "%c[%{public}s %{public}s]:%i Failed to send command : %{public}@", v106, v115, v120, 1175, v31);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v107 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
    {
      v108 = object_getClass(a1);
      if (class_isMetaClass(v108))
      {
        v109 = 43;
      }

      else
      {
        v109 = 45;
      }

      v110 = object_getClassName(a1);
      v111 = sel_getName("clearFTALogging");
      *buf = 67110146;
      *&buf[4] = v109;
      v137 = 2082;
      v138 = v110;
      v139 = 2082;
      v140 = v111;
      v141 = 1024;
      v142 = 1175;
      v143 = 2114;
      v144 = v31;
      _os_log_impl(&_mh_execute_header, v107, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to send command : %{public}@", buf, 0x2Cu);
    }

    if (v31)
    {
      v76 = v31;
      goto LABEL_93;
    }

    v98 = [NSError alloc];
    v99 = [NSString stringWithUTF8String:"nfcd"];
    v134 = NSLocalizedDescriptionKey;
    v100 = [NSString stringWithUTF8String:"Command Error"];
    *buf = v100;
    v101 = &v134;
LABEL_95:
    v112 = [NSDictionary dictionaryWithObjects:buf forKeys:v101 count:1];
    v26 = [v98 initWithDomain:v99 code:16 userInfo:v112];

    v30 = 0;
    v31 = 0;
    goto LABEL_96;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v66 = NFLogGetLogger();
  if (v66)
  {
    v67 = v66;
    v68 = object_getClass(a1);
    v69 = class_isMetaClass(v68);
    v114 = object_getClassName(a1);
    v119 = sel_getName("clearFTALogging");
    v70 = 45;
    if (v69)
    {
      v70 = 43;
    }

    v67(3, "%c[%{public}s %{public}s]:%i Failed to select : %{public}@", v70, v114, v119, 1161, v29);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v71 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
  {
    v72 = object_getClass(a1);
    if (class_isMetaClass(v72))
    {
      v73 = 43;
    }

    else
    {
      v73 = 45;
    }

    v74 = object_getClassName(a1);
    v75 = sel_getName("clearFTALogging");
    *buf = 67110146;
    *&buf[4] = v73;
    v137 = 2082;
    v138 = v74;
    v139 = 2082;
    v140 = v75;
    v141 = 1024;
    v142 = 1161;
    v143 = 2114;
    v144 = v29;
    _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to select : %{public}@", buf, 0x2Cu);
  }

  if (!v29)
  {
    v98 = [NSError alloc];
    v99 = [NSString stringWithUTF8String:"nfcd"];
    v135 = NSLocalizedDescriptionKey;
    v100 = [NSString stringWithUTF8String:"Command Error"];
    *buf = v100;
    v101 = &v135;
    goto LABEL_95;
  }

  v76 = v29;
LABEL_93:
  v31 = v76;
  v30 = 0;
  v26 = v76;
LABEL_96:

LABEL_54:

  return v26;
}

void sub_10009C274(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    v74 = 0;
    goto LABEL_90;
  }

  v111 = 0;
  v3 = sub_100158A6C(v2, a2, &v111);
  v4 = v111;
  if (v3)
  {
    if ([v3 status] != 36864)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v54 = Logger;
        Class = object_getClass(v2);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v2);
        Name = sel_getName("clearFixedAndCyclicLogging:");
        v109 = [v3 status];
        v59 = 45;
        if (isMetaClass)
        {
          v59 = 43;
        }

        v54(3, "%c[%{public}s %{public}s]:%i Failed to select: 0x%04x", v59, ClassName, Name, 1200, v109);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v60 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        v61 = object_getClass(v2);
        if (class_isMetaClass(v61))
        {
          v62 = 43;
        }

        else
        {
          v62 = 45;
        }

        v63 = object_getClassName(v2);
        v64 = sel_getName("clearFixedAndCyclicLogging:");
        v65 = [v3 status];
        *buf = 67110146;
        *&buf[4] = v62;
        v115 = 2082;
        v116 = v63;
        v117 = 2082;
        v118 = v64;
        v119 = 1024;
        v120 = 1200;
        v121 = 1024;
        LODWORD(v122) = v65;
        _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to select: 0x%04x", buf, 0x28u);
      }

      v66 = [v3 status];
      v67 = [NSError alloc];
      v68 = [NSString stringWithUTF8String:"nfcd"];
      v113 = NSLocalizedDescriptionKey;
      if (v66 == 26277)
      {
        v69 = [NSString stringWithUTF8String:"Restricted Mode"];
        *buf = v69;
        v70 = [NSDictionary dictionaryWithObjects:buf forKeys:&v113 count:1];
        v71 = v67;
        v72 = v68;
        v73 = 24;
      }

      else
      {
        v69 = [NSString stringWithUTF8String:"Command Error"];
        *buf = v69;
        v70 = [NSDictionary dictionaryWithObjects:buf forKeys:&v113 count:1];
        v71 = v67;
        v72 = v68;
        v73 = 16;
      }

      v74 = [v71 initWithDomain:v72 code:v73 userInfo:v70];

      goto LABEL_89;
    }

    v113 = v4;
    v5 = sub_100157AB0(v2, 128, 1, 1, 0, 0, 0, 0, 1u, &v113);
    v6 = v113;

    if (v5)
    {
      if ([v5 status] != 36864)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v7 = NFLogGetLogger();
        if (v7)
        {
          v8 = v7;
          v9 = object_getClass(v2);
          v10 = class_isMetaClass(v9);
          v11 = object_getClassName(v2);
          v12 = sel_getName("clearFixedAndCyclicLogging:");
          v108 = [v5 status];
          v13 = 45;
          if (v10)
          {
            v13 = 43;
          }

          v8(3, "%c[%{public}s %{public}s]:%i Failed to clear fixed buffer : 0x%04x", v13, v11, v12, 1222, v108);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v14 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v15 = object_getClass(v2);
          if (class_isMetaClass(v15))
          {
            v16 = 43;
          }

          else
          {
            v16 = 45;
          }

          v17 = object_getClassName(v2);
          v18 = sel_getName("clearFixedAndCyclicLogging:");
          v19 = [v5 status];
          *buf = 67110146;
          *&buf[4] = v16;
          v115 = 2082;
          v116 = v17;
          v117 = 2082;
          v118 = v18;
          v119 = 1024;
          v120 = 1222;
          v121 = 1024;
          LODWORD(v122) = v19;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to clear fixed buffer : 0x%04x", buf, 0x28u);
        }
      }

      v112 = v6;
      v3 = sub_10015837C(v2, 128, 4, 0, 0, 0, 0, 0, &v112);
      v4 = v112;

      if (!v3)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v20 = NFLogGetLogger();
        if (v20)
        {
          v21 = v20;
          v22 = object_getClass(v2);
          v23 = class_isMetaClass(v22);
          v101 = object_getClassName(v2);
          v104 = sel_getName("clearFixedAndCyclicLogging:");
          v24 = 45;
          if (v23)
          {
            v24 = 43;
          }

          v21(3, "%c[%{public}s %{public}s]:%i Failed to clear : %{public}@", v24, v101, v104, 1237, v4);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v25 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v26 = object_getClass(v2);
          if (class_isMetaClass(v26))
          {
            v27 = 43;
          }

          else
          {
            v27 = 45;
          }

          v28 = object_getClassName(v2);
          v29 = sel_getName("clearFixedAndCyclicLogging:");
          *buf = 67110146;
          *&buf[4] = v27;
          v115 = 2082;
          v116 = v28;
          v117 = 2082;
          v118 = v29;
          v119 = 1024;
          v120 = 1237;
          v121 = 2114;
          v122 = v4;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to clear : %{public}@", buf, 0x2Cu);
        }
      }

      if ([v3 status] != 36864)
      {
        v30 = [v3 status];
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v31 = NFLogGetLogger();
        v32 = v31;
        if (v30 == 27267)
        {
          if (v31)
          {
            v33 = object_getClass(v2);
            v34 = class_isMetaClass(v33);
            v35 = object_getClassName(v2);
            v105 = sel_getName("clearFixedAndCyclicLogging:");
            v36 = 45;
            if (v34)
            {
              v36 = 43;
            }

            v32(6, "%c[%{public}s %{public}s]:%i No cyclic buffer", v36, v35, v105, 1241);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v37 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            v38 = object_getClass(v2);
            if (class_isMetaClass(v38))
            {
              v39 = 43;
            }

            else
            {
              v39 = 45;
            }

            v40 = object_getClassName(v2);
            v41 = sel_getName("clearFixedAndCyclicLogging:");
            *buf = 67109890;
            *&buf[4] = v39;
            v115 = 2082;
            v116 = v40;
            v117 = 2082;
            v118 = v41;
            v119 = 1024;
            v120 = 1241;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i No cyclic buffer", buf, 0x22u);
          }

          v4 = 0;
        }

        else
        {
          if (v31)
          {
            v89 = object_getClass(v2);
            v90 = class_isMetaClass(v89);
            v91 = object_getClassName(v2);
            v92 = sel_getName("clearFixedAndCyclicLogging:");
            v110 = [v3 status];
            v93 = 45;
            if (v90)
            {
              v93 = 43;
            }

            v32(3, "%c[%{public}s %{public}s]:%i Failed to clear cyclic buffer : 0x%04x", v93, v91, v92, 1244, v110);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v94 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
          {
            v95 = object_getClass(v2);
            if (class_isMetaClass(v95))
            {
              v96 = 43;
            }

            else
            {
              v96 = 45;
            }

            v97 = object_getClassName(v2);
            v98 = sel_getName("clearFixedAndCyclicLogging:");
            v99 = [v3 status];
            *buf = 67110146;
            *&buf[4] = v96;
            v115 = 2082;
            v116 = v97;
            v117 = 2082;
            v118 = v98;
            v119 = 1024;
            v120 = 1244;
            v121 = 1024;
            LODWORD(v122) = v99;
            _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to clear cyclic buffer : 0x%04x", buf, 0x28u);
          }
        }
      }

      v74 = 0;
      goto LABEL_89;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v79 = NFLogGetLogger();
    if (v79)
    {
      v80 = v79;
      v81 = object_getClass(v2);
      v82 = class_isMetaClass(v81);
      v103 = object_getClassName(v2);
      v107 = sel_getName("clearFixedAndCyclicLogging:");
      v83 = 45;
      if (v82)
      {
        v83 = 43;
      }

      v80(3, "%c[%{public}s %{public}s]:%i Failed to query : %{public}@", v83, v103, v107, 1218, v6);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v84 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
    {
      v85 = object_getClass(v2);
      if (class_isMetaClass(v85))
      {
        v86 = 43;
      }

      else
      {
        v86 = 45;
      }

      v87 = object_getClassName(v2);
      v88 = sel_getName("clearFixedAndCyclicLogging:");
      *buf = 67110146;
      *&buf[4] = v86;
      v115 = 2082;
      v116 = v87;
      v117 = 2082;
      v118 = v88;
      v119 = 1024;
      v120 = 1218;
      v121 = 2114;
      v122 = v6;
      _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to query : %{public}@", buf, 0x2Cu);
    }

    if (v6)
    {
      v52 = v6;
      goto LABEL_75;
    }

    v75 = [NSError alloc];
    v76 = [NSString stringWithUTF8String:"nfcd"];
    v112 = NSLocalizedDescriptionKey;
    v77 = [NSString stringWithUTF8String:"Command Error"];
    *buf = v77;
    v78 = &v112;
LABEL_88:
    v100 = [NSDictionary dictionaryWithObjects:buf forKeys:v78 count:1];
    v74 = [v75 initWithDomain:v76 code:16 userInfo:v100];

    v3 = 0;
    v4 = 0;
    goto LABEL_89;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v42 = NFLogGetLogger();
  if (v42)
  {
    v43 = v42;
    v44 = object_getClass(v2);
    v45 = class_isMetaClass(v44);
    v102 = object_getClassName(v2);
    v106 = sel_getName("clearFixedAndCyclicLogging:");
    v46 = 45;
    if (v45)
    {
      v46 = 43;
    }

    v43(3, "%c[%{public}s %{public}s]:%i Failed to select : %{public}@", v46, v102, v106, 1196, v4);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v47 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
  {
    v48 = object_getClass(v2);
    if (class_isMetaClass(v48))
    {
      v49 = 43;
    }

    else
    {
      v49 = 45;
    }

    v50 = object_getClassName(v2);
    v51 = sel_getName("clearFixedAndCyclicLogging:");
    *buf = 67110146;
    *&buf[4] = v49;
    v115 = 2082;
    v116 = v50;
    v117 = 2082;
    v118 = v51;
    v119 = 1024;
    v120 = 1196;
    v121 = 2114;
    v122 = v4;
    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to select : %{public}@", buf, 0x2Cu);
  }

  if (!v4)
  {
    v75 = [NSError alloc];
    v76 = [NSString stringWithUTF8String:"nfcd"];
    v113 = NSLocalizedDescriptionKey;
    v77 = [NSString stringWithUTF8String:"Command Error"];
    *buf = v77;
    v78 = &v113;
    goto LABEL_88;
  }

  v52 = v4;
LABEL_75:
  v4 = v52;
  v3 = 0;
  v74 = v52;
LABEL_89:

LABEL_90:
}

id sub_10009CE9C(void *a1, void *a2)
{
  if (a1)
  {
    v3 = [a1 handle];
    v4 = [v3 driver];
    v5 = sub_100017A08(v4, [v3 identifier], a2);

    if (v5)
    {
      v6 = [[NSData alloc] initWithBytes:*v5 length:v5[1]];
      NFDataRelease();
      if (v6)
      {
LABEL_6:

        goto LABEL_7;
      }

      v7 = [NSError alloc];
      v8 = [NSString stringWithUTF8String:"nfcd"];
      v14[0] = NSLocalizedDescriptionKey;
      v9 = [NSString stringWithUTF8String:"Unexpected Result"];
      v15[0] = v9;
      v15[1] = &off_100330B70;
      v14[1] = @"Line";
      v14[2] = @"Method";
      v10 = [[NSString alloc] initWithFormat:@"%s", sel_getName("getOSUpdateLog:")];
      v15[2] = v10;
      v14[3] = NSDebugDescriptionErrorKey;
      v11 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("getOSUpdateLog:"), 686];
      v15[3] = v11;
      v12 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:4];
      *a2 = [v7 initWithDomain:v8 code:13 userInfo:v12];
    }

    v6 = 0;
    goto LABEL_6;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

id sub_10009D0D0(void *a1, void *a2)
{
  if (a1)
  {
    v3 = [a1 handle];
    v4 = [v3 driver];
    v5 = sub_100017D24(v4, [v3 identifier], 0, a2);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_10009D15C(void *a1, void *a2)
{
  if (a1)
  {
    v3 = [a1 handle];
    v4 = [v3 driver];
    v5 = sub_100017D24(v4, [v3 identifier], 1, a2);

    if (v5 && [v5 count])
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

NSObject *sub_10009D20C(void *a1)
{
  if (a1)
  {
    v2 = [a1 handle];
    v3 = [v2 info];
    if (![v3 seType])
    {
LABEL_7:

LABEL_8:
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v9 = Logger;
        Class = object_getClass(a1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(a1);
        Name = sel_getName("resetACLogs");
        v13 = 45;
        if (isMetaClass)
        {
          v13 = 43;
        }

        v9(6, "%c[%{public}s %{public}s]:%i No reseting: slamAPDUs is nil", v13, ClassName, Name, 738);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v14 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = object_getClass(a1);
        if (class_isMetaClass(v15))
        {
          v16 = 43;
        }

        else
        {
          v16 = 45;
        }

        *buf = 67109890;
        v109 = v16;
        v110 = 2082;
        v111 = object_getClassName(a1);
        v112 = 2082;
        v113 = sel_getName("resetACLogs");
        v114 = 1024;
        v115 = 738;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i No reseting: slamAPDUs is nil", buf, 0x22u);
      }

      v17 = 0;
      goto LABEL_18;
    }

    v4 = [a1 handle];
    v5 = [v4 info];
    if ([v5 seType] == 4)
    {
LABEL_6:

      goto LABEL_7;
    }

    v6 = [a1 handle];
    v7 = [v6 info];
    if ([v7 seType] == 5)
    {

      goto LABEL_6;
    }

    v20 = [a1 handle];
    v21 = [v20 info];
    v100 = [v21 seType];

    if (v100 == 7)
    {
      goto LABEL_8;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v22 = NFLogGetLogger();
    if (v22)
    {
      v23 = v22;
      v24 = object_getClass(a1);
      v25 = class_isMetaClass(v24);
      v26 = object_getClassName(a1);
      v96 = sel_getName("resetACLogs");
      v27 = 45;
      if (v25)
      {
        v27 = 43;
      }

      v23(6, "%c[%{public}s %{public}s]:%i Acknowledging logs..", v27, v26, v96, 742);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v28 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = object_getClass(a1);
      if (class_isMetaClass(v29))
      {
        v30 = 43;
      }

      else
      {
        v30 = 45;
      }

      *buf = 67109890;
      v109 = v30;
      v110 = 2082;
      v111 = object_getClassName(a1);
      v112 = 2082;
      v113 = sel_getName("resetACLogs");
      v114 = 1024;
      v115 = 742;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Acknowledging logs..", buf, 0x22u);
    }

    v31 = [[NSData alloc] initWithBytes:&unk_100296DDE length:8];
    v107 = 0;
    v32 = sub_100158A6C(a1, v31, &v107);
    v18 = v107;

    if (v32)
    {
      if ([v32 status] == 36864)
      {
        v105 = 0u;
        v106 = 0u;
        v103 = 0u;
        v104 = 0u;
        v33 = [&off_100338FB8 countByEnumeratingWithState:&v103 objects:v120 count:16];
        if (v33)
        {
          v34 = v33;
          v35 = 0;
          v101 = *v104;
          do
          {
            v36 = 0;
            v37 = v35;
            v38 = v32;
            v39 = v18;
            do
            {
              if (*v104 != v101)
              {
                objc_enumerationMutation(&off_100338FB8);
              }

              v35 = [NSData NF_dataWithHexString:*(*(&v103 + 1) + 8 * v36)];

              v102 = v39;
              v32 = sub_10015837C(a1, 128, 202, 0, 254, v35, 0, 0, &v102);
              v18 = v102;

              if (!v32 || [v32 status] != 36864)
              {
                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v40 = NFLogGetLogger();
                if (v40)
                {
                  v41 = v40;
                  v42 = v18;
                  v43 = object_getClass(a1);
                  if (class_isMetaClass(v43))
                  {
                    v44 = 43;
                  }

                  else
                  {
                    v44 = 45;
                  }

                  v45 = object_getClassName(a1);
                  v46 = sel_getName("resetACLogs");
                  if (v32)
                  {
                    v47 = [v32 status];
                  }

                  else
                  {
                    v47 = 0;
                  }

                  v97 = v46;
                  v18 = v42;
                  v41(3, "%c[%{public}s %{public}s]:%i Failed to reset : %{public}@ (status = 0x%02X)", v44, v45, v97, 764, v42, v47);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v48 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
                {
                  v49 = v18;
                  v50 = object_getClass(a1);
                  if (class_isMetaClass(v50))
                  {
                    v51 = 43;
                  }

                  else
                  {
                    v51 = 45;
                  }

                  v52 = object_getClassName(a1);
                  v53 = sel_getName("resetACLogs");
                  if (v32)
                  {
                    v54 = [v32 status];
                  }

                  else
                  {
                    v54 = 0;
                  }

                  *buf = 67110402;
                  v109 = v51;
                  v110 = 2082;
                  v111 = v52;
                  v112 = 2082;
                  v113 = v53;
                  v114 = 1024;
                  v115 = 764;
                  v116 = 2114;
                  v18 = v49;
                  v117 = v49;
                  v118 = 1024;
                  v119 = v54;
                  _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to reset : %{public}@ (status = 0x%02X)", buf, 0x32u);
                }
              }

              v36 = v36 + 1;
              v37 = v35;
              v38 = v32;
              v39 = v18;
            }

            while (v34 != v36);
            v34 = [&off_100338FB8 countByEnumeratingWithState:&v103 objects:v120 count:16];
          }

          while (v34);
        }

        v14 = v18;

        v17 = v14;
      }

      else
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v70 = NFLogGetLogger();
        v71 = v18;
        if (v70)
        {
          v72 = v70;
          v73 = object_getClass(a1);
          v74 = class_isMetaClass(v73);
          v75 = object_getClassName(a1);
          v76 = sel_getName("resetACLogs");
          v99 = [v32 status];
          v77 = 45;
          if (v74)
          {
            v77 = 43;
          }

          v72(3, "%c[%{public}s %{public}s]:%i Failed to select: 0x%04x", v77, v75, v76, 749, v99);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v78 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
        {
          v79 = object_getClass(a1);
          if (class_isMetaClass(v79))
          {
            v80 = 43;
          }

          else
          {
            v80 = 45;
          }

          v81 = object_getClassName(a1);
          v82 = sel_getName("resetACLogs");
          v83 = [v32 status];
          *buf = 67110146;
          v109 = v80;
          v110 = 2082;
          v111 = v81;
          v112 = 2082;
          v113 = v82;
          v114 = 1024;
          v115 = 749;
          v116 = 1024;
          LODWORD(v117) = v83;
          _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to select: 0x%04x", buf, 0x28u);
        }

        v84 = [v32 status];
        v85 = [NSError alloc];
        v86 = [NSString stringWithUTF8String:"nfcd"];
        if (v84 == 26277)
        {
          v123[0] = NSLocalizedDescriptionKey;
          v87 = [NSString stringWithUTF8String:"Restricted Mode"];
          v124[0] = v87;
          v124[1] = &off_100330BA0;
          v123[1] = @"Line";
          v123[2] = @"Method";
          v88 = [[NSString alloc] initWithFormat:@"%s", sel_getName("resetACLogs")];
          v124[2] = v88;
          v123[3] = NSDebugDescriptionErrorKey;
          v89 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("resetACLogs"), 750];
          v124[3] = v89;
          v90 = [NSDictionary dictionaryWithObjects:v124 forKeys:v123 count:4];
          v91 = v85;
          v92 = v86;
          v93 = 24;
        }

        else
        {
          v121[0] = NSLocalizedDescriptionKey;
          v87 = [NSString stringWithUTF8String:"Command Error"];
          v122[0] = v87;
          v122[1] = &off_100330BA0;
          v121[1] = @"Line";
          v121[2] = @"Method";
          v88 = [[NSString alloc] initWithFormat:@"%s", sel_getName("resetACLogs")];
          v122[2] = v88;
          v121[3] = NSDebugDescriptionErrorKey;
          v89 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("resetACLogs"), 750];
          v122[3] = v89;
          v90 = [NSDictionary dictionaryWithObjects:v122 forKeys:v121 count:4];
          v91 = v85;
          v92 = v86;
          v93 = 16;
        }

        v17 = [v91 initWithDomain:v92 code:v93 userInfo:v90];

        v14 = v71;
      }

      goto LABEL_18;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v55 = NFLogGetLogger();
    if (v55)
    {
      v56 = v55;
      v57 = object_getClass(a1);
      v58 = class_isMetaClass(v57);
      v94 = object_getClassName(a1);
      v98 = sel_getName("resetACLogs");
      v59 = 45;
      if (v58)
      {
        v59 = 43;
      }

      v56(3, "%c[%{public}s %{public}s]:%i Failed to select : %{public}@", v59, v94, v98, 746, v18);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v60 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      v61 = object_getClass(a1);
      if (class_isMetaClass(v61))
      {
        v62 = 43;
      }

      else
      {
        v62 = 45;
      }

      v63 = object_getClassName(a1);
      v64 = sel_getName("resetACLogs");
      *buf = 67110146;
      v109 = v62;
      v110 = 2082;
      v111 = v63;
      v112 = 2082;
      v113 = v64;
      v114 = 1024;
      v115 = 746;
      v116 = 2114;
      v117 = v18;
      _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to select : %{public}@", buf, 0x2Cu);
    }

    if (!v18)
    {
      v65 = [NSError alloc];
      v14 = [NSString stringWithUTF8String:"nfcd"];
      v125[0] = NSLocalizedDescriptionKey;
      v66 = [NSString stringWithUTF8String:"Command Error"];
      v126[0] = v66;
      v126[1] = &off_100330B88;
      v125[1] = @"Line";
      v125[2] = @"Method";
      v67 = [[NSString alloc] initWithFormat:@"%s", sel_getName("resetACLogs")];
      v126[2] = v67;
      v125[3] = NSDebugDescriptionErrorKey;
      v68 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("resetACLogs"), 747];
      v126[3] = v68;
      v69 = [NSDictionary dictionaryWithObjects:v126 forKeys:v125 count:4];
      v17 = [v65 initWithDomain:v14 code:16 userInfo:v69];

LABEL_18:
      v18 = v17;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

id sub_10009DEA8(void *a1)
{
  if (a1)
  {
    v1 = [a1 handle];
    v2 = [v1 driver];
    [v1 identifier];
    v3 = sub_1000181CC(v2);

    if (v3)
    {
      v4 = 0;
    }

    else
    {
      v5 = [NSError alloc];
      v6 = [NSString stringWithUTF8String:"nfcd"];
      v12[0] = NSLocalizedDescriptionKey;
      v7 = [NSString stringWithUTF8String:"Stack Error"];
      v13[0] = v7;
      v13[1] = &off_100330BB8;
      v12[1] = @"Line";
      v12[2] = @"Method";
      v8 = [[NSString alloc] initWithFormat:@"%s", sel_getName("getPresenceOfAttackLog:")];
      v13[2] = v8;
      v12[3] = NSDebugDescriptionErrorKey;
      v9 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("getPresenceOfAttackLog:"), 780];
      v13[3] = v9;
      v10 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:4];
      v4 = [v5 initWithDomain:v6 code:15 userInfo:v10];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_10009E0B8(id *a1, _DWORD *a2, int a3)
{
  if (a1)
  {
    v6 = objc_opt_new();
    *a2 = 0;
    v7 = [[NSData alloc] initWithBytes:&unk_100296DDE length:8];
    v293 = 0;
    v8 = sub_100158A6C(a1, v7, &v293);
    v9 = v293;

    if (v8)
    {
      if ([v8 status] == 36864)
      {
        v280 = a3;
        v284 = v8;
        v10 = [NSData NF_dataWithHexString:@"DF2600FEB000"];
        while (1)
        {
          v292 = v9;
          v11 = sub_10015837C(a1, 128, 202, 0, 254, v10, 0, 0, &v292);
          v12 = v292;

          if (v12)
          {

            goto LABEL_38;
          }

          if (!v11)
          {
            break;
          }

          if ([v11 status] == 36864)
          {
            goto LABEL_58;
          }

          if ([v11 status] != 25360 && objc_msgSend(v11, "status") != 37008)
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            Logger = NFLogGetLogger();
            if (Logger)
            {
              v71 = Logger;
              Class = object_getClass(a1);
              isMetaClass = class_isMetaClass(Class);
              ClassName = object_getClassName(a1);
              Name = sel_getName("getAppletMigrationErrorCount:reset:");
              v265 = [v11 status];
              v75 = 45;
              if (isMetaClass)
              {
                v75 = 43;
              }

              v71(3, "%c[%{public}s %{public}s]:%i Failed to query, status word is 0x%x", v75, ClassName, Name, 832, v265);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v76 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
            {
              v77 = object_getClass(a1);
              if (class_isMetaClass(v77))
              {
                v78 = 43;
              }

              else
              {
                v78 = 45;
              }

              v79 = object_getClassName(a1);
              v80 = sel_getName("getAppletMigrationErrorCount:reset:");
              v81 = [v11 status];
              *buf = 67110146;
              v295 = v78;
              v296 = 2082;
              v297 = v79;
              v298 = 2082;
              v299 = v80;
              v300 = 1024;
              v301 = 832;
              v302 = 1024;
              *v303 = v81;
              _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to query, status word is 0x%x", buf, 0x28u);
            }

LABEL_58:
            v82 = [v11 data];
            [v6 appendData:v82];

LABEL_60:
            v8 = v284;
            v83 = objc_opt_new();
            [NFTLV TLVsWithData:v6];
            v288 = 0u;
            v289 = 0u;
            v290 = 0u;
            v84 = v291 = 0u;
            v85 = [v84 countByEnumeratingWithState:&v288 objects:v320 count:16];
            if (v85)
            {
              v86 = v85;
              v87 = *v289;
              while (2)
              {
                for (i = 0; i != v86; i = i + 1)
                {
                  if (*v289 != v87)
                  {
                    objc_enumerationMutation(v84);
                  }

                  v89 = *(*(&v288 + 1) + 8 * i);
                  if ([v89 tag] == 254)
                  {
                    v90 = [v89 childWithTag:57126];
                    v91 = v90;
                    if (v90)
                    {
                      v92 = [v90 value];

                      v83 = v92;
                    }

                    v8 = v284;

                    goto LABEL_72;
                  }
                }

                v86 = [v84 countByEnumeratingWithState:&v288 objects:v320 count:16];
                if (v86)
                {
                  continue;
                }

                break;
              }

              v8 = v284;
            }

LABEL_72:

            v283 = v83;
            if ([v83 length] <= 9)
            {
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v93 = NFLogGetLogger();
              if (v93)
              {
                v94 = v93;
                v95 = object_getClass(a1);
                v96 = class_isMetaClass(v95);
                v97 = object_getClassName(a1);
                v98 = sel_getName("getAppletMigrationErrorCount:reset:");
                v266 = [v83 length];
                v99 = 45;
                if (v96)
                {
                  v99 = 43;
                }

                v94(3, "%c[%{public}s %{public}s]:%i Invalid migration log data, data length: %d. Minimun length should be: %d", v99, v97, v98, 860, v266, 10);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v100 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
              {
                v101 = object_getClass(a1);
                if (class_isMetaClass(v101))
                {
                  v102 = 43;
                }

                else
                {
                  v102 = 45;
                }

                v103 = object_getClassName(a1);
                v104 = sel_getName("getAppletMigrationErrorCount:reset:");
                v105 = [v283 length];
                *buf = 67110402;
                v295 = v102;
                v296 = 2082;
                v297 = v103;
                v298 = 2082;
                v299 = v104;
                v300 = 1024;
                v301 = 860;
                v302 = 1024;
                *v303 = v105;
                *&v303[4] = 1024;
                *&v303[6] = 10;
                _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid migration log data, data length: %d. Minimun length should be: %d", buf, 0x2Eu);
              }

              v106 = [NSError alloc];
              v107 = [NSString stringWithUTF8String:"nfcd"];
              v318[0] = NSLocalizedDescriptionKey;
              v108 = [NSString stringWithUTF8String:"Unexpected Result"];
              v319[0] = v108;
              v319[1] = &off_100330C18;
              v318[1] = @"Line";
              v318[2] = @"Method";
              v109 = [[NSString alloc] initWithFormat:@"%s", sel_getName("getAppletMigrationErrorCount:reset:")];
              v319[2] = v109;
              v318[3] = NSDebugDescriptionErrorKey;
              v110 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("getAppletMigrationErrorCount:reset:"), 861];
              v319[3] = v110;
              v111 = v319;
              v112 = v318;
              goto LABEL_108;
            }

            v113 = __rev16(*([v83 bytes] + 4));
            if (v113 == 65200)
            {
              v114 = [[NSData alloc] initWithBytes:objc_msgSend(v83 length:{"bytes") + 9, objc_msgSend(v83, "length") - 9}];
              v115 = [NFTLV TLVsWithData:v114];

              v279 = v115;
              if ([v115 count])
              {
                v116 = [v115 objectAtIndexedSubscript:0];
                v278 = v116;
                if ([v116 tag] != 176)
                {
                  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                  v169 = NFLogGetLogger();
                  if (v169)
                  {
                    v170 = v169;
                    v171 = object_getClass(a1);
                    v172 = class_isMetaClass(v171);
                    v173 = object_getClassName(a1);
                    v174 = sel_getName("getAppletMigrationErrorCount:reset:");
                    v268 = [v116 tag];
                    v175 = 45;
                    if (v172)
                    {
                      v175 = 43;
                    }

                    v170(3, "%c[%{public}s %{public}s]:%i Invalid migration log data, the second partialTag should be 0xB0, but got: 0x%x", v175, v173, v174, 892, v268);
                  }

                  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                  v176 = NFSharedLogGetLogger();
                  if (os_log_type_enabled(v176, OS_LOG_TYPE_ERROR))
                  {
                    v177 = object_getClass(a1);
                    if (class_isMetaClass(v177))
                    {
                      v178 = 43;
                    }

                    else
                    {
                      v178 = 45;
                    }

                    v179 = object_getClassName(a1);
                    v180 = sel_getName("getAppletMigrationErrorCount:reset:");
                    v181 = [v278 tag];
                    *buf = 67110146;
                    v295 = v178;
                    v296 = 2082;
                    v297 = v179;
                    v298 = 2082;
                    v299 = v180;
                    v300 = 1024;
                    v301 = 892;
                    v302 = 1024;
                    *v303 = v181;
                    _os_log_impl(&_mh_execute_header, v176, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid migration log data, the second partialTag should be 0xB0, but got: 0x%x", buf, 0x28u);
                  }

                  v182 = [NSError alloc];
                  v183 = [NSString stringWithUTF8String:"nfcd"];
                  v312[0] = NSLocalizedDescriptionKey;
                  v184 = [NSString stringWithUTF8String:"Unexpected Result"];
                  v313[0] = v184;
                  v313[1] = &off_100330C60;
                  v312[1] = @"Line";
                  v312[2] = @"Method";
                  v185 = [[NSString alloc] initWithFormat:@"%s", sel_getName("getAppletMigrationErrorCount:reset:")];
                  v313[2] = v185;
                  v312[3] = NSDebugDescriptionErrorKey;
                  v186 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("getAppletMigrationErrorCount:reset:"), 893];
                  v313[3] = v186;
                  v187 = [NSDictionary dictionaryWithObjects:v313 forKeys:v312 count:4];
                  v188 = [v182 initWithDomain:v183 code:13 userInfo:v187];

                  v24 = v188;
                  v8 = v284;
                  goto LABEL_163;
                }

                v277 = v114;
                v117 = [v116 value];
                if ([v117 length] < 6)
                {
                  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                  v118 = NFLogGetLogger();
                  if (v118)
                  {
                    v119 = v118;
                    v120 = object_getClass(a1);
                    v121 = class_isMetaClass(v120);
                    v122 = object_getClassName(a1);
                    v123 = sel_getName("getAppletMigrationErrorCount:reset:");
                    v267 = [v117 length];
                    v124 = 45;
                    if (v121)
                    {
                      v124 = 43;
                    }

                    v119(3, "%c[%{public}s %{public}s]:%i Invalid migration log data, migrationLog.length (%lu) < AppletMigrationLogMinLength (6)", v124, v122, v123, 898, v267);
                  }

                  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                  v125 = NFSharedLogGetLogger();
                  if (os_log_type_enabled(v125, OS_LOG_TYPE_ERROR))
                  {
                    v126 = object_getClass(a1);
                    if (class_isMetaClass(v126))
                    {
                      v127 = 43;
                    }

                    else
                    {
                      v127 = 45;
                    }

                    v128 = object_getClassName(a1);
                    v129 = sel_getName("getAppletMigrationErrorCount:reset:");
                    v130 = [v117 length];
                    *buf = 67110146;
                    v295 = v127;
                    v296 = 2082;
                    v297 = v128;
                    v298 = 2082;
                    v299 = v129;
                    v300 = 1024;
                    v301 = 898;
                    v302 = 2048;
                    *v303 = v130;
                    _os_log_impl(&_mh_execute_header, v125, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid migration log data, migrationLog.length (%lu) < AppletMigrationLogMinLength (6)", buf, 0x2Cu);
                  }

                  v131 = [NSError alloc];
                  v132 = [NSString stringWithUTF8String:"nfcd"];
                  v310[0] = NSLocalizedDescriptionKey;
                  v133 = [NSString stringWithUTF8String:"Unexpected Result"];
                  v311[0] = v133;
                  v311[1] = &off_100330C78;
                  v310[1] = @"Line";
                  v310[2] = @"Method";
                  v134 = [[NSString alloc] initWithFormat:@"%s", sel_getName("getAppletMigrationErrorCount:reset:")];
                  v311[2] = v134;
                  v310[3] = NSDebugDescriptionErrorKey;
                  v135 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("getAppletMigrationErrorCount:reset:"), 899];
                  v311[3] = v135;
                  v136 = [NSDictionary dictionaryWithObjects:v311 forKeys:v310 count:4];
                  v137 = [v131 initWithDomain:v132 code:13 userInfo:v136];

                  v138 = v137;
                  goto LABEL_97;
                }

                v189 = [v117 bytes];
                v190 = [v117 length];
                v191 = *v189;
                v192 = v189[1];
                v193 = v189[2];
                v194 = __rev16(v193);
                if (v194 == 65445)
                {
                  v275 = v190;
                  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                  v207 = NFLogGetLogger();
                  if (v207)
                  {
                    v208 = v207;
                    v209 = object_getClass(a1);
                    v269 = class_isMetaClass(v209);
                    log = object_getClassName(a1);
                    v261 = sel_getName("getAppletMigrationErrorCount:reset:");
                    v210 = 45;
                    if (v269)
                    {
                      v210 = 43;
                    }

                    v208(6, "%c[%{public}s %{public}s]:%i There is a buffer overflow without the host acknowledging a readout !", v210, log, v261, 917);
                  }

                  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                  v211 = NFSharedLogGetLogger();
                  if (os_log_type_enabled(v211, OS_LOG_TYPE_DEFAULT))
                  {
                    v212 = object_getClass(a1);
                    if (class_isMetaClass(v212))
                    {
                      v213 = 43;
                    }

                    else
                    {
                      v213 = 45;
                    }

                    v270 = v213;
                    loga = v211;
                    v214 = object_getClassName(a1);
                    v215 = sel_getName("getAppletMigrationErrorCount:reset:");
                    *buf = 67109890;
                    v295 = v270;
                    v296 = 2082;
                    v297 = v214;
                    v211 = loga;
                    v298 = 2082;
                    v299 = v215;
                    v300 = 1024;
                    v301 = 917;
                    _os_log_impl(&_mh_execute_header, loga, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i There is a buffer overflow without the host acknowledging a readout !", buf, 0x22u);
                  }

                  v8 = v284;
                  v190 = v275;
                }

                else if (v194 == 65370)
                {
                  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                  v195 = NFLogGetLogger();
                  if (v195)
                  {
                    v196 = v195;
                    v197 = object_getClass(a1);
                    v198 = class_isMetaClass(v197);
                    v199 = object_getClassName(a1);
                    v260 = sel_getName("getAppletMigrationErrorCount:reset:");
                    v200 = 45;
                    if (v198)
                    {
                      v200 = 43;
                    }

                    v196(6, "%c[%{public}s %{public}s]:%i There is no new entry in the log since the host acknowledged the last readout of the log.", v200, v199, v260, 914);
                  }

                  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                  v201 = NFSharedLogGetLogger();
                  if (os_log_type_enabled(v201, OS_LOG_TYPE_DEFAULT))
                  {
                    v202 = object_getClass(a1);
                    if (class_isMetaClass(v202))
                    {
                      v203 = 43;
                    }

                    else
                    {
                      v203 = 45;
                    }

                    v204 = object_getClassName(a1);
                    v205 = sel_getName("getAppletMigrationErrorCount:reset:");
                    *buf = 67109890;
                    v295 = v203;
                    v296 = 2082;
                    v297 = v204;
                    v298 = 2082;
                    v299 = v205;
                    v300 = 1024;
                    v301 = 914;
                    v206 = "%c[%{public}s %{public}s]:%i There is no new entry in the log since the host acknowledged the last readout of the log.";
                    goto LABEL_160;
                  }

                  goto LABEL_161;
                }

                if (v192 == v193)
                {
                  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                  v216 = NFLogGetLogger();
                  if (v216)
                  {
                    v217 = v216;
                    v218 = object_getClass(a1);
                    v219 = class_isMetaClass(v218);
                    v220 = object_getClassName(a1);
                    v262 = sel_getName("getAppletMigrationErrorCount:reset:");
                    v221 = 45;
                    if (v219)
                    {
                      v221 = 43;
                    }

                    v217(6, "%c[%{public}s %{public}s]:%i Applet Migration Error counter is 0", v221, v220, v262, 925);
                  }

                  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                  v201 = NFSharedLogGetLogger();
                  if (os_log_type_enabled(v201, OS_LOG_TYPE_DEFAULT))
                  {
                    v222 = object_getClass(a1);
                    if (class_isMetaClass(v222))
                    {
                      v223 = 43;
                    }

                    else
                    {
                      v223 = 45;
                    }

                    v224 = object_getClassName(a1);
                    v225 = sel_getName("getAppletMigrationErrorCount:reset:");
                    *buf = 67109890;
                    v295 = v223;
                    v296 = 2082;
                    v297 = v224;
                    v298 = 2082;
                    v299 = v225;
                    v300 = 1024;
                    v301 = 925;
                    v206 = "%c[%{public}s %{public}s]:%i Applet Migration Error counter is 0";
LABEL_160:
                    _os_log_impl(&_mh_execute_header, v201, OS_LOG_TYPE_DEFAULT, v206, buf, 0x22u);
                  }

LABEL_161:

                  v24 = 0;
LABEL_162:
                  v114 = v277;
LABEL_163:
                  v226 = v278;
                  v84 = v279;
                }

                else
                {
                  v228 = __rev16(v192) - v194;
                  if (v228 < 9 || (v190 - 6) < v228)
                  {
                    v276 = v190;
                    v232 = [NSError alloc];
                    v271 = [NSString stringWithUTF8String:"nfcd"];
                    v308[0] = NSLocalizedDescriptionKey;
                    logb = [NSString stringWithUTF8String:"Unexpected Result"];
                    v309[0] = logb;
                    v309[1] = &off_100330C90;
                    v308[1] = @"Line";
                    v308[2] = @"Method";
                    v233 = [[NSString alloc] initWithFormat:@"%s", sel_getName("getAppletMigrationErrorCount:reset:")];
                    v309[2] = v233;
                    v308[3] = NSDebugDescriptionErrorKey;
                    v234 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("getAppletMigrationErrorCount:reset:"), 933];
                    v309[3] = v234;
                    v235 = [NSDictionary dictionaryWithObjects:v309 forKeys:v308 count:4];
                    v281 = [v232 initWithDomain:v271 code:13 userInfo:v235];

                    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                    v236 = NFLogGetLogger();
                    if (v236)
                    {
                      v237 = v236;
                      v238 = object_getClass(a1);
                      v239 = class_isMetaClass(v238);
                      v255 = object_getClassName(a1);
                      v263 = sel_getName("getAppletMigrationErrorCount:reset:");
                      v240 = 43;
                      if (!v239)
                      {
                        v240 = 45;
                      }

                      v237(3, "%c[%{public}s %{public}s]:%i Error in Applet Migration Error Log data: dataLength=%d, it should big then AppletMigrationLogDataEntryErrorCounterOffset=%d, less or equal to: logContentBytes=%ld - AppletMigrationLogDataOffset=%d", v240, v255, v263, 934, v228, 9, v276, 6);
                    }

                    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                    v241 = NFSharedLogGetLogger();
                    if (os_log_type_enabled(v241, OS_LOG_TYPE_ERROR))
                    {
                      v242 = object_getClass(a1);
                      if (class_isMetaClass(v242))
                      {
                        v243 = 43;
                      }

                      else
                      {
                        v243 = 45;
                      }

                      v244 = object_getClassName(a1);
                      v245 = sel_getName("getAppletMigrationErrorCount:reset:");
                      *buf = 67110914;
                      v295 = v243;
                      v296 = 2082;
                      v297 = v244;
                      v298 = 2082;
                      v299 = v245;
                      v300 = 1024;
                      v301 = 934;
                      v302 = 1024;
                      *v303 = v228;
                      *&v303[4] = 1024;
                      *&v303[6] = 9;
                      v304 = 2048;
                      v305 = v276;
                      v306 = 1024;
                      v307 = 6;
                      _os_log_impl(&_mh_execute_header, v241, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Error in Applet Migration Error Log data: dataLength=%d, it should big then AppletMigrationLogDataEntryErrorCounterOffset=%d, less or equal to: logContentBytes=%ld - AppletMigrationLogDataOffset=%d", buf, 0x3Eu);
                    }

                    v138 = v281;
LABEL_97:
                    v24 = v138;

                    v8 = v284;
                    goto LABEL_162;
                  }

                  v229 = 0;
                  v230 = v228 - 11;
                  if (v228 >= 0xB)
                  {
                    v246 = 0;
                    v247 = v189 + 3;
                    v8 = v284;
                    v226 = v278;
                    v84 = v279;
                    v231 = v280;
                    do
                    {
                      v248 = v247 + v246;
                      if (!*v248)
                      {
                        break;
                      }

                      v229 += bswap32(*(v248 + 9)) >> 16;
                      v246 += *v248 + 1;
                    }

                    while (v230 >= v246);
                  }

                  else
                  {
                    v8 = v284;
                    v226 = v278;
                    v84 = v279;
                    v231 = v280;
                  }

                  sela = v117;
                  *a2 = v229;
                  if (v231)
                  {
                    v249 = [NSData NF_dataWithHexString:@"DF2D00FEB000"];

                    v287 = 0;
                    v250 = sub_10015837C(a1, 128, 202, 0, 254, v249, 0, 0, &v287);
                    v251 = v287;
                    v10 = v249;
                  }

                  else
                  {
                    v251 = 0;
                  }

                  v114 = v277;
                  v24 = v251;
                }
              }

              else
              {
                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v151 = NFLogGetLogger();
                if (v151)
                {
                  v152 = v151;
                  v153 = object_getClass(a1);
                  v154 = class_isMetaClass(v153);
                  v155 = object_getClassName(a1);
                  v259 = sel_getName("getAppletMigrationErrorCount:reset:");
                  v156 = 45;
                  if (v154)
                  {
                    v156 = 43;
                  }

                  v152(3, "%c[%{public}s %{public}s]:%i Invalid migration log data, could not find the second partialTag: 0xB0", v156, v155, v259, 882);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v157 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v157, OS_LOG_TYPE_ERROR))
                {
                  v158 = object_getClass(a1);
                  if (class_isMetaClass(v158))
                  {
                    v159 = 43;
                  }

                  else
                  {
                    v159 = 45;
                  }

                  v160 = object_getClassName(a1);
                  v161 = sel_getName("getAppletMigrationErrorCount:reset:");
                  *buf = 67109890;
                  v295 = v159;
                  v296 = 2082;
                  v297 = v160;
                  v298 = 2082;
                  v299 = v161;
                  v300 = 1024;
                  v301 = 882;
                  _os_log_impl(&_mh_execute_header, v157, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid migration log data, could not find the second partialTag: 0xB0", buf, 0x22u);
                }

                v162 = [NSError alloc];
                v163 = [NSString stringWithUTF8String:"nfcd"];
                v314[0] = NSLocalizedDescriptionKey;
                v164 = [NSString stringWithUTF8String:"Unexpected Result"];
                v315[0] = v164;
                v315[1] = &off_100330C48;
                v314[1] = @"Line";
                v314[2] = @"Method";
                v165 = [[NSString alloc] initWithFormat:@"%s", sel_getName("getAppletMigrationErrorCount:reset:")];
                v315[2] = v165;
                v314[3] = NSDebugDescriptionErrorKey;
                v166 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("getAppletMigrationErrorCount:reset:"), 883];
                v315[3] = v166;
                v167 = [NSDictionary dictionaryWithObjects:v315 forKeys:v314 count:4];
                v168 = [v162 initWithDomain:v163 code:13 userInfo:v167];

                v24 = v168;
                v8 = v284;
                v84 = v279;
              }
            }

            else
            {
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v139 = NFLogGetLogger();
              if (v139)
              {
                v140 = v139;
                v141 = object_getClass(a1);
                v142 = class_isMetaClass(v141);
                v254 = object_getClassName(a1);
                v258 = sel_getName("getAppletMigrationErrorCount:reset:");
                v143 = 45;
                if (v142)
                {
                  v143 = 43;
                }

                v140(3, "%c[%{public}s %{public}s]:%i Invalid migration log data: first partialTag should be: 0xFEB0, but got: 0x%x", v143, v254, v258, 871, v113);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v144 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v144, OS_LOG_TYPE_ERROR))
              {
                v145 = object_getClass(a1);
                if (class_isMetaClass(v145))
                {
                  v146 = 43;
                }

                else
                {
                  v146 = 45;
                }

                v147 = object_getClassName(a1);
                v148 = sel_getName("getAppletMigrationErrorCount:reset:");
                *buf = 67110146;
                v295 = v146;
                v296 = 2082;
                v297 = v147;
                v298 = 2082;
                v299 = v148;
                v300 = 1024;
                v301 = 871;
                v302 = 1024;
                *v303 = v113;
                _os_log_impl(&_mh_execute_header, v144, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid migration log data: first partialTag should be: 0xFEB0, but got: 0x%x", buf, 0x28u);
              }

              v106 = [NSError alloc];
              v107 = [NSString stringWithUTF8String:"nfcd"];
              v316[0] = NSLocalizedDescriptionKey;
              v108 = [NSString stringWithUTF8String:"Unexpected Result"];
              v317[0] = v108;
              v317[1] = &off_100330C30;
              v316[1] = @"Line";
              v316[2] = @"Method";
              v109 = [[NSString alloc] initWithFormat:@"%s", sel_getName("getAppletMigrationErrorCount:reset:")];
              v317[2] = v109;
              v316[3] = NSDebugDescriptionErrorKey;
              v110 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("getAppletMigrationErrorCount:reset:"), 872];
              v317[3] = v110;
              v111 = v317;
              v112 = v316;
LABEL_108:
              v149 = [NSDictionary dictionaryWithObjects:v111 forKeys:v112 count:4];
              v150 = [v106 initWithDomain:v107 code:13 userInfo:v149];

              v24 = v150;
              v8 = v284;
            }

            v6 = v24;
            goto LABEL_167;
          }

          v13 = [v11 response];
          [v6 appendData:v13];

          v9 = 0;
        }

        v54 = [NSError alloc];
        v55 = [NSString stringWithUTF8String:"nfcd"];
        v321[0] = NSLocalizedDescriptionKey;
        v56 = [NSString stringWithUTF8String:"Unexpected Result"];
        v322[0] = v56;
        v322[1] = &off_100330C00;
        v321[1] = @"Line";
        v321[2] = @"Method";
        v57 = [[NSString alloc] initWithFormat:@"%s", sel_getName("getAppletMigrationErrorCount:reset:")];
        v322[2] = v57;
        v321[3] = NSDebugDescriptionErrorKey;
        v58 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("getAppletMigrationErrorCount:reset:"), 823];
        v322[3] = v58;
        v59 = [NSDictionary dictionaryWithObjects:v322 forKeys:v321 count:4];
        v12 = [v54 initWithDomain:v55 code:13 userInfo:v59];

        if (!v12)
        {
          v6 = 0;
          goto LABEL_60;
        }

LABEL_38:
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v60 = NFLogGetLogger();
        v8 = v284;
        if (v60)
        {
          v61 = v60;
          v62 = object_getClass(a1);
          v63 = class_isMetaClass(v62);
          v253 = object_getClassName(a1);
          v257 = sel_getName("getAppletMigrationErrorCount:reset:");
          v64 = 45;
          if (v63)
          {
            v64 = 43;
          }

          v61(3, "%c[%{public}s %{public}s]:%i Data responce error: %@", v64, v253, v257, 839, v12);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v65 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
        {
          v66 = object_getClass(a1);
          if (class_isMetaClass(v66))
          {
            v67 = 43;
          }

          else
          {
            v67 = 45;
          }

          v68 = object_getClassName(a1);
          v69 = sel_getName("getAppletMigrationErrorCount:reset:");
          *buf = 67110146;
          v295 = v67;
          v296 = 2082;
          v297 = v68;
          v298 = 2082;
          v299 = v69;
          v300 = 1024;
          v301 = 839;
          v302 = 2112;
          *v303 = v12;
          _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Data responce error: %@", buf, 0x2Cu);
        }

        v6 = v12;
        v24 = v6;
      }

      else
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v25 = NFLogGetLogger();
        if (v25)
        {
          v26 = v25;
          v27 = object_getClass(a1);
          v28 = class_isMetaClass(v27);
          v29 = object_getClassName(a1);
          v30 = sel_getName("getAppletMigrationErrorCount:reset:");
          v264 = [v8 status];
          v31 = 45;
          if (v28)
          {
            v31 = 43;
          }

          v26(3, "%c[%{public}s %{public}s]:%i Failed to select: 0x%04x", v31, v29, v30, 799, v264);
        }

        sel = v6;
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v32 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v33 = object_getClass(a1);
          if (class_isMetaClass(v33))
          {
            v34 = 43;
          }

          else
          {
            v34 = 45;
          }

          v35 = object_getClassName(a1);
          v36 = sel_getName("getAppletMigrationErrorCount:reset:");
          v37 = [v8 status];
          *buf = 67110146;
          v295 = v34;
          v296 = 2082;
          v297 = v35;
          v298 = 2082;
          v299 = v36;
          v300 = 1024;
          v301 = 799;
          v302 = 1024;
          *v303 = v37;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to select: 0x%04x", buf, 0x28u);
        }

        v38 = v8;
        v39 = [v8 status];
        v40 = [NSError alloc];
        v41 = [NSString stringWithUTF8String:"nfcd"];
        if (v39 == 26277)
        {
          v325[0] = NSLocalizedDescriptionKey;
          v42 = [NSString stringWithUTF8String:"Restricted Mode"];
          v326[0] = v42;
          v326[1] = &off_100330BE8;
          v325[1] = @"Line";
          v325[2] = @"Method";
          v43 = [[NSString alloc] initWithFormat:@"%s", sel_getName("getAppletMigrationErrorCount:reset:")];
          v326[2] = v43;
          v325[3] = NSDebugDescriptionErrorKey;
          v44 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("getAppletMigrationErrorCount:reset:"), 800];
          v326[3] = v44;
          v45 = [NSDictionary dictionaryWithObjects:v326 forKeys:v325 count:4];
          v46 = v40;
          v47 = v41;
          v48 = 24;
        }

        else
        {
          v323[0] = NSLocalizedDescriptionKey;
          v42 = [NSString stringWithUTF8String:"Command Error"];
          v324[0] = v42;
          v324[1] = &off_100330BE8;
          v323[1] = @"Line";
          v323[2] = @"Method";
          v43 = [[NSString alloc] initWithFormat:@"%s", sel_getName("getAppletMigrationErrorCount:reset:")];
          v324[2] = v43;
          v323[3] = NSDebugDescriptionErrorKey;
          v44 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("getAppletMigrationErrorCount:reset:"), 800];
          v324[3] = v44;
          v45 = [NSDictionary dictionaryWithObjects:v324 forKeys:v323 count:4];
          v46 = v40;
          v47 = v41;
          v48 = 16;
        }

        v24 = [v46 initWithDomain:v47 code:v48 userInfo:v45];

        v10 = sel;
        v8 = v38;
        v6 = v9;
      }
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v14 = NFLogGetLogger();
      if (v14)
      {
        v15 = v14;
        v16 = object_getClass(a1);
        v17 = class_isMetaClass(v16);
        v252 = object_getClassName(a1);
        v256 = sel_getName("getAppletMigrationErrorCount:reset:");
        v18 = 45;
        if (v17)
        {
          v18 = 43;
        }

        v15(3, "%c[%{public}s %{public}s]:%i Failed to select ISD: %{public}@", v18, v252, v256, 796, v9);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v19 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = object_getClass(a1);
        if (class_isMetaClass(v20))
        {
          v21 = 43;
        }

        else
        {
          v21 = 45;
        }

        v22 = object_getClassName(a1);
        v23 = sel_getName("getAppletMigrationErrorCount:reset:");
        *buf = 67110146;
        v295 = v21;
        v296 = 2082;
        v297 = v22;
        v298 = 2082;
        v299 = v23;
        v300 = 1024;
        v301 = 796;
        v302 = 2114;
        *v303 = v9;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to select ISD: %{public}@", buf, 0x2Cu);
      }

      if (v9)
      {
        v24 = v9;
        v10 = v6;
        v6 = v24;
      }

      else
      {
        v49 = [NSError alloc];
        v10 = [NSString stringWithUTF8String:"nfcd"];
        v327[0] = NSLocalizedDescriptionKey;
        v50 = [NSString stringWithUTF8String:"Command Error"];
        v328[0] = v50;
        v328[1] = &off_100330BD0;
        v327[1] = @"Line";
        v327[2] = @"Method";
        v51 = [[NSString alloc] initWithFormat:@"%s", sel_getName("getAppletMigrationErrorCount:reset:")];
        v328[2] = v51;
        v327[3] = NSDebugDescriptionErrorKey;
        v52 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("getAppletMigrationErrorCount:reset:"), 797];
        v328[3] = v52;
        v53 = [NSDictionary dictionaryWithObjects:v328 forKeys:v327 count:4];
        v24 = [v49 initWithDomain:v10 code:16 userInfo:v53];
      }
    }

LABEL_167:
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

id sub_1000A02D0(void *a1, void *a2)
{
  if (a1)
  {
    if (qword_10035D998)
    {
      v4 = 0;
      v5 = 0;
LABEL_4:
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v7 = Logger;
        Class = object_getClass(a1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(a1);
        Name = sel_getName("getAndResetLPEMCounter:");
        v12 = 45;
        if (isMetaClass)
        {
          v12 = 43;
        }

        v7(6, "%c[%{public}s %{public}s]:%i LPEM counter = %ld", v12, ClassName, Name, 1032, qword_10035D998);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v13 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = object_getClass(a1);
        if (class_isMetaClass(v14))
        {
          v15 = 43;
        }

        else
        {
          v15 = 45;
        }

        v16 = object_getClassName(a1);
        v17 = sel_getName("getAndResetLPEMCounter:");
        *buf = 67110146;
        v100 = v15;
        v101 = 2082;
        v102 = v16;
        v103 = 2082;
        v104 = v17;
        v105 = 1024;
        v106 = 1032;
        v107 = 2048;
        v108 = qword_10035D998;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i LPEM counter = %ld", buf, 0x2Cu);
      }

      v18 = 0;
      if (a2)
      {
        *a2 = qword_10035D998;
      }

      goto LABEL_15;
    }

    v94 = 0;
    v19 = sub_1001599F4(a1, &v94);
    v20 = v94;
    if (v20)
    {
      v21 = v20;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v22 = NFLogGetLogger();
      if (v22)
      {
        v23 = v22;
        v24 = object_getClass(a1);
        v25 = class_isMetaClass(v24);
        v26 = object_getClassName(a1);
        v89 = sel_getName("getAndResetLPEMCounter:");
        v27 = 45;
        if (v25)
        {
          v27 = 43;
        }

        v23(3, "%c[%{public}s %{public}s]:%i Failed to select CRS", v27, v26, v89, 997);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v28 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = object_getClass(a1);
        if (class_isMetaClass(v29))
        {
          v30 = 43;
        }

        else
        {
          v30 = 45;
        }

        v31 = object_getClassName(a1);
        v32 = sel_getName("getAndResetLPEMCounter:");
        *buf = 67109890;
        v100 = v30;
        v101 = 2082;
        v102 = v31;
        v103 = 2082;
        v104 = v32;
        v105 = 1024;
        v106 = 997;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to select CRS", buf, 0x22u);
      }

      v5 = v21;
      v18 = v5;
      goto LABEL_27;
    }

    v93 = 0;
    v4 = sub_100158334(a1, 128, 243, 3, 2, 0, &v93);
    v5 = v93;

    if (!v4)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v56 = NFLogGetLogger();
      if (v56)
      {
        v57 = v56;
        v58 = object_getClass(a1);
        v59 = class_isMetaClass(v58);
        v60 = object_getClassName(a1);
        v90 = sel_getName("getAndResetLPEMCounter:");
        v61 = 45;
        if (v59)
        {
          v61 = 43;
        }

        v57(3, "%c[%{public}s %{public}s]:%i Failed to query LPEM counter", v61, v60, v90, 1009);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v62 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        v63 = object_getClass(a1);
        if (class_isMetaClass(v63))
        {
          v64 = 43;
        }

        else
        {
          v64 = 45;
        }

        v65 = object_getClassName(a1);
        v66 = sel_getName("getAndResetLPEMCounter:");
        *buf = 67109890;
        v100 = v64;
        v101 = 2082;
        v102 = v65;
        v103 = 2082;
        v104 = v66;
        v105 = 1024;
        v106 = 1009;
        _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to query LPEM counter", buf, 0x22u);
      }

      v67 = [NSError alloc];
      v68 = [NSString stringWithUTF8String:"nfcd"];
      v111 = NSLocalizedDescriptionKey;
      v69 = [NSString stringWithUTF8String:"Unknown Error"];
      v112 = v69;
      v70 = [NSDictionary dictionaryWithObjects:&v112 forKeys:&v111 count:1];
      v18 = [v67 initWithDomain:v68 code:6 userInfo:v70];

      v19 = 0;
      goto LABEL_27;
    }

    if ([v4 status] == 36864)
    {
      v34 = [v4 response];
      v35 = [v34 length];

      if (v35 > 1)
      {
        if (a2)
        {
          v85 = [v4 response];
          v86 = *[v85 bytes];

          if (v86)
          {
            qword_10035D998 = __rev16(v86);
            v95 = @"totalLPEMCounter";
            v87 = [NSNumber numberWithInteger:?];
            v96 = v87;
            v88 = [NSDictionary dictionaryWithObjects:&v96 forKeys:&v95 count:1];
            [NFGeneralStatisticsCALogger updateAnalyticsGeneralTransactionStatistics:v88];
          }
        }

        goto LABEL_4;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v36 = NFLogGetLogger();
      if (v36)
      {
        v37 = v36;
        v38 = object_getClass(a1);
        v39 = class_isMetaClass(v38);
        v40 = object_getClassName(a1);
        v41 = sel_getName("getAndResetLPEMCounter:");
        v42 = [v4 response];
        v91 = [v42 length];
        v43 = 45;
        if (v39)
        {
          v43 = 43;
        }

        v37(3, "%c[%{public}s %{public}s]:%i Failed to query LPEM counter, invalid length %lu", v43, v40, v41, 1017, v91);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v44 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        v45 = object_getClass(a1);
        if (class_isMetaClass(v45))
        {
          v46 = 43;
        }

        else
        {
          v46 = 45;
        }

        v47 = object_getClassName(a1);
        v48 = sel_getName("getAndResetLPEMCounter:");
        v49 = [v4 response];
        v50 = [v49 length];
        *buf = 67110146;
        v100 = v46;
        v101 = 2082;
        v102 = v47;
        v103 = 2082;
        v104 = v48;
        v105 = 1024;
        v106 = 1017;
        v107 = 2048;
        v108 = v50;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to query LPEM counter, invalid length %lu", buf, 0x2Cu);
      }

      v51 = [NSError alloc];
      v52 = [NSString stringWithUTF8String:"nfcd"];
      v97 = NSLocalizedDescriptionKey;
      v53 = [NSString stringWithUTF8String:"Unexpected Result"];
      v98 = v53;
      v54 = &v98;
      v55 = &v97;
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v71 = NFLogGetLogger();
      if (v71)
      {
        v72 = v71;
        v73 = object_getClass(a1);
        v74 = class_isMetaClass(v73);
        v75 = object_getClassName(a1);
        v76 = sel_getName("getAndResetLPEMCounter:");
        v92 = [v4 status];
        v77 = 45;
        if (v74)
        {
          v77 = 43;
        }

        v72(3, "%c[%{public}s %{public}s]:%i Failed to query LPEM counter, SW = 0x%x", v77, v75, v76, 1013, v92);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v78 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
      {
        v79 = object_getClass(a1);
        if (class_isMetaClass(v79))
        {
          v80 = 43;
        }

        else
        {
          v80 = 45;
        }

        v81 = object_getClassName(a1);
        v82 = sel_getName("getAndResetLPEMCounter:");
        v83 = [v4 status];
        *buf = 67110146;
        v100 = v80;
        v101 = 2082;
        v102 = v81;
        v103 = 2082;
        v104 = v82;
        v105 = 1024;
        v106 = 1013;
        v107 = 1024;
        LODWORD(v108) = v83;
        _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to query LPEM counter, SW = 0x%x", buf, 0x28u);
      }

      v51 = [NSError alloc];
      v52 = [NSString stringWithUTF8String:"nfcd"];
      v109 = NSLocalizedDescriptionKey;
      v53 = [NSString stringWithUTF8String:"Unexpected Result"];
      v110 = v53;
      v54 = &v110;
      v55 = &v109;
    }

    v84 = [NSDictionary dictionaryWithObjects:v54 forKeys:v55 count:1];
    v18 = [v51 initWithDomain:v52 code:13 userInfo:v84];

LABEL_15:
    v19 = v4;
LABEL_27:

    goto LABEL_28;
  }

  v18 = 0;
LABEL_28:

  return v18;
}

id sub_1000A0C8C(id *a1, void *a2)
{
  if (a1)
  {
    v123 = objc_opt_new();
    v3 = [[NSData alloc] initWithBytes:&unk_100296DDE length:8];
    v133 = 0;
    v4 = sub_100158A6C(a1, v3, &v133);
    v5 = v133;

    if (v4)
    {
      v121 = v4;
      if ([v4 status] == 36864)
      {
        v122 = [NSData NF_dataWithHexString:@"08AA0400"];
        while (1)
        {
          v132 = v5;
          v6 = sub_10015837C(a1, 128, 202, 0, 254, v122, 0, 0, &v132);
          v7 = v132;

          if (v7)
          {
            break;
          }

          if (!v6)
          {
            v49 = [NSError alloc];
            v50 = [NSString stringWithUTF8String:"nfcd"];
            v138[0] = NSLocalizedDescriptionKey;
            v51 = [NSString stringWithUTF8String:"Unexpected Result"];
            v139[0] = v51;
            v139[1] = &off_100330CF0;
            v138[1] = @"Line";
            v138[2] = @"Method";
            v52 = [[NSString alloc] initWithFormat:@"%s", sel_getName("getAppletMigrationListAndState:")];
            v139[2] = v52;
            v138[3] = NSDebugDescriptionErrorKey;
            v53 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("getAppletMigrationListAndState:"), 1282];
            v139[3] = v53;
            v54 = [NSDictionary dictionaryWithObjects:v139 forKeys:v138 count:4];
            v7 = [v49 initWithDomain:v50 code:13 userInfo:v54];

            if (!v7)
            {
              v19 = 0;
              goto LABEL_84;
            }

LABEL_38:
            v20 = v7;
            v4 = v121;
            v19 = v122;
            v5 = v20;
            goto LABEL_88;
          }

          if ([v6 status] == 36864)
          {
            goto LABEL_49;
          }

          if ([v6 status] != 25360 && objc_msgSend(v6, "status") != 37008)
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            Logger = NFLogGetLogger();
            if (Logger)
            {
              v56 = Logger;
              Class = object_getClass(a1);
              isMetaClass = class_isMetaClass(Class);
              ClassName = object_getClassName(a1);
              Name = sel_getName("getAppletMigrationListAndState:");
              v111 = [v6 status];
              v61 = 45;
              if (isMetaClass)
              {
                v61 = 43;
              }

              v56(3, "%c[%{public}s %{public}s]:%i Failed to query, status word is 0x%x", v61, ClassName, Name, 1291, v111);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v62 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
            {
              v63 = object_getClass(a1);
              if (class_isMetaClass(v63))
              {
                v64 = 43;
              }

              else
              {
                v64 = 45;
              }

              v65 = object_getClassName(a1);
              v66 = sel_getName("getAppletMigrationListAndState:");
              v67 = [v6 status];
              *buf = 67110146;
              v147 = v64;
              v148 = 2082;
              v149 = v65;
              v150 = 2082;
              v151 = v66;
              v152 = 1024;
              v153 = 1291;
              v154 = 1024;
              LODWORD(v155) = v67;
              _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to query, status word is 0x%x", buf, 0x28u);
            }

LABEL_49:
            v68 = [v6 data];
            v19 = v123;
            [v123 appendData:v68];

            if (v123)
            {
              v4 = v121;
              if ([v123 length] > 2)
              {
                v69 = objc_opt_new();
                v70 = [NFTLV TLVWithData:v123];
                v71 = v70;
                if (v70 && [v70 tag] == 225)
                {
                  v114 = v71;
                  v72 = [v71 value];
                  v73 = [NFTLV TLVWithData:v72];

                  if (v73)
                  {
                    if ([v73 tag] == 79)
                    {
                      [v73 value];
                      v74 = v113 = v73;
                      v75 = [v74 length];

                      if (v75)
                      {
                        v76 = [v73 value];
                        v77 = [NFTLV TLVWithData:v76];

                        v130 = 0u;
                        v131 = 0u;
                        v128 = 0u;
                        v129 = 0u;
                        v112 = v77;
                        obj = [v77 children];
                        v78 = [obj countByEnumeratingWithState:&v128 objects:v135 count:16];
                        if (v78)
                        {
                          v79 = v78;
                          v80 = *v129;
                          v115 = *v129;
                          v116 = v69;
                          do
                          {
                            v81 = 0;
                            v117 = v79;
                            do
                            {
                              if (*v129 != v80)
                              {
                                objc_enumerationMutation(obj);
                              }

                              v82 = *(*(&v128 + 1) + 8 * v81);
                              if ([v82 tag] == 226)
                              {
                                v83 = [v82 value];
                                v84 = [NFTLV TLVWithData:v83];

                                v126 = 0u;
                                v127 = 0u;
                                v124 = 0u;
                                v125 = 0u;
                                v120 = v84;
                                v85 = [v84 children];
                                v86 = [v85 countByEnumeratingWithState:&v124 objects:v134 count:16];
                                if (v86)
                                {
                                  v87 = v86;
                                  v88 = 0;
                                  v89 = 0;
                                  v90 = *v125;
                                  do
                                  {
                                    for (i = 0; i != v87; i = i + 1)
                                    {
                                      if (*v125 != v90)
                                      {
                                        objc_enumerationMutation(v85);
                                      }

                                      v92 = *(*(&v124 + 1) + 8 * i);
                                      if (v92)
                                      {
                                        if ([*(*(&v124 + 1) + 8 * i) tag] == 79)
                                        {
                                          v93 = [v92 value];
                                          v94 = [v93 NF_asHexString];

                                          v88 = v94;
                                        }

                                        if ([v92 tag] == 178)
                                        {
                                          v95 = [v92 value];
                                          v96 = [v95 NF_asHexString];

                                          v89 = v96;
                                        }
                                      }
                                    }

                                    v87 = [v85 countByEnumeratingWithState:&v124 objects:v134 count:16];
                                  }

                                  while (v87);
                                }

                                else
                                {
                                  v88 = 0;
                                  v89 = 0;
                                }

                                v97 = [NSString stringWithFormat:@"%@-%@, ", v89, v88];
                                v69 = v116;
                                v98 = [v116 stringByAppendingString:v97];

                                v4 = v121;
                                v80 = v115;
                                v79 = v117;
                              }

                              v81 = v81 + 1;
                            }

                            while (v81 != v79);
                            v79 = [obj countByEnumeratingWithState:&v128 objects:v135 count:16];
                          }

                          while (v79);
                        }

                        v19 = v123;
                        v73 = v113;
                      }
                    }
                  }

                  v71 = v114;
                }

                if ([v69 length])
                {
                  [v69 deleteCharactersInRange:{objc_msgSend(v69, "length") - 1, 1}];
                }

                else
                {
                  v106 = [v69 stringByAppendingString:&stru_10031EA18];
                }

                *a2 = [v69 mutableCopy];

                v20 = 0;
                v5 = v122;
                goto LABEL_88;
              }

LABEL_85:
              v99 = [NSError alloc];
              v100 = [NSString stringWithUTF8String:"nfcd"];
              v136[0] = NSLocalizedDescriptionKey;
              v101 = [NSString stringWithUTF8String:"Unexpected Result"];
              v137[0] = v101;
              v137[1] = &off_100330D08;
              v136[1] = @"Line";
              v136[2] = @"Method";
              v102 = [[NSString alloc] initWithFormat:@"%s", sel_getName("getAppletMigrationListAndState:")];
              v137[2] = v102;
              v136[3] = NSDebugDescriptionErrorKey;
              v103 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("getAppletMigrationListAndState:"), 1303];
              v137[3] = v103;
              v104 = [NSDictionary dictionaryWithObjects:v137 forKeys:v136 count:4];
              v105 = [v99 initWithDomain:v100 code:13 userInfo:v104];

              v20 = v105;
              v19 = v122;
              v5 = v20;
              goto LABEL_88;
            }

LABEL_84:
            v4 = v121;
            goto LABEL_85;
          }

          v8 = [v6 response];
          [v123 appendData:v8];

          v5 = 0;
        }

        goto LABEL_38;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v21 = NFLogGetLogger();
      if (v21)
      {
        v22 = v21;
        v23 = object_getClass(a1);
        v24 = class_isMetaClass(v23);
        v25 = object_getClassName(a1);
        v26 = sel_getName("getAppletMigrationListAndState:");
        v110 = [v4 status];
        v27 = 45;
        if (v24)
        {
          v27 = 43;
        }

        v22(3, "%c[%{public}s %{public}s]:%i Failed to select: 0x%04x", v27, v25, v26, 1263, v110);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v28 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = object_getClass(a1);
        if (class_isMetaClass(v29))
        {
          v30 = 43;
        }

        else
        {
          v30 = 45;
        }

        v31 = object_getClassName(a1);
        v32 = sel_getName("getAppletMigrationListAndState:");
        v33 = [v4 status];
        *buf = 67110146;
        v147 = v30;
        v148 = 2082;
        v149 = v31;
        v150 = 2082;
        v151 = v32;
        v152 = 1024;
        v153 = 1263;
        v154 = 1024;
        LODWORD(v155) = v33;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to select: 0x%04x", buf, 0x28u);
      }

      v34 = [v4 status];
      v35 = [NSError alloc];
      v36 = [NSString stringWithUTF8String:"nfcd"];
      if (v34 == 26277)
      {
        v142[0] = NSLocalizedDescriptionKey;
        v37 = [NSString stringWithUTF8String:"Restricted Mode"];
        v143[0] = v37;
        v143[1] = &off_100330CD8;
        v142[1] = @"Line";
        v142[2] = @"Method";
        v38 = [[NSString alloc] initWithFormat:@"%s", sel_getName("getAppletMigrationListAndState:")];
        v143[2] = v38;
        v142[3] = NSDebugDescriptionErrorKey;
        v39 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("getAppletMigrationListAndState:"), 1264];
        v143[3] = v39;
        v40 = [NSDictionary dictionaryWithObjects:v143 forKeys:v142 count:4];
        v41 = v35;
        v42 = v36;
        v43 = 24;
      }

      else
      {
        v140[0] = NSLocalizedDescriptionKey;
        v37 = [NSString stringWithUTF8String:"Command Error"];
        v141[0] = v37;
        v141[1] = &off_100330CD8;
        v140[1] = @"Line";
        v140[2] = @"Method";
        v38 = [[NSString alloc] initWithFormat:@"%s", sel_getName("getAppletMigrationListAndState:")];
        v141[2] = v38;
        v140[3] = NSDebugDescriptionErrorKey;
        v39 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("getAppletMigrationListAndState:"), 1264];
        v141[3] = v39;
        v40 = [NSDictionary dictionaryWithObjects:v141 forKeys:v140 count:4];
        v41 = v35;
        v42 = v36;
        v43 = 16;
      }

      v20 = [v41 initWithDomain:v42 code:v43 userInfo:v40];

      v19 = v123;
      v4 = v121;
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v9 = NFLogGetLogger();
      if (v9)
      {
        v10 = v9;
        v11 = object_getClass(a1);
        v12 = class_isMetaClass(v11);
        v108 = object_getClassName(a1);
        v109 = sel_getName("getAppletMigrationListAndState:");
        v13 = 45;
        if (v12)
        {
          v13 = 43;
        }

        v10(3, "%c[%{public}s %{public}s]:%i Failed to select : %{public}@", v13, v108, v109, 1260, v5);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v14 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = object_getClass(a1);
        if (class_isMetaClass(v15))
        {
          v16 = 43;
        }

        else
        {
          v16 = 45;
        }

        v17 = object_getClassName(a1);
        v18 = sel_getName("getAppletMigrationListAndState:");
        *buf = 67110146;
        v147 = v16;
        v148 = 2082;
        v149 = v17;
        v150 = 2082;
        v151 = v18;
        v152 = 1024;
        v153 = 1260;
        v154 = 2114;
        v155 = v5;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to select : %{public}@", buf, 0x2Cu);
      }

      if (v5)
      {
        v5 = v5;
        v19 = v123;
        v20 = v5;
      }

      else
      {
        v44 = [NSError alloc];
        v19 = [NSString stringWithUTF8String:"nfcd"];
        v144[0] = NSLocalizedDescriptionKey;
        v45 = [NSString stringWithUTF8String:"Command Error"];
        v145[0] = v45;
        v145[1] = &off_100330CC0;
        v144[1] = @"Line";
        v144[2] = @"Method";
        v46 = [[NSString alloc] initWithFormat:@"%s", sel_getName("getAppletMigrationListAndState:")];
        v145[2] = v46;
        v144[3] = NSDebugDescriptionErrorKey;
        v47 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("getAppletMigrationListAndState:"), 1261];
        v145[3] = v47;
        v48 = [NSDictionary dictionaryWithObjects:v145 forKeys:v144 count:4];
        v20 = [v44 initWithDomain:v19 code:16 userInfo:v48];

        v5 = v123;
      }
    }

LABEL_88:
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

void sub_1000A1FF4(uint64_t a1)
{
  v2 = _os_activity_create(&_mh_execute_header, "com.apple.nfcd.reader.burnoutTimer", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v4.opaque[0] = 0;
  v4.opaque[1] = 0;
  os_activity_scope_enter(v2, &v4);
  os_activity_scope_leave(&v4);

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleReaderBurnoutProtectionTimer];
}

void sub_1000A206C(uint64_t a1)
{
  v2 = _os_activity_create(&_mh_execute_header, "com.apple.nfcd.reader.burnoutDebounceTimer", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v5.opaque[0] = 0;
  v5.opaque[1] = 0;
  os_activity_scope_enter(v2, &v5);
  os_activity_scope_leave(&v5);

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleReaderBurnoutProtectionDebounceTimer];
  }
}

void sub_1000A20EC(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained thermalStateChanged:a2];
    WeakRetained = v4;
  }
}

uint64_t sub_1000A3B30(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = [[NSData alloc] initWithBytes:&unk_100296E28 length:7];
  v4 = [v3 NF_asHexString];

  v5 = [[NSData alloc] initWithBytes:&unk_100296E2F length:7];
  v6 = [v5 NF_asHexString];

  v7 = [[NSData alloc] initWithBytes:&unk_100296E36 length:9];
  v8 = [v7 NF_asHexString];

  if ([v2 hasPrefix:v4] & 1) != 0 || (objc_msgSend(v2, "hasPrefix:", v6))
  {
    v9 = 1;
  }

  else
  {
    v9 = [v2 hasPrefix:v8];
  }

  return v9;
}

void sub_1000A3C44(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = objc_opt_self();
  v90 = +[NSDate now];
  v8 = [v6 objectForKeyedSubscript:@"EventType"];
  v89 = v8;
  if (v8)
  {
    v9 = v8;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v6 objectForKeyedSubscript:@"appletIdentifier"];
      if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        if (sub_1000A3B30(NFUnifiedAccessTransactionCALogger, v10))
        {
          if ([v9 isEqualToString:@"ActivityTimeout"])
          {
            v87 = 65278;
          }

          else
          {
            v87 = (a3 << 8);
            v44 = [v6 objectForKeyedSubscript:@"ptaTransactionMode"];

            if (v44)
            {
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              Logger = NFLogGetLogger();
              if (Logger)
              {
                v46 = Logger;
                Class = object_getClass(v7);
                isMetaClass = class_isMetaClass(Class);
                ClassName = object_getClassName(v7);
                v48 = a4;
                Name = sel_getName("checkForUnifiedAccessTransaction:transactionType:errorCode:");
                v50 = [v6 objectForKeyedSubscript:@"ptaTransactionMode"];
                v79 = Name;
                a4 = v48;
                v9 = v89;
                v51 = 45;
                if (isMetaClass)
                {
                  v51 = 43;
                }

                v46(6, "%c[%{public}s %{public}s]:%i transactionMode = %{public}@, transactionType = 0x%0X", v51, ClassName, v79, 160, v50, a3);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v52 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
              {
                v53 = object_getClass(v7);
                if (class_isMetaClass(v53))
                {
                  v54 = 43;
                }

                else
                {
                  v54 = 45;
                }

                v84 = v54;
                v55 = object_getClassName(v7);
                v56 = a4;
                v57 = sel_getName("checkForUnifiedAccessTransaction:transactionType:errorCode:");
                v58 = [v6 objectForKeyedSubscript:@"ptaTransactionMode"];
                *buf = 67110402;
                v94 = v84;
                v95 = 2082;
                v96 = v55;
                v9 = v89;
                v97 = 2082;
                v98 = v57;
                a4 = v56;
                v99 = 1024;
                v100 = 160;
                v101 = 2114;
                v102 = v58;
                v103 = 1024;
                v104 = a3;
                _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i transactionMode = %{public}@, transactionType = 0x%0X", buf, 0x32u);
              }

              v59 = [v6 objectForKeyedSubscript:@"ptaTransactionMode"];
              v87 = [v59 charValue] | v87;
            }
          }

          if ([v9 isEqualToString:@"EndEvent"])
          {
            v60 = [v6 objectForKeyedSubscript:@"result"];

            if (v60)
            {
              v61 = [v6 objectForKeyedSubscript:@"result"];
              a4 = [v61 intValue];
            }
          }

          v62 = [v6 objectForKeyedSubscript:@"HomeKitManufacturer"];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v25 = [v6 objectForKeyedSubscript:@"HomeKitManufacturer"];
          }

          else
          {
            v25 = @"Unknown";
          }

          v64 = [v6 objectForKeyedSubscript:@"HomeKitModel"];
          objc_opt_class();
          v65 = objc_opt_isKindOfClass();

          if (v65)
          {
            v24 = [v6 objectForKeyedSubscript:@"HomeKitModel"];
          }

          else
          {
            v24 = @"Unknown";
          }

          v66 = [v6 objectForKeyedSubscript:@"keyType"];
          objc_opt_class();
          v67 = objc_opt_isKindOfClass();

          if (v67)
          {
            v20 = [v6 objectForKeyedSubscript:@"keyType"];
          }

          else
          {
            v20 = &off_100330D38;
          }

          v85 = a4;
          v68 = [v6 objectForKeyedSubscript:@"HomeKitManufacturer"];
          objc_opt_class();
          v69 = objc_opt_isKindOfClass();

          if (v69)
          {
            v23 = [v6 objectForKeyedSubscript:@"HomeKitManufacturer"];
          }

          else
          {
            v23 = @"Unknown";
          }

          v70 = [v6 objectForKeyedSubscript:@"HomeKitModel"];
          objc_opt_class();
          v71 = objc_opt_isKindOfClass();

          if (v71)
          {
            v22 = [v6 objectForKeyedSubscript:@"HomeKitModel"];
          }

          else
          {
            v22 = @"Unknown";
          }

          v72 = [v6 objectForKeyedSubscript:@"HomeKitFirmwareVersion"];
          objc_opt_class();
          v73 = objc_opt_isKindOfClass();

          if (v73)
          {
            v19 = [v6 objectForKeyedSubscript:@"HomeKitFirmwareVersion"];
          }

          else
          {
            v19 = @"Unknown";
          }

          v81 = a3 - 4;
          v74 = [v6 objectForKeyedSubscript:@"ptaTransactionMode"];
          objc_opt_class();
          v75 = objc_opt_isKindOfClass();

          if (v75)
          {
            v21 = [v6 objectForKeyedSubscript:@"ptaTransactionMode"];
          }

          else
          {
            v21 = &off_100330D50;
          }

          v91[0] = @"endEventEndTime";
          v91[1] = @"primaryAID";
          v92[0] = v90;
          v92[1] = v10;
          v91[2] = @"transactionType";
          v88 = [NSNumber numberWithInteger:v87];
          v92[2] = v88;
          v91[3] = @"errorCode";
          v86 = [NSNumber numberWithInteger:v85];
          v92[3] = v86;
          v91[4] = @"eventIsAStepUpEvent";
          v82 = [NSNumber numberWithBool:v81 < 3];
          v92[4] = v82;
          v92[5] = v25;
          v91[5] = @"manufacturer";
          v91[6] = @"modelInfo";
          v92[6] = v24;
          v92[7] = v20;
          v91[7] = @"keyType";
          v91[8] = @"infoVendorID";
          v92[8] = v23;
          v92[9] = v22;
          v91[9] = @"infoProductID";
          v91[10] = @"infoFWVersion";
          v91[11] = @"ptaTransactionMode";
          v92[10] = v19;
          v92[11] = v21;
          v32 = [NSDictionary dictionaryWithObjects:v92 forKeys:v91 count:12];

          sub_1000A4788(NFUnifiedAccessTransactionCALogger, v32, 0);
          goto LABEL_29;
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v36 = NFLogGetLogger();
        if (v36)
        {
          v37 = v36;
          v38 = object_getClass(v7);
          v39 = class_isMetaClass(v38);
          v40 = object_getClassName(v7);
          v78 = sel_getName("checkForUnifiedAccessTransaction:transactionType:errorCode:");
          v41 = 45;
          if (v39)
          {
            v41 = 43;
          }

          v37(6, "%c[%{public}s %{public}s]:%i No valid Unified Access Identifiers", v41, v40, v78, 214);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v32 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
LABEL_28:
          v19 = @"Unknown";
          v20 = &off_100330D38;
          v21 = &off_100330D50;
          v22 = @"Unknown";
          v23 = @"Unknown";
          v24 = @"Unknown";
          v25 = @"Unknown";
LABEL_29:

          goto LABEL_30;
        }

        v42 = object_getClass(v7);
        if (class_isMetaClass(v42))
        {
          v43 = 43;
        }

        else
        {
          v43 = 45;
        }

        *buf = 67109890;
        v94 = v43;
        v95 = 2082;
        v96 = object_getClassName(v7);
        v97 = 2082;
        v98 = sel_getName("checkForUnifiedAccessTransaction:transactionType:errorCode:");
        v99 = 1024;
        v100 = 214;
        v35 = "%c[%{public}s %{public}s]:%i No valid Unified Access Identifiers";
      }

      else
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v26 = NFLogGetLogger();
        if (v26)
        {
          v27 = v26;
          v28 = object_getClass(v7);
          v29 = class_isMetaClass(v28);
          v30 = object_getClassName(v7);
          v77 = sel_getName("checkForUnifiedAccessTransaction:transactionType:errorCode:");
          v31 = 45;
          if (v29)
          {
            v31 = 43;
          }

          v27(6, "%c[%{public}s %{public}s]:%i No valid Identifier", v31, v30, v77, 145);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v32 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_28;
        }

        v33 = object_getClass(v7);
        if (class_isMetaClass(v33))
        {
          v34 = 43;
        }

        else
        {
          v34 = 45;
        }

        *buf = 67109890;
        v94 = v34;
        v95 = 2082;
        v96 = object_getClassName(v7);
        v97 = 2082;
        v98 = sel_getName("checkForUnifiedAccessTransaction:transactionType:errorCode:");
        v99 = 1024;
        v100 = 145;
        v35 = "%c[%{public}s %{public}s]:%i No valid Identifier";
      }

      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, v35, buf, 0x22u);
      goto LABEL_28;
    }
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v11 = NFLogGetLogger();
  if (v11)
  {
    v12 = v11;
    v13 = object_getClass(v7);
    v14 = class_isMetaClass(v13);
    v15 = object_getClassName(v7);
    v76 = sel_getName("checkForUnifiedAccessTransaction:transactionType:errorCode:");
    v16 = 45;
    if (v14)
    {
      v16 = 43;
    }

    v12(6, "%c[%{public}s %{public}s]:%i No event from ATL, HCI didn't contain a relevant message", v16, v15, v76, 139);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v10 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v17 = object_getClass(v7);
    if (class_isMetaClass(v17))
    {
      v18 = 43;
    }

    else
    {
      v18 = 45;
    }

    *buf = 67109890;
    v94 = v18;
    v95 = 2082;
    v96 = object_getClassName(v7);
    v97 = 2082;
    v98 = sel_getName("checkForUnifiedAccessTransaction:transactionType:errorCode:");
    v99 = 1024;
    v100 = 139;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i No event from ATL, HCI didn't contain a relevant message", buf, 0x22u);
  }

  v19 = @"Unknown";
  v20 = &off_100330D38;
  v21 = &off_100330D50;
  v22 = @"Unknown";
  v23 = @"Unknown";
  v24 = @"Unknown";
  v25 = @"Unknown";
LABEL_30:
}

void sub_1000A4788(uint64_t a1, void *a2, int a3)
{
  v147 = a2;
  objc_opt_self();
  if (!a3)
  {
    v28 = +[NSUUID UUID];
    v29 = [v28 UUIDString];

    v30 = [v147 objectForKeyedSubscript:@"endEventEndTime"];
    if (v30 && (v31 = v30, [v147 objectForKeyedSubscript:@"endEventEndTime"], v32 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v33 = objc_opt_isKindOfClass(), v32, v31, (v33 & 1) != 0))
    {
      v19 = [v147 objectForKeyedSubscript:@"endEventEndTime"];
      v34 = [v147 objectForKeyedSubscript:@"ptaTransactionMode"];

      if (v34)
      {
        v35 = [v147 objectForKeyedSubscript:@"ptaTransactionMode"];
        v36 = [v35 charValue];

        v37 = v36 == 2;
      }

      else
      {
        v37 = 0;
      }

      v117 = [v147 objectForKeyedSubscript:@"primaryAID"];
      if (v117)
      {
        v118 = v117;
        v119 = [v147 objectForKeyedSubscript:@"primaryAID"];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v145 = [v147 objectForKeyedSubscript:@"primaryAID"];
          v121 = [v147 objectForKeyedSubscript:@"transactionType"];
          if (v121 && (v122 = v121, [v147 objectForKeyedSubscript:@"transactionType"], v123 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v124 = objc_opt_isKindOfClass(), v123, v122, (v124 & 1) != 0))
          {
            v21 = [v147 objectForKeyedSubscript:@"transactionType"];
            v125 = [v147 objectForKeyedSubscript:@"errorCode"];
            if (v125 && (v126 = v125, [v147 objectForKeyedSubscript:@"errorCode"], v127 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v128 = objc_opt_isKindOfClass(), v127, v126, (v128 & 1) != 0))
            {
              v139 = [v147 objectForKeyedSubscript:@"errorCode"];
              v129 = [v147 objectForKeyedSubscript:@"eventIsAStepUpEvent"];
              if (v129 && (v130 = v129, [v147 objectForKeyedSubscript:@"eventIsAStepUpEvent"], v131 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v132 = objc_opt_isKindOfClass(), v131, v130, (v132 & 1) != 0))
              {
                v133 = [v147 objectForKeyedSubscript:@"eventIsAStepUpEvent"];
                v40 = [v133 BOOLValue];

                v39 = 1;
              }

              else
              {
                v39 = 0;
                v40 = 0;
              }
            }

            else
            {
              v39 = 0;
              v40 = 0;
              v139 = &off_100330D50;
            }
          }

          else
          {
            v39 = 0;
            v40 = 0;
            v21 = &off_100330D50;
            v139 = &off_100330D50;
          }

          v38 = v145;
LABEL_17:
          v41 = [[NSData alloc] initWithBytes:&unk_100296E36 length:9];
          v42 = [v41 NF_asHexString];
          v144 = v38;
          v43 = [v38 hasPrefix:v42];

          if (v43)
          {
            v44 = [v21 unsignedIntegerValue];
            if (v40)
            {
              v45 = v147;
              v22 = v139;
              if (qword_10035D9B0 != 1 || qword_10035D9B8 != 2)
              {
LABEL_26:
                v48 = [v45 objectForKeyedSubscript:@"manufacturer"];
                objc_opt_class();
                v49 = objc_opt_isKindOfClass();

                if (v49)
                {
                  v138 = [v147 objectForKeyedSubscript:@"manufacturer"];
                }

                else
                {
                  v138 = @"Unknown";
                }

                v50 = [v147 objectForKeyedSubscript:@"modelInfo"];
                objc_opt_class();
                v51 = objc_opt_isKindOfClass();

                if (v51)
                {
                  v143 = [v147 objectForKeyedSubscript:@"modelInfo"];
                }

                else
                {
                  v143 = @"Unknown";
                }

                v52 = [v147 objectForKeyedSubscript:@"keyType"];
                objc_opt_class();
                v53 = objc_opt_isKindOfClass();

                v146 = &off_100330D50;
                if (v53)
                {
                  v146 = [v147 objectForKeyedSubscript:@"keyType"];
                }

                v54 = [v147 objectForKeyedSubscript:@"infoVendorID"];
                objc_opt_class();
                v55 = objc_opt_isKindOfClass();

                if (v55)
                {
                  v142 = [v147 objectForKeyedSubscript:@"infoVendorID"];
                }

                else
                {
                  v142 = @"Unknown";
                }

                v56 = [v147 objectForKeyedSubscript:@"infoProductID"];
                objc_opt_class();
                v57 = objc_opt_isKindOfClass();

                if (v57)
                {
                  v141 = [v147 objectForKeyedSubscript:@"infoProductID"];
                }

                else
                {
                  v141 = @"Unknown";
                }

                v58 = [v147 objectForKeyedSubscript:@"infoFWVersion"];
                objc_opt_class();
                v59 = objc_opt_isKindOfClass();

                if (v59)
                {
                  v140 = [v147 objectForKeyedSubscript:@"infoFWVersion"];
                }

                else
                {
                  v140 = @"Unknown";
                }

                v60 = v144;
                v20 = v138;
                if (v39)
                {
                  if (qword_10035D9A0)
                  {
                    [v19 timeIntervalSinceDate:?];
                    v62 = v61;
                  }

                  else
                  {
                    v62 = 0.0;
                  }

                  if (qword_10035D9A8)
                  {
                    v63 = v40;
                  }

                  else
                  {
                    v63 = 0;
                  }

                  if (v63 == 1)
                  {
                    [qword_10035D9A8 timeIntervalSinceDate:qword_10035D9A0];
                    v65 = ((v62 - v64) * 1000.0);
                  }

                  else
                  {
                    v65 = 0;
                  }

                  v66 = objc_opt_new();
                  [v66 setObject:v29 forKeyedSubscript:@"transactionUUID"];
                  [v66 setObject:v21 forKeyedSubscript:@"transactionType"];
                  [v66 setObject:v144 forKeyedSubscript:@"primaryAID"];
                  [v66 setObject:v22 forKeyedSubscript:@"errorCode"];
                  [v66 setObject:v138 forKeyedSubscript:@"manufacturer"];
                  [v66 setObject:v143 forKeyedSubscript:@"modelInfo"];
                  [v66 setObject:v146 forKeyedSubscript:@"keyType"];
                  [v66 setObject:v142 forKeyedSubscript:@"infoVendorID"];
                  [v66 setObject:v141 forKeyedSubscript:@"infoProductID"];
                  [v66 setObject:v140 forKeyedSubscript:@"infoFWVersion"];
                  if (qword_10035D9A0 || [v22 integerValue] != 5)
                  {
                    v136 = v19;
                    v137 = v29;
                    v67 = [NSNumber numberWithUnsignedInteger:(v62 * 1000.0)];
                    [v66 setObject:v67 forKeyedSubscript:@"totalDurationMsec"];

                    v68 = [NSNumber numberWithUnsignedInteger:v65];
                    [v66 setObject:v68 forKeyedSubscript:@"stepUpDurationMsec"];

                    v69 = +[NFCALogger sharedCALogger];
                    [v69 postCAEventFor:@"com.apple.sts.unifiedAccessTransactionEvent" eventInput:v66];

                    v70 = [v21 integerValue];
                    v71 = [v22 integerValue];
                    objc_opt_self();
                    v72 = v70 != 1;
                    v73 = v71 != 64;
                    v74 = (v70 & 0xFE00) == 0x400 || (v70 & 0xFF00) == 1536;
                    v75 = v74;
                    v76 = v74 || v70 != 1;
                    if (v74)
                    {
                      v73 = 1;
                    }

                    if (v73)
                    {
                      v77 = &off_100330D50;
                    }

                    else
                    {
                      v77 = &off_100330D68;
                    }

                    if ((v75 & (v71 == 0)) != 0)
                    {
                      v78 = &off_100330D68;
                    }

                    else
                    {
                      v78 = v77;
                    }

                    v148 = @"totalStepUpTxAttempted";
                    v149 = @"totalSuccessfulStepUpTx";
                    if (v75)
                    {
                      v79 = &off_100330D68;
                    }

                    else
                    {
                      v79 = &off_100330D50;
                    }

                    if (v75)
                    {
                      v80 = v78;
                    }

                    else
                    {
                      v80 = &off_100330D50;
                    }

                    v155 = v79;
                    v156 = v80;
                    if (v76)
                    {
                      v81 = &off_100330D50;
                    }

                    else
                    {
                      v81 = &off_100330D68;
                    }

                    if (v76)
                    {
                      v82 = &off_100330D50;
                    }

                    else
                    {
                      v82 = v78;
                    }

                    v150 = @"totalExpeditedFastTxAttempted";
                    v151 = @"totalSuccessfulExpeditedFastTx";
                    v83 = v75 ^ 1;
                    v157 = v81;
                    v158 = v82;
                    v84 = (v72 & v83) == 0;
                    if ((v72 & v83) != 0)
                    {
                      v85 = &off_100330D68;
                    }

                    else
                    {
                      v85 = &off_100330D50;
                    }

                    v152 = @"totalExpeditedStandardTxAttempted";
                    v153 = @"totalSuccessfulExpeditedStandardTx";
                    if (v84)
                    {
                      v86 = &off_100330D50;
                    }

                    else
                    {
                      v86 = v78;
                    }

                    v159 = v85;
                    v160 = v86;
                    v87 = [NSDictionary dictionaryWithObjects:&v155 forKeys:&v148 count:6];
                    v88 = +[NFCALogger sharedCALogger];
                    [v88 postCAEventFor:@"com.apple.sts.dailyUnifiedAccessStatistics" eventInput:v87];

                    v135 = v21;
                    v89 = [v21 integerValue];
                    v134 = [v146 integerValue];
                    v90 = [v22 integerValue];
                    v91 = v144;
                    objc_opt_self();
                    v92 = v89 != 1;
                    v93 = (v89 & 0xFE00) == 0x400 || (v89 & 0xFF00) == 1536;
                    v94 = v93;
                    v95 = v93 || v89 != 1;
                    if (v93 || v90 != 64)
                    {
                      v97 = &off_100330D50;
                    }

                    else
                    {
                      v97 = &off_100330D68;
                    }

                    if ((v94 & (v90 == 0)) != 0)
                    {
                      v98 = &off_100330D68;
                    }

                    else
                    {
                      v98 = v97;
                    }

                    v99 = [[NSData alloc] initWithBytes:&unk_100296E36 length:9];
                    v100 = [v99 NF_asHexString];
                    v101 = [v91 hasPrefix:v100];

                    if (v94)
                    {
                      v102 = &off_100330D68;
                    }

                    else
                    {
                      v102 = &off_100330D50;
                    }

                    v103 = v94 ^ 1;
                    if (v94)
                    {
                      v104 = v98;
                    }

                    else
                    {
                      v104 = &off_100330D50;
                    }

                    if (v95)
                    {
                      v105 = &off_100330D50;
                    }

                    else
                    {
                      v105 = &off_100330D68;
                    }

                    if (v95)
                    {
                      v106 = &off_100330D50;
                    }

                    else
                    {
                      v106 = v98;
                    }

                    v107 = v92 & v103;
                    if ((v92 & v103) != 0)
                    {
                      v108 = &off_100330D68;
                    }

                    else
                    {
                      v108 = &off_100330D50;
                    }

                    if (v101)
                    {
                      v148 = @"aliroStepUpTxAttempted";
                      v149 = @"aliroSuccessfulStepUpTx";
                      v155 = v102;
                      v156 = v104;
                      v150 = @"aliroFastTxAttempted";
                      v151 = @"aliroSuccessfulFastTx";
                      v157 = v105;
                      v158 = v106;
                      v152 = @"aliroStandardTxAttempted";
                      v153 = @"aliroSuccessfulStandardTx";
                      if (v107)
                      {
                        v109 = v98;
                      }

                      else
                      {
                        v109 = &off_100330D50;
                      }

                      v159 = v108;
                      v160 = v109;
                      v154 = @"aliroAuxiliaryReaderKeyTxAttempted";
                      if ((v134 & 2) != 0)
                      {
                        v110 = &off_100330D68;
                      }

                      else
                      {
                        v110 = &off_100330D50;
                      }

                      v161 = v110;
                      v111 = 7;
                    }

                    else
                    {
                      v148 = @"uaStepUpTxAttempted";
                      v149 = @"uaSuccessfulStepUpTx";
                      v155 = v102;
                      v156 = v104;
                      v150 = @"uaFastTxAttempted";
                      v151 = @"uaSuccessfulFastTx";
                      v157 = v105;
                      v158 = v106;
                      v152 = @"uaStandardTxAttempted";
                      v153 = @"uaSuccessfulStandardTx";
                      if (v107)
                      {
                        v112 = v98;
                      }

                      else
                      {
                        v112 = &off_100330D50;
                      }

                      v159 = v108;
                      v160 = v112;
                      v111 = 6;
                    }

                    v113 = [NSDictionary dictionaryWithObjects:&v155 forKeys:&v148 count:v111];
                    v114 = +[NFCALogger sharedCALogger];
                    [v114 postCAEventFor:@"com.apple.sts.dailyHomeHydraTransactionStatistics" eventInput:v113];

                    v19 = v136;
                    v29 = v137;
                    v21 = v135;
                    v60 = v144;
                    v20 = v138;
                    v22 = v139;
                  }
                }

                v115 = qword_10035D9A0;
                qword_10035D9A0 = 0;

                v116 = qword_10035D9A8;
                qword_10035D9A8 = 0;

                qword_10035D9B0 = 0;
                qword_10035D9B8 = 0;

                v25 = v142;
                v24 = v143;
                v23 = v146;
                v27 = v140;
                v26 = v141;
                goto LABEL_139;
              }

              v46 = 6;
LABEL_24:
              v47 = [NSNumber numberWithInteger:v46 | v44 & 0xFFFFFFFFFFFFFF00];

              v21 = v47;
              v45 = v147;
              goto LABEL_26;
            }

            if (qword_10035D9B0 == 1 && v37)
            {
              v46 = 3;
              v22 = v139;
              goto LABEL_24;
            }
          }

          v45 = v147;
          v22 = v139;
          goto LABEL_26;
        }
      }
    }

    else
    {
      v37 = 0;
      v19 = 0;
    }

    v38 = 0;
    v39 = 0;
    v40 = 0;
    v21 = &off_100330D50;
    v139 = &off_100330D50;
    goto LABEL_17;
  }

  v4 = [v147 objectForKeyedSubscript:@"startEventStartTime"];
  if (v4)
  {
    v5 = v4;
    v6 = [v147 objectForKeyedSubscript:@"startEventStartTime"];
    objc_opt_class();
    v7 = objc_opt_isKindOfClass();

    if (v7)
    {
      v8 = [v147 objectForKeyedSubscript:@"startEventStartTime"];
      v9 = qword_10035D9A0;
      qword_10035D9A0 = v8;

      v10 = [v147 objectForKeyedSubscript:@"ptaTransactionMode"];

      if (v10)
      {
        v11 = [v147 objectForKeyedSubscript:@"ptaTransactionMode"];
        LOBYTE(qword_10035D9B0) = [v11 charValue];
        qword_10035D9B0 = qword_10035D9B0;
      }
    }
  }

  v12 = [v147 objectForKeyedSubscript:@"stepUpEventStartTime"];
  if (!v12)
  {
    goto LABEL_14;
  }

  v13 = v12;
  v14 = [v147 objectForKeyedSubscript:@"stepUpEventStartTime"];
  objc_opt_class();
  v15 = objc_opt_isKindOfClass();

  if ((v15 & 1) == 0)
  {
    goto LABEL_14;
  }

  v16 = [v147 objectForKeyedSubscript:@"stepUpEventStartTime"];
  v17 = qword_10035D9A8;
  qword_10035D9A8 = v16;

  v18 = [v147 objectForKeyedSubscript:@"ptaTransactionMode"];

  if (!v18)
  {
LABEL_14:
    v20 = @"Unknown";
    v21 = &off_100330D50;
    v22 = &off_100330D50;
    v23 = &off_100330D50;
    v24 = @"Unknown";
    v25 = @"Unknown";
    v26 = @"Unknown";
    v27 = @"Unknown";
    goto LABEL_140;
  }

  v19 = [v147 objectForKeyedSubscript:@"ptaTransactionMode"];
  qword_10035D9B8 = [v19 charValue];
  v20 = @"Unknown";
  v21 = &off_100330D50;
  v22 = &off_100330D50;
  v23 = &off_100330D50;
  v24 = @"Unknown";
  v25 = @"Unknown";
  v26 = @"Unknown";
  v27 = @"Unknown";
LABEL_139:

LABEL_140:
}

uint64_t sub_1000A5614(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  v6 = [v4 objectForKeyedSubscript:@"appletIdentifier"];
  v7 = [v5 objectForKeyedSubscript:@"readerIdentifier"];
  v57 = [v7 uppercaseString];

  v8 = [[NSData alloc] initWithBytes:&unk_100296E36 length:9];
  v9 = [v8 NF_asHexString];
  v10 = [v6 hasPrefix:v9];

  if (v10)
  {
    v11 = [v4 objectForKeyedSubscript:@"ECP2Info"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v55 = v5;
    v56 = v4;
    v54 = v6;
    if (isKindOfClass)
    {
      v13 = [v4 objectForKeyedSubscript:@"ECP2Info"];
      v14 = v13;
      if (v13)
      {
        v15 = [v13 objectForKeyedSubscript:@"TCIs"];
      }

      else
      {
        v15 = 0;
      }

      v17 = [v14 objectForKeyedSubscript:@"associatedReaderIdentifiers"];
      objc_opt_class();
      v18 = objc_opt_isKindOfClass();

      if (v18)
      {
        [v14 objectForKeyedSubscript:@"associatedReaderIdentifiers"];
        v66 = 0u;
        v67 = 0u;
        v68 = 0u;
        v19 = v69 = 0u;
        v16 = [v19 countByEnumeratingWithState:&v66 objects:v72 count:16];
        if (v16)
        {
          v52 = v15;
          v20 = *v67;
          while (2)
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v67 != v20)
              {
                objc_enumerationMutation(v19);
              }

              v22 = *(*(&v66 + 1) + 8 * i);
              if (v22)
              {
                v23 = [v22 objectForKeyedSubscript:@"readerIdentifier"];
                v24 = [v23 NF_asHexString];

                if (v24)
                {
                  v25 = [v24 uppercaseString];
                  v26 = [v57 hasPrefix:v25];

                  if (v26)
                  {
                    v53 = 0;
                    v16 = 2;
                    goto LABEL_22;
                  }
                }
              }
            }

            v16 = [v19 countByEnumeratingWithState:&v66 objects:v72 count:16];
            if (v16)
            {
              continue;
            }

            break;
          }

          v53 = 1;
LABEL_22:
          v15 = v52;
        }

        else
        {
          v53 = 1;
        }
      }

      else
      {
        v16 = 0;
        v53 = 1;
      }
    }

    else
    {
      v15 = 0;
      v16 = 0;
      v53 = 1;
    }

    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v27 = v15;
    v28 = [v27 countByEnumeratingWithState:&v62 objects:v71 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v63;
      do
      {
        for (j = 0; j != v29; j = j + 1)
        {
          if (*v63 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v62 + 1) + 8 * j);
          v33 = [[NSData alloc] initWithBytes:&unk_100296E3F length:3];
          LODWORD(v32) = [v32 isEqual:v33];

          if (v32)
          {
            v34 = 0x10000;
          }

          else
          {
            v34 = 0x20000;
          }

          v16 = v34 | v16;
        }

        v29 = [v27 countByEnumeratingWithState:&v62 objects:v71 count:16];
      }

      while (v29);
    }

    v4 = v56;
    v35 = [v56 objectForKeyedSubscript:@"readerIdentifier"];
    objc_opt_class();
    v36 = objc_opt_isKindOfClass();

    if (v36)
    {
      v37 = [v56 objectForKeyedSubscript:@"readerIdentifier"];
      v38 = [v37 uppercaseString];

      v16 = v16 | [v57 hasPrefix:v38];
    }

    else
    {
      v6 = v54;
      v5 = v55;
      if (!v53)
      {
        goto LABEL_53;
      }

      v39 = [v56 objectForKeyedSubscript:@"associatedReaders"];
      objc_opt_class();
      v40 = objc_opt_isKindOfClass();

      if ((v40 & 1) == 0)
      {
        goto LABEL_53;
      }

      [v56 objectForKeyedSubscript:@"associatedReaders"];
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      v38 = v61 = 0u;
      v41 = [v38 countByEnumeratingWithState:&v58 objects:v70 count:16];
      if (v41)
      {
        v42 = v41;
        v43 = *v59;
        v44 = v57;
        while (2)
        {
          for (k = 0; k != v42; k = k + 1)
          {
            if (*v59 != v43)
            {
              objc_enumerationMutation(v38);
            }

            v46 = *(*(&v58 + 1) + 8 * k);
            if (v46)
            {
              v47 = [v46 objectForKeyedSubscript:@"readerIdentifier"];
              v48 = [v47 NF_asHexString];

              if (v48)
              {
                v49 = [v48 uppercaseString];
                v50 = [v44 hasPrefix:v49];

                if (v50)
                {
                  v16 = v16 | 2;

                  goto LABEL_56;
                }

                v44 = v57;
              }
            }
          }

          v42 = [v38 countByEnumeratingWithState:&v58 objects:v70 count:16];
          if (v42)
          {
            continue;
          }

          break;
        }
      }

LABEL_56:

      v4 = v56;
    }

    v6 = v54;
    v5 = v55;

LABEL_53:
    goto LABEL_54;
  }

  v16 = 0;
LABEL_54:

  return v16;
}

void sub_1000A5C04(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = +[NFCALogger sharedCALogger];
  [v3 postCAEventFor:@"com.apple.sts.dailyUnifiedAccessDeviceStatistics" eventInput:v2];
}

void sub_1000A5C78(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = +[NFCALogger sharedCALogger];
  [v3 postCAEventFor:@"com.apple.sts.dailyHomeHydraDeviceStatistics" eventInput:v2];
}

void sub_1000A5CEC(uint64_t a1, void *a2)
{
  v5 = a2;
  objc_opt_self();
  v2 = v5;
  if (v5)
  {
    v3 = [v5 objectForKeyedSubscript:@"appletIdentifier"];
    if (v3)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (sub_1000A3B30(NFUnifiedAccessTransactionCALogger, v3))
        {
          v4 = [v5 objectForKeyedSubscript:@"EventType"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v4 isEqualToString:@"ActivityTimeout"])
          {
            sub_1000A3C44(NFUnifiedAccessTransactionCALogger, v5, 65278, 5);
          }
        }
      }
    }

    v2 = v5;
  }
}

void sub_1000A659C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 152);
  if (v3)
  {
    (*(v3 + 16))();
    v4 = *(a1 + 32);
    v5 = *(v4 + 152);
    *(v4 + 152) = 0;

    v2 = *(a1 + 32);
  }

  if (*(v2 + 176) == 1)
  {

    [v2 endSession:&stru_100317CE0];
  }
}

void sub_1000A6790(uint64_t a1)
{
  if (a1)
  {
    v10 = 3840;
    v9 = 32;
    v8 = -256;
    v7 = -256;
    v2 = objc_opt_new();
    v6 = 4;
    [v2 appendBytes:&v6 length:1];
    v6 = 6;
    [v2 appendBytes:&v6 length:1];
    v3 = [NSData NF_dataWithHexString:@"E104"];
    [v2 appendData:v3];
    v5 = bswap32(*(a1 + 30)) >> 16;
    [v2 appendBytes:&v5 length:2];
    v6 = 0;
    [v2 appendBytes:&v6 length:1];
    v6 = *(a1 + 29) - 1;
    [v2 appendBytes:&v6 length:1];
    v4 = objc_opt_new();
    [v4 appendBytes:&v10 length:2];
    [v4 appendBytes:&v9 length:1];
    [v4 appendBytes:&v8 length:2];
    [v4 appendBytes:&v7 length:2];
    [v4 appendData:v2];
    [*(a1 + 16) setObject:v4 forKey:@"E103"];
  }
}

void sub_1000A775C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v5 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("setNdefData:");
      v8 = 45;
      if (isMetaClass)
      {
        v8 = 43;
      }

      v5(6, "%c[%{public}s %{public}s]:%i %{public}@", v8, ClassName, Name, 354, v3);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v9 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = object_getClass(a1);
      if (class_isMetaClass(v10))
      {
        v11 = 43;
      }

      else
      {
        v11 = 45;
      }

      *buf = 67110146;
      v28 = v11;
      v29 = 2082;
      v30 = object_getClassName(a1);
      v31 = 2082;
      v32 = sel_getName("setNdefData:");
      v33 = 1024;
      v34 = 354;
      v35 = 2114;
      v36 = v3;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
    }

    if ([v3 length] <= 0x2000)
    {
      if (v3)
      {
        buf[0] = [v3 length] >> 8;
        buf[1] = [v3 length];
        v23 = [[NSMutableData alloc] initWithBytes:buf length:2];
        [v23 appendData:v3];
        [*(a1 + 16) setObject:v23 forKey:@"E104"];
        *(a1 + 32) = [v3 length];
      }

      else
      {
        [*(a1 + 16) removeObjectForKey:@"E104"];
      }

      sub_1000A6790(a1);
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v12 = NFLogGetLogger();
      if (v12)
      {
        v13 = v12;
        v14 = object_getClass(a1);
        v15 = class_isMetaClass(v14);
        v16 = object_getClassName(a1);
        v26 = sel_getName("setNdefData:");
        v17 = 45;
        if (v15)
        {
          v17 = 43;
        }

        v13(3, "%c[%{public}s %{public}s]:%i Invalid tag size", v17, v16, v26, 357);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v18 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = object_getClass(a1);
        if (class_isMetaClass(v19))
        {
          v20 = 43;
        }

        else
        {
          v20 = 45;
        }

        v21 = object_getClassName(a1);
        v22 = sel_getName("setNdefData:");
        *buf = 67109890;
        v28 = v20;
        v29 = 2082;
        v30 = v21;
        v31 = 2082;
        v32 = v22;
        v33 = 1024;
        v34 = 357;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid tag size", buf, 0x22u);
      }
    }
  }
}

_WORD *sub_1000A7AB0(id *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = [a1[2] objectForKey:@"E104"];
    v3 = v2;
    if (v1[16])
    {
      v4 = [v2 subdataWithRange:2];
    }

    else
    {
      v4 = objc_opt_new();
    }

    v1 = v4;
  }

  return v1;
}

BOOL sub_1000A7B74()
{
  objc_opt_self();
  v1 = sub_10027ED78(v0);
  v3 = *(v2 + 112);
  v4 = sub_10027ED9C(v1);
  v6 = *(v5 + 120);
  v7 = sub_10027EDC0(v4);
  v9 = *(v8 + 128);
  v10 = sub_10027EDE4(v7);
  v12 = *(v11 + 136);
  v13 = sub_10027EE08(v10);
  v15 = *(v14 + 144);
  v16 = sub_10027EE2C(v13);
  v18 = *(v17 + 152);
  v19 = sub_10027EE50(v16);
  v21 = *(v20 + 160);
  v22 = sub_10027EE74(v19);
  v24 = *(v23 + 168);
  v25 = sub_10027EE98(v22);
  v27 = *(v26 + 176);
  v28 = sub_10027EEBC(v25);
  v30 = *(v29 + 184);
  v31 = sub_10027EEE0(v28);
  v33 = *(v32 + 192);
  v34 = sub_10027EB80(v31);
  v36 = *(v35 + 80);
  v37 = sub_10027ED0C(v34);
  v39 = *(v38 + 88);
  sub_10027ED30(v37);
  v41 = *(v40 + 96);
  v42 = v42 || v41 == 0;
  return !v42;
}

void *sub_1000A7C38()
{
  objc_opt_self();
  sub_10027ED30(v0);
  if (*(v2 + 96))
  {
    v3 = [NFTCCChecker alloc];
    p_isa = &v3->super.isa;
    if (v3)
    {
      *v25 = v3;
      *&v25[8] = NFTCCChecker;
      p_isa = objc_msgSendSuper2(v25, "init");
      if (p_isa)
      {
        v5 = dispatch_get_global_queue(25, 0);
        v6 = p_isa[1];
        p_isa[1] = v5;

        v8 = sub_10027EE50(v7);
        if (*(v9 + 160))
        {
          v10 = p_isa[1];
          v11 = sub_10027E5E4(v8);
          v12 = p_isa[2];
          p_isa[2] = v11;
        }
      }
    }
  }

  else
  {
    v13 = v1;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v15 = Logger;
      Class = object_getClass(v13);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v13);
      Name = sel_getName("defaultServiceChecker");
      v19 = 45;
      if (isMetaClass)
      {
        v19 = 43;
      }

      v15(3, "%c[%{public}s %{public}s]:%i Service not available", v19, ClassName, Name, 63);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v20 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = object_getClass(v13);
      if (class_isMetaClass(v21))
      {
        v22 = 43;
      }

      else
      {
        v22 = 45;
      }

      *v25 = 67109890;
      *&v25[4] = v22;
      *&v25[8] = 2082;
      *&v25[10] = object_getClassName(v13);
      v26 = 2082;
      v27 = sel_getName("defaultServiceChecker");
      v28 = 1024;
      v29 = 63;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Service not available", v25, 0x22u);
    }

    p_isa = 0;
  }

  return p_isa;
}