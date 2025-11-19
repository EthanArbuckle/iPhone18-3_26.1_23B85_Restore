uint64_t sub_100197918(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  objc_sync_enter(v1);
  v2 = *(v1 + 169);
  objc_sync_exit(v1);

  if (v2)
  {
    return 0;
  }

  v4 = *(v1 + 1);

  return NFDriverRemoteDevSend();
}

void sub_1001979AC(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  if (a1)
  {
    v8 = objc_opt_new();
    [*(a1 + 24) removeAllObjects];
    sub_10021E0D0(a1);
    v9 = NFSharedSignpostLog();
    if (os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TAGS_DETECTED", &unk_1002E8B7A, buf, 2u);
    }

    v72 = v8;

    v71 = a4;
    if (a4)
    {
      if (!a3)
      {
LABEL_48:
        [*(a1 + 56) tagDetected];
        sub_1001E6EFC(*(a1 + 48), 1);
        if (*(*(a1 + 8) + 62) & 1) == 0 || (*(a1 + 32))
        {
          v42 = *(a1 + 208);
          v43 = v72;
          [v42 handleRemoteTagsDetected:v72 dropAndRestartDiscovery:v71];

LABEL_72:
          return;
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          v58 = Logger;
          Class = object_getClass(a1);
          isMetaClass = class_isMetaClass(Class);
          ClassName = object_getClassName(a1);
          Name = sel_getName("driverDidDetectRemoteTags:count:dropAndRestartDiscovery:");
          v62 = 45;
          if (isMetaClass)
          {
            v62 = 43;
          }

          v58(3, "%c[%{public}s %{public}s]:%i Error ! Applet hasn't started reader mode, yet the field is on.", v62, ClassName, Name, 812);
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
          v67 = sel_getName("driverDidDetectRemoteTags:count:dropAndRestartDiscovery:");
          *buf = 67109890;
          v76 = v65;
          v77 = 2082;
          v78 = v66;
          v79 = 2082;
          v80 = v67;
          v81 = 1024;
          v82 = 812;
          _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Error ! Applet hasn't started reader mode, yet the field is on.", buf, 0x22u);
        }

        v55 = @"tag found during SERM, Applet did not request SERM.";
        sub_100199974(NFBugCapture, @"Applet hasn't started reader mode, yet we found a tag", @"tag found during SERM, Applet did not request SERM.", 0);
        v56 = 6;
LABEL_71:
        [NFExceptionsCALogger postAnalyticsSEFailureEvent:v56 context:v55 error:0];
        v43 = v72;
        goto LABEL_72;
      }
    }

    else if (!a2 || !a3)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v44 = NFLogGetLogger();
      if (v44)
      {
        v45 = v44;
        v46 = object_getClass(a1);
        v47 = class_isMetaClass(v46);
        v48 = object_getClassName(a1);
        v69 = sel_getName("driverDidDetectRemoteTags:count:dropAndRestartDiscovery:");
        v49 = 45;
        if (v47)
        {
          v49 = 43;
        }

        v45(3, "%c[%{public}s %{public}s]:%i Invalid tag data", v49, v48, v69, 715);
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
        v54 = sel_getName("driverDidDetectRemoteTags:count:dropAndRestartDiscovery:");
        *buf = 67109890;
        v76 = v52;
        v77 = 2082;
        v78 = v53;
        v79 = 2082;
        v80 = v54;
        v81 = 1024;
        v82 = 715;
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid tag data", buf, 0x22u);
      }

      v55 = @"NFC Invalid tag data";
      sub_100199974(NFBugCapture, @"NFC Invalid tag data", @"NFC Invalid tag data", 0);
      v56 = 5;
      goto LABEL_71;
    }

    v10 = a3;
    while (1)
    {
      v11 = objc_alloc_init(NFTagInternal);
      v12 = [[NSData alloc] initWithBytes:a2 + 72 length:*(a2 + 88)];
      [v11 _setIdentifier:v12];
      v13 = *(a2 + 8);
      if (v13 > 5)
      {
        if (v13 <= 8)
        {
          if (v13 == 6)
          {
            [v11 _setTechnology:1];
            v16 = v11;
            v17 = 11;
          }

          else if (v13 == 7)
          {
            [v11 _setTechnology:1];
            v16 = v11;
            v17 = 12;
          }

          else
          {
            [v11 _setTechnology:0];
            v16 = v11;
            v17 = 10;
          }

          goto LABEL_43;
        }

        if ((v13 - 9) < 3)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v18 = NFLogGetLogger();
          if (v18)
          {
            v19 = v18;
            v20 = object_getClass(a1);
            v21 = class_isMetaClass(v20);
            v22 = object_getClassName(a1);
            v68 = sel_getName("driverDidDetectRemoteTags:count:dropAndRestartDiscovery:");
            v23 = 45;
            if (v21)
            {
              v23 = 43;
            }

            v19(4, "%c[%{public}s %{public}s]:%i unexpected silent tag found", v23, v22, v68, 790);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v24 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            v25 = object_getClass(a1);
            if (class_isMetaClass(v25))
            {
              v26 = 43;
            }

            else
            {
              v26 = 45;
            }

            v27 = object_getClassName(a1);
            v28 = sel_getName("driverDidDetectRemoteTags:count:dropAndRestartDiscovery:");
            *buf = 67109890;
            v76 = v26;
            v77 = 2082;
            v78 = v27;
            v79 = 2082;
            v80 = v28;
            v81 = 1024;
            v82 = 790;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i unexpected silent tag found", buf, 0x22u);
          }

          goto LABEL_47;
        }
      }

      else
      {
        if (v13 > 2)
        {
          if (v13 == 3)
          {
            [v11 _setTechnology:4];
            [v11 _setType:7];
            v29 = [[NSData alloc] initWithBytes:a2 + 13 length:*(a2 + 12)];
            [v11 _setIdentifier:v29];

            v30 = [[NSData alloc] initWithBytes:a2 + 13 length:*(a2 + 12)];
            [v11 _setIDm:v30];

            v31 = [[NSData alloc] initWithBytes:a2 + 23 length:8];
            [v11 _setPMm:v31];
LABEL_45:

            goto LABEL_46;
          }

          if (v13 == 4)
          {
            [v11 _setTechnology:1];
            [v11 _setType:9];
            v36 = [[NSData alloc] initWithBytes:a2 + 19 length:*(a2 + 67)];
            [v11 _setHistoricalBytes:v36];

            v37 = [[NSData alloc] initWithBytes:a2 + 17 length:2];
            [v11 _setAtqa:v37];

            v31 = [[NSData alloc] initWithBytes:a2 + 16 length:1];
            [v11 _setSak:v31];
            goto LABEL_45;
          }

          [v11 _setTechnology:16];
          v16 = v11;
          v17 = 8;
          goto LABEL_43;
        }

        switch(v13)
        {
          case 0:
            [v11 _setTechnology:0];
            v16 = v11;
            v17 = 0;
LABEL_43:
            [v16 _setType:v17];
            break;
          case 1:
            [v11 _setTechnology:1];
            v32 = *(a2 + 12);
            if (v32 <= 2)
            {
              [v11 _setType:v32 + 1];
            }

            v33 = [[NSData alloc] initWithBytes:a2 + 19 length:*(a2 + 67)];
            [v11 _setHistoricalBytes:v33];

            v34 = [[NSData alloc] initWithBytes:a2 + 17 length:2];
            [v11 _setAtqa:v34];

            v35 = [[NSData alloc] initWithBytes:a2 + 16 length:1];
            [v11 _setSak:v35];

            v15 = *(a2 + 68);
            goto LABEL_41;
          case 2:
            [v11 _setTechnology:2];
            v14 = *(a2 + 12);
            if (v14 <= 2)
            {
              [v11 _setType:v14 | 4];
            }

            v15 = *(a2 + 16);
LABEL_41:
            [v11 _setSFGI:v15];
            break;
        }
      }

LABEL_46:
      v24 = [a1 _getExtendedIdentifier:v11];
      v38 = *(a1 + 24);
      v73[0] = @"tagHandle";
      v39 = [NSValue valueWithPointer:*a2];
      v73[1] = @"type";
      v74[0] = v39;
      v40 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v11 type]);
      v74[1] = v40;
      v41 = [NSDictionary dictionaryWithObjects:v74 forKeys:v73 count:2];
      [v38 setObject:v41 forKey:v24];

      [v11 _setUID:v24];
      [v72 addObject:v11];
LABEL_47:

      a2 += 96;
      if (!--v10)
      {
        goto LABEL_48;
      }
    }
  }
}

void sub_1001982E8(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 208);
    [v1 handleHceTargetLost];
  }
}

void sub_1001985F8(id a1)
{
  v1 = objc_alloc_init(NFBugCapture);
  v2 = qword_10035DA80;
  qword_10035DA80 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100199548(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v15 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  objc_opt_self();
  if (os_variant_has_internal_diagnostics())
  {
    v14 = +[NFBugCapture _getInstance];
    [v14 requestAutoBugCapture:v15 subType:v10 subTypeContext:v11 attachments:v12 completion:v13];
  }

  else if (v13)
  {
    v13[2](v13, 0, 0.0);
  }
}

void sub_100199700(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  objc_opt_self();
  v18 = objc_autoreleasePoolPush();
  if (os_variant_has_internal_diagnostics())
  {
    v19 = +[NFBugCapture _getInstance];
    v20 = v19;
    if (v19)
    {
      v21 = v19[1];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1001998AC;
      block[3] = &unk_10031ADC8;
      v23 = v19;
      v24 = v12;
      v25 = v13;
      v26 = v14;
      v27 = v15;
      v28 = v16;
      v29 = v17;
      dispatch_async(v21, block);
    }
  }

  objc_autoreleasePoolPop(v18);
}

void sub_1001998C4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  objc_opt_self();
  if (v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = &off_100339AA8;
  }

  v10 = v9;
  sub_100199700(NFBugCapture, v8, @"NFC-SE", 0, @"Transaction Failure", v7, v9);
}

void sub_100199974(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  objc_opt_self();
  if (v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = &off_100339AD0;
  }

  v10 = v9;
  sub_100199700(NFBugCapture, v8, @"Purple Stockholm", 0, @"Unexpected crash", v7, v9);
}

void sub_100199A24(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  objc_opt_self();
  if (v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = &off_100339AF8;
  }

  v10 = v9;
  sub_100199700(NFBugCapture, v8, @"NFC-SE", 0, @"Contactless Failure", v7, v9);
}

void sub_100199AD4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  objc_opt_self();
  sub_100199700(NFBugCapture, v8, @"NFC-SE", 0, @"Provisioning Failure", v7, v6);
}

void sub_100199B74(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  objc_opt_self();
  sub_100199700(NFBugCapture, v8, @"NFC-SE", 0, @"ATL Failure", v7, v6);
}

void sub_100199C14(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  objc_opt_self();
  if (v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = &off_100339B20;
  }

  v10 = v9;
  sub_100199700(NFBugCapture, v8, @"NFC-SE", 0, @"Express Mode Failure", v7, v9);
}

void sub_100199CC4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  objc_opt_self();
  if (v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = &off_100339B48;
  }

  v10 = v9;
  sub_100199700(NFBugCapture, v8, @"Purple Stockholm", 0, @"NFAccessory Failure", v7, v9);
}

void sub_10019AFB0(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || [v5 compare:*(a1 + 40)] == -1)
  {
    [*(a1 + 32) addObject:v6];
  }
}

void sub_10019B848(uint64_t a1)
{
  v2 = [NSError alloc];
  v5 = NSLocalizedDescriptionKey;
  v6 = @"Invalid type";
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  v4 = [v2 initWithDomain:@"nfcd.abc" code:20 userInfo:v3];

  (*(*(a1 + 32) + 16))(0.0);
}

void sub_10019B928(uint64_t a1)
{
  v2 = [NSError alloc];
  v5 = NSLocalizedDescriptionKey;
  v6 = @"Invalid subType";
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  v4 = [v2 initWithDomain:@"nfcd.abc" code:20 userInfo:v3];

  (*(*(a1 + 32) + 16))(0.0);
}

void sub_10019BA08(uint64_t a1)
{
  v2 = [NSError alloc];
  v5 = NSLocalizedDescriptionKey;
  v6 = @"Invalid subTypeContext";
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  v4 = [v2 initWithDomain:@"nfcd.abc" code:20 userInfo:v3];

  (*(*(a1 + 32) + 16))(0.0);
}

void sub_10019BAE8(uint64_t a1)
{
  v2 = [NSError alloc];
  v5 = NSLocalizedDescriptionKey;
  v6 = @"Time limited";
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  v4 = [v2 initWithDomain:@"nfcd.abc" code:20 userInfo:v3];

  (*(*(a1 + 32) + 16))(0.0);
}

void sub_10019BBC8(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = sub_10027EC7C(v4);
  v7 = *(v6 + 3928);
  if (v7)
  {
    v8 = [v3 objectForKeyedSubscript:{*v7, v5}];
    [v8 doubleValue];
    v10 = v9;
  }

  else
  {
    v10 = 0.0;
  }

  v11 = sub_10027ECE8(v5);
  if (*(v12 + 3952))
  {
    v13 = sub_10027ECE8(v11);
    v15 = [v3 objectForKeyedSubscript:{**(v14 + 3952), v13}];
    v16 = [v15 BOOLValue];

    if (v16)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v19 = Logger;
        Class = object_getClass(*(a1 + 32));
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(*(a1 + 32));
        Name = sel_getName(*(a1 + 48));
        v23 = 45;
        if (isMetaClass)
        {
          v23 = 43;
        }

        v19(6, "%c[%{public}s %{public}s]:%i ABC Request submitted successfully", v23, ClassName, Name, 607);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v24 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = object_getClass(*(a1 + 32));
        if (class_isMetaClass(v25))
        {
          v26 = 43;
        }

        else
        {
          v26 = 45;
        }

        v27 = object_getClassName(*(a1 + 32));
        v28 = sel_getName(*(a1 + 48));
        *buf = 67109890;
        v58 = v26;
        v59 = 2082;
        v60 = v27;
        v61 = 2082;
        v62 = v28;
        v63 = 1024;
        v64 = 607;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ABC Request submitted successfully", buf, 0x22u);
      }

      v29 = 0;
    }

    else
    {
      v30 = sub_10027ECA0(v17);
      if (*(v31 + 3936))
      {
        v32 = sub_10027ECA0(v30);
        v34 = [v3 objectForKeyedSubscript:{**(v33 + 3936), v32}];
        v35 = [v34 integerValue];
      }

      else
      {
        v35 = -1;
      }

      v36 = sub_10027ECC4(v30);
      if (*(v37 + 3944))
      {
        v38 = sub_10027ECC4(v36);
        v40 = [v3 objectForKeyedSubscript:{**(v39 + 3944), v38}];
      }

      else
      {
        v40 = @"Unknown reason";
      }

      v41 = [NSError alloc];
      v67 = NSLocalizedDescriptionKey;
      v68 = v40;
      v42 = [NSDictionary dictionaryWithObjects:&v68 forKeys:&v67 count:1];
      v29 = [v41 initWithDomain:@"nfcd.abc" code:v35 userInfo:v42];

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v43 = NFLogGetLogger();
      if (v43)
      {
        v44 = v43;
        v45 = object_getClass(*(a1 + 32));
        v46 = class_isMetaClass(v45);
        v54 = object_getClassName(*(a1 + 32));
        v56 = sel_getName(*(a1 + 48));
        v47 = 45;
        if (v46)
        {
          v47 = 43;
        }

        v44(3, "%c[%{public}s %{public}s]:%i ABC Request was rejected. Reason Code: %ld", v47, v54, v56, 618, v35);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v48 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        v49 = object_getClass(*(a1 + 32));
        if (class_isMetaClass(v49))
        {
          v50 = 43;
        }

        else
        {
          v50 = 45;
        }

        v51 = object_getClassName(*(a1 + 32));
        v52 = sel_getName(*(a1 + 48));
        *buf = 67110146;
        v58 = v50;
        v59 = 2082;
        v60 = v51;
        v61 = 2082;
        v62 = v52;
        v63 = 1024;
        v64 = 618;
        v65 = 2048;
        v66 = v35;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i ABC Request was rejected. Reason Code: %ld", buf, 0x2Cu);
      }
    }
  }

  else
  {
    v29 = [[NSError alloc] initWithDomain:@"nfcd.abc" code:7 userInfo:0];
  }

  v53 = *(a1 + 40);
  if (v53)
  {
    (*(v53 + 16))(v53, v29, v10);
  }
}

void sub_10019C0A0(void *a1)
{
  if (a1)
  {
    v2 = [a1 driverWrapper];
    v3 = sub_1001A9F5C(v2);

    v4 = v3 & 0x1E;
    if (v4)
    {
      if (byte_10035DA90)
      {
        return;
      }

      v5 = [a1 driverWrapper];
      v6 = sub_10021A4A0(v5, @"LPEM features", 1uLL);
    }

    else
    {
      if (!byte_10035DA90)
      {
        return;
      }

      v5 = [a1 driverWrapper];
      sub_10021CC94(v5, @"LPEM features");
    }

    byte_10035DA90 = v4 != 0;
  }
}

void sub_10019C158(void *a1)
{
  if (a1)
  {
    if (byte_10035DA90 == 1)
    {
      v1 = [a1 driverWrapper];
      sub_10021CC94(v1, @"LPEM features");

      byte_10035DA90 = 0;
    }
  }
}

void sub_10019C2E4(uint64_t a1)
{
  if (sub_100003384(*(a1 + 32)) != 2)
  {
    v18 = *(a1 + 40);
    v28 = [NSError alloc];
    v20 = [NSString stringWithUTF8String:"nfcd"];
    v113[0] = NSLocalizedDescriptionKey;
    v21 = [NSString stringWithUTF8String:"Unresponsive hardware"];
    v114[0] = v21;
    v114[1] = &off_1003331C8;
    v113[1] = @"Line";
    v113[2] = @"Method";
    v22 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 56))];
    v114[2] = v22;
    v113[3] = NSDebugDescriptionErrorKey;
    v23 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 56)), 64];
    v114[3] = v23;
    v24 = [NSDictionary dictionaryWithObjects:v114 forKeys:v113 count:4];
    v25 = v28;
    v26 = v20;
    v27 = 58;
LABEL_19:
    v30 = [v25 initWithDomain:v26 code:v27 userInfo:v24];
    (*(v18 + 16))(v18, v30);

    goto LABEL_20;
  }

  v2 = [*(a1 + 32) controllerInfo];
  if (([v2 hasLPEMSupport] & 1) == 0)
  {

    goto LABEL_18;
  }

  v3 = [*(a1 + 32) driverWrapper];
  v4 = sub_1001A9FAC(v3, *(a1 + 64));

  if ((v4 & 1) == 0)
  {
LABEL_18:
    v18 = *(a1 + 40);
    v29 = [NSError alloc];
    v20 = [NSString stringWithUTF8String:"nfcd"];
    v111[0] = NSLocalizedDescriptionKey;
    v21 = [NSString stringWithUTF8String:"Feature Not Supported"];
    v112[0] = v21;
    v112[1] = &off_1003331E0;
    v111[1] = @"Line";
    v111[2] = @"Method";
    v22 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 56))];
    v112[2] = v22;
    v111[3] = NSDebugDescriptionErrorKey;
    v23 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 56)), 69];
    v112[3] = v23;
    v24 = [NSDictionary dictionaryWithObjects:v112 forKeys:v111 count:4];
    v25 = v29;
    v26 = v20;
    v27 = 14;
    goto LABEL_19;
  }

  v5 = [*(a1 + 32) expressModeManager];
  if (v5)
  {
    v6 = v5[181];

    if (v6 == 1)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v8 = Logger;
        Class = object_getClass(*(a1 + 32));
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(*(a1 + 32));
        Name = sel_getName(*(a1 + 56));
        v12 = 45;
        if (isMetaClass)
        {
          v12 = 43;
        }

        v8(5, "%c[%{public}s %{public}s]:%i Cannot disable LPEM feature when express mode is active", v12, ClassName, Name, 74);
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
        v17 = sel_getName(*(a1 + 56));
        *buf = 67109890;
        v95 = v15;
        v96 = 2082;
        v97 = v16;
        v98 = 2082;
        v99 = v17;
        v100 = 1024;
        v101 = 74;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Cannot disable LPEM feature when express mode is active", buf, 0x22u);
      }

      v18 = *(a1 + 40);
      v19 = [NSError alloc];
      v20 = [NSString stringWithUTF8String:"nfcd"];
      v109[0] = NSLocalizedDescriptionKey;
      v21 = [NSString stringWithUTF8String:"Busy"];
      v110[0] = v21;
      v110[1] = &off_1003331F8;
      v109[1] = @"Line";
      v109[2] = @"Method";
      v22 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 56))];
      v110[2] = v22;
      v109[3] = NSDebugDescriptionErrorKey;
      v23 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 56)), 75];
      v110[3] = v23;
      v24 = [NSDictionary dictionaryWithObjects:v110 forKeys:v109 count:4];
      v25 = v19;
      v26 = v20;
      v27 = 2;
      goto LABEL_19;
    }
  }

  v31 = [*(a1 + 32) driverWrapper];
  v20 = sub_10021A4A0(v31, @"LPEM feature change", 1uLL);

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v32 = NFLogGetLogger();
  v33 = v32;
  if (v20)
  {
    if (v32)
    {
      v34 = object_getClass(*(a1 + 32));
      v35 = class_isMetaClass(v34);
      v87 = object_getClassName(*(a1 + 32));
      v89 = sel_getName(*(a1 + 56));
      v36 = 45;
      if (v35)
      {
        v36 = 43;
      }

      v33(3, "%c[%{public}s %{public}s]:%i Failed to open session : %@", v36, v87, v89, 81, v20);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v37 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v38))
      {
        v39 = 43;
      }

      else
      {
        v39 = 45;
      }

      v40 = object_getClassName(*(a1 + 32));
      v41 = sel_getName(*(a1 + 56));
      *buf = 67110146;
      v95 = v39;
      v96 = 2082;
      v97 = v40;
      v98 = 2082;
      v99 = v41;
      v100 = 1024;
      v101 = 81;
      v102 = 2112;
      *v103 = v20;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to open session : %@", buf, 0x2Cu);
    }

    v42 = *(a1 + 40);
    v43 = [NSError alloc];
    v44 = [NSString stringWithUTF8String:"nfcd"];
    v45 = [v20 code];
    v107[0] = NSLocalizedDescriptionKey;
    if ([v20 code] > 75)
    {
      v46 = 76;
    }

    else
    {
      v46 = [v20 code];
    }

    v78 = [NSString stringWithUTF8String:off_10031AE10[v46]];
    v108[0] = v78;
    v108[1] = v20;
    v107[1] = NSUnderlyingErrorKey;
    v107[2] = @"Line";
    v108[2] = &off_100333210;
    v107[3] = @"Method";
    v79 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 56))];
    v108[3] = v79;
    v107[4] = NSDebugDescriptionErrorKey;
    v80 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 56)), 82];
    v108[4] = v80;
    v81 = [NSDictionary dictionaryWithObjects:v108 forKeys:v107 count:5];
    v82 = [v43 initWithDomain:v44 code:v45 userInfo:v81];
    (*(v42 + 16))(v42, v82);
  }

  else
  {
    if (v32)
    {
      v47 = object_getClass(*(a1 + 32));
      v48 = class_isMetaClass(v47);
      v49 = object_getClassName(*(a1 + 32));
      v50 = sel_getName(*(a1 + 56));
      v91 = [*(*(*(a1 + 48) + 8) + 40) processIdentifier];
      v51 = 45;
      if (v48)
      {
        v51 = 43;
      }

      v33(6, "%c[%{public}s %{public}s]:%i PID %d disabling feature %d", v51, v49, v50, 86, v91, *(a1 + 64));
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v52 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      v53 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v53))
      {
        v54 = 43;
      }

      else
      {
        v54 = 45;
      }

      v55 = object_getClassName(*(a1 + 32));
      v56 = sel_getName(*(a1 + 56));
      v57 = [*(*(*(a1 + 48) + 8) + 40) processIdentifier];
      v58 = *(a1 + 64);
      *buf = 67110402;
      v95 = v54;
      v96 = 2082;
      v97 = v55;
      v98 = 2082;
      v99 = v56;
      v100 = 1024;
      v101 = 86;
      v102 = 1024;
      *v103 = v57;
      *&v103[4] = 1024;
      *&v103[6] = v58;
      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i PID %d disabling feature %d", buf, 0x2Eu);
    }

    v59 = [*(a1 + 32) driverWrapper];
    v60 = sub_1001AA6BC(v59, *(a1 + 64));

    v61 = *(a1 + 40);
    if (v60)
    {
      (*(v61 + 16))(*(a1 + 40), 0);
      sub_10019C0A0(*(a1 + 32));
      v62 = [*(a1 + 32) driverWrapper];
      v63 = sub_1001A9F5C(v62);

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v64 = NFLogGetLogger();
      if (v64)
      {
        v65 = v64;
        v66 = object_getClass(*(a1 + 32));
        v67 = class_isMetaClass(v66);
        v68 = object_getClassName(*(a1 + 32));
        v90 = sel_getName(*(a1 + 56));
        v69 = 45;
        if (v67)
        {
          v69 = 43;
        }

        v65(6, "%c[%{public}s %{public}s]:%i posting %{public}@ to SESD - current state %lx", v69, v68, v90, 93, @"com.apple.stockholm.lpem.changed", v63);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v70 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
      {
        v71 = object_getClass(*(a1 + 32));
        if (class_isMetaClass(v71))
        {
          v72 = 43;
        }

        else
        {
          v72 = 45;
        }

        v73 = object_getClassName(*(a1 + 32));
        v74 = sel_getName(*(a1 + 56));
        *buf = 67110402;
        v95 = v72;
        v96 = 2082;
        v97 = v73;
        v98 = 2082;
        v99 = v74;
        v100 = 1024;
        v101 = 93;
        v102 = 2114;
        *v103 = @"com.apple.stockholm.lpem.changed";
        *&v103[8] = 2048;
        v104 = v63;
        _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i posting %{public}@ to SESD - current state %lx", buf, 0x36u);
      }

      v75 = [*(a1 + 32) sesdEventPublisher];
      v92[0] = @"Payload";
      v92[1] = @"lpemFeatures";
      v93[0] = @"com.apple.stockholm.lpem.changed";
      v76 = [NSNumber numberWithUnsignedInteger:v63];
      v93[1] = v76;
      v77 = [NSDictionary dictionaryWithObjects:v93 forKeys:v92 count:2];
      [v75 sendXpcNotificationEventWithDictionary:v77];
    }

    else
    {
      v83 = [NSError alloc];
      v75 = [NSString stringWithUTF8String:"nfcd"];
      v105[0] = NSLocalizedDescriptionKey;
      v76 = [NSString stringWithUTF8String:"Stack Error"];
      v106[0] = v76;
      v106[1] = &off_100333228;
      v105[1] = @"Line";
      v105[2] = @"Method";
      v77 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 56))];
      v106[2] = v77;
      v105[3] = NSDebugDescriptionErrorKey;
      v84 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 56)), 88];
      v106[3] = v84;
      v85 = [NSDictionary dictionaryWithObjects:v106 forKeys:v105 count:4];
      v86 = [v83 initWithDomain:v75 code:15 userInfo:v85];
      (*(v61 + 16))(v61, v86);
    }

    v20 = [*(a1 + 32) driverWrapper];
    sub_10021CC94(v20, @"LPEM feature change");
  }

