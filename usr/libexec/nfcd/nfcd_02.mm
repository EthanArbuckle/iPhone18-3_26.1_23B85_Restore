uint64_t sub_100039A54(uint64_t a1, void *a2, void *a3)
{
  v4 = sub_100039AC8(*(a1 + 32), a3, a2, *(a1 + 40));
  v5 = v4;
  if (v4)
  {
    v7 = v4;
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v4);
    v5 = v7;
  }

  return _objc_release_x1(v4, v5);
}

id sub_100039AC8(void **a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v11 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("_disableAuthOnKeys:forApplet:authorization:uid:");
      v15 = 45;
      if (isMetaClass)
      {
        v15 = 43;
      }

      v11(6, "%c[%{public}s %{public}s]:%i AID: %{public}@ keys: %{public}@", v15, ClassName, Name, 1621, v8, v7);
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

      v19 = object_getClassName(a1);
      v20 = sel_getName("_disableAuthOnKeys:forApplet:authorization:uid:");
      *buf = 67110402;
      v96 = v18;
      v97 = 2082;
      v98 = v19;
      v99 = 2082;
      v100 = v20;
      v101 = 1024;
      v102 = 1621;
      v103 = 2114;
      v104 = v8;
      v105 = 2114;
      v106 = v7;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i AID: %{public}@ keys: %{public}@", buf, 0x36u);
    }

    v83 = v9;
    if (v7 && [v7 count])
    {
      v84 = 0;
      v21 = sub_1000366B4(a1, v8, &v84);
      v22 = v84;
      v23 = v22;
      v82 = v7;
      if (!v21 || v22)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v47 = NFLogGetLogger();
        v80 = v23;
        if (v47)
        {
          v48 = v47;
          v49 = object_getClass(a1);
          v50 = class_isMetaClass(v49);
          v51 = v21;
          v52 = object_getClassName(a1);
          v53 = sel_getName("_disableAuthOnKeys:forApplet:authorization:uid:");
          v54 = [v8 identifier];
          v73 = v52;
          v55 = 45;
          if (v50)
          {
            v55 = 43;
          }

          v21 = v51;
          v48(3, "%c[%{public}s %{public}s]:%i Failed to load SE for applet: %{public}@", v55, v73, v53, 1631, v54);

          v23 = v80;
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v56 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          v57 = object_getClass(a1);
          if (class_isMetaClass(v57))
          {
            v58 = 43;
          }

          else
          {
            v58 = 45;
          }

          v59 = object_getClassName(a1);
          v60 = sel_getName("_disableAuthOnKeys:forApplet:authorization:uid:");
          v61 = [v8 identifier];
          *buf = 67110146;
          v96 = v58;
          v97 = 2082;
          v98 = v59;
          v23 = v80;
          v99 = 2082;
          v100 = v60;
          v101 = 1024;
          v102 = 1631;
          v103 = 2114;
          v104 = v61;
          _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to load SE for applet: %{public}@", buf, 0x2Cu);
        }

        v62 = [NSError alloc];
        v63 = [NSString stringWithUTF8String:"nfcd"];
        if (v23)
        {
          sel = [v23 code];
          v91[0] = NSLocalizedDescriptionKey;
          v64 = v62;
          v39 = v8;
          if ([v23 code] > 75)
          {
            v65 = 76;
          }

          else
          {
            v65 = [v23 code];
          }

          v41 = [NSString stringWithUTF8String:off_100315B58[v65]];
          v92[0] = v41;
          v92[1] = v23;
          v91[1] = NSUnderlyingErrorKey;
          v91[2] = @"Line";
          v92[2] = &off_100330258;
          v91[3] = @"Method";
          v42 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_disableAuthOnKeys:forApplet:authorization:uid:")];
          v92[3] = v42;
          v91[4] = NSDebugDescriptionErrorKey;
          v43 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_disableAuthOnKeys:forApplet:authorization:uid:"), 1632];
          v92[4] = v43;
          v69 = [NSDictionary dictionaryWithObjects:v92 forKeys:v91 count:5];
          v45 = [v64 initWithDomain:v63 code:sel userInfo:v69];

          v25 = v80;
          v40 = v63;
        }

        else
        {
          v39 = v8;
          v89[0] = NSLocalizedDescriptionKey;
          v40 = [NSString stringWithUTF8String:"Unknown Error"];
          v90[0] = v40;
          v90[1] = &off_100330258;
          v89[1] = @"Line";
          v89[2] = @"Method";
          v68 = v62;
          v41 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_disableAuthOnKeys:forApplet:authorization:uid:")];
          v90[2] = v41;
          v89[3] = NSDebugDescriptionErrorKey;
          v42 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_disableAuthOnKeys:forApplet:authorization:uid:"), 1632];
          v90[3] = v42;
          v43 = [NSDictionary dictionaryWithObjects:v90 forKeys:v89 count:4];
          v45 = [v68 initWithDomain:v63 code:6 userInfo:v43];
          v25 = v63;
        }
      }

      else
      {
        v24 = [v8 identifierAsData];
        v25 = sub_100257F24(v21, v24, 0);

        if (v25 && ([v25 lifecycleState] == 130 || objc_msgSend(v25, "lifecycleState") == 129))
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v26 = NFLogGetLogger();
          if (v26)
          {
            v27 = v26;
            v28 = object_getClass(a1);
            v29 = v25;
            v30 = class_isMetaClass(v28);
            v72 = object_getClassName(a1);
            v75 = sel_getName("_disableAuthOnKeys:forApplet:authorization:uid:");
            v31 = !v30;
            v25 = v29;
            v32 = 45;
            if (!v31)
            {
              v32 = 43;
            }

            v27(3, "%c[%{public}s %{public}s]:%i Applet %{public}@ is frozen or terminated", v32, v72, v75, 1637, v8);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v33 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            v34 = object_getClass(a1);
            if (class_isMetaClass(v34))
            {
              v35 = 43;
            }

            else
            {
              v35 = 45;
            }

            v36 = v25;
            v37 = object_getClassName(a1);
            v38 = sel_getName("_disableAuthOnKeys:forApplet:authorization:uid:");
            *buf = 67110146;
            v96 = v35;
            v97 = 2082;
            v98 = v37;
            v25 = v36;
            v99 = 2082;
            v100 = v38;
            v101 = 1024;
            v102 = 1637;
            v103 = 2114;
            v104 = v8;
            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Applet %{public}@ is frozen or terminated", buf, 0x2Cu);
          }

          v39 = v8;

          v76 = [NSError alloc];
          v40 = [NSString stringWithUTF8String:"nfcd"];
          v87[0] = NSLocalizedDescriptionKey;
          v41 = [NSString stringWithUTF8String:"Invalid Parameter"];
          v88[0] = v41;
          v88[1] = &off_100330270;
          v87[1] = @"Line";
          v87[2] = @"Method";
          v42 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_disableAuthOnKeys:forApplet:authorization:uid:")];
          v88[2] = v42;
          v87[3] = NSDebugDescriptionErrorKey;
          v43 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_disableAuthOnKeys:forApplet:authorization:uid:"), 1638];
          v88[3] = v43;
          v44 = [NSDictionary dictionaryWithObjects:v88 forKeys:v87 count:4];
          v45 = [v76 initWithDomain:v40 code:10 userInfo:v44];
        }

        else
        {
          v66 = sub_10000E24C(a1[5], v7, v25, 1, v9, 0xFFFFFFFF);
          if (!v66)
          {
            v45 = 0;
LABEL_53:

            v9 = v83;
            goto LABEL_54;
          }

          v40 = v66;
          sela = [NSError alloc];
          v41 = [NSString stringWithUTF8String:"nfcd"];
          v77 = [v40 code];
          v85[0] = NSLocalizedDescriptionKey;
          v81 = v25;
          v39 = v8;
          if ([v40 code] > 75)
          {
            v67 = 76;
          }

          else
          {
            v67 = [v40 code];
          }

          v42 = [NSString stringWithUTF8String:off_100315B58[v67]];
          v86[0] = v42;
          v86[1] = v40;
          v85[1] = NSUnderlyingErrorKey;
          v85[2] = @"Line";
          v86[2] = &off_100330288;
          v85[3] = @"Method";
          v43 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_disableAuthOnKeys:forApplet:authorization:uid:")];
          v86[3] = v43;
          v85[4] = NSDebugDescriptionErrorKey;
          v44 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_disableAuthOnKeys:forApplet:authorization:uid:"), 1647];
          v86[4] = v44;
          v70 = [NSDictionary dictionaryWithObjects:v86 forKeys:v85 count:5];
          v45 = [sela initWithDomain:v41 code:v77 userInfo:v70];

          v25 = v81;
        }
      }

      v7 = v82;
    }

    else
    {
      v39 = v8;
      v46 = [NSError alloc];
      v21 = [NSString stringWithUTF8String:"nfcd"];
      v93[0] = NSLocalizedDescriptionKey;
      v25 = [NSString stringWithUTF8String:"Success"];
      v94[0] = v25;
      v94[1] = &off_100330240;
      v93[1] = @"Line";
      v93[2] = @"Method";
      v40 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_disableAuthOnKeys:forApplet:authorization:uid:")];
      v94[2] = v40;
      v93[3] = NSDebugDescriptionErrorKey;
      v41 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_disableAuthOnKeys:forApplet:authorization:uid:"), 1624];
      v94[3] = v41;
      v42 = [NSDictionary dictionaryWithObjects:v94 forKeys:v93 count:4];
      v45 = [v46 initWithDomain:v21 code:0 userInfo:v42];
    }

    v8 = v39;
    goto LABEL_53;
  }

  v45 = 0;
LABEL_54:

  return v45;
}

id sub_10003A6A0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = objc_opt_new();
    v5 = [*(a1 + 40) getExpressAidsForType:1 onlyInExpress:a2];
    if (v5)
    {
      [v4 addObjectsFromArray:v5];
    }

    v6 = [*(a1 + 40) getExpressAidsForType:5 onlyInExpress:a2];

    if (v6)
    {
      [v4 addObjectsFromArray:v6];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id *sub_10003A754(id *a1)
{
  if (a1)
  {
    a1 = sub_10003A788(a1, 0);
    v1 = vars8;
  }

  return a1;
}

id sub_10003A788(id *a1, void *a2)
{
  if (a1)
  {
    v4 = sub_10002BB84(a1);
    if (v4)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v6 = Logger;
        Class = object_getClass(a1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(a1);
        Name = sel_getName("expressAppletsWithExtraError:");
        v10 = 45;
        if (isMetaClass)
        {
          v10 = 43;
        }

        v6(3, "%c[%{public}s %{public}s]:%i Not yet first unlock", v10, ClassName, Name, 1685);
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

        *buf = 67109890;
        v31 = v13;
        v32 = 2082;
        v33 = object_getClassName(a1);
        v34 = 2082;
        v35 = sel_getName("expressAppletsWithExtraError:");
        v36 = 1024;
        v37 = 1685;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Not yet first unlock", buf, 0x22u);
      }

      if (a2)
      {
        v14 = v4;
        *a2 = v4;
      }

      v15 = objc_opt_new();
    }

    else
    {
      v15 = objc_opt_new();
      v16 = [a1[5] getExpressAidsForType:1];
      if (v16)
      {
        v17 = [NSNumber numberWithInt:1];
        [v15 setObject:v16 forKey:v17];
      }

      v18 = [a1[5] getExpressAidsForType:5];

      if (v18)
      {
        v19 = [NSNumber numberWithInt:5];
        [v15 setObject:v18 forKey:v19];
      }

      v20 = [a1[5] getExpressAidsForType:2];

      if (v20)
      {
        v21 = [NSNumber numberWithInt:2];
        [v15 setObject:v20 forKey:v21];
      }

      v22 = [a1[5] getExpressAidsForType:3];

      if (v22)
      {
        v23 = [NSNumber numberWithInt:3];
        [v15 setObject:v22 forKey:v23];
      }

      v24 = [a1[5] getExpressAidsForType:4];

      if (v24)
      {
        v25 = [NSNumber numberWithInt:4];
        [v15 setObject:v24 forKey:v25];
      }

      v26 = [a1[5] getExpressAidsForType:6];

      if (v26)
      {
        v27 = [NSNumber numberWithInt:6];
        [v15 setObject:v26 forKey:v27];
      }
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

id sub_10003AB1C(uint64_t a1)
{
  if (a1)
  {
    v2 = objc_opt_new();
    v3 = *(a1 + 40);
    v4 = [NSNumber numberWithInteger:*(a1 + 152)];
    [v2 setObject:v4 forKeyedSubscript:@"controlState"];

    if (v3)
    {
      v5 = *(a1 + 40);
      if (v5)
      {
        v6 = *(v5 + 24);
      }

      else
      {
        v6 = 0;
      }

      v7 = [NSNumber numberWithUnsignedInteger:v6];
      [v2 setObject:v7 forKeyedSubscript:@"numberOfExpressFelicaTransitApplets"];

      v8 = *(a1 + 40);
      if (v8)
      {
        v9 = *(v8 + 40);
      }

      else
      {
        v9 = 0;
      }

      v10 = [NSNumber numberWithUnsignedInteger:v9];
      [v2 setObject:v10 forKeyedSubscript:@"numberOfExpressECPAccessApplets"];

      v11 = *(a1 + 40);
      if (v11)
      {
        v12 = *(v11 + 48);
      }

      else
      {
        v12 = 0;
      }

      v13 = [NSNumber numberWithUnsignedInteger:v12];
      [v2 setObject:v13 forKeyedSubscript:@"numberOfExpressGenericAApplets"];

      v14 = *(a1 + 40);
      if (v14)
      {
        v15 = *(v14 + 56);
      }

      else
      {
        v15 = 0;
      }

      v16 = [NSNumber numberWithUnsignedInteger:v15];
      [v2 setObject:v16 forKeyedSubscript:@"numberOfExpressECP2Applets"];

      v17 = *(a1 + 40);
      if (v17)
      {
        v18 = *(v17 + 64);
      }

      else
      {
        v18 = 0;
      }

      v19 = [NSNumber numberWithUnsignedInteger:v18];
      [v2 setObject:v19 forKeyedSubscript:@"numberOfExpressSinglePollApplets"];

      v20 = [NSNumber numberWithBool:*(a1 + 178)];
      [v2 setObject:v20 forKeyedSubscript:@"delayed"];

      v21 = *(a1 + 40);
      if (v21)
      {
        v21 = v21[2];
      }

      v22 = v21;
      [v2 setObject:v22 forKeyedSubscript:@"eseConfig"];
    }

    else
    {
      [v2 setObject:@"Not inited" forKeyedSubscript:@"numberOfExpressFelicaTransitApplets"];
      [v2 setObject:@"Not inited" forKeyedSubscript:@"numberOfExpressECPAccessApplets"];
      [v2 setObject:@"Not inited" forKeyedSubscript:@"numberOfExpressGenericAApplets"];
      [v2 setObject:@"Not inited" forKeyedSubscript:@"numberOfExpressECP2Applets"];
      [v2 setObject:@"Not inited" forKeyedSubscript:@"numberOfExpressSinglePollApplets"];
      v23 = [NSNumber numberWithBool:*(a1 + 178)];
      [v2 setObject:v23 forKeyedSubscript:@"delayed"];

      [v2 setObject:@"Not inited" forKeyedSubscript:@"eseConfig"];
    }

    if (*(a1 + 177))
    {
      v24 = @"YES";
    }

    else
    {
      v24 = @"NO";
    }

    [v2 setObject:v24 forKeyedSubscript:@"paused"];
    if (*(a1 + 179))
    {
      v25 = @"YES";
    }

    else
    {
      v25 = @"NO";
    }

    [v2 setObject:v25 forKeyedSubscript:@"factoryTestMode"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_10003AE30(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (v3)
    {
      v5 = objc_opt_new();
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v30 = v4;
      obj = v4;
      v6 = [obj countByEnumeratingWithState:&v32 objects:v46 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v33;
        do
        {
          v9 = 0;
          do
          {
            if (*v33 != v8)
            {
              objc_enumerationMutation(obj);
            }

            v10 = *(*(&v32 + 1) + 8 * v9);
            v11 = *(a1 + 40);
            if (v10)
            {
              v12 = *(v10 + 8);
              v13 = *(v10 + 16);
            }

            else
            {
              v12 = 0;
              v13 = 0;
            }

            v14 = [v11 passIDListForApplet:v12 keyIdentifiers:v13];

            if ([v14 count])
            {
              [v5 addObjectsFromArray:v14];
            }

            else
            {
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              Logger = NFLogGetLogger();
              if (Logger)
              {
                v16 = Logger;
                Class = object_getClass(a1);
                isMetaClass = class_isMetaClass(Class);
                ClassName = object_getClassName(a1);
                Name = sel_getName("inSessionRestrictToTypeForConfigs:");
                v19 = 45;
                if (isMetaClass)
                {
                  v19 = 43;
                }

                v16(3, "%c[%{public}s %{public}s]:%i Missing associated passID from the config %{public}@", v19, ClassName, Name, 1829, v10);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v20 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                v21 = object_getClass(a1);
                if (class_isMetaClass(v21))
                {
                  v22 = 43;
                }

                else
                {
                  v22 = 45;
                }

                v23 = object_getClassName(a1);
                v24 = sel_getName("inSessionRestrictToTypeForConfigs:");
                *buf = 67110146;
                v37 = v22;
                v38 = 2082;
                v39 = v23;
                v40 = 2082;
                v41 = v24;
                v42 = 1024;
                v43 = 1829;
                v44 = 2114;
                v45 = v10;
                _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Missing associated passID from the config %{public}@", buf, 0x2Cu);
              }
            }

            v9 = v9 + 1;
          }

          while (v7 != v9);
          v25 = [obj countByEnumeratingWithState:&v32 objects:v46 count:16];
          v7 = v25;
        }

        while (v25);
      }

      if ([v5 count])
      {
        v26 = sub_10003B14C(a1, v5, *(a1 + 56));
      }

      else
      {
        v26 = 0;
      }

      v4 = v30;
    }

    else
    {
      v26 = sub_10003B14C(a1, 0, *(a1 + 56));
    }
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

uint64_t sub_10003B14C(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (!a1)
  {
    goto LABEL_68;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v9 = Logger;
    Class = object_getClass(a1);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(a1);
    Name = sel_getName("_updateExpressConfigWithInSessionSet:globalSet:");
    v13 = 45;
    if (isMetaClass)
    {
      v13 = 43;
    }

    v9(6, "%c[%{public}s %{public}s]:%i inSessionSet=%{public}@, globalSet=%{public}@", v13, ClassName, Name, 1870, v6, v7);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v14 = NFSharedLogGetLogger();
  v83 = v6;
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

    *buf = 67110402;
    v90 = v16;
    v6 = v83;
    v91 = 2082;
    v92 = object_getClassName(a1);
    v93 = 2082;
    v94 = sel_getName("_updateExpressConfigWithInSessionSet:globalSet:");
    v95 = 1024;
    v96 = 1870;
    v97 = 2114;
    v98 = v83;
    v99 = 2114;
    v100 = v7;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i inSessionSet=%{public}@, globalSet=%{public}@", buf, 0x36u);
  }

  v81 = +[_NFHardwareManager sharedHardwareManager];
  v17 = sub_1000E9DD4(v81);
  v18 = 56;
  if (v17)
  {
    v18 = 48;
  }

  else
  {
    v6 = v7;
  }

  v82 = *(a1 + v18);
  v19 = v6;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v20 = NFLogGetLogger();
  if (v20)
  {
    v21 = v20;
    v22 = object_getClass(a1);
    v23 = class_isMetaClass(v22);
    v24 = object_getClassName(a1);
    v25 = sel_getName("_updateExpressConfigWithInSessionSet:globalSet:");
    v26 = 43;
    if (!v23)
    {
      v26 = 45;
    }

    v21(6, "%c[%{public}s %{public}s]:%i _inSessionLimitedPassIDs=%{public}@, _globalLimitedPassIDs=%{public}@, hasActiveSession=%d,", v26, v24, v25, 1887, *(a1 + 48), *(a1 + 56), v17);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v27 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
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
    v31 = sel_getName("_updateExpressConfigWithInSessionSet:globalSet:");
    v32 = *(a1 + 48);
    v33 = *(a1 + 56);
    *buf = 67110658;
    v90 = v29;
    v91 = 2082;
    v92 = v30;
    v93 = 2082;
    v94 = v31;
    v95 = 1024;
    v96 = 1887;
    v97 = 2114;
    v98 = v32;
    v99 = 2114;
    v100 = v33;
    v101 = 1024;
    LODWORD(v102) = v17;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i _inSessionLimitedPassIDs=%{public}@, _globalLimitedPassIDs=%{public}@, hasActiveSession=%d,", buf, 0x3Cu);
  }

  if (v19 && v82 && [v19 isEqualToSet:v82])
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v34 = NFLogGetLogger();
    if (v34)
    {
      v35 = v34;
      v36 = object_getClass(a1);
      v37 = class_isMetaClass(v36);
      v38 = object_getClassName(a1);
      v79 = sel_getName("_updateExpressConfigWithInSessionSet:globalSet:");
      v39 = 45;
      if (v37)
      {
        v39 = 43;
      }

      v35(6, "%c[%{public}s %{public}s]:%i No change", v39, v38, v79, 1891);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v40 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v41 = object_getClass(a1);
      if (class_isMetaClass(v41))
      {
        v42 = 43;
      }

      else
      {
        v42 = 45;
      }

      v43 = object_getClassName(a1);
      v44 = sel_getName("_updateExpressConfigWithInSessionSet:globalSet:");
      *buf = 67109890;
      v90 = v42;
      v91 = 2082;
      v92 = v43;
      v93 = 2082;
      v94 = v44;
      v95 = 1024;
      v96 = 1891;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i No change", buf, 0x22u);
    }
  }

  objc_storeStrong((a1 + 48), a2);
  objc_storeStrong((a1 + 56), a3);
  v45 = *(a1 + 48);
  if (v45)
  {
    v46 = v45;

LABEL_39:
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v47 = NFLogGetLogger();
    if (v47)
    {
      v48 = v47;
      v49 = object_getClass(a1);
      v50 = class_isMetaClass(v49);
      v51 = object_getClassName(a1);
      v80 = sel_getName("_updateExpressConfigWithInSessionSet:globalSet:");
      v52 = 45;
      if (v50)
      {
        v52 = 43;
      }

      v48(6, "%c[%{public}s %{public}s]:%i Calculate effective type", v52, v51, v80, 1903);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v53 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      v54 = object_getClass(a1);
      if (class_isMetaClass(v54))
      {
        v55 = 43;
      }

      else
      {
        v55 = 45;
      }

      v56 = object_getClassName(a1);
      v57 = sel_getName("_updateExpressConfigWithInSessionSet:globalSet:");
      *buf = 67109890;
      v90 = v55;
      v91 = 2082;
      v92 = v56;
      v93 = 2082;
      v94 = v57;
      v95 = 1024;
      v96 = 1903;
      _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Calculate effective type", buf, 0x22u);
    }

    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v58 = [*(a1 + 40) expressTypesForPassIDs:v46];
    v59 = [v58 countByEnumeratingWithState:&v84 objects:v105 count:16];
    if (v59)
    {
      v60 = v59;
      v61 = 0;
      v62 = *v85;
      do
      {
        for (i = 0; i != v60; i = i + 1)
        {
          if (*v85 != v62)
          {
            objc_enumerationMutation(v58);
          }

          v61 |= 1 << ([*(*(&v84 + 1) + 8 * i) unsignedIntValue] - 1);
        }

        v60 = [v58 countByEnumeratingWithState:&v84 objects:v105 count:16];
      }

      while (v60);
    }

    else
    {
      v61 = 0;
    }

    goto LABEL_58;
  }

  v46 = *(a1 + 56);

  if (v46)
  {
    goto LABEL_39;
  }

  v61 = 0;
LABEL_58:
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v64 = NFLogGetLogger();
  if (v64)
  {
    v65 = v64;
    v66 = object_getClass(a1);
    v67 = class_isMetaClass(v66);
    v68 = object_getClassName(a1);
    v69 = sel_getName("_updateExpressConfigWithInSessionSet:globalSet:");
    v70 = 43;
    if (!v67)
    {
      v70 = 45;
    }

    v65(6, "%c[%{public}s %{public}s]:%i Express mode limited to type: (%llu -> %llu), passIDs[InSession]: %{public}@, passIDs[global]: %{public}@", v70, v68, v69, 1910, *(a1 + 136), v61, v83, v7);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v71 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
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
    v75 = sel_getName("_updateExpressConfigWithInSessionSet:globalSet:");
    v76 = *(a1 + 136);
    *buf = 67110914;
    v90 = v73;
    v91 = 2082;
    v92 = v74;
    v93 = 2082;
    v94 = v75;
    v95 = 1024;
    v96 = 1910;
    v97 = 2048;
    v98 = v76;
    v99 = 2048;
    v100 = v61;
    v101 = 2114;
    v102 = v83;
    v103 = 2114;
    v104 = v7;
    _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Express mode limited to type: (%llu -> %llu), passIDs[InSession]: %{public}@, passIDs[global]: %{public}@", buf, 0x4Au);
  }

  *(a1 + 136) = v61;
  sub_10002FB28(a1);
  v88 = 1;

  a1 = v88;
  v6 = v83;
LABEL_68:

  return a1;
}

uint64_t sub_10003B984(id *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = +[_NFHardwareManager sharedHardwareManager];
  v3 = [v2 secureElementWrapper];

  v4 = [a1[5] getExpressAidsForType:3];
  v16 = [a1[5] getExpressAidsForType:6];
  v5 = sub_100253854(v3);
  if (!v5)
  {
    if (!sub_100032ABC(a1))
    {
      v8 = 0;
      goto LABEL_19;
    }

    v21 = 0;
    v6 = sub_1002543BC(v3, &v21);
    v5 = v21;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (!v8)
  {
    goto LABEL_18;
  }

  v9 = *v18;
  while (2)
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v18 != v9)
      {
        objc_enumerationMutation(v7);
      }

      v11 = *(*(&v17 + 1) + 8 * i);
      v12 = [v11 identifier];
      if ([v4 containsObject:v12])
      {
      }

      else
      {
        v13 = [v11 identifier];
        v14 = [v16 containsObject:v13];

        if (!v14)
        {
          continue;
        }
      }

      if (sub_10026369C(v3, v11))
      {
        v8 = 1;
        goto LABEL_18;
      }
    }

    v8 = [v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v8)
    {
      continue;
    }

    break;
  }

LABEL_18:

LABEL_19:
  return v8;
}

void sub_10003BB9C(uint64_t a1, char a2)
{
  *(a1 + 179) = a2;
  v3 = +[NSUserDefaults standardUserDefaults];
  [v3 setBool:*(a1 + 179) forKey:@"ExpressModeFactoryTest"];
  [v3 synchronize];
}

id **sub_10003BC08(uint64_t a1, unsigned int a2)
{
  v2 = a1;
  if (a1)
  {
    v4 = sub_10002BB84(a1);
    if (v4)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v6 = Logger;
        Class = object_getClass(v2);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v2);
        Name = sel_getName("setTestMode:");
        v10 = 45;
        if (isMetaClass)
        {
          v10 = 43;
        }

        v6(6, "%c[%{public}s %{public}s]:%i Not yet first unlock; express config failed", v10, ClassName, Name, 1989);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v11 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = object_getClass(v2);
        if (class_isMetaClass(v12))
        {
          v13 = 43;
        }

        else
        {
          v13 = 45;
        }

        *buf = 67109890;
        v37 = v13;
        v38 = 2082;
        v39 = object_getClassName(v2);
        v40 = 2082;
        v41 = sel_getName("setTestMode:");
        v42 = 1024;
        v43 = 1989;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Not yet first unlock; express config failed", buf, 0x22u);
      }
    }

    v14 = *(v2 + 179);
    if (a2)
    {
      sub_10003BB9C(v2, 1);
      v15 = v2[5];
      if (v15)
      {
        *(v15 + 112) = 1;
        v16 = v2[5];
      }

      else
      {
        v16 = 0;
      }

      v17 = [v16 reconfigureWithArray:&__NSArray0__struct restoreAuthorization:0 updateStorage:1];

      if (v17)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v18 = NFLogGetLogger();
        if (v18)
        {
          v19 = v18;
          v20 = object_getClass(v2);
          v21 = class_isMetaClass(v20);
          v33 = object_getClassName(v2);
          v35 = sel_getName("setTestMode:");
          v22 = 45;
          if (v21)
          {
            v22 = 43;
          }

          v19(3, "%c[%{public}s %{public}s]:%i Failed to clear express applets on eSE: %{public}@", v22, v33, v35, 2002, v17);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v23 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v24 = object_getClass(v2);
          if (class_isMetaClass(v24))
          {
            v25 = 43;
          }

          else
          {
            v25 = 45;
          }

          v26 = object_getClassName(v2);
          v27 = sel_getName("setTestMode:");
          *buf = 67110146;
          v37 = v25;
          v38 = 2082;
          v39 = v26;
          v40 = 2082;
          v41 = v27;
          v42 = 1024;
          v43 = 2002;
          v44 = 2114;
          v45 = v17;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to clear express applets on eSE: %{public}@", buf, 0x2Cu);
        }

        sub_10003BB9C(v2, 0);
        goto LABEL_39;
      }

      v29 = sub_100012574(v2[5], 0);
      v17 = v29;
      if (!v14 && v29)
      {
        v30 = v2[5];
        if (v30)
        {
          *(v30 + 112) = 0;
        }

        sub_10003BB9C(v2, 0);
        goto LABEL_38;
      }
    }

    else
    {
      v17 = [v2[5] reconfigureWithArray:&__NSArray0__struct restoreAuthorization:0 updateStorage:1];

      if (v14 && v17)
      {
        goto LABEL_38;
      }

      v28 = v2[5];
      if (v28)
      {
        *(v28 + 112) = 0;
      }

      sub_10003BB9C(v2, 0);
    }

    v17 = 0;
LABEL_38:
    v31 = sub_100030C60(v2, a2);
    sub_10002E078(v2);
    sub_10002E9BC(v2);
LABEL_39:
    v2 = v17;
  }

  return v2;
}

void sub_10003C01C(id a1, NSError *a2, double a3)
{
  v3 = a2;
  if (v3 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    v4 = 134217984;
    v5 = [(NSError *)v3 code];
    _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "ABC submission failure (code=%ld); trigger os state dump", &v4, 0xCu);
  }
}

void sub_10003C0D4(id a1, NSError *a2, double a3)
{
  v3 = a2;
  if (v3 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    v4 = 134217984;
    v5 = [(NSError *)v3 code];
    _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "ABC submission failure (code=%ld); trigger os state dump", &v4, 0xCu);
  }
}

void sub_10003C18C(id a1, NSError *a2, double a3)
{
  v3 = a2;
  if (v3 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    v4 = 134217984;
    v5 = [(NSError *)v3 code];
    _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "ABC submission failure (code=%ld); trigger os state dump", &v4, 0xCu);
  }
}

void sub_10003C244(id a1, NSError *a2, double a3)
{
  v3 = a2;
  if (v3 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    v4 = 134217984;
    v5 = [(NSError *)v3 code];
    _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "ABC submission failure (code=%ld); trigger os state dump", &v4, 0xCu);
  }
}

void sub_10003C2FC(uint64_t a1)
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
    v8 = 45;
    if (isMetaClass)
    {
      v8 = 43;
    }

    v3(6, "%c[%{public}s %{public}s]:%i express mode state %d", v8, ClassName, Name, 2170, *(*(a1 + 32) + 172));
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
    v14 = *(*(a1 + 32) + 172);
    *buf = 67110146;
    v19 = v11;
    v20 = 2082;
    v21 = v12;
    v22 = 2082;
    v23 = v13;
    v24 = 1024;
    v25 = 2170;
    v26 = 1024;
    v27 = v14;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i express mode state %d", buf, 0x28u);
  }

  v15 = *(a1 + 32);
  objc_sync_enter(v15);
  v16 = *(a1 + 32);
  v17 = *(v16 + 172);
  if ((v17 - 1) <= 1)
  {
    *(v16 + 172) = 3;
    v17 = *(*(a1 + 32) + 172);
  }

  objc_sync_exit(v15);

  if (v17 == 5)
  {
    [*(*(a1 + 32) + 8) handleAppletInactivityTimeout:0 atlData:0 caData:0];
  }

  else if (v17 == 3)
  {
    [*(*(a1 + 32) + 8) handleExpressModeTimeout];
  }
}

void sub_10003C584(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(a1 + 40);
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v4 = Logger;
      Class = object_getClass(v1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v1);
      Name = sel_getName("driverExpressModeEnteredSync:");
      v9 = sub_10002BB2C(v2);
      v10 = 45;
      if (isMetaClass)
      {
        v10 = 43;
      }

      v4(6, "%c[%{public}s %{public}s]:%i %{public}@ express mode entered (%d)", v10, ClassName, Name, 2192, v9, v2);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v11 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = object_getClass(v1);
      if (class_isMetaClass(v12))
      {
        v13 = 43;
      }

      else
      {
        v13 = 45;
      }

      v14 = object_getClassName(v1);
      v15 = sel_getName("driverExpressModeEnteredSync:");
      v16 = sub_10002BB2C(v2);
      *buf = 67110402;
      v31 = v13;
      v32 = 2082;
      v33 = v14;
      v34 = 2082;
      v35 = v15;
      v36 = 1024;
      v37 = 2192;
      v38 = 2114;
      v39 = v16;
      v40 = 1024;
      v41 = v2;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@ express mode entered (%d)", buf, 0x32u);
    }

    v17 = v1;
    objc_sync_enter(v17);
    if (v17[181] == 1)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v18 = NFLogGetLogger();
      if (v18)
      {
        v19 = v18;
        v20 = object_getClass(v17);
        v21 = class_isMetaClass(v20);
        v22 = object_getClassName(v17);
        v29 = sel_getName("driverExpressModeEnteredSync:");
        v23 = 45;
        if (v21)
        {
          v23 = 43;
        }

        v19(3, "%c[%{public}s %{public}s]:%i Express mode is already entered?", v23, v22, v29, 2196);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v24 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = object_getClass(v17);
        if (class_isMetaClass(v25))
        {
          v26 = 43;
        }

        else
        {
          v26 = 45;
        }

        v27 = object_getClassName(v17);
        v28 = sel_getName("driverExpressModeEnteredSync:");
        *buf = 67109890;
        v31 = v26;
        v32 = 2082;
        v33 = v27;
        v34 = 2082;
        v35 = v28;
        v36 = 1024;
        v37 = 2196;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Express mode is already entered?", buf, 0x22u);
      }

      objc_sync_exit(v17);
    }

    else
    {
      [*(v17 + 11) stopTimer];
      [*(v17 + 11) startTimer:*(v17 + 16) leeway:0.5];
      *(v17 + 43) = 1;
      v17[176] = v2;
      *(v17 + 181) = 1;
      [*(v17 + 14) removeAllObjects];
      objc_sync_exit(v17);

      [*(v17 + 1) handleExpressModeStarted];
    }
  }
}

void sub_10003C97C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v4 = Logger;
      Class = object_getClass(v1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v1);
      Name = sel_getName("_sync_driverRequestService:");
      v7 = 45;
      if (isMetaClass)
      {
        v7 = 43;
      }

      v4(6, "%c[%{public}s %{public}s]:%i service requested %{public}@", v7, ClassName, Name, 2224, v2);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v8 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = object_getClass(v1);
      if (class_isMetaClass(v9))
      {
        v10 = 43;
      }

      else
      {
        v10 = 45;
      }

      *buf = 67110146;
      v18 = v10;
      v19 = 2082;
      v20 = object_getClassName(v1);
      v21 = 2082;
      v22 = sel_getName("_sync_driverRequestService:");
      v23 = 1024;
      v24 = 2224;
      v25 = 2114;
      v26 = v2;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i service requested %{public}@", buf, 0x2Cu);
    }

    v11 = v1;
    objc_sync_enter(v11);
    v12 = v11[43];
    objc_sync_exit(v11);

    if (v12)
    {
      if (v12 == 1)
      {
        v13 = v11;
        objc_sync_enter(v13);
        v11[43] = 2;
        objc_sync_exit(v13);

        [v13[12] stopTimer];
        [v13[1] handleRequestService:v2 inExpress:1];
        [v13[12] startTimer:0.25];
      }
    }

    else
    {
      v14 = v11;
      objc_sync_enter(v14);
      v11[43] = 5;
      objc_sync_exit(v14);
    }
  }
}

void sub_10003CBC0(void *a1, int a2)
{
  if (!a1)
  {
    return;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v5 = Logger;
    Class = object_getClass(a1);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(a1);
    Name = sel_getName("_sync_driverExpressModeExitedFromTimeout:");
    v9 = 45;
    if (isMetaClass)
    {
      v9 = 43;
    }

    v5(6, "%c[%{public}s %{public}s]:%i express mode exited", v9, ClassName, Name, 2264);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v10 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
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

    *buf = 67109890;
    v108 = v12;
    v109 = 2082;
    v110 = object_getClassName(a1);
    v111 = 2082;
    v112 = sel_getName("_sync_driverExpressModeExitedFromTimeout:");
    v113 = 1024;
    v114 = 2264;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i express mode exited", buf, 0x22u);
  }

  v13 = a1;
  objc_sync_enter(v13);
  if (v13[181])
  {
    [*(v13 + 11) stopTimer];
    v14 = *(v13 + 43);
    v15 = v13[176];
    *(v13 + 43) = 0;
    v13[176] = 0;
    *(v13 + 181) = 0;
    [*(v13 + 4) invalidate];
    v16 = *(v13 + 4);
    *(v13 + 4) = 0;

    v13[183] = 0;
    objc_sync_exit(v13);

    [*(v13 + 12) stopTimer];
    if (v15 <= 2)
    {
      if (v15 == 1)
      {
        goto LABEL_32;
      }

      if (v15 != 2)
      {
        goto LABEL_46;
      }

      [NFGeneralStatisticsCALogger updateAnalyticsGeneralTransactionStatistics:&off_100339238];
      v28 = &off_100339260;
    }

    else
    {
      if (v15 != 3 && v15 != 6)
      {
        if (v15 != 5)
        {
LABEL_46:
          v54 = *(v13 + 8);
          if (v54)
          {
            v55 = [v54 identifier];
            v56 = v55;
            if (v55)
            {
              v105[0] = @"EventType";
              v105[1] = @"appletIdentifier";
              v106[0] = @"ActivityTimeout";
              v106[1] = v55;
              v57 = [NSDictionary dictionaryWithObjects:v106 forKeys:v105 count:2];
              sub_1000A5CEC(NFUnifiedAccessTransactionCALogger, v57);
            }
          }

          goto LABEL_94;
        }

LABEL_32:
        v29 = v14 - 1;
        v30 = *(v13 + 8);
        if (v30)
        {
          v31 = v30;
          goto LABEL_34;
        }

        v58 = sub_10003A754(v13);
        v59 = v58;
        if (v15 == 1)
        {
          v60 = &off_1003302B8;
        }

        else
        {
          v60 = &off_1003302A0;
        }

        v74 = [v58 objectForKeyedSubscript:v60];
        if ([v74 count])
        {
          v75 = [v74 objectAtIndexedSubscript:0];

          if (v75)
          {
            v31 = sub_100036644(v13, v75);

            if (v31)
            {
LABEL_34:
              v103 = v29;
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v32 = NFLogGetLogger();
              if (v32)
              {
                v33 = v32;
                v34 = object_getClass(v13);
                v35 = class_isMetaClass(v34);
                v36 = object_getClassName(v13);
                v37 = sel_getName("_sync_driverExpressModeExitedFromTimeout:");
                v38 = [v31 identifier];
                v39 = 45;
                if (v35)
                {
                  v39 = 43;
                }

                v33(6, "%c[%{public}s %{public}s]:%i changing to wired and calling to ATL end of transaction for %{public}@", v39, v36, v37, 2315, v38);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v40 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
              {
                v41 = object_getClass(v13);
                if (class_isMetaClass(v41))
                {
                  v42 = 43;
                }

                else
                {
                  v42 = 45;
                }

                v43 = object_getClassName(v13);
                v44 = sel_getName("_sync_driverExpressModeExitedFromTimeout:");
                v45 = [v31 identifier];
                *buf = 67110146;
                v108 = v42;
                v109 = 2082;
                v110 = v43;
                v111 = 2082;
                v112 = v44;
                v113 = 1024;
                v114 = 2315;
                v115 = 2114;
                v116 = v45;
                _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i changing to wired and calling to ATL end of transaction for %{public}@", buf, 0x2Cu);
              }

              v46 = objc_opt_new();
              v47 = *(v13 + 5);
              v104 = v46;
              v48 = sub_1000130F8(v47, v31, &v104);
              v49 = v104;

              if (v48)
              {
                if (!v49)
                {
                  v29 = v103;
                  goto LABEL_80;
                }

                v50 = [NSNumber numberWithUnsignedChar:v15];
                [v49 setObject:v50 forKeyedSubscript:@"expressType"];

                v51 = [v31 identifier];
                [v49 setObject:v51 forKeyedSubscript:@"aid"];

                [v49 setObject:@"ActivityTimeout" forKeyedSubscript:@"EventType"];
                v52 = [v31 identifier];
                v53 = sub_1000354C4(v13, v52);
                sub_100250520(NFHciTransactionEventCALogger, v49, v53);
              }

              else
              {
                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v61 = NFLogGetLogger();
                if (v61)
                {
                  v62 = v61;
                  v63 = object_getClass(v13);
                  v64 = class_isMetaClass(v63);
                  v65 = object_getClassName(v13);
                  v66 = sel_getName("_sync_driverExpressModeExitedFromTimeout:");
                  v67 = [v31 identifier];
                  v68 = 45;
                  if (v64)
                  {
                    v68 = 43;
                  }

                  v62(3, "%c[%{public}s %{public}s]:%i Failed to handle Felica V2 End of Transaction for %{public}@", v68, v65, v66, 2318, v67);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v52 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
                {
                  v69 = object_getClass(v13);
                  if (class_isMetaClass(v69))
                  {
                    v70 = 43;
                  }

                  else
                  {
                    v70 = 45;
                  }

                  v71 = object_getClassName(v13);
                  v72 = sel_getName("_sync_driverExpressModeExitedFromTimeout:");
                  v73 = [v31 identifier];
                  *buf = 67110146;
                  v108 = v70;
                  v109 = 2082;
                  v110 = v71;
                  v111 = 2082;
                  v112 = v72;
                  v113 = 1024;
                  v114 = 2318;
                  v115 = 2114;
                  v116 = v73;
                  _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to handle Felica V2 End of Transaction for %{public}@", buf, 0x2Cu);
                }
              }

              v29 = v103;

LABEL_80:
              if (v29 <= 1)
              {
                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v86 = NFLogGetLogger();
                if (v86)
                {
                  v87 = v86;
                  v88 = object_getClass(v13);
                  v89 = class_isMetaClass(v88);
                  v90 = object_getClassName(v13);
                  v102 = sel_getName("_sync_driverExpressModeExitedFromTimeout:");
                  v91 = 45;
                  if (v89)
                  {
                    v91 = 43;
                  }

                  v87(6, "%c[%{public}s %{public}s]:%i Transit express mode finished before timeout - posting timeout", v91, v90, v102, 2334);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v92 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
                {
                  v93 = object_getClass(v13);
                  if (class_isMetaClass(v93))
                  {
                    v94 = 43;
                  }

                  else
                  {
                    v94 = 45;
                  }

                  v95 = object_getClassName(v13);
                  v96 = sel_getName("_sync_driverExpressModeExitedFromTimeout:");
                  *buf = 67109890;
                  v108 = v94;
                  v109 = 2082;
                  v110 = v95;
                  v111 = 2082;
                  v112 = v96;
                  v113 = 1024;
                  v114 = 2334;
                  _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Transit express mode finished before timeout - posting timeout", buf, 0x22u);
                }

                [*(v13 + 1) handleExpressModeTimeout];
              }

              v97 = *(v13 + 8);
              if (v97)
              {
                v98 = [v97 identifierAsData];
                [*(v13 + 14) setObject:v98 forKeyedSubscript:@"AID"];
              }

              [NFGeneralStatisticsCALogger updateGeneralDeviceStatistic:&off_100339210];

              goto LABEL_94;
            }

LABEL_70:
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v76 = NFLogGetLogger();
            if (v76)
            {
              v77 = v76;
              v78 = object_getClass(v13);
              v79 = class_isMetaClass(v78);
              v80 = object_getClassName(v13);
              v101 = sel_getName("_sync_driverExpressModeExitedFromTimeout:");
              v81 = 45;
              if (v79)
              {
                v81 = 43;
              }

              v77(6, "%c[%{public}s %{public}s]:%i No Applet used for NFExpressTypeFelicaTransit or NFExpressTypeCathayTransit", v81, v80, v101, 2329);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v49 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
            {
              v82 = object_getClass(v13);
              if (class_isMetaClass(v82))
              {
                v83 = 43;
              }

              else
              {
                v83 = 45;
              }

              v84 = object_getClassName(v13);
              v85 = sel_getName("_sync_driverExpressModeExitedFromTimeout:");
              *buf = 67109890;
              v108 = v83;
              v109 = 2082;
              v110 = v84;
              v111 = 2082;
              v112 = v85;
              v113 = 1024;
              v114 = 2329;
              _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i No Applet used for NFExpressTypeFelicaTransit or NFExpressTypeCathayTransit", buf, 0x22u);
            }

            v31 = 0;
            goto LABEL_80;
          }
        }

        else
        {
        }

        goto LABEL_70;
      }

      [NFGeneralStatisticsCALogger updateAnalyticsGeneralTransactionStatistics:&off_100339288];
      v28 = &off_1003392B0;
    }

    [NFGeneralStatisticsCALogger updateGeneralDeviceStatistic:v28];
LABEL_94:
    if (a2)
    {
      [*(v13 + 1) handleForceExpressModeEndEvent];
    }

    [*(v13 + 1) handleExpressModeExited];
    sub_10026449C();
    return;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v17 = NFLogGetLogger();
  if (v17)
  {
    v18 = v17;
    v19 = object_getClass(v13);
    v20 = class_isMetaClass(v19);
    v21 = object_getClassName(v13);
    v100 = sel_getName("_sync_driverExpressModeExitedFromTimeout:");
    v22 = 45;
    if (v20)
    {
      v22 = 43;
    }

    v18(6, "%c[%{public}s %{public}s]:%i Express mode is not in progress.", v22, v21, v100, 2270);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v23 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = object_getClass(v13);
    if (class_isMetaClass(v24))
    {
      v25 = 43;
    }

    else
    {
      v25 = 45;
    }

    v26 = object_getClassName(v13);
    v27 = sel_getName("_sync_driverExpressModeExitedFromTimeout:");
    *buf = 67109890;
    v108 = v25;
    v109 = 2082;
    v110 = v26;
    v111 = 2082;
    v112 = v27;
    v113 = 1024;
    v114 = 2270;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Express mode is not in progress.", buf, 0x22u);
  }

  objc_sync_exit(v13);
}

void sub_10003D6D8(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  if (v2)
  {
LABEL_15:
    [v2 handleStepUpEvent:*(a1 + 40) transactionType:4 forApplet:*(a1 + 48)];
    return;
  }

  v3 = [[NFStepUpController alloc] initWithQueue:*(*(a1 + 32) + 120) driverWrapper:*(*(a1 + 32) + 16) expressModeManager:?];
  v4 = *(a1 + 32);
  v5 = *(v4 + 32);
  *(v4 + 32) = v3;

  v6 = *(*(a1 + 32) + 32);
  if (v6)
  {
    v7 = [v6 startISO18013WithConnectionHandoverConfiguration];
    if (v7)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v9 = Logger;
        Class = object_getClass(*(a1 + 32));
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(*(a1 + 32));
        Name = sel_getName(*(a1 + 56));
        v12 = 45;
        if (isMetaClass)
        {
          v12 = 43;
        }

        v9(3, "%c[%{public}s %{public}s]:%i Reader start error: %{public}@", v12, ClassName, Name, 2429, v7);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v13 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
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
        *buf = 67110146;
        v33 = v15;
        v34 = 2082;
        v35 = v16;
        v36 = 2082;
        v37 = v17;
        v38 = 1024;
        v39 = 2429;
        v40 = 2114;
        v41 = v7;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Reader start error: %{public}@", buf, 0x2Cu);
      }
    }

    v2 = *(*(a1 + 32) + 32);
    goto LABEL_15;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v18 = NFLogGetLogger();
  if (v18)
  {
    v19 = v18;
    v20 = object_getClass(*(a1 + 32));
    v21 = class_isMetaClass(v20);
    v22 = object_getClassName(*(a1 + 32));
    v31 = sel_getName(*(a1 + 56));
    v23 = 45;
    if (v21)
    {
      v23 = 43;
    }

    v19(3, "%c[%{public}s %{public}s]:%i Could not allocate unified access helper object", v23, v22, v31, 2425);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v24 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
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
    v28 = sel_getName(*(a1 + 56));
    *buf = 67109890;
    v33 = v26;
    v34 = 2082;
    v35 = v27;
    v36 = 2082;
    v37 = v28;
    v38 = 1024;
    v39 = 2425;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Could not allocate unified access helper object", buf, 0x22u);
  }
}

void sub_10003DA94(uint64_t a1)
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
    v7 = 45;
    if (isMetaClass)
    {
      v7 = 43;
    }

    v3(6, "%c[%{public}s %{public}s]:%i ", v7, ClassName, Name, 2439);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v8 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
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
    v12 = sel_getName(*(a1 + 48));
    *buf = 67109890;
    v37 = v10;
    v38 = 2082;
    v39 = v11;
    v40 = 2082;
    v41 = v12;
    v42 = 1024;
    v43 = 2439;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }

  v13 = +[_NFHardwareManager sharedHardwareManager];
  v14 = v13;
  v15 = *(a1 + 32);
  if (*(v15 + 181) == 1 && (v16 = sub_1000E9EEC(v13), v15 = *(a1 + 32), (v16 & 1) == 0))
  {
    v19 = *(v15 + 32);
    if (v19)
    {
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_10003DDD0;
      v35[3] = &unk_100315EE0;
      v20 = *(a1 + 40);
      v21 = *(a1 + 48);
      v35[4] = v15;
      v35[5] = v21;
      [v19 hceReadWithHandle:v20 completion:v35];
      goto LABEL_14;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v22 = NFLogGetLogger();
    if (v22)
    {
      v23 = v22;
      v24 = object_getClass(*(a1 + 32));
      v25 = class_isMetaClass(v24);
      v26 = object_getClassName(*(a1 + 32));
      v34 = sel_getName(*(a1 + 48));
      v27 = 45;
      if (v25)
      {
        v27 = 43;
      }

      v23(3, "%c[%{public}s %{public}s]:%i Unexpected condition; route to active session", v27, v26, v34, 2448);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v28 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v29))
      {
        v30 = 43;
      }

      else
      {
        v30 = 45;
      }

      v31 = object_getClassName(*(a1 + 32));
      v32 = sel_getName(*(a1 + 48));
      *buf = 67109890;
      v37 = v30;
      v38 = 2082;
      v39 = v31;
      v40 = 2082;
      v41 = v32;
      v42 = 1024;
      v43 = 2448;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unexpected condition; route to active session", buf, 0x22u);
    }

    v18 = *(a1 + 40);
    v17 = *(*(a1 + 32) + 8);
  }

  else
  {
    v17 = *(v15 + 8);
    v18 = *(a1 + 40);
  }

  [v17 handleHostCardReaderDetected:v18];
LABEL_14:
}

void sub_10003DDD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(*(a1 + 32) + 183) = 1;
  if (a2)
  {
    v4 = *(a1 + 32);

    [v4 handleTransactionEndEvent:a2 atlData:a3 caData:0];
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v6 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 40));
      v10 = 45;
      if (isMetaClass)
      {
        v10 = 43;
      }

      v6(3, "%c[%{public}s %{public}s]:%i Invalid decoded event for posting EndEvent.", v10, ClassName, Name, 2458);
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
      v15 = sel_getName(*(a1 + 40));
      *buf = 67109890;
      v18 = v13;
      v19 = 2082;
      v20 = v14;
      v21 = 2082;
      v22 = v15;
      v23 = 1024;
      v24 = 2458;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid decoded event for posting EndEvent.", buf, 0x22u);
    }
  }
}