LABEL_20:
}

void sub_10019D014(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v7 = a4;
  if (a1)
  {
    v15[0] = 0;
    v15[1] = v15;
    v15[2] = 0x3032000000;
    v15[3] = sub_100006AFC;
    v15[4] = sub_10019C2DC;
    v16 = +[NSXPCConnection currentConnection];
    v8 = *(a1 + 240);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10019D154;
    v9[3] = &unk_10031B0A8;
    v9[4] = a1;
    v12 = "enableLPEMFeature:rebootIfNeeded:completion:";
    v13 = a2;
    v14 = a3;
    v10 = v7;
    v11 = v15;
    dispatch_async(v8, v9);

    _Block_object_dispose(v15, 8);
  }
}

void sub_10019D154(uint64_t a1)
{
  if (sub_100003384(*(a1 + 32)) != 2)
  {
    v18 = *(a1 + 40);
    v28 = [NSError alloc];
    v20 = [NSString stringWithUTF8String:"nfcd"];
    v128[0] = NSLocalizedDescriptionKey;
    v21 = [NSString stringWithUTF8String:"Unresponsive hardware"];
    v129[0] = v21;
    v129[1] = &off_100333240;
    v128[1] = @"Line";
    v128[2] = @"Method";
    v22 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 56))];
    v129[2] = v22;
    v128[3] = NSDebugDescriptionErrorKey;
    v23 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 56)), 114];
    v129[3] = v23;
    v24 = [NSDictionary dictionaryWithObjects:v129 forKeys:v128 count:4];
    v25 = v28;
    v26 = v20;
    v27 = 58;
LABEL_19:
    v30 = [v25 initWithDomain:v26 code:v27 userInfo:v24];
    (*(v18 + 16))(v18, v30);

    goto LABEL_20;
  }

  v2 = [*(a1 + 32) controllerInfo];
  if (([v2 hasLPEMSupport] & 1) == 0)
  {

    goto LABEL_18;
  }

  v3 = [*(a1 + 32) driverWrapper];
  v4 = sub_1001A9FAC(v3, *(a1 + 64));

  if ((v4 & 1) == 0)
  {
LABEL_18:
    v18 = *(a1 + 40);
    v29 = [NSError alloc];
    v20 = [NSString stringWithUTF8String:"nfcd"];
    v126[0] = NSLocalizedDescriptionKey;
    v21 = [NSString stringWithUTF8String:"Feature Not Supported"];
    v127[0] = v21;
    v127[1] = &off_100333258;
    v126[1] = @"Line";
    v126[2] = @"Method";
    v22 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 56))];
    v127[2] = v22;
    v126[3] = NSDebugDescriptionErrorKey;
    v23 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 56)), 119];
    v127[3] = v23;
    v24 = [NSDictionary dictionaryWithObjects:v127 forKeys:v126 count:4];
    v25 = v29;
    v26 = v20;
    v27 = 14;
    goto LABEL_19;
  }

  v5 = [*(a1 + 32) expressModeManager];
  if (v5)
  {
    v6 = v5[181];

    if (v6 == 1)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v8 = Logger;
        Class = object_getClass(*(a1 + 32));
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(*(a1 + 32));
        Name = sel_getName(*(a1 + 56));
        v12 = 45;
        if (isMetaClass)
        {
          v12 = 43;
        }

        v8(5, "%c[%{public}s %{public}s]:%i Cannot enable LPEM feature when express mode is active", v12, ClassName, Name, 124);
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
        v17 = sel_getName(*(a1 + 56));
        *buf = 67109890;
        v108 = v15;
        v109 = 2082;
        v110 = v16;
        v111 = 2082;
        v112 = v17;
        v113 = 1024;
        v114 = 124;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Cannot enable LPEM feature when express mode is active", buf, 0x22u);
      }

      v18 = *(a1 + 40);
      v19 = [NSError alloc];
      v20 = [NSString stringWithUTF8String:"nfcd"];
      v124[0] = NSLocalizedDescriptionKey;
      v21 = [NSString stringWithUTF8String:"Busy"];
      v125[0] = v21;
      v125[1] = &off_100333270;
      v124[1] = @"Line";
      v124[2] = @"Method";
      v22 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 56))];
      v125[2] = v22;
      v124[3] = NSDebugDescriptionErrorKey;
      v23 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 56)), 125];
      v125[3] = v23;
      v24 = [NSDictionary dictionaryWithObjects:v125 forKeys:v124 count:4];
      v25 = v19;
      v26 = v20;
      v27 = 2;
      goto LABEL_19;
    }
  }

  v31 = [*(a1 + 32) driverWrapper];
  v20 = sub_10021A4A0(v31, @"LPEM feature change", 1uLL);

  if (v20)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v32 = NFLogGetLogger();
    if (v32)
    {
      v33 = v32;
      v34 = object_getClass(*(a1 + 32));
      v35 = class_isMetaClass(v34);
      v99 = object_getClassName(*(a1 + 32));
      v101 = sel_getName(*(a1 + 56));
      v36 = 45;
      if (v35)
      {
        v36 = 43;
      }

      v33(3, "%c[%{public}s %{public}s]:%i Failed to open session : %@", v36, v99, v101, 131, v20);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v37 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v38))
      {
        v39 = 43;
      }

      else
      {
        v39 = 45;
      }

      v40 = object_getClassName(*(a1 + 32));
      v41 = sel_getName(*(a1 + 56));
      *buf = 67110146;
      v108 = v39;
      v109 = 2082;
      v110 = v40;
      v111 = 2082;
      v112 = v41;
      v113 = 1024;
      v114 = 131;
      v115 = 2112;
      *v116 = v20;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to open session : %@", buf, 0x2Cu);
    }

    v42 = *(a1 + 40);
    v43 = [NSError alloc];
    v44 = [NSString stringWithUTF8String:"nfcd"];
    v45 = [v20 code];
    v122[0] = NSLocalizedDescriptionKey;
    if ([v20 code] > 75)
    {
      v46 = 76;
    }

    else
    {
      v46 = [v20 code];
    }

    v53 = [NSString stringWithUTF8String:off_10031AE10[v46]];
    v123[0] = v53;
    v123[1] = v20;
    v122[1] = NSUnderlyingErrorKey;
    v122[2] = @"Line";
    v123[2] = &off_100333288;
    v122[3] = @"Method";
    v54 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 56))];
    v123[3] = v54;
    v122[4] = NSDebugDescriptionErrorKey;
    v55 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 56)), 132];
    v123[4] = v55;
    v56 = v123;
    v57 = v122;
    goto LABEL_40;
  }

  v47 = [*(a1 + 32) controllerInfo];
  v48 = [v47 siliconName];

  if (v48 == 18 || *(a1 + 72) != 1)
  {
    v60 = 0;
  }

  else
  {
    v49 = [*(a1 + 32) driverWrapper];
    v104 = 0;
    v50 = sub_1001AB574(v49, &v104);
    v20 = v104;

    if (v20)
    {
      v51 = [*(a1 + 32) driverWrapper];
      sub_10021CC94(v51, @"LPEM feature change");

      v42 = *(a1 + 40);
      v43 = [NSError alloc];
      v44 = [NSString stringWithUTF8String:"nfcd"];
      v45 = [v20 code];
      v120[0] = NSLocalizedDescriptionKey;
      if ([v20 code] > 75)
      {
        v52 = 76;
      }

      else
      {
        v52 = [v20 code];
      }

      v53 = [NSString stringWithUTF8String:off_10031AE10[v52]];
      v121[0] = v53;
      v121[1] = v20;
      v120[1] = NSUnderlyingErrorKey;
      v120[2] = @"Line";
      v121[2] = &off_1003332A0;
      v120[3] = @"Method";
      v54 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 56))];
      v121[3] = v54;
      v120[4] = NSDebugDescriptionErrorKey;
      v55 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 56)), 143];
      v121[4] = v55;
      v56 = v121;
      v57 = v120;
LABEL_40:
      v58 = [NSDictionary dictionaryWithObjects:v56 forKeys:v57 count:5];
      v59 = [v43 initWithDomain:v44 code:v45 userInfo:v58];
      (*(v42 + 16))(v42, v59);

      goto LABEL_20;
    }

    v60 = (v50 & 1) == 0;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v61 = NFLogGetLogger();
  if (v61)
  {
    v62 = v61;
    v63 = object_getClass(*(a1 + 32));
    v64 = class_isMetaClass(v63);
    v65 = object_getClassName(*(a1 + 32));
    v66 = sel_getName(*(a1 + 56));
    v103 = [*(*(*(a1 + 48) + 8) + 40) processIdentifier];
    v67 = 45;
    if (v64)
    {
      v67 = 43;
    }

    v62(6, "%c[%{public}s %{public}s]:%i PID %d enabling feature %d", v67, v65, v66, 152, v103, *(a1 + 64));
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v68 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
  {
    v69 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v69))
    {
      v70 = 43;
    }

    else
    {
      v70 = 45;
    }

    v71 = object_getClassName(*(a1 + 32));
    v72 = sel_getName(*(a1 + 56));
    v73 = [*(*(*(a1 + 48) + 8) + 40) processIdentifier];
    v74 = *(a1 + 64);
    *buf = 67110402;
    v108 = v70;
    v109 = 2082;
    v110 = v71;
    v111 = 2082;
    v112 = v72;
    v113 = 1024;
    v114 = 152;
    v115 = 1024;
    *v116 = v73;
    *&v116[4] = 1024;
    *&v116[6] = v74;
    _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i PID %d enabling feature %d", buf, 0x2Eu);
  }

  v75 = [*(a1 + 32) driverWrapper];
  v76 = sub_1001AA264(v75, *(a1 + 64));

  v77 = *(a1 + 40);
  if (v76)
  {
    (*(v77 + 16))(*(a1 + 40), 0);
    sub_10019C0A0(*(a1 + 32));
    if (v60)
    {
      v78 = [*(a1 + 32) driverWrapper];
      sub_10021D9F4(v78);
    }

    v79 = [*(a1 + 32) driverWrapper];
    v80 = sub_1001A9F5C(v79);

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v81 = NFLogGetLogger();
    if (v81)
    {
      v82 = v81;
      v83 = object_getClass(*(a1 + 32));
      v84 = class_isMetaClass(v83);
      v85 = object_getClassName(*(a1 + 32));
      v102 = sel_getName(*(a1 + 56));
      v86 = 45;
      if (v84)
      {
        v86 = 43;
      }

      v82(6, "%c[%{public}s %{public}s]:%i posting %{public}@ to SESD - current state %lx", v86, v85, v102, 162, @"com.apple.stockholm.lpem.changed", v80);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v87 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
    {
      v88 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v88))
      {
        v89 = 43;
      }

      else
      {
        v89 = 45;
      }

      v90 = object_getClassName(*(a1 + 32));
      v91 = sel_getName(*(a1 + 56));
      *buf = 67110402;
      v108 = v89;
      v109 = 2082;
      v110 = v90;
      v111 = 2082;
      v112 = v91;
      v113 = 1024;
      v114 = 162;
      v115 = 2114;
      *v116 = @"com.apple.stockholm.lpem.changed";
      *&v116[8] = 2048;
      v117 = v80;
      _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i posting %{public}@ to SESD - current state %lx", buf, 0x36u);
    }

    v92 = [*(a1 + 32) sesdEventPublisher];
    v105[0] = @"Payload";
    v105[1] = @"lpemFeatures";
    v106[0] = @"com.apple.stockholm.lpem.changed";
    v93 = [NSNumber numberWithUnsignedInteger:v80];
    v106[1] = v93;
    v94 = [NSDictionary dictionaryWithObjects:v106 forKeys:v105 count:2];
    [v92 sendXpcNotificationEventWithDictionary:v94];
  }

  else
  {
    v95 = [NSError alloc];
    v92 = [NSString stringWithUTF8String:"nfcd"];
    v118[0] = NSLocalizedDescriptionKey;
    v93 = [NSString stringWithUTF8String:"Stack Error"];
    v119[0] = v93;
    v119[1] = &off_1003332B8;
    v118[1] = @"Line";
    v118[2] = @"Method";
    v94 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 56))];
    v119[2] = v94;
    v118[3] = NSDebugDescriptionErrorKey;
    v96 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 56)), 154];
    v119[3] = v96;
    v97 = [NSDictionary dictionaryWithObjects:v119 forKeys:v118 count:4];
    v98 = [v95 initWithDomain:v92 code:15 userInfo:v97];
    (*(v77 + 16))(v77, v98);
  }

  v20 = [*(a1 + 32) driverWrapper];
  sub_10021CC94(v20, @"LPEM feature change");
LABEL_20:
}

void sub_10019E0A4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v9[0] = 0;
    v9[1] = v9;
    v9[2] = 0x3032000000;
    v9[3] = sub_100006AFC;
    v9[4] = sub_10019C2DC;
    v10 = +[NSXPCConnection currentConnection];
    v4 = *(a1 + 240);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10019E1D0;
    v5[3] = &unk_10031B0D0;
    v5[4] = a1;
    v7 = v9;
    v8 = "getLPEMFeaturesWithCompletion:";
    v6 = v3;
    dispatch_async(v4, v5);

    _Block_object_dispose(v9, 8);
  }
}

void sub_10019E1D0(uint64_t a1)
{
  if (sub_100003384(*(a1 + 32)) != 2)
  {
    v20 = *(a1 + 40);
    v21 = [NSError alloc];
    v18 = [NSString stringWithUTF8String:"nfcd"];
    v44[0] = NSLocalizedDescriptionKey;
    v22 = [NSString stringWithUTF8String:"Unresponsive hardware"];
    v45[0] = v22;
    v45[1] = &off_1003332D0;
    v44[1] = @"Line";
    v44[2] = @"Method";
    v23 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 56))];
    v45[2] = v23;
    v44[3] = NSDebugDescriptionErrorKey;
    v24 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 56)), 185];
    v45[3] = v24;
    v25 = [NSDictionary dictionaryWithObjects:v45 forKeys:v44 count:4];
    v26 = v21;
    v27 = v18;
    v28 = 58;
LABEL_15:
    v30 = [v26 initWithDomain:v27 code:v28 userInfo:v25];
    (*(v20 + 16))(v20, v30, 0);

    goto LABEL_16;
  }

  v2 = [*(a1 + 32) controllerInfo];
  v3 = [v2 hasLPEMSupport];

  if ((v3 & 1) == 0)
  {
    v20 = *(a1 + 40);
    v29 = [NSError alloc];
    v18 = [NSString stringWithUTF8String:"nfcd"];
    v42[0] = NSLocalizedDescriptionKey;
    v22 = [NSString stringWithUTF8String:"Feature Not Supported"];
    v43[0] = v22;
    v43[1] = &off_1003332E8;
    v42[1] = @"Line";
    v42[2] = @"Method";
    v23 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 56))];
    v43[2] = v23;
    v42[3] = NSDebugDescriptionErrorKey;
    v24 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 56)), 190];
    v43[3] = v24;
    v25 = [NSDictionary dictionaryWithObjects:v43 forKeys:v42 count:4];
    v26 = v29;
    v27 = v18;
    v28 = 14;
    goto LABEL_15;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v5 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 56));
    v31 = [*(*(*(a1 + 48) + 8) + 40) processIdentifier];
    v10 = 45;
    if (isMetaClass)
    {
      v10 = 43;
    }

    v5(6, "%c[%{public}s %{public}s]:%i PID %d getting LPEM features", v10, ClassName, Name, 194, v31);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v11 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v12))
    {
      v13 = 43;
    }

    else
    {
      v13 = 45;
    }

    v14 = object_getClassName(*(a1 + 32));
    v15 = sel_getName(*(a1 + 56));
    v16 = [*(*(*(a1 + 48) + 8) + 40) processIdentifier];
    *buf = 67110146;
    v33 = v13;
    v34 = 2082;
    v35 = v14;
    v36 = 2082;
    v37 = v15;
    v38 = 1024;
    v39 = 194;
    v40 = 1024;
    v41 = v16;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i PID %d getting LPEM features", buf, 0x28u);
  }

  v17 = *(a1 + 40);
  v18 = [*(a1 + 32) driverWrapper];
  v19 = sub_1001A9F5C(v18);
  (*(v17 + 16))(v17, 0, v19);
LABEL_16:
}

void sub_10019E714(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (!v2)
  {
    goto LABEL_20;
  }

  if (sub_100003384(v2) != 2)
  {
    v20 = [NSError alloc];
    v7 = [NSString stringWithUTF8String:"nfcd"];
    v47 = NSLocalizedDescriptionKey;
    v17 = [NSString stringWithUTF8String:"Unresponsive hardware"];
    *buf = v17;
    *v53 = &off_100333300;
    v48 = @"Line";
    v49 = @"Method";
    v21 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_sync_enableHeadlessTestMode:completion:")];
    *&v53[8] = v21;
    v50 = NSDebugDescriptionErrorKey;
    v22 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_sync_enableHeadlessTestMode:completion:"), 219];
    *&v53[16] = v22;
    v23 = [NSDictionary dictionaryWithObjects:buf forKeys:&v47 count:4];
    v24 = v20;
    v25 = v7;
    v26 = 58;
LABEL_18:
    v28 = [v24 initWithDomain:v25 code:v26 userInfo:v23];
    v3[2](v3, v28);

LABEL_19:
    goto LABEL_20;
  }

  v4 = [v2 controllerInfo];
  v5 = [v4 hasLPEMSupport];

  if ((v5 & 1) == 0)
  {
    v27 = [NSError alloc];
    v7 = [NSString stringWithUTF8String:"nfcd"];
    v47 = NSLocalizedDescriptionKey;
    v17 = [NSString stringWithUTF8String:"Feature Not Supported"];
    *buf = v17;
    *v53 = &off_100333318;
    v48 = @"Line";
    v49 = @"Method";
    v21 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_sync_enableHeadlessTestMode:completion:")];
    *&v53[8] = v21;
    v50 = NSDebugDescriptionErrorKey;
    v22 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_sync_enableHeadlessTestMode:completion:"), 224];
    *&v53[16] = v22;
    v23 = [NSDictionary dictionaryWithObjects:buf forKeys:&v47 count:4];
    v24 = v27;
    v25 = v7;
    v26 = 14;
    goto LABEL_18;
  }

  v6 = [v2 driverWrapper];
  v7 = sub_10021A4A0(v6, @"Headless Test Mode", 1uLL);

  if (v7)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v9 = Logger;
      Class = object_getClass(v2);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v2);
      Name = sel_getName("_sync_enableHeadlessTestMode:completion:");
      v12 = 45;
      if (isMetaClass)
      {
        v12 = 43;
      }

      v9(3, "%c[%{public}s %{public}s]:%i Failed to open session : %@", v12, ClassName, Name, 230, v7);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v13 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = object_getClass(v2);
      if (class_isMetaClass(v14))
      {
        v15 = 43;
      }

      else
      {
        v15 = 45;
      }

      *buf = 67110146;
      *&buf[4] = v15;
      *v53 = 2082;
      *&v53[2] = object_getClassName(v2);
      *&v53[10] = 2082;
      *&v53[12] = sel_getName("_sync_enableHeadlessTestMode:completion:");
      *&v53[20] = 1024;
      *&v53[22] = 230;
      *&v53[26] = 2112;
      *&v53[28] = v7;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to open session : %@", buf, 0x2Cu);
    }

    v16 = [NSError alloc];
    v17 = [NSString stringWithUTF8String:"nfcd"];
    v18 = [v7 code];
    v47 = NSLocalizedDescriptionKey;
    if ([v7 code] > 75)
    {
      v19 = 76;
    }

    else
    {
      v19 = [v7 code];
    }

    v32 = [NSString stringWithUTF8String:off_10031AE10[v19]];
    *buf = v32;
    *v53 = v7;
    v48 = NSUnderlyingErrorKey;
    v49 = @"Line";
    *&v53[8] = &off_100333330;
    v50 = @"Method";
    v33 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_sync_enableHeadlessTestMode:completion:")];
    *&v53[16] = v33;
    v51 = NSDebugDescriptionErrorKey;
    v34 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_sync_enableHeadlessTestMode:completion:"), 231];
    *&v53[24] = v34;
    v35 = [NSDictionary dictionaryWithObjects:buf forKeys:&v47 count:5];
    v36 = [v16 initWithDomain:v17 code:v18 userInfo:v35];
    v3[2](v3, v36);

    goto LABEL_19;
  }

  v29 = [v2 driverWrapper];
  v30 = sub_1001AB834(v29);

  if (v30)
  {
    v31 = [v2 driverWrapper];
    sub_10021CC94(v31, @"Headless Test Mode");

    v3[2](v3, 0);
  }

  else
  {
    v37 = [NSError alloc];
    v38 = [NSString stringWithUTF8String:"nfcd"];
    v47 = NSLocalizedDescriptionKey;
    v39 = [NSString stringWithUTF8String:"Stack Error"];
    *buf = v39;
    *v53 = &off_100333348;
    v48 = @"Line";
    v49 = @"Method";
    v40 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_sync_enableHeadlessTestMode:completion:")];
    *&v53[8] = v40;
    v50 = NSDebugDescriptionErrorKey;
    v41 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_sync_enableHeadlessTestMode:completion:"), 237];
    *&v53[16] = v41;
    v42 = [NSDictionary dictionaryWithObjects:buf forKeys:&v47 count:4];
    v43 = [v37 initWithDomain:v38 code:15 userInfo:v42];
    v3[2](v3, v43);

    v44 = [v2 driverWrapper];
    sub_10021CC94(v44, @"Headless Test Mode");
  }

LABEL_20:
}