void sub_10003F008(uint64_t a1, double a2)
{
  if (a1)
  {
    [*(a1 + 80) stopTimer];
    objc_initWeak(&location, a1);
    v4 = [NFTimer alloc];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10003F260;
    v19[3] = &unk_100315F08;
    objc_copyWeak(&v20, &location);
    v5 = [v4 initWithCallback:v19 queue:*(a1 + 120)];
    v6 = *(a1 + 80);
    *(a1 + 80) = v5;

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v8 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("activateAppletsAfter:");
      v12 = 45;
      if (isMetaClass)
      {
        v12 = 43;
      }

      v8(6, "%c[%{public}s %{public}s]:%i Activate applet after %fs", v12, ClassName, Name, 2696, *&a2);
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
      v17 = sel_getName("activateAppletsAfter:");
      *buf = 67110146;
      v23 = v15;
      v24 = 2082;
      v25 = v16;
      v26 = 2082;
      v27 = v17;
      v28 = 1024;
      v29 = 2696;
      v30 = 2048;
      v31 = a2;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Activate applet after %fs", buf, 0x2Cu);
    }

    [*(a1 + 80) startTimer:a2];
    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }
}

void sub_10003F260(uint64_t a1)
{
  v2 = _os_activity_create(&_mh_execute_header, "com.apple.nfcd.express.reactivationTimer", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v5.opaque[0] = 0;
  v5.opaque[1] = 0;
  os_activity_scope_enter(v2, &v5);
  os_activity_scope_leave(&v5);

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    sub_100036290(WeakRetained);
  }
}

uint64_t sub_10003F2E0(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!a1)
  {
    v35 = 0;
    goto LABEL_47;
  }

  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v8 = a1[5];
  v53 = v6;
  if (v8)
  {
    v8 = v8[2];
  }

  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v54 objects:v68 count:16];
  if (!v10)
  {
    goto LABEL_12;
  }

  v11 = v10;
  v12 = *v55;
  while (2)
  {
    for (i = 0; i != v11; i = i + 1)
    {
      if (*v55 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v54 + 1) + 8 * i);
      v15 = [v14 objectForKeyedSubscript:@"appletIdentifier"];
      v16 = [v15 isEqualToString:v5];

      if (v16)
      {
        v17 = v14;

        if (!v17)
        {
          goto LABEL_30;
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          v19 = Logger;
          Class = object_getClass(a1);
          isMetaClass = class_isMetaClass(Class);
          ClassName = object_getClassName(a1);
          Name = sel_getName("matchApplet:toField:");
          v22 = 45;
          if (isMetaClass)
          {
            v22 = 43;
          }

          v19(6, "%c[%{public}s %{public}s]:%i Checking passInfo %{public}@", v22, ClassName, Name, 2742, v17);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v23 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = object_getClass(a1);
          if (class_isMetaClass(v24))
          {
            v25 = 43;
          }

          else
          {
            v25 = 45;
          }

          v26 = object_getClassName(a1);
          v27 = sel_getName("matchApplet:toField:");
          *buf = 67110146;
          v59 = v25;
          v60 = 2082;
          v61 = v26;
          v62 = 2082;
          v63 = v27;
          v64 = 1024;
          v65 = 2742;
          v66 = 2114;
          v67 = v17;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Checking passInfo %{public}@", buf, 0x2Cu);
        }

        v28 = [v17 objectForKeyedSubscript:@"ExpressType"];
        v7 = v53;
        v29 = [v53 notificationType];
        if (v29 != 1)
        {
          if (v29 == 2)
          {
            if ([v28 isEqualToString:@"ECP1.Access"])
            {
              v35 = 1;
LABEL_45:

              goto LABEL_46;
            }
          }

          else if (v29 == 3 && [v28 isEqualToString:@"ECP2"])
          {
            v30 = [v17 objectForKeyedSubscript:@"ECP2Info"];
            v31 = [v30 objectForKeyedSubscript:@"primaryTCIs"];
            v32 = [v30 objectForKeyedSubscript:@"TCIs"];
            v33 = [v53 tciArray];
            v34 = [v33 firstObject];

            if (v34)
            {
              if ([v31 containsObject:v34])
              {
                v35 = 1;
              }

              else
              {
                v35 = [v32 containsObject:v34];
              }
            }

            else
            {
              v35 = 0;
            }

            goto LABEL_45;
          }

          goto LABEL_44;
        }

        v46 = [v53 rfTechnology];
        v47 = [v53 rfTechnology];
        if ([v28 isEqualToString:@"Suica"])
        {
          if ((v46 & 4) == 0)
          {
            goto LABEL_44;
          }

          v49 = [v53 typeFSystemCode] == 3;
        }

        else
        {
          v35 = v47 & 1;
          if ([v28 isEqualToString:@"GenericA"])
          {
            goto LABEL_45;
          }

          if (![v28 isEqualToString:@"Cathay"])
          {
            if ([v28 isEqualToString:@"QuickMode"])
            {
              goto LABEL_45;
            }

            goto LABEL_44;
          }

          if ((v46 & 4) == 0)
          {
LABEL_44:
            v35 = 0;
            goto LABEL_45;
          }

          v49 = [v53 typeFSystemCode] == 32776;
        }

        v35 = v49;
        goto LABEL_45;
      }
    }

    v11 = [v9 countByEnumeratingWithState:&v54 objects:v68 count:16];
    if (v11)
    {
      continue;
    }

    break;
  }

LABEL_12:

LABEL_30:
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v36 = NFLogGetLogger();
  if (v36)
  {
    v37 = v36;
    v38 = object_getClass(a1);
    v39 = class_isMetaClass(v38);
    v40 = object_getClassName(a1);
    v52 = sel_getName("matchApplet:toField:");
    v41 = 45;
    if (v39)
    {
      v41 = 43;
    }

    v37(4, "%c[%{public}s %{public}s]:%i Applet exists in group config but not configured in passinfo?!", v41, v40, v52, 2739);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v17 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
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
    v45 = sel_getName("matchApplet:toField:");
    *buf = 67109890;
    v59 = v43;
    v60 = 2082;
    v61 = v44;
    v62 = 2082;
    v63 = v45;
    v64 = 1024;
    v65 = 2739;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Applet exists in group config but not configured in passinfo?!", buf, 0x22u);
  }

  v35 = 0;
  v7 = v53;
LABEL_46:

LABEL_47:
  return v35;
}

void sub_10003FE88(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = 138412546;
    v7 = v4;
    v8 = 2112;
    v9 = v5;
    _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "%@-%@", &v6, 0x16u);
  }
}

uint64_t sub_1000418C4(uint64_t a1)
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
    v8 = 45;
    if (isMetaClass)
    {
      v8 = 43;
    }

    v3(6, "%c[%{public}s %{public}s]:%i %{public}@", v8, ClassName, Name, 350, *(*(a1 + 32) + 64));
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
    v14 = *(*(a1 + 32) + 64);
    *buf = 67110146;
    v31 = v11;
    v32 = 2082;
    v33 = v12;
    v34 = 2082;
    v35 = v13;
    v36 = 1024;
    v37 = 350;
    v38 = 2114;
    v39 = v14;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  v15 = *(a1 + 32);
  objc_sync_enter(v15);
  v16 = *(*(a1 + 32) + 9);
  objc_sync_exit(v15);

  if (v16 == 1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v17 = NFLogGetLogger();
    if (v17)
    {
      v18 = v17;
      v19 = object_getClass(*(a1 + 32));
      v20 = class_isMetaClass(v19);
      v21 = object_getClassName(*(a1 + 32));
      v29 = sel_getName(*(a1 + 48));
      v22 = 45;
      if (v20)
      {
        v22 = 43;
      }

      v18(4, "%c[%{public}s %{public}s]:%i Already ended", v22, v21, v29, 356);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v23 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
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
      v27 = sel_getName(*(a1 + 48));
      *buf = 67109890;
      v31 = v25;
      v32 = 2082;
      v33 = v26;
      v34 = 2082;
      v35 = v27;
      v36 = 1024;
      v37 = 356;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Already ended", buf, 0x22u);
    }
  }

  else
  {
    v23 = [*(a1 + 32) queue];
    [v23 dequeueSession:*(a1 + 32)];
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_100041ED8(uint64_t a1)
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
    v7 = 45;
    if (isMetaClass)
    {
      v7 = 43;
    }

    v3(6, "%c[%{public}s %{public}s]:%i ", v7, ClassName, Name, 386);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v8 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
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
    v12 = sel_getName(*(a1 + 48));
    *buf = 67109890;
    v30 = v10;
    v31 = 2082;
    v32 = v11;
    v33 = 2082;
    v34 = v12;
    v35 = 1024;
    v36 = 386;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }

  if (([*(a1 + 32) isSuspended] & 1) != 0 || objc_msgSend(*(a1 + 32), "didEnd"))
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v13 = NFLogGetLogger();
    if (v13)
    {
      v14 = v13;
      v15 = object_getClass(*(a1 + 32));
      v16 = class_isMetaClass(v15);
      v17 = object_getClassName(*(a1 + 32));
      v18 = sel_getName(*(a1 + 48));
      v19 = [*(a1 + 32) sessionUID];
      v20 = 45;
      if (v16)
      {
        v20 = 43;
      }

      v14(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is ended or suspended.", v20, v17, v18, 390, v19);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v21 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v22))
      {
        v23 = 43;
      }

      else
      {
        v23 = 45;
      }

      v24 = object_getClassName(*(a1 + 32));
      v25 = sel_getName(*(a1 + 48));
      v26 = [*(a1 + 32) sessionUID];
      *buf = 67110146;
      v30 = v23;
      v31 = 2082;
      v32 = v24;
      v33 = 2082;
      v34 = v25;
      v35 = 1024;
      v36 = 390;
      v37 = 2114;
      v38 = v26;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is ended or suspended.", buf, 0x2Cu);
    }
  }

  else
  {
    v21 = [*(a1 + 32) queue];
    [v21 prioritizeSession:*(a1 + 32)];
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1000422D8(uint64_t a1)
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

    v3(6, "%c[%{public}s %{public}s]:%i Requesting to active %{public}@ using token %{public}@", v9, ClassName, Name, 401, v8, *(a1 + 40));
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
    v14 = sel_getName(*(a1 + 56));
    v15 = [*(a1 + 32) sessionUID];
    v16 = *(a1 + 40);
    *buf = 67110402;
    v20 = v12;
    v21 = 2082;
    v22 = v13;
    v23 = 2082;
    v24 = v14;
    v25 = 1024;
    v26 = 401;
    v27 = 2114;
    v28 = v15;
    v29 = 2114;
    v30 = v16;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Requesting to active %{public}@ using token %{public}@", buf, 0x36u);
  }

  v17 = [*(a1 + 32) queue];
  v18 = [v17 switchToSession:*(a1 + 32) withToken:*(a1 + 40)];

  (*(*(a1 + 48) + 16))();
}

id *sub_100042C70(id *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v8.receiver = a1;
    v8.super_class = NFClientAppStateObserver;
    v4 = objc_msgSendSuper2(&v8, "init");
    a1 = v4;
    if (v4)
    {
      objc_storeWeak(v4 + 4, v3);
      v5 = objc_opt_new();
      v6 = a1[2];
      a1[2] = v5;

      *(a1 + 6) = 0;
    }
  }

  return a1;
}

void sub_100042CF8(id a1)
{
  sub_10027E988(v1);
  v3 = *v2;
  if (!objc_opt_class())
  {
    goto LABEL_7;
  }

  sub_10027E9F4(v4);
  v6 = *(v5 + 16);
  if (!objc_opt_class())
  {
    goto LABEL_7;
  }

  sub_10027E9AC(v7);
  v9 = *(v8 + 8);
  if (objc_opt_class() && (sub_10027E940(v10), v12 = *(v11 + 4088), objc_opt_class()) && (sub_10027E91C(v13), v15 = *(v14 + 4080), objc_opt_class()))
  {
    sub_10027EA18(v16);
    v18 = *(v17 + 24);
    v19 = objc_opt_class() != 0;
  }

  else
  {
LABEL_7:
    v19 = 0;
  }

  byte_10035D928 = v19;
}

void sub_100042E08(os_unfair_lock_s *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100042EC4;
    v5[3] = &unk_100315F80;
    v5[4] = a1;
    v6 = v3;
    v7 = "registerForStateChangesToConnection:";
    os_unfair_lock_lock(a1 + 6);
    sub_100042EC4(v5);
    os_unfair_lock_unlock(a1 + 6);
  }
}

void sub_100042EC4(uint64_t a1)
{
  [*(*(a1 + 32) + 16) addObject:*(a1 + 40)];
  if (!*(a1 + 32))
  {
    goto LABEL_9;
  }

  if (qword_10035D930 != -1)
  {
    dispatch_once(&qword_10035D930, &stru_100316098);
  }

  if (byte_10035D928)
  {
    v2 = *(a1 + 32);
    if (v2[1])
    {
      v3 = *(a1 + 32);

      sub_100006B7C(v3);
    }

    else
    {
      objc_initWeak(&location, v2);
      *buf = 0;
      *v28 = buf;
      *&v28[8] = 0x3032000000;
      *&v28[16] = sub_100006A0C;
      *&v28[24] = sub_10004322C;
      v29 = objc_opt_new();
      v15 = *(*(a1 + 32) + 16);
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_100043234;
      v25[3] = &unk_1003160C0;
      v25[4] = buf;
      [v15 enumerateObjectsUsingBlock:v25];
      sub_10027E988(v16);
      v18 = *v17;
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_1000432D0;
      v23[3] = &unk_100316110;
      v23[4] = buf;
      objc_copyWeak(&v24, &location);
      v19 = [v18 monitorWithConfiguration:v23];
      v20 = *(a1 + 32);
      v21 = *(v20 + 8);
      *(v20 + 8) = v19;

      objc_destroyWeak(&v24);
      _Block_object_dispose(buf, 8);

      objc_destroyWeak(&location);
    }
  }

  else
  {
LABEL_9:
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v5 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 48));
      v9 = 45;
      if (isMetaClass)
      {
        v9 = 43;
      }

      v5(3, "%c[%{public}s %{public}s]:%i RB not available.", v9, ClassName, Name, 90);
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
      *buf = 67109890;
      *&buf[4] = v12;
      *v28 = 2082;
      *&v28[2] = v13;
      *&v28[10] = 2082;
      *&v28[12] = v14;
      *&v28[20] = 1024;
      *&v28[22] = 90;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i RB not available.", buf, 0x22u);
    }
  }
}

uint64_t sub_100043234(uint64_t a1, double a2)
{
  v3 = sub_10027E940(a2);
  v6 = [*(v4 + 4088) identifierWithPid:{objc_msgSend(v5, "processIdentifier", v3)}];
  v8 = v6;
  if (v6)
  {
    v9 = sub_10027E9AC(v7);
    v14 = v11;
    v12 = [*(v10 + 8) predicateMatchingIdentifier:{v11, v9}];
    if (v12)
    {
      [*(*(*(a1 + 32) + 8) + 40) addObject:v12];
    }

    v8 = v14;
  }

  return _objc_release_x1(v6, v8);
}

void sub_1000432D0(uint64_t a1, double a2)
{
  sub_10027E9F4(a2);
  v4 = *(v3 + 16);
  v6 = v5;
  v7 = [v4 descriptor];
  [v7 setValues:1];
  [v7 setEndowmentNamespaces:&off_100338F70];
  [v6 setStateDescriptor:v7];
  [v6 setPredicates:*(*(*(a1 + 32) + 8) + 40)];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000433C4;
  v8[3] = &unk_1003160E8;
  objc_copyWeak(&v9, (a1 + 40));
  [v6 setUpdateHandler:v8];

  objc_destroyWeak(&v9);
}

void sub_1000433C4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = _os_activity_create(&_mh_execute_header, "app suspension state changed", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state = 0;
  *state_8 = 0;
  os_activity_scope_enter(v6, &state);
  os_activity_scope_leave(&state);

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v43 = v5;
    v8 = v5;
    v9 = [v8 process];
    v10 = [v9 pid];

    v11 = [v8 state];
    v12 = [v11 taskState];

    v13 = [v8 state];

    v14 = [v13 endowmentNamespaces];

    v15 = [v14 containsObject:@"com.apple.frontboard.visibility"];
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v17 = Logger;
      Class = object_getClass(WeakRetained);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(WeakRetained);
      Name = sel_getName("_applicationStateChanged:");
      v20 = 43;
      if (!isMetaClass)
      {
        v20 = 45;
      }

      v17(6, "%c[%{public}s %{public}s]:%i state=%d for pid %d visibility = %{public}@", v20, ClassName, Name, 313, v12, v10, v14);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v21 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = object_getClass(WeakRetained);
      if (class_isMetaClass(v22))
      {
        v23 = 43;
      }

      else
      {
        v23 = 45;
      }

      v24 = object_getClassName(WeakRetained);
      v25 = sel_getName("_applicationStateChanged:");
      LODWORD(state) = 67110658;
      HIDWORD(state) = v23;
      *state_8 = 2082;
      *&state_8[2] = v24;
      *&state_8[10] = 2082;
      *&state_8[12] = v25;
      *&state_8[20] = 1024;
      *&state_8[22] = 313;
      *&state_8[26] = 1024;
      *&state_8[28] = v12;
      LOWORD(v46) = 1024;
      *(&v46 + 2) = v10;
      HIWORD(v46) = 2114;
      v47 = v14;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i state=%d for pid %d visibility = %{public}@", &state, 0x38u);
    }

    if (v12 == 3)
    {
      v26 = 1;
    }

    else
    {
      if (v12 != 4)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v30 = NFLogGetLogger();
        if (v30)
        {
          v31 = v30;
          v32 = object_getClass(WeakRetained);
          v33 = class_isMetaClass(v32);
          v34 = object_getClassName(WeakRetained);
          v42 = sel_getName("_applicationStateChanged:");
          v35 = 45;
          if (v33)
          {
            v35 = 43;
          }

          v31(4, "%c[%{public}s %{public}s]:%i Unexpected appState!", v35, v34, v42, 325);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v28 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v36 = object_getClass(WeakRetained);
          if (class_isMetaClass(v36))
          {
            v37 = 43;
          }

          else
          {
            v37 = 45;
          }

          v38 = object_getClassName(WeakRetained);
          v39 = sel_getName("_applicationStateChanged:");
          LODWORD(state) = 67109890;
          HIDWORD(state) = v37;
          *state_8 = 2082;
          *&state_8[2] = v38;
          *&state_8[10] = 2082;
          *&state_8[12] = v39;
          *&state_8[20] = 1024;
          *&state_8[22] = 325;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unexpected appState!", &state, 0x22u);
        }

        goto LABEL_18;
      }

      if (v15)
      {
        v26 = 3;
      }

      else
      {
        v26 = 2;
      }
    }

    v27 = objc_opt_new();
    state = _NSConcreteStackBlock;
    *state_8 = 3221225472;
    *&state_8[8] = sub_100044D60;
    *&state_8[16] = &unk_100316160;
    LODWORD(v47) = v10;
    *&state_8[24] = WeakRetained;
    v46 = v27;
    v28 = v27;
    os_unfair_lock_lock(WeakRetained + 6);
    (*&state_8[8])(&state);
    os_unfair_lock_unlock(WeakRetained + 6);
    v29 = objc_loadWeakRetained(WeakRetained + 4);
    [v29 clientAppStateUpdate:v28 appState:v26];

LABEL_18:
    v5 = v43;
  }
}

void sub_100043834(os_unfair_lock_s *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000438E8;
    v5[3] = &unk_100315FA8;
    v5[4] = a1;
    v6 = v3;
    os_unfair_lock_lock(a1 + 6);
    sub_1000438E8(v5);
    os_unfair_lock_unlock(a1 + 6);
  }
}

void sub_1000438E8(uint64_t a1)
{
  [*(*(a1 + 32) + 16) removeObject:*(a1 + 40)];
  if (*(a1 + 32))
  {
    if (qword_10035D930 != -1)
    {
      dispatch_once(&qword_10035D930, &stru_100316098);
    }

    if (byte_10035D928 == 1)
    {
      v2 = [*(*(a1 + 32) + 16) count];
      v3 = *(a1 + 32);
      if (v2)
      {

        sub_100006B7C(v3);
      }

      else
      {
        [*(v3 + 8) invalidate];
        v4 = *(a1 + 32);
        v5 = *(v4 + 8);
        *(v4 + 8) = 0;
      }
    }
  }
}

uint64_t sub_1000439B8(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    if (qword_10035D930 != -1)
    {
      dispatch_once(&qword_10035D930, &stru_100316098);
    }

    if (byte_10035D928)
    {
      v5 = sub_10027E940(v4);
      v7 = [*(v6 + 4088) identifierWithPid:{objc_msgSend(v3, "processIdentifier", v5)}];
      if (v7)
      {
        v9 = sub_10027E9AC(v8);
        log = [*(v10 + 8) predicateMatchingIdentifier:{v7, v9}];
        if (log)
        {
          v12 = sub_10027E91C(v11);
          v14 = [*(v13 + 4080) handleForPredicate:log error:{0, v12}];
          v15 = [v14 currentState];
          v16 = [v15 endowmentNamespaces];
          v60 = [v16 containsObject:@"com.apple.frontboard.visibility"];
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          Logger = NFLogGetLogger();
          if (Logger)
          {
            v18 = Logger;
            Class = object_getClass(a1);
            isMetaClass = class_isMetaClass(Class);
            ClassName = object_getClassName(a1);
            v20 = v14;
            Name = sel_getName("isClientBackground:");
            v22 = [v15 taskState];
            v57 = [v3 processIdentifier];
            v53 = Name;
            v14 = v20;
            v23 = 43;
            if (!isMetaClass)
            {
              v23 = 45;
            }

            v18(6, "%c[%{public}s %{public}s]:%i State=%{public}@ task_state=%d for pid %d visibility = %{public}@", v23, ClassName, v53, 199, v15, v22, v57, v16);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v24 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
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

            *buf = 67110914;
            v63 = v26;
            v64 = 2082;
            v65 = object_getClassName(a1);
            v66 = 2082;
            v67 = sel_getName("isClientBackground:");
            v68 = 1024;
            v69 = 199;
            v70 = 2114;
            v71 = v15;
            v72 = 1024;
            v73 = [v15 taskState];
            v74 = 1024;
            v75 = [v3 processIdentifier];
            v76 = 2114;
            v77 = v16;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i State=%{public}@ task_state=%d for pid %d visibility = %{public}@", buf, 0x42u);
          }

          if (v15)
          {
            if ([v15 taskState] == 3)
            {
              v27 = 1;
            }

            else
            {
              v27 = ([v15 taskState] == 4) & (v60 ^ 1);
            }
          }

          else
          {
            v27 = 0;
          }
        }

        else
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v44 = NFLogGetLogger();
          if (v44)
          {
            v45 = v44;
            v46 = object_getClass(a1);
            v47 = class_isMetaClass(v46);
            v48 = object_getClassName(a1);
            v56 = sel_getName("isClientBackground:");
            v49 = 45;
            if (v47)
            {
              v49 = 43;
            }

            v45(4, "%c[%{public}s %{public}s]:%i Invalid pid", v49, v48, v56, 190);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v14 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            v50 = object_getClass(a1);
            if (class_isMetaClass(v50))
            {
              v51 = 43;
            }

            else
            {
              v51 = 45;
            }

            *buf = 67109890;
            v63 = v51;
            v64 = 2082;
            v65 = object_getClassName(a1);
            v66 = 2082;
            v67 = sel_getName("isClientBackground:");
            v68 = 1024;
            v69 = 190;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid pid", buf, 0x22u);
          }

          v27 = 0;
        }
      }

      else
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v36 = NFLogGetLogger();
        if (v36)
        {
          v37 = v36;
          v38 = object_getClass(a1);
          v39 = class_isMetaClass(v38);
          v40 = object_getClassName(a1);
          v55 = sel_getName("isClientBackground:");
          v41 = 45;
          if (v39)
          {
            v41 = 43;
          }

          v37(4, "%c[%{public}s %{public}s]:%i Invalid pid", v41, v40, v55, 185);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        log = NFSharedLogGetLogger();
        if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
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

          *buf = 67109890;
          v63 = v43;
          v64 = 2082;
          v65 = object_getClassName(a1);
          v66 = 2082;
          v67 = sel_getName("isClientBackground:");
          v68 = 1024;
          v69 = 185;
          _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid pid", buf, 0x22u);
        }

        v27 = 0;
      }
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v28 = NFLogGetLogger();
      if (v28)
      {
        v29 = v28;
        v30 = object_getClass(a1);
        v31 = class_isMetaClass(v30);
        v32 = object_getClassName(a1);
        v54 = sel_getName("isClientBackground:");
        v33 = 45;
        if (v31)
        {
          v33 = 43;
        }

        v29(3, "%c[%{public}s %{public}s]:%i No RB, faking result", v33, v32, v54, 179);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v7 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v34 = object_getClass(a1);
        if (class_isMetaClass(v34))
        {
          v35 = 43;
        }

        else
        {
          v35 = 45;
        }

        *buf = 67109890;
        v63 = v35;
        v64 = 2082;
        v65 = object_getClassName(a1);
        v66 = 2082;
        v67 = sel_getName("isClientBackground:");
        v68 = 1024;
        v69 = 179;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i No RB, faking result", buf, 0x22u);
      }

      v27 = 0;
    }
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

id sub_100044050(void *a1, void *a2)
{
  v60 = a2;
  if (a1)
  {
    if (qword_10035D930 != -1)
    {
      dispatch_once(&qword_10035D930, &stru_100316098);
    }

    if (byte_10035D928)
    {
      v4 = sub_10027E940(v3);
      v6 = [*(v5 + 4088) identifierWithPid:{objc_msgSend(v60, "processIdentifier", v4)}];
      if (v6)
      {
        v8 = sub_10027E9AC(v7);
        v10 = [*(v9 + 8) predicateMatchingIdentifier:{v6, v8}];
        if (v10)
        {
          v12 = sub_10027E91C(v11);
          v59 = v10;
          v58 = [*(v13 + 4080) handleForPredicate:v10 error:{0, v12}];
          v14 = [v58 currentState];
          v15 = [v14 endowmentNamespaces];
          v16 = [v15 containsObject:@"com.apple.frontboard.visibility"];
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          Logger = NFLogGetLogger();
          if (Logger)
          {
            v18 = Logger;
            Class = object_getClass(a1);
            isMetaClass = class_isMetaClass(Class);
            ClassName = object_getClassName(a1);
            Name = sel_getName("isClientForeground:");
            v22 = [v14 taskState];
            v56 = [v60 processIdentifier];
            v23 = 43;
            if (!isMetaClass)
            {
              v23 = 45;
            }

            v18(6, "%c[%{public}s %{public}s]:%i task_state=%d for pid %d visibility = %{public}@", v23, ClassName, Name, 233, v22, v56, v15);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v24 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
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

            *buf = 67110658;
            v62 = v26;
            v63 = 2082;
            v64 = object_getClassName(a1);
            v65 = 2082;
            v66 = sel_getName("isClientForeground:");
            v67 = 1024;
            v68 = 233;
            v69 = 1024;
            v70 = [v14 taskState];
            v71 = 1024;
            v72 = [v60 processIdentifier];
            v73 = 2114;
            v74 = v15;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i task_state=%d for pid %d visibility = %{public}@", buf, 0x38u);
          }

          if (v14)
          {
            v10 = v59;
            if ([v14 taskState] != 2 && objc_msgSend(v14, "taskState") != 4)
            {
              v16 = 0;
            }
          }

          else
          {
            v16 = 0;
            v10 = v59;
          }

          v49 = v58;
        }

        else
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v43 = NFLogGetLogger();
          if (v43)
          {
            v44 = v43;
            v45 = object_getClass(a1);
            v46 = class_isMetaClass(v45);
            v47 = object_getClassName(a1);
            v55 = sel_getName("isClientForeground:");
            v48 = 45;
            if (v46)
            {
              v48 = 43;
            }

            v44(4, "%c[%{public}s %{public}s]:%i Invalid pid", v48, v47, v55, 224);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v49 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
          {
            v50 = object_getClass(a1);
            if (class_isMetaClass(v50))
            {
              v51 = 43;
            }

            else
            {
              v51 = 45;
            }

            *buf = 67109890;
            v62 = v51;
            v63 = 2082;
            v64 = object_getClassName(a1);
            v65 = 2082;
            v66 = sel_getName("isClientForeground:");
            v67 = 1024;
            v68 = 224;
            _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid pid", buf, 0x22u);
          }

          v16 = 0;
        }
      }

      else
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v35 = NFLogGetLogger();
        if (v35)
        {
          v36 = v35;
          v37 = object_getClass(a1);
          v38 = class_isMetaClass(v37);
          v39 = object_getClassName(a1);
          v54 = sel_getName("isClientForeground:");
          v40 = 45;
          if (v38)
          {
            v40 = 43;
          }

          v36(4, "%c[%{public}s %{public}s]:%i Invalid pid", v40, v39, v54, 219);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v10 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v41 = object_getClass(a1);
          if (class_isMetaClass(v41))
          {
            v42 = 43;
          }

          else
          {
            v42 = 45;
          }

          *buf = 67109890;
          v62 = v42;
          v63 = 2082;
          v64 = object_getClassName(a1);
          v65 = 2082;
          v66 = sel_getName("isClientForeground:");
          v67 = 1024;
          v68 = 219;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid pid", buf, 0x22u);
        }

        v16 = 0;
      }
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v27 = NFLogGetLogger();
      if (v27)
      {
        v28 = v27;
        v29 = object_getClass(a1);
        v30 = class_isMetaClass(v29);
        v31 = object_getClassName(a1);
        v53 = sel_getName("isClientForeground:");
        v32 = 45;
        if (v30)
        {
          v32 = 43;
        }

        v28(3, "%c[%{public}s %{public}s]:%i No RB, faking result", v32, v31, v53, 213);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v6 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
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

        *buf = 67109890;
        v62 = v34;
        v63 = 2082;
        v64 = object_getClassName(a1);
        v65 = 2082;
        v66 = sel_getName("isClientForeground:");
        v67 = 1024;
        v68 = 213;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i No RB, faking result", buf, 0x22u);
      }

      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

uint64_t sub_1000446D0(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    if (qword_10035D930 != -1)
    {
      dispatch_once(&qword_10035D930, &stru_100316098);
    }

    if (byte_10035D928)
    {
      v5 = sub_10027E940(v4);
      v7 = [*(v6 + 4088) identifierWithPid:{objc_msgSend(v3, "processIdentifier", v5)}];
      if (v7)
      {
        v9 = sub_10027E9AC(v8);
        log = [*(v10 + 8) predicateMatchingIdentifier:{v7, v9}];
        if (log)
        {
          v12 = sub_10027E91C(v11);
          v14 = [*(v13 + 4080) handleForPredicate:log error:{0, v12}];
          v15 = [v14 currentState];
          v16 = [v15 endowmentNamespaces];
          v62 = [v16 containsObject:@"com.apple.frontboard.visibility"];
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          Logger = NFLogGetLogger();
          if (Logger)
          {
            v18 = Logger;
            Class = object_getClass(a1);
            isMetaClass = class_isMetaClass(Class);
            ClassName = object_getClassName(a1);
            v20 = v14;
            Name = sel_getName("appStateFromConnection:");
            v22 = [v15 taskState];
            v59 = [v3 processIdentifier];
            v55 = Name;
            v14 = v20;
            v23 = 43;
            if (!isMetaClass)
            {
              v23 = 45;
            }

            v18(6, "%c[%{public}s %{public}s]:%i task_state=%d for pid %d visibility = %{public}@", v23, ClassName, v55, 269, v22, v59, v16);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v24 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
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

            *buf = 67110658;
            v65 = v26;
            v66 = 2082;
            v67 = object_getClassName(a1);
            v68 = 2082;
            v69 = sel_getName("appStateFromConnection:");
            v70 = 1024;
            v71 = 269;
            v72 = 1024;
            v73 = [v15 taskState];
            v74 = 1024;
            v75 = [v3 processIdentifier];
            v76 = 2114;
            v77 = v16;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i task_state=%d for pid %d visibility = %{public}@", buf, 0x38u);
          }

          if (v15)
          {
            if ([v15 taskState] == 3)
            {
              v27 = 1;
            }

            else
            {
              v52 = [v15 taskState];
              v53 = 2;
              if (v62)
              {
                v53 = 3;
              }

              if (v52 == 4)
              {
                v27 = v53;
              }

              else
              {
                v27 = 0;
              }
            }
          }

          else
          {
            v27 = 0;
          }
        }

        else
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v44 = NFLogGetLogger();
          if (v44)
          {
            v45 = v44;
            v46 = object_getClass(a1);
            v47 = class_isMetaClass(v46);
            v48 = object_getClassName(a1);
            v58 = sel_getName("appStateFromConnection:");
            v49 = 45;
            if (v47)
            {
              v49 = 43;
            }

            v45(4, "%c[%{public}s %{public}s]:%i Invalid pid", v49, v48, v58, 260);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v14 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            v50 = object_getClass(a1);
            if (class_isMetaClass(v50))
            {
              v51 = 43;
            }

            else
            {
              v51 = 45;
            }

            *buf = 67109890;
            v65 = v51;
            v66 = 2082;
            v67 = object_getClassName(a1);
            v68 = 2082;
            v69 = sel_getName("appStateFromConnection:");
            v70 = 1024;
            v71 = 260;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid pid", buf, 0x22u);
          }

          v27 = 0;
        }
      }

      else
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v36 = NFLogGetLogger();
        if (v36)
        {
          v37 = v36;
          v38 = object_getClass(a1);
          v39 = class_isMetaClass(v38);
          v40 = object_getClassName(a1);
          v57 = sel_getName("appStateFromConnection:");
          v41 = 45;
          if (v39)
          {
            v41 = 43;
          }

          v37(4, "%c[%{public}s %{public}s]:%i Invalid pid", v41, v40, v57, 255);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        log = NFSharedLogGetLogger();
        if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
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

          *buf = 67109890;
          v65 = v43;
          v66 = 2082;
          v67 = object_getClassName(a1);
          v68 = 2082;
          v69 = sel_getName("appStateFromConnection:");
          v70 = 1024;
          v71 = 255;
          _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid pid", buf, 0x22u);
        }

        v27 = 0;
      }
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v28 = NFLogGetLogger();
      if (v28)
      {
        v29 = v28;
        v30 = object_getClass(a1);
        v31 = class_isMetaClass(v30);
        v32 = object_getClassName(a1);
        v56 = sel_getName("appStateFromConnection:");
        v33 = 45;
        if (v31)
        {
          v33 = 43;
        }

        v29(3, "%c[%{public}s %{public}s]:%i No RB, faking result", v33, v32, v56, 248);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v7 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v34 = object_getClass(a1);
        if (class_isMetaClass(v34))
        {
          v35 = 43;
        }

        else
        {
          v35 = 45;
        }

        *buf = 67109890;
        v65 = v35;
        v66 = 2082;
        v67 = object_getClassName(a1);
        v68 = 2082;
        v69 = sel_getName("appStateFromConnection:");
        v70 = 1024;
        v71 = 248;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i No RB, faking result", buf, 0x22u);
      }

      v27 = 0;
    }
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

void sub_100044D60(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = *(*(a1 + 32) + 16);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        if ([v7 processIdentifier] == *(a1 + 48))
        {
          [*(a1 + 40) addObject:v7];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

id sub_100044E78(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v6 = a2;
  v7 = objc_opt_self();
  v9 = sub_10027E940(v8);
  v11 = *(v10 + 4088);
  v12 = [v6 processIdentifier];

  v13 = [v11 identifierWithPid:v12];
  v15 = sub_10027E91C(v14);
  v17 = *(v16 + 4080);
  v53 = 0;
  v18 = [v17 handleForIdentifier:v13 error:{&v53, v15}];
  v19 = v53;
  if (v19)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v21 = Logger;
      Class = object_getClass(v7);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v7);
      Name = sel_getName("rbsInfoFromConnection:bundleIdentifier:isRBSApp:");
      v24 = 45;
      if (isMetaClass)
      {
        v24 = 43;
      }

      v21(4, "%c[%{public}s %{public}s]:%i %@", v24, ClassName, Name, 349, v19);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v25 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = object_getClass(v7);
      if (class_isMetaClass(v26))
      {
        v27 = 43;
      }

      else
      {
        v27 = 45;
      }

      v28 = object_getClassName(v7);
      v29 = sel_getName("rbsInfoFromConnection:bundleIdentifier:isRBSApp:");
      *buf = 67110146;
      v57 = v27;
      v58 = 2082;
      v59 = v28;
      v60 = 2082;
      v61 = v29;
      v62 = 1024;
      v63 = 349;
      v64 = 2112;
      v65 = v19;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i %@", buf, 0x2Cu);
    }

    v30 = v19;
  }

  else if (v18)
  {
    v31 = [v18 bundle];
    v32 = [v31 identifier];

    v33 = v32;
    *a3 = v32;
    *a4 = [v18 isApplication];

    v30 = 0;
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v34 = NFLogGetLogger();
    if (v34)
    {
      v35 = v34;
      v36 = object_getClass(v7);
      v37 = class_isMetaClass(v36);
      v38 = object_getClassName(v7);
      v52 = sel_getName("rbsInfoFromConnection:bundleIdentifier:isRBSApp:");
      v39 = 45;
      if (v37)
      {
        v39 = 43;
      }

      v35(6, "%c[%{public}s %{public}s]:%i nil handle", v39, v38, v52, 352);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v40 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v41 = object_getClass(v7);
      if (class_isMetaClass(v41))
      {
        v42 = 43;
      }

      else
      {
        v42 = 45;
      }

      v43 = object_getClassName(v7);
      v44 = sel_getName("rbsInfoFromConnection:bundleIdentifier:isRBSApp:");
      *buf = 67109890;
      v57 = v42;
      v58 = 2082;
      v59 = v43;
      v60 = 2082;
      v61 = v44;
      v62 = 1024;
      v63 = 352;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i nil handle", buf, 0x22u);
    }

    v45 = [NSError alloc];
    v46 = [NSString stringWithUTF8String:"nfcd"];
    v54 = NSLocalizedDescriptionKey;
    v47 = [NSString stringWithUTF8String:"Invalid State"];
    v55 = v47;
    v48 = [NSDictionary dictionaryWithObjects:&v55 forKeys:&v54 count:1];
    v30 = [v45 initWithDomain:v46 code:12 userInfo:v48];
  }

  return v30;
}