void sub_10019F01C(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  v4 = *(*(*(a1 + 48) + 8) + 40);
  v5 = v2;
  if (v3)
  {
    v6 = [v4 NF_whitelistChecker];
    if (sub_100003384(v3) != 2)
    {
      v24 = [NSError alloc];
      v25 = [NSString stringWithUTF8String:"nfcd"];
      v89 = NSLocalizedDescriptionKey;
      v26 = [NSString stringWithUTF8String:"Unresponsive hardware"];
      *buf = v26;
      *v95 = &off_100333360;
      v90 = @"Line";
      v91 = @"Method";
      v27 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_sync_configureHeadlessFactoryMode:connection:completion:")];
      *&v95[8] = v27;
      v92 = NSDebugDescriptionErrorKey;
      v28 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_sync_configureHeadlessFactoryMode:connection:completion:"), 267];
      *&v95[16] = v28;
      v29 = [NSDictionary dictionaryWithObjects:buf forKeys:&v89 count:4];
      v30 = [v24 initWithDomain:v25 code:58 userInfo:v29];
      v5[2](v5, v30);

LABEL_34:
      goto LABEL_35;
    }

    v88 = v6;
    if (([v6 lpmFactoryTest] & 1) == 0)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v32 = Logger;
        Class = object_getClass(v3);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v3);
        Name = sel_getName("_sync_configureHeadlessFactoryMode:connection:completion:");
        v37 = v5;
        v38 = v4;
        v39 = [v4 processIdentifier];
        v40 = [v6 clientName];
        v86 = v39;
        v4 = v38;
        v5 = v37;
        v41 = 43;
        if (!isMetaClass)
        {
          v41 = 45;
        }

        v32(3, "%c[%{public}s %{public}s]:%i PID %d (%{public}@) missing entitlement: %s", v41, ClassName, Name, 272, v86, v40, "com.apple.nfcd.lpm.factorytest");
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v42 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v43 = object_getClass(v3);
        if (class_isMetaClass(v43))
        {
          v44 = 43;
        }

        else
        {
          v44 = 45;
        }

        v45 = object_getClassName(v3);
        v46 = sel_getName("_sync_configureHeadlessFactoryMode:connection:completion:");
        v47 = [v4 processIdentifier];
        v48 = [v88 clientName];
        *buf = 67110658;
        *&buf[4] = v44;
        *v95 = 2082;
        *&v95[2] = v45;
        *&v95[10] = 2082;
        *&v95[12] = v46;
        *&v95[20] = 1024;
        *&v95[22] = 272;
        *&v95[26] = 1024;
        *&v95[28] = v47;
        *&v95[32] = 2114;
        *&v95[34] = v48;
        v96 = 2080;
        v97 = "com.apple.nfcd.lpm.factorytest";
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i PID %d (%{public}@) missing entitlement: %s", buf, 0x3Cu);
      }

      v49 = [NSError alloc];
      v50 = [NSString stringWithUTF8String:"nfcd"];
      v89 = NSLocalizedDescriptionKey;
      v51 = [NSString stringWithUTF8String:"Not entitled"];
      *buf = v51;
      *v95 = &off_100333378;
      v90 = @"Line";
      v91 = @"Method";
      v52 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_sync_configureHeadlessFactoryMode:connection:completion:")];
      *&v95[8] = v52;
      v92 = NSDebugDescriptionErrorKey;
      v53 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_sync_configureHeadlessFactoryMode:connection:completion:"), 273];
      *&v95[16] = v53;
      v54 = [NSDictionary dictionaryWithObjects:buf forKeys:&v89 count:4];
      v55 = v49;
      v56 = v50;
      v57 = 32;
      goto LABEL_31;
    }

    v7 = [v3 controllerInfo];
    if ([v7 hasLPEMSupport])
    {
      v8 = [v3 driverWrapper];
      v9 = sub_1001A9FAC(v8, 1);

      if (v9)
      {
        v10 = [v3 driverWrapper];
        v11 = sub_10021A4A0(v10, @"Set Headless Factory", 1uLL);

        if (v11)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v12 = NFLogGetLogger();
          if (v12)
          {
            v13 = v12;
            v14 = object_getClass(v3);
            v15 = class_isMetaClass(v14);
            v84 = object_getClassName(v3);
            v85 = sel_getName("_sync_configureHeadlessFactoryMode:connection:completion:");
            v16 = 45;
            if (v15)
            {
              v16 = 43;
            }

            v13(3, "%c[%{public}s %{public}s]:%i Failed to open session : %@", v16, v84, v85, 284, v11);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v17 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v18 = object_getClass(v3);
            if (class_isMetaClass(v18))
            {
              v19 = 43;
            }

            else
            {
              v19 = 45;
            }

            *buf = 67110146;
            *&buf[4] = v19;
            *v95 = 2082;
            *&v95[2] = object_getClassName(v3);
            *&v95[10] = 2082;
            *&v95[12] = sel_getName("_sync_configureHeadlessFactoryMode:connection:completion:");
            *&v95[20] = 1024;
            *&v95[22] = 284;
            *&v95[26] = 2112;
            *&v95[28] = v11;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to open session : %@", buf, 0x2Cu);
          }

          v87 = [NSError alloc];
          v20 = [NSString stringWithUTF8String:"nfcd"];
          v21 = [v11 code];
          v89 = NSLocalizedDescriptionKey;
          v22 = v4;
          if ([v11 code] > 75)
          {
            v23 = 76;
          }

          else
          {
            v23 = [v11 code];
          }

          v64 = [NSString stringWithUTF8String:off_10031AE10[v23]];
          *buf = v64;
          *v95 = v11;
          v90 = NSUnderlyingErrorKey;
          v91 = @"Line";
          *&v95[8] = &off_1003333A8;
          v92 = @"Method";
          v65 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_sync_configureHeadlessFactoryMode:connection:completion:")];
          *&v95[16] = v65;
          v93 = NSDebugDescriptionErrorKey;
          v66 = [NSString alloc];
          v67 = sel_getName("_sync_configureHeadlessFactoryMode:connection:completion:");
          v68 = 285;
          goto LABEL_46;
        }

        v60 = [v3 expressModeManager];
        v11 = sub_10003BC08(v60, v1);

        v61 = [v3 driverWrapper];
        v62 = v61;
        if (v11)
        {
          sub_10021CC94(v61, @"Set Headless Factory");

          v87 = [NSError alloc];
          v20 = [NSString stringWithUTF8String:"nfcd"];
          v21 = [v11 code];
          v89 = NSLocalizedDescriptionKey;
          v22 = v4;
          if ([v11 code] > 75)
          {
            v63 = 76;
          }

          else
          {
            v63 = [v11 code];
          }

          v64 = [NSString stringWithUTF8String:off_10031AE10[v63]];
          *buf = v64;
          *v95 = v11;
          v90 = NSUnderlyingErrorKey;
          v91 = @"Line";
          *&v95[8] = &off_1003333C0;
          v92 = @"Method";
          v65 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_sync_configureHeadlessFactoryMode:connection:completion:")];
          *&v95[16] = v65;
          v93 = NSDebugDescriptionErrorKey;
          v66 = [NSString alloc];
          v67 = sel_getName("_sync_configureHeadlessFactoryMode:connection:completion:");
          v68 = 293;
LABEL_46:
          v75 = [v66 initWithFormat:@"%s:%d", v67, v68];
          *&v95[24] = v75;
          v76 = [NSDictionary dictionaryWithObjects:buf forKeys:&v89 count:5];
          v77 = [v87 initWithDomain:v20 code:v21 userInfo:v76];
          v5[2](v5, v77);

          v4 = v22;
          goto LABEL_33;
        }

        if (v1)
        {
          v69 = sub_1001AA264(v61, 1);

          if ((v69 & 1) == 0)
          {
            v70 = [v3 driverWrapper];
            sub_10021CC94(v70, @"Set Headless Factory");

            v71 = [NSError alloc];
            v50 = [NSString stringWithUTF8String:"nfcd"];
            v89 = NSLocalizedDescriptionKey;
            v51 = [NSString stringWithUTF8String:"Stack Error"];
            *buf = v51;
            *v95 = &off_1003333D8;
            v90 = @"Line";
            v91 = @"Method";
            v52 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_sync_configureHeadlessFactoryMode:connection:completion:")];
            *&v95[8] = v52;
            v92 = NSDebugDescriptionErrorKey;
            v72 = [NSString alloc];
            v73 = sel_getName("_sync_configureHeadlessFactoryMode:connection:completion:");
            v74 = 301;
LABEL_51:
            v53 = [v72 initWithFormat:@"%s:%d", v73, v74];
            *&v95[16] = v53;
            v54 = [NSDictionary dictionaryWithObjects:buf forKeys:&v89 count:4];
            v55 = v71;
            v56 = v50;
            v57 = 15;
            goto LABEL_31;
          }
        }

        else
        {
          v78 = sub_1001AA6BC(v61, 31);

          if ((v78 & 1) == 0)
          {
            v83 = [v3 driverWrapper];
            sub_10021CC94(v83, @"Set Headless Factory");

            v71 = [NSError alloc];
            v50 = [NSString stringWithUTF8String:"nfcd"];
            v89 = NSLocalizedDescriptionKey;
            v51 = [NSString stringWithUTF8String:"Stack Error"];
            *buf = v51;
            *v95 = &off_1003333F0;
            v90 = @"Line";
            v91 = @"Method";
            v52 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_sync_configureHeadlessFactoryMode:connection:completion:")];
            *&v95[8] = v52;
            v92 = NSDebugDescriptionErrorKey;
            v72 = [NSString alloc];
            v73 = sel_getName("_sync_configureHeadlessFactoryMode:connection:completion:");
            v74 = 309;
            goto LABEL_51;
          }
        }

        v79 = sub_100003068(v3);
        v80 = sub_100093D80(v3, v79);

        v81 = [v3 driverWrapper];
        sub_10021CC94(v81, @"Set Headless Factory");

        if (!v80)
        {
          v5[2](v5, 0);
          goto LABEL_33;
        }

        v82 = [NSError alloc];
        v50 = [NSString stringWithUTF8String:"nfcd"];
        v89 = NSLocalizedDescriptionKey;
        v51 = [NSString stringWithUTF8String:"Stack Error"];
        *buf = v51;
        *v95 = &off_100333408;
        v90 = @"Line";
        v91 = @"Method";
        v52 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_sync_configureHeadlessFactoryMode:connection:completion:")];
        *&v95[8] = v52;
        v92 = NSDebugDescriptionErrorKey;
        v53 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_sync_configureHeadlessFactoryMode:connection:completion:"), 317];
        *&v95[16] = v53;
        v54 = [NSDictionary dictionaryWithObjects:buf forKeys:&v89 count:4];
        v59 = [v82 initWithDomain:v50 code:15 userInfo:v54];
        v5[2](v5, v59);
        goto LABEL_32;
      }
    }

    else
    {
    }

    v58 = [NSError alloc];
    v50 = [NSString stringWithUTF8String:"nfcd"];
    v89 = NSLocalizedDescriptionKey;
    v51 = [NSString stringWithUTF8String:"Feature Not Supported"];
    *buf = v51;
    *v95 = &off_100333390;
    v90 = @"Line";
    v91 = @"Method";
    v52 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_sync_configureHeadlessFactoryMode:connection:completion:")];
    *&v95[8] = v52;
    v92 = NSDebugDescriptionErrorKey;
    v53 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_sync_configureHeadlessFactoryMode:connection:completion:"), 278];
    *&v95[16] = v53;
    v54 = [NSDictionary dictionaryWithObjects:buf forKeys:&v89 count:4];
    v55 = v58;
    v56 = v50;
    v57 = 14;
LABEL_31:
    v59 = [v55 initWithDomain:v56 code:v57 userInfo:v54];
    v5[2](v5, v59);
LABEL_32:

LABEL_33:
    v6 = v88;
    goto LABEL_34;
  }

LABEL_35:
}

void sub_1001A002C(void *a1)
{
  v1 = a1[5];
  v2 = a1[4];
  v3 = *(*(a1[6] + 8) + 40);
  v4 = v1;
  if (v2)
  {
    v5 = [v3 NF_whitelistChecker];
    if (sub_100003384(v2) != 2)
    {
      v22 = [NSError alloc];
      v9 = [NSString stringWithUTF8String:"nfcd"];
      v81 = NSLocalizedDescriptionKey;
      v23 = [NSString stringWithUTF8String:"Unresponsive hardware"];
      *buf = v23;
      *v87 = &off_100333420;
      v82 = @"Line";
      v83 = @"Method";
      v24 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_sync_headlessFactoryModeFromConnection:completion:")];
      *&v87[8] = v24;
      v84 = NSDebugDescriptionErrorKey;
      v25 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_sync_headlessFactoryModeFromConnection:completion:"), 345];
      *&v87[16] = v25;
      v26 = [NSDictionary dictionaryWithObjects:buf forKeys:&v81 count:4];
      v27 = [v22 initWithDomain:v9 code:58 userInfo:v26];
      v4[2](v4, v27, 0);

LABEL_31:
      goto LABEL_32;
    }

    v79 = v5;
    if ([v5 lpmFactoryTest])
    {
      v6 = [v2 controllerInfo];
      v7 = [v6 hasLPEMSupport];

      if (v7)
      {
        v8 = [v2 driverWrapper];
        v9 = sub_10021A4A0(v8, @"Get Headless Factory", 1uLL);

        if (v9)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          Logger = NFLogGetLogger();
          if (Logger)
          {
            v11 = Logger;
            Class = object_getClass(v2);
            isMetaClass = class_isMetaClass(Class);
            ClassName = object_getClassName(v2);
            Name = sel_getName("_sync_headlessFactoryModeFromConnection:completion:");
            v14 = 45;
            if (isMetaClass)
            {
              v14 = 43;
            }

            v11(3, "%c[%{public}s %{public}s]:%i Failed to open session : %@", v14, ClassName, Name, 362, v9);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v15 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v16 = object_getClass(v2);
            if (class_isMetaClass(v16))
            {
              v17 = 43;
            }

            else
            {
              v17 = 45;
            }

            *buf = 67110146;
            *&buf[4] = v17;
            *v87 = 2082;
            *&v87[2] = object_getClassName(v2);
            *&v87[10] = 2082;
            *&v87[12] = sel_getName("_sync_headlessFactoryModeFromConnection:completion:");
            *&v87[20] = 1024;
            *&v87[22] = 362;
            *&v87[26] = 2112;
            *&v87[28] = v9;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to open session : %@", buf, 0x2Cu);
          }

          v76 = [NSError alloc];
          v18 = [NSString stringWithUTF8String:"nfcd"];
          v19 = [v9 code];
          v81 = NSLocalizedDescriptionKey;
          v20 = v3;
          if ([v9 code] > 75)
          {
            v21 = 76;
          }

          else
          {
            v21 = [v9 code];
          }

          v62 = [NSString stringWithUTF8String:off_10031AE10[v21]];
          *buf = v62;
          *v87 = v9;
          v82 = NSUnderlyingErrorKey;
          v83 = @"Line";
          *&v87[8] = &off_100333468;
          v84 = @"Method";
          v63 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_sync_headlessFactoryModeFromConnection:completion:")];
          *&v87[16] = v63;
          v85 = NSDebugDescriptionErrorKey;
          v64 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_sync_headlessFactoryModeFromConnection:completion:"), 363];
          *&v87[24] = v64;
          v65 = [NSDictionary dictionaryWithObjects:buf forKeys:&v81 count:5];
          v66 = [v76 initWithDomain:v18 code:v19 userInfo:v65];
          v4[2](v4, v66, 0);

          v3 = v20;
        }

        else
        {
          v56 = [v2 driverWrapper];
          v80 = 0;
          v57 = sub_1001AB574(v56, &v80);
          v58 = v80;

          if (v58)
          {
            v78 = v57;
            v77 = [NSError alloc];
            v59 = [NSString stringWithUTF8String:"nfcd"];
            v75 = [v58 code];
            v81 = NSLocalizedDescriptionKey;
            v60 = v3;
            if ([v58 code] > 75)
            {
              v61 = 76;
            }

            else
            {
              v61 = [v58 code];
            }

            v67 = [NSString stringWithUTF8String:off_10031AE10[v61]];
            *buf = v67;
            *v87 = v58;
            v82 = NSUnderlyingErrorKey;
            v83 = @"Line";
            *&v87[8] = &off_100333480;
            v84 = @"Method";
            v68 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_sync_headlessFactoryModeFromConnection:completion:")];
            *&v87[16] = v68;
            v85 = NSDebugDescriptionErrorKey;
            v69 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_sync_headlessFactoryModeFromConnection:completion:"), 369];
            *&v87[24] = v69;
            v70 = [NSDictionary dictionaryWithObjects:buf forKeys:&v81 count:5];
            v9 = [v77 initWithDomain:v59 code:v75 userInfo:v70];

            v3 = v60;
            v57 = v78;
          }

          else
          {
            v9 = 0;
          }

          v71 = [v2 driverWrapper];
          sub_10021CC94(v71, @"Get Headless Factory");

          v4[2](v4, v9, v57);
        }

        goto LABEL_30;
      }

      v54 = [NSError alloc];
      v9 = [NSString stringWithUTF8String:"nfcd"];
      v81 = NSLocalizedDescriptionKey;
      v47 = [NSString stringWithUTF8String:"Feature Not Supported"];
      *buf = v47;
      *v87 = &off_100333450;
      v82 = @"Line";
      v83 = @"Method";
      v48 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_sync_headlessFactoryModeFromConnection:completion:")];
      *&v87[8] = v48;
      v84 = NSDebugDescriptionErrorKey;
      v49 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_sync_headlessFactoryModeFromConnection:completion:"), 356];
      *&v87[16] = v49;
      v50 = [NSDictionary dictionaryWithObjects:buf forKeys:&v81 count:4];
      v51 = v54;
      v52 = v9;
      v53 = 14;
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v28 = NFLogGetLogger();
      if (v28)
      {
        v29 = v28;
        v30 = object_getClass(v2);
        v31 = class_isMetaClass(v30);
        v32 = object_getClassName(v2);
        v33 = sel_getName("_sync_headlessFactoryModeFromConnection:completion:");
        v34 = v4;
        v35 = v3;
        v36 = [v3 processIdentifier];
        v37 = [v5 clientName];
        v74 = v36;
        v3 = v35;
        v4 = v34;
        v38 = 43;
        if (!v31)
        {
          v38 = 45;
        }

        v29(3, "%c[%{public}s %{public}s]:%i PID %d (%{public}@) missing entitlement: %s", v38, v32, v33, 350, v74, v37, "com.apple.nfcd.lpm.factorytest");
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v39 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v40 = object_getClass(v2);
        if (class_isMetaClass(v40))
        {
          v41 = 43;
        }

        else
        {
          v41 = 45;
        }

        v42 = object_getClassName(v2);
        v43 = sel_getName("_sync_headlessFactoryModeFromConnection:completion:");
        v44 = [v3 processIdentifier];
        v45 = [v79 clientName];
        *buf = 67110658;
        *&buf[4] = v41;
        *v87 = 2082;
        *&v87[2] = v42;
        *&v87[10] = 2082;
        *&v87[12] = v43;
        *&v87[20] = 1024;
        *&v87[22] = 350;
        *&v87[26] = 1024;
        *&v87[28] = v44;
        *&v87[32] = 2114;
        *&v87[34] = v45;
        v88 = 2080;
        v89 = "com.apple.nfcd.lpm.factorytest";
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i PID %d (%{public}@) missing entitlement: %s", buf, 0x3Cu);
      }

      v46 = [NSError alloc];
      v9 = [NSString stringWithUTF8String:"nfcd"];
      v81 = NSLocalizedDescriptionKey;
      v47 = [NSString stringWithUTF8String:"Not entitled"];
      *buf = v47;
      *v87 = &off_100333438;
      v82 = @"Line";
      v83 = @"Method";
      v48 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_sync_headlessFactoryModeFromConnection:completion:")];
      *&v87[8] = v48;
      v84 = NSDebugDescriptionErrorKey;
      v49 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_sync_headlessFactoryModeFromConnection:completion:"), 351];
      *&v87[16] = v49;
      v50 = [NSDictionary dictionaryWithObjects:buf forKeys:&v81 count:4];
      v51 = v46;
      v52 = v9;
      v53 = 32;
    }

    v55 = [v51 initWithDomain:v52 code:v53 userInfo:v50];
    v4[2](v4, v55, 0);

LABEL_30:
    v5 = v79;
    goto LABEL_31;
  }

LABEL_32:
}

void sub_1001A0CBC(void *a1)
{
  v1 = a1[5];
  v2 = a1[4];
  v3 = *(*(a1[6] + 8) + 40);
  v4 = v1;
  if (v2)
  {
    v5 = [v3 NF_whitelistChecker];
    if (sub_100003384(v2) != 2)
    {
      v22 = [NSError alloc];
      v9 = [NSString stringWithUTF8String:"nfcd"];
      v78 = NSLocalizedDescriptionKey;
      v23 = [NSString stringWithUTF8String:"Unresponsive hardware"];
      *buf = v23;
      *v84 = &off_100333498;
      v79 = @"Line";
      v80 = @"Method";
      v24 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_sync_disableHeadlessMiniNVForConnection:completion:")];
      *&v84[8] = v24;
      v81 = NSDebugDescriptionErrorKey;
      v25 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_sync_disableHeadlessMiniNVForConnection:completion:"), 396];
      *&v84[16] = v25;
      v26 = [NSDictionary dictionaryWithObjects:buf forKeys:&v78 count:4];
      v27 = [v22 initWithDomain:v9 code:58 userInfo:v26];
      v4[2](v4, v27);

LABEL_31:
      goto LABEL_32;
    }

    v77 = v5;
    if ([v5 miniNVWriteAccess])
    {
      v6 = [v2 controllerInfo];
      v7 = [v6 hasLPEMSupport];

      if (v7)
      {
        v8 = [v2 driverWrapper];
        v9 = sub_10021A4A0(v8, @"Disable Headless", 1uLL);

        if (v9)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          Logger = NFLogGetLogger();
          if (Logger)
          {
            v11 = Logger;
            Class = object_getClass(v2);
            isMetaClass = class_isMetaClass(Class);
            ClassName = object_getClassName(v2);
            Name = sel_getName("_sync_disableHeadlessMiniNVForConnection:completion:");
            v14 = 45;
            if (isMetaClass)
            {
              v14 = 43;
            }

            v11(3, "%c[%{public}s %{public}s]:%i Failed to open session : %@error", v14, ClassName, Name, 413, v9);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v15 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v16 = object_getClass(v2);
            if (class_isMetaClass(v16))
            {
              v17 = 43;
            }

            else
            {
              v17 = 45;
            }

            *buf = 67110146;
            *&buf[4] = v17;
            *v84 = 2082;
            *&v84[2] = object_getClassName(v2);
            *&v84[10] = 2082;
            *&v84[12] = sel_getName("_sync_disableHeadlessMiniNVForConnection:completion:");
            *&v84[20] = 1024;
            *&v84[22] = 413;
            *&v84[26] = 2112;
            *&v84[28] = v9;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to open session : %@error", buf, 0x2Cu);
          }

          v74 = [NSError alloc];
          v18 = [NSString stringWithUTF8String:"nfcd"];
          v19 = [v9 code];
          v78 = NSLocalizedDescriptionKey;
          v20 = v3;
          if ([v9 code] > 75)
          {
            v21 = 76;
          }

          else
          {
            v21 = [v9 code];
          }

          v61 = [NSString stringWithUTF8String:off_10031AE10[v21]];
          *buf = v61;
          *v84 = v9;
          v79 = NSUnderlyingErrorKey;
          v80 = @"Line";
          *&v84[8] = &off_1003334E0;
          v81 = @"Method";
          v62 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_sync_disableHeadlessMiniNVForConnection:completion:")];
          *&v84[16] = v62;
          v82 = NSDebugDescriptionErrorKey;
          v63 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_sync_disableHeadlessMiniNVForConnection:completion:"), 414];
          *&v84[24] = v63;
          v64 = [NSDictionary dictionaryWithObjects:buf forKeys:&v78 count:5];
          v65 = [v74 initWithDomain:v18 code:v19 userInfo:v64];
          v4[2](v4, v65);

          v3 = v20;
        }

        else
        {
          v56 = [v2 driverWrapper];
          v57 = sub_1001AAEF8(v56);

          if (v57)
          {
            v76 = [NSError alloc];
            v58 = [NSString stringWithUTF8String:"nfcd"];
            v75 = [v57 code];
            v78 = NSLocalizedDescriptionKey;
            v59 = v3;
            if ([v57 code] > 75)
            {
              v60 = 76;
            }

            else
            {
              v60 = [v57 code];
            }

            v66 = [NSString stringWithUTF8String:off_10031AE10[v60]];
            *buf = v66;
            *v84 = v57;
            v79 = NSUnderlyingErrorKey;
            v80 = @"Line";
            *&v84[8] = &off_1003334F8;
            v81 = @"Method";
            v67 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_sync_disableHeadlessMiniNVForConnection:completion:")];
            *&v84[16] = v67;
            v82 = NSDebugDescriptionErrorKey;
            v68 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_sync_disableHeadlessMiniNVForConnection:completion:"), 420];
            *&v84[24] = v68;
            v69 = [NSDictionary dictionaryWithObjects:buf forKeys:&v78 count:5];
            v9 = [v76 initWithDomain:v58 code:v75 userInfo:v69];

            v3 = v59;
          }

          else
          {
            v9 = 0;
          }

          v70 = [v2 driverWrapper];
          sub_10021CC94(v70, @"Disable Headless");

          v4[2](v4, v9);
        }

        goto LABEL_30;
      }

      v54 = [NSError alloc];
      v9 = [NSString stringWithUTF8String:"nfcd"];
      v78 = NSLocalizedDescriptionKey;
      v47 = [NSString stringWithUTF8String:"Feature Not Supported"];
      *buf = v47;
      *v84 = &off_1003334C8;
      v79 = @"Line";
      v80 = @"Method";
      v48 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_sync_disableHeadlessMiniNVForConnection:completion:")];
      *&v84[8] = v48;
      v81 = NSDebugDescriptionErrorKey;
      v49 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_sync_disableHeadlessMiniNVForConnection:completion:"), 407];
      *&v84[16] = v49;
      v50 = [NSDictionary dictionaryWithObjects:buf forKeys:&v78 count:4];
      v51 = v54;
      v52 = v9;
      v53 = 14;
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v28 = NFLogGetLogger();
      if (v28)
      {
        v29 = v28;
        v30 = object_getClass(v2);
        v31 = class_isMetaClass(v30);
        v32 = object_getClassName(v2);
        v33 = sel_getName("_sync_disableHeadlessMiniNVForConnection:completion:");
        v34 = v4;
        v35 = v3;
        v36 = [v3 processIdentifier];
        v37 = [v5 clientName];
        v73 = v36;
        v3 = v35;
        v4 = v34;
        v38 = 43;
        if (!v31)
        {
          v38 = 45;
        }

        v29(3, "%c[%{public}s %{public}s]:%i PID %d (%{public}@) missing entitlement: %s", v38, v32, v33, 401, v73, v37, "com.apple.nfcd.mininv.write");
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v39 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v40 = object_getClass(v2);
        if (class_isMetaClass(v40))
        {
          v41 = 43;
        }

        else
        {
          v41 = 45;
        }

        v42 = object_getClassName(v2);
        v43 = sel_getName("_sync_disableHeadlessMiniNVForConnection:completion:");
        v44 = [v3 processIdentifier];
        v45 = [v77 clientName];
        *buf = 67110658;
        *&buf[4] = v41;
        *v84 = 2082;
        *&v84[2] = v42;
        *&v84[10] = 2082;
        *&v84[12] = v43;
        *&v84[20] = 1024;
        *&v84[22] = 401;
        *&v84[26] = 1024;
        *&v84[28] = v44;
        *&v84[32] = 2114;
        *&v84[34] = v45;
        v85 = 2080;
        v86 = "com.apple.nfcd.mininv.write";
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i PID %d (%{public}@) missing entitlement: %s", buf, 0x3Cu);
      }

      v46 = [NSError alloc];
      v9 = [NSString stringWithUTF8String:"nfcd"];
      v78 = NSLocalizedDescriptionKey;
      v47 = [NSString stringWithUTF8String:"Not entitled"];
      *buf = v47;
      *v84 = &off_1003334B0;
      v79 = @"Line";
      v80 = @"Method";
      v48 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_sync_disableHeadlessMiniNVForConnection:completion:")];
      *&v84[8] = v48;
      v81 = NSDebugDescriptionErrorKey;
      v49 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_sync_disableHeadlessMiniNVForConnection:completion:"), 402];
      *&v84[16] = v49;
      v50 = [NSDictionary dictionaryWithObjects:buf forKeys:&v78 count:4];
      v51 = v46;
      v52 = v9;
      v53 = 32;
    }

    v55 = [v51 initWithDomain:v52 code:v53 userInfo:v50];
    v4[2](v4, v55);

LABEL_30:
    v5 = v77;
    goto LABEL_31;
  }

LABEL_32:
}

void sub_1001A1808(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 240);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001A18C4;
    block[3] = &unk_100316050;
    block[4] = a1;
    v6 = v3;
    v7 = "configureMiniNVWithCompletion:";
    dispatch_async(v4, block);
  }
}

void sub_1001A18C4(uint64_t a1)
{
  v2 = [*(a1 + 32) controllerInfo];
  v3 = [v2 hasLPEMSupport];

  if ((v3 & 1) == 0)
  {
    v17 = *(a1 + 40);
    v18 = [NSError alloc];
    v19 = [NSString stringWithUTF8String:"nfcd"];
    v106[0] = NSLocalizedDescriptionKey;
    v20 = [NSString stringWithUTF8String:"Feature Not Supported"];
    v107[0] = v20;
    v107[1] = &off_100333510;
    v106[1] = @"Line";
    v106[2] = @"Method";
    v21 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 48))];
    v107[2] = v21;
    v106[3] = NSDebugDescriptionErrorKey;
    v22 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 48)), 436];
    v107[3] = v22;
    v23 = [NSDictionary dictionaryWithObjects:v107 forKeys:v106 count:4];
    v24 = [v18 initWithDomain:v19 code:14 userInfo:v23];
    (*(v17 + 16))(v17, v24);