void *sub_100045308(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v8.receiver = a1;
    v8.super_class = NFWalletPresentationService;
    v4 = objc_msgSendSuper2(&v8, "init");
    a1 = v4;
    if (v4)
    {
      v4[3] = v3;
      v5 = objc_opt_new();
      v6 = a1[6];
      a1[6] = v5;
    }
  }

  return a1;
}

void sub_100045384(void *a1)
{
  if (a1)
  {
    v1 = a1;
    objc_sync_enter(v1);
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v3 = Logger;
      Class = object_getClass(v1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v1);
      Name = sel_getName("start");
      v7 = 45;
      if (isMetaClass)
      {
        v7 = 43;
      }

      v3(6, "%c[%{public}s %{public}s]:%i ", v7, ClassName, Name, 76);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v8 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = object_getClass(v1);
      if (class_isMetaClass(v9))
      {
        v10 = 43;
      }

      else
      {
        v10 = 45;
      }

      *buf = 67109890;
      *&buf[4] = v10;
      *v33 = 2082;
      *&v33[2] = object_getClassName(v1);
      v34 = 2082;
      v35 = sel_getName("start");
      v36 = 1024;
      v37 = 76;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
    }

    if (*(v1 + 8) == 1)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v11 = NFLogGetLogger();
      if (v11)
      {
        v12 = v11;
        v13 = object_getClass(v1);
        v14 = class_isMetaClass(v13);
        v15 = object_getClassName(v1);
        v30 = sel_getName("start");
        v16 = 45;
        if (v14)
        {
          v16 = 43;
        }

        v12(4, "%c[%{public}s %{public}s]:%i Previously invalidated", v16, v15, v30, 78);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v17 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = object_getClass(v1);
        if (class_isMetaClass(v18))
        {
          v19 = 43;
        }

        else
        {
          v19 = 45;
        }

        v20 = object_getClassName(v1);
        v21 = sel_getName("start");
        *buf = 67109890;
        *&buf[4] = v19;
        *v33 = 2082;
        *&v33[2] = v20;
        v34 = 2082;
        v35 = v21;
        v36 = 1024;
        v37 = 78;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Previously invalidated", buf, 0x22u);
      }
    }

    else
    {
      v22 = _os_activity_create(&_mh_execute_header, "NFWalletPresentmentMonitor started", &_os_activity_current, OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
      *buf = 0;
      *v33 = 0;
      os_activity_scope_enter(v22, buf);
      os_activity_scope_leave(buf);

      v23 = NFSharedSignpostLog();
      if (os_signpost_enabled(v23))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v23, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NFWalletPresentmentMonitor_START", &unk_1002E8B7A, buf, 2u);
      }

      v24 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.nfcd.wallet.presentation"];
      objc_storeStrong(v1 + 2, v24);

      [v1[2] setDelegate:v1];
      v25 = v1[6];
      if (v25)
      {
        [v25[1] enumerateKeysAndObjectsUsingBlock:&stru_1003196D0];
      }

      [v1[2] activate];
      if (v1[5])
      {
        goto LABEL_28;
      }

      v26 = objc_opt_new();
      v27 = v1[5];
      v1[5] = v26;

      v28 = v1[5];
      v17 = dispatch_get_global_queue(25, 0);
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_1000457C8;
      v31[3] = &unk_100316188;
      v31[4] = v1;
      sub_100207314(v28, v17, v31);
    }

LABEL_28:
    objc_sync_exit(v1);
  }
}

void sub_1000457C8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = v1;
    objc_sync_enter(v2);
    if (!v2[2])
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v20 = Logger;
        Class = object_getClass(v2);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v2);
        Name = sel_getName("_keybagUpdate");
        v24 = 45;
        if (isMetaClass)
        {
          v24 = 43;
        }

        v20(4, "%c[%{public}s %{public}s]:%i Abort the initialization sequence", v24, ClassName, Name, 53);
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

        *buf = 67109890;
        v31 = v27;
        v32 = 2082;
        v33 = object_getClassName(v2);
        v34 = 2082;
        v35 = sel_getName("_keybagUpdate");
        v36 = 1024;
        v37 = 53;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Abort the initialization sequence", buf, 0x22u);
      }

      goto LABEL_30;
    }

    v3 = v2[5];
    if (sub_1000030C8(v3))
    {
      v4 = v2[5];
      if (sub_100003110(v4))
      {
        v5 = v2[4];

        if (!v5)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v6 = NFLogGetLogger();
          if (v6)
          {
            v7 = v6;
            v8 = object_getClass(v2);
            v9 = class_isMetaClass(v8);
            v10 = object_getClassName(v2);
            v28 = sel_getName("_keybagUpdate");
            v11 = 45;
            if (v9)
            {
              v11 = 43;
            }

            v7(6, "%c[%{public}s %{public}s]:%i Starting event publisher", v11, v10, v28, 59);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v12 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = object_getClass(v2);
            if (class_isMetaClass(v13))
            {
              v14 = 43;
            }

            else
            {
              v14 = 45;
            }

            *buf = 67109890;
            v31 = v14;
            v32 = 2082;
            v33 = object_getClassName(v2);
            v34 = 2082;
            v35 = sel_getName("_keybagUpdate");
            v36 = 1024;
            v37 = 59;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Starting event publisher", buf, 0x22u);
          }

          v15 = objc_opt_new();
          v16 = v2[4];
          v2[4] = v15;

          v17 = v2[4];
          v18 = v2[3];
          if (v17)
          {
            v17[5] = v18;
          }

          [v2[4] addObserver:v2 forKeyPath:@"walletDomain" options:5 context:off_10035B2A0];
          sub_100207470(v2[5]);
          objc_storeStrong(v2 + 5, 0);
        }

        goto LABEL_30;
      }
    }

LABEL_30:
    objc_sync_exit(v2);
  }
}

void sub_100045B4C(void *a1)
{
  if (a1)
  {
    v1 = a1;
    objc_sync_enter(v1);
    if (*(v1 + 8) == 1)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v3 = Logger;
        Class = object_getClass(v1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v1);
        Name = sel_getName("invalidate");
        v7 = 45;
        if (isMetaClass)
        {
          v7 = 43;
        }

        v3(4, "%c[%{public}s %{public}s]:%i Previously invalidated", v7, ClassName, Name, 105);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v8 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = object_getClass(v1);
        if (class_isMetaClass(v9))
        {
          v10 = 43;
        }

        else
        {
          v10 = 45;
        }

        *buf = 67109890;
        v16 = v10;
        v17 = 2082;
        v18 = object_getClassName(v1);
        v19 = 2082;
        v20 = sel_getName("invalidate");
        v21 = 1024;
        v22 = 105;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Previously invalidated", buf, 0x22u);
      }
    }

    else
    {
      *(v1 + 8) = 1;
      [v1[2] invalidate];
      [v1[2] setDelegate:0];
      v11 = v1[2];
      v1[2] = 0;

      sub_100207470(v1[5]);
      v12 = v1[5];
      v1[5] = 0;

      [v1[4] removeObserver:v1 forKeyPath:@"walletDomain"];
      v13 = v1[4];
      v1[4] = 0;
    }

    objc_sync_exit(v1);
  }
}

void sub_100046214(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = _os_activity_create(&_mh_execute_header, "NFWalletPresentmentMonitor xpcInvalidated", &_os_activity_current, OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
    *state = 0;
    *&state[8] = 0;
    os_activity_scope_enter(v3, state);
    os_activity_scope_leave(state);

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v5 = Logger;
      Class = object_getClass(*(a1 + 32));
      if (class_isMetaClass(Class))
      {
        v7 = 43;
      }

      else
      {
        v7 = 45;
      }

      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 48));
      v10 = sub_1001E4B84(WeakRetained);
      v11 = v10;
      if (v10)
      {
        v12 = *(v10 + 8);
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;
      v5(6, "%c[%{public}s %{public}s]:%i XPC (%{public}@) invalidated", v7, ClassName, Name, 146, v13);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v14 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v15))
      {
        v16 = 43;
      }

      else
      {
        v16 = 45;
      }

      v17 = object_getClassName(*(a1 + 32));
      v18 = sel_getName(*(a1 + 48));
      v19 = sub_1001E4B84(WeakRetained);
      v20 = v19;
      if (v19)
      {
        v21 = *(v19 + 8);
      }

      else
      {
        v21 = 0;
      }

      v22 = v21;
      *state = 67110146;
      *&state[4] = v16;
      *&state[8] = 2082;
      *&state[10] = v17;
      v24 = 2082;
      v25 = v18;
      v26 = 1024;
      v27 = 146;
      v28 = 2114;
      v29 = v22;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i XPC (%{public}@) invalidated", state, 0x2Cu);
    }

    [WeakRetained setUserInfo:0];
  }
}

void sub_100046470(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = _os_activity_create(&_mh_execute_header, "NFWalletPresentmentMonitor xpcInterrupted", &_os_activity_current, OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
    *state = 0;
    *&state[8] = 0;
    os_activity_scope_enter(v3, state);
    os_activity_scope_leave(state);

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v5 = Logger;
      Class = object_getClass(*(a1 + 32));
      if (class_isMetaClass(Class))
      {
        v7 = 43;
      }

      else
      {
        v7 = 45;
      }

      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 48));
      v10 = sub_1001E4B84(WeakRetained);
      v11 = v10;
      if (v10)
      {
        v12 = *(v10 + 8);
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;
      v5(6, "%c[%{public}s %{public}s]:%i XPC (%{public}@) invalidated", v7, ClassName, Name, 157, v13);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v14 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v15))
      {
        v16 = 43;
      }

      else
      {
        v16 = 45;
      }

      v17 = object_getClassName(*(a1 + 32));
      v18 = sel_getName(*(a1 + 48));
      v19 = sub_1001E4B84(WeakRetained);
      v20 = v19;
      if (v19)
      {
        v21 = *(v19 + 8);
      }

      else
      {
        v21 = 0;
      }

      v22 = v21;
      *state = 67110146;
      *&state[4] = v16;
      *&state[8] = 2082;
      *&state[10] = v17;
      v24 = 2082;
      v25 = v18;
      v26 = 1024;
      v27 = 157;
      v28 = 2114;
      v29 = v22;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i XPC (%{public}@) invalidated", state, 0x2Cu);
    }
  }
}

id sub_100047C9C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    v3 = objc_opt_new();
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;

    v2 = *(a1 + 8);
  }

  return v2;
}

id sub_1000484A0(uint64_t a1)
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

    v3(4, "%c[%{public}s %{public}s]:%i No settings found; init to default value", v7, ClassName, Name, 198);
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
    v19 = v10;
    v20 = 2082;
    v21 = v11;
    v22 = 2082;
    v23 = v12;
    v24 = 1024;
    v25 = 198;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i No settings found; init to default value", buf, 0x22u);
  }

  v13 = *(a1 + 32);
  if (v13 && (*(v13 + 32) = 0, (v14 = *(a1 + 32)) != 0))
  {
    v15 = *(v14 + 64);
  }

  else
  {
    v15 = 0;
  }

  return [v15 setBool:0 forKey:@"walletDoubleButtonPressedConsumerAvailable"];
}

id sub_10004864C(uint64_t a1)
{
  v2 = [*(a1 + 40) BOOLValue];
  v3 = *(a1 + 32);
  if (!v3 || (*(v3 + 33) = v2, (v4 = *(a1 + 32)) == 0) || *(v4 + 33) != 1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v19 = Logger;
      Class = object_getClass(*(a1 + 32));
      if (class_isMetaClass(Class))
      {
        v21 = 43;
      }

      else
      {
        v21 = 45;
      }

      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 48));
      v24 = *(a1 + 32);
      if (v24)
      {
        v24 = *(v24 + 32);
      }

      v19(5, "%c[%{public}s %{public}s]:%i [Resume] Consumer available=%{public}d", v21, ClassName, Name, 228, v24);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v25 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v26))
      {
        v27 = 43;
      }

      else
      {
        v27 = 45;
      }

      v28 = object_getClassName(*(a1 + 32));
      v29 = sel_getName(*(a1 + 48));
      v30 = *(a1 + 32);
      if (v30)
      {
        LODWORD(v30) = *(v30 + 32);
      }

      *buf = 67110146;
      v34 = v27;
      v35 = 2082;
      v36 = v28;
      v37 = 2082;
      v38 = v29;
      v39 = 1024;
      v40 = 228;
      v41 = 1026;
      v42 = v30;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i [Resume] Consumer available=%{public}d", buf, 0x28u);
    }

    v16 = *(a1 + 32);
    if (v16)
    {
      v17 = *(v16 + 64);
      LOBYTE(v16) = *(v16 + 32);
      return [v17 setBool:v16 & 1 forKey:@"walletDoubleButtonPressedConsumerAvailable"];
    }

LABEL_32:
    v17 = 0;
    return [v17 setBool:v16 & 1 forKey:@"walletDoubleButtonPressedConsumerAvailable"];
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v5 = NFLogGetLogger();
  if (v5)
  {
    v6 = v5;
    v7 = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(v7);
    v9 = object_getClassName(*(a1 + 32));
    v32 = sel_getName(*(a1 + 48));
    v10 = 45;
    if (isMetaClass)
    {
      v10 = 43;
    }

    v6(5, "%c[%{public}s %{public}s]:%i [Suspension] Consumer available=0", v10, v9, v32, 224);
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
    v15 = sel_getName(*(a1 + 48));
    *buf = 67109890;
    v34 = v13;
    v35 = 2082;
    v36 = v14;
    v37 = 2082;
    v38 = v15;
    v39 = 1024;
    v40 = 224;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i [Suspension] Consumer available=0", buf, 0x22u);
  }

  v16 = *(a1 + 32);
  if (!v16)
  {
    goto LABEL_32;
  }

  v17 = *(v16 + 64);
  LOBYTE(v16) = *(v16 + 33);
  return [v17 setBool:v16 & 1 forKey:@"walletDoubleButtonPressedConsumerAvailable"];
}

void sub_100048974(os_unfair_lock_s *a1)
{
  if (a1)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100048C2C;
    v19[3] = &unk_1003161D8;
    v19[4] = a1;
    v19[5] = &v20;
    os_unfair_lock_lock(a1 + 4);
    sub_100048C2C(v19);
    os_unfair_lock_unlock(a1 + 4);
    v2 = v21[3];
    if (v2 >= 6)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v5 = Logger;
        Class = object_getClass(a1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(a1);
        Name = sel_getName("updateNFCDefaultForCA");
        v10 = 45;
        if (isMetaClass)
        {
          v10 = 43;
        }

        v5(4, "%c[%{public}s %{public}s]:%i unknown wallet domain %d for stats reporting", v10, ClassName, Name, 296, v21[3]);
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
        v15 = sel_getName("updateNFCDefaultForCA");
        v16 = v21[3];
        *buf = 67110146;
        v27 = v13;
        v28 = 2082;
        v29 = v14;
        v30 = 2082;
        v31 = v15;
        v32 = 1024;
        v33 = 296;
        v34 = 1024;
        v35 = v16;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i unknown wallet domain %d for stats reporting", buf, 0x28u);
      }

      v3 = 149;
    }

    else
    {
      v3 = qword_100296C78[v2];
    }

    v24 = @"currentNFCDefault";
    v17 = [NSNumber numberWithUnsignedInteger:v3];
    v25 = v17;
    v18 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    [NFGeneralStatisticsCALogger updateAnalyticsGeneralTransactionStatistics:v18];

    _Block_object_dispose(&v20, 8);
  }
}

os_unfair_lock_s *sub_100048C40(os_unfair_lock_s *a1)
{
  v1 = a1;
  if (a1)
  {
    v4 = 0;
    v5 = &v4;
    v6 = 0x3032000000;
    v7 = sub_100006A1C;
    v8 = sub_100048D44;
    v9 = 0;
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100048D4C;
    v3[3] = &unk_1003161D8;
    v3[4] = a1;
    v3[5] = &v4;
    os_unfair_lock_lock(a1 + 4);
    sub_100048D4C(v3);
    os_unfair_lock_unlock(v1 + 4);
    v1 = v5[5];
    _Block_object_dispose(&v4, 8);
  }

  return v1;
}

void sub_100048D4C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[7];
  }

  v3 = v2;
  v7 = [v3 defaultAppIdentifier];
  v4 = [v7 copy];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void sub_100048DC4(uint64_t a1)
{
  if (a1)
  {
    v121 = 0;
    v122 = &v121;
    v123 = 0x2020000000;
    v124 = 0;
    v115 = 0;
    v116 = &v115;
    v117 = 0x3032000000;
    v118 = sub_100006A1C;
    v119 = sub_100048D44;
    v120 = 0;
    v111 = 0;
    v112 = &v111;
    v113 = 0x2020000000;
    v114 = 0;
    v107 = 0;
    v108 = &v107;
    v109 = 0x2020000000;
    v110 = 0;
    v98 = _NSConcreteStackBlock;
    v99 = 3221225472;
    v100 = sub_100049844;
    v101 = &unk_100316200;
    v102 = a1;
    v103 = &v121;
    v104 = &v115;
    v105 = &v111;
    v106 = &v107;
    os_unfair_lock_lock((a1 + 16));
    sub_100049844(&v98);
    os_unfair_lock_unlock((a1 + 16));
    if (*(v108 + 24) == 1)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v3 = Logger;
        Class = object_getClass(a1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(a1);
        Name = sel_getName("signalPresentation");
        v7 = 45;
        if (isMetaClass)
        {
          v7 = 43;
        }

        v3(5, "%c[%{public}s %{public}s]:%i Suppress button click", v7, ClassName, Name, 335);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v8 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = object_getClass(a1);
        if (class_isMetaClass(v9))
        {
          v10 = 43;
        }

        else
        {
          v10 = 45;
        }

        v11 = object_getClassName(a1);
        v12 = sel_getName("signalPresentation");
        *buf = 67109890;
        v126 = v10;
        v127 = 2082;
        v128 = v11;
        v129 = 2082;
        v130 = v12;
        v131 = 1024;
        v132 = 335;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Suppress button click", buf, 0x22u);
      }

      if (v112[3] == 2)
      {
        sub_1000498E4(a1, v13);
      }

      goto LABEL_85;
    }

    if (*(v122 + 24) == 1)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v14 = NFLogGetLogger();
      if (v14)
      {
        v15 = v14;
        v16 = object_getClass(a1);
        v17 = class_isMetaClass(v16);
        v18 = object_getClassName(a1);
        v94 = sel_getName("signalPresentation");
        v19 = 45;
        if (v17)
        {
          v19 = 43;
        }

        v15(5, "%c[%{public}s %{public}s]:%i Presentment intent suppression active", v19, v18, v94, 343);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v20 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_49;
      }

      v21 = object_getClass(a1);
      if (class_isMetaClass(v21))
      {
        v22 = 43;
      }

      else
      {
        v22 = 45;
      }

      v23 = object_getClassName(a1);
      v24 = sel_getName("signalPresentation");
      *buf = 67109890;
      v126 = v22;
      v127 = 2082;
      v128 = v23;
      v129 = 2082;
      v130 = v24;
      v131 = 1024;
      v132 = 343;
      v25 = "%c[%{public}s %{public}s]:%i Presentment intent suppression active";
      v26 = v20;
      v27 = OS_LOG_TYPE_DEFAULT;
LABEL_48:
      _os_log_impl(&_mh_execute_header, v26, v27, v25, buf, 0x22u);
LABEL_49:

LABEL_85:
      _Block_object_dispose(&v107, 8);
      _Block_object_dispose(&v111, 8);
      _Block_object_dispose(&v115, 8);

      _Block_object_dispose(&v121, 8);
      return;
    }

    if (![v116[5] lengthOfBytesUsingEncoding:4])
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v47 = NFLogGetLogger();
      if (v47)
      {
        v48 = v47;
        v49 = object_getClass(a1);
        v50 = class_isMetaClass(v49);
        v51 = object_getClassName(a1);
        v95 = sel_getName("signalPresentation");
        v52 = 45;
        if (v50)
        {
          v52 = 43;
        }

        v48(3, "%c[%{public}s %{public}s]:%i Invalid app identifier", v52, v51, v95, 347);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v20 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_49;
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
      v56 = sel_getName("signalPresentation");
      *buf = 67109890;
      v126 = v54;
      v127 = 2082;
      v128 = v55;
      v129 = 2082;
      v130 = v56;
      v131 = 1024;
      v132 = 347;
      v25 = "%c[%{public}s %{public}s]:%i Invalid app identifier";
      v26 = v20;
      v27 = OS_LOG_TYPE_ERROR;
      goto LABEL_48;
    }

    v29 = v112[3];
    if (v29 > 2)
    {
      if ((v29 - 3) >= 2)
      {
        goto LABEL_84;
      }
    }

    else
    {
      if (v29)
      {
        if (v29 == 1)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v80 = NFLogGetLogger();
          if (v80)
          {
            v81 = v80;
            v82 = object_getClass(a1);
            v83 = class_isMetaClass(v82);
            v84 = object_getClassName(a1);
            v85 = sel_getName("signalPresentation");
            v86 = 45;
            if (v83)
            {
              v86 = 43;
            }

            v81(6, "%c[%{public}s %{public}s]:%i Notifying %{public}@", v86, v84, v85, 362, v116[5], v98, v99);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v87 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
          {
            v88 = object_getClass(a1);
            if (class_isMetaClass(v88))
            {
              v89 = 43;
            }

            else
            {
              v89 = 45;
            }

            v90 = object_getClassName(a1);
            v91 = sel_getName("signalPresentation");
            v92 = v116[5];
            *buf = 67110146;
            v126 = v89;
            v127 = 2082;
            v128 = v90;
            v129 = 2082;
            v130 = v91;
            v131 = 1024;
            v132 = 362;
            v133 = 2114;
            v134 = v92;
            _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Notifying %{public}@", buf, 0x2Cu);
          }

          v43 = sub_100047C9C(a1);
          v44 = v43;
          v45 = v116[5];
          v46 = 1;
        }

        else
        {
          if (v29 != 2)
          {
LABEL_84:
            [NFGeneralStatisticsCALogger updateAnalyticsGeneralTransactionStatistics:&off_1003392D8];
            goto LABEL_85;
          }

          sub_1000498E4(a1, v28);
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v30 = NFLogGetLogger();
          if (v30)
          {
            v31 = v30;
            v32 = object_getClass(a1);
            v33 = class_isMetaClass(v32);
            v34 = object_getClassName(a1);
            v35 = sel_getName("signalPresentation");
            v36 = 45;
            if (v33)
            {
              v36 = 43;
            }

            v31(6, "%c[%{public}s %{public}s]:%i Notifying %{public}@", v36, v34, v35, 355, v116[5], v98, v99);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v37 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
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
            v41 = sel_getName("signalPresentation");
            v42 = v116[5];
            *buf = 67110146;
            v126 = v39;
            v127 = 2082;
            v128 = v40;
            v129 = 2082;
            v130 = v41;
            v131 = 1024;
            v132 = 355;
            v133 = 2114;
            v134 = v42;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Notifying %{public}@", buf, 0x2Cu);
          }

          v43 = sub_100047C9C(a1);
          v44 = v43;
          v45 = v116[5];
          v46 = 0;
        }

        [v43 launchBundleWithIdentifier:v45 launchReason:2 launchDomain:v46];

        goto LABEL_84;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v57 = NFLogGetLogger();
      if (v57)
      {
        v58 = v57;
        v59 = object_getClass(a1);
        v60 = class_isMetaClass(v59);
        v61 = object_getClassName(a1);
        v96 = sel_getName("signalPresentation");
        v62 = 45;
        if (v60)
        {
          v62 = 43;
        }

        v58(6, "%c[%{public}s %{public}s]:%i Routing to passkit in unknown config", v62, v61, v96, 369);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v63 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
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
        v67 = sel_getName("signalPresentation");
        *buf = 67109890;
        v126 = v65;
        v127 = 2082;
        v128 = v66;
        v129 = 2082;
        v130 = v67;
        v131 = 1024;
        v132 = 369;
        _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Routing to passkit in unknown config", buf, 0x22u);
      }
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v68 = NFLogGetLogger();
    if (v68)
    {
      v69 = v68;
      v70 = object_getClass(a1);
      v71 = class_isMetaClass(v70);
      v72 = object_getClassName(a1);
      v97 = sel_getName("signalPresentation");
      v73 = 45;
      if (v71)
      {
        v73 = 43;
      }

      v69(6, "%c[%{public}s %{public}s]:%i Notifying passkit", v73, v72, v97, 373);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v74 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
    {
      v75 = object_getClass(a1);
      if (class_isMetaClass(v75))
      {
        v76 = 43;
      }

      else
      {
        v76 = 45;
      }

      v77 = object_getClassName(a1);
      v78 = sel_getName("signalPresentation");
      *buf = 67109890;
      v126 = v76;
      v127 = 2082;
      v128 = v77;
      v129 = 2082;
      v130 = v78;
      v131 = 1024;
      v132 = 373;
      _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Notifying passkit", buf, 0x22u);
    }

    v79 = *(a1 + 40);
    if (v79)
    {
      sub_100235394(v79, @"com.apple.stockholm.wallet.pre-arm", 0);
    }

    goto LABEL_84;
  }
}

void sub_100049844(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    LOBYTE(v2) = *(v2 + 33);
  }

  *(*(a1[5] + 8) + 24) = v2 & 1;
  v3 = a1[4];
  if (v3)
  {
    v3 = v3[7];
  }

  v4 = v3;
  v5 = [v4 defaultAppIdentifier];
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  *(*(a1[7] + 8) + 24) = *(a1[4] + 24);
  v8 = a1[4];
  if (v8)
  {
    LOBYTE(v8) = *(v8 + 35);
  }

  *(*(a1[8] + 8) + 24) = v8 & 1;
}

void sub_1000498E4(void *a1, double a2)
{
  v3 = sub_10027E350(a2);
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v5 = Logger;
    Class = object_getClass(a1);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(a1);
    Name = sel_getName("_consumeDoubleButtonCredential");
    v8 = 45;
    if (isMetaClass)
    {
      v8 = 43;
    }

    v5(4, "%c[%{public}s %{public}s]:%i Failed to create ACMContext? %d", v8, ClassName, Name, 593, v3);
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

    *buf = 67110146;
    v15 = v11;
    v16 = 2082;
    v17 = object_getClassName(a1);
    v18 = 2082;
    v19 = sel_getName("_consumeDoubleButtonCredential");
    v20 = 1024;
    v21 = 593;
    v22 = 1024;
    v23 = v3;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to create ACMContext? %d", buf, 0x28u);
  }
}

void sub_100049D38(void *a1)
{
  if (a1)
  {
    v3 = NSKeyValueChangeNewKey;
    v4 = &__kCFBooleanTrue;
    v2 = [NSDictionary dictionaryWithObjects:&v4 forKeys:&v3 count:1];
    [a1 observeValueForKeyPath:0 ofObject:0 change:v2 context:off_10035B320];
  }
}

void sub_100049DEC(void *a1)
{
  if (a1)
  {
    v3 = NSKeyValueChangeNewKey;
    v4 = &__kCFBooleanFalse;
    v2 = [NSDictionary dictionaryWithObjects:&v4 forKeys:&v3 count:1];
    [a1 observeValueForKeyPath:0 ofObject:0 change:v2 context:off_10035B320];
  }
}

void sub_100049EA0(id *a1)
{
  if (a1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v3 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("deassertPKForegroundPresentment");
      v7 = 45;
      if (isMetaClass)
      {
        v7 = 43;
      }

      v3(6, "%c[%{public}s %{public}s]:%i ", v7, ClassName, Name, 405);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v8 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = object_getClass(a1);
      if (class_isMetaClass(v9))
      {
        v10 = 43;
      }

      else
      {
        v10 = 45;
      }

      *buf = 67109890;
      v18 = v10;
      v19 = 2082;
      v20 = object_getClassName(a1);
      v21 = 2082;
      v22 = sel_getName("deassertPKForegroundPresentment");
      v23 = 1024;
      v24 = 405;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
    }

    v11 = [a1[7] walletDomain];
    v15 = NSKeyValueChangeNewKey;
    v12 = [NSNumber numberWithUnsignedInteger:v11];
    v16 = v12;
    v13 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    [a1 observeValueForKeyPath:0 ofObject:0 change:v13 context:off_10035B318];
  }
}

void sub_10004A0A0(os_unfair_lock_s *a1, char a2)
{
  if (a1)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10004A138;
    v3[3] = &unk_100315EB8;
    v3[4] = a1;
    v4 = a2;
    os_unfair_lock_lock(a1 + 4);
    sub_10004A138(v3);
    os_unfair_lock_unlock(a1 + 4);
  }
}

uint64_t sub_10004A138(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    *(v1 + 35) = *(result + 40);
  }

  return result;
}

uint64_t sub_10004A14C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v60 = 0;
    v61 = &v60;
    v62 = 0x2020000000;
    v63 = 0;
    v56 = 0;
    v57 = &v56;
    v58 = 0x2020000000;
    v59 = 0;
    v50 = 0;
    v51 = &v50;
    v52 = 0x3032000000;
    v53 = sub_100006A1C;
    v54 = sub_100048D44;
    v55 = 0;
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_10004A7AC;
    v49[3] = &unk_100316228;
    v49[4] = a1;
    v49[5] = &v60;
    v49[6] = &v56;
    v49[7] = &v50;
    os_unfair_lock_lock((a1 + 16));
    sub_10004A7AC(v49);
    os_unfair_lock_unlock((a1 + 16));
    v4 = *(v57 + 24);
    if (v4 == 1)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v6 = Logger;
        Class = object_getClass(a1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(a1);
        Name = sel_getName("notifyPresentmentWithFieldNotification:");
        v10 = 45;
        if (isMetaClass)
        {
          v10 = 43;
        }

        v6(5, "%c[%{public}s %{public}s]:%i Presentment is currently suspended", v10, ClassName, Name, 440);
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

        v14 = object_getClassName(a1);
        v15 = sel_getName("notifyPresentmentWithFieldNotification:");
        *buf = 67109890;
        v67 = v13;
        v68 = 2082;
        v69 = v14;
        v70 = 2082;
        v71 = v15;
        v72 = 1024;
        v73 = 440;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Presentment is currently suspended", buf, 0x22u);
      }

      goto LABEL_36;
    }

    v16 = v61[3];
    if (v16 > 2)
    {
      if ((v16 - 3) >= 2)
      {
        goto LABEL_35;
      }
    }

    else
    {
      if (v16)
      {
        if (v16 == 1)
        {
          v17 = sub_100047C9C(a1);
          v18 = v17;
          v19 = v51[5];
          v20 = 1;
          goto LABEL_33;
        }

        if (v16 == 2)
        {
          v17 = sub_100047C9C(a1);
          v18 = v17;
          v19 = v51[5];
          v20 = 0;
LABEL_33:
          [v17 launchBundleWithIdentifier:v19 launchReason:1 launchDomain:v20];
LABEL_34:
        }

LABEL_35:
        [NFGeneralStatisticsCALogger updateAnalyticsGeneralTransactionStatistics:&off_100339300];
LABEL_36:
        a1 = v4 ^ 1u;
        _Block_object_dispose(&v50, 8);

        _Block_object_dispose(&v56, 8);
        _Block_object_dispose(&v60, 8);
        goto LABEL_37;
      }

      v24 = [v3 category];
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v25 = NFLogGetLogger();
      v26 = v25;
      if (v24 == 9)
      {
        if (v25)
        {
          v27 = object_getClass(a1);
          v28 = class_isMetaClass(v27);
          v29 = object_getClassName(a1);
          v46 = sel_getName("notifyPresentmentWithFieldNotification:");
          v30 = 45;
          if (v28)
          {
            v30 = 43;
          }

          v26(6, "%c[%{public}s %{public}s]:%i Suppress field", v30, v29, v46, 460);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v18 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
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

          v33 = object_getClassName(a1);
          v34 = sel_getName("notifyPresentmentWithFieldNotification:");
          *buf = 67109890;
          v67 = v32;
          v68 = 2082;
          v69 = v33;
          v70 = 2082;
          v71 = v34;
          v72 = 1024;
          v73 = 460;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Suppress field", buf, 0x22u);
        }

        goto LABEL_34;
      }

      if (v25)
      {
        v36 = object_getClass(a1);
        v37 = class_isMetaClass(v36);
        v38 = object_getClassName(a1);
        v47 = sel_getName("notifyPresentmentWithFieldNotification:");
        v39 = 45;
        if (v37)
        {
          v39 = 43;
        }

        v26(6, "%c[%{public}s %{public}s]:%i Routing to passkit in unknown config", v39, v38, v47, 464);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v40 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v41 = object_getClass(a1);
        if (class_isMetaClass(v41))
        {
          v42 = 43;
        }

        else
        {
          v42 = 45;
        }

        v43 = object_getClassName(a1);
        v44 = sel_getName("notifyPresentmentWithFieldNotification:");
        *buf = 67109890;
        v67 = v42;
        v68 = 2082;
        v69 = v43;
        v70 = 2082;
        v71 = v44;
        v72 = 1024;
        v73 = 464;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Routing to passkit in unknown config", buf, 0x22u);
      }
    }

    v18 = [v3 asXPCObject];
    v21 = *(a1 + 40);
    v64[0] = @"xpcEventName";
    v64[1] = @"field";
    v65[0] = @"com.apple.stockholm.wallet.presentment.field-detect";
    v65[1] = v18;
    v22 = v21;
    v23 = [NSDictionary dictionaryWithObjects:v65 forKeys:v64 count:2];
    if (v22)
    {
      sub_100235634(v22, v23, 1);
    }

    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_10004A844;
    v48[3] = &unk_100315F58;
    v48[4] = a1;
    v48[5] = "notifyPresentmentWithFieldNotification:";
    os_unfair_lock_lock((a1 + 16));
    sub_10004A844(v48);
    os_unfair_lock_unlock((a1 + 16));
    goto LABEL_34;
  }

LABEL_37:

  return a1;
}

void sub_10004A7AC(void *a1)
{
  *(*(a1[5] + 8) + 24) = *(a1[4] + 24);
  v2 = a1[4];
  if (v2)
  {
    LOBYTE(v2) = *(v2 + 33);
  }

  *(*(a1[6] + 8) + 24) = v2 & 1;
  v3 = a1[4];
  if (v3)
  {
    v3 = v3[7];
  }

  v7 = v3;
  v4 = [v7 defaultAppIdentifier];
  v5 = *(a1[7] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void sub_10004A844(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    if (*(v1 + 34) != 1)
    {
      goto LABEL_13;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v4 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 40));
      v8 = 45;
      if (isMetaClass)
      {
        v8 = 43;
      }

      v4(4, "%c[%{public}s %{public}s]:%i Unexpected duplicated notification", v8, ClassName, Name, 477);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v9 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
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
      *buf = 67109890;
      v16 = v11;
      v17 = 2082;
      v18 = v12;
      v19 = 2082;
      v20 = v13;
      v21 = 1024;
      v22 = 477;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unexpected duplicated notification", buf, 0x22u);
    }

    v1 = *(a1 + 32);
    if (v1)
    {
LABEL_13:
      *(v1 + 34) = 1;
    }
  }
}

uint64_t sub_10004A9E4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a1)
  {
    v57 = 0;
    v58 = &v57;
    v59 = 0x2020000000;
    v60 = 0;
    v51 = 0;
    v52 = &v51;
    v53 = 0x3032000000;
    v54 = sub_100006A1C;
    v55 = sub_100048D44;
    v56 = 0;
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_10004B024;
    v50[3] = &unk_100316250;
    v50[4] = a1;
    v50[5] = &v57;
    v50[6] = &v51;
    os_unfair_lock_lock((a1 + 16));
    sub_10004B024(v50);
    os_unfair_lock_unlock((a1 + 16));
    v6 = *(v58 + 24);
    if (v6 == 1)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v8 = Logger;
        Class = object_getClass(a1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(a1);
        Name = sel_getName("notifyPresentmentWithFieldNotification:walletDomain:");
        v12 = 45;
        if (isMetaClass)
        {
          v12 = 43;
        }

        v8(5, "%c[%{public}s %{public}s]:%i Presentment is currently suspended", v12, ClassName, Name, 508);
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
        v17 = sel_getName("notifyPresentmentWithFieldNotification:walletDomain:");
        *buf = 67109890;
        v64 = v15;
        v65 = 2082;
        v66 = v16;
        v67 = 2082;
        v68 = v17;
        v69 = 1024;
        v70 = 508;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Presentment is currently suspended", buf, 0x22u);
      }

      goto LABEL_36;
    }

    if (a3 > 2)
    {
      if ((a3 - 3) >= 2)
      {
        goto LABEL_35;
      }
    }

    else
    {
      if (a3)
      {
        if (a3 == 1)
        {
          v18 = sub_100047C9C(a1);
          v19 = v18;
          v20 = v52[5];
          v21 = 1;
          goto LABEL_33;
        }

        if (a3 == 2)
        {
          v18 = sub_100047C9C(a1);
          v19 = v18;
          v20 = v52[5];
          v21 = 0;
LABEL_33:
          [v18 launchBundleWithIdentifier:v20 launchReason:1 launchDomain:v21];
LABEL_34:
        }

LABEL_35:
        [NFGeneralStatisticsCALogger updateAnalyticsGeneralTransactionStatistics:&off_100339328];
LABEL_36:
        a1 = v6 ^ 1u;
        _Block_object_dispose(&v51, 8);

        _Block_object_dispose(&v57, 8);
        goto LABEL_37;
      }

      v25 = [v5 category];
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v26 = NFLogGetLogger();
      v27 = v26;
      if (v25 == 9)
      {
        if (v26)
        {
          v28 = object_getClass(a1);
          v29 = class_isMetaClass(v28);
          v30 = object_getClassName(a1);
          v47 = sel_getName("notifyPresentmentWithFieldNotification:walletDomain:");
          v31 = 45;
          if (v29)
          {
            v31 = 43;
          }

          v27(6, "%c[%{public}s %{public}s]:%i Suppress field", v31, v30, v47, 528);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v19 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v32 = object_getClass(a1);
          if (class_isMetaClass(v32))
          {
            v33 = 43;
          }

          else
          {
            v33 = 45;
          }

          v34 = object_getClassName(a1);
          v35 = sel_getName("notifyPresentmentWithFieldNotification:walletDomain:");
          *buf = 67109890;
          v64 = v33;
          v65 = 2082;
          v66 = v34;
          v67 = 2082;
          v68 = v35;
          v69 = 1024;
          v70 = 528;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Suppress field", buf, 0x22u);
        }

        goto LABEL_34;
      }

      if (v26)
      {
        v37 = object_getClass(a1);
        v38 = class_isMetaClass(v37);
        v39 = object_getClassName(a1);
        v48 = sel_getName("notifyPresentmentWithFieldNotification:walletDomain:");
        v40 = 45;
        if (v38)
        {
          v40 = 43;
        }

        v27(6, "%c[%{public}s %{public}s]:%i Routing to passkit in unknown config", v40, v39, v48, 532);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v41 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
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
        v45 = sel_getName("notifyPresentmentWithFieldNotification:walletDomain:");
        *buf = 67109890;
        v64 = v43;
        v65 = 2082;
        v66 = v44;
        v67 = 2082;
        v68 = v45;
        v69 = 1024;
        v70 = 532;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Routing to passkit in unknown config", buf, 0x22u);
      }
    }

    v19 = [v5 asXPCObject];
    v22 = *(a1 + 40);
    v61[0] = @"xpcEventName";
    v61[1] = @"field";
    v62[0] = @"com.apple.stockholm.wallet.presentment.field-detect";
    v62[1] = v19;
    v23 = v22;
    v24 = [NSDictionary dictionaryWithObjects:v62 forKeys:v61 count:2];
    if (v23)
    {
      sub_100235634(v23, v24, 1);
    }

    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_10004B0AC;
    v49[3] = &unk_100315F58;
    v49[4] = a1;
    v49[5] = "notifyPresentmentWithFieldNotification:walletDomain:";
    os_unfair_lock_lock((a1 + 16));
    sub_10004B0AC(v49);
    os_unfair_lock_unlock((a1 + 16));
    goto LABEL_34;
  }

LABEL_37:

  return a1;
}

void sub_10004B024(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    LOBYTE(v2) = *(v2 + 33);
  }

  *(*(a1[5] + 8) + 24) = v2 & 1;
  v3 = a1[4];
  if (v3)
  {
    v3 = v3[7];
  }

  v7 = v3;
  v4 = [v7 defaultAppIdentifier];
  v5 = *(a1[6] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void sub_10004B0AC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    if (*(v1 + 34) != 1)
    {
      goto LABEL_13;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v4 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 40));
      v8 = 45;
      if (isMetaClass)
      {
        v8 = 43;
      }

      v4(4, "%c[%{public}s %{public}s]:%i Unexpected duplicated notification", v8, ClassName, Name, 545);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v9 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
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
      *buf = 67109890;
      v16 = v11;
      v17 = 2082;
      v18 = v12;
      v19 = 2082;
      v20 = v13;
      v21 = 1024;
      v22 = 545;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unexpected duplicated notification", buf, 0x22u);
    }

    v1 = *(a1 + 32);
    if (v1)
    {
LABEL_13:
      *(v1 + 34) = 1;
    }
  }
}