LABEL_48:
    return;
  }

  v4 = [*(a1 + 32) controllerInfo];
  v5 = [v4 siliconName];

  if (v5 != 18)
  {
    v25 = [*(a1 + 32) driverWrapper];
    v19 = sub_10021A4A0(v25, @"LPEM MiniNV config", 1uLL);

    if (v19)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v27 = Logger;
        Class = object_getClass(*(a1 + 32));
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(*(a1 + 32));
        Name = sel_getName(*(a1 + 48));
        v30 = 45;
        if (isMetaClass)
        {
          v30 = 43;
        }

        v27(3, "%c[%{public}s %{public}s]:%i Failed to open session : %@", v30, ClassName, Name, 448, v19);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v31 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = object_getClass(*(a1 + 32));
        if (class_isMetaClass(v32))
        {
          v33 = 43;
        }

        else
        {
          v33 = 45;
        }

        v34 = object_getClassName(*(a1 + 32));
        v35 = sel_getName(*(a1 + 48));
        *buf = 67110146;
        v97 = v33;
        v98 = 2082;
        v99 = v34;
        v100 = 2082;
        v101 = v35;
        v102 = 1024;
        v103 = 448;
        v104 = 2112;
        v105 = v19;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to open session : %@", buf, 0x2Cu);
      }

      v36 = *(a1 + 40);
      v37 = [NSError alloc];
      v38 = [NSString stringWithUTF8String:"nfcd"];
      v39 = [v19 code];
      v94[0] = NSLocalizedDescriptionKey;
      if ([v19 code] > 75)
      {
        v40 = 76;
      }

      else
      {
        v40 = [v19 code];
      }

      v45 = [NSString stringWithUTF8String:off_10031AE10[v40]];
      v95[0] = v45;
      v95[1] = v19;
      v94[1] = NSUnderlyingErrorKey;
      v94[2] = @"Line";
      v95[2] = &off_100333528;
      v94[3] = @"Method";
      v46 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 48))];
      v95[3] = v46;
      v94[4] = NSDebugDescriptionErrorKey;
      v47 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 48)), 449];
      v95[4] = v47;
      v48 = v95;
      v49 = v94;
      goto LABEL_47;
    }

    v41 = [*(a1 + 32) driverWrapper];
    v87 = 0;
    v42 = sub_1001AB574(v41, &v87);
    v19 = v87;

    if (v19)
    {
      v43 = [*(a1 + 32) driverWrapper];
      sub_10021CC94(v43, @"LPEM MiniNV config");

      v36 = *(a1 + 40);
      v37 = [NSError alloc];
      v38 = [NSString stringWithUTF8String:"nfcd"];
      v39 = [v19 code];
      v92[0] = NSLocalizedDescriptionKey;
      if ([v19 code] > 75)
      {
        v44 = 76;
      }

      else
      {
        v44 = [v19 code];
      }

      v45 = [NSString stringWithUTF8String:off_10031AE10[v44]];
      v93[0] = v45;
      v93[1] = v19;
      v92[1] = NSUnderlyingErrorKey;
      v92[2] = @"Line";
      v93[2] = &off_100333540;
      v92[3] = @"Method";
      v46 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 48))];
      v93[3] = v46;
      v92[4] = NSDebugDescriptionErrorKey;
      v47 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 48)), 456];
      v93[4] = v47;
      v48 = v93;
      v49 = v92;
LABEL_47:
      v68 = [NSDictionary dictionaryWithObjects:v48 forKeys:v49 count:5];
      v69 = [v37 initWithDomain:v38 code:v39 userInfo:v68];
      (*(v36 + 16))(v36, v69);

      goto LABEL_48;
    }

    if (v42)
    {
      goto LABEL_50;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v50 = NFLogGetLogger();
    if (v50)
    {
      v51 = v50;
      v52 = object_getClass(*(a1 + 32));
      v53 = class_isMetaClass(v52);
      v54 = object_getClassName(*(a1 + 32));
      v85 = sel_getName(*(a1 + 48));
      v55 = 45;
      if (v53)
      {
        v55 = 43;
      }

      v51(6, "%c[%{public}s %{public}s]:%i enabling MiniNV", v55, v54, v85, 461);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v56 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      v57 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v57))
      {
        v58 = 43;
      }

      else
      {
        v58 = 45;
      }

      v59 = object_getClassName(*(a1 + 32));
      v60 = sel_getName(*(a1 + 48));
      *buf = 67109890;
      v97 = v58;
      v98 = 2082;
      v99 = v59;
      v100 = 2082;
      v101 = v60;
      v102 = 1024;
      v103 = 461;
      _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i enabling MiniNV", buf, 0x22u);
    }

    v61 = [*(a1 + 32) driverWrapper];
    v19 = sub_1001AB260(v61);

    if (v19)
    {
      v62 = *(a1 + 40);
      v63 = (v62 + 16);
      v64 = NSLocalizedDescriptionKey;
LABEL_43:
      v86 = [NSError alloc];
      v65 = [NSString stringWithUTF8String:"nfcd"];
      v66 = [v19 code];
      v88[0] = v64;
      if ([v19 code] > 75)
      {
        v67 = 76;
      }

      else
      {
        v67 = [v19 code];
      }

      v72 = [NSString stringWithUTF8String:off_10031AE10[v67]];
      v89[0] = v72;
      v89[1] = v19;
      v88[1] = NSUnderlyingErrorKey;
      v88[2] = @"Line";
      v89[2] = &off_100333558;
      v88[3] = @"Method";
      v73 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 48))];
      v89[3] = v73;
      v88[4] = NSDebugDescriptionErrorKey;
      v74 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 48)), 469];
      v89[4] = v74;
      v75 = [NSDictionary dictionaryWithObjects:v89 forKeys:v88 count:5];
      v76 = [v86 initWithDomain:v65 code:v66 userInfo:v75];
      (*v63)(v62, v76);

      goto LABEL_54;
    }

    v70 = [*(a1 + 32) driverWrapper];
    v71 = sub_10021D9F4(v70);

    if (v71)
    {
LABEL_50:
      v62 = *(a1 + 40);
    }

    else
    {
      v78 = [NSError alloc];
      v79 = [NSString stringWithUTF8String:"nfcd"];
      v64 = NSLocalizedDescriptionKey;
      v90 = NSLocalizedDescriptionKey;
      v80 = [NSString stringWithUTF8String:"Stack Error"];
      v91 = v80;
      v81 = [NSDictionary dictionaryWithObjects:&v91 forKeys:&v90 count:1];
      v19 = [v78 initWithDomain:v79 code:15 userInfo:v81];

      v62 = *(a1 + 40);
      v63 = (v62 + 16);
      if (v19)
      {
        goto LABEL_43;
      }
    }

    (*(v62 + 16))(v62, 0);
    v19 = 0;
LABEL_54:
    v77 = [*(a1 + 32) driverWrapper];
    sub_10021CC94(v77, @"LPEM MiniNV config");

    goto LABEL_48;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v6 = NFLogGetLogger();
  if (v6)
  {
    v7 = v6;
    v8 = object_getClass(*(a1 + 32));
    v9 = class_isMetaClass(v8);
    v10 = object_getClassName(*(a1 + 32));
    v83 = sel_getName(*(a1 + 48));
    v11 = 45;
    if (v9)
    {
      v11 = 43;
    }

    v7(6, "%c[%{public}s %{public}s]:%i No MiniNV config on this platform.", v11, v10, v83, 441);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v12 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v13))
    {
      v14 = 43;
    }

    else
    {
      v14 = 45;
    }

    v15 = object_getClassName(*(a1 + 32));
    v16 = sel_getName(*(a1 + 48));
    *buf = 67109890;
    v97 = v14;
    v98 = 2082;
    v99 = v15;
    v100 = 2082;
    v101 = v16;
    v102 = 1024;
    v103 = 441;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i No MiniNV config on this platform.", buf, 0x22u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1001A2B88(uint64_t a1)
{
  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    v16 = NFIsInternalBuild();
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    v18 = Logger;
    if (v16)
    {
      if (Logger)
      {
        Class = object_getClass(*(a1 + 32));
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(*(a1 + 32));
        Name = sel_getName(*(a1 + 48));
        v23 = 45;
        if (isMetaClass)
        {
          v23 = 43;
        }

        v18(10, "%c[%{public}s %{public}s]:%i %@", v23, ClassName, Name, 87, *(a1 + 40));
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v24 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_34;
      }

      v25 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v25))
      {
        v26 = 43;
      }

      else
      {
        v26 = 45;
      }

      v27 = object_getClassName(*(a1 + 32));
      v28 = sel_getName(*(a1 + 48));
      v29 = *(a1 + 40);
      *buf = 67110146;
      v45 = v26;
      v46 = 2082;
      v47 = v27;
      v48 = 2082;
      v49 = v28;
      v50 = 1024;
      v51 = 87;
      v52 = 2112;
      v53 = v29;
      v30 = "%c[%{public}s %{public}s]:%i %@";
      v31 = v24;
      v32 = 44;
    }

    else
    {
      if (Logger)
      {
        v33 = object_getClass(*(a1 + 32));
        v34 = class_isMetaClass(v33);
        v35 = object_getClassName(*(a1 + 32));
        v36 = sel_getName(*(a1 + 48));
        v43 = [*(a1 + 40) count];
        v37 = 45;
        if (v34)
        {
          v37 = 43;
        }

        v18(6, "%c[%{public}s %{public}s]:%i Setting %d host cards", v37, v35, v36, 90, v43);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v24 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_34;
      }

      v38 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v38))
      {
        v39 = 43;
      }

      else
      {
        v39 = 45;
      }

      v40 = object_getClassName(*(a1 + 32));
      v41 = sel_getName(*(a1 + 48));
      v42 = [*(a1 + 40) count];
      *buf = 67110146;
      v45 = v39;
      v46 = 2082;
      v47 = v40;
      v48 = 2082;
      v49 = v41;
      v50 = 1024;
      v51 = 90;
      v52 = 1024;
      LODWORD(v53) = v42;
      v30 = "%c[%{public}s %{public}s]:%i Setting %d host cards";
      v31 = v24;
      v32 = 40;
    }

    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, v30, buf, v32);
LABEL_34:

    [*(*(a1 + 32) + 396) setHostCards:*(a1 + 40)];
    return;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v2 = NFLogGetLogger();
  if (v2)
  {
    v3 = v2;
    v4 = object_getClass(*(a1 + 32));
    v5 = class_isMetaClass(v4);
    v6 = object_getClassName(*(a1 + 32));
    v7 = sel_getName(*(a1 + 48));
    v8 = [*(a1 + 32) sessionUID];
    v9 = 45;
    if (v5)
    {
      v9 = 43;
    }

    v3(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v9, v6, v7, 84, v8);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v10 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v11))
    {
      v12 = 43;
    }

    else
    {
      v12 = 45;
    }

    v13 = object_getClassName(*(a1 + 32));
    v14 = sel_getName(*(a1 + 48));
    v15 = [*(a1 + 32) sessionUID];
    *buf = 67110146;
    v45 = v12;
    v46 = 2082;
    v47 = v13;
    v48 = 2082;
    v49 = v14;
    v50 = 1024;
    v51 = 84;
    v52 = 2114;
    v53 = v15;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }
}

void sub_1001A38F4(void *a1, void *a2)
{
  if (a1)
  {
    v3 = a1;
    v4 = a2;
    objc_sync_enter(v3);
    objc_storeWeak(v3 + 1, v4);

    objc_sync_exit(v3);
    sub_1001A3B2C(v3);
    if ((*(v3 + 17) & 1) == 0)
    {
      if (&_TelephonyBasebandRegisterForReset)
      {
        v5 = v3[3];
        CFRunLoopGetMain();
        v6 = TelephonyBasebandRegisterForReset();
      }

      else
      {
        v6 = 0;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v8 = Logger;
        Class = object_getClass(v3);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v3);
        Name = sel_getName("setDelegate:");
        v11 = 45;
        if (isMetaClass)
        {
          v11 = 43;
        }

        v8(6, "%c[%{public}s %{public}s]:%i didRegister = %d", v11, ClassName, Name, 69, v6);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v12 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = object_getClass(v3);
        if (class_isMetaClass(v13))
        {
          v14 = 43;
        }

        else
        {
          v14 = 45;
        }

        *buf = 67110146;
        v19 = v14;
        v20 = 2082;
        v21 = object_getClassName(v3);
        v22 = 2082;
        v23 = sel_getName("setDelegate:");
        v24 = 1024;
        v25 = 69;
        v26 = 1024;
        v27 = v6;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i didRegister = %d", buf, 0x28u);
      }

      *(v3 + 17) = v6;
    }

    v15 = sub_10000976C(v3);
    sub_1001A3B94(v3, v15);
  }
}

void sub_1001A3B2C(void *a1)
{
  if (&_TelephonyBasebandGetReset)
  {
    v2 = a1[3];
    TelephonyBasebandGetReset();
  }

  v3 = a1;
  objc_sync_enter(v3);
  v3[16] = 1;
  objc_sync_exit(v3);
}

void sub_1001A3B94(void *a1, uint64_t a2)
{
  obj = a1;
  objc_sync_enter(obj);
  WeakRetained = objc_loadWeakRetained(obj + 1);
  [WeakRetained basebandStateChanged:a2];

  objc_sync_exit(obj);
}

void sub_1001A40D8(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained workQueue];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1001A41B8;
    v10[3] = &unk_100318D38;
    v9 = *(a1 + 40);
    v10[4] = v7;
    v12 = v9;
    v11 = v5;
    v13 = a3;
    dispatch_async(v8, v10);
  }
}

id sub_1001A41B8(uint64_t a1)
{
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v3 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 48));
    v8 = [*(a1 + 40) debugDescription];
    v23 = [v8 UTF8String];
    v9 = 45;
    if (isMetaClass)
    {
      v9 = 43;
    }

    v3(6, "%c[%{public}s %{public}s]:%i UI is dismissed, error = %s", v9, ClassName, Name, 108, v23);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v10 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v11))
    {
      v12 = 43;
    }

    else
    {
      v12 = 45;
    }

    v13 = object_getClassName(*(a1 + 32));
    v14 = sel_getName(*(a1 + 48));
    v15 = [*(a1 + 40) debugDescription];
    *buf = 67110146;
    v27 = v12;
    v28 = 2082;
    v29 = v13;
    v30 = 2082;
    v31 = v14;
    v32 = 1024;
    v33 = 108;
    v34 = 2080;
    v35 = [v15 UTF8String];
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i UI is dismissed, error = %s", buf, 0x2Cu);
  }

  if (*(a1 + 56) == 1)
  {
    v16 = [NSError alloc];
    v17 = [NSString stringWithUTF8String:"nfcd"];
    v24 = NSLocalizedDescriptionKey;
    v18 = [NSString stringWithUTF8String:"User cancelled"];
    v25 = v18;
    v19 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v20 = [v16 initWithDomain:v17 code:48 userInfo:v19];

    if (v20)
    {
      v21 = [*(a1 + 32) remoteObject];
      [v21 didTerminate:v20];
    }
  }

  [*(a1 + 32) stopEmulationWithCompletion:0];
  return [*(a1 + 32) _deassertPresentationAssertion];
}

void sub_1001A446C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) workQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001A4530;
  v7[3] = &unk_10031B170;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void sub_1001A4BB0(uint64_t a1)
{
  if (![*(a1 + 32) didStart] || (objc_msgSend(*(a1 + 32), "isSuspended") & 1) != 0 || objc_msgSend(*(a1 + 32), "didEnd"))
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v3 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 56));
      v8 = [*(a1 + 32) sessionUID];
      v9 = 45;
      if (isMetaClass)
      {
        v9 = 43;
      }

      v3(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v9, ClassName, Name, 193, v8);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v10 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v11))
      {
        v12 = 43;
      }

      else
      {
        v12 = 45;
      }

      v13 = object_getClassName(*(a1 + 32));
      v14 = sel_getName(*(a1 + 56));
      v15 = [*(a1 + 32) sessionUID];
      *buf = 67110146;
      v33 = v12;
      v34 = 2082;
      v35 = v13;
      v36 = 2082;
      v37 = v14;
      v38 = 1024;
      v39 = 193;
      v40 = 2114;
      v41 = v15;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
    }

    v16 = *(a1 + 48);
    v17 = [NSError alloc];
    v18 = [NSString stringWithUTF8String:"nfcd"];
    v30 = NSLocalizedDescriptionKey;
    v19 = [NSString stringWithUTF8String:"Session not active"];
    v31 = v19;
    v20 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v21 = [v17 initWithDomain:v18 code:54 userInfo:v20];
    (*(v16 + 16))(v16, v21);
  }

  else
  {
    if ([*(a1 + 32) cardState] == 2)
    {
      v22 = [NFResponseAPDU responseWithData:*(a1 + 40)];
      if (!v22)
      {
        [*(a1 + 32) setCardState:1];
      }

      v23 = [v22 status];
      v24 = *(a1 + 32);
      if (v23 == 36864)
      {
        v25 = 3;
      }

      else
      {
        v25 = 1;
      }

      [*(a1 + 32) setCardState:v25];
    }

    v26 = *(a1 + 32);
    v27 = *(a1 + 40);
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1001A4F24;
    v28[3] = &unk_10031B198;
    v28[4] = v26;
    v29 = *(a1 + 48);
    [v26 sendAPDU:v27 startReadOnCompletion:1 completion:v28];
  }
}

void sub_1001A4F24(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    [*(a1 + 32) setCardState:1];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1001A509C(uint64_t a1)
{
  if (![*(a1 + 32) didStart] || (objc_msgSend(*(a1 + 32), "isSuspended") & 1) != 0 || objc_msgSend(*(a1 + 32), "didEnd"))
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v3 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 48));
      v8 = [*(a1 + 32) sessionUID];
      v9 = 45;
      if (isMetaClass)
      {
        v9 = 43;
      }

      v3(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v9, ClassName, Name, 222, v8);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v10 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v11))
      {
        v12 = 43;
      }

      else
      {
        v12 = 45;
      }

      v13 = object_getClassName(*(a1 + 32));
      v14 = sel_getName(*(a1 + 48));
      v15 = [*(a1 + 32) sessionUID];
      *buf = 67110146;
      v30 = v12;
      v31 = 2082;
      v32 = v13;
      v33 = 2082;
      v34 = v14;
      v35 = 1024;
      v36 = 222;
      v37 = 2114;
      v38 = v15;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
    }

    v16 = *(a1 + 40);
    v17 = [NSError alloc];
    v18 = [NSString stringWithUTF8String:"nfcd"];
    v27 = NSLocalizedDescriptionKey;
    v19 = [NSString stringWithUTF8String:"Session not active"];
    v28 = v19;
    v20 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v21 = [v17 initWithDomain:v18 code:54 userInfo:v20];
    (*(v16 + 16))(v16, v21);
  }

  else
  {
    v22 = *(a1 + 32);
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1001A53B8;
    v25[3] = &unk_100316598;
    v25[4] = v22;
    v24 = *(a1 + 40);
    v23 = v24;
    v26 = v24;
    [v22 _activateUIControllerWithCompletion:v25];
  }
}

void sub_1001A53B8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v5 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 48));
      v8 = 45;
      if (isMetaClass)
      {
        v8 = 43;
      }

      v5(5, "%c[%{public}s %{public}s]:%i %{public}@", v8, ClassName, Name, 226, v3);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v9 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v10))
      {
        v11 = 43;
      }

      else
      {
        v11 = 45;
      }

      v12 = object_getClassName(*(a1 + 32));
      v13 = sel_getName(*(a1 + 48));
      *buf = 67110146;
      v29 = v11;
      v30 = 2082;
      v31 = v12;
      v32 = 2082;
      v33 = v13;
      v34 = 1024;
      v35 = 226;
      v36 = 2114;
      v37 = v3;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
    }

    [*(*(a1 + 32) + 240) coreNFCUIInvalidate];
    v14 = *(a1 + 40);
    v15 = [NSError alloc];
    v16 = [NSString stringWithUTF8String:"nfcd"];
    v26[0] = NSLocalizedDescriptionKey;
    v17 = [NSString stringWithUTF8String:"Invalid State"];
    v27[0] = v17;
    v27[1] = &off_100333588;
    v26[1] = @"Line";
    v26[2] = @"Method";
    v18 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 48))];
    v27[2] = v18;
    v26[3] = NSDebugDescriptionErrorKey;
    v19 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 48)), 228];
    v27[3] = v19;
    v20 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:4];
    v21 = [v15 initWithDomain:v16 code:12 userInfo:v20];
    (*(v14 + 16))(v14, v21);
  }

  else
  {
    [*(a1 + 32) setCardState:1];
    v22 = *(a1 + 40);
    v25.receiver = *(a1 + 32);
    v25.super_class = _NFCardSession;
    objc_msgSendSuper2(&v25, "_syncStartEmulationWithCompletion:", v22);
  }
}

uint64_t sub_1001A585C(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v18 = Logger;
      Class = object_getClass(*(a1 + 40));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 40));
      Name = sel_getName(*(a1 + 56));
      v22 = 45;
      if (isMetaClass)
      {
        v22 = 43;
      }

      v18(4, "%c[%{public}s %{public}s]:%i Invalid string; dropping request", v22, ClassName, Name, 249);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v11 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v23 = object_getClass(*(a1 + 40));
      if (class_isMetaClass(v23))
      {
        v24 = 43;
      }

      else
      {
        v24 = 45;
      }

      v25 = object_getClassName(*(a1 + 40));
      v26 = sel_getName(*(a1 + 56));
      *buf = 67109890;
      v43 = v24;
      v44 = 2082;
      v45 = v25;
      v46 = 2082;
      v47 = v26;
      v48 = 1024;
      v49 = 249;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid string; dropping request", buf, 0x22u);
    }

    goto LABEL_23;
  }

  if (![*(a1 + 40) didStart] || (objc_msgSend(*(a1 + 40), "isSuspended") & 1) != 0 || objc_msgSend(*(a1 + 40), "didEnd"))
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v3 = NFLogGetLogger();
    if (v3)
    {
      v4 = v3;
      v5 = object_getClass(*(a1 + 40));
      v6 = class_isMetaClass(v5);
      v7 = object_getClassName(*(a1 + 40));
      v8 = sel_getName(*(a1 + 56));
      v9 = [*(a1 + 40) sessionUID];
      v10 = 45;
      if (v6)
      {
        v10 = 43;
      }

      v4(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v10, v7, v8, 254, v9);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v11 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = object_getClass(*(a1 + 40));
      if (class_isMetaClass(v12))
      {
        v13 = 43;
      }

      else
      {
        v13 = 45;
      }

      v14 = object_getClassName(*(a1 + 40));
      v15 = sel_getName(*(a1 + 56));
      v16 = [*(a1 + 40) sessionUID];
      *buf = 67110146;
      v43 = v13;
      v44 = 2082;
      v45 = v14;
      v46 = 2082;
      v47 = v15;
      v48 = 1024;
      v49 = 254;
      v50 = 2114;
      v51 = v16;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
    }

LABEL_23:

    return (*(*(a1 + 48) + 16))();
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v28 = NFLogGetLogger();
  if (v28)
  {
    v29 = v28;
    v30 = object_getClass(*(a1 + 40));
    v31 = class_isMetaClass(v30);
    v32 = object_getClassName(*(a1 + 40));
    v33 = sel_getName(*(a1 + 56));
    v34 = 45;
    if (v31)
    {
      v34 = 43;
    }

    v29(5, "%c[%{public}s %{public}s]:%i String updated=%{public}@", v34, v32, v33, 256, *(a1 + 32));
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v35 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    v36 = object_getClass(*(a1 + 40));
    if (class_isMetaClass(v36))
    {
      v37 = 43;
    }

    else
    {
      v37 = 45;
    }

    v38 = object_getClassName(*(a1 + 40));
    v39 = sel_getName(*(a1 + 56));
    v40 = *(a1 + 32);
    *buf = 67110146;
    v43 = v37;
    v44 = 2082;
    v45 = v38;
    v46 = 2082;
    v47 = v39;
    v48 = 1024;
    v49 = 256;
    v50 = 2114;
    v51 = v40;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i String updated=%{public}@", buf, 0x2Cu);
  }

  [*(*(a1 + 40) + 240) coreNFCUISetScanText:*(a1 + 32)];
  return (*(*(a1 + 48) + 16))();
}

void sub_1001A7DC0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v5 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 40));
      v8 = 45;
      if (isMetaClass)
      {
        v8 = 43;
      }

      v5(5, "%c[%{public}s %{public}s]:%i %{public}@", v8, ClassName, Name, 436, v3);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v9 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v10))
      {
        v11 = 43;
      }

      else
      {
        v11 = 45;
      }

      v12 = object_getClassName(*(a1 + 32));
      v13 = sel_getName(*(a1 + 40));
      *buf = 67110146;
      v17 = v11;
      v18 = 2082;
      v19 = v12;
      v20 = 2082;
      v21 = v13;
      v22 = 1024;
      v23 = 436;
      v24 = 2114;
      v25 = v3;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
    }

    [*(*(a1 + 32) + 240) coreNFCUIInvalidate];
  }

  else
  {
    [*(a1 + 32) setCardState:1];
  }
}

void sub_1001A8038(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v5 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 40));
      v8 = 45;
      if (isMetaClass)
      {
        v8 = 43;
      }

      v5(5, "%c[%{public}s %{public}s]:%i %{public}@", v8, ClassName, Name, 453, v3);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v9 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v10))
      {
        v11 = 43;
      }

      else
      {
        v11 = 45;
      }

      v12 = object_getClassName(*(a1 + 32));
      v13 = sel_getName(*(a1 + 40));
      *buf = 67110146;
      v17 = v11;
      v18 = 2082;
      v19 = v12;
      v20 = 2082;
      v21 = v13;
      v22 = 1024;
      v23 = 453;
      v24 = 2114;
      v25 = v3;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
    }

    [*(*(a1 + 32) + 240) coreNFCUIInvalidate];
  }

  else
  {
    [*(a1 + 32) setCardState:1];
  }
}