id sub_10004B24C(uint64_t a1)
{
  if (a1)
  {
    v2 = objc_opt_new();
    v3 = [NSNumber numberWithBool:*(a1 + 32)];
    [v2 setObject:v3 forKeyedSubscript:@"PresenterAvailable"];

    v4 = [NSNumber numberWithBool:*(a1 + 33)];
    [v2 setObject:v4 forKeyedSubscript:@"PresenterSuspension"];

    v5 = [NSNumber numberWithUnsignedInteger:*(a1 + 24)];
    [v2 setObject:v5 forKeyedSubscript:@"WalletDomain"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id *sub_10004B388(id *a1, int a2, int a3, char a4, uint64_t a5, int a6, void *a7, void *a8, void *a9, int a10, void *a11, char a12)
{
  v19 = a11;
  if (a1)
  {
    v37.receiver = a1;
    v37.super_class = NFRoutingConfig;
    v20 = objc_msgSendSuper2(&v37, "init");
    a1 = v20;
    if (v20)
    {
      *(v20 + 8) = a3;
      if (a3)
      {
        v21 = 1;
      }

      else
      {
        v21 = a2;
      }

      if (a2 == 2)
      {
        v21 = 2;
      }

      v20[5] = a7;
      v20[6] = a8;
      *(v20 + 4) = v21;
      *(v20 + 5) = a6;
      if (a6)
      {
        v22 = a4;
      }

      else
      {
        v22 = 0;
      }

      *(v20 + 9) = v22;
      *(v20 + 10) = 0;
      v20[7] = a9;
      *(v20 + 6) = a10;
      *(v20 + 7) = 0;
      *(v20 + 12) = 0;
      objc_storeStrong(v20 + 8, a11);
      *(a1 + 8) = 0;
      if ((*(a1 + 4) - 1) <= 1)
      {
        if (a12 && [v19 length])
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          Logger = NFLogGetLogger();
          if (Logger)
          {
            v24 = Logger;
            Class = object_getClass(a1);
            isMetaClass = class_isMetaClass(Class);
            ClassName = object_getClassName(a1);
            Name = sel_getName("initPollingType:wantsSEReader:wantsExpress:wantsDisableStandbyInExpress:cardEmulationType:hostMode:embeddedMode:fieldDetect:pollingDuration:lpcdEcpFrame:ecpBroadcast:");
            v28 = 45;
            if (isMetaClass)
            {
              v28 = 43;
            }

            v24(6, "%c[%{public}s %{public}s]:%i ECP broadcast", v28, ClassName, Name, 74);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v29 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            v30 = object_getClass(a1);
            if (class_isMetaClass(v30))
            {
              v31 = 43;
            }

            else
            {
              v31 = 45;
            }

            v32 = object_getClassName(a1);
            v33 = sel_getName("initPollingType:wantsSEReader:wantsExpress:wantsDisableStandbyInExpress:cardEmulationType:hostMode:embeddedMode:fieldDetect:pollingDuration:lpcdEcpFrame:ecpBroadcast:");
            *buf = 67109890;
            v39 = v31;
            v40 = 2082;
            v41 = v32;
            v42 = 2082;
            v43 = v33;
            v44 = 1024;
            v45 = 74;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ECP broadcast", buf, 0x22u);
          }

          *(a1 + 7) = 16;
        }

        else
        {
          if (*(a1 + 8))
          {
            v34 = 15;
          }

          else
          {
            v34 = 31;
          }

          *(a1 + 7) = v34;
          *(a1 + 8) = 1791;
        }
      }
    }
  }

  return a1;
}

uint64_t sub_10004B630(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (a1 != v3)
    {
      if (*(a1 + 20) == *(v3 + 5) && *(a1 + 9) == *(v3 + 9) && *(a1 + 8) == *(v3 + 8) && *(a1 + 16) == *(v3 + 4) && *(a1 + 40) == v3[5] && *(a1 + 48) == v3[6] && *(a1 + 24) == *(v3 + 6) && *(a1 + 28) == *(v3 + 7) && *(a1 + 10) == *(v3 + 10))
      {
        v5 = *(a1 + 64);
        v6 = v4[8];
        if (v5)
        {
          if ([v5 isEqualToData:v6])
          {
            goto LABEL_14;
          }
        }

        else if (!v6)
        {
          goto LABEL_14;
        }
      }

      a1 = 0;
      goto LABEL_17;
    }

LABEL_14:
    a1 = 1;
  }

LABEL_17:

  return a1;
}

id sub_10004B7A8(id a1, int a2)
{
  if (a1)
  {
    a1 = [a1 copy];
    if (a2)
    {
      *(a1 + 5) |= 3u;
      *(a1 + 5) = 2;
    }

    else
    {
      *(a1 + 5) = 0;
      if (*(a1 + 6) != 2)
      {
        *(a1 + 5) = 0;
      }
    }

    v2 = vars8;
  }

  return a1;
}

void sub_10004B810(uint64_t a1, char a2)
{
  if (a1)
  {
    v3 = *(a1 + 56);
    if (v3)
    {
      if (v3 == 2)
      {
        *(a1 + 12) = 1;
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          v19 = Logger;
          Class = object_getClass(a1);
          isMetaClass = class_isMetaClass(Class);
          ClassName = object_getClassName(a1);
          Name = sel_getName("calculateFieldDetectEnabled:");
          v24 = 45;
          if (isMetaClass)
          {
            v24 = 43;
          }

          v19(6, "%c[%{public}s %{public}s]:%i Field detect force enable: %d", v24, ClassName, Name, 264, *(a1 + 12));
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v11 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_33;
        }

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
        v28 = sel_getName("calculateFieldDetectEnabled:");
        v29 = *(a1 + 12);
        *buf = 67110146;
        v43 = v26;
        v44 = 2082;
        v45 = v27;
        v46 = 2082;
        v47 = v28;
        v48 = 1024;
        v49 = 264;
        v50 = 1024;
        v51 = v29;
        v17 = "%c[%{public}s %{public}s]:%i Field detect force enable: %d";
      }

      else
      {
        if (v3 != 1)
        {
          return;
        }

        *(a1 + 12) = a2;
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v4 = NFLogGetLogger();
        if (v4)
        {
          v5 = v4;
          v6 = object_getClass(a1);
          v7 = class_isMetaClass(v6);
          v8 = object_getClassName(a1);
          v9 = sel_getName("calculateFieldDetectEnabled:");
          v10 = 45;
          if (v7)
          {
            v10 = 43;
          }

          v5(6, "%c[%{public}s %{public}s]:%i Field Detect allowed: %d", v10, v8, v9, 259, *(a1 + 12));
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v11 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_33;
        }

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
        v15 = sel_getName("calculateFieldDetectEnabled:");
        v16 = *(a1 + 12);
        *buf = 67110146;
        v43 = v13;
        v44 = 2082;
        v45 = v14;
        v46 = 2082;
        v47 = v15;
        v48 = 1024;
        v49 = 259;
        v50 = 1024;
        v51 = v16;
        v17 = "%c[%{public}s %{public}s]:%i Field Detect allowed: %d";
      }
    }

    else
    {
      *(a1 + 12) = 0;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v30 = NFLogGetLogger();
      if (v30)
      {
        v31 = v30;
        v32 = object_getClass(a1);
        v33 = class_isMetaClass(v32);
        v34 = object_getClassName(a1);
        v35 = sel_getName("calculateFieldDetectEnabled:");
        v36 = 45;
        if (v33)
        {
          v36 = 43;
        }

        v31(6, "%c[%{public}s %{public}s]:%i Field detect force disable: %d", v36, v34, v35, 269, *(a1 + 12));
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v11 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_33;
      }

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
      v40 = sel_getName("calculateFieldDetectEnabled:");
      v41 = *(a1 + 12);
      *buf = 67110146;
      v43 = v38;
      v44 = 2082;
      v45 = v39;
      v46 = 2082;
      v47 = v40;
      v48 = 1024;
      v49 = 269;
      v50 = 1024;
      v51 = v41;
      v17 = "%c[%{public}s %{public}s]:%i Field detect force disable: %d";
    }

    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v17, buf, 0x28u);
LABEL_33:
  }
}

NFRoutingConfig *sub_10004BD00()
{
  objc_opt_self();
  v0 = [NFRoutingConfig alloc];
  if (v0)
  {
    v0 = sub_10004B388(&v0->super.isa, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0);
  }

  return v0;
}

NFRoutingConfig *sub_10004BD70()
{
  objc_opt_self();
  v0 = [NFRoutingConfig alloc];
  if (v0)
  {
    v0 = sub_10004B388(&v0->super.isa, 0, 0, 0, 0, 3, 2, 0, 2, 0, 0, 0);
  }

  return v0;
}

NFRoutingConfig *sub_10004BDE4(uint64_t a1, int a2)
{
  objc_opt_self();
  v3 = [NFRoutingConfig alloc];
  if (v3)
  {
    v4 = 2;
    if (!a2)
    {
      v4 = 0;
    }

    v3 = sub_10004B388(&v3->super.isa, 0, 0, 0, 0, 3, 2, 0, v4, 0, 0, 0);
  }

  return v3;
}

id *sub_10004BE6C(uint64_t a1, void *a2, int a3, int a4, int a5)
{
  v8 = a2;
  objc_opt_self();
  v9 = [NFRoutingConfig alloc];
  if (a3)
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  v11 = 2;
  if (!a4)
  {
    v11 = 0;
  }

  v12 = sub_10004B388(&v9->super.isa, v10, 0, 0, 0, 3, 2, 0, v11, a5, v8, 1);

  return v12;
}

NFRoutingConfig *sub_10004BF2C()
{
  objc_opt_self();

  return sub_10004BF60(NFRoutingConfig, 3);
}

NFRoutingConfig *sub_10004BF60(uint64_t a1, void *a2)
{
  objc_opt_self();
  v3 = [NFRoutingConfig alloc];
  if (v3)
  {
    v3 = sub_10004B388(&v3->super.isa, 0, 0, 0, 0, 0, 0, 1, a2, 0, 0, 0);
  }

  return v3;
}

NFRoutingConfig *sub_10004BFDC()
{
  objc_opt_self();
  v0 = [NFRoutingConfig alloc];
  if (v0)
  {
    v0 = sub_10004B388(&v0->super.isa, 0, 0, 0, 0, 3, 2, 1, 2, 0, 0, 0);
  }

  return v0;
}

NFRoutingConfig *sub_10004C050(uint64_t a1, unsigned __int8 a2, int a3)
{
  v5 = objc_opt_self();
  if (!a3)
  {
    v9 = v5;
    v10 = +[NSAssertionHandler currentHandler];
    [v10 handleFailureInMethod:"embeddedCardEmulationWithHCE:emulationType:" object:v9 file:@"NFRoutingConfig.m" lineNumber:406 description:@"Expects card type to *not* be NFCardTypeNone"];
  }

  v6 = [NFRoutingConfig alloc];
  if (v6)
  {
    if ((((a3 & 3) != 0) & a2) != 0)
    {
      v7 = 2;
    }

    else
    {
      v7 = 0;
    }

    v6 = sub_10004B388(&v6->super.isa, 0, 0, 0, 0, a3, v7, (2 * (a3 != 0)), 2, 0, 0, 0);
  }

  return v6;
}

id *sub_10004C144()
{
  objc_opt_self();

  return sub_10004C17C(NFRoutingConfig, 3, 0);
}

id *sub_10004C17C(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  objc_opt_self();
  v5 = [NFRoutingConfig alloc];
  if (v5)
  {
    v6 = sub_10004B388(&v5->super.isa, 0, 0, 0, 0, 0, 0, 0, a2, 0, v4, 0);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id *sub_10004C224(uint64_t a1, void *a2)
{
  objc_opt_self();

  return sub_10004C17C(NFRoutingConfig, a2, 0);
}

id *sub_10004C268()
{
  objc_opt_self();
  objc_opt_self();

  return sub_10004C17C(NFRoutingConfig, 0, 0);
}

id *sub_10004C2B0(uint64_t a1, int a2, int a3, int a4, int a5, uint64_t a6, void *a7)
{
  v12 = a7;
  objc_opt_self();
  v13 = 1;
  if (!a4)
  {
    v13 = 2;
  }

  if (a5)
  {
    v14 = 3;
  }

  else
  {
    v14 = 0;
  }

  if (a5)
  {
    v15 = 2;
  }

  else
  {
    v15 = 0;
  }

  if (a3)
  {
    v16 = 7;
  }

  else
  {
    v16 = v14;
  }

  if (a3)
  {
    v17 = v13;
  }

  else
  {
    v17 = 0;
  }

  if (a3 | a5)
  {
    v18 = 2;
  }

  else
  {
    v18 = a6;
  }

  if (a2)
  {
    v19 = 2;
  }

  else
  {
    v19 = 0;
  }

  v20 = sub_10004B388([NFRoutingConfig alloc], v19, 0, a3, 0, v16, v15, v17, v18, 0, v12, 0);

  return v20;
}

id *sub_10004C3B0(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = [NFRoutingConfig alloc];
  if (v3)
  {
    v4 = sub_10004B388(&v3->super.isa, 0, 0, 1, 0, 7, 0, 2, 2, 0, v2, 0);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_10004C450(uint64_t a1, int a2, int a3)
{
  if (a1)
  {
    if (a3)
    {
      if (a2)
      {
LABEL_4:
        *(a1 + 28) = a2;
        *(a1 + 32) = a3;
        return;
      }
    }

    else
    {
      v6 = +[NSAssertionHandler currentHandler];
      [v6 handleFailureInMethod:"setPollingMask:tagConfig:" object:a1 file:@"NFRoutingConfig.m" lineNumber:543 description:@"Tag Discovery cannot be empty"];

      if (a2)
      {
        goto LABEL_4;
      }
    }

    v7 = +[NSAssertionHandler currentHandler];
    [v7 handleFailureInMethod:"setPollingMask:tagConfig:" object:a1 file:@"NFRoutingConfig.m" lineNumber:544 description:@"Polling mask invalid"];

    goto LABEL_4;
  }
}

id *sub_10004C51C()
{
  objc_opt_self();

  return sub_10004C55C(NFRoutingConfig, 0, 3, 0, 0);
}

id *sub_10004C55C(uint64_t a1, int a2, void *a3, int a4, void *a5)
{
  v8 = a5;
  objc_opt_self();
  v9 = [NFRoutingConfig alloc];
  if (v9)
  {
    if (a2)
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
    }

    v11 = sub_10004B388(&v9->super.isa, v10, 0, 0, 0, 0, 0, 0, a3, a4, v8, 0);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

id *sub_10004C61C(uint64_t a1, void *a2)
{
  objc_opt_self();

  return sub_10004C55C(NFRoutingConfig, 0, a2, 0, 0);
}

id *sub_10004C668()
{
  objc_opt_self();

  return sub_10004C55C(NFRoutingConfig, 1, 1, 0, 0);
}

double sub_10004C6A8()
{
  objc_opt_self();
  objc_opt_self();
  v0 = sub_10004C55C(NFRoutingConfig, 1, 1, 0, 0);
  if (v0)
  {
    *&result = 0x3EFF000000EFLL;
    *(v0 + 28) = 0x3EFF000000EFLL;
  }

  return result;
}

id sub_10004C6FC(uint64_t a1, int a2, int a3)
{
  objc_opt_self();
  v5 = sub_10004C55C(NFRoutingConfig, a3, 1, 0, 0);
  sub_10004C450(v5, a2, 16127);

  return v5;
}

id sub_10004C790()
{
  objc_opt_self();
  v0 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NFReaderSessionInternalInterface];
  [NFReaderSessionInterface _configureInterface:v0];
  v1 = [NSSet alloc];
  v2 = objc_opt_class();
  v3 = [v1 initWithObjects:{v2, objc_opt_class(), 0}];
  [v0 setClasses:v3 forSelector:"startPollingWithConfig:completion:" argumentIndex:0 ofReply:0];

  return v0;
}

id *sub_10004CA40(void *a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v12 = a5;
  if (a1)
  {
    v17.receiver = a1;
    v17.super_class = _NFSecureTransactionServicesHandoverSession;
    v13 = objc_msgSendSuper2(&v17, "initWithRemoteObject:workQueue:allowsBackgroundMode:", a2, a6, 1);
    v14 = v13;
    if (v13)
    {
      v13[22] = a3;
      v13[23] = a4;
      v15 = v13[26];
      v13[26] = 0;

      objc_storeStrong(v14 + 25, a5);
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void sub_10004CB7C(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 216), a2);
  }
}

void sub_10004CFF0(uint64_t a1, void *a2)
{
  v3 = a2;
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

    v5(3, "%c[%{public}s %{public}s]:%i XPC error=%{public}@", v8, ClassName, Name, 119, v3);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v9 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
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
    v23 = 119;
    v24 = 2114;
    v25 = v3;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i XPC error=%{public}@", buf, 0x2Cu);
  }
}

id sub_10004D188(id a1, void *a2)
{
  v2 = a1;
  if (a1)
  {
    v3 = a2;
    v4 = [v2 remoteObject];
    v2 = [v4 remoteObjectProxyWithErrorHandler:v3];
  }

  return v2;
}

void sub_10004D294(uint64_t a1, void *a2)
{
  v3 = a2;
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

    v5(3, "%c[%{public}s %{public}s]:%i XPC error=%{public}@", v8, ClassName, Name, 127, v3);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v9 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
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
    v23 = 127;
    v24 = 2114;
    v25 = v3;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i XPC error=%{public}@", buf, 0x2Cu);
  }
}

void sub_10004DD74(uint64_t a1)
{
  if (a1)
  {
    v2 = [NFSecureElementProxyListener alloc];
    v3 = *(a1 + 200);
    v4 = [(NFSecureElementProxyListener *)v2 initWithDriverWrapper:v3];
    v5 = *(a1 + 240);
    *(a1 + 240) = v4;

    v6 = *(a1 + 216);
    v7 = *(a1 + 240);
    v8 = v6;
    v9 = [a1 workQueue];
    v10 = [v8 startSEProxyListener:v7 parameters:&__NSDictionary0__struct workQueue:v9];

    if (v10)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v12 = Logger;
        Class = object_getClass(a1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(a1);
        Name = sel_getName("_startSEProxyListener");
        v15 = 45;
        if (isMetaClass)
        {
          v15 = 43;
        }

        v12(3, "%c[%{public}s %{public}s]:%i SE proxy listener start error=%{public}@", v15, ClassName, Name, 234, v10);
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

        *buf = 67110146;
        v22 = v18;
        v23 = 2082;
        v24 = object_getClassName(a1);
        v25 = 2082;
        v26 = sel_getName("_startSEProxyListener");
        v27 = 1024;
        v28 = 234;
        v29 = 2114;
        v30 = v10;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i SE proxy listener start error=%{public}@", buf, 0x2Cu);
      }
    }
  }
}

void sub_10004EE88(uint64_t a1, void *a2)
{
  v3 = a2;
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

    v5(3, "%c[%{public}s %{public}s]:%i error: %{public}@", v8, ClassName, Name, 244, v3);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v9 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
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
    v22 = v11;
    v23 = 2082;
    v24 = v12;
    v25 = 2082;
    v26 = v13;
    v27 = 1024;
    v28 = 244;
    v29 = 2114;
    v30 = v3;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i error: %{public}@", buf, 0x2Cu);
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10004F0B8;
  v19[3] = &unk_1003162B8;
  v20 = *(a1 + 32);
  v14 = sub_10004D188(v20, v19);
  [v14 didStartSession:v3];

  v15 = *(a1 + 32);
  if (v15)
  {
    v16 = *(v15 + 216);
  }

  else
  {
    v16 = 0;
  }

  [v16 invalidate];
  sub_10004CB7C(*(a1 + 32), 0);
}

void sub_10004F0B8(uint64_t a1, void *a2)
{
  v3 = a2;
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

    v5(3, "%c[%{public}s %{public}s]:%i XPC error=%{public}@", v8, ClassName, Name, 246, v3);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v9 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
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
    v23 = 246;
    v24 = 2114;
    v25 = v3;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i XPC error=%{public}@", buf, 0x2Cu);
  }
}

void sub_10004F250(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10004F2E0;
  v2[3] = &unk_1003162B8;
  v3 = *(a1 + 32);
  v1 = sub_10004D188(v3, v2);
  [v1 didStartSession:0];
}

void sub_10004F2E0(uint64_t a1, void *a2)
{
  v3 = a2;
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

    v5(3, "%c[%{public}s %{public}s]:%i XPC error=%{public}@", v8, ClassName, Name, 254, v3);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v9 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
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
    v23 = 254;
    v24 = 2114;
    v25 = v3;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i XPC error=%{public}@", buf, 0x2Cu);
  }
}

uint64_t sub_10004F478(uint64_t result)
{
  if (result)
  {
    v1 = result;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v3 = Logger;
      Class = object_getClass(v1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v1);
      Name = sel_getName("getCHConfig");
      v8 = 45;
      if (isMetaClass)
      {
        v8 = 43;
      }

      v3(6, "%c[%{public}s %{public}s]:%i type=0x%lx", v8, ClassName, Name, 806, v1[23]);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v9 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
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

      v12 = object_getClassName(v1);
      v13 = sel_getName("getCHConfig");
      v14 = v1[23];
      *buf = 67110146;
      v16 = v11;
      v17 = 2082;
      v18 = v12;
      v19 = 2082;
      v20 = v13;
      v21 = 1024;
      v22 = 806;
      v23 = 2048;
      v24 = v14;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i type=0x%lx", buf, 0x2Cu);
    }

    return (16 * (v1[23] & 1)) | (v1[23] >> 1) & 0xFLL;
  }

  return result;
}

uint64_t sub_10004F63C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 176);
    if ((v2 - 2) < 3 || v2 == -1)
    {
      v4 = +[NSAssertionHandler currentHandler];
      [v4 handleFailureInMethod:"getSTSHelperOperation" object:v1 file:@"_NFSecureTransactionServicesHandoverSession.m" lineNumber:830 description:@"Invalid"];

      return -1;
    }

    else
    {
      return v2 == 1;
    }
  }

  return result;
}

void sub_10004F6E4(uint64_t a1, void *a2)
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
      Name = sel_getName(*(a1 + 56));
      v8 = 45;
      if (isMetaClass)
      {
        v8 = 43;
      }

      v5(3, "%c[%{public}s %{public}s]:%i Reader start error: %{public}@", v8, ClassName, Name, 293, v3);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v9 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
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
      v13 = sel_getName(*(a1 + 56));
      *buf = 67110146;
      v29 = v11;
      v30 = 2082;
      v31 = v12;
      v32 = 2082;
      v33 = v13;
      v34 = 1024;
      v35 = 293;
      v36 = 2114;
      v37 = v3;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Reader start error: %{public}@", buf, 0x2Cu);
    }

    v14 = *(a1 + 40);
    v15 = [NSError alloc];
    v16 = [NSString stringWithUTF8String:"nfcd"];
    v17 = [v3 code];
    v26[0] = NSLocalizedDescriptionKey;
    if ([v3 code] > 75)
    {
      v18 = 76;
    }

    else
    {
      v18 = [v3 code];
    }

    v19 = [NSString stringWithUTF8String:off_1003162D8[v18]];
    v27[0] = v19;
    v27[1] = v3;
    v26[1] = NSUnderlyingErrorKey;
    v26[2] = @"Line";
    v27[2] = &off_100330318;
    v26[3] = @"Method";
    v20 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 56))];
    v27[3] = v20;
    v26[4] = NSDebugDescriptionErrorKey;
    v21 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 56)), 294];
    v27[4] = v21;
    v22 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:5];
    v23 = [v15 initWithDomain:v16 code:v17 userInfo:v22];
    (*(v14 + 16))(v14, v23);
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void sub_10004FA3C(uint64_t a1, void *a2)
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
      Name = sel_getName("_startTNEPReaderWithCallback:");
      v9 = 45;
      if (isMetaClass)
      {
        v9 = 43;
      }

      v5(6, "%c[%{public}s %{public}s]:%i ", v9, ClassName, Name, 363);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v10 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
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

      *buf = 67109890;
      v25 = v12;
      v26 = 2082;
      v27 = object_getClassName(a1);
      v28 = 2082;
      v29 = sel_getName("_startTNEPReaderWithCallback:");
      v30 = 1024;
      v31 = 363;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
    }

    v13 = [NFTNEPHandler alloc];
    v14 = *(a1 + 176);
    v15 = a1;
    if (v14 != 1)
    {
      v15 = [a1 remoteObject];
    }

    v16 = *(a1 + 200);
    v17 = sub_1002644CC(&v13->super.isa, 1, v15, v16, [a1 signpostId]);
    v18 = *(a1 + 232);
    *(a1 + 232) = v17;

    if (v14 != 1)
    {
    }

    v19 = *(a1 + 232);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000503B4;
    v21[3] = &unk_100316598;
    v21[4] = a1;
    v23 = "_startTNEPReaderWithCallback:";
    v22 = v3;
    [v19 startTNEPReaderWithCallback:v21];
  }
}