void sub_1001A8708(uint64_t a1, uint64_t a2, double a3)
{
  sub_10027E8F8(a3);
  v6 = *(v3 + 224);
  if (objc_opt_class())
  {
    if (a2)
    {
      v7 = 13;
    }

    else
    {
      v7 = 12;
    }

    v8 = *(a1 + 96);
    v9 = objc_alloc(*(v3 + 224));
    if (v8 == 1)
    {
      v85 = 0;
      v10 = [v9 initWithDomain:v7 error:&v85];
      v11 = v85;
    }

    else
    {
      v84 = 0;
      v23 = *(a1 + 80);
      *buf = *(a1 + 64);
      *&buf[16] = v23;
      v10 = [v9 initWithDomain:v7 auditToken:buf error:&v84];
      v11 = v84;
    }

    v24 = v11;
    v25 = v24;
    if (v10)
    {
      v26 = v24 == 0;
    }

    else
    {
      v26 = 0;
    }

    if (!v26)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v28 = Logger;
        Class = object_getClass(*(a1 + 48));
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(*(a1 + 48));
        Name = sel_getName(*(a1 + 56));
        v31 = 45;
        if (isMetaClass)
        {
          v31 = 43;
        }

        v28(3, "%c[%{public}s %{public}s]:%i error=%{public}@", v31, ClassName, Name, 505, v25);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v32 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_70;
      }

      v33 = object_getClass(*(a1 + 48));
      if (class_isMetaClass(v33))
      {
        v34 = 43;
      }

      else
      {
        v34 = 45;
      }

      v35 = object_getClassName(*(a1 + 48));
      v36 = sel_getName(*(a1 + 56));
      *buf = 67110146;
      *&buf[4] = v34;
      *&buf[8] = 2082;
      *&buf[10] = v35;
      *&buf[18] = 2082;
      *&buf[20] = v36;
      *&buf[28] = 1024;
      *&buf[30] = 505;
      v87 = 2114;
      v88 = v25;
      v37 = "%c[%{public}s %{public}s]:%i error=%{public}@";
      v38 = v32;
      v39 = OS_LOG_TYPE_ERROR;
      v40 = 44;
LABEL_69:
      _os_log_impl(&_mh_execute_header, v38, v39, v37, buf, v40);
LABEL_70:

      goto LABEL_71;
    }

    v41 = [v10 answer];
    if (v41 > 1)
    {
      if (v41 == 2)
      {
LABEL_71:
        v62 = *(*(a1 + 40) + 16);
        goto LABEL_72;
      }

      if (v41 != 3)
      {
        goto LABEL_54;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v52 = NFLogGetLogger();
      if (v52)
      {
        v53 = v52;
        v54 = object_getClass(*(a1 + 48));
        v55 = class_isMetaClass(v54);
        v56 = object_getClassName(*(a1 + 48));
        v79 = sel_getName(*(a1 + 56));
        v57 = 45;
        if (v55)
        {
          v57 = 43;
        }

        v53(4, "%c[%{public}s %{public}s]:%i Forcing uncertainity to ineligible", v57, v56, v79, 519);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v32 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_70;
      }

      v58 = object_getClass(*(a1 + 48));
      if (class_isMetaClass(v58))
      {
        v59 = 43;
      }

      else
      {
        v59 = 45;
      }

      v60 = object_getClassName(*(a1 + 48));
      v61 = sel_getName(*(a1 + 56));
      *buf = 67109890;
      *&buf[4] = v59;
      *&buf[8] = 2082;
      *&buf[10] = v60;
      *&buf[18] = 2082;
      *&buf[20] = v61;
      *&buf[28] = 1024;
      *&buf[30] = 519;
      v37 = "%c[%{public}s %{public}s]:%i Forcing uncertainity to ineligible";
    }

    else
    {
      if (v41)
      {
        if (v41 == 1)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v42 = NFLogGetLogger();
          if (v42)
          {
            v43 = v42;
            v44 = object_getClass(*(a1 + 48));
            v45 = class_isMetaClass(v44);
            v46 = object_getClassName(*(a1 + 48));
            v78 = sel_getName(*(a1 + 56));
            v47 = 45;
            if (v45)
            {
              v47 = 43;
            }

            v43(6, "%c[%{public}s %{public}s]:%i Unknown answer", v47, v46, v78, 524);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v32 = NFSharedLogGetLogger();
          if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_70;
          }

          v48 = object_getClass(*(a1 + 48));
          if (class_isMetaClass(v48))
          {
            v49 = 43;
          }

          else
          {
            v49 = 45;
          }

          v50 = object_getClassName(*(a1 + 48));
          v51 = sel_getName(*(a1 + 56));
          *buf = 67109890;
          *&buf[4] = v49;
          *&buf[8] = 2082;
          *&buf[10] = v50;
          *&buf[18] = 2082;
          *&buf[20] = v51;
          *&buf[28] = 1024;
          *&buf[30] = 524;
          v37 = "%c[%{public}s %{public}s]:%i Unknown answer";
          v38 = v32;
          v39 = OS_LOG_TYPE_DEFAULT;
          goto LABEL_68;
        }

LABEL_54:
        if (a2)
        {
          if (a2 == 2)
          {
            v62 = *(*(a1 + 40) + 16);
            goto LABEL_72;
          }

          if (a2 == 1)
          {
            v62 = *(*(a1 + 40) + 16);
LABEL_72:
            v62();
LABEL_73:

            return;
          }
        }

        else if ((*(a1 + 97) & 1) == 0)
        {
          v62 = *(*(a1 + 40) + 16);
          goto LABEL_72;
        }

        v81[0] = _NSConcreteStackBlock;
        v81[1] = 3221225472;
        v81[2] = sub_1001A8EA4;
        v81[3] = &unk_10031B1E0;
        v83 = vextq_s8(*(a1 + 48), *(a1 + 48), 8uLL);
        v73 = *(a1 + 32);
        v82 = *(a1 + 40);
        v74 = *(a1 + 80);
        *buf = *(a1 + 64);
        *&buf[16] = v74;
        sub_1000A87F8(v73, 0, 1, buf, v81);

        goto LABEL_73;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v63 = NFLogGetLogger();
      if (v63)
      {
        v64 = v63;
        v65 = object_getClass(*(a1 + 48));
        v66 = class_isMetaClass(v65);
        v67 = object_getClassName(*(a1 + 48));
        v80 = sel_getName(*(a1 + 56));
        v68 = 45;
        if (v66)
        {
          v68 = 43;
        }

        v64(3, "%c[%{public}s %{public}s]:%i Invalid", v68, v67, v80, 514);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v32 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_70;
      }

      v69 = object_getClass(*(a1 + 48));
      if (class_isMetaClass(v69))
      {
        v70 = 43;
      }

      else
      {
        v70 = 45;
      }

      v71 = object_getClassName(*(a1 + 48));
      v72 = sel_getName(*(a1 + 56));
      *buf = 67109890;
      *&buf[4] = v70;
      *&buf[8] = 2082;
      *&buf[10] = v71;
      *&buf[18] = 2082;
      *&buf[20] = v72;
      *&buf[28] = 1024;
      *&buf[30] = 514;
      v37 = "%c[%{public}s %{public}s]:%i Invalid";
    }

    v38 = v32;
    v39 = OS_LOG_TYPE_ERROR;
LABEL_68:
    v40 = 34;
    goto LABEL_69;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v12 = NFLogGetLogger();
  if (v12)
  {
    v13 = v12;
    v14 = object_getClass(*(a1 + 48));
    v15 = class_isMetaClass(v14);
    v16 = object_getClassName(*(a1 + 48));
    v76 = sel_getName(*(a1 + 56));
    v17 = 45;
    if (v15)
    {
      v17 = 43;
    }

    v13(3, "%c[%{public}s %{public}s]:%i eligibility framework unavailable", v17, v16, v76, 487);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v18 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v19 = object_getClass(*(a1 + 48));
    if (class_isMetaClass(v19))
    {
      v20 = 43;
    }

    else
    {
      v20 = 45;
    }

    v21 = object_getClassName(*(a1 + 48));
    v22 = sel_getName(*(a1 + 56));
    *buf = 67109890;
    *&buf[4] = v20;
    *&buf[8] = 2082;
    *&buf[10] = v21;
    *&buf[18] = 2082;
    *&buf[20] = v22;
    *&buf[28] = 1024;
    *&buf[30] = 487;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i eligibility framework unavailable", buf, 0x22u);
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t sub_1001A8EA4(void *a1, uint64_t a2)
{
  if (!a2)
  {
    v3 = +[NSAssertionHandler currentHandler];
    [v3 handleFailureInMethod:a1[5] object:a1[6] file:@"_NFCardSession.m" lineNumber:557 description:@"Invalid state"];
  }

  v4 = *(a1[4] + 16);

  return v4();
}

void sub_1001A9400(uint64_t a1)
{
  if (![*(a1 + 32) didStart] || (objc_msgSend(*(a1 + 32), "isSuspended") & 1) != 0 || objc_msgSend(*(a1 + 32), "didEnd"))
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v3 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 48));
      v8 = [*(a1 + 32) sessionUID];
      v9 = 45;
      if (isMetaClass)
      {
        v9 = 43;
      }

      v3(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v9, ClassName, Name, 54, v8);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v10 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v11))
      {
        v12 = 43;
      }

      else
      {
        v12 = 45;
      }

      v13 = object_getClassName(*(a1 + 32));
      v14 = sel_getName(*(a1 + 48));
      v15 = [*(a1 + 32) sessionUID];
      *buf = 67110146;
      v27 = v12;
      v28 = 2082;
      v29 = v13;
      v30 = 2082;
      v31 = v14;
      v32 = 1024;
      v33 = 54;
      v34 = 2114;
      v35 = v15;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
    }

    v16 = *(a1 + 40);
    if (v16)
    {
      v17 = [NSError alloc];
      v18 = [NSString stringWithUTF8String:"nfcd"];
      v24 = NSLocalizedDescriptionKey;
      v19 = [NSString stringWithUTF8String:"Session not active"];
      v25 = v19;
      v20 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      v21 = [v17 initWithDomain:v18 code:54 userInfo:v20];
      (*(v16 + 16))(v16, v21);
    }
  }

  else
  {
    v22 = *(a1 + 40);
    v23 = sub_100091D2C(*(*(a1 + 32) + 176));
    (*(v22 + 16))(v22);
  }
}

void sub_1001A9838(uint64_t a1)
{
  v2 = NFSharedSignpostLog();
  if (os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SURF_PAYMENT", "in", buf, 2u);
  }

  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    v23 = *(a1 + 32);
    v24 = *(a1 + 40);
    v25 = v23[22];
    v26 = [v23 uid];
    v27 = *(a1 + 48);
    v29 = 0;
    v20 = sub_1000903E0(v25, v24, v26, v27, &v29);
    v19 = v29;
    if (v20)
    {
      [NFGeneralStatisticsCALogger updateAnalyticsGeneralTransactionStatistics:&off_100339B98];
    }

    [NFGeneralStatisticsCALogger updateAnalyticsGeneralTransactionStatistics:&off_100339BC0];
    v28 = NFSharedSignpostLog();
    if (os_signpost_enabled(v28))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v28, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SURF_PAYMENT", "callback", buf, 2u);
    }

    (*(*(a1 + 56) + 16))();
    v21 = NFSharedSignpostLog();
    if (os_signpost_enabled(v21))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SURF_PAYMENT", "out", buf, 2u);
    }

    goto LABEL_17;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v4 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 64));
    v9 = [*(a1 + 32) sessionUID];
    v10 = 45;
    if (isMetaClass)
    {
      v10 = 43;
    }

    v4(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v10, ClassName, Name, 68, v9);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v11 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v12))
    {
      v13 = 43;
    }

    else
    {
      v13 = 45;
    }

    v14 = object_getClassName(*(a1 + 32));
    v15 = sel_getName(*(a1 + 64));
    v16 = [*(a1 + 32) sessionUID];
    *buf = 67110146;
    v33 = v13;
    v34 = 2082;
    v35 = v14;
    v36 = 2082;
    v37 = v15;
    v38 = 1024;
    v39 = 68;
    v40 = 2114;
    v41 = v16;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  v17 = *(a1 + 56);
  if (v17)
  {
    v18 = [NSError alloc];
    v19 = [NSString stringWithUTF8String:"nfcd"];
    v30 = NSLocalizedDescriptionKey;
    v20 = [NSString stringWithUTF8String:"Session not active"];
    v31 = v20;
    v21 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v22 = [v18 initWithDomain:v19 code:54 userInfo:v21];
    (*(v17 + 16))(v17, 0, v22);

LABEL_17:
  }
}

uint64_t sub_1001A9C94(uint64_t result)
{
  if (result)
  {
    if (HIBYTE(word_10035DA92) == 1)
    {
      return word_10035DA92;
    }

    else
    {
      v1 = result;
      v21 = 0u;
      memset(v22, 0, sizeof(v22));
      v2 = *(result + 8);
      if (NFDriverGetControllerInfo())
      {
        if (DWORD1(v21) > 7)
        {
          if (v1[173])
          {
            word_10035DA92 = 257;
            return 1;
          }

          else
          {
            if (NFIsNonRFDeviceWithLPMSupport())
            {
              result = 1;
              LOBYTE(word_10035DA92) = 1;
            }

            else
            {
              result = word_10035DA92;
            }

            HIBYTE(word_10035DA92) = 1;
          }
        }

        else
        {
          HIBYTE(word_10035DA92) = 1;
          return word_10035DA92;
        }
      }

      else
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          v4 = Logger;
          Class = object_getClass(v1);
          isMetaClass = class_isMetaClass(Class);
          ClassName = object_getClassName(v1);
          Name = sel_getName("supportsLPEM");
          v8 = 45;
          if (isMetaClass)
          {
            v8 = 43;
          }

          v4(3, "%c[%{public}s %{public}s]:%i Failed to get info", v8, ClassName, Name, 27);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v9 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v10 = object_getClass(v1);
          if (class_isMetaClass(v10))
          {
            v11 = 43;
          }

          else
          {
            v11 = 45;
          }

          *buf = 67109890;
          v14 = v11;
          v15 = 2082;
          v16 = object_getClassName(v1);
          v17 = 2082;
          v18 = sel_getName("supportsLPEM");
          v19 = 1024;
          v20 = 27;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get info", buf, 0x22u);
        }

        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1001A9EC4(uint64_t a1)
{
  if (!sub_1001A9C94(a1))
  {
    return 0;
  }

  v1 = (NFProductIsPhone() & 1) != 0 || NFProductIsWatch();
  if ((NFProductIsPhone() & 1) != 0 || NFProductIsWatch())
  {
    v1 |= 2uLL;
  }

  if ((NFProductIsPhone() & 1) != 0 || (NFProductIsWatch() & 1) != 0 || NFIsNonRFDeviceWithLPMSupport())
  {
    v1 |= 4uLL;
  }

  if (NFIsSeashipSupported())
  {
    v1 |= 8uLL;
  }

  if (NFIsSEinOFFSupported())
  {
    return v1 | 0x10;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1001A9F5C(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = sub_1002261A0();
  if (v1)
  {
    v2 = v1[4];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_1001A9FAC(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = a2;
    if (!a2)
    {
      return 1;
    }

    v3 = result;
    if (sub_1001A9C94(result))
    {
      if (v2 & 3) == 0 || (v3[173])
      {
        return 1;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v15 = Logger;
        Class = object_getClass(v3);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v3);
        Name = sel_getName("isHeadlessModeFeatureSupported:");
        v19 = 45;
        if (isMetaClass)
        {
          v19 = 43;
        }

        v15(3, "%c[%{public}s %{public}s]:%i no antenna - this type is not supported!", v19, ClassName, Name, 147);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v10 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }

      v20 = object_getClass(v3);
      if (class_isMetaClass(v20))
      {
        v21 = 43;
      }

      else
      {
        v21 = 45;
      }

      *buf = 67109890;
      v25 = v21;
      v26 = 2082;
      v27 = object_getClassName(v3);
      v28 = 2082;
      v29 = sel_getName("isHeadlessModeFeatureSupported:");
      v30 = 1024;
      v31 = 147;
      v13 = "%c[%{public}s %{public}s]:%i no antenna - this type is not supported!";
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v4 = NFLogGetLogger();
      if (v4)
      {
        v5 = v4;
        v6 = object_getClass(v3);
        v7 = class_isMetaClass(v6);
        v8 = object_getClassName(v3);
        v22 = sel_getName("isHeadlessModeFeatureSupported:");
        v9 = 45;
        if (v7)
        {
          v9 = 43;
        }

        v5(3, "%c[%{public}s %{public}s]:%i LPEM not supported!", v9, v8, v22, 140);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v10 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }

      v11 = object_getClass(v3);
      if (class_isMetaClass(v11))
      {
        v12 = 43;
      }

      else
      {
        v12 = 45;
      }

      *buf = 67109890;
      v25 = v12;
      v26 = 2082;
      v27 = object_getClassName(v3);
      v28 = 2082;
      v29 = sel_getName("isHeadlessModeFeatureSupported:");
      v30 = 1024;
      v31 = 140;
      v13 = "%c[%{public}s %{public}s]:%i LPEM not supported!";
    }

    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, v13, buf, 0x22u);
LABEL_26:

    return 0;
  }

  return result;
}

uint64_t sub_1001AA264(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = a2;
  if (a2 == 31)
  {
    v2 = sub_1001A9EC4(a1);
  }

  if ((sub_1001A9FAC(a1, v2) & 1) == 0)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v29 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("addHeadlessModeFeature:");
      v32 = 45;
      if (isMetaClass)
      {
        v32 = 43;
      }

      v29(6, "%c[%{public}s %{public}s]:%i type %x not supported!", v32, ClassName, Name, 184, v2);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v27 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
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

      *buf = 67110146;
      v41 = v34;
      v42 = 2082;
      v43 = object_getClassName(a1);
      v44 = 2082;
      v45 = sel_getName("addHeadlessModeFeature:");
      v46 = 1024;
      v47 = 184;
      v48 = 1024;
      v49 = v2;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i type %x not supported!", buf, 0x28u);
    }

    goto LABEL_35;
  }

  v4 = sub_1002261A0();
  v5 = sub_100228E60(v4, v2);

  if (!v5)
  {
    return 1;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v6 = NFLogGetLogger();
  if (v6)
  {
    v7 = v6;
    v8 = object_getClass(a1);
    v9 = class_isMetaClass(v8);
    v10 = object_getClassName(a1);
    v37 = sel_getName("addHeadlessModeFeature:");
    v11 = 45;
    if (v9)
    {
      v11 = 43;
    }

    v7(6, "%c[%{public}s %{public}s]:%i LPEM features changed, enabling", v11, v10, v37, 189);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v12 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = object_getClass(a1);
    if (class_isMetaClass(v13))
    {
      v14 = 43;
    }

    else
    {
      v14 = 45;
    }

    *buf = 67109890;
    v41 = v14;
    v42 = 2082;
    v43 = object_getClassName(a1);
    v44 = 2082;
    v45 = sel_getName("addHeadlessModeFeature:");
    v46 = 1024;
    v47 = 189;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i LPEM features changed, enabling", buf, 0x22u);
  }

  v15 = 1;
  if (([a1 enableHeadlessMode:1 shutdown:0] & 1) == 0)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v16 = NFLogGetLogger();
    if (v16)
    {
      v17 = v16;
      v18 = object_getClass(a1);
      v19 = class_isMetaClass(v18);
      v20 = object_getClassName(a1);
      v38 = sel_getName("addHeadlessModeFeature:");
      v21 = 45;
      if (v19)
      {
        v21 = 43;
      }

      v17(3, "%c[%{public}s %{public}s]:%i Failed to enable LPEM, reverting", v21, v20, v38, 191);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v22 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
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
      v26 = sel_getName("addHeadlessModeFeature:");
      *buf = 67109890;
      v41 = v24;
      v42 = 2082;
      v43 = v25;
      v44 = 2082;
      v45 = v26;
      v46 = 1024;
      v47 = 191;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to enable LPEM, reverting", buf, 0x22u);
    }

    v27 = sub_1002261A0();
    sub_100229170(v27, v2);
LABEL_35:

    return 0;
  }

  return v15;
}

uint64_t sub_1001AA6BC(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = a2;
    v3 = result;
    if (a2 == 31)
    {
      v2 = sub_1001A9EC4(result);
    }

    if (sub_1001A9FAC(v3, v2) && (sub_1002261A0(), v4 = objc_claimAutoreleasedReturnValue(), v5 = sub_100229170(v4, v2), v4, v5) && ([v3 enableHeadlessMode:sub_1001A9F5C(v3) != 0 shutdown:0] & 1) == 0)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v7 = Logger;
        Class = object_getClass(v3);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v3);
        Name = sel_getName("removeHeadlessModeFeature:");
        v11 = 45;
        if (isMetaClass)
        {
          v11 = 43;
        }

        v7(3, "%c[%{public}s %{public}s]:%i Failed to change LPEM, reverting", v11, ClassName, Name, 212);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v12 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = object_getClass(v3);
        if (class_isMetaClass(v13))
        {
          v14 = 43;
        }

        else
        {
          v14 = 45;
        }

        *buf = 67109890;
        v18 = v14;
        v19 = 2082;
        v20 = object_getClassName(v3);
        v21 = 2082;
        v22 = sel_getName("removeHeadlessModeFeature:");
        v23 = 1024;
        v24 = 212;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to change LPEM, reverting", buf, 0x22u);
      }

      v15 = sub_1002261A0();
      sub_100228E60(v15, v2);

      return 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

id sub_1001AA8E4(id result)
{
  if (result)
  {
    v1 = result;
    v2 = sub_1002261A0();
    sub_100228DE4(v2, 0);

    return [v1 enableHeadlessMode:0 shutdown:1];
  }

  return result;
}

id sub_1001AAEF8(void *a1)
{
  if (a1)
  {
    v1 = a1;
    objc_sync_enter(v1);
    if (*(v1 + 169) == 1)
    {
      v2 = [NSError alloc];
      v3 = [NSString stringWithUTF8String:"nfcd"];
      v23[0] = NSLocalizedDescriptionKey;
      v4 = [NSString stringWithUTF8String:"Aborted"];
      v24[0] = v4;
      v24[1] = &off_100333678;
      v23[1] = @"Line";
      v23[2] = @"Method";
      v5 = [[NSString alloc] initWithFormat:@"%s", sel_getName("disableHeadlessMiniNV")];
      v24[2] = v5;
      v23[3] = NSDebugDescriptionErrorKey;
      v6 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("disableHeadlessMiniNV"), 274];
      v24[3] = v6;
      v7 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:4];
      v8 = v2;
      v9 = v3;
      v10 = 3;
    }

    else
    {
      v11 = *(v1 + 1);
      v12 = NFDriverSetHeadlessMode();
      v13 = *(v1 + 1);
      v14 = NFDriverDisableHeadlessModeMiniNV();
      v15 = sub_1002261A0();
      sub_100229630(v15);

      v16 = sub_1002261A0();
      v17 = sub_100226978(v16);

      if (v12 && (v14 & 1) != 0)
      {
        v18 = 0;
LABEL_9:
        objc_sync_exit(v1);

        goto LABEL_10;
      }

      v19 = [NSError alloc];
      v3 = [NSString stringWithUTF8String:"nfcd"];
      v21[0] = NSLocalizedDescriptionKey;
      v4 = [NSString stringWithUTF8String:"Unknown Error"];
      v22[0] = v4;
      v22[1] = &off_100333690;
      v21[1] = @"Line";
      v21[2] = @"Method";
      v5 = [[NSString alloc] initWithFormat:@"%s", sel_getName("disableHeadlessMiniNV")];
      v22[2] = v5;
      v21[3] = NSDebugDescriptionErrorKey;
      v6 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("disableHeadlessMiniNV"), 283];
      v22[3] = v6;
      v7 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:4];
      v8 = v19;
      v9 = v3;
      v10 = 6;
    }

    v18 = [v8 initWithDomain:v9 code:v10 userInfo:v7];

    goto LABEL_9;
  }

  v18 = 0;
LABEL_10:

  return v18;
}

id sub_1001AB260(void *a1)
{
  if (a1)
  {
    v1 = a1;
    objc_sync_enter(v1);
    if (*(v1 + 169) == 1)
    {
      v2 = [NSError alloc];
      v3 = [NSString stringWithUTF8String:"nfcd"];
      v17[0] = NSLocalizedDescriptionKey;
      v4 = [NSString stringWithUTF8String:"Aborted"];
      v18[0] = v4;
      v18[1] = &off_1003336A8;
      v17[1] = @"Line";
      v17[2] = @"Method";
      v5 = [[NSString alloc] initWithFormat:@"%s", sel_getName("enableHeadlessMiniNV")];
      v18[2] = v5;
      v17[3] = NSDebugDescriptionErrorKey;
      v6 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("enableHeadlessMiniNV"), 295];
      v18[3] = v6;
      v7 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:4];
      v8 = v2;
      v9 = v3;
      v10 = 3;
    }

    else
    {
      v11 = *(v1 + 1);
      if (NFDriverEnableHeadlessModeMiniNV())
      {
        v12 = 0;
LABEL_8:
        objc_sync_exit(v1);

        goto LABEL_9;
      }

      v13 = [NSError alloc];
      v3 = [NSString stringWithUTF8String:"nfcd"];
      v15[0] = NSLocalizedDescriptionKey;
      v4 = [NSString stringWithUTF8String:"Unknown Error"];
      v16[0] = v4;
      v16[1] = &off_1003336C0;
      v15[1] = @"Line";
      v15[2] = @"Method";
      v5 = [[NSString alloc] initWithFormat:@"%s", sel_getName("enableHeadlessMiniNV")];
      v16[2] = v5;
      v15[3] = NSDebugDescriptionErrorKey;
      v6 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("enableHeadlessMiniNV"), 298];
      v16[3] = v6;
      v7 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:4];
      v8 = v13;
      v9 = v3;
      v10 = 6;
    }

    v12 = [v8 initWithDomain:v9 code:v10 userInfo:v7];

    goto LABEL_8;
  }

  v12 = 0;
LABEL_9:

  return v12;
}

uint64_t sub_1001AB574(void *a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = a1;
  objc_sync_enter(v3);
  if (*(v3 + 169) == 1)
  {
    if (a2)
    {
      v4 = [NSError alloc];
      v5 = [NSString stringWithUTF8String:"nfcd"];
      v13[0] = NSLocalizedDescriptionKey;
      v6 = [NSString stringWithUTF8String:"Aborted"];
      v14[0] = v6;
      v14[1] = &off_1003336D8;
      v13[1] = @"Line";
      v13[2] = @"Method";
      v7 = [[NSString alloc] initWithFormat:@"%s", sel_getName("getHeadlessFlags:")];
      v14[2] = v7;
      v13[3] = NSDebugDescriptionErrorKey;
      v8 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("getHeadlessFlags:"), 312];
      v14[3] = v8;
      v9 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:4];
      *a2 = [v4 initWithDomain:v5 code:3 userInfo:v9];

      HeadlessModeFlags = 0;
    }

    else
    {
      HeadlessModeFlags = 0;
    }
  }

  else
  {
    v11 = *(v3 + 1);
    HeadlessModeFlags = NFDriverGetHeadlessModeFlags();
  }

  objc_sync_exit(v3);

  return HeadlessModeFlags;
}

uint64_t sub_1001AB834(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  objc_sync_enter(v1);
  if (*(v1 + 169))
  {
    v2 = 0;
  }

  else
  {
    v3 = *(v1 + 1);
    v2 = NFDriverEnableHeadlessTestMode();
  }

  objc_sync_exit(v1);

  return v2;
}

void sub_1001AB8A4(void *a1)
{
  if (a1)
  {
    obj = a1;
    objc_sync_enter(obj);
    if ((*(obj + 169) & 1) == 0)
    {
      v1 = *(obj + 1);
      NFDriverDumpLPMDebugLog();
    }

    objc_sync_exit(obj);
  }
}

void *sub_1001AB908(uint64_t a1, uint64_t a2)
{
  objc_opt_self();
  v3 = objc_opt_new();
  if (v3)
  {
    v3[1] = a2;
  }

  return v3;
}

id sub_1001AB950(void *a1, double a2)
{
  if (a1)
  {
    v2 = sub_10027EC10(a2);
    v4 = **(v3 + 64);
    v5 = sub_10027EBA4(v2);
    v7 = **(v6 + 48);
    v14[0] = v8;
    v14[1] = v7;
    v9 = sub_10027EBEC(v5);
    v11 = *(v10 + 56);
    v15[0] = v12;
    v15[1] = v12;
    v14[2] = *v11;
    v15[2] = v12;
    a1 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:3, v9];
  }

  return a1;
}

void *sub_1001ABA04(void *a1, double a2)
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[1];
    if (v3 > 0x16)
    {
      goto LABEL_18;
    }

    if (((1 << v3) & 0x63C000) != 0)
    {
      v4 = sub_10027EC10(a2);
      v6 = **(v5 + 64);
      v7 = sub_10027EBA4(v4);
      v9 = **(v8 + 48);
      v54[0] = v10;
      v54[1] = v9;
      v11 = sub_10027EBEC(v7);
      v13 = *(v12 + 56);
      v55[0] = v14;
      v55[1] = v14;
      v54[2] = *v13;
      v55[2] = v14;
      v15 = v55;
      v16 = v54;
LABEL_20:
      a1 = [NSDictionary dictionaryWithObjects:v15 forKeys:v16 count:3, v11];
      goto LABEL_21;
    }

    if (((1 << v3) & 0x101C00) != 0)
    {
      v17 = sub_10027EC10(a2);
      v19 = **(v18 + 64);
      v20 = sub_10027EBA4(v17);
      v22 = **(v21 + 48);
      v56[0] = v23;
      v56[1] = v22;
      v57[0] = v24;
      v57[1] = &off_100333720;
      v11 = sub_10027EBEC(v20);
      v56[2] = **(v25 + 56);
      v57[2] = &off_100333738;
      v15 = v57;
      v16 = v56;
      goto LABEL_20;
    }

    if (v3 == 18)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v27 = Logger;
        Class = object_getClass(v2);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v2);
        Name = sel_getName("powerLevelReader");
        v31 = 45;
        if (isMetaClass)
        {
          v31 = 43;
        }

        v27(3, "%c[%{public}s %{public}s]:%i This hardware does not support reader", v31, ClassName, Name, 166);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v32 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = object_getClass(v2);
        if (class_isMetaClass(v33))
        {
          v34 = 43;
        }

        else
        {
          v34 = 45;
        }

        *buf = 67109890;
        v47 = v34;
        v48 = 2082;
        v49 = object_getClassName(v2);
        v50 = 2082;
        v51 = sel_getName("powerLevelReader");
        v52 = 1024;
        v53 = 166;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i This hardware does not support reader", buf, 0x22u);
      }
    }

    else
    {
LABEL_18:
      if (v3 - 7 < 2)
      {
        v35 = sub_10027EC10(a2);
        v37 = **(v36 + 64);
        v38 = sub_10027EBA4(v35);
        v40 = **(v39 + 48);
        v58[0] = v41;
        v58[1] = v40;
        v59[0] = v42;
        v59[1] = &off_100333720;
        v11 = sub_10027EBEC(v38);
        v58[2] = **(v43 + 56);
        v59[2] = &off_100333738;
        v15 = v59;
        v16 = v58;
        goto LABEL_20;
      }
    }

    a1 = 0;
  }

LABEL_21:

  return a1;
}

void *sub_1001ABD18(void *a1, double a2)
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[1];
    if (v3 > 0x16)
    {
      goto LABEL_18;
    }

    if (((1 << v3) & 0x63C000) != 0)
    {
      v4 = sub_10027EC10(a2);
      v6 = **(v5 + 64);
      v7 = sub_10027EBA4(v4);
      v9 = **(v8 + 48);
      v45[0] = v10;
      v45[1] = v9;
      v46[0] = v11;
      v46[1] = &off_100333810;
      v12 = sub_10027EBEC(v7);
      v45[2] = **(v13 + 56);
      v46[2] = &off_100333828;
      v14 = v46;
      v15 = v45;
LABEL_20:
      a1 = [NSDictionary dictionaryWithObjects:v14 forKeys:v15 count:3, v12];
      goto LABEL_21;
    }

    if (((1 << v3) & 0x101C00) != 0)
    {
      v16 = sub_10027EC10(a2);
      v18 = **(v17 + 64);
      v19 = sub_10027EBA4(v16);
      v21 = **(v20 + 48);
      v55[0] = v22;
      v55[1] = v21;
      v56[0] = v23;
      v56[1] = &off_1003337C8;
      v12 = sub_10027EBEC(v19);
      v55[2] = **(v24 + 56);
      v56[2] = &off_1003337E0;
      v14 = v56;
      v15 = v55;
      goto LABEL_20;
    }

    if (v3 == 18)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v26 = Logger;
        Class = object_getClass(v2);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v2);
        Name = sel_getName("powerLevelSECardEmulation");
        v30 = 45;
        if (isMetaClass)
        {
          v30 = 43;
        }

        v26(3, "%c[%{public}s %{public}s]:%i This hardware does not support CE", v30, ClassName, Name, 201);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v31 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = object_getClass(v2);
        if (class_isMetaClass(v32))
        {
          v33 = 43;
        }

        else
        {
          v33 = 45;
        }

        *buf = 67109890;
        v48 = v33;
        v49 = 2082;
        v50 = object_getClassName(v2);
        v51 = 2082;
        v52 = sel_getName("powerLevelSECardEmulation");
        v53 = 1024;
        v54 = 201;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i This hardware does not support CE", buf, 0x22u);
      }
    }

    else
    {
LABEL_18:
      if (v3 - 7 < 2)
      {
        v34 = sub_10027EC10(a2);
        v36 = **(v35 + 64);
        v37 = sub_10027EBA4(v34);
        v39 = **(v38 + 48);
        v57[0] = v40;
        v57[1] = v39;
        v58[0] = v41;
        v58[1] = &off_100333780;
        v12 = sub_10027EBEC(v37);
        v57[2] = **(v42 + 56);
        v58[2] = &off_100333798;
        v14 = v58;
        v15 = v57;
        goto LABEL_20;
      }
    }

    a1 = 0;
  }

LABEL_21:

  return a1;
}

void *sub_1001AC03C(void *a1, double a2)
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[1];
    if (v3 > 0x16)
    {
      goto LABEL_18;
    }

    if (((1 << v3) & 0x63C000) != 0)
    {
      v4 = sub_10027EC10(a2);
      v6 = **(v5 + 64);
      v7 = sub_10027EBA4(v4);
      v9 = **(v8 + 48);
      v45[0] = v10;
      v45[1] = v9;
      v46[0] = v11;
      v46[1] = &off_1003338E8;
      v12 = sub_10027EBEC(v7);
      v45[2] = **(v13 + 56);
      v46[2] = &off_100333900;
      v14 = v46;
      v15 = v45;
LABEL_20:
      a1 = [NSDictionary dictionaryWithObjects:v14 forKeys:v15 count:3, v12];
      goto LABEL_21;
    }

    if (((1 << v3) & 0x101C00) != 0)
    {
      v16 = sub_10027EC10(a2);
      v18 = **(v17 + 64);
      v19 = sub_10027EBA4(v16);
      v21 = **(v20 + 48);
      v55[0] = v22;
      v55[1] = v21;
      v56[0] = v23;
      v56[1] = &off_1003338A0;
      v12 = sub_10027EBEC(v19);
      v55[2] = **(v24 + 56);
      v56[2] = &off_1003338B8;
      v14 = v56;
      v15 = v55;
      goto LABEL_20;
    }

    if (v3 == 18)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v26 = Logger;
        Class = object_getClass(v2);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v2);
        Name = sel_getName("powerLevelCombined");
        v30 = 45;
        if (isMetaClass)
        {
          v30 = 43;
        }

        v26(3, "%c[%{public}s %{public}s]:%i This hardware does not support CE", v30, ClassName, Name, 252);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v31 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = object_getClass(v2);
        if (class_isMetaClass(v32))
        {
          v33 = 43;
        }

        else
        {
          v33 = 45;
        }

        *buf = 67109890;
        v48 = v33;
        v49 = 2082;
        v50 = object_getClassName(v2);
        v51 = 2082;
        v52 = sel_getName("powerLevelCombined");
        v53 = 1024;
        v54 = 252;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i This hardware does not support CE", buf, 0x22u);
      }
    }

    else
    {
LABEL_18:
      if (v3 - 7 < 2)
      {
        v34 = sub_10027EC10(a2);
        v36 = **(v35 + 64);
        v37 = sub_10027EBA4(v34);
        v39 = **(v38 + 48);
        v57[0] = v40;
        v57[1] = v39;
        v58[0] = v41;
        v58[1] = &off_100333858;
        v12 = sub_10027EBEC(v37);
        v57[2] = **(v42 + 56);
        v58[2] = &off_100333870;
        v14 = v58;
        v15 = v57;
        goto LABEL_20;
      }
    }

    a1 = 0;
  }

LABEL_21:

  return a1;
}

void sub_1001AC360(id *a1, void *a2, void *a3)
{
  obj = a2;
  v5 = a3;
  if (a1)
  {
    objc_storeWeak(a1 + 8, obj);
    objc_storeStrong(a1 + 9, a3);
    if (obj)
    {
      v6 = [a1[6] intValue];
      if (v6 >= 1)
      {
        v7 = v6 < 850;
      }

      else
      {
        v7 = 2;
      }

      [obj thermalStateChanged:v7];
    }
  }
}

void sub_1001AC404(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 objectForKey:@"com.apple.duet.ppm-bgt.stck"];
    if (v3)
    {
      v36 = v3;
      WeakRetained = objc_loadWeakRetained((a1 + 32));
      v5 = v36;
      if (WeakRetained)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          v7 = Logger;
          Class = object_getClass(WeakRetained);
          isMetaClass = class_isMetaClass(Class);
          ClassName = object_getClassName(WeakRetained);
          Name = sel_getName("_handleUpdatedBudgetValue:");
          v10 = 45;
          if (isMetaClass)
          {
            v10 = 43;
          }

          v7(5, "%c[%{public}s %{public}s]:%i %{public}@", v10, ClassName, Name, 982, v5);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v11 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = object_getClass(WeakRetained);
          if (class_isMetaClass(v12))
          {
            v13 = 43;
          }

          else
          {
            v13 = 45;
          }

          *buf = 67110146;
          *&buf[4] = v13;
          *v51 = 2082;
          *&v51[2] = object_getClassName(WeakRetained);
          v52 = 2082;
          v53 = sel_getName("_handleUpdatedBudgetValue:");
          v54 = 1024;
          v55 = 982;
          v56 = 2114;
          v57 = v5;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
        }

        if (![v5 integerValue])
        {
          v35 = v5;
          v14 = _os_activity_create(&_mh_execute_header, "coreduet revoked", &_os_activity_current, OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
          *buf = 0;
          *v51 = 0;
          os_activity_scope_enter(v14, buf);
          os_activity_scope_leave(buf);

          v34 = WeakRetained[4];
          objc_sync_enter(v34);
          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          obj = WeakRetained[4];
          v15 = [obj countByEnumeratingWithState:&v38 objects:buf count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v39;
            do
            {
              for (i = 0; i != v16; i = i + 1)
              {
                if (*v39 != v17)
                {
                  objc_enumerationMutation(obj);
                }

                v19 = *(*(&v38 + 1) + 8 * i);
                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v20 = NFLogGetLogger();
                if (v20)
                {
                  v21 = v20;
                  v22 = object_getClass(WeakRetained);
                  v23 = class_isMetaClass(v22);
                  v24 = object_getClassName(WeakRetained);
                  v33 = sel_getName("_handleUpdatedBudgetValue:");
                  v25 = 45;
                  if (v23)
                  {
                    v25 = 43;
                  }

                  v21(5, "%c[%{public}s %{public}s]:%i Revoking core duet activity", v25, v24, v33, 989);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v26 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
                {
                  v27 = object_getClass(WeakRetained);
                  if (class_isMetaClass(v27))
                  {
                    v28 = 43;
                  }

                  else
                  {
                    v28 = 45;
                  }

                  v29 = object_getClassName(WeakRetained);
                  v30 = sel_getName("_handleUpdatedBudgetValue:");
                  *v42 = 67109890;
                  v43 = v28;
                  v44 = 2082;
                  v45 = v29;
                  v46 = 2082;
                  v47 = v30;
                  v48 = 1024;
                  v49 = 989;
                  _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Revoking core duet activity", v42, 0x22u);
                }

                [v19 coreDuetActivityRevoked];
              }

              v16 = [obj countByEnumeratingWithState:&v38 objects:buf count:16];
            }

            while (v16);
          }

          objc_sync_exit(v34);
          v5 = v35;
        }
      }

      v3 = v36;
    }
  }
}

id sub_1001AC86C(void *a1, double a2)
{
  if (!a1)
  {
    return 0;
  }

  sub_10027E790(a2);
  v4 = *(v2 + 32);
  if (!objc_opt_class())
  {
    return 0;
  }

  sub_10027E820(v5);
  v7 = *(v6 + 40);
  if (!objc_opt_class())
  {
    return 0;
  }

  v9 = sub_10027EC34(v8);
  if (!*(v10 + 72) || (v11 = sub_10027EBEC(v9), !*(v12 + 56)) || (v13 = sub_10027EC10(v11), !*(v14 + 64)) || (v15 = sub_10027EBC8(v13), !*(v16 + 48)))
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v19 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("supportsCPMS");
      v23 = 45;
      if (isMetaClass)
      {
        v23 = 43;
      }

      v19(3, "%c[%{public}s %{public}s]:%i Error !!! missing timescale", v23, ClassName, Name, 435);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v24 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = object_getClass(a1);
      if (class_isMetaClass(v25))
      {
        v26 = 43;
      }

      else
      {
        v26 = 45;
      }

      *buf = 67109890;
      v30 = v26;
      v31 = 2082;
      v32 = object_getClassName(a1);
      v33 = 2082;
      v34 = sel_getName("supportsCPMS");
      v35 = 1024;
      v36 = 435;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Error !!! missing timescale", buf, 0x22u);
    }

    return 0;
  }

  v17 = *(v2 + 32);

  return [v17 isCPMSSupported];
}

void sub_1001ACD28(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [*(v2 + 48) intValue];
    if (v3 >= 1)
    {
      v4 = v3 < 850;
    }

    else
    {
      v4 = 2;
    }
  }

  else
  {
    v4 = 0;
  }

  [WeakRetained thermalStateChanged:v4];
}

id sub_1001ACDA8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[41];
    v5 = WeakRetained[40];
    v6 = *(WeakRetained + 3);
    if (v4 == 1)
    {
      if (v5)
      {
        sub_1001AC03C(v6, v2);
      }

      else
      {
        sub_1001ABD18(v6, v2);
      }
    }

    else if (v5)
    {
      sub_1001ABA04(v6, v2);
    }

    else
    {
      sub_1001AB950(v6, v2);
    }
    v7 = ;
    v8 = v7;
    v9 = NFSharedSignpostLog();
    if (os_signpost_enabled(v9))
    {
      v11 = 138412290;
      v12 = v8;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CPMS_GET_CURRENT", "%@", &v11, 0xCu);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_1001ACEDC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [v3 mutableCopy];
  v6 = NFSharedSignpostLog();
  if (os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CPMS_SET_CALLBACK", &unk_1002E8B7A, buf, 2u);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v8 = Logger;
    Class = object_getClass(WeakRetained);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(WeakRetained);
    Name = sel_getName(*(a1 + 48));
    v11 = 45;
    if (isMetaClass)
    {
      v11 = 43;
    }

    v8(6, "%c[%{public}s %{public}s]:%i Got power request : %@", v11, ClassName, Name, 549, v3);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v12 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = object_getClass(WeakRetained);
    if (class_isMetaClass(v13))
    {
      v14 = 43;
    }

    else
    {
      v14 = 45;
    }

    v15 = object_getClassName(WeakRetained);
    v16 = sel_getName(*(a1 + 48));
    *buf = 67110146;
    *&buf[4] = v14;
    *v61 = 2082;
    *&v61[2] = v15;
    *&v61[10] = 2082;
    *&v61[12] = v16;
    *&v61[20] = 1024;
    *&v61[22] = 549;
    *&v61[26] = 2112;
    *&v61[28] = v3;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Got power request : %@", buf, 0x2Cu);
  }

  if (NFThermalMonitorProvidedBySMC() && *(a1 + 32) == *(WeakRetained + 2) && (v33 = sub_10027EC34(v17), v35 = **(v34 + 72), [v3 valueForKey:{v35, v33}], (v36 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v37 = v36;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v37;
      if (([*(WeakRetained + 6) isEqualToNumber:v18] & 1) == 0)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v38 = NFLogGetLogger();
        if (v38)
        {
          log = v38;
          v39 = object_getClass(WeakRetained);
          v54 = class_isMetaClass(v39);
          v56 = object_getClassName(WeakRetained);
          v40 = sel_getName("processNewThermalBudget:");
          v41 = 45;
          if (v54)
          {
            v41 = 43;
          }

          (log)(6, "%c[%{public}s %{public}s]:%i New thermal budget: %{public}@ -> %{public}@", v41, v56, v40, 483, *(WeakRetained + 6), v18);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        loga = NFSharedLogGetLogger();
        if (os_log_type_enabled(loga, OS_LOG_TYPE_DEFAULT))
        {
          v42 = object_getClass(WeakRetained);
          if (class_isMetaClass(v42))
          {
            v43 = 43;
          }

          else
          {
            v43 = 45;
          }

          v57 = v43;
          v55 = object_getClassName(WeakRetained);
          v44 = sel_getName("processNewThermalBudget:");
          v45 = *(WeakRetained + 6);
          *buf = 67110402;
          *&buf[4] = v57;
          *v61 = 2082;
          *&v61[2] = v55;
          *&v61[10] = 2082;
          *&v61[12] = v44;
          *&v61[20] = 1024;
          *&v61[22] = 483;
          *&v61[26] = 2114;
          *&v61[28] = v45;
          v62 = 2114;
          v63 = v18;
          _os_log_impl(&_mh_execute_header, loga, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i New thermal budget: %{public}@ -> %{public}@", buf, 0x36u);
        }

        objc_storeStrong(WeakRetained + 6, v37);
        v46 = objc_loadWeakRetained(WeakRetained + 8);
        if (v46)
        {
          v47 = *(WeakRetained + 9);

          if (v47)
          {
            v48 = *(WeakRetained + 9);
            *buf = _NSConcreteStackBlock;
            *v61 = 3221225472;
            *&v61[8] = sub_1001ACD28;
            *&v61[16] = &unk_100315F30;
            *&v61[24] = WeakRetained;
            dispatch_async(v48, buf);
          }
        }
      }

      v49 = *(WeakRetained + 6);

      if (v49)
      {
        [v5 setValue:v49 forKey:v35];
      }
    }

    else
    {
      v18 = v37;
    }
  }

  else
  {
    v18 = 0;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v19 = NFLogGetLogger();
  if (v19)
  {
    v20 = v19;
    v21 = object_getClass(WeakRetained);
    v22 = class_isMetaClass(v21);
    v51 = object_getClassName(WeakRetained);
    v53 = sel_getName(*(a1 + 48));
    v23 = 45;
    if (v22)
    {
      v23 = 43;
    }

    v20(6, "%c[%{public}s %{public}s]:%i Got power request : %@", v23, v51, v53, 561, v5);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v24 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = object_getClass(WeakRetained);
    if (class_isMetaClass(v25))
    {
      v26 = 43;
    }

    else
    {
      v26 = 45;
    }

    v27 = object_getClassName(WeakRetained);
    v28 = sel_getName(*(a1 + 48));
    *buf = 67110146;
    *&buf[4] = v26;
    *v61 = 2082;
    *&v61[2] = v27;
    *&v61[10] = 2082;
    *&v61[12] = v28;
    *&v61[20] = 1024;
    *&v61[22] = 561;
    *&v61[26] = 2112;
    *&v61[28] = v5;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Got power request : %@", buf, 0x2Cu);
  }

  v30 = sub_10027E76C(v29);
  v32 = [*(v31 + 32) sharedCPMSAgent];
  [v32 acknowledgePowerBudget:v5 forClientId:*(a1 + 56) error:0];
}

uint64_t sub_1001AD4BC(uint64_t val)
{
  if (!val)
  {
    return val;
  }

  v1 = val;
  v2 = *(val + 24);
  if (v2)
  {
    if (*(v2 + 16))
    {
      v3 = 3;
    }

    else
    {
      v3 = 9;
    }
  }

  else
  {
    v3 = 9;
  }

  objc_initWeak(&location, val);
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v5 = Logger;
    Class = object_getClass(v1);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(v1);
    Name = sel_getName("createCPMSDescription:");
    v9 = 45;
    if (isMetaClass)
    {
      v9 = 43;
    }

    v5(6, "%c[%{public}s %{public}s]:%i Using CPMS for client ID 0x%lx (%@)", v9, ClassName, Name, 504, v3, v1);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v10 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = object_getClass(v1);
    if (class_isMetaClass(v11))
    {
      v12 = 43;
    }

    else
    {
      v12 = 45;
    }

    v13 = object_getClassName(v1);
    v14 = sel_getName("createCPMSDescription:");
    *buf = 67110402;
    *&buf[4] = v12;
    *v171 = 2082;
    *&v171[2] = v13;
    *&v171[10] = 2082;
    *&v171[12] = v14;
    *&v171[20] = 1024;
    *&v171[22] = 504;
    *&v171[26] = 2048;
    *&v171[28] = v3;
    v172 = 2112;
    *v173 = v1;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Using CPMS for client ID 0x%lx (%@)", buf, 0x36u);
  }

  v15 = *(v1 + 48);
  *(v1 + 48) = &off_100333990;

  sub_10027E820(v16);
  v18 = objc_alloc_init(*(v17 + 40));
  v19 = v18;
  if (!v18)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v34 = NFLogGetLogger();
    if (v34)
    {
      v35 = v34;
      v36 = object_getClass(v1);
      v37 = class_isMetaClass(v36);
      v38 = object_getClassName(v1);
      v152 = sel_getName("createCPMSDescription:");
      v39 = 45;
      if (v37)
      {
        v39 = 43;
      }

      v35(3, "%c[%{public}s %{public}s]:%i Failed to create description", v39, v38, v152, 511);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v40 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v41 = object_getClass(v1);
      if (class_isMetaClass(v41))
      {
        v42 = 43;
      }

      else
      {
        v42 = 45;
      }

      v43 = object_getClassName(v1);
      v44 = sel_getName("createCPMSDescription:");
      *buf = 67109890;
      *&buf[4] = v42;
      *v171 = 2082;
      *&v171[2] = v43;
      *&v171[10] = 2082;
      *&v171[12] = v44;
      *&v171[20] = 1024;
      *&v171[22] = 511;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to create description", buf, 0x22u);
    }

    v45 = 0;
    goto LABEL_81;
  }

  [v18 setClientId:v3];
  [v19 setIsContinuous:0];
  [v19 setPowerBudgetUpdateMinimumPeriod:1000];
  v21 = *(v1 + 24);
  if (v21)
  {
    v22 = *(v21 + 8);
    if (v22 <= 0x16)
    {
      if (((1 << v22) & 0x63C000) != 0)
      {
        v23 = sub_10027EC10(v20);
        v25 = **(v24 + 64);
        v26 = sub_10027EBA4(v23);
        v28 = **(v27 + 48);
        *v164 = v29;
        *v165 = v28;
        *buf = v30;
        *v171 = &off_100339120;
        v31 = sub_10027EBEC(v26);
        *&v165[8] = **(v32 + 56);
        v33 = &off_100339138;
LABEL_36:
        *&v171[8] = v33;
        v73 = [NSDictionary dictionaryWithObjects:buf forKeys:v164 count:3, v31];
        goto LABEL_37;
      }

      if (((1 << v22) & 0x101C00) != 0)
      {
        v46 = sub_10027EC10(v20);
        v48 = **(v47 + 64);
        v49 = sub_10027EBA4(v46);
        v51 = **(v50 + 48);
        *v164 = v52;
        *v165 = v51;
        *buf = v53;
        *v171 = &off_1003390D8;
        v31 = sub_10027EBEC(v49);
        *&v165[8] = **(v54 + 56);
        v33 = &off_1003390F0;
        goto LABEL_36;
      }

      if (v22 == 18)
      {
        v55 = sub_10027EC10(v20);
        v57 = **(v56 + 64);
        v58 = sub_10027EBA4(v55);
        v60 = **(v59 + 48);
        *v164 = v61;
        *v165 = v60;
        *buf = v62;
        *v171 = &off_100339168;
        v31 = sub_10027EBEC(v58);
        *&v165[8] = **(v63 + 56);
        v33 = &off_100339180;
        goto LABEL_36;
      }
    }

    if (v22 - 7 < 2)
    {
      v64 = sub_10027EC10(v20);
      v66 = **(v65 + 64);
      v67 = sub_10027EBA4(v64);
      v69 = **(v68 + 48);
      *v164 = v70;
      *v165 = v69;
      *buf = v71;
      *v171 = &off_100339090;
      v31 = sub_10027EBEC(v67);
      *&v165[8] = **(v72 + 56);
      v33 = &off_1003390A8;
      goto LABEL_36;
    }
  }

  v73 = 0;
LABEL_37:
  [v19 setPowerLevels:v73];

  v161[0] = _NSConcreteStackBlock;
  v161[1] = 3221225472;
  v161[2] = sub_1001ACDA8;
  v161[3] = &unk_10031B258;
  objc_copyWeak(&v162, &location);
  [v19 setGetCurrentPower:v161];
  *buf = _NSConcreteStackBlock;
  *v171 = 3221225472;
  *&v171[8] = sub_1001ACEDC;
  *&v171[16] = &unk_10031B280;
  objc_copyWeak(&v171[32], &location);
  *&v173[2] = "createCPMSDescription:";
  v74 = v19;
  *&v171[24] = v74;
  v174 = v3;
  [v74 setNotificationCallback:buf];
  sub_10027E7B4(v75);
  v76 = [*"eAtPath:contents:attributes:" sharedCPMSAgent];
  v160 = 0;
  v157 = v74;
  v77 = [v76 registerClientWithDescription:v74 error:&v160];
  v40 = v160;

  if ((v77 & 1) == 0)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v103 = NFLogGetLogger();
    if (v103)
    {
      v104 = v103;
      v105 = object_getClass(v1);
      v106 = class_isMetaClass(v105);
      v148 = object_getClassName(v1);
      v153 = sel_getName("createCPMSDescription:");
      v107 = 45;
      if (v106)
      {
        v107 = 43;
      }

      v104(3, "%c[%{public}s %{public}s]:%i Failed to register CPMS : %{public}@", v107, v148, v153, 567, v40);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v108 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
    {
      v109 = object_getClass(v1);
      if (class_isMetaClass(v109))
      {
        v110 = 43;
      }

      else
      {
        v110 = 45;
      }

      v111 = object_getClassName(v1);
      v112 = sel_getName("createCPMSDescription:");
      *v164 = 67110146;
      *&v164[4] = v110;
      *v165 = 2082;
      *&v165[2] = v111;
      *&v165[10] = 2082;
      *&v165[12] = v112;
      v166 = 1024;
      v167 = 567;
      v168 = 2114;
      v169 = v40;
      _os_log_impl(&_mh_execute_header, v108, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to register CPMS : %{public}@", v164, 0x2Cu);
    }

    v45 = 0;
    goto LABEL_80;
  }

  v78 = [*"eAtPath:contents:attributes:" sharedCPMSAgent];
  v80 = sub_1001AC03C(*(v1 + 24), v79);
  v159 = v40;
  v81 = [v78 copyPowerBudgetForRequest:v80 forClient:v3 error:&v159];
  v82 = v159;

  v83 = *(v1 + 56);
  *(v1 + 56) = v81;

  v84 = *(v1 + 56);
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v85 = NFLogGetLogger();
  v86 = v85;
  if (v84)
  {
    if (v85)
    {
      v87 = object_getClass(v1);
      v88 = class_isMetaClass(v87);
      v89 = object_getClassName(v1);
      v90 = sel_getName("createCPMSDescription:");
      v91 = 45;
      if (v88)
      {
        v91 = 43;
      }

      v86(6, "%c[%{public}s %{public}s]:%i Max Power budget is %{public}@", v91, v89, v90, 576, *(v1 + 56));
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v92 = NFSharedLogGetLogger();
    os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT);
    sub_10027E7D8(v93);
    if (!v94)
    {
      goto LABEL_68;
    }

    v95 = object_getClass(v1);
    if (class_isMetaClass(v95))
    {
      v96 = 43;
    }

    else
    {
      v96 = 45;
    }

    v97 = object_getClassName(v1);
    v98 = sel_getName("createCPMSDescription:");
    v99 = *(v1 + 56);
    *v164 = 67110146;
    *&v164[4] = v96;
    *v165 = 2082;
    *&v165[2] = v97;
    *&v165[10] = 2082;
    *&v165[12] = v98;
    v166 = 1024;
    v167 = 576;
    v168 = 2114;
    v169 = v99;
    v100 = "%c[%{public}s %{public}s]:%i Max Power budget is %{public}@";
    v101 = v92;
    v102 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    if (v85)
    {
      v113 = object_getClass(v1);
      v114 = class_isMetaClass(v113);
      v149 = object_getClassName(v1);
      v154 = sel_getName("createCPMSDescription:");
      v115 = 45;
      if (v114)
      {
        v115 = 43;
      }

      v86(3, "%c[%{public}s %{public}s]:%i Error query power budget CPMS : %{public}@", v115, v149, v154, 574, v82);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v92 = NFSharedLogGetLogger();
    os_log_type_enabled(v92, OS_LOG_TYPE_ERROR);
    sub_10027E7D8(v116);
    if (!v117)
    {
      goto LABEL_68;
    }

    v118 = object_getClass(v1);
    if (class_isMetaClass(v118))
    {
      v119 = 43;
    }

    else
    {
      v119 = 45;
    }

    v120 = object_getClassName(v1);
    v121 = sel_getName("createCPMSDescription:");
    *v164 = 67110146;
    *&v164[4] = v119;
    *v165 = 2082;
    *&v165[2] = v120;
    *&v165[10] = 2082;
    *&v165[12] = v121;
    v166 = 1024;
    v167 = 574;
    v168 = 2114;
    v169 = v82;
    v100 = "%c[%{public}s %{public}s]:%i Error query power budget CPMS : %{public}@";
    v101 = v92;
    v102 = OS_LOG_TYPE_ERROR;
  }

  _os_log_impl(&_mh_execute_header, v101, v102, v100, v164, 0x2Cu);
LABEL_68:

  v122 = [*(&kNFLOG_DISPATCH_SPECIFIC_KEY + 4) sharedCPMSAgent];
  v124 = sub_1001AB950(*(v1 + 24), v123);
  v158 = v82;
  v125 = [v122 copyPowerBudgetForRequest:v124 forClient:v3 error:&v158];
  v40 = v158;

  if (!v125)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v126 = NFLogGetLogger();
    if (v126)
    {
      v127 = v126;
      v128 = object_getClass(v1);
      v129 = class_isMetaClass(v128);
      v150 = object_getClassName(v1);
      v155 = sel_getName("createCPMSDescription:");
      v130 = 45;
      if (v129)
      {
        v130 = 43;
      }

      v127(3, "%c[%{public}s %{public}s]:%i Error resetting power budget CPMS : %{public}@", v130, v150, v155, 581, v40);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v131 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
    {
      v132 = object_getClass(v1);
      if (class_isMetaClass(v132))
      {
        v133 = 43;
      }

      else
      {
        v133 = 45;
      }

      v134 = object_getClassName(v1);
      v135 = sel_getName("createCPMSDescription:");
      *v164 = 67110146;
      *&v164[4] = v133;
      *v165 = 2082;
      *&v165[2] = v134;
      *&v165[10] = 2082;
      *&v165[12] = v135;
      v166 = 1024;
      v167 = 581;
      v168 = 2114;
      v169 = v40;
      _os_log_impl(&_mh_execute_header, v131, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Error resetting power budget CPMS : %{public}@", v164, 0x2Cu);
    }
  }

  v45 = v157;
LABEL_80:

  objc_destroyWeak(&v171[32]);
  objc_destroyWeak(&v162);
LABEL_81:

  objc_destroyWeak(&location);
  v136 = *(v1 + 16);
  *(v1 + 16) = v45;

  if (*(v1 + 16))
  {
    return 1;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v137 = NFLogGetLogger();
  if (v137)
  {
    v138 = v137;
    v139 = object_getClass(v1);
    v140 = class_isMetaClass(v139);
    v141 = object_getClassName(v1);
    v156 = sel_getName("setupCPMS");
    v142 = 45;
    if (v140)
    {
      v142 = 43;
    }

    v138(3, "%c[%{public}s %{public}s]:%i Failed to create description", v142, v141, v156, 593);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v143 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v143, OS_LOG_TYPE_ERROR))
  {
    v144 = object_getClass(v1);
    if (class_isMetaClass(v144))
    {
      v145 = 43;
    }

    else
    {
      v145 = 45;
    }

    v146 = object_getClassName(v1);
    v147 = sel_getName("setupCPMS");
    *buf = 67109890;
    *&buf[4] = v145;
    *v171 = 2082;
    *&v171[2] = v146;
    *&v171[10] = 2082;
    *&v171[12] = v147;
    *&v171[20] = 1024;
    *&v171[22] = 593;
    _os_log_impl(&_mh_execute_header, v143, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to create description", buf, 0x22u);
  }

  return 0;
}

void sub_1001AE198(uint64_t a1, void *a2)
{
  v5 = a2;
  if (a1)
  {
    objc_storeStrong((a1 + 24), a2);
    if (!*(a1 + 16))
    {
      if (sub_1001AC86C(a1, v4))
      {
        sub_1001AD4BC(a1);
      }
    }
  }
}

id sub_1001AE20C()
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1001AE2B8;
  v2[3] = &unk_10031B2A0;
  v2[4] = objc_opt_self();
  v2[5] = "stockholmSystemPowerConsumptionMonitor";
  if (qword_10035DAA0 != -1)
  {
    dispatch_once(&qword_10035DAA0, v2);
  }

  v0 = qword_10035DA98;

  return v0;
}

void sub_1001AE2B8(uint64_t a1)
{
  v2 = objc_alloc_init(NFSystemPowerConsumptionMonitor);
  v3 = qword_10035DA98;
  qword_10035DA98 = v2;

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v5 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 40));
    v10 = 45;
    if (isMetaClass)
    {
      v10 = 43;
    }

    v5(6, "%c[%{public}s %{public}s]:%i Stockholm CPMS : %@", v10, ClassName, Name, 623, qword_10035DA98);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v11 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v12))
    {
      v13 = 43;
    }

    else
    {
      v13 = 45;
    }

    v14 = object_getClassName(*(a1 + 32));
    v15 = sel_getName(*(a1 + 40));
    *buf = 67110146;
    v17 = v13;
    v18 = 2082;
    v19 = v14;
    v20 = 2082;
    v21 = v15;
    v22 = 1024;
    v23 = 623;
    v24 = 2112;
    v25 = qword_10035DA98;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Stockholm CPMS : %@", buf, 0x2Cu);
  }
}