void sub_10004FCDC(uint64_t a1, void *a2)
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
      Name = sel_getName(*(a1 + 56));
      v8 = 45;
      if (isMetaClass)
      {
        v8 = 43;
      }

      v5(3, "%c[%{public}s %{public}s]:%i Device start error: %{public}@", v8, ClassName, Name, 329, v3);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v9 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
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
      v13 = sel_getName(*(a1 + 56));
      *buf = 67110146;
      v29 = v11;
      v30 = 2082;
      v31 = v12;
      v32 = 2082;
      v33 = v13;
      v34 = 1024;
      v35 = 329;
      v36 = 2114;
      v37 = v3;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Device start error: %{public}@", buf, 0x2Cu);
    }

    v14 = *(a1 + 40);
    v15 = [NSError alloc];
    v16 = [NSString stringWithUTF8String:"nfcd"];
    v17 = [v3 code];
    v26[0] = NSLocalizedDescriptionKey;
    if ([v3 code] > 75)
    {
      v18 = 76;
    }

    else
    {
      v18 = [v3 code];
    }

    v19 = [NSString stringWithUTF8String:off_1003162D8[v18]];
    v27[0] = v19;
    v27[1] = v3;
    v26[1] = NSUnderlyingErrorKey;
    v26[2] = @"Line";
    v27[2] = &off_100330330;
    v26[3] = @"Method";
    v20 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 56))];
    v27[3] = v20;
    v26[4] = NSDebugDescriptionErrorKey;
    v21 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 56)), 330];
    v27[4] = v21;
    v22 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:5];
    v23 = [v15 initWithDomain:v16 code:v17 userInfo:v22];
    (*(v14 + 16))(v14, v23);
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void sub_100050034(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v11 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("_startTNEPDeviceWithServices:optionalRecords:callback:");
      v14 = 45;
      if (isMetaClass)
      {
        v14 = 43;
      }

      v11(6, "%c[%{public}s %{public}s]:%i services=%{public}@", v14, ClassName, Name, 347, v7);
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

      *buf = 67110146;
      v30 = v17;
      v31 = 2082;
      v32 = object_getClassName(a1);
      v33 = 2082;
      v34 = sel_getName("_startTNEPDeviceWithServices:optionalRecords:callback:");
      v35 = 1024;
      v36 = 347;
      v37 = 2114;
      v38 = v7;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i services=%{public}@", buf, 0x2Cu);
    }

    v18 = [NFTNEPHandler alloc];
    v19 = *(a1 + 176);
    if (v19)
    {
      v20 = [a1 remoteObject];
    }

    else
    {
      v20 = a1;
    }

    v21 = *(a1 + 200);
    v22 = sub_1002644CC(&v18->super.isa, 0, v20, v21, [a1 signpostId]);
    v23 = *(a1 + 232);
    *(a1 + 232) = v22;

    if (v19)
    {
    }

    v24 = *(a1 + 232);
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100050308;
    v27[3] = &unk_100316570;
    v28 = v9;
    [v24 startTNEPDeviceWithServices:v7 optionalRecords:v8 callback:v27];
  }
}

void sub_100050308(uint64_t a1, void *a2)
{
  v6 = a2;
  if (!v6)
  {
    v3 = +[_NFHardwareManager sharedHardwareManager];
    v4 = sub_10004BFDC();
    v5 = [v3 setRoutingConfig:v4];
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1000503B4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4 && (v5 = *(v4 + 200)) != 0 && [*(v5 + 56) readerModeProtectionActive])
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v7 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 48));
      v11 = 45;
      if (isMetaClass)
      {
        v11 = 43;
      }

      v7(4, "%c[%{public}s %{public}s]:%i Reader mode protection enabled", v11, ClassName, Name, 371);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v12 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
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
      v36 = v14;
      v37 = 2082;
      v38 = v15;
      v39 = 2082;
      v40 = v16;
      v41 = 1024;
      v42 = 371;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Reader mode protection enabled", buf, 0x22u);
    }

    v17 = *(a1 + 40);
    v18 = [NSError alloc];
    v19 = [NSString stringWithUTF8String:"nfcd"];
    v33[0] = NSLocalizedDescriptionKey;
    v20 = [NSString stringWithUTF8String:"Reader mode temporarily disabled"];
    v34[0] = v20;
    v34[1] = &off_100330360;
    v33[1] = @"Line";
    v33[2] = @"Method";
    v21 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 48))];
    v34[2] = v21;
    v33[3] = NSDebugDescriptionErrorKey;
    v22 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 48)), 372];
    v34[3] = v22;
    v23 = [NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:4];
    v24 = [v18 initWithDomain:v19 code:47 userInfo:v23];
    (*(v17 + 16))(v17, v24);
  }

  else
  {
    if (!v3)
    {
      sub_1001B0320(*(*(a1 + 32) + 192), *(a1 + 32));
      v25 = *(a1 + 32);
      if (v25 && ((v26 = *(v25 + 176), v26 != 4) ? (v27 = v26 == 1) : (v27 = 1), v27))
      {
        v28 = [[NSData alloc] initWithBytes:&unk_100296CB0 length:6];
      }

      else
      {
        v28 = 0;
      }

      v29 = sub_10004C55C(NFRoutingConfig, 0, 1, 0, v28);
      sub_10004C450(v29, 19, 48);
      v30 = +[_NFHardwareManager sharedHardwareManager];
      v31 = [v30 setRoutingConfig:v29];
    }

    (*(*(a1 + 40) + 16))();
  }
}

void sub_100050EE4(uint64_t a1)
{
  if (([*(a1 + 32) didEnd] & 1) == 0)
  {
    v4 = +[_NFHardwareManager sharedHardwareManager];
    v2 = [v4 defaultRoutingConfig:3];
    v3 = [v4 setRoutingConfig:v2];

    sub_1001AF894(*(*(a1 + 32) + 192), *(a1 + 32));
  }
}

void sub_100051094(uint64_t a1)
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
      Name = sel_getName(*(a1 + 64));
      v8 = [*(a1 + 32) sessionUID];
      v9 = 45;
      if (isMetaClass)
      {
        v9 = 43;
      }

      v3(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v9, ClassName, Name, 452, v8);
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
      v14 = sel_getName(*(a1 + 64));
      v15 = [*(a1 + 32) sessionUID];
      *buf = 67110146;
      v70 = v12;
      v71 = 2082;
      v72 = v13;
      v73 = 2082;
      v74 = v14;
      v75 = 1024;
      v76 = 452;
      v77 = 2114;
      v78 = v15;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
    }

    v16 = *(a1 + 56);
    if (v16)
    {
      v17 = [NSError alloc];
      v18 = [NSString stringWithUTF8String:"nfcd"];
      v67 = NSLocalizedDescriptionKey;
      v19 = [NSString stringWithUTF8String:"Session not active"];
      v68 = v19;
      v20 = [NSDictionary dictionaryWithObjects:&v68 forKeys:&v67 count:1];
      v21 = [v17 initWithDomain:v18 code:54 userInfo:v20];
      (*(v16 + 16))(v16, v21);

LABEL_15:
    }
  }

  else
  {
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v18 = *(a1 + 40);
    v22 = [v18 countByEnumeratingWithState:&v55 objects:v66 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v56;
      while (2)
      {
        for (i = 0; i != v23; i = i + 1)
        {
          if (*v56 != v24)
          {
            objc_enumerationMutation(v18);
          }

          v26 = *(*(&v55 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v35 = *(a1 + 56);
            v36 = [NSError alloc];
            v37 = [NSString stringWithUTF8String:"nfcd"];
            v64[0] = NSLocalizedDescriptionKey;
            v38 = [NSString stringWithUTF8String:"Invalid Parameter"];
            v65[0] = v38;
            v65[1] = &off_100330378;
            v64[1] = @"Line";
            v64[2] = @"Method";
            v39 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 64))];
            v65[2] = v39;
            v64[3] = NSDebugDescriptionErrorKey;
            v40 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 64)), 456];
            v65[3] = v40;
            v41 = v65;
            v42 = v64;
LABEL_42:
            v43 = [NSDictionary dictionaryWithObjects:v41 forKeys:v42 count:4];
            v44 = [v36 initWithDomain:v37 code:10 userInfo:v43];
            (*(v35 + 16))(v35, v44);

            goto LABEL_15;
          }
        }

        v23 = [v18 countByEnumeratingWithState:&v55 objects:v66 count:16];
        if (v23)
        {
          continue;
        }

        break;
      }
    }

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v18 = *(a1 + 48);
    v27 = [v18 countByEnumeratingWithState:&v51 objects:v63 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v52;
      while (2)
      {
        for (j = 0; j != v28; j = j + 1)
        {
          if (*v52 != v29)
          {
            objc_enumerationMutation(v18);
          }

          v31 = *(*(&v51 + 1) + 8 * j);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v35 = *(a1 + 56);
            v36 = [NSError alloc];
            v37 = [NSString stringWithUTF8String:"nfcd"];
            v61[0] = NSLocalizedDescriptionKey;
            v38 = [NSString stringWithUTF8String:"Invalid Parameter"];
            v62[0] = v38;
            v62[1] = &off_100330390;
            v61[1] = @"Line";
            v61[2] = @"Method";
            v39 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 64))];
            v62[2] = v39;
            v61[3] = NSDebugDescriptionErrorKey;
            v40 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 64)), 462];
            v62[3] = v40;
            v41 = v62;
            v42 = v61;
            goto LABEL_42;
          }
        }

        v28 = [v18 countByEnumeratingWithState:&v51 objects:v63 count:16];
        if (v28)
        {
          continue;
        }

        break;
      }
    }

    v32 = *(a1 + 32);
    if (!v32 || ((v33 = *(v32 + 176)) != 0 ? (v34 = v33 == 3) : (v34 = 1), v34))
    {
      sub_100050034(v32, *(a1 + 40), *(a1 + 48), *(a1 + 56));
    }

    else
    {
      v45 = *(a1 + 56);
      v46 = [NSError alloc];
      v47 = [NSString stringWithUTF8String:"nfcd"];
      v59 = NSLocalizedDescriptionKey;
      v48 = [NSString stringWithUTF8String:"Invalid State"];
      v60 = v48;
      v49 = [NSDictionary dictionaryWithObjects:&v60 forKeys:&v59 count:1];
      v50 = [v46 initWithDomain:v47 code:12 userInfo:v49];
      (*(v45 + 16))(v45, v50);
    }
  }
}

void sub_1000518B0(uint64_t a1)
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

      v3(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v9, ClassName, Name, 480, v8);
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
      v63 = v12;
      v64 = 2082;
      v65 = v13;
      v66 = 2082;
      v67 = v14;
      v68 = 1024;
      v69 = 480;
      v70 = 2114;
      v71 = v15;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
    }

    v16 = *(a1 + 48);
    if (v16)
    {
      v17 = [NSError alloc];
      v18 = [NSString stringWithUTF8String:"nfcd"];
      v60 = NSLocalizedDescriptionKey;
      v19 = [NSString stringWithUTF8String:"Session not active"];
      v61 = v19;
      v20 = [NSDictionary dictionaryWithObjects:&v61 forKeys:&v60 count:1];
      v21 = [v17 initWithDomain:v18 code:54 userInfo:v20];
      (*(v16 + 16))(v16, v21);
    }
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v22 = NFLogGetLogger();
    if (v22)
    {
      v23 = v22;
      v24 = object_getClass(*(a1 + 32));
      v25 = class_isMetaClass(v24);
      v26 = object_getClassName(*(a1 + 32));
      v56 = sel_getName(*(a1 + 56));
      v27 = 45;
      if (v25)
      {
        v27 = 43;
      }

      v23(6, "%c[%{public}s %{public}s]:%i ", v27, v26, v56, 482);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v28 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v29))
      {
        v30 = 43;
      }

      else
      {
        v30 = 45;
      }

      v31 = object_getClassName(*(a1 + 32));
      v32 = sel_getName(*(a1 + 56));
      *buf = 67109890;
      v63 = v30;
      v64 = 2082;
      v65 = v31;
      v66 = 2082;
      v67 = v32;
      v68 = 1024;
      v69 = 482;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
    }

    v33 = *(a1 + 32);
    if (v33)
    {
      v34 = *(v33 + 232);
      if (v34)
      {
        v35 = *(a1 + 32);
        if (v35)
        {
          v36 = *(v35 + 176);

          if (v36 == 3)
          {
            v37 = *(a1 + 32);
            if (v37)
            {
              v38 = *(v37 + 232);
            }

            else
            {
              v38 = 0;
            }

            [v38 tnepTagDeviceSendNDEFMessage:*(a1 + 40) callback:*(a1 + 48)];
            return;
          }
        }

        else
        {
        }
      }
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v39 = NFLogGetLogger();
    if (v39)
    {
      v40 = v39;
      v41 = object_getClass(*(a1 + 32));
      v42 = class_isMetaClass(v41);
      v43 = object_getClassName(*(a1 + 32));
      v57 = sel_getName(*(a1 + 56));
      v44 = 45;
      if (v42)
      {
        v44 = 43;
      }

      v40(3, "%c[%{public}s %{public}s]:%i Invalid state", v44, v43, v57, 484);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v45 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      v46 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v46))
      {
        v47 = 43;
      }

      else
      {
        v47 = 45;
      }

      v48 = object_getClassName(*(a1 + 32));
      v49 = sel_getName(*(a1 + 56));
      *buf = 67109890;
      v63 = v47;
      v64 = 2082;
      v65 = v48;
      v66 = 2082;
      v67 = v49;
      v68 = 1024;
      v69 = 484;
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid state", buf, 0x22u);
    }

    v50 = *(a1 + 48);
    v51 = [NSError alloc];
    v52 = [NSString stringWithUTF8String:"nfcd"];
    v58 = NSLocalizedDescriptionKey;
    v53 = [NSString stringWithUTF8String:"Invalid State"];
    v59 = v53;
    v54 = [NSDictionary dictionaryWithObjects:&v59 forKeys:&v58 count:1];
    v55 = [v51 initWithDomain:v52 code:12 userInfo:v54];
    (*(v50 + 16))(v50, v55);
  }
}

void sub_100051F58(uint64_t a1)
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

      v3(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v9, ClassName, Name, 497, v8);
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
      v47 = v12;
      v48 = 2082;
      v49 = v13;
      v50 = 2082;
      v51 = v14;
      v52 = 1024;
      v53 = 497;
      v54 = 2114;
      v55 = v15;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
    }

    v16 = *(a1 + 40);
    if (v16)
    {
      v17 = [NSError alloc];
      v18 = [NSString stringWithUTF8String:"nfcd"];
      v44 = NSLocalizedDescriptionKey;
      v19 = [NSString stringWithUTF8String:"Session not active"];
      v45 = v19;
      v20 = [NSDictionary dictionaryWithObjects:&v45 forKeys:&v44 count:1];
      v21 = [v17 initWithDomain:v18 code:54 userInfo:v20];
      (*(v16 + 16))(v16, v21);
    }
  }

  else
  {
    v22 = *(a1 + 32);
    if (v22 && *(v22 + 176) == 4)
    {
      v23 = *(a1 + 40);

      sub_10004FA3C(v22, v23);
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v24 = NFLogGetLogger();
      if (v24)
      {
        v25 = v24;
        v26 = object_getClass(*(a1 + 32));
        v27 = class_isMetaClass(v26);
        v28 = object_getClassName(*(a1 + 32));
        v41 = sel_getName(*(a1 + 48));
        v29 = 45;
        if (v27)
        {
          v29 = 43;
        }

        v25(3, "%c[%{public}s %{public}s]:%i Invalid state", v29, v28, v41, 500);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v30 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = object_getClass(*(a1 + 32));
        if (class_isMetaClass(v31))
        {
          v32 = 43;
        }

        else
        {
          v32 = 45;
        }

        v33 = object_getClassName(*(a1 + 32));
        v34 = sel_getName(*(a1 + 48));
        *buf = 67109890;
        v47 = v32;
        v48 = 2082;
        v49 = v33;
        v50 = 2082;
        v51 = v34;
        v52 = 1024;
        v53 = 500;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid state", buf, 0x22u);
      }

      v35 = *(a1 + 40);
      v36 = [NSError alloc];
      v37 = [NSString stringWithUTF8String:"nfcd"];
      v42 = NSLocalizedDescriptionKey;
      v38 = [NSString stringWithUTF8String:"Invalid State"];
      v43 = v38;
      v39 = [NSDictionary dictionaryWithObjects:&v43 forKeys:&v42 count:1];
      v40 = [v36 initWithDomain:v37 code:12 userInfo:v39];
      (*(v35 + 16))(v35, v40);
    }
  }
}

void sub_100052518(uint64_t a1)
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

      v3(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v9, ClassName, Name, 512, v8);
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
      v60 = v12;
      v61 = 2082;
      v62 = v13;
      v63 = 2082;
      v64 = v14;
      v65 = 1024;
      v66 = 512;
      v67 = 2114;
      v68 = v15;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
    }

    v16 = *(a1 + 48);
    if (v16)
    {
      v17 = [NSError alloc];
      v18 = [NSString stringWithUTF8String:"nfcd"];
      v57 = NSLocalizedDescriptionKey;
      v19 = [NSString stringWithUTF8String:"Session not active"];
      v58 = v19;
      v20 = [NSDictionary dictionaryWithObjects:&v58 forKeys:&v57 count:1];
      v21 = [v17 initWithDomain:v18 code:54 userInfo:v20];
      (*(v16 + 16))(v16, v21);
    }
  }

  else
  {
    v22 = *(a1 + 32);
    if (v22)
    {
      v23 = *(v22 + 232);
    }

    else
    {
      v23 = 0;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v24 = NFLogGetLogger();
    v25 = v24;
    if (v23)
    {
      if (v24)
      {
        v26 = object_getClass(*(a1 + 32));
        v27 = class_isMetaClass(v26);
        v28 = object_getClassName(*(a1 + 32));
        v29 = sel_getName(*(a1 + 56));
        v30 = 45;
        if (v27)
        {
          v30 = 43;
        }

        v25(6, "%c[%{public}s %{public}s]:%i %{public}@", v30, v28, v29, 518, *(a1 + 40));
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v31 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
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
        v35 = sel_getName(*(a1 + 56));
        v36 = *(a1 + 40);
        *buf = 67110146;
        v60 = v33;
        v61 = 2082;
        v62 = v34;
        v63 = 2082;
        v64 = v35;
        v65 = 1024;
        v66 = 518;
        v67 = 2114;
        v68 = v36;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
      }

      v37 = *(a1 + 32);
      if (v37)
      {
        v38 = *(v37 + 232);
      }

      else
      {
        v38 = 0;
      }

      [v38 tnepReaderSelectService:*(a1 + 40) callback:*(a1 + 48)];
    }

    else
    {
      if (v24)
      {
        v39 = object_getClass(*(a1 + 32));
        v40 = class_isMetaClass(v39);
        v41 = object_getClassName(*(a1 + 32));
        v54 = sel_getName(*(a1 + 56));
        v42 = 45;
        if (v40)
        {
          v42 = 43;
        }

        v25(3, "%c[%{public}s %{public}s]:%i Missing tnepHandler", v42, v41, v54, 515);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v43 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        v44 = object_getClass(*(a1 + 32));
        if (class_isMetaClass(v44))
        {
          v45 = 43;
        }

        else
        {
          v45 = 45;
        }

        v46 = object_getClassName(*(a1 + 32));
        v47 = sel_getName(*(a1 + 56));
        *buf = 67109890;
        v60 = v45;
        v61 = 2082;
        v62 = v46;
        v63 = 2082;
        v64 = v47;
        v65 = 1024;
        v66 = 515;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Missing tnepHandler", buf, 0x22u);
      }

      v48 = *(a1 + 48);
      v49 = [NSError alloc];
      v50 = [NSString stringWithUTF8String:"nfcd"];
      v55 = NSLocalizedDescriptionKey;
      v51 = [NSString stringWithUTF8String:"Invalid State"];
      v56 = v51;
      v52 = [NSDictionary dictionaryWithObjects:&v56 forKeys:&v55 count:1];
      v53 = [v49 initWithDomain:v50 code:12 userInfo:v52];
      (*(v48 + 16))(v48, v53);
    }
  }
}

void sub_100052BA8(uint64_t a1)
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

      v3(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v9, ClassName, Name, 527, v8);
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
      v59 = v12;
      v60 = 2082;
      v61 = v13;
      v62 = 2082;
      v63 = v14;
      v64 = 1024;
      v65 = 527;
      v66 = 2114;
      v67 = v15;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
    }

    v16 = *(a1 + 40);
    if (v16)
    {
      v17 = [NSError alloc];
      v18 = [NSString stringWithUTF8String:"nfcd"];
      v56 = NSLocalizedDescriptionKey;
      v19 = [NSString stringWithUTF8String:"Session not active"];
      v57 = v19;
      v20 = [NSDictionary dictionaryWithObjects:&v57 forKeys:&v56 count:1];
      v21 = [v17 initWithDomain:v18 code:54 userInfo:v20];
      (*(v16 + 16))(v16, v21);
    }
  }

  else
  {
    v22 = *(a1 + 32);
    if (v22)
    {
      v23 = *(v22 + 232);
    }

    else
    {
      v23 = 0;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v24 = NFLogGetLogger();
    v25 = v24;
    if (v23)
    {
      if (v24)
      {
        v26 = object_getClass(*(a1 + 32));
        v27 = class_isMetaClass(v26);
        v28 = object_getClassName(*(a1 + 32));
        v52 = sel_getName(*(a1 + 48));
        v29 = 45;
        if (v27)
        {
          v29 = 43;
        }

        v25(6, "%c[%{public}s %{public}s]:%i ", v29, v28, v52, 533);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v30 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = object_getClass(*(a1 + 32));
        if (class_isMetaClass(v31))
        {
          v32 = 43;
        }

        else
        {
          v32 = 45;
        }

        v33 = object_getClassName(*(a1 + 32));
        v34 = sel_getName(*(a1 + 48));
        *buf = 67109890;
        v59 = v32;
        v60 = 2082;
        v61 = v33;
        v62 = 2082;
        v63 = v34;
        v64 = 1024;
        v65 = 533;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
      }

      v35 = *(a1 + 32);
      if (v35)
      {
        v36 = *(v35 + 232);
      }

      else
      {
        v36 = 0;
      }

      [v36 tnepReaderDeselectWithCallback:*(a1 + 40)];
    }

    else
    {
      if (v24)
      {
        v37 = object_getClass(*(a1 + 32));
        v38 = class_isMetaClass(v37);
        v39 = object_getClassName(*(a1 + 32));
        v53 = sel_getName(*(a1 + 48));
        v40 = 45;
        if (v38)
        {
          v40 = 43;
        }

        v25(3, "%c[%{public}s %{public}s]:%i Missing tnepHandler", v40, v39, v53, 530);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v41 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        v42 = object_getClass(*(a1 + 32));
        if (class_isMetaClass(v42))
        {
          v43 = 43;
        }

        else
        {
          v43 = 45;
        }

        v44 = object_getClassName(*(a1 + 32));
        v45 = sel_getName(*(a1 + 48));
        *buf = 67109890;
        v59 = v43;
        v60 = 2082;
        v61 = v44;
        v62 = 2082;
        v63 = v45;
        v64 = 1024;
        v65 = 530;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Missing tnepHandler", buf, 0x22u);
      }

      v46 = *(a1 + 40);
      v47 = [NSError alloc];
      v48 = [NSString stringWithUTF8String:"nfcd"];
      v54 = NSLocalizedDescriptionKey;
      v49 = [NSString stringWithUTF8String:"Invalid State"];
      v55 = v49;
      v50 = [NSDictionary dictionaryWithObjects:&v55 forKeys:&v54 count:1];
      v51 = [v47 initWithDomain:v48 code:12 userInfo:v50];
      (*(v46 + 16))(v46, v51);
    }
  }
}