id sub_1001AE468()
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1001AE514;
  v2[3] = &unk_10031B2A0;
  v2[4] = objc_opt_self();
  v2[5] = "furySystemPowerConsumptionMonitor";
  if (qword_10035DAB0 != -1)
  {
    dispatch_once(&qword_10035DAB0, v2);
  }

  v0 = qword_10035DAA8;

  return v0;
}

void sub_1001AE514(uint64_t a1)
{
  v2 = objc_alloc_init(NFSystemPowerConsumptionMonitor);
  v3 = qword_10035DAA8;
  qword_10035DAA8 = v2;

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v5 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 40));
    v10 = 45;
    if (isMetaClass)
    {
      v10 = 43;
    }

    v5(6, "%c[%{public}s %{public}s]:%i Fury CPMS : %@", v10, ClassName, Name, 636, qword_10035DAA8);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v11 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v12))
    {
      v13 = 43;
    }

    else
    {
      v13 = 45;
    }

    v14 = object_getClassName(*(a1 + 32));
    v15 = sel_getName(*(a1 + 40));
    *buf = 67110146;
    v17 = v13;
    v18 = 2082;
    v19 = v14;
    v20 = 2082;
    v21 = v15;
    v22 = 1024;
    v23 = 636;
    v24 = 2112;
    v25 = qword_10035DAA8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Fury CPMS : %@", buf, 0x2Cu);
  }
}

uint64_t sub_1001AE6C4(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v18 = 0;
  LODWORD(v3) = [v2 activityStoppedWithLevel:&off_1003339A8 options:0 error:&v18];
  v4 = v18;
  if (v4)
  {
    v3 = 0;
  }

  else
  {
    v3 = v3;
  }

  if ((v3 & 1) == 0)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v6 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("didEndPaymentActivityForCoreDuet");
      v9 = 45;
      if (isMetaClass)
      {
        v9 = 43;
      }

      v6(3, "%c[%{public}s %{public}s]:%i Error stopping PPM activity: %{public}@", v9, ClassName, Name, 657, v4);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v10 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = object_getClass(a1);
      if (class_isMetaClass(v11))
      {
        v12 = 43;
      }

      else
      {
        v12 = 45;
      }

      v13 = object_getClassName(a1);
      v14 = sel_getName("didEndPaymentActivityForCoreDuet");
      *buf = 67110146;
      v20 = v12;
      v21 = 2082;
      v22 = v13;
      v23 = 2082;
      v24 = v14;
      v25 = 1024;
      v26 = 657;
      v27 = 2114;
      v28 = v4;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Error stopping PPM activity: %{public}@", buf, 0x2Cu);
    }
  }

  return v3;
}

BOOL sub_1001AE8B0(uint64_t a1, double a2)
{
  if (!a1)
  {
    return 0;
  }

  if (!*(a1 + 16))
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v7 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("didEndPaymentActivityForCPMS");
      v11 = 45;
      if (isMetaClass)
      {
        v11 = 43;
      }

      v7(3, "%c[%{public}s %{public}s]:%i Error : no CPMS description", v11, ClassName, Name, 672);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v12 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = object_getClass(a1);
      if (class_isMetaClass(v13))
      {
        v14 = 43;
      }

      else
      {
        v14 = 45;
      }

      *buf = 67109890;
      *v51 = v14;
      *&v51[4] = 2082;
      *&v51[6] = object_getClassName(a1);
      v52 = 2082;
      v53 = sel_getName("didEndPaymentActivityForCPMS");
      v54 = 1024;
      v55 = 672;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Error : no CPMS description", buf, 0x22u);
    }

    v15 = 0;
    goto LABEL_42;
  }

  v4 = *(a1 + 40);
  v5 = *(a1 + 24);
  if (v4)
  {
    sub_1001ABA04(v5, a2);
  }

  else
  {
    sub_1001AB950(v5, a2);
  }
  v16 = ;
  v17 = NFSharedSignpostLog();
  if (os_signpost_enabled(v17))
  {
    *buf = 138412290;
    *v51 = v16;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CPMS_REQUEST", "%@", buf, 0xCu);
  }

  sub_10027E7D8(v18);
  v19 = [*(v2 + 32) sharedCPMSAgent];
  v49 = 0;
  v20 = [v19 copyPowerBudgetForRequest:v16 forClient:3 error:&v49];
  v12 = v49;

  if (!v20 || v12)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v33 = NFLogGetLogger();
    if (v33)
    {
      v34 = v33;
      v35 = object_getClass(a1);
      v36 = class_isMetaClass(v35);
      v44 = object_getClassName(a1);
      v47 = sel_getName("didEndPaymentActivityForCPMS");
      v37 = 45;
      if (v36)
      {
        v37 = 43;
      }

      v34(3, "%c[%{public}s %{public}s]:%i Failed to get power budget: error: %{public}@", v37, v44, v47, 687, v12);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v27 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_40;
    }

    v38 = object_getClass(a1);
    if (class_isMetaClass(v38))
    {
      v39 = 43;
    }

    else
    {
      v39 = 45;
    }

    v40 = object_getClassName(a1);
    v41 = sel_getName("didEndPaymentActivityForCPMS");
    *buf = 67110146;
    *v51 = v39;
    *&v51[4] = 2082;
    *&v51[6] = v40;
    v52 = 2082;
    v53 = v41;
    v54 = 1024;
    v55 = 687;
    v56 = 2114;
    v57 = v12;
    v32 = "%c[%{public}s %{public}s]:%i Failed to get power budget: error: %{public}@";
    goto LABEL_39;
  }

  v21 = [*(v2 + 32) sharedCPMSAgent];
  v48 = 0;
  [v21 acknowledgePowerBudget:v20 forClientId:3 error:&v48];
  v12 = v48;

  if (v12)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v22 = NFLogGetLogger();
    if (v22)
    {
      v23 = v22;
      v24 = object_getClass(a1);
      v25 = class_isMetaClass(v24);
      v43 = object_getClassName(a1);
      v46 = sel_getName("didEndPaymentActivityForCPMS");
      v26 = 45;
      if (v25)
      {
        v26 = 43;
      }

      v23(3, "%c[%{public}s %{public}s]:%i Failed to acknowledge budget: error: %{public}@", v26, v43, v46, 683, v12);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v27 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_40;
    }

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
    v31 = sel_getName("didEndPaymentActivityForCPMS");
    *buf = 67110146;
    *v51 = v29;
    *&v51[4] = 2082;
    *&v51[6] = v30;
    v52 = 2082;
    v53 = v31;
    v54 = 1024;
    v55 = 683;
    v56 = 2114;
    v57 = v12;
    v32 = "%c[%{public}s %{public}s]:%i Failed to acknowledge budget: error: %{public}@";
LABEL_39:
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, v32, buf, 0x2Cu);
LABEL_40:
  }

  v15 = v12 == 0;

LABEL_42:
  return v15;
}

uint64_t sub_1001AEDB0(uint64_t result, double a2)
{
  if (result)
  {
    v2 = result;
    if (*(result + 41) == 1)
    {
      *(result + 41) = 0;
      if (sub_1001AC86C(result, a2))
      {

        return sub_1001AE8B0(v2, v3);
      }

      else
      {

        return sub_1001AE6C4(v2);
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1001AEE34(void *a1)
{
  if (!a1 || !a1[1])
  {
    return 0;
  }

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1001AF088;
  v20[3] = &unk_10031B2C8;
  v20[4] = a1;
  v20[5] = "willStartPaymentActivityForCoreDuet";
  v2 = objc_retainBlock(v20);
  v3 = a1[1];
  v19 = 0;
  LODWORD(v4) = [v3 admissionCheckWithLevel:&off_1003339A8 options:0 error:&v19 handler:v2];
  v5 = v19;
  if (v5)
  {
    v4 = 0;
  }

  else
  {
    v4 = v4;
  }

  if ((v4 & 1) == 0)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v7 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("willStartPaymentActivityForCoreDuet");
      v10 = 45;
      if (isMetaClass)
      {
        v10 = 43;
      }

      v7(3, "%c[%{public}s %{public}s]:%i Error starting PPM activity: %{public}@", v10, ClassName, Name, 736, v5);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v11 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
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

      v14 = object_getClassName(a1);
      v15 = sel_getName("willStartPaymentActivityForCoreDuet");
      *buf = 67110146;
      v22 = v13;
      v23 = 2082;
      v24 = v14;
      v25 = 2082;
      v26 = v15;
      v27 = 1024;
      v28 = 736;
      v29 = 2114;
      v30 = v5;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Error starting PPM activity: %{public}@", buf, 0x2Cu);
    }
  }

  return v4;
}

void sub_1001AF088(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  v7 = Logger;
  if (a2 == 1)
  {
    if (Logger)
    {
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 40));
      v11 = 45;
      if (isMetaClass)
      {
        v11 = 43;
      }

      v7(6, "%c[%{public}s %{public}s]:%i started", v11, ClassName, Name, 723);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v12 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v13))
      {
        v14 = 43;
      }

      else
      {
        v14 = 45;
      }

      v15 = object_getClassName(*(a1 + 32));
      v16 = sel_getName(*(a1 + 40));
      *buf = 67109890;
      v32 = v14;
      v33 = 2082;
      v34 = v15;
      v35 = 2082;
      v36 = v16;
      v37 = 1024;
      v38 = 723;
      v17 = "%c[%{public}s %{public}s]:%i started";
      v18 = v12;
      v19 = OS_LOG_TYPE_DEFAULT;
      v20 = 34;
LABEL_20:
      _os_log_impl(&_mh_execute_header, v18, v19, v17, buf, v20);
    }
  }

  else
  {
    if (Logger)
    {
      v21 = object_getClass(*(a1 + 32));
      v22 = class_isMetaClass(v21);
      v28 = object_getClassName(*(a1 + 32));
      v30 = sel_getName(*(a1 + 40));
      v23 = 45;
      if (v22)
      {
        v23 = 43;
      }

      v7(3, "%c[%{public}s %{public}s]:%i PPM refuses to start activity: %{public}@", v23, v28, v30, 721, v5);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v12 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v24 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v24))
      {
        v25 = 43;
      }

      else
      {
        v25 = 45;
      }

      v26 = object_getClassName(*(a1 + 32));
      v27 = sel_getName(*(a1 + 40));
      *buf = 67110146;
      v32 = v25;
      v33 = 2082;
      v34 = v26;
      v35 = 2082;
      v36 = v27;
      v37 = 1024;
      v38 = 721;
      v39 = 2114;
      v40 = v5;
      v17 = "%c[%{public}s %{public}s]:%i PPM refuses to start activity: %{public}@";
      v18 = v12;
      v19 = OS_LOG_TYPE_ERROR;
      v20 = 44;
      goto LABEL_20;
    }
  }
}

BOOL sub_1001AF328(uint64_t a1, double a2)
{
  if (!a1)
  {
    return 0;
  }

  if (!*(a1 + 16))
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v7 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("willStartPaymentActivityForCPMS");
      v11 = 45;
      if (isMetaClass)
      {
        v11 = 43;
      }

      v7(3, "%c[%{public}s %{public}s]:%i Error : no CPMS description", v11, ClassName, Name, 752);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v12 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = object_getClass(a1);
      if (class_isMetaClass(v13))
      {
        v14 = 43;
      }

      else
      {
        v14 = 45;
      }

      *buf = 67109890;
      *v51 = v14;
      *&v51[4] = 2082;
      *&v51[6] = object_getClassName(a1);
      v52 = 2082;
      v53 = sel_getName("willStartPaymentActivityForCPMS");
      v54 = 1024;
      v55 = 752;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Error : no CPMS description", buf, 0x22u);
    }

    v15 = 0;
    goto LABEL_42;
  }

  v4 = *(a1 + 40);
  v5 = *(a1 + 24);
  if (v4)
  {
    sub_1001AC03C(v5, a2);
  }

  else
  {
    sub_1001ABD18(v5, a2);
  }
  v16 = ;
  v17 = NFSharedSignpostLog();
  if (os_signpost_enabled(v17))
  {
    *buf = 138412290;
    *v51 = v16;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CPMS_REQUEST", "%@", buf, 0xCu);
  }

  sub_10027E7D8(v18);
  v19 = [*(v2 + 32) sharedCPMSAgent];
  v49 = 0;
  v20 = [v19 copyPowerBudgetForRequest:v16 forClient:3 error:&v49];
  v12 = v49;

  if (!v20 || v12)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v33 = NFLogGetLogger();
    if (v33)
    {
      v34 = v33;
      v35 = object_getClass(a1);
      v36 = class_isMetaClass(v35);
      v44 = object_getClassName(a1);
      v47 = sel_getName("willStartPaymentActivityForCPMS");
      v37 = 45;
      if (v36)
      {
        v37 = 43;
      }

      v34(3, "%c[%{public}s %{public}s]:%i Failed to get power budget: error: %{public}@", v37, v44, v47, 767, v12);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v27 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_40;
    }

    v38 = object_getClass(a1);
    if (class_isMetaClass(v38))
    {
      v39 = 43;
    }

    else
    {
      v39 = 45;
    }

    v40 = object_getClassName(a1);
    v41 = sel_getName("willStartPaymentActivityForCPMS");
    *buf = 67110146;
    *v51 = v39;
    *&v51[4] = 2082;
    *&v51[6] = v40;
    v52 = 2082;
    v53 = v41;
    v54 = 1024;
    v55 = 767;
    v56 = 2114;
    v57 = v12;
    v32 = "%c[%{public}s %{public}s]:%i Failed to get power budget: error: %{public}@";
    goto LABEL_39;
  }

  v21 = [*(v2 + 32) sharedCPMSAgent];
  v48 = 0;
  [v21 acknowledgePowerBudget:v20 forClientId:3 error:&v48];
  v12 = v48;

  if (v12)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v22 = NFLogGetLogger();
    if (v22)
    {
      v23 = v22;
      v24 = object_getClass(a1);
      v25 = class_isMetaClass(v24);
      v43 = object_getClassName(a1);
      v46 = sel_getName("willStartPaymentActivityForCPMS");
      v26 = 45;
      if (v25)
      {
        v26 = 43;
      }

      v23(3, "%c[%{public}s %{public}s]:%i Failed to acknowledge budget: error: %{public}@", v26, v43, v46, 763, v12);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v27 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_40;
    }

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
    v31 = sel_getName("willStartPaymentActivityForCPMS");
    *buf = 67110146;
    *v51 = v29;
    *&v51[4] = 2082;
    *&v51[6] = v30;
    v52 = 2082;
    v53 = v31;
    v54 = 1024;
    v55 = 763;
    v56 = 2114;
    v57 = v12;
    v32 = "%c[%{public}s %{public}s]:%i Failed to acknowledge budget: error: %{public}@";
LABEL_39:
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, v32, buf, 0x2Cu);
LABEL_40:
  }

  v15 = v12 == 0;

LABEL_42:
  return v15;
}

uint64_t sub_1001AF828(uint64_t result, double a2)
{
  if (result)
  {
    v2 = result;
    if (*(result + 41))
    {
      return 1;
    }

    if (sub_1001AC86C(result, a2))
    {
      if (!sub_1001AF328(v2, v3))
      {
        return 0;
      }
    }

    else
    {
      result = sub_1001AEE34(v2);
      if (!result)
      {
        return result;
      }
    }

    result = 1;
    *(v2 + 41) = 1;
  }

  return result;
}

uint64_t sub_1001AF894(uint64_t a1, void *a2)
{
  v4 = a2;
  v6 = v4;
  if (a1)
  {
    if (*(a1 + 40))
    {
      if (v4)
      {
        v7 = *(a1 + 32);
        objc_sync_enter(v7);
        [*(a1 + 32) removeObject:v6];
        objc_sync_exit(v7);
      }

      if (!sub_1001AC86C(a1, v5))
      {
        v20 = *(a1 + 8);
        if (v20)
        {
          v77 = 0;
          LODWORD(v19) = [v20 activityStoppedWithLevel:&off_1003339C0 options:0 error:&v77];
          v21 = v77;
          if (v21)
          {
            v19 = 0;
          }

          else
          {
            v19 = v19;
          }

          if ((v19 & 1) == 0)
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            Logger = NFLogGetLogger();
            if (Logger)
            {
              v23 = Logger;
              Class = object_getClass(a1);
              isMetaClass = class_isMetaClass(Class);
              ClassName = object_getClassName(a1);
              Name = sel_getName("didEndReaderActivityForCoreDuet");
              v26 = 45;
              if (isMetaClass)
              {
                v26 = 43;
              }

              v23(3, "%c[%{public}s %{public}s]:%i Error stopping PPM activity: %{public}@", v26, ClassName, Name, 814, v21);
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
              v31 = sel_getName("didEndReaderActivityForCoreDuet");
              *buf = 67110146;
              *v79 = v29;
              *&v79[4] = 2082;
              *&v79[6] = v30;
              v80 = 2082;
              v81 = v31;
              v82 = 1024;
              v83 = 814;
              v84 = 2114;
              v85 = v21;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Error stopping PPM activity: %{public}@", buf, 0x2Cu);
            }
          }
        }

        else
        {
          v19 = 0;
        }

        goto LABEL_75;
      }

      if (!*(a1 + 16))
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v32 = NFLogGetLogger();
        if (v32)
        {
          v33 = v32;
          v34 = object_getClass(a1);
          v35 = class_isMetaClass(v34);
          v36 = object_getClassName(a1);
          v73 = sel_getName("didEndReaderActivityForCPMS");
          v37 = 45;
          if (v35)
          {
            v37 = 43;
          }

          v33(3, "%c[%{public}s %{public}s]:%i Error : no CPMS description", v37, v36, v73, 830);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v38 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
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

          *buf = 67109890;
          *v79 = v40;
          *&v79[4] = 2082;
          *&v79[6] = object_getClassName(a1);
          v80 = 2082;
          v81 = sel_getName("didEndReaderActivityForCPMS");
          v82 = 1024;
          v83 = 830;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Error : no CPMS description", buf, 0x22u);
        }

        v19 = 0;
        goto LABEL_74;
      }

      v9 = *(a1 + 24);
      if (*(a1 + 41))
      {
        sub_1001ABD18(v9, v8);
      }

      else
      {
        sub_1001AB950(v9, v8);
      }
      v41 = ;
      v42 = NFSharedSignpostLog();
      if (os_signpost_enabled(v42))
      {
        *buf = 138412290;
        *v79 = v41;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v42, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CPMS_REQUEST", "%@", buf, 0xCu);
      }

      sub_10027E7FC(v43);
      v44 = [*(v2 + 32) sharedCPMSAgent];
      v77 = 0;
      v45 = [v44 copyPowerBudgetForRequest:v41 forClient:3 error:&v77];
      v38 = v77;

      if (!v45 || v38)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v58 = NFLogGetLogger();
        if (v58)
        {
          v59 = v58;
          v60 = object_getClass(a1);
          v61 = class_isMetaClass(v60);
          v70 = object_getClassName(a1);
          v75 = sel_getName("didEndReaderActivityForCPMS");
          v62 = 45;
          if (v61)
          {
            v62 = 43;
          }

          v59(3, "%c[%{public}s %{public}s]:%i Failed to get power budget: error: %{public}@", v62, v70, v75, 845, v38);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v52 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_72;
        }

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
        v66 = sel_getName("didEndReaderActivityForCPMS");
        *buf = 67110146;
        *v79 = v64;
        *&v79[4] = 2082;
        *&v79[6] = v65;
        v80 = 2082;
        v81 = v66;
        v82 = 1024;
        v83 = 845;
        v84 = 2114;
        v85 = v38;
        v57 = "%c[%{public}s %{public}s]:%i Failed to get power budget: error: %{public}@";
      }

      else
      {
        v46 = [*(v2 + 32) sharedCPMSAgent];
        v76 = 0;
        [v46 acknowledgePowerBudget:v45 forClientId:3 error:&v76];
        v38 = v76;

        if (!v38)
        {
LABEL_73:
          v19 = v38 == 0;

LABEL_74:
LABEL_75:
          *(a1 + 40) = 0;
          goto LABEL_76;
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v47 = NFLogGetLogger();
        if (v47)
        {
          v48 = v47;
          v49 = object_getClass(a1);
          v50 = class_isMetaClass(v49);
          v69 = object_getClassName(a1);
          v74 = sel_getName("didEndReaderActivityForCPMS");
          v51 = 45;
          if (v50)
          {
            v51 = 43;
          }

          v48(3, "%c[%{public}s %{public}s]:%i Failed to acknowledge budget: error: %{public}@", v51, v69, v74, 841, v38);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v52 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
LABEL_72:

          goto LABEL_73;
        }

        v53 = object_getClass(a1);
        if (class_isMetaClass(v53))
        {
          v54 = 43;
        }

        else
        {
          v54 = 45;
        }

        v55 = object_getClassName(a1);
        v56 = sel_getName("didEndReaderActivityForCPMS");
        *buf = 67110146;
        *v79 = v54;
        *&v79[4] = 2082;
        *&v79[6] = v55;
        v80 = 2082;
        v81 = v56;
        v82 = 1024;
        v83 = 841;
        v84 = 2114;
        v85 = v38;
        v57 = "%c[%{public}s %{public}s]:%i Failed to acknowledge budget: error: %{public}@";
      }

      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, v57, buf, 0x2Cu);
      goto LABEL_72;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v10 = NFLogGetLogger();
    if (v10)
    {
      v11 = v10;
      v12 = object_getClass(a1);
      v13 = class_isMetaClass(v12);
      v14 = object_getClassName(a1);
      v71 = sel_getName("didEndReaderActivityWithDelegate:");
      v15 = 45;
      if (v13)
      {
        v15 = 43;
      }

      v11(6, "%c[%{public}s %{public}s]:%i Reader activity not started", v15, v14, v71, 859);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v16 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
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
      *v79 = v18;
      *&v79[4] = 2082;
      *&v79[6] = object_getClassName(a1);
      v80 = 2082;
      v81 = sel_getName("didEndReaderActivityWithDelegate:");
      v82 = 1024;
      v83 = 859;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Reader activity not started", buf, 0x22u);
    }
  }

  v19 = 0;
LABEL_76:

  return v19;
}

void sub_1001B0080(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  v7 = Logger;
  if (a2 == 1)
  {
    if (Logger)
    {
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 40));
      v11 = 45;
      if (isMetaClass)
      {
        v11 = 43;
      }

      v7(6, "%c[%{public}s %{public}s]:%i acitvity started", v11, ClassName, Name, 893);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v12 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v13))
      {
        v14 = 43;
      }

      else
      {
        v14 = 45;
      }

      v15 = object_getClassName(*(a1 + 32));
      v16 = sel_getName(*(a1 + 40));
      *buf = 67109890;
      v32 = v14;
      v33 = 2082;
      v34 = v15;
      v35 = 2082;
      v36 = v16;
      v37 = 1024;
      v38 = 893;
      v17 = "%c[%{public}s %{public}s]:%i acitvity started";
      v18 = v12;
      v19 = OS_LOG_TYPE_DEFAULT;
      v20 = 34;
LABEL_20:
      _os_log_impl(&_mh_execute_header, v18, v19, v17, buf, v20);
    }
  }

  else
  {
    if (Logger)
    {
      v21 = object_getClass(*(a1 + 32));
      v22 = class_isMetaClass(v21);
      v28 = object_getClassName(*(a1 + 32));
      v30 = sel_getName(*(a1 + 40));
      v23 = 45;
      if (v22)
      {
        v23 = 43;
      }

      v7(3, "%c[%{public}s %{public}s]:%i PPM refuses to start activity: %{public}@", v23, v28, v30, 890, v5);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v12 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v24 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v24))
      {
        v25 = 43;
      }

      else
      {
        v25 = 45;
      }

      v26 = object_getClassName(*(a1 + 32));
      v27 = sel_getName(*(a1 + 40));
      *buf = 67110146;
      v32 = v25;
      v33 = 2082;
      v34 = v26;
      v35 = 2082;
      v36 = v27;
      v37 = 1024;
      v38 = 890;
      v39 = 2114;
      v40 = v5;
      v17 = "%c[%{public}s %{public}s]:%i PPM refuses to start activity: %{public}@";
      v18 = v12;
      v19 = OS_LOG_TYPE_ERROR;
      v20 = 44;
      goto LABEL_20;
    }
  }
}

uint64_t sub_1001B0320(uint64_t a1, void *a2)
{
  v4 = a2;
  if (!a1)
  {
    v14 = 0;
    goto LABEL_72;
  }

  if (*(a1 + 40) == 1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v6 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("willStartReaderActivityWithDelegate:");
      v10 = 45;
      if (isMetaClass)
      {
        v10 = 43;
      }

      v6(6, "%c[%{public}s %{public}s]:%i Reader activity already started", v10, ClassName, Name, 952);
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
      *&buf[4] = v13;
      *&buf[8] = 2082;
      *&buf[10] = object_getClassName(a1);
      *&buf[18] = 2082;
      *&buf[20] = sel_getName("willStartReaderActivityWithDelegate:");
      *&buf[28] = 1024;
      *&buf[30] = 952;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Reader activity already started", buf, 0x22u);
    }

    goto LABEL_13;
  }

  *(a1 + 40) = 1;
  v15 = *(a1 + 32);
  objc_sync_enter(v15);
  [*(a1 + 32) addObject:v4];
  objc_sync_exit(v15);

  if (sub_1001AC86C(a1, v16))
  {
    if (!*(a1 + 16))
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v24 = NFLogGetLogger();
      if (v24)
      {
        v25 = v24;
        v26 = object_getClass(a1);
        v27 = class_isMetaClass(v26);
        v28 = object_getClassName(a1);
        v76 = sel_getName("willStartReaderActivityForCPMS");
        v29 = 45;
        if (v27)
        {
          v29 = 43;
        }

        v25(3, "%c[%{public}s %{public}s]:%i Error : no CPMS description", v29, v28, v76, 922);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v30 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
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

        *buf = 67109890;
        *&buf[4] = v32;
        *&buf[8] = 2082;
        *&buf[10] = object_getClassName(a1);
        *&buf[18] = 2082;
        *&buf[20] = sel_getName("willStartReaderActivityForCPMS");
        *&buf[28] = 1024;
        *&buf[30] = 922;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Error : no CPMS description", buf, 0x22u);
      }

      goto LABEL_69;
    }

    v18 = *(a1 + 24);
    if (*(a1 + 41))
    {
      sub_1001AC03C(v18, v17);
    }

    else
    {
      sub_1001ABA04(v18, v17);
    }
    v43 = ;
    v44 = NFSharedSignpostLog();
    if (os_signpost_enabled(v44))
    {
      *buf = 138412290;
      *&buf[4] = v43;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v44, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CPMS_REQUEST", "%@", buf, 0xCu);
    }

    sub_10027E7FC(v45);
    v46 = [*(v2 + 32) sharedCPMSAgent];
    *v81 = 0;
    v47 = [v46 copyPowerBudgetForRequest:v43 forClient:3 error:v81];
    v48 = *v81;

    if (!v47 || v48)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v61 = NFLogGetLogger();
      if (v61)
      {
        v62 = v61;
        v63 = object_getClass(a1);
        v64 = class_isMetaClass(v63);
        v74 = object_getClassName(a1);
        v79 = sel_getName("willStartReaderActivityForCPMS");
        v65 = 45;
        if (v64)
        {
          v65 = 43;
        }

        v62(3, "%c[%{public}s %{public}s]:%i Failed to get power budget: error: %{public}@", v65, v74, v79, 937, v48);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v55 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_67;
      }

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
      v69 = sel_getName("willStartReaderActivityForCPMS");
      *buf = 67110146;
      *&buf[4] = v67;
      *&buf[8] = 2082;
      *&buf[10] = v68;
      *&buf[18] = 2082;
      *&buf[20] = v69;
      *&buf[28] = 1024;
      *&buf[30] = 937;
      *&buf[34] = 2114;
      *&buf[36] = v48;
      v60 = "%c[%{public}s %{public}s]:%i Failed to get power budget: error: %{public}@";
    }

    else
    {
      v49 = [*(v2 + 32) sharedCPMSAgent];
      v80 = 0;
      [v49 acknowledgePowerBudget:v47 forClientId:3 error:&v80];
      v48 = v80;

      if (!v48)
      {
        goto LABEL_68;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v50 = NFLogGetLogger();
      if (v50)
      {
        v51 = v50;
        v52 = object_getClass(a1);
        v53 = class_isMetaClass(v52);
        v73 = object_getClassName(a1);
        v78 = sel_getName("willStartReaderActivityForCPMS");
        v54 = 45;
        if (v53)
        {
          v54 = 43;
        }

        v51(3, "%c[%{public}s %{public}s]:%i Failed to acknowledge budget: error: %{public}@", v54, v73, v78, 933, v48);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v55 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
LABEL_67:

LABEL_68:
        if (v48)
        {
          goto LABEL_69;
        }

LABEL_13:
        v14 = 1;
        goto LABEL_72;
      }

      v56 = object_getClass(a1);
      if (class_isMetaClass(v56))
      {
        v57 = 43;
      }

      else
      {
        v57 = 45;
      }

      v58 = object_getClassName(a1);
      v59 = sel_getName("willStartReaderActivityForCPMS");
      *buf = 67110146;
      *&buf[4] = v57;
      *&buf[8] = 2082;
      *&buf[10] = v58;
      *&buf[18] = 2082;
      *&buf[20] = v59;
      *&buf[28] = 1024;
      *&buf[30] = 933;
      *&buf[34] = 2114;
      *&buf[36] = v48;
      v60 = "%c[%{public}s %{public}s]:%i Failed to acknowledge budget: error: %{public}@";
    }

    _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, v60, buf, 0x2Cu);
    goto LABEL_67;
  }

  if (*(a1 + 8))
  {
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_1001B0080;
    *&buf[24] = &unk_10031B2C8;
    *&buf[32] = a1;
    *&buf[40] = "willStartReaderActivityForCoreDuet";
    v19 = objc_retainBlock(buf);
    v20 = *(a1 + 8);
    v80 = 0;
    v21 = [v20 admissionCheckWithLevel:&off_1003339C0 options:0 error:&v80 handler:v19];
    v22 = v80;
    v23 = v22;
    if (!v21 || v22)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v33 = NFLogGetLogger();
      if (v33)
      {
        v34 = v33;
        v35 = object_getClass(a1);
        v36 = class_isMetaClass(v35);
        v72 = object_getClassName(a1);
        v77 = sel_getName("willStartReaderActivityForCoreDuet");
        v37 = 45;
        if (v36)
        {
          v37 = 43;
        }

        v34(3, "%c[%{public}s %{public}s]:%i Error starting PPM activity: %{public}@", v37, v72, v77, 906, v23);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v38 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
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
        v42 = sel_getName("willStartReaderActivityForCoreDuet");
        *v81 = 67110146;
        *&v81[4] = v40;
        v82 = 2082;
        v83 = v41;
        v84 = 2082;
        v85 = v42;
        v86 = 1024;
        v87 = 906;
        v88 = 2114;
        v89 = v23;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Error starting PPM activity: %{public}@", v81, 0x2Cu);
      }

      goto LABEL_69;
    }

    goto LABEL_13;
  }

LABEL_69:
  if (v4)
  {
    v70 = *(a1 + 32);
    objc_sync_enter(v70);
    [*(a1 + 32) removeObject:v4];
    objc_sync_exit(v70);
  }

  v14 = 0;
  *(a1 + 40) = 0;
LABEL_72:

  return v14;
}

void sub_1001B14C8(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  if ((*(v6 + 257) & 1) == 0)
  {
    *(v6 + 257) = 1;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v8 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 56));
      [v5 debugDescription];
      v13 = v5;
      v15 = v14 = a3;
      v16 = [v15 UTF8String];
      v17 = [*(a1 + 40) sessionUID];
      v18 = 45;
      if (isMetaClass)
      {
        v18 = 43;
      }

      v8(6, "%c[%{public}s %{public}s]:%i UI is dismissed, error = %s for session %@", v18, ClassName, Name, 220, v16, v17);

      a3 = v14;
      v5 = v13;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v19 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v20))
      {
        v21 = 43;
      }

      else
      {
        v21 = 45;
      }

      v47 = v21;
      v22 = object_getClassName(*(a1 + 32));
      v23 = sel_getName(*(a1 + 56));
      v24 = [v5 debugDescription];
      v25 = a3;
      v26 = [v24 UTF8String];
      v27 = [*(a1 + 40) sessionUID];
      *buf = 67110402;
      v63 = v47;
      v64 = 2082;
      v65 = v22;
      v66 = 2082;
      v67 = v23;
      v68 = 1024;
      v69 = 220;
      v70 = 2080;
      v71 = v26;
      a3 = v25;
      v72 = 2112;
      v73 = v27;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i UI is dismissed, error = %s for session %@", buf, 0x36u);
    }

    v28 = [NSError alloc];
    v29 = [NSString stringWithUTF8String:"nfcd"];
    if (a3)
    {
      v60 = NSLocalizedDescriptionKey;
      v30 = [NSString stringWithUTF8String:"User cancelled"];
      v61 = v30;
      v31 = [NSDictionary dictionaryWithObjects:&v61 forKeys:&v60 count:1];
      v32 = v28;
      v33 = v29;
      v34 = 48;
    }

    else
    {
      v58 = NSLocalizedDescriptionKey;
      v30 = [NSString stringWithUTF8String:"Aborted"];
      v59 = v30;
      v31 = [NSDictionary dictionaryWithObjects:&v59 forKeys:&v58 count:1];
      v32 = v28;
      v33 = v29;
      v34 = 3;
    }

    v35 = [v32 initWithDomain:v33 code:v34 userInfo:v31];

    v36 = *(a1 + 32);
    if (v36[31])
    {
      if (a3)
      {
        v37 = 500000000;
      }

      else
      {
        v37 = 2500000000;
      }

      v38 = dispatch_time(0, v37);
      v39 = [*(a1 + 32) workQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1001B19AC;
      block[3] = &unk_100315FD0;
      v40 = &v55;
      v41 = &v56;
      v55 = *(a1 + 32);
      v56 = v35;
      v42 = &v57;
      v48 = *(a1 + 48);
      v43 = v48;
      v57 = v48;
      v44 = v35;
      dispatch_after(v38, v39, block);
    }

    else
    {
      v39 = [v36 workQueue];
      v50[0] = _NSConcreteStackBlock;
      v50[1] = 3221225472;
      v50[2] = sub_1001B1BC8;
      v50[3] = &unk_100315FD0;
      v40 = &v51;
      v41 = &v52;
      v51 = *(a1 + 32);
      v52 = v35;
      v42 = &v53;
      v49 = *(a1 + 48);
      v45 = v49;
      v53 = v49;
      v46 = v35;
      dispatch_async(v39, v50);
    }
  }
}

id sub_1001B19AC(uint64_t a1)
{
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v3 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 56));
    v8 = [*(a1 + 40) code];
    v9 = [*(a1 + 32) sessionUID];
    v10 = 45;
    if (isMetaClass)
    {
      v10 = 43;
    }

    v3(6, "%c[%{public}s %{public}s]:%i Activating invalidation handler: error=0x%lx for session %@", v10, ClassName, Name, 245, v8, v9);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v11 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v12))
    {
      v13 = 43;
    }

    else
    {
      v13 = 45;
    }

    v14 = object_getClassName(*(a1 + 32));
    v15 = sel_getName(*(a1 + 56));
    v16 = [*(a1 + 40) code];
    v17 = [*(a1 + 32) sessionUID];
    *buf = 67110402;
    v22 = v13;
    v23 = 2082;
    v24 = v14;
    v25 = 2082;
    v26 = v15;
    v27 = 1024;
    v28 = 245;
    v29 = 2048;
    v30 = v16;
    v31 = 2112;
    v32 = v17;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Activating invalidation handler: error=0x%lx for session %@", buf, 0x36u);
  }

  v18 = *(*(a1 + 32) + 248);
  if (v18)
  {
    v19 = *(a1 + 40);
    (*(v18 + 16))();
  }

  [*(a1 + 48) didUIControllerInvalidate:*(a1 + 40)];
  return [*(a1 + 32) clearUIControllerInvalidationHandler];
}

id sub_1001B1BC8(uint64_t a1)
{
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v3 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 56));
    v8 = [*(a1 + 40) code];
    v9 = [*(a1 + 32) sessionUID];
    v10 = 45;
    if (isMetaClass)
    {
      v10 = 43;
    }

    v3(6, "%c[%{public}s %{public}s]:%i Activating invalidation handler: error=0x%lx for session %@", v10, ClassName, Name, 254, v8, v9);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v11 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v12))
    {
      v13 = 43;
    }

    else
    {
      v13 = 45;
    }

    v14 = object_getClassName(*(a1 + 32));
    v15 = sel_getName(*(a1 + 56));
    v16 = [*(a1 + 40) code];
    v17 = [*(a1 + 32) sessionUID];
    *buf = 67110402;
    v20 = v13;
    v21 = 2082;
    v22 = v14;
    v23 = 2082;
    v24 = v15;
    v25 = 1024;
    v26 = 254;
    v27 = 2048;
    v28 = v16;
    v29 = 2112;
    v30 = v17;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Activating invalidation handler: error=0x%lx for session %@", buf, 0x36u);
  }

  [*(a1 + 48) didUIControllerInvalidate:*(a1 + 40)];
  return [*(a1 + 32) clearUIControllerInvalidationHandler];
}

void sub_1001B1DC0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B1EAC;
  block[3] = &unk_10031B580;
  v11 = v3;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v12 = v5;
  v13 = v6;
  v9 = *(a1 + 48);
  v7 = v9;
  v14 = v9;
  v8 = v3;
  dispatch_async(v4, block);
}

void sub_1001B1EAC(uint64_t a1)
{
  if (*(a1 + 32))
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v3 = Logger;
      Class = object_getClass(*(a1 + 40));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 40));
      Name = sel_getName(*(a1 + 64));
      v8 = *(a1 + 32);
      v9 = [*(a1 + 40) sessionUID];
      v10 = 45;
      if (isMetaClass)
      {
        v10 = 43;
      }

      v3(3, "%c[%{public}s %{public}s]:%i Error activating UI : %@ for session %@", v10, ClassName, Name, 265, v8, v9);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v11 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = object_getClass(*(a1 + 40));
      if (class_isMetaClass(v12))
      {
        v13 = 43;
      }

      else
      {
        v13 = 45;
      }

      v14 = object_getClassName(*(a1 + 40));
      v15 = sel_getName(*(a1 + 64));
      v16 = *(a1 + 32);
      v17 = [*(a1 + 40) sessionUID];
      *buf = 67110402;
      v38 = v13;
      v39 = 2082;
      v40 = v14;
      v41 = 2082;
      v42 = v15;
      v43 = 1024;
      v44 = 265;
      v45 = 2112;
      v46 = v16;
      v47 = 2112;
      v48 = v17;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Error activating UI : %@ for session %@", buf, 0x36u);
    }

    [*(a1 + 40) clearUIControllerInvalidationHandler];
    v18 = *(a1 + 32);
  }

  else if (([*(a1 + 40) didEnd] & 1) != 0 || objc_msgSend(*(a1 + 48), "isSuspended"))
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v19 = NFLogGetLogger();
    if (v19)
    {
      v20 = v19;
      v21 = object_getClass(*(a1 + 40));
      v22 = class_isMetaClass(v21);
      v23 = object_getClassName(*(a1 + 40));
      v34 = sel_getName(*(a1 + 64));
      v24 = 45;
      if (v22)
      {
        v24 = 43;
      }

      v20(6, "%c[%{public}s %{public}s]:%i Session has been terminated / suspended", v24, v23, v34, 269);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v25 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = object_getClass(*(a1 + 40));
      if (class_isMetaClass(v26))
      {
        v27 = 43;
      }

      else
      {
        v27 = 45;
      }

      v28 = object_getClassName(*(a1 + 40));
      v29 = sel_getName(*(a1 + 64));
      *buf = 67109890;
      v38 = v27;
      v39 = 2082;
      v40 = v28;
      v41 = 2082;
      v42 = v29;
      v43 = 1024;
      v44 = 269;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Session has been terminated / suspended", buf, 0x22u);
    }

    v30 = [NSError alloc];
    v31 = [NSString stringWithUTF8String:"nfcd"];
    v35 = NSLocalizedDescriptionKey;
    v32 = [NSString stringWithUTF8String:"Invalid State"];
    v36 = v32;
    v33 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    v18 = [v30 initWithDomain:v31 code:12 userInfo:v33];

    [*(*(a1 + 40) + 232) coreNFCUIInvalidate];
  }

  else
  {
    v18 = 0;
    *(*(a1 + 40) + 256) = 1;
  }

  (*(*(a1 + 56) + 16))();
}

void sub_1001B2A80(uint64_t a1)
{
  v2 = _os_activity_create(&_mh_execute_header, "com.apple.nfcd.reader.sessionTimer", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  *state = 0;
  *&state[8] = 0;
  os_activity_scope_enter(v2, state);
  os_activity_scope_leave(state);

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v5 = Logger;
      Class = object_getClass(WeakRetained);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(WeakRetained);
      Name = sel_getName(*(a1 + 40));
      v10 = [WeakRetained clientName];
      v11 = [WeakRetained connection];
      v12 = [v11 processIdentifier];
      v13 = [WeakRetained sessionUID];
      v14 = 43;
      if (!isMetaClass)
      {
        v14 = 45;
      }

      v5(5, "%c[%{public}s %{public}s]:%i Reader session expired: %@ (%d) %@", v14, ClassName, Name, 345, v10, v12, v13);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v15 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = object_getClass(WeakRetained);
      if (class_isMetaClass(v16))
      {
        v17 = 43;
      }

      else
      {
        v17 = 45;
      }

      v18 = object_getClassName(WeakRetained);
      v19 = sel_getName(*(a1 + 40));
      v20 = [WeakRetained clientName];
      v21 = [WeakRetained connection];
      v22 = [v21 processIdentifier];
      v23 = [WeakRetained sessionUID];
      *state = 67110658;
      *&state[4] = v17;
      *&state[8] = 2082;
      *&state[10] = v18;
      v35 = 2082;
      v36 = v19;
      v37 = 1024;
      v38 = 345;
      v39 = 2112;
      v40 = v20;
      v41 = 1024;
      v42 = v22;
      v43 = 2112;
      v44 = v23;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Reader session expired: %@ (%d) %@", state, 0x3Cu);
    }

    *(WeakRetained + 54) = 1;
    v24 = *(WeakRetained + 47);
    *(WeakRetained + 47) = 0;

    *(WeakRetained + 30) = 0;
    [WeakRetained endSession:0];
    v25 = NFSharedSignpostLog();
    if (os_signpost_enabled(v25))
    {
      *state = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v25, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "sessionTimerExpired", &unk_1002E8B7A, state, 2u);
    }

    v26 = [WeakRetained remoteObject];
    v27 = [NSError alloc];
    v28 = [NSString stringWithUTF8String:"nfcd"];
    v32 = NSLocalizedDescriptionKey;
    v29 = [NSString stringWithUTF8String:"Timeout"];
    v33 = v29;
    v30 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v31 = [v27 initWithDomain:v28 code:5 userInfo:v30];
    [v26 didTerminate:v31];
  }
}

void sub_1001B3788(uint64_t a1)
{
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v3 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 40));
    v7 = 45;
    if (isMetaClass)
    {
      v7 = 43;
    }

    v3(4, "%c[%{public}s %{public}s]:%i Stopping reader session due to revocation of PPM", v7, ClassName, Name, 475);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v8 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v9))
    {
      v10 = 43;
    }

    else
    {
      v10 = 45;
    }

    v11 = object_getClassName(*(a1 + 32));
    v12 = sel_getName(*(a1 + 40));
    *buf = 67109890;
    v21 = v10;
    v22 = 2082;
    v23 = v11;
    v24 = 2082;
    v25 = v12;
    v26 = 1024;
    v27 = 475;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Stopping reader session due to revocation of PPM", buf, 0x22u);
  }

  if (([*(a1 + 32) didEnd] & 1) == 0)
  {
    v13 = +[_NFHardwareManager sharedHardwareManager];
    v14 = sub_1001262B4(v13);
    v15 = [v13 defaultRoutingConfig:3];
    v16 = [v13 setRoutingConfig:v15];

    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 352));
    sub_1001AF894(WeakRetained, *(a1 + 32));

    [v13 notifyReaderModeActivityEnd];
    if (v14)
    {
      v18 = NFSharedSignpostLog();
      if (os_signpost_enabled(v18))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Polling", &unk_1002E8B7A, buf, 2u);
      }
    }
  }
}