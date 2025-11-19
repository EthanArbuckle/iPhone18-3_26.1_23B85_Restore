void sub_1000B9740(void *a1, int a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = a3;
  if (!a1)
  {
    goto LABEL_31;
  }

  v9 = objc_opt_new();
  v10 = [NSNumber numberWithUnsignedInt:a5];
  [v9 setObject:v10 forKeyedSubscript:@"status"];

  if (a2 > 4)
  {
    switch(a2)
    {
      case 5:
        v11 = &off_100330E70;
        goto LABEL_25;
      case 6:
        v11 = &off_100330E88;
        goto LABEL_25;
      case 7:
        v11 = &off_100330EA0;
        goto LABEL_25;
    }

LABEL_13:
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v13 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("crs_postCACRSAuthECommerce:request:response:status:");
      v17 = 45;
      if (isMetaClass)
      {
        v17 = 43;
      }

      v13(3, "%c[%{public}s %{public}s]:%i Invalid auth type", v17, ClassName, Name, 840);
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

      *buf = 67109890;
      v36 = v20;
      v37 = 2082;
      v38 = object_getClassName(a1);
      v39 = 2082;
      v40 = sel_getName("crs_postCACRSAuthECommerce:request:response:status:");
      v41 = 1024;
      v42 = 840;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid auth type", buf, 0x22u);
    }

    goto LABEL_26;
  }

  if (a2 == 1)
  {
    v11 = &off_100330E28;
    goto LABEL_25;
  }

  if (a2 == 2)
  {
    v11 = &off_100330E40;
    goto LABEL_25;
  }

  if (a2 != 3)
  {
    goto LABEL_13;
  }

  v11 = &off_100330E58;
LABEL_25:
  [v9 setObject:v11 forKeyedSubscript:@"method"];
LABEL_26:
  v21 = [v8 appletIdentifier];
  v22 = [NSData NF_dataWithHexString:v21];
  [v9 setObject:v22 forKeyedSubscript:@"aid"];

  v23 = [v8 merchantData];
  [v9 setObject:v23 forKeyedSubscript:@"merchantID"];

  v24 = [v8 currencyCode];
  v25 = [NSNumber numberWithInt:sub_1002341F4(NFCurrency, v24)];
  [v9 setObject:v25 forKeyedSubscript:@"fractionDigits"];

  v26 = [v8 transactionAmount];
  [v9 setObject:v26 forKeyedSubscript:@"transactionTotal"];

  v27 = [v8 countryCode];
  v28 = sub_1001D85A8(NFECommercePaymentRequestEncoder, v27);

  if (v28)
  {
    v29 = [NSNumber numberWithUnsignedInteger:v28];
    [v9 setObject:v29 forKeyedSubscript:@"countryCode"];
  }

  v30 = [v8 currencyCode];
  v31 = sub_1001DAF88(NFECommercePaymentRequestEncoder, v30);

  if (v31 != -1)
  {
    v32 = [NSNumber numberWithInteger:v31];
    [v9 setObject:v32 forKeyedSubscript:@"currencyCode"];
  }

  v33 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v8 merchantCapabilities]);
  [v9 setObject:v33 forKeyedSubscript:@"merchantCapabilities"];

  [NFExceptionsCALogger postAnalyticsCRSAuthECommerceWithParameters:v9];
LABEL_31:
}

void sub_1000B9BB0(void *a1)
{
  if (!a1)
  {
    return;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v3 = Logger;
    Class = object_getClass(a1);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(a1);
    Name = sel_getName("crs_deauthorize");
    v7 = 45;
    if (isMetaClass)
    {
      v7 = 43;
    }

    v3(6, "%c[%{public}s %{public}s]:%i ", v7, ClassName, Name, 869);
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
    v43 = v10;
    v44 = 2082;
    v45 = object_getClassName(a1);
    v46 = 2082;
    v47 = sel_getName("crs_deauthorize");
    v48 = 1024;
    v49 = 869;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }

  v11 = sub_100158334(a1, 128, 244, 1, 129, 0, 0);
  v12 = v11;
  if (!v11)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v29 = NFLogGetLogger();
    if (v29)
    {
      v30 = v29;
      v31 = object_getClass(a1);
      v32 = class_isMetaClass(v31);
      v33 = object_getClassName(a1);
      v40 = sel_getName("crs_deauthorize");
      v34 = 45;
      if (v32)
      {
        v34 = 43;
      }

      v30(3, "%c[%{public}s %{public}s]:%i Command failed", v34, v33, v40, 878);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v20 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_32;
    }

    v35 = object_getClass(a1);
    if (class_isMetaClass(v35))
    {
      v36 = 43;
    }

    else
    {
      v36 = 45;
    }

    v37 = object_getClassName(a1);
    v38 = sel_getName("crs_deauthorize");
    *buf = 67109890;
    v43 = v36;
    v44 = 2082;
    v45 = v37;
    v46 = 2082;
    v47 = v38;
    v48 = 1024;
    v49 = 878;
    v26 = "%c[%{public}s %{public}s]:%i Command failed";
    v27 = v20;
    v28 = 34;
    goto LABEL_31;
  }

  if ([v11 status] != 36864)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v13 = NFLogGetLogger();
    if (v13)
    {
      v14 = v13;
      v15 = object_getClass(a1);
      v16 = class_isMetaClass(v15);
      v17 = object_getClassName(a1);
      v18 = sel_getName("crs_deauthorize");
      v41 = [v12 status];
      v19 = 45;
      if (v16)
      {
        v19 = 43;
      }

      v14(3, "%c[%{public}s %{public}s]:%i Returned error: 0x%04x", v19, v17, v18, 881, v41);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v20 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_32;
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
    v24 = sel_getName("crs_deauthorize");
    v25 = [v12 status];
    *buf = 67110146;
    v43 = v22;
    v44 = 2082;
    v45 = v23;
    v46 = 2082;
    v47 = v24;
    v48 = 1024;
    v49 = 881;
    v50 = 1024;
    v51 = v25;
    v26 = "%c[%{public}s %{public}s]:%i Returned error: 0x%04x";
    v27 = v20;
    v28 = 40;
LABEL_31:
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, v26, buf, v28);
LABEL_32:
  }

  +[NFExceptionsCALogger postAnalyticsCRSDeAuthWithStatus:](NFExceptionsCALogger, "postAnalyticsCRSDeAuthWithStatus:", [v12 status]);
  if ([v12 status] == 36864)
  {
    sub_10022E700(NFDailyStatisticsCALogger, @"totalDeAuth");
  }
}

uint64_t sub_1000BA000(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (a1)
  {
    if ([v7 count])
    {
      v90 = v7;
      v9 = v7;
      v89 = v8;
      v91 = v8;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v11 = Logger;
        Class = object_getClass(a1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(a1);
        Name = sel_getName("_crs_enableTransientAuth:applets:cryptogram:");
        v16 = [NFApplet aidListForPrinting:v9];
        v17 = 45;
        if (isMetaClass)
        {
          v17 = 43;
        }

        v11(6, "%c[%{public}s %{public}s]:%i enable=%d applets=%{public}@", v17, ClassName, Name, 893, a2, v16);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v18 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
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
        v22 = sel_getName("_crs_enableTransientAuth:applets:cryptogram:");
        v23 = [NFApplet aidListForPrinting:v9];
        *buf = 67110402;
        v108 = v20;
        v109 = 2082;
        v110 = v21;
        v111 = 2082;
        v112 = v22;
        v113 = 1024;
        v114 = 893;
        v115 = 1024;
        v116 = a2;
        v117 = 2114;
        v118 = v23;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i enable=%d applets=%{public}@", buf, 0x32u);
      }

      v24 = objc_opt_new();
      v93 = 0u;
      v94 = 0u;
      v95 = 0u;
      v96 = 0u;
      v25 = v9;
      v26 = [v25 countByEnumeratingWithState:&v93 objects:buf count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v94;
        do
        {
          for (i = 0; i != v27; i = i + 1)
          {
            if (*v94 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v30 = [*(*(&v93 + 1) + 8 * i) identifierAsData];
            v31 = [NFTLV TLVWithTag:79 value:v30];

            v32 = [v31 asData];
            [v24 appendData:v32];
          }

          v27 = [v25 countByEnumeratingWithState:&v93 objects:buf count:16];
        }

        while (v27);
      }

      v33 = v91;
      if (v91)
      {
        [v24 appendData:v91];
      }

      v92 = 0;
      v34 = sub_100158334(a1, 128, 244, 6, a2, v24, &v92);
      v35 = v92;
      if (v34)
      {
        if ([v34 status] == 27013)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v36 = NFLogGetLogger();
          if (v36)
          {
            v37 = v36;
            v38 = object_getClass(a1);
            v39 = class_isMetaClass(v38);
            v40 = object_getClassName(a1);
            v41 = sel_getName("_crs_enableTransientAuth:applets:cryptogram:");
            v87 = [v34 status];
            v83 = v41;
            v33 = v91;
            v42 = 45;
            if (v39)
            {
              v42 = 43;
            }

            v37(3, "%c[%{public}s %{public}s]:%i Returned error: 0x%04x", v42, v40, v83, 919, v87);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v43 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            v44 = object_getClass(a1);
            if (class_isMetaClass(v44))
            {
              v45 = 43;
            }

            else
            {
              v45 = 45;
            }

            v46 = object_getClassName(a1);
            v47 = sel_getName("_crs_enableTransientAuth:applets:cryptogram:");
            v48 = [v34 status];
            *v97 = 67110146;
            v98 = v45;
            v99 = 2082;
            v100 = v46;
            v101 = 2082;
            v102 = v47;
            v103 = 1024;
            v104 = 919;
            v105 = 1024;
            v106 = v48;
            _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Returned error: 0x%04x", v97, 0x28u);
          }

          a1 = 8;
        }

        else if ([v34 status] == 36864)
        {
          a1 = 0;
        }

        else
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v69 = NFLogGetLogger();
          if (v69)
          {
            v70 = v69;
            v71 = object_getClass(a1);
            v72 = class_isMetaClass(v71);
            v73 = object_getClassName(a1);
            v74 = sel_getName("_crs_enableTransientAuth:applets:cryptogram:");
            v88 = [v34 status];
            v86 = v74;
            v33 = v91;
            v75 = 45;
            if (v72)
            {
              v75 = 43;
            }

            v70(3, "%c[%{public}s %{public}s]:%i Returned error: 0x%04x", v75, v73, v86, 924, v88);
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
            v80 = sel_getName("_crs_enableTransientAuth:applets:cryptogram:");
            v81 = [v34 status];
            *v97 = 67110146;
            v98 = v78;
            v99 = 2082;
            v100 = v79;
            v101 = 2082;
            v102 = v80;
            v103 = 1024;
            v104 = 924;
            v105 = 1024;
            v106 = v81;
            _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Returned error: 0x%04x", v97, 0x28u);
          }

          a1 = 6;
        }
      }

      else
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v58 = NFLogGetLogger();
        if (v58)
        {
          v59 = v58;
          v60 = object_getClass(a1);
          v61 = class_isMetaClass(v60);
          v62 = object_getClassName(a1);
          v85 = sel_getName("_crs_enableTransientAuth:applets:cryptogram:");
          v63 = 45;
          if (v61)
          {
            v63 = 43;
          }

          v59(3, "%c[%{public}s %{public}s]:%i Command failed", v63, v62, v85, 915);
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
          v68 = sel_getName("_crs_enableTransientAuth:applets:cryptogram:");
          *v97 = 67109890;
          v98 = v66;
          v99 = 2082;
          v100 = v67;
          v101 = 2082;
          v102 = v68;
          v103 = 1024;
          v104 = 915;
          _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Command failed", v97, 0x22u);
        }

        if ([v35 code])
        {
          a1 = [v35 code];
        }

        else
        {
          a1 = 16;
        }
      }

      v8 = v89;

      v7 = v90;
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v49 = NFLogGetLogger();
      if (v49)
      {
        v50 = v49;
        v51 = object_getClass(a1);
        v52 = class_isMetaClass(v51);
        v53 = object_getClassName(a1);
        v84 = sel_getName("crs_enableTransientAuth:applets:cryptogram:");
        v54 = 45;
        if (v52)
        {
          v54 = 43;
        }

        v50(3, "%c[%{public}s %{public}s]:%i Empty AID array", v54, v53, v84, 934);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v55 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        v56 = object_getClass(a1);
        if (class_isMetaClass(v56))
        {
          v57 = 43;
        }

        else
        {
          v57 = 45;
        }

        *buf = 67109890;
        v108 = v57;
        v109 = 2082;
        v110 = object_getClassName(a1);
        v111 = 2082;
        v112 = sel_getName("crs_enableTransientAuth:applets:cryptogram:");
        v113 = 1024;
        v114 = 934;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Empty AID array", buf, 0x22u);
      }

      a1 = 10;
    }
  }

  return a1;
}

id sub_1000BA8CC(void *a1, void *a2, void *a3)
{
  v5 = a2;
  if (a1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v7 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("crs_authorizedInternalAuthenticate:signedData:");
      v11 = 45;
      if (isMetaClass)
      {
        v11 = 43;
      }

      v7(6, "%c[%{public}s %{public}s]:%i ", v11, ClassName, Name, 943);
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
      v100 = v14;
      v101 = 2082;
      v102 = object_getClassName(a1);
      v103 = 2082;
      v104 = sel_getName("crs_authorizedInternalAuthenticate:signedData:");
      v105 = 1024;
      v106 = 943;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v15 = NFLogGetLogger();
    v16 = v15;
    if (v5 && a3)
    {
      if (v15)
      {
        v17 = object_getClass(a1);
        v18 = class_isMetaClass(v17);
        v87 = object_getClassName(a1);
        v89 = sel_getName("crs_authorizedInternalAuthenticate:signedData:");
        v19 = 45;
        if (v18)
        {
          v19 = 43;
        }

        v16(6, "%c[%{public}s %{public}s]:%i Data to sign : %{public}@", v19, v87, v89, 953, v5);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v20 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
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
        v24 = sel_getName("crs_authorizedInternalAuthenticate:signedData:");
        *buf = 67110146;
        v100 = v22;
        v101 = 2082;
        v102 = v23;
        v103 = 2082;
        v104 = v24;
        v105 = 1024;
        v106 = 953;
        v107 = 2114;
        v108 = v5;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Data to sign : %{public}@", buf, 0x2Cu);
      }

      *a3 = 0;
      v94 = 0;
      v25 = sub_100158334(a1, 128, 248, 0, 0, v5, &v94);
      v26 = v94;
      if (v26 || !v25)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v61 = NFLogGetLogger();
        if (v61)
        {
          v62 = v61;
          v63 = object_getClass(a1);
          v64 = class_isMetaClass(v63);
          v65 = object_getClassName(a1);
          v91 = sel_getName("crs_authorizedInternalAuthenticate:signedData:");
          v66 = 45;
          if (v64)
          {
            v66 = 43;
          }

          v62(3, "%c[%{public}s %{public}s]:%i Command failed", v66, v65, v91, 963);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v67 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
        {
          v68 = object_getClass(a1);
          if (class_isMetaClass(v68))
          {
            v69 = 43;
          }

          else
          {
            v69 = 45;
          }

          v70 = object_getClassName(a1);
          v71 = sel_getName("crs_authorizedInternalAuthenticate:signedData:");
          *buf = 67109890;
          v100 = v69;
          v101 = 2082;
          v102 = v70;
          v103 = 2082;
          v104 = v71;
          v105 = 1024;
          v106 = 963;
          _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Command failed", buf, 0x22u);
        }

        goto LABEL_69;
      }

      if ([v25 status] == 36864)
      {
        v27 = [v25 response];
        if (v27)
        {
          v28 = v27;
          v29 = [v25 response];
          v30 = [v29 length];

          if (v30 > 0x50)
          {
            [v25 response];
            *a3 = v26 = 0;
            goto LABEL_69;
          }
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v31 = NFLogGetLogger();
        if (v31)
        {
          v32 = v31;
          v33 = object_getClass(a1);
          v34 = class_isMetaClass(v33);
          v35 = object_getClassName(a1);
          v36 = sel_getName("crs_authorizedInternalAuthenticate:signedData:");
          v37 = [v25 response];
          v92 = [v37 length];
          v38 = 45;
          if (v34)
          {
            v38 = 43;
          }

          v32(3, "%c[%{public}s %{public}s]:%i Invalid response length : %lu", v38, v35, v36, 972, v92);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v39 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          v40 = object_getClass(a1);
          if (class_isMetaClass(v40))
          {
            v41 = 43;
          }

          else
          {
            v41 = 45;
          }

          v42 = object_getClassName(a1);
          v43 = sel_getName("crs_authorizedInternalAuthenticate:signedData:");
          v44 = [v25 response];
          v45 = [v44 length];
          *buf = 67110146;
          v100 = v41;
          v101 = 2082;
          v102 = v42;
          v103 = 2082;
          v104 = v43;
          v105 = 1024;
          v106 = 972;
          v107 = 2048;
          v108 = v45;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid response length : %lu", buf, 0x2Cu);
        }

        v46 = [NSError alloc];
        v47 = [NSString stringWithUTF8String:"nfcd"];
        v95 = NSLocalizedDescriptionKey;
        v48 = [NSString stringWithUTF8String:"Command Error"];
        v96 = v48;
        v49 = &v96;
        v50 = &v95;
      }

      else
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v72 = NFLogGetLogger();
        if (v72)
        {
          v73 = v72;
          v74 = object_getClass(a1);
          v75 = class_isMetaClass(v74);
          v76 = object_getClassName(a1);
          v77 = sel_getName("crs_authorizedInternalAuthenticate:signedData:");
          v93 = [v25 status];
          v78 = 45;
          if (v75)
          {
            v78 = 43;
          }

          v73(3, "%c[%{public}s %{public}s]:%i Returned error: 0x%04x", v78, v76, v77, 967, v93);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v79 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
        {
          v80 = object_getClass(a1);
          if (class_isMetaClass(v80))
          {
            v81 = 43;
          }

          else
          {
            v81 = 45;
          }

          v82 = object_getClassName(a1);
          v83 = sel_getName("crs_authorizedInternalAuthenticate:signedData:");
          v84 = [v25 status];
          *buf = 67110146;
          v100 = v81;
          v101 = 2082;
          v102 = v82;
          v103 = 2082;
          v104 = v83;
          v105 = 1024;
          v106 = 967;
          v107 = 1024;
          LODWORD(v108) = v84;
          _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Returned error: 0x%04x", buf, 0x28u);
        }

        v46 = [NSError alloc];
        v47 = [NSString stringWithUTF8String:"nfcd"];
        v97 = NSLocalizedDescriptionKey;
        v48 = [NSString stringWithUTF8String:"Command Error"];
        v98 = v48;
        v49 = &v98;
        v50 = &v97;
      }

      v85 = [NSDictionary dictionaryWithObjects:v49 forKeys:v50 count:1];
      v26 = [v46 initWithDomain:v47 code:16 userInfo:v85];
    }

    else
    {
      if (v15)
      {
        v51 = object_getClass(a1);
        v52 = class_isMetaClass(v51);
        v53 = object_getClassName(a1);
        v90 = sel_getName("crs_authorizedInternalAuthenticate:signedData:");
        v54 = 45;
        if (v52)
        {
          v54 = 43;
        }

        v16(3, "%c[%{public}s %{public}s]:%i Invalid parameters", v54, v53, v90, 949);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v55 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
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
        v59 = sel_getName("crs_authorizedInternalAuthenticate:signedData:");
        *buf = 67109890;
        v100 = v57;
        v101 = 2082;
        v102 = v58;
        v103 = 2082;
        v104 = v59;
        v105 = 1024;
        v106 = 949;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid parameters", buf, 0x22u);
      }

      v60 = [NSError alloc];
      v25 = [NSString stringWithUTF8String:"nfcd"];
      v109 = NSLocalizedDescriptionKey;
      v47 = [NSString stringWithUTF8String:"Invalid Parameter"];
      v110 = v47;
      v48 = [NSDictionary dictionaryWithObjects:&v110 forKeys:&v109 count:1];
      v26 = [v60 initWithDomain:v25 code:10 userInfo:v48];
    }

LABEL_69:
    goto LABEL_70;
  }

  v26 = 0;
LABEL_70:

  return v26;
}

void sub_1000C3ECC(uint64_t a1)
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

      v3(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v9, ClassName, Name, 1008, v8);
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
      v36 = 1008;
      v37 = 2114;
      v38 = v15;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
    }

    v16 = *(a1 + 40);
    if (v16)
    {
      v17 = [NSError alloc];
      v18 = [NSString stringWithUTF8String:"nfcd"];
      v27 = NSLocalizedDescriptionKey;
      v19 = [NSString stringWithUTF8String:"Session not active"];
      v28 = v19;
      v20 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
      v21 = [v17 initWithDomain:v18 code:54 userInfo:v20];
      (*(v16 + 16))(v16, 0, 0, v21);
    }
  }

  else
  {
    v22 = [*(a1 + 32) preloadApplets];
    v23 = *(a1 + 32);
    v24 = *(v23 + 224);
    v25 = *(v23 + 184);
    v26 = v22;
    (*(*(a1 + 40) + 16))();
  }
}

void sub_1000C42F4(uint64_t a1)
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
    v8 = [*(a1 + 32) clientName];
    v9 = 45;
    if (isMetaClass)
    {
      v9 = 43;
    }

    v3(6, "%c[%{public}s %{public}s]:%i %{public}@", v9, ClassName, Name, 1019, v8);
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
    v15 = [*(a1 + 32) clientName];
    *buf = 67110146;
    v40 = v12;
    v41 = 2082;
    v42 = v13;
    v43 = 2082;
    v44 = v14;
    v45 = 1024;
    v46 = 1019;
    v47 = 2114;
    v48 = v15;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    if ([*(a1 + 40) isEqualToApplet:*(*(a1 + 32) + 184)])
    {
      v32 = 0;
    }

    else
    {
      v32 = [*(a1 + 32) setActiveApplet:*(a1 + 40)];
    }

    [*(a1 + 32) startDefaultMode];
    v36 = *(*(a1 + 32) + 184);
    (*(*(a1 + 48) + 16))();
    goto LABEL_24;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v16 = NFLogGetLogger();
  if (v16)
  {
    v17 = v16;
    v18 = object_getClass(*(a1 + 32));
    v19 = class_isMetaClass(v18);
    v20 = object_getClassName(*(a1 + 32));
    v21 = sel_getName(*(a1 + 56));
    v22 = [*(a1 + 32) sessionUID];
    v23 = 45;
    if (v19)
    {
      v23 = 43;
    }

    v17(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v23, v20, v21, 1022, v22);
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
    v29 = [*(a1 + 32) sessionUID];
    *buf = 67110146;
    v40 = v26;
    v41 = 2082;
    v42 = v27;
    v43 = 2082;
    v44 = v28;
    v45 = 1024;
    v46 = 1022;
    v47 = 2114;
    v48 = v29;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  v30 = *(a1 + 48);
  if (v30)
  {
    v31 = [NSError alloc];
    v32 = [NSString stringWithUTF8String:"nfcd"];
    v37 = NSLocalizedDescriptionKey;
    v33 = [NSString stringWithUTF8String:"Session not active"];
    v38 = v33;
    v34 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    v35 = [v31 initWithDomain:v32 code:54 userInfo:v34];
    (*(v30 + 16))(v30, 0, v35);

LABEL_24:
  }
}

void sub_1000C4844(uint64_t a1)
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
    v8 = [*(a1 + 32) clientName];
    v9 = 45;
    if (isMetaClass)
    {
      v9 = 43;
    }

    v3(6, "%c[%{public}s %{public}s]:%i %{public}@", v9, ClassName, Name, 1038, v8);
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
    v15 = [*(a1 + 32) clientName];
    *buf = 67110146;
    v40 = v12;
    v41 = 2082;
    v42 = v13;
    v43 = 2082;
    v44 = v14;
    v45 = 1024;
    v46 = 1038;
    v47 = 2114;
    v48 = v15;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    v32 = [*(a1 + 32) setActiveAppletsForTest:*(a1 + 40) withCardType:*(a1 + 64)];
    [*(a1 + 32) startDefaultMode];
    v36 = *(*(a1 + 32) + 200);
    (*(*(a1 + 48) + 16))();
    goto LABEL_24;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v16 = NFLogGetLogger();
  if (v16)
  {
    v17 = v16;
    v18 = object_getClass(*(a1 + 32));
    v19 = class_isMetaClass(v18);
    v20 = object_getClassName(*(a1 + 32));
    v21 = sel_getName(*(a1 + 56));
    v22 = [*(a1 + 32) sessionUID];
    v23 = 45;
    if (v19)
    {
      v23 = 43;
    }

    v17(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v23, v20, v21, 1041, v22);
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
    v29 = [*(a1 + 32) sessionUID];
    *buf = 67110146;
    v40 = v26;
    v41 = 2082;
    v42 = v27;
    v43 = 2082;
    v44 = v28;
    v45 = 1024;
    v46 = 1041;
    v47 = 2114;
    v48 = v29;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  v30 = *(a1 + 48);
  if (v30)
  {
    v31 = [NSError alloc];
    v32 = [NSString stringWithUTF8String:"nfcd"];
    v37 = NSLocalizedDescriptionKey;
    v33 = [NSString stringWithUTF8String:"Session not active"];
    v38 = v33;
    v34 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    v35 = [v31 initWithDomain:v32 code:54 userInfo:v34];
    (*(v30 + 16))(v30, 0, v35);

LABEL_24:
  }
}

void sub_1000C4D50(uint64_t a1)
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
    v8 = [*(a1 + 32) clientName];
    v9 = 45;
    if (isMetaClass)
    {
      v9 = 43;
    }

    v3(6, "%c[%{public}s %{public}s]:%i %{public}@", v9, ClassName, Name, 1053, v8);
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
    v15 = [*(a1 + 32) clientName];
    *buf = 67110146;
    v59 = v12;
    v60 = 2082;
    v61 = v13;
    v62 = 2082;
    v63 = v14;
    v64 = 1024;
    v65 = 1053;
    v66 = 2114;
    v67 = v15;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  if (![*(a1 + 32) didStart] || (objc_msgSend(*(a1 + 32), "isSuspended") & 1) != 0 || objc_msgSend(*(a1 + 32), "didEnd"))
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v16 = NFLogGetLogger();
    if (v16)
    {
      v17 = v16;
      v18 = object_getClass(*(a1 + 32));
      v19 = class_isMetaClass(v18);
      v20 = object_getClassName(*(a1 + 32));
      v21 = sel_getName(*(a1 + 48));
      v22 = [*(a1 + 32) sessionUID];
      v23 = 45;
      if (v19)
      {
        v23 = 43;
      }

      v17(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v23, v20, v21, 1055, v22);
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
      v28 = sel_getName(*(a1 + 48));
      v29 = [*(a1 + 32) sessionUID];
      *buf = 67110146;
      v59 = v26;
      v60 = 2082;
      v61 = v27;
      v62 = 2082;
      v63 = v28;
      v64 = 1024;
      v65 = 1055;
      v66 = 2114;
      v67 = v29;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
    }

    v30 = *(a1 + 40);
    if (v30)
    {
      v31 = [NSError alloc];
      v32 = [NSString stringWithUTF8String:"nfcd"];
      v56 = NSLocalizedDescriptionKey;
      v33 = [NSString stringWithUTF8String:"Session not active"];
      v57 = v33;
      v34 = [NSDictionary dictionaryWithObjects:&v57 forKeys:&v56 count:1];
      v35 = [v31 initWithDomain:v32 code:54 userInfo:v34];
      (*(v30 + 16))(v30, v35);
    }
  }

  else if ([*(a1 + 32) _configureEmulationType:2])
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v36 = NFLogGetLogger();
    if (v36)
    {
      v37 = v36;
      v38 = object_getClass(*(a1 + 32));
      v39 = class_isMetaClass(v38);
      v40 = object_getClassName(*(a1 + 32));
      v53 = sel_getName(*(a1 + 48));
      v41 = 45;
      if (v39)
      {
        v41 = 43;
      }

      v37(3, "%c[%{public}s %{public}s]:%i Failed to start card emulation", v41, v40, v53, 1059);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v42 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v43 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v43))
      {
        v44 = 43;
      }

      else
      {
        v44 = 45;
      }

      v45 = object_getClassName(*(a1 + 32));
      v46 = sel_getName(*(a1 + 48));
      *buf = 67109890;
      v59 = v44;
      v60 = 2082;
      v61 = v45;
      v62 = 2082;
      v63 = v46;
      v64 = 1024;
      v65 = 1059;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to start card emulation", buf, 0x22u);
    }

    v47 = *(a1 + 40);
    v48 = [NSError alloc];
    v49 = [NSString stringWithUTF8String:"nfcd"];
    v54 = NSLocalizedDescriptionKey;
    v50 = [NSString stringWithUTF8String:"Stack Error"];
    v55 = v50;
    v51 = [NSDictionary dictionaryWithObjects:&v55 forKeys:&v54 count:1];
    v52 = [v48 initWithDomain:v49 code:15 userInfo:v51];
    (*(v47 + 16))(v47, v52);

    [*(a1 + 32) startDefaultMode];
  }
}

void sub_1000C5410(uint64_t a1)
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
    v8 = [*(a1 + 32) clientName];
    v9 = 45;
    if (isMetaClass)
    {
      v9 = 43;
    }

    v3(6, "%c[%{public}s %{public}s]:%i %{public}@", v9, ClassName, Name, 1073, v8);
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
    v15 = [*(a1 + 32) clientName];
    *buf = 67110146;
    v39 = v12;
    v40 = 2082;
    v41 = v13;
    v42 = 2082;
    v43 = v14;
    v44 = 1024;
    v45 = 1073;
    v46 = 2114;
    v47 = v15;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  if (![*(a1 + 32) didStart] || (objc_msgSend(*(a1 + 32), "isSuspended") & 1) != 0 || objc_msgSend(*(a1 + 32), "didEnd"))
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v16 = NFLogGetLogger();
    if (v16)
    {
      v17 = v16;
      v18 = object_getClass(*(a1 + 32));
      v19 = class_isMetaClass(v18);
      v20 = object_getClassName(*(a1 + 32));
      v21 = sel_getName(*(a1 + 48));
      v22 = [*(a1 + 32) sessionUID];
      v23 = 45;
      if (v19)
      {
        v23 = 43;
      }

      v17(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v23, v20, v21, 1075, v22);
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
      v28 = sel_getName(*(a1 + 48));
      v29 = [*(a1 + 32) sessionUID];
      *buf = 67110146;
      v39 = v26;
      v40 = 2082;
      v41 = v27;
      v42 = 2082;
      v43 = v28;
      v44 = 1024;
      v45 = 1075;
      v46 = 2114;
      v47 = v29;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
    }

    v30 = *(a1 + 40);
    if (v30)
    {
      v31 = [NSError alloc];
      v32 = [NSString stringWithUTF8String:"nfcd"];
      v36 = NSLocalizedDescriptionKey;
      v33 = [NSString stringWithUTF8String:"Session not active"];
      v37 = v33;
      v34 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
      v35 = [v31 initWithDomain:v32 code:54 userInfo:v34];
      (*(v30 + 16))(v30, v35);
    }
  }

  else
  {
    [*(a1 + 32) startDefaultMode];
    (*(*(a1 + 40) + 16))();
  }
}

void sub_1000C87D4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  else
  {
    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v84 = [v5 countByEnumeratingWithState:&v85 objects:v101 count:16];
    v7 = 0;
    if (v84)
    {
      v83 = *v86;
      obj = v5;
      do
      {
        v8 = 0;
        do
        {
          if (*v86 != v83)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v85 + 1) + 8 * v8);
          if (v9)
          {
            v10 = v9[3];
          }

          else
          {
            v10 = 0;
          }

          v11 = v10;

          if (v11)
          {
            v12 = NFSharedSignpostLog();
            if (os_signpost_enabled(v12))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "getKeyInSlot", &unk_1002E8B7A, buf, 2u);
            }

            v13 = [*(a1 + 32) secureElementWrapper];
            if (v9)
            {
              v14 = v9[4];
            }

            else
            {
              v14 = 0;
            }

            v15 = v14;
            v16 = sub_1000ADE64(v13, v15);

            if (v16)
            {
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              Logger = NFLogGetLogger();
              if (Logger)
              {
                v18 = Logger;
                Class = object_getClass(*(a1 + 32));
                if (class_isMetaClass(Class))
                {
                  v20 = 43;
                }

                else
                {
                  v20 = 45;
                }

                ClassName = object_getClassName(*(a1 + 32));
                Name = sel_getName(*(a1 + 56));
                if (v9)
                {
                  v23 = v9[1];
                }

                else
                {
                  v23 = 0;
                }

                v24 = v23;
                v18(4, "%c[%{public}s %{public}s]:%i Could not getKey '%{public}@' from SE, delete the key from the database : %{public}@", v20, ClassName, Name, 261, v24, v16);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v25 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
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
                v29 = sel_getName(*(a1 + 56));
                if (v9)
                {
                  v30 = v9[1];
                }

                else
                {
                  v30 = 0;
                }

                v31 = v30;
                *buf = 67110402;
                v90 = v27;
                v91 = 2082;
                v92 = v28;
                v93 = 2082;
                v94 = v29;
                v95 = 1024;
                v96 = 261;
                v97 = 2114;
                v98 = v31;
                v99 = 2114;
                v100 = v16;
                _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Could not getKey '%{public}@' from SE, delete the key from the database : %{public}@", buf, 0x36u);
              }

              v32 = [*(a1 + 32) deleteDBKey:v9];

              if (v32)
              {
                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v33 = NFLogGetLogger();
                if (v33)
                {
                  v34 = v33;
                  v35 = object_getClass(*(a1 + 32));
                  if (class_isMetaClass(v35))
                  {
                    v36 = 43;
                  }

                  else
                  {
                    v36 = 45;
                  }

                  v37 = object_getClassName(*(a1 + 32));
                  v38 = sel_getName(*(a1 + 56));
                  if (v9)
                  {
                    v39 = v9[1];
                  }

                  else
                  {
                    v39 = 0;
                  }

                  v40 = v39;
                  v34(3, "%c[%{public}s %{public}s]:%i Could not delete incomplete key with identifier %{public}@ from database", v36, v37, v38, 264, v40);
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
                  v45 = sel_getName(*(a1 + 56));
                  if (v9)
                  {
                    v46 = v9[1];
                  }

                  else
                  {
                    v46 = 0;
                  }

                  v47 = v46;
                  *buf = 67110146;
                  v90 = v43;
                  v91 = 2082;
                  v92 = v44;
                  v93 = 2082;
                  v94 = v45;
                  v95 = 1024;
                  v96 = 264;
                  v97 = 2114;
                  v98 = v47;
                  _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Could not delete incomplete key with identifier %{public}@ from database", buf, 0x2Cu);
                }
              }

              v48 = NFSharedSignpostLog();
              if (os_signpost_enabled(v48))
              {
                *buf = 0;
                _os_signpost_emit_with_name_impl(&_mh_execute_header, v48, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "getKeyInSlot", "failed", buf, 2u);
              }

              v7 = v16;
            }

            else
            {
              v80 = NFSharedSignpostLog();
              if (os_signpost_enabled(v80))
              {
                *buf = 0;
                _os_signpost_emit_with_name_impl(&_mh_execute_header, v80, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "getKeyInSlot", &unk_1002E8B7A, buf, 2u);
              }

              [*(*(*(a1 + 48) + 8) + 40) addObject:v9];
              v7 = 0;
            }
          }

          else
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v49 = NFLogGetLogger();
            if (v49)
            {
              v50 = v49;
              v51 = object_getClass(*(a1 + 32));
              if (class_isMetaClass(v51))
              {
                v52 = 43;
              }

              else
              {
                v52 = 45;
              }

              v53 = object_getClassName(*(a1 + 32));
              v54 = sel_getName(*(a1 + 56));
              if (v9)
              {
                v55 = v9[1];
              }

              else
              {
                v55 = 0;
              }

              v56 = v55;
              v50(4, "%c[%{public}s %{public}s]:%i Key attestion of %{public}@ is nil, key create/delete may have crashed, do not list key and try to delete the key again ... ", v52, v53, v54, 248, v56);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v57 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
            {
              v58 = object_getClass(*(a1 + 32));
              if (class_isMetaClass(v58))
              {
                v59 = 43;
              }

              else
              {
                v59 = 45;
              }

              v60 = object_getClassName(*(a1 + 32));
              v61 = sel_getName(*(a1 + 56));
              if (v9)
              {
                v62 = v9[1];
              }

              else
              {
                v62 = 0;
              }

              v63 = v62;
              *buf = 67110146;
              v90 = v59;
              v91 = 2082;
              v92 = v60;
              v93 = 2082;
              v94 = v61;
              v95 = 1024;
              v96 = 248;
              v97 = 2114;
              v98 = v63;
              _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Key attestion of %{public}@ is nil, key create/delete may have crashed, do not list key and try to delete the key again ... ", buf, 0x2Cu);
            }

            v64 = [*(a1 + 32) deleteDBKey:v9];

            if (v64)
            {
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v65 = NFLogGetLogger();
              if (v65)
              {
                v66 = v65;
                v67 = object_getClass(*(a1 + 32));
                if (class_isMetaClass(v67))
                {
                  v68 = 43;
                }

                else
                {
                  v68 = 45;
                }

                v69 = object_getClassName(*(a1 + 32));
                v70 = sel_getName(*(a1 + 56));
                if (v9)
                {
                  v71 = v9[1];
                }

                else
                {
                  v71 = 0;
                }

                v72 = v71;
                v66(3, "%c[%{public}s %{public}s]:%i Could not delete incomplete key with identifier %{public}@ from database", v68, v69, v70, 251, v72);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v73 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
              {
                v74 = object_getClass(*(a1 + 32));
                if (class_isMetaClass(v74))
                {
                  v75 = 43;
                }

                else
                {
                  v75 = 45;
                }

                v76 = object_getClassName(*(a1 + 32));
                v77 = sel_getName(*(a1 + 56));
                if (v9)
                {
                  v78 = v9[1];
                }

                else
                {
                  v78 = 0;
                }

                v79 = v78;
                *buf = 67110146;
                v90 = v75;
                v91 = 2082;
                v92 = v76;
                v93 = 2082;
                v94 = v77;
                v95 = 1024;
                v96 = 251;
                v97 = 2114;
                v98 = v79;
                _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Could not delete incomplete key with identifier %{public}@ from database", buf, 0x2Cu);
              }
            }
          }

          v8 = v8 + 1;
        }

        while (v84 != v8);
        v5 = obj;
        v81 = [obj countByEnumeratingWithState:&v85 objects:v101 count:16];
        v84 = v81;
      }

      while (v81);
    }

    v6 = 0;
  }
}

void sub_1000C9190(uint64_t a1)
{
  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    v22 = [*(a1 + 32) keys];

    if (v22)
    {
      goto LABEL_18;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v44 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 48));
      v48 = 45;
      if (isMetaClass)
      {
        v48 = 43;
      }

      v44(6, "%c[%{public}s %{public}s]:%i Regenerating cached keys", v48, ClassName, Name, 296);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v49 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      v50 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v50))
      {
        v51 = 43;
      }

      else
      {
        v51 = 45;
      }

      v52 = object_getClassName(*(a1 + 32));
      v53 = sel_getName(*(a1 + 48));
      *buf = 67109890;
      v79 = v51;
      v80 = 2082;
      v81 = v52;
      v82 = 2082;
      v83 = v53;
      v84 = 1024;
      v85 = 296;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Regenerating cached keys", buf, 0x22u);
    }

    v54 = *(a1 + 32);
    v74 = 0;
    v55 = [v54 getListOfKeysWithError:&v74];
    v18 = v74;
    [*(a1 + 32) setKeys:v55];

    if (!v18)
    {
LABEL_18:
      v18 = objc_opt_new();
      v70 = 0u;
      v71 = 0u;
      v72 = 0u;
      v73 = 0u;
      v23 = [*(a1 + 32) keys];
      v24 = [v23 countByEnumeratingWithState:&v70 objects:v75 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v71;
        while (2)
        {
          for (i = 0; i != v25; i = i + 1)
          {
            if (*v71 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v28 = sub_100021E94(*(*(&v70 + 1) + 8 * i));
            if (!v28)
            {
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v31 = NFLogGetLogger();
              if (v31)
              {
                v32 = v31;
                v33 = object_getClass(*(a1 + 32));
                v34 = class_isMetaClass(v33);
                v35 = object_getClassName(*(a1 + 32));
                v67 = sel_getName(*(a1 + 48));
                v36 = 45;
                if (v34)
                {
                  v36 = 43;
                }

                v32(3, "%c[%{public}s %{public}s]:%i Could not create NFTrustKey Object", v36, v35, v67, 312);
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
                v41 = sel_getName(*(a1 + 48));
                *buf = 67109890;
                v79 = v39;
                v80 = 2082;
                v81 = v40;
                v82 = 2082;
                v83 = v41;
                v84 = 1024;
                v85 = 312;
                _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Could not create NFTrustKey Object", buf, 0x22u);
              }

              v42 = sub_10013DC5C(@"Could not create NFTrustKey Object");

              (*(*(a1 + 40) + 16))();
              v18 = v42;
              goto LABEL_15;
            }

            v29 = v28;
            [v18 addObject:v28];
          }

          v25 = [v23 countByEnumeratingWithState:&v70 objects:v75 count:16];
          if (v25)
          {
            continue;
          }

          break;
        }
      }

      v30 = *(*(a1 + 40) + 16);
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v56 = NFLogGetLogger();
      if (v56)
      {
        v57 = v56;
        v58 = object_getClass(*(a1 + 32));
        v59 = class_isMetaClass(v58);
        v66 = object_getClassName(*(a1 + 32));
        v69 = sel_getName(*(a1 + 48));
        v60 = 45;
        if (v59)
        {
          v60 = 43;
        }

        v57(3, "%c[%{public}s %{public}s]:%i Failed to getListOfKeys: %{public}@", v60, v66, v69, 299, v18);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v61 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        v62 = object_getClass(*(a1 + 32));
        if (class_isMetaClass(v62))
        {
          v63 = 43;
        }

        else
        {
          v63 = 45;
        }

        v64 = object_getClassName(*(a1 + 32));
        v65 = sel_getName(*(a1 + 48));
        *buf = 67110146;
        v79 = v63;
        v80 = 2082;
        v81 = v64;
        v82 = 2082;
        v83 = v65;
        v84 = 1024;
        v85 = 299;
        v86 = 2114;
        v87 = v18;
        _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to getListOfKeys: %{public}@", buf, 0x2Cu);
      }

      v30 = *(*(a1 + 40) + 16);
    }

    v30();
    goto LABEL_15;
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

    v3(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v9, v6, v7, 293, v8);
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
    v79 = v12;
    v80 = 2082;
    v81 = v13;
    v82 = 2082;
    v83 = v14;
    v84 = 1024;
    v85 = 293;
    v86 = 2114;
    v87 = v15;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  v16 = *(a1 + 40);
  if (v16)
  {
    v17 = [NSError alloc];
    v18 = [NSString stringWithUTF8String:"nfcd"];
    v76 = NSLocalizedDescriptionKey;
    v19 = [NSString stringWithUTF8String:"Session not active"];
    v77 = v19;
    v20 = [NSDictionary dictionaryWithObjects:&v77 forKeys:&v76 count:1];
    v21 = [v17 initWithDomain:v18 code:54 userInfo:v20];
    (*(v16 + 16))(v16, 0, v21);

LABEL_15:
  }
}

void sub_1000CA958(uint64_t a1)
{
  if (!*(a1 + 48))
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v23 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 56));
      v27 = 45;
      if (isMetaClass)
      {
        v27 = 43;
      }

      v23(3, "%c[%{public}s %{public}s]:%i Could not delete Key with nil callback", v27, ClassName, Name, 501);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v18 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v28 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v28))
      {
        v29 = 43;
      }

      else
      {
        v29 = 45;
      }

      v30 = object_getClassName(*(a1 + 32));
      v31 = sel_getName(*(a1 + 56));
      *buf = 67109890;
      v90 = v29;
      v91 = 2082;
      v92 = v30;
      v93 = 2082;
      v94 = v31;
      v95 = 1024;
      v96 = 501;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Could not delete Key with nil callback", buf, 0x22u);
    }

    goto LABEL_26;
  }

  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    v32 = [*(a1 + 32) trustDB];
    if (v32 && (v33 = v32, [*(a1 + 32) trustDBApplet], v34 = objc_claimAutoreleasedReturnValue(), v34, v33, v34))
    {
      if (*(a1 + 40))
      {
        v35 = [*(a1 + 32) trustDB];
        v36 = *(a1 + 40);
        v76 = 0;
        v37 = sub_100020308(v35, v36, &v76);
        v18 = v76;

        if (v37)
        {
          v81[0] = @"purpleTrustOperationType";
          v81[1] = @"purpleTrustOperationErrorStep";
          v82[0] = &off_100331038;
          v82[1] = &off_1003310E0;
          v82[2] = &off_100331050;
          v81[2] = @"purpleTrustOperationCAErrorCode";
          v81[3] = @"purpleTrustOperationErrorCode";
          v38 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v37 code]);
          v82[3] = v38;
          v39 = [NSDictionary dictionaryWithObjects:v82 forKeys:v81 count:4];

          sub_1002085BC(NFPeerPaymentAndPurpleTrustCALogger, v39);
          [NFGeneralStatisticsCALogger updateAnalyticsGeneralTransactionStatistics:&off_100339580];
          (*(*(a1 + 48) + 16))();

LABEL_60:
          goto LABEL_26;
        }

        if (v18)
        {
          [*(a1 + 32) setKeys:0];
          v44 = *(a1 + 48);
          v45 = [*(a1 + 32) deleteDBKey:v18];
          (*(v44 + 16))(v44, v45);

          v46 = *(a1 + 32);
          v75 = 0;
          v47 = [v46 getNumberOfKeys:&v75];
          v37 = v75;
          if (v37)
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v48 = NFLogGetLogger();
            if (v48)
            {
              v49 = v48;
              v50 = object_getClass(*(a1 + 32));
              v51 = class_isMetaClass(v50);
              v52 = object_getClassName(*(a1 + 32));
              v74 = sel_getName(*(a1 + 56));
              v53 = 45;
              if (v51)
              {
                v53 = 43;
              }

              v49(3, "%c[%{public}s %{public}s]:%i Could not get number of keys to post CA notification", v53, v52, v74, 606);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v54 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
            {
              v55 = object_getClass(*(a1 + 32));
              if (class_isMetaClass(v55))
              {
                v56 = 43;
              }

              else
              {
                v56 = 45;
              }

              v57 = object_getClassName(*(a1 + 32));
              v58 = sel_getName(*(a1 + 56));
              *buf = 67109890;
              v90 = v56;
              v91 = 2082;
              v92 = v57;
              v93 = 2082;
              v94 = v58;
              v95 = 1024;
              v96 = 606;
              _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Could not get number of keys to post CA notification", buf, 0x22u);
            }
          }

          else
          {
            v77 = @"totalPurpleTrustKeys";
            v54 = [NSNumber numberWithUnsignedInteger:v47];
            v78 = v54;
            v72 = [NSDictionary dictionaryWithObjects:&v78 forKeys:&v77 count:1];
            [NFGeneralStatisticsCALogger updateGeneralDeviceStatistic:v72];
          }

          [*(a1 + 32) listKeysWithCompletion:&stru_100318290];
          goto LABEL_60;
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v59 = NFLogGetLogger();
        if (v59)
        {
          v60 = v59;
          v61 = object_getClass(*(a1 + 32));
          v62 = class_isMetaClass(v61);
          v63 = object_getClassName(*(a1 + 32));
          v64 = sel_getName(*(a1 + 56));
          v65 = 45;
          if (v62)
          {
            v65 = 43;
          }

          v60(3, "%c[%{public}s %{public}s]:%i Could not find DB Key with identifier : %{public}@", v65, v63, v64, 576, *(a1 + 40));
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v66 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
        {
          v67 = object_getClass(*(a1 + 32));
          if (class_isMetaClass(v67))
          {
            v68 = 43;
          }

          else
          {
            v68 = 45;
          }

          v69 = object_getClassName(*(a1 + 32));
          v70 = sel_getName(*(a1 + 56));
          v71 = *(a1 + 40);
          *buf = 67110146;
          v90 = v68;
          v91 = 2082;
          v92 = v69;
          v93 = 2082;
          v94 = v70;
          v95 = 1024;
          v96 = 576;
          v97 = 2114;
          v98 = v71;
          _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Could not find DB Key with identifier : %{public}@", buf, 0x2Cu);
        }

        v18 = sub_10013E134(*(a1 + 40));
        v79[0] = @"purpleTrustOperationType";
        v79[1] = @"purpleTrustOperationErrorStep";
        v80[0] = &off_100331038;
        v80[1] = &off_1003310E0;
        v80[2] = &off_1003310F8;
        v79[2] = @"purpleTrustOperationCAErrorCode";
        v79[3] = @"purpleTrustOperationErrorCode";
        v41 = [NSNumber numberWithInteger:[v18 code]];
        v80[3] = v41;
        v42 = v80;
        v43 = v79;
      }

      else
      {
        v18 = sub_10013E33C(@"keyIdentifier is nil");
        v83[0] = @"purpleTrustOperationType";
        v83[1] = @"purpleTrustOperationErrorStep";
        v84[0] = &off_100331038;
        v84[1] = &off_100331038;
        v84[2] = &off_1003310C8;
        v83[2] = @"purpleTrustOperationCAErrorCode";
        v83[3] = @"purpleTrustOperationErrorCode";
        v41 = [NSNumber numberWithInteger:[v18 code]];
        v84[3] = v41;
        v42 = v84;
        v43 = v83;
      }

      v19 = [NSDictionary dictionaryWithObjects:v42 forKeys:v43 count:4];

      sub_1002085BC(NFPeerPaymentAndPurpleTrustCALogger, v19);
    }

    else
    {
      v18 = sub_10013DE50();
      v85[0] = @"purpleTrustOperationType";
      v85[1] = @"purpleTrustOperationErrorStep";
      v86[0] = &off_100331038;
      v86[1] = &off_100331038;
      v86[2] = &off_100331050;
      v85[2] = @"purpleTrustOperationCAErrorCode";
      v85[3] = @"purpleTrustOperationErrorCode";
      v40 = [NSNumber numberWithInteger:[v18 code]];
      v86[3] = v40;
      v19 = [NSDictionary dictionaryWithObjects:v86 forKeys:v85 count:4];

      sub_1002085BC(NFPeerPaymentAndPurpleTrustCALogger, v19);
      [NFGeneralStatisticsCALogger updateAnalyticsGeneralTransactionStatistics:&off_100339558];
    }

    (*(*(a1 + 48) + 16))();
    goto LABEL_16;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v2 = NFLogGetLogger();
  if (v2)
  {
    v3 = v2;
    v4 = object_getClass(*(a1 + 32));
    v5 = class_isMetaClass(v4);
    v6 = object_getClassName(*(a1 + 32));
    v7 = sel_getName(*(a1 + 56));
    v8 = [*(a1 + 32) sessionUID];
    v9 = 45;
    if (v5)
    {
      v9 = 43;
    }

    v3(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v9, v6, v7, 505, v8);
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
    v90 = v12;
    v91 = 2082;
    v92 = v13;
    v93 = 2082;
    v94 = v14;
    v95 = 1024;
    v96 = 505;
    v97 = 2114;
    v98 = v15;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  v16 = *(a1 + 48);
  if (v16)
  {
    v17 = [NSError alloc];
    v18 = [NSString stringWithUTF8String:"nfcd"];
    v87 = NSLocalizedDescriptionKey;
    v19 = [NSString stringWithUTF8String:"Session not active"];
    v88 = v19;
    v20 = [NSDictionary dictionaryWithObjects:&v88 forKeys:&v87 count:1];
    v21 = [v17 initWithDomain:v18 code:54 userInfo:v20];
    (*(v16 + 16))(v16, v21);

LABEL_16:
LABEL_26:
  }
}

void sub_1000CB4C4(uint64_t a1)
{
  if (!*(a1 + 56))
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v23 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 64));
      v27 = 45;
      if (isMetaClass)
      {
        v27 = 43;
      }

      v23(3, "%c[%{public}s %{public}s]:%i Could not create Key with nil callback", v27, ClassName, Name, 632);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v18 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v28 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v28))
      {
        v29 = 43;
      }

      else
      {
        v29 = 45;
      }

      v30 = object_getClassName(*(a1 + 32));
      v31 = sel_getName(*(a1 + 64));
      *buf = 67109890;
      v301 = v29;
      v302 = 2082;
      v303 = v30;
      v304 = 2082;
      v305 = v31;
      v306 = 1024;
      v307 = 632;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Could not create Key with nil callback", buf, 0x22u);
    }

    goto LABEL_26;
  }

  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    v32 = [*(a1 + 32) trustDB];
    if (v32)
    {
      v33 = v32;
      v34 = [*(a1 + 32) trustDBApplet];

      if (v34)
      {
        v35 = *(a1 + 32);
        v269 = 0;
        v36 = [v35 getNumberOfKeys:&v269];
        v37 = v269;
        if (v37)
        {
          v18 = v37;
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v38 = NFLogGetLogger();
          if (v38)
          {
            v39 = v38;
            v40 = object_getClass(*(a1 + 32));
            v41 = class_isMetaClass(v40);
            v238 = object_getClassName(*(a1 + 32));
            v250 = sel_getName(*(a1 + 64));
            v42 = 45;
            if (v41)
            {
              v42 = 43;
            }

            v39(3, "%c[%{public}s %{public}s]:%i Could not createKey, could not get current number of keys : %{public}@", v42, v238, v250, 664, v18);
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
            v47 = sel_getName(*(a1 + 64));
            *buf = 67110146;
            v301 = v45;
            v302 = 2082;
            v303 = v46;
            v304 = 2082;
            v305 = v47;
            v306 = 1024;
            v307 = 664;
            v308 = 2114;
            v309 = v18;
            _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Could not createKey, could not get current number of keys : %{public}@", buf, 0x2Cu);
          }

          v48 = *(a1 + 56);
          v49 = sub_10013DC5C(&stru_10031EA18);
          (*(v48 + 16))(v48, 0, v49);
          goto LABEL_41;
        }

        if (v36 >= 2)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v54 = NFLogGetLogger();
          if (v54)
          {
            v55 = v54;
            v56 = object_getClass(*(a1 + 32));
            v57 = class_isMetaClass(v56);
            v58 = object_getClassName(*(a1 + 32));
            v251 = sel_getName(*(a1 + 64));
            v59 = 45;
            if (v57)
            {
              v59 = 43;
            }

            v55(3, "%c[%{public}s %{public}s]:%i Could not createKey, maximum number of keys reached", v59, v58, v251, 670);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v60 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
          {
            v61 = object_getClass(*(a1 + 32));
            if (class_isMetaClass(v61))
            {
              v62 = 43;
            }

            else
            {
              v62 = 45;
            }

            v63 = object_getClassName(*(a1 + 32));
            v64 = sel_getName(*(a1 + 64));
            *buf = 67109890;
            v301 = v62;
            v302 = 2082;
            v303 = v63;
            v304 = 2082;
            v305 = v64;
            v306 = 1024;
            v307 = 670;
            _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Could not createKey, maximum number of keys reached", buf, 0x22u);
          }

          v65 = *(a1 + 56);
          v18 = sub_10013E030(@"create key");
          (*(v65 + 16))(v65, 0, v18);
          goto LABEL_26;
        }

        if (*(a1 + 40))
        {
          if (*(a1 + 48))
          {
            v66 = [*(a1 + 32) trustDB];
            v67 = *(a1 + 40);
            v268 = 0;
            v18 = sub_100020308(v66, v67, &v268);
            v49 = v268;

            if (v18)
            {
              v290[0] = @"purpleTrustOperationType";
              v290[1] = @"purpleTrustOperationErrorStep";
              v291[0] = &off_100331110;
              v291[1] = &off_100331128;
              v291[2] = &off_100331050;
              v290[2] = @"purpleTrustOperationCAErrorCode";
              v290[3] = @"purpleTrustOperationErrorCode";
              v68 = [NSNumber numberWithInteger:[v18 code]];
              v291[3] = v68;
              v69 = [NSDictionary dictionaryWithObjects:v291 forKeys:v290 count:4];

              sub_1002085BC(NFPeerPaymentAndPurpleTrustCALogger, v69);
              [NFGeneralStatisticsCALogger updateAnalyticsGeneralTransactionStatistics:&off_1003395D0];
LABEL_59:
              (*(*(a1 + 56) + 16))();
LABEL_65:

LABEL_41:
              goto LABEL_26;
            }

            if (v49)
            {
              v18 = sub_10013E238(*(a1 + 40));
              v288[0] = @"purpleTrustOperationType";
              v288[1] = @"purpleTrustOperationErrorStep";
              v289[0] = &off_100331110;
              v289[1] = &off_100331128;
              v289[2] = &off_100331140;
              v288[2] = @"purpleTrustOperationCAErrorCode";
              v288[3] = @"purpleTrustOperationErrorCode";
              v73 = [NSNumber numberWithInteger:[v18 code]];
              v289[3] = v73;
              v69 = [NSDictionary dictionaryWithObjects:v289 forKeys:v288 count:4];

              sub_1002085BC(NFPeerPaymentAndPurpleTrustCALogger, v69);
              v74 = *(a1 + 56);
              v75 = sub_10013E238(*(a1 + 40));
              (*(v74 + 16))(v74, 0, v75);

              goto LABEL_65;
            }

            v76 = *(a1 + 40);
            v77 = [*(a1 + 32) applicationIdentifier];
            v78 = [*(a1 + 32) trustDBApplet];
            v79 = sub_10001FB8C(v78);
            v49 = sub_100021788(NFTrustDBKey, v76, v77, v79, *(a1 + 48));

            if (v49)
            {
              v80 = [*(a1 + 32) selectInstance];
              if (v80)
              {
                v18 = v80;
                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v81 = NFLogGetLogger();
                if (v81)
                {
                  v82 = v81;
                  v83 = object_getClass(*(a1 + 32));
                  v84 = class_isMetaClass(v83);
                  v239 = object_getClassName(*(a1 + 32));
                  v252 = sel_getName(*(a1 + 64));
                  v85 = 45;
                  if (v84)
                  {
                    v85 = 43;
                  }

                  v82(3, "%c[%{public}s %{public}s]:%i Failed to select instance : %{public}@", v85, v239, v252, 788, v18);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v86 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
                {
                  v87 = object_getClass(*(a1 + 32));
                  if (class_isMetaClass(v87))
                  {
                    v88 = 43;
                  }

                  else
                  {
                    v88 = 45;
                  }

                  v89 = object_getClassName(*(a1 + 32));
                  v90 = sel_getName(*(a1 + 64));
                  *buf = 67110146;
                  v301 = v88;
                  v302 = 2082;
                  v303 = v89;
                  v304 = 2082;
                  v305 = v90;
                  v306 = 1024;
                  v307 = 788;
                  v308 = 2114;
                  v309 = v18;
                  _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to select instance : %{public}@", buf, 0x2Cu);
                }

                v284[0] = @"purpleTrustOperationType";
                v284[1] = @"purpleTrustOperationErrorStep";
                v285[0] = &off_100331110;
                v285[1] = &off_100331188;
                v285[2] = &off_1003311A0;
                v284[2] = @"purpleTrustOperationCAErrorCode";
                v284[3] = @"purpleTrustOperationErrorCode";
                v91 = [NSNumber numberWithInteger:[v18 code]];
                v285[3] = v91;
                v69 = [NSDictionary dictionaryWithObjects:v285 forKeys:v284 count:4];

                sub_1002085BC(NFPeerPaymentAndPurpleTrustCALogger, v69);
                goto LABEL_59;
              }

              v104 = [*(a1 + 32) trustDBApplet];
              v267 = 0;
              v18 = sub_100020BD0(v104, &v267);
              v105 = v267;

              if (v18)
              {
                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v106 = NFLogGetLogger();
                if (v106)
                {
                  v107 = v106;
                  v108 = object_getClass(*(a1 + 32));
                  v109 = class_isMetaClass(v108);
                  v240 = object_getClassName(*(a1 + 32));
                  v254 = sel_getName(*(a1 + 64));
                  v110 = 45;
                  if (v109)
                  {
                    v110 = 43;
                  }

                  v107(3, "%c[%{public}s %{public}s]:%i Failed to get slot for new key : %{public}@", v110, v240, v254, 808, v18);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v111 = NFSharedLogGetLogger();
                if (!os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_109;
                }

                v112 = object_getClass(*(a1 + 32));
                if (class_isMetaClass(v112))
                {
                  v113 = 43;
                }

                else
                {
                  v113 = 45;
                }

                v114 = object_getClassName(*(a1 + 32));
                v115 = sel_getName(*(a1 + 64));
                *buf = 67110146;
                v301 = v113;
                v302 = 2082;
                v303 = v114;
                v304 = 2082;
                v305 = v115;
                v306 = 1024;
                v307 = 808;
                v308 = 2114;
                v309 = v18;
                v116 = "%c[%{public}s %{public}s]:%i Failed to get slot for new key : %{public}@";
LABEL_108:
                _os_log_impl(&_mh_execute_header, v111, OS_LOG_TYPE_ERROR, v116, buf, 0x2Cu);
LABEL_109:

                (*(*(a1 + 56) + 16))();
LABEL_110:

                goto LABEL_41;
              }

              v117 = [*(a1 + 32) trustDBApplet];
              v18 = sub_100021094(v117, v105);

              if (v18)
              {
                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v118 = NFLogGetLogger();
                if (v118)
                {
                  v119 = v118;
                  v120 = object_getClass(*(a1 + 32));
                  v121 = class_isMetaClass(v120);
                  v241 = object_getClassName(*(a1 + 32));
                  v255 = sel_getName(*(a1 + 64));
                  v122 = 45;
                  if (v121)
                  {
                    v122 = 43;
                  }

                  v119(3, "%c[%{public}s %{public}s]:%i Failed to clean DB slot for new key : %{public}@", v122, v241, v255, 814, v18);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v111 = NFSharedLogGetLogger();
                if (!os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_109;
                }

                v123 = object_getClass(*(a1 + 32));
                if (class_isMetaClass(v123))
                {
                  v124 = 43;
                }

                else
                {
                  v124 = 45;
                }

                v125 = object_getClassName(*(a1 + 32));
                v126 = sel_getName(*(a1 + 64));
                *buf = 67110146;
                v301 = v124;
                v302 = 2082;
                v303 = v125;
                v304 = 2082;
                v305 = v126;
                v306 = 1024;
                v307 = 814;
                v308 = 2114;
                v309 = v18;
                v116 = "%c[%{public}s %{public}s]:%i Failed to clean DB slot for new key : %{public}@";
                goto LABEL_108;
              }

              sub_100021FD0(v49, v105);
              v127 = [*(a1 + 32) trustDB];
              v18 = sub_10001FC80(v127, v49);

              if (v18)
              {
                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v128 = NFLogGetLogger();
                if (v128)
                {
                  v129 = v128;
                  v130 = object_getClass(*(a1 + 32));
                  v131 = class_isMetaClass(v130);
                  v242 = object_getClassName(*(a1 + 32));
                  v256 = sel_getName(*(a1 + 64));
                  v132 = 45;
                  if (v131)
                  {
                    v132 = 43;
                  }

                  v129(3, "%c[%{public}s %{public}s]:%i Failed to add Key to NFTrustDB : %{public}@ -- Delete created key", v132, v242, v256, 823, v18);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v133 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v133, OS_LOG_TYPE_ERROR))
                {
                  v134 = object_getClass(*(a1 + 32));
                  if (class_isMetaClass(v134))
                  {
                    v135 = 43;
                  }

                  else
                  {
                    v135 = 45;
                  }

                  v136 = object_getClassName(*(a1 + 32));
                  v137 = sel_getName(*(a1 + 64));
                  *buf = 67110146;
                  v301 = v135;
                  v302 = 2082;
                  v303 = v136;
                  v304 = 2082;
                  v305 = v137;
                  v306 = 1024;
                  v307 = 823;
                  v308 = 2114;
                  v309 = v18;
                  _os_log_impl(&_mh_execute_header, v133, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to add Key to NFTrustDB : %{public}@ -- Delete created key", buf, 0x2Cu);
                }

                v282[0] = @"purpleTrustOperationType";
                v282[1] = @"purpleTrustOperationErrorStep";
                v283[0] = &off_100331110;
                v283[1] = &off_1003311B8;
                v283[2] = &off_100331050;
                v282[2] = @"purpleTrustOperationCAErrorCode";
                v282[3] = @"purpleTrustOperationErrorCode";
                v138 = [NSNumber numberWithInteger:[v18 code]];
                v283[3] = v138;
                v139 = [NSDictionary dictionaryWithObjects:v283 forKeys:v282 count:4];

                sub_1002085BC(NFPeerPaymentAndPurpleTrustCALogger, v139);
                v140 = &off_1003395F8;
LABEL_133:
                [NFGeneralStatisticsCALogger updateAnalyticsGeneralTransactionStatistics:v140];
                (*(*(a1 + 56) + 16))();

                goto LABEL_110;
              }

              v141 = [*(a1 + 32) trustDB];
              v18 = sub_10001EE48(v141);

              if (v18)
              {
                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v142 = NFLogGetLogger();
                if (v142)
                {
                  v143 = v142;
                  v144 = object_getClass(*(a1 + 32));
                  v145 = class_isMetaClass(v144);
                  v243 = object_getClassName(*(a1 + 32));
                  v257 = sel_getName(*(a1 + 64));
                  v146 = 45;
                  if (v145)
                  {
                    v146 = 43;
                  }

                  v143(3, "%c[%{public}s %{public}s]:%i Failed to commit NFTrustDB : %{public}@ -- Delete created key", v146, v243, v257, 845, v18);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v147 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v147, OS_LOG_TYPE_ERROR))
                {
                  v148 = object_getClass(*(a1 + 32));
                  if (class_isMetaClass(v148))
                  {
                    v149 = 43;
                  }

                  else
                  {
                    v149 = 45;
                  }

                  v150 = object_getClassName(*(a1 + 32));
                  v151 = sel_getName(*(a1 + 64));
                  *buf = 67110146;
                  v301 = v149;
                  v302 = 2082;
                  v303 = v150;
                  v304 = 2082;
                  v305 = v151;
                  v306 = 1024;
                  v307 = 845;
                  v308 = 2114;
                  v309 = v18;
                  _os_log_impl(&_mh_execute_header, v147, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to commit NFTrustDB : %{public}@ -- Delete created key", buf, 0x2Cu);
                }

                v280[0] = @"purpleTrustOperationType";
                v280[1] = @"purpleTrustOperationErrorStep";
                v281[0] = &off_100331110;
                v281[1] = &off_1003311B8;
                v281[2] = &off_100331050;
                v280[2] = @"purpleTrustOperationCAErrorCode";
                v280[3] = @"purpleTrustOperationErrorCode";
                v152 = [NSNumber numberWithInteger:[v18 code]];
                v281[3] = v152;
                v139 = [NSDictionary dictionaryWithObjects:v281 forKeys:v280 count:4];

                sub_1002085BC(NFPeerPaymentAndPurpleTrustCALogger, v139);
                v140 = &off_100339620;
                goto LABEL_133;
              }

              v153 = NFSharedSignpostLog();
              if (os_signpost_enabled(v153))
              {
                *buf = 0;
                _os_signpost_emit_with_name_impl(&_mh_execute_header, v153, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "createKeyInSlot", &unk_1002E8B7A, buf, 2u);
              }

              v154 = [*(a1 + 32) secureElementWrapper];
              v155 = *(a1 + 48);
              v266 = 0;
              v18 = sub_1000AE30C(v154, v105, v155, &v266);
              v264 = v266;

              v156 = NFSharedSignpostLog();
              v157 = os_signpost_enabled(v156);
              if (v18)
              {
                if (v157)
                {
                  *buf = 0;
                  _os_signpost_emit_with_name_impl(&_mh_execute_header, v156, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "createKeyInSlot", "failed", buf, 2u);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v158 = NFLogGetLogger();
                if (v158)
                {
                  v159 = v158;
                  v160 = object_getClass(*(a1 + 32));
                  v161 = class_isMetaClass(v160);
                  v244 = object_getClassName(*(a1 + 32));
                  v258 = sel_getName(*(a1 + 64));
                  v162 = 45;
                  if (v161)
                  {
                    v162 = 43;
                  }

                  v159(3, "%c[%{public}s %{public}s]:%i Failed to create Key : %{public}@ ...", v162, v244, v258, 873, v18);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v163 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v163, OS_LOG_TYPE_ERROR))
                {
                  v164 = object_getClass(*(a1 + 32));
                  if (class_isMetaClass(v164))
                  {
                    v165 = 43;
                  }

                  else
                  {
                    v165 = 45;
                  }

                  v166 = object_getClassName(*(a1 + 32));
                  v167 = sel_getName(*(a1 + 64));
                  *buf = 67110146;
                  v301 = v165;
                  v302 = 2082;
                  v303 = v166;
                  v304 = 2082;
                  v305 = v167;
                  v306 = 1024;
                  v307 = 873;
                  v308 = 2114;
                  v309 = v18;
                  _os_log_impl(&_mh_execute_header, v163, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to create Key : %{public}@ ...", buf, 0x2Cu);
                }

                v278[0] = @"purpleTrustOperationType";
                v278[1] = @"purpleTrustOperationErrorStep";
                v279[0] = &off_100331110;
                v279[1] = &off_1003311D0;
                v279[2] = &off_1003311E8;
                v278[2] = @"purpleTrustOperationCAErrorCode";
                v278[3] = @"purpleTrustOperationErrorCode";
                v168 = [NSNumber numberWithInteger:[v18 code]];
                v279[3] = v168;
                v169 = [NSDictionary dictionaryWithObjects:v279 forKeys:v278 count:4];

                sub_1002085BC(NFPeerPaymentAndPurpleTrustCALogger, v169);
                v170 = [*(a1 + 32) deleteDBKey:v49];
                if (v170)
                {
                  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                  v171 = NFLogGetLogger();
                  if (v171)
                  {
                    v172 = v171;
                    v173 = object_getClass(*(a1 + 32));
                    v174 = class_isMetaClass(v173);
                    v245 = object_getClassName(*(a1 + 32));
                    v259 = sel_getName(*(a1 + 64));
                    v175 = 45;
                    if (v174)
                    {
                      v175 = 43;
                    }

                    v172(3, "%c[%{public}s %{public}s]:%i Failed to delete DB key after creation failure : %{public}@", v175, v245, v259, 889, v170);
                  }

                  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                  v176 = NFSharedLogGetLogger();
                  if (os_log_type_enabled(v176, OS_LOG_TYPE_ERROR))
                  {
                    v177 = object_getClass(*(a1 + 32));
                    if (class_isMetaClass(v177))
                    {
                      v178 = 43;
                    }

                    else
                    {
                      v178 = 45;
                    }

                    v179 = object_getClassName(*(a1 + 32));
                    v180 = sel_getName(*(a1 + 64));
                    *buf = 67110146;
                    v301 = v178;
                    v302 = 2082;
                    v303 = v179;
                    v304 = 2082;
                    v305 = v180;
                    v306 = 1024;
                    v307 = 889;
                    v308 = 2114;
                    v309 = v170;
                    _os_log_impl(&_mh_execute_header, v176, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to delete DB key after creation failure : %{public}@", buf, 0x2Cu);
                  }

                  v276[0] = @"purpleTrustOperationType";
                  v276[1] = @"purpleTrustOperationErrorStep";
                  v277[0] = &off_100331110;
                  v277[1] = &off_1003311D0;
                  v277[2] = &off_100331200;
                  v276[2] = @"purpleTrustOperationCAErrorCode";
                  v276[3] = @"purpleTrustOperationErrorCode";
                  v181 = [NSNumber numberWithInteger:[v170 code]];
                  v277[3] = v181;
                  v182 = [NSDictionary dictionaryWithObjects:v277 forKeys:v276 count:4];

                  sub_1002085BC(NFPeerPaymentAndPurpleTrustCALogger, v182);
                  [NFGeneralStatisticsCALogger updateAnalyticsGeneralTransactionStatistics:&off_100339648];
                  v169 = v182;
                }

                (*(*(a1 + 56) + 16))();
              }

              else
              {
                if (v157)
                {
                  *buf = 0;
                  _os_signpost_emit_with_name_impl(&_mh_execute_header, v156, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "createKeyInSlot", &unk_1002E8B7A, buf, 2u);
                }

                v183 = [*(a1 + 32) secureElementWrapper];
                v184 = [v183 eccCertificate];
                sub_100021FA0(v49, v184);

                sub_100021FB8(v49, v264);
                v185 = [*(a1 + 32) trustDBApplet];
                v186 = sub_100020EEC(v185, v49, v105);

                if (v186)
                {
                  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                  v187 = NFLogGetLogger();
                  if (v187)
                  {
                    v188 = v187;
                    v189 = object_getClass(*(a1 + 32));
                    v190 = class_isMetaClass(v189);
                    v246 = object_getClassName(*(a1 + 32));
                    v260 = sel_getName(*(a1 + 64));
                    v191 = 45;
                    if (v190)
                    {
                      v191 = 43;
                    }

                    v188(4, "%c[%{public}s %{public}s]:%i Failed to push Key in DB slot, will need to push it again next time : %{public}@ ...", v191, v246, v260, 915, v186);
                  }

                  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                  v192 = NFSharedLogGetLogger();
                  if (os_log_type_enabled(v192, OS_LOG_TYPE_ERROR))
                  {
                    v193 = object_getClass(*(a1 + 32));
                    if (class_isMetaClass(v193))
                    {
                      v194 = 43;
                    }

                    else
                    {
                      v194 = 45;
                    }

                    v195 = object_getClassName(*(a1 + 32));
                    v196 = sel_getName(*(a1 + 64));
                    *buf = 67110146;
                    v301 = v194;
                    v302 = 2082;
                    v303 = v195;
                    v304 = 2082;
                    v305 = v196;
                    v306 = 1024;
                    v307 = 915;
                    v308 = 2114;
                    v309 = v186;
                    _os_log_impl(&_mh_execute_header, v192, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to push Key in DB slot, will need to push it again next time : %{public}@ ...", buf, 0x2Cu);
                  }
                }

                v197 = [*(a1 + 32) trustDB];
                v18 = sub_10001EE48(v197);

                if (!v18)
                {
                  [*(a1 + 32) setKeys:0];
                  v221 = *(a1 + 56);
                  v222 = sub_100021E94(v49);
                  (*(v221 + 16))(v221, v222, 0);

                  v223 = *(a1 + 32);
                  v265 = 0;
                  v224 = [v223 getNumberOfKeys:&v265];
                  v225 = v265;
                  if (!v225)
                  {
                    v270 = @"totalPurpleTrustKeys";
                    v236 = [NSNumber numberWithUnsignedInteger:v224];
                    v271 = v236;
                    v237 = [NSDictionary dictionaryWithObjects:&v271 forKeys:&v270 count:1];
                    [NFGeneralStatisticsCALogger updateGeneralDeviceStatistic:v237];

                    v18 = v49;
                    goto LABEL_26;
                  }

                  v18 = v225;
                  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                  v226 = NFLogGetLogger();
                  if (v226)
                  {
                    v227 = v226;
                    v228 = object_getClass(*(a1 + 32));
                    v229 = class_isMetaClass(v228);
                    v230 = object_getClassName(*(a1 + 32));
                    v263 = sel_getName(*(a1 + 64));
                    v231 = 45;
                    if (v229)
                    {
                      v231 = 43;
                    }

                    v227(3, "%c[%{public}s %{public}s]:%i Could not get number of keys to post CA notification", v231, v230, v263, 978);
                  }

                  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                  v169 = NFSharedLogGetLogger();
                  if (os_log_type_enabled(v169, OS_LOG_TYPE_ERROR))
                  {
                    v232 = object_getClass(*(a1 + 32));
                    if (class_isMetaClass(v232))
                    {
                      v233 = 43;
                    }

                    else
                    {
                      v233 = 45;
                    }

                    v234 = object_getClassName(*(a1 + 32));
                    v235 = sel_getName(*(a1 + 64));
                    *buf = 67109890;
                    v301 = v233;
                    v302 = 2082;
                    v303 = v234;
                    v304 = 2082;
                    v305 = v235;
                    v306 = 1024;
                    v307 = 978;
                    _os_log_impl(&_mh_execute_header, v169, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Could not get number of keys to post CA notification", buf, 0x22u);
                  }

                  goto LABEL_196;
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v198 = NFLogGetLogger();
                if (v198)
                {
                  v199 = v198;
                  v200 = object_getClass(*(a1 + 32));
                  v201 = class_isMetaClass(v200);
                  v247 = object_getClassName(*(a1 + 32));
                  v261 = sel_getName(*(a1 + 64));
                  v202 = 45;
                  if (v201)
                  {
                    v202 = 43;
                  }

                  v199(3, "%c[%{public}s %{public}s]:%i Failed to commit NFTrustDB : %{public}@ -- Delete created key", v202, v247, v261, 920, v18);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v203 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v203, OS_LOG_TYPE_ERROR))
                {
                  v204 = object_getClass(*(a1 + 32));
                  if (class_isMetaClass(v204))
                  {
                    v205 = 43;
                  }

                  else
                  {
                    v205 = 45;
                  }

                  v206 = object_getClassName(*(a1 + 32));
                  v207 = sel_getName(*(a1 + 64));
                  *buf = 67110146;
                  v301 = v205;
                  v302 = 2082;
                  v303 = v206;
                  v304 = 2082;
                  v305 = v207;
                  v306 = 1024;
                  v307 = 920;
                  v308 = 2114;
                  v309 = v18;
                  _os_log_impl(&_mh_execute_header, v203, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to commit NFTrustDB : %{public}@ -- Delete created key", buf, 0x2Cu);
                }

                v274[0] = @"purpleTrustOperationType";
                v274[1] = @"purpleTrustOperationErrorStep";
                v275[0] = &off_100331110;
                v275[1] = &off_100331218;
                v275[2] = &off_100331050;
                v274[2] = @"purpleTrustOperationCAErrorCode";
                v274[3] = @"purpleTrustOperationErrorCode";
                v208 = [NSNumber numberWithInteger:[v18 code]];
                v275[3] = v208;
                v169 = [NSDictionary dictionaryWithObjects:v275 forKeys:v274 count:4];

                sub_1002085BC(NFPeerPaymentAndPurpleTrustCALogger, v169);
                [NFGeneralStatisticsCALogger updateAnalyticsGeneralTransactionStatistics:&off_100339670];
                v170 = [*(a1 + 32) deleteDBKey:v49];
                if (v170)
                {
                  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                  v209 = NFLogGetLogger();
                  if (v209)
                  {
                    v210 = v209;
                    v211 = object_getClass(*(a1 + 32));
                    v212 = class_isMetaClass(v211);
                    v248 = object_getClassName(*(a1 + 32));
                    v262 = sel_getName(*(a1 + 64));
                    v213 = 45;
                    if (v212)
                    {
                      v213 = 43;
                    }

                    v210(3, "%c[%{public}s %{public}s]:%i Failed to delete DB key after creation failure : %{public}@", v213, v248, v262, 938, v170);
                  }

                  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                  v214 = NFSharedLogGetLogger();
                  if (os_log_type_enabled(v214, OS_LOG_TYPE_ERROR))
                  {
                    v215 = object_getClass(*(a1 + 32));
                    if (class_isMetaClass(v215))
                    {
                      v216 = 43;
                    }

                    else
                    {
                      v216 = 45;
                    }

                    v217 = object_getClassName(*(a1 + 32));
                    v218 = sel_getName(*(a1 + 64));
                    *buf = 67110146;
                    v301 = v216;
                    v302 = 2082;
                    v303 = v217;
                    v304 = 2082;
                    v305 = v218;
                    v306 = 1024;
                    v307 = 938;
                    v308 = 2114;
                    v309 = v170;
                    _os_log_impl(&_mh_execute_header, v214, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to delete DB key after creation failure : %{public}@", buf, 0x2Cu);
                  }

                  v272[0] = @"purpleTrustOperationType";
                  v272[1] = @"purpleTrustOperationErrorStep";
                  v273[0] = &off_100331110;
                  v273[1] = &off_100331218;
                  v273[2] = &off_100331200;
                  v272[2] = @"purpleTrustOperationCAErrorCode";
                  v272[3] = @"purpleTrustOperationErrorCode";
                  v219 = [NSNumber numberWithInteger:[v170 code]];
                  v273[3] = v219;
                  v220 = [NSDictionary dictionaryWithObjects:v273 forKeys:v272 count:4];

                  sub_1002085BC(NFPeerPaymentAndPurpleTrustCALogger, v220);
                  [NFGeneralStatisticsCALogger updateAnalyticsGeneralTransactionStatistics:&off_100339698];
                  v169 = v220;
                }

                (*(*(a1 + 56) + 16))();
                [*(a1 + 32) deselectInstance];
              }

LABEL_196:
              goto LABEL_110;
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v92 = NFLogGetLogger();
            if (v92)
            {
              v93 = v92;
              v94 = object_getClass(*(a1 + 32));
              v95 = class_isMetaClass(v94);
              v96 = object_getClassName(*(a1 + 32));
              v253 = sel_getName(*(a1 + 64));
              v97 = 45;
              if (v95)
              {
                v97 = 43;
              }

              v93(3, "%c[%{public}s %{public}s]:%i Could not create DB Key", v97, v96, v253, 764);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v98 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
            {
              v99 = object_getClass(*(a1 + 32));
              if (class_isMetaClass(v99))
              {
                v100 = 43;
              }

              else
              {
                v100 = 45;
              }

              v101 = object_getClassName(*(a1 + 32));
              v102 = sel_getName(*(a1 + 64));
              *buf = 67109890;
              v301 = v100;
              v302 = 2082;
              v303 = v101;
              v304 = 2082;
              v305 = v102;
              v306 = 1024;
              v307 = 764;
              _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Could not create DB Key", buf, 0x22u);
            }

            v18 = sub_10013DC5C(&stru_10031EA18);
            v286[0] = @"purpleTrustOperationType";
            v286[1] = @"purpleTrustOperationErrorStep";
            v287[0] = &off_100331110;
            v287[1] = &off_100331158;
            v287[2] = &off_100331170;
            v286[2] = @"purpleTrustOperationCAErrorCode";
            v286[3] = @"purpleTrustOperationErrorCode";
            v103 = [NSNumber numberWithInteger:[v18 code]];
            v287[3] = v103;
            v19 = [NSDictionary dictionaryWithObjects:v287 forKeys:v286 count:4];

            sub_1002085BC(NFPeerPaymentAndPurpleTrustCALogger, v19);
            v51 = *(a1 + 56);
            v52 = sub_10013DC5C(@"Could not create DB Key");
LABEL_43:
            v53 = v52;
            (*(v51 + 16))(v51, 0, v52);

            goto LABEL_16;
          }

          v18 = sub_10013DE50();
          v292[0] = @"purpleTrustOperationType";
          v292[1] = @"purpleTrustOperationErrorStep";
          v293[0] = &off_100331110;
          v293[1] = &off_100331110;
          v293[2] = &off_1003310C8;
          v292[2] = @"purpleTrustOperationCAErrorCode";
          v292[3] = @"purpleTrustOperationErrorCode";
          v72 = [NSNumber numberWithInteger:[v18 code]];
          v293[3] = v72;
          v19 = [NSDictionary dictionaryWithObjects:v293 forKeys:v292 count:4];

          sub_1002085BC(NFPeerPaymentAndPurpleTrustCALogger, v19);
          v51 = *(a1 + 56);
          v71 = @"Could not create key with nil request";
        }

        else
        {
          v18 = sub_10013DE50();
          v294[0] = @"purpleTrustOperationType";
          v294[1] = @"purpleTrustOperationErrorStep";
          v295[0] = &off_100331110;
          v295[1] = &off_100331110;
          v295[2] = &off_1003310C8;
          v294[2] = @"purpleTrustOperationCAErrorCode";
          v294[3] = @"purpleTrustOperationErrorCode";
          v70 = [NSNumber numberWithInteger:[v18 code]];
          v295[3] = v70;
          v19 = [NSDictionary dictionaryWithObjects:v295 forKeys:v294 count:4];

          sub_1002085BC(NFPeerPaymentAndPurpleTrustCALogger, v19);
          v51 = *(a1 + 56);
          v71 = @"Could not create key with nil identifier";
        }

        v52 = sub_10013E33C(v71);
        goto LABEL_43;
      }
    }

    v18 = sub_10013DE50();
    v296[0] = @"purpleTrustOperationType";
    v296[1] = @"purpleTrustOperationErrorStep";
    v297[0] = &off_100331110;
    v297[1] = &off_100331110;
    v297[2] = &off_100331050;
    v296[2] = @"purpleTrustOperationCAErrorCode";
    v296[3] = @"purpleTrustOperationErrorCode";
    v50 = [NSNumber numberWithInteger:[v18 code]];
    v297[3] = v50;
    v19 = [NSDictionary dictionaryWithObjects:v297 forKeys:v296 count:4];

    sub_1002085BC(NFPeerPaymentAndPurpleTrustCALogger, v19);
    [NFGeneralStatisticsCALogger updateAnalyticsGeneralTransactionStatistics:&off_1003395A8];
    v51 = *(a1 + 56);
    v52 = sub_10013DE50();
    goto LABEL_43;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v2 = NFLogGetLogger();
  if (v2)
  {
    v3 = v2;
    v4 = object_getClass(*(a1 + 32));
    v5 = class_isMetaClass(v4);
    v6 = object_getClassName(*(a1 + 32));
    v7 = sel_getName(*(a1 + 64));
    v8 = [*(a1 + 32) sessionUID];
    v9 = 45;
    if (v5)
    {
      v9 = 43;
    }

    v3(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v9, v6, v7, 636, v8);
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
    v301 = v12;
    v302 = 2082;
    v303 = v13;
    v304 = 2082;
    v305 = v14;
    v306 = 1024;
    v307 = 636;
    v308 = 2114;
    v309 = v15;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  v16 = *(a1 + 56);
  if (v16)
  {
    v17 = [NSError alloc];
    v18 = [NSString stringWithUTF8String:"nfcd"];
    v298 = NSLocalizedDescriptionKey;
    v19 = [NSString stringWithUTF8String:"Session not active"];
    v299 = v19;
    v20 = [NSDictionary dictionaryWithObjects:&v299 forKeys:&v298 count:1];
    v21 = [v17 initWithDomain:v18 code:54 userInfo:v20];
    (*(v16 + 16))(v16, 0, v21);

LABEL_16:
LABEL_26:
  }
}

void sub_1000CD9B0(uint64_t a1)
{
  if (!*(a1 + 72))
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v23 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 80));
      v27 = 45;
      if (isMetaClass)
      {
        v27 = 43;
      }

      v23(3, "%c[%{public}s %{public}s]:%i Could not sign with nil callback", v27, ClassName, Name, 1000);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v18 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v28 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v28))
      {
        v29 = 43;
      }

      else
      {
        v29 = 45;
      }

      v30 = object_getClassName(*(a1 + 32));
      v31 = sel_getName(*(a1 + 80));
      *buf = 67109890;
      v282 = v29;
      v283 = 2082;
      v284 = v30;
      v285 = 2082;
      v286 = v31;
      v287 = 1024;
      v288 = 1000;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Could not sign with nil callback", buf, 0x22u);
    }

    goto LABEL_26;
  }

  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    v32 = [*(a1 + 32) trustDB];
    if (v32 && (v33 = v32, [*(a1 + 32) trustDBApplet], v34 = objc_claimAutoreleasedReturnValue(), v34, v33, v34))
    {
      if (*(a1 + 40))
      {
        v35 = [*(a1 + 32) trustDB];
        v36 = *(a1 + 40);
        v276 = 0;
        v37 = sub_100020308(v35, v36, &v276);
        v18 = v276;

        if (v37)
        {
          v307[0] = @"purpleTrustOperationType";
          v307[1] = @"purpleTrustOperationErrorStep";
          v308[0] = &off_100331230;
          v308[1] = &off_100331248;
          v308[2] = &off_100331050;
          v307[2] = @"purpleTrustOperationCAErrorCode";
          v307[3] = @"purpleTrustOperationErrorCode";
          v38 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v37 code]);
          v308[3] = v38;
          v39 = [NSDictionary dictionaryWithObjects:v308 forKeys:v307 count:4];

          sub_1002085BC(NFPeerPaymentAndPurpleTrustCALogger, v39);
          [NFGeneralStatisticsCALogger updateAnalyticsGeneralTransactionStatistics:&off_1003396E8];
LABEL_33:
          (*(*(a1 + 72) + 16))();
LABEL_34:

LABEL_35:
          goto LABEL_26;
        }

        if (!v18)
        {
          v18 = sub_10013E134(*(a1 + 40));
          v305[0] = @"purpleTrustOperationType";
          v305[1] = @"purpleTrustOperationErrorStep";
          v306[0] = &off_100331230;
          v306[1] = &off_100331248;
          v306[2] = &off_1003310F8;
          v305[2] = @"purpleTrustOperationCAErrorCode";
          v305[3] = @"purpleTrustOperationErrorCode";
          v60 = [NSNumber numberWithInteger:[v18 code]];
          v306[3] = v60;
          v19 = [NSDictionary dictionaryWithObjects:v306 forKeys:v305 count:4];

          sub_1002085BC(NFPeerPaymentAndPurpleTrustCALogger, v19);
          (*(*(a1 + 72) + 16))();
          goto LABEL_16;
        }

        v45 = v18[3].isa;

        if (!v45)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v61 = NFLogGetLogger();
          if (v61)
          {
            v62 = v61;
            v63 = object_getClass(*(a1 + 32));
            v64 = class_isMetaClass(v63);
            v65 = object_getClassName(*(a1 + 32));
            v66 = sel_getName(*(a1 + 80));
            v67 = v18[1].isa;
            v68 = 45;
            if (v64)
            {
              v68 = 43;
            }

            v62(3, "%c[%{public}s %{public}s]:%i Key %{public}@ has nil keyAttestation, looks like previous delete didn't finish correctly, try to delete again ...", v68, v65, v66, 1100, v67);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v69 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
          {
            v70 = object_getClass(*(a1 + 32));
            if (class_isMetaClass(v70))
            {
              v71 = 43;
            }

            else
            {
              v71 = 45;
            }

            v72 = object_getClassName(*(a1 + 32));
            v73 = sel_getName(*(a1 + 80));
            v74 = v18[1].isa;
            *buf = 67110146;
            v282 = v71;
            v283 = 2082;
            v284 = v72;
            v285 = 2082;
            v286 = v73;
            v287 = 1024;
            v288 = 1100;
            v289 = 2114;
            v290 = v74;
            _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Key %{public}@ has nil keyAttestation, looks like previous delete didn't finish correctly, try to delete again ...", buf, 0x2Cu);
          }

          v37 = [*(a1 + 32) deleteDBKey:v18];
          if (v37)
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v75 = NFLogGetLogger();
            if (v75)
            {
              v76 = v75;
              v77 = object_getClass(*(a1 + 32));
              v78 = class_isMetaClass(v77);
              v254 = object_getClassName(*(a1 + 32));
              v262 = sel_getName(*(a1 + 80));
              v79 = 45;
              if (v78)
              {
                v79 = 43;
              }

              v76(3, "%c[%{public}s %{public}s]:%i Delete failed : %{public}@", v79, v254, v262, 1103, v37);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v80 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
            {
              v81 = object_getClass(*(a1 + 32));
              if (class_isMetaClass(v81))
              {
                v82 = 43;
              }

              else
              {
                v82 = 45;
              }

              v83 = object_getClassName(*(a1 + 32));
              v84 = sel_getName(*(a1 + 80));
              *buf = 67110146;
              v282 = v82;
              v283 = 2082;
              v284 = v83;
              v285 = 2082;
              v286 = v84;
              v287 = 1024;
              v288 = 1103;
              v289 = 2114;
              v290 = v37;
              _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Delete failed : %{public}@", buf, 0x2Cu);
            }
          }

          v85 = *(a1 + 72);
          v86 = sub_10013E134(*(a1 + 40));
          (*(v85 + 16))(v85, 0, v86);

          goto LABEL_35;
        }

        if (!*(a1 + 48))
        {
          v37 = sub_10013E33C(@"signRequest is nil");
          v303[0] = @"purpleTrustOperationType";
          v303[1] = @"purpleTrustOperationErrorStep";
          v304[0] = &off_100331230;
          v304[1] = &off_100331248;
          v304[2] = &off_1003310C8;
          v303[2] = @"purpleTrustOperationCAErrorCode";
          v303[3] = @"purpleTrustOperationErrorCode";
          v57 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v37 code]);
          v304[3] = v57;
          v58 = v304;
          v59 = v303;
LABEL_77:
          v39 = [NSDictionary dictionaryWithObjects:v58 forKeys:v59 count:4];

          sub_1002085BC(NFPeerPaymentAndPurpleTrustCALogger, v39);
          goto LABEL_33;
        }

        v46 = [*(a1 + 32) selectInstance];
        if (v46)
        {
          v37 = v46;
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v47 = NFLogGetLogger();
          if (v47)
          {
            v48 = v47;
            v49 = object_getClass(*(a1 + 32));
            v50 = class_isMetaClass(v49);
            v253 = object_getClassName(*(a1 + 32));
            v261 = sel_getName(*(a1 + 80));
            v51 = 45;
            if (v50)
            {
              v51 = 43;
            }

            v48(3, "%c[%{public}s %{public}s]:%i Failed to select instance : %{public}@", v51, v253, v261, 1137, v37);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v52 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
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
            v56 = sel_getName(*(a1 + 80));
            *buf = 67110146;
            v282 = v54;
            v283 = 2082;
            v284 = v55;
            v285 = 2082;
            v286 = v56;
            v287 = 1024;
            v288 = 1137;
            v289 = 2114;
            v290 = v37;
            _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to select instance : %{public}@", buf, 0x2Cu);
          }

          v301[0] = @"purpleTrustOperationType";
          v301[1] = @"purpleTrustOperationErrorStep";
          v302[0] = &off_100331230;
          v302[1] = &off_100331260;
          v302[2] = &off_1003311A0;
          v301[2] = @"purpleTrustOperationCAErrorCode";
          v301[3] = @"purpleTrustOperationErrorCode";
          v57 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v37 code]);
          v302[3] = v57;
          v58 = v302;
          v59 = v301;
          goto LABEL_77;
        }

        if (*(a1 + 56))
        {
LABEL_79:
          [*(a1 + 32) setIsInstanceSelected:0];
          v87 = NFSharedSignpostLog();
          if (os_signpost_enabled(v87))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v87, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "signWithKeyInSlotAID", &unk_1002E8B7A, buf, 2u);
          }

          v88 = [*(a1 + 32) secureElementWrapper];
          v89 = v18[4].isa;
          v90 = [*(a1 + 32) trustDBApplet];
          v91 = [v90 instanceAID];
          v93 = *(a1 + 56);
          v92 = *(a1 + 64);
          v94 = *(a1 + 48);
          v95 = [*(a1 + 32) uid];
          v274 = 0;
          v96 = sub_1000AF9E4(v88, v89, v91, v94, v92, v93, v95, &v274);
          v97 = v274;

          v98 = NFSharedSignpostLog();
          v99 = os_signpost_enabled(v98);
          if (!v96)
          {
            if (v99)
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v98, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "signWithKeyInSlotAID", &unk_1002E8B7A, buf, 2u);
            }

            v149 = [v97 signResponse];
            v150 = [v149 counterValue];

            if (v150)
            {
              v151 = [v97 signResponse];
              v152 = [v151 counterValue];
              sub_100021E3C(v18, v152);
            }

            v153 = [*(a1 + 32) trustDB];
            v154 = sub_10001EE48(v153);

            if (v154)
            {
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v155 = NFLogGetLogger();
              if (v155)
              {
                v156 = v155;
                v157 = object_getClass(*(a1 + 32));
                v158 = class_isMetaClass(v157);
                v256 = object_getClassName(*(a1 + 32));
                v265 = sel_getName(*(a1 + 80));
                v159 = 45;
                if (v158)
                {
                  v159 = 43;
                }

                v156(3, "%c[%{public}s %{public}s]:%i Failed to commit NFTrustDB : %{public}@ -- Counter is out of sync", v159, v256, v265, 1327, v154);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v160 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v160, OS_LOG_TYPE_ERROR))
              {
                v161 = object_getClass(*(a1 + 32));
                if (class_isMetaClass(v161))
                {
                  v162 = 43;
                }

                else
                {
                  v162 = 45;
                }

                v163 = object_getClassName(*(a1 + 32));
                v164 = sel_getName(*(a1 + 80));
                *buf = 67110146;
                v282 = v162;
                v283 = 2082;
                v284 = v163;
                v285 = 2082;
                v286 = v164;
                v287 = 1024;
                v288 = 1327;
                v289 = 2114;
                v290 = v154;
                _os_log_impl(&_mh_execute_header, v160, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to commit NFTrustDB : %{public}@ -- Counter is out of sync", buf, 0x2Cu);
              }
            }

            v165 = [v97 signResponse];
            v166 = sub_100021E94(v18);
            [v165 setKey:v166];

            [NFGeneralStatisticsCALogger updateAnalyticsGeneralTransactionStatistics:&off_100339738];
            v167 = *(a1 + 32);
            v273 = v154;
            v168 = [v167 getNumberOfKeys:&v273];
            v118 = v273;

            if (v118)
            {
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v169 = NFLogGetLogger();
              if (v169)
              {
                v170 = v169;
                v171 = object_getClass(*(a1 + 32));
                v172 = class_isMetaClass(v171);
                v173 = object_getClassName(*(a1 + 32));
                v266 = sel_getName(*(a1 + 80));
                v174 = 45;
                if (v172)
                {
                  v174 = 43;
                }

                v170(3, "%c[%{public}s %{public}s]:%i Could not get number of keys to post CA notification", v174, v173, v266, 1339);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v175 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v175, OS_LOG_TYPE_ERROR))
              {
                v176 = object_getClass(*(a1 + 32));
                if (class_isMetaClass(v176))
                {
                  v177 = 43;
                }

                else
                {
                  v177 = 45;
                }

                v178 = object_getClassName(*(a1 + 32));
                v179 = sel_getName(*(a1 + 80));
                *buf = 67109890;
                v282 = v177;
                v283 = 2082;
                v284 = v178;
                v285 = 2082;
                v286 = v179;
                v287 = 1024;
                v288 = 1339;
                _os_log_impl(&_mh_execute_header, v175, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Could not get number of keys to post CA notification", buf, 0x22u);
              }
            }

            else
            {
              v277 = @"totalPurpleTrustKeys";
              v175 = [NSNumber numberWithUnsignedInteger:v168];
              v278 = v175;
              v215 = [NSDictionary dictionaryWithObjects:&v278 forKeys:&v277 count:1];
              [NFGeneralStatisticsCALogger updateGeneralDeviceStatistic:v215];
            }

            (*(*(a1 + 72) + 16))();
            goto LABEL_181;
          }

          if (v99)
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v98, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "signWithKeyInSlotAID", "failed", buf, 2u);
          }

          v100 = [v96 domain];
          if ([v100 isEqualToString:@"GP"])
          {
            v101 = [v96 code];

            if (v101 == 27272)
            {
              v272 = v97;
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v102 = NFLogGetLogger();
              if (v102)
              {
                v103 = v102;
                v104 = object_getClass(*(a1 + 32));
                v105 = class_isMetaClass(v104);
                v106 = object_getClassName(*(a1 + 32));
                v107 = sel_getName(*(a1 + 80));
                v108 = v18[1].isa;
                v109 = v18[4].isa;
                v110 = 45;
                if (v105)
                {
                  v110 = 43;
                }

                v103(3, "%c[%{public}s %{public}s]:%i Key with identifier %{public}@ is supposed to be in slot %{public}@ but slot is empty, deleting key from database ...", v110, v106, v107, 1291, v108, v109);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v111 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
              {
                v112 = object_getClass(*(a1 + 32));
                if (class_isMetaClass(v112))
                {
                  v113 = 43;
                }

                else
                {
                  v113 = 45;
                }

                v114 = object_getClassName(*(a1 + 32));
                v115 = sel_getName(*(a1 + 80));
                v116 = v18[1].isa;
                v117 = v18[4].isa;
                *buf = 67110402;
                v282 = v113;
                v283 = 2082;
                v284 = v114;
                v285 = 2082;
                v286 = v115;
                v287 = 1024;
                v288 = 1291;
                v289 = 2114;
                v290 = v116;
                v291 = 2114;
                v292 = v117;
                _os_log_impl(&_mh_execute_header, v111, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Key with identifier %{public}@ is supposed to be in slot %{public}@ but slot is empty, deleting key from database ...", buf, 0x36u);
              }

              v118 = [*(a1 + 32) deleteDBKey:v18];

              if (v118)
              {
                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v119 = NFLogGetLogger();
                if (v119)
                {
                  v120 = v119;
                  v121 = object_getClass(*(a1 + 32));
                  v122 = class_isMetaClass(v121);
                  v255 = object_getClassName(*(a1 + 32));
                  v263 = sel_getName(*(a1 + 80));
                  v123 = 45;
                  if (v122)
                  {
                    v123 = 43;
                  }

                  v120(3, "%c[%{public}s %{public}s]:%i Could not delete dbKey : %{public}@", v123, v255, v263, 1294, v118);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v124 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
                {
                  v125 = object_getClass(*(a1 + 32));
                  if (class_isMetaClass(v125))
                  {
                    v126 = 43;
                  }

                  else
                  {
                    v126 = 45;
                  }

                  v127 = object_getClassName(*(a1 + 32));
                  v128 = sel_getName(*(a1 + 80));
                  *buf = 67110146;
                  v282 = v126;
                  v283 = 2082;
                  v284 = v127;
                  v285 = 2082;
                  v286 = v128;
                  v287 = 1024;
                  v288 = 1294;
                  v289 = 2114;
                  v290 = v118;
                  _os_log_impl(&_mh_execute_header, v124, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Could not delete dbKey : %{public}@", buf, 0x2Cu);
                }
              }

              v129 = *(a1 + 72);
              v130 = sub_10013E134(*(a1 + 40));
              (*(v129 + 16))(v129, 0, v130);

              v97 = v272;
LABEL_181:

              goto LABEL_26;
            }
          }

          else
          {
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v180 = NFLogGetLogger();
          if (v180)
          {
            v181 = v180;
            v182 = object_getClass(*(a1 + 32));
            v183 = class_isMetaClass(v182);
            v257 = object_getClassName(*(a1 + 32));
            v267 = sel_getName(*(a1 + 80));
            v184 = 45;
            if (v183)
            {
              v184 = 43;
            }

            v181(3, "%c[%{public}s %{public}s]:%i Failed to sign with Key : %{public}@ ...", v184, v257, v267, 1302, v96);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v185 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v185, OS_LOG_TYPE_ERROR))
          {
            v186 = object_getClass(*(a1 + 32));
            if (class_isMetaClass(v186))
            {
              v187 = 43;
            }

            else
            {
              v187 = 45;
            }

            v188 = object_getClassName(*(a1 + 32));
            v189 = sel_getName(*(a1 + 80));
            *buf = 67110146;
            v282 = v187;
            v283 = 2082;
            v284 = v188;
            v285 = 2082;
            v286 = v189;
            v287 = 1024;
            v288 = 1302;
            v289 = 2114;
            v290 = v96;
            _os_log_impl(&_mh_execute_header, v185, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to sign with Key : %{public}@ ...", buf, 0x2Cu);
          }

          v279[0] = @"purpleTrustOperationType";
          v279[1] = @"purpleTrustOperationErrorStep";
          v280[0] = &off_100331230;
          v280[1] = &off_1003312D8;
          v280[2] = &off_100331050;
          v279[2] = @"purpleTrustOperationCAErrorCode";
          v279[3] = @"purpleTrustOperationErrorCode";
          v190 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v96 code]);
          v280[3] = v190;
          v191 = [NSDictionary dictionaryWithObjects:v280 forKeys:v279 count:4];

          sub_1002085BC(NFPeerPaymentAndPurpleTrustCALogger, v191);
          [NFGeneralStatisticsCALogger updateAnalyticsGeneralTransactionStatistics:&off_100339710];
          (*(*(a1 + 72) + 16))();

          v118 = v96;
          goto LABEL_181;
        }

        v131 = *(a1 + 64);
        v132 = sub_100021E54(v18);
        if (v131)
        {
          if (v132)
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v133 = NFLogGetLogger();
            if (v133)
            {
              v134 = v133;
              v135 = object_getClass(*(a1 + 32));
              v136 = class_isMetaClass(v135);
              v137 = object_getClassName(*(a1 + 32));
              v264 = sel_getName(*(a1 + 80));
              v138 = 45;
              if (v136)
              {
                v138 = 43;
              }

              v134(3, "%c[%{public}s %{public}s]:%i Could not sign, NFTrustKey requires local validation", v138, v137, v264, 1226);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v139 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v139, OS_LOG_TYPE_ERROR))
            {
              v140 = object_getClass(*(a1 + 32));
              if (class_isMetaClass(v140))
              {
                v141 = 43;
              }

              else
              {
                v141 = 45;
              }

              v142 = object_getClassName(*(a1 + 32));
              v143 = sel_getName(*(a1 + 80));
              *buf = 67109890;
              v282 = v141;
              v283 = 2082;
              v284 = v142;
              v285 = 2082;
              v286 = v143;
              v287 = 1024;
              v288 = 1226;
              _os_log_impl(&_mh_execute_header, v139, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Could not sign, NFTrustKey requires local validation", buf, 0x22u);
            }

            v37 = sub_10013DF40();
            v295[0] = @"purpleTrustOperationType";
            v295[1] = @"purpleTrustOperationErrorStep";
            v296[0] = &off_100331230;
            v296[1] = &off_100331278;
            v296[2] = &off_100331290;
            v295[2] = @"purpleTrustOperationCAErrorCode";
            v295[3] = @"purpleTrustOperationErrorCode";
            v144 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v37 code]);
            v296[3] = v144;
            v145 = v296;
            v146 = v295;
          }

          else
          {
            if (*(a1 + 56) || !*(a1 + 64))
            {
              goto LABEL_79;
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v204 = NFLogGetLogger();
            if (v204)
            {
              v205 = v204;
              v206 = object_getClass(*(a1 + 32));
              v207 = class_isMetaClass(v206);
              v208 = object_getClassName(*(a1 + 32));
              v269 = sel_getName(*(a1 + 80));
              v209 = 45;
              if (v207)
              {
                v209 = 43;
              }

              v205(3, "%c[%{public}s %{public}s]:%i Could not sign, NFECommercePaymentRequest requires local validation", v209, v208, v269, 1248);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v210 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v210, OS_LOG_TYPE_ERROR))
            {
              v211 = object_getClass(*(a1 + 32));
              if (class_isMetaClass(v211))
              {
                v212 = 43;
              }

              else
              {
                v212 = 45;
              }

              v213 = object_getClassName(*(a1 + 32));
              v214 = sel_getName(*(a1 + 80));
              *buf = 67109890;
              v282 = v212;
              v283 = 2082;
              v284 = v213;
              v285 = 2082;
              v286 = v214;
              v287 = 1024;
              v288 = 1248;
              _os_log_impl(&_mh_execute_header, v210, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Could not sign, NFECommercePaymentRequest requires local validation", buf, 0x22u);
            }

            v37 = sub_10013DF40();
            v293[0] = @"purpleTrustOperationType";
            v293[1] = @"purpleTrustOperationErrorStep";
            v294[0] = &off_100331230;
            v294[1] = &off_100331278;
            v294[2] = &off_100331290;
            v293[2] = @"purpleTrustOperationCAErrorCode";
            v293[3] = @"purpleTrustOperationErrorCode";
            v144 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v37 code]);
            v294[3] = v144;
            v145 = v294;
            v146 = v293;
          }

          v39 = [NSDictionary dictionaryWithObjects:v145 forKeys:v146 count:4];

          sub_1002085BC(NFPeerPaymentAndPurpleTrustCALogger, v39);
          v147 = *(a1 + 72);
          v148 = sub_10013DF40();
          (*(v147 + 16))(v147, 0, v148);

          goto LABEL_34;
        }

        if (v132)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v192 = NFLogGetLogger();
          if (v192)
          {
            v193 = v192;
            v194 = object_getClass(*(a1 + 32));
            v195 = class_isMetaClass(v194);
            v196 = object_getClassName(*(a1 + 32));
            v268 = sel_getName(*(a1 + 80));
            v197 = 45;
            if (v195)
            {
              v197 = 43;
            }

            v193(3, "%c[%{public}s %{public}s]:%i Could not sign, NFTrustKey requires local validation", v197, v196, v268, 1162);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v198 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v198, OS_LOG_TYPE_ERROR))
          {
            v199 = object_getClass(*(a1 + 32));
            if (class_isMetaClass(v199))
            {
              v200 = 43;
            }

            else
            {
              v200 = 45;
            }

            v201 = object_getClassName(*(a1 + 32));
            v202 = sel_getName(*(a1 + 80));
            *buf = 67109890;
            v282 = v200;
            v283 = 2082;
            v284 = v201;
            v285 = 2082;
            v286 = v202;
            v287 = 1024;
            v288 = 1162;
            _os_log_impl(&_mh_execute_header, v198, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Could not sign, NFTrustKey requires local validation", buf, 0x22u);
          }

          v19 = sub_10013DF40();
          v299[0] = @"purpleTrustOperationType";
          v299[1] = @"purpleTrustOperationErrorStep";
          v300[0] = &off_100331230;
          v300[1] = &off_100331278;
          v300[2] = &off_100331290;
          v299[2] = @"purpleTrustOperationCAErrorCode";
          v299[3] = @"purpleTrustOperationErrorCode";
          v203 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v19 code]);
          v300[3] = v203;
          v43 = [NSDictionary dictionaryWithObjects:v300 forKeys:v299 count:4];

          sub_1002085BC(NFPeerPaymentAndPurpleTrustCALogger, v43);
          (*(*(a1 + 72) + 16))(*(a1 + 72), 0, v19);
        }

        else
        {
          v216 = NFSharedSignpostLog();
          if (os_signpost_enabled(v216))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v216, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "signWithKeyInSlotRequest", &unk_1002E8B7A, buf, 2u);
          }

          v217 = [*(a1 + 32) secureElementWrapper];
          v218 = v18[4].isa;
          v219 = *(a1 + 48);
          v275 = 0;
          v220 = sub_1000AF4DC(v217, v218, v219, &v275);
          v43 = v275;

          v221 = NFSharedSignpostLog();
          v222 = os_signpost_enabled(v221);
          if (v220)
          {
            if (v222)
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v221, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "signWithKeyInSlotRequest", "failed", buf, 2u);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v223 = NFLogGetLogger();
            if (v223)
            {
              v224 = v223;
              v225 = object_getClass(*(a1 + 32));
              v226 = class_isMetaClass(v225);
              v258 = object_getClassName(*(a1 + 32));
              v270 = sel_getName(*(a1 + 80));
              v227 = 45;
              if (v226)
              {
                v227 = 43;
              }

              v224(3, "%c[%{public}s %{public}s]:%i Failed to sign without LocalValidation : %{public}@", v227, v258, v270, 1191, v220);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v228 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v228, OS_LOG_TYPE_ERROR))
            {
              v229 = object_getClass(*(a1 + 32));
              if (class_isMetaClass(v229))
              {
                v230 = 43;
              }

              else
              {
                v230 = 45;
              }

              v231 = object_getClassName(*(a1 + 32));
              v232 = sel_getName(*(a1 + 80));
              *buf = 67110146;
              v282 = v230;
              v283 = 2082;
              v284 = v231;
              v285 = 2082;
              v286 = v232;
              v287 = 1024;
              v288 = 1191;
              v289 = 2114;
              v290 = v220;
              _os_log_impl(&_mh_execute_header, v228, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to sign without LocalValidation : %{public}@", buf, 0x2Cu);
            }

            v297[0] = @"purpleTrustOperationType";
            v297[1] = @"purpleTrustOperationErrorStep";
            v298[0] = &off_100331230;
            v298[1] = &off_1003312A8;
            v298[2] = &off_1003312C0;
            v297[2] = @"purpleTrustOperationCAErrorCode";
            v297[3] = @"purpleTrustOperationErrorCode";
            v233 = [NSNumber numberWithInteger:[(objc_class *)v220 code]];
            v298[3] = v233;
            v234 = [NSDictionary dictionaryWithObjects:v298 forKeys:v297 count:4];

            sub_1002085BC(NFPeerPaymentAndPurpleTrustCALogger, v234);
            v19 = v220;
            (*(*(a1 + 72) + 16))();
          }

          else
          {
            if (v222)
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v221, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "signWithKeyInSlotRequest", &unk_1002E8B7A, buf, 2u);
            }

            v235 = [v43 counterValue];

            if (v235)
            {
              v236 = [v43 counterValue];
              sub_100021E3C(v18, v236);
            }

            v237 = [*(a1 + 32) trustDB];
            v238 = sub_10001EE48(v237);

            v239 = v238;
            if (v238)
            {
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v240 = NFLogGetLogger();
              if (v240)
              {
                v241 = v240;
                v242 = object_getClass(*(a1 + 32));
                v243 = class_isMetaClass(v242);
                v259 = object_getClassName(*(a1 + 32));
                v271 = sel_getName(*(a1 + 80));
                v244 = 45;
                if (v243)
                {
                  v244 = 43;
                }

                v241(3, "%c[%{public}s %{public}s]:%i Failed to commit NFTrustDB : %{public}@ -- Counter is out of sync", v244, v259, v271, 1215, v239);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v245 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v245, OS_LOG_TYPE_ERROR))
              {
                v246 = object_getClass(*(a1 + 32));
                if (class_isMetaClass(v246))
                {
                  v247 = 43;
                }

                else
                {
                  v247 = 45;
                }

                v248 = object_getClassName(*(a1 + 32));
                v249 = sel_getName(*(a1 + 80));
                *buf = 67110146;
                v282 = v247;
                v283 = 2082;
                v284 = v248;
                v285 = 2082;
                v286 = v249;
                v287 = 1024;
                v288 = 1215;
                v289 = 2114;
                v290 = v239;
                _os_log_impl(&_mh_execute_header, v245, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to commit NFTrustDB : %{public}@ -- Counter is out of sync", buf, 0x2Cu);
              }
            }

            v250 = sub_100021E94(v18);
            [v43 setKey:v250];

            v251 = *(a1 + 72);
            v252 = [NFTrustPaymentSignResponse paymentSignResponseWithSignResponse:v43 paymentResponse:0];
            (*(v251 + 16))(v251, v252, 0);

            v19 = v239;
          }
        }

LABEL_38:

        goto LABEL_16;
      }

      v18 = sub_10013E33C(@"keyIdentifier is nil");
      v309[0] = @"purpleTrustOperationType";
      v309[1] = @"purpleTrustOperationErrorStep";
      v310[0] = &off_100331230;
      v310[1] = &off_100331230;
      v310[2] = &off_1003310C8;
      v309[2] = @"purpleTrustOperationCAErrorCode";
      v309[3] = @"purpleTrustOperationErrorCode";
      v44 = [NSNumber numberWithInteger:[v18 code]];
      v310[3] = v44;
      v19 = [NSDictionary dictionaryWithObjects:v310 forKeys:v309 count:4];

      sub_1002085BC(NFPeerPaymentAndPurpleTrustCALogger, v19);
      v41 = *(a1 + 72);
      v42 = sub_10013E33C(@"Could not sign with nil identifier");
    }

    else
    {
      v18 = sub_10013DE50();
      v311[0] = @"purpleTrustOperationType";
      v311[1] = @"purpleTrustOperationErrorStep";
      v312[0] = &off_100331230;
      v312[1] = &off_100331230;
      v312[2] = &off_100331050;
      v311[2] = @"purpleTrustOperationCAErrorCode";
      v311[3] = @"purpleTrustOperationErrorCode";
      v40 = [NSNumber numberWithInteger:[v18 code]];
      v312[3] = v40;
      v19 = [NSDictionary dictionaryWithObjects:v312 forKeys:v311 count:4];

      sub_1002085BC(NFPeerPaymentAndPurpleTrustCALogger, v19);
      [NFGeneralStatisticsCALogger updateAnalyticsGeneralTransactionStatistics:&off_1003396C0];
      v41 = *(a1 + 72);
      v42 = sub_10013DE50();
    }

    v43 = v42;
    (*(v41 + 16))(v41, 0, v42);
    goto LABEL_38;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v2 = NFLogGetLogger();
  if (v2)
  {
    v3 = v2;
    v4 = object_getClass(*(a1 + 32));
    v5 = class_isMetaClass(v4);
    v6 = object_getClassName(*(a1 + 32));
    v7 = sel_getName(*(a1 + 80));
    v8 = [*(a1 + 32) sessionUID];
    v9 = 45;
    if (v5)
    {
      v9 = 43;
    }

    v3(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v9, v6, v7, 1004, v8);
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
    v14 = sel_getName(*(a1 + 80));
    v15 = [*(a1 + 32) sessionUID];
    *buf = 67110146;
    v282 = v12;
    v283 = 2082;
    v284 = v13;
    v285 = 2082;
    v286 = v14;
    v287 = 1024;
    v288 = 1004;
    v289 = 2114;
    v290 = v15;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  v16 = *(a1 + 72);
  if (v16)
  {
    v17 = [NSError alloc];
    v18 = [NSString stringWithUTF8String:"nfcd"];
    v313 = NSLocalizedDescriptionKey;
    v19 = [NSString stringWithUTF8String:"Session not active"];
    v314 = v19;
    v20 = [NSDictionary dictionaryWithObjects:&v314 forKeys:&v313 count:1];
    v21 = [v17 initWithDomain:v18 code:54 userInfo:v20];
    (*(v16 + 16))(v16, 0, v21);

LABEL_16:
LABEL_26:
  }
}

void sub_1000CFF80(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 objectForKeyedSubscript:@"EventType"];
    if (!v3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v21 = Logger;
        Class = object_getClass(*(a1 + 40));
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(*(a1 + 40));
        Name = sel_getName(*(a1 + 48));
        v25 = 45;
        if (isMetaClass)
        {
          v25 = 43;
        }

        v21(3, "%c[%{public}s %{public}s]:%i EventType missing or not NSString!!", v25, ClassName, Name, 81);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v4 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
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
        v29 = sel_getName(*(a1 + 48));
        *buf = 67109890;
        v93 = v27;
        v94 = 2082;
        v95 = v28;
        v96 = 2082;
        v97 = v29;
        v98 = 1024;
        v99 = 81;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i EventType missing or not NSString!!", buf, 0x22u);
      }

      goto LABEL_80;
    }

    v4 = [*(a1 + 32) objectForKeyedSubscript:@"appletIdentifier"];
    if (!v4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v40 = NFLogGetLogger();
      if (v40)
      {
        v41 = v40;
        v42 = object_getClass(*(a1 + 40));
        v43 = class_isMetaClass(v42);
        v44 = object_getClassName(*(a1 + 40));
        v88 = sel_getName(*(a1 + 48));
        v45 = 45;
        if (v43)
        {
          v45 = 43;
        }

        v41(3, "%c[%{public}s %{public}s]:%i appletIdentifier missing or not NSString!!", v45, v44, v88, 87);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v5 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v46 = object_getClass(*(a1 + 40));
        if (class_isMetaClass(v46))
        {
          v47 = 43;
        }

        else
        {
          v47 = 45;
        }

        v48 = object_getClassName(*(a1 + 40));
        v49 = sel_getName(*(a1 + 48));
        *buf = 67109890;
        v93 = v47;
        v94 = 2082;
        v95 = v48;
        v96 = 2082;
        v97 = v49;
        v98 = 1024;
        v99 = 87;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i appletIdentifier missing or not NSString!!", buf, 0x22u);
      }

      goto LABEL_79;
    }

    v5 = v3;
    v6 = [NSData NF_dataWithHexString:v4];
    if (v6)
    {
      if ([v5 isEqualToString:@"StartEvent"])
      {
        v7 = [[NFContactlessPaymentStartEvent alloc] initWithDictionary:*(a1 + 32)];
        if (v7)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v8 = NFLogGetLogger();
          if (v8)
          {
            v9 = v8;
            v10 = object_getClass(*(a1 + 40));
            v11 = class_isMetaClass(v10);
            v82 = object_getClassName(*(a1 + 40));
            v85 = sel_getName(*(a1 + 48));
            v12 = 45;
            if (v11)
            {
              v12 = 43;
            }

            v9(6, "%c[%{public}s %{public}s]:%i %@", v12, v82, v85, 104, v7);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v13 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v14 = object_getClass(*(a1 + 40));
            if (class_isMetaClass(v14))
            {
              v15 = 43;
            }

            else
            {
              v15 = 45;
            }

            v16 = object_getClassName(*(a1 + 40));
            v17 = sel_getName(*(a1 + 48));
            *buf = 67110146;
            v93 = v15;
            v94 = 2082;
            v95 = v16;
            v96 = 2082;
            v97 = v17;
            v98 = 1024;
            v99 = 104;
            v100 = 2112;
            v101 = v7;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %@", buf, 0x2Cu);
          }

          v18 = sub_1000D094C(*(a1 + 40), v6, *(a1 + 32), v7);
          WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 40));
          [WeakRetained handleTransactionStartEvent:v7 atlData:*(a1 + 32) caData:v18];
LABEL_67:

          goto LABEL_78;
        }

        goto LABEL_78;
      }

      if ([v5 isEqualToString:@"EndEvent"])
      {
        v7 = [[NFContactlessPaymentEndEvent alloc] initWithDictionary:*(a1 + 32)];
        if (v7)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v63 = NFLogGetLogger();
          if (v63)
          {
            v64 = v63;
            v65 = object_getClass(*(a1 + 40));
            v66 = class_isMetaClass(v65);
            v83 = object_getClassName(*(a1 + 40));
            v90 = sel_getName(*(a1 + 48));
            v67 = 45;
            if (v66)
            {
              v67 = 43;
            }

            v64(6, "%c[%{public}s %{public}s]:%i %@", v67, v83, v90, 115, v7);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v68 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
          {
            v69 = object_getClass(*(a1 + 40));
            if (class_isMetaClass(v69))
            {
              v70 = 43;
            }

            else
            {
              v70 = 45;
            }

            v71 = object_getClassName(*(a1 + 40));
            v72 = sel_getName(*(a1 + 48));
            *buf = 67110146;
            v93 = v70;
            v94 = 2082;
            v95 = v71;
            v96 = 2082;
            v97 = v72;
            v98 = 1024;
            v99 = 115;
            v100 = 2112;
            v101 = v7;
            _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %@", buf, 0x2Cu);
          }

          v18 = sub_1000D0D8C(*(a1 + 40), v6, *(a1 + 32), v7);
          WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 40));
          [WeakRetained handleTransactionEndEvent:v7 atlData:*(a1 + 32) caData:v18];
          goto LABEL_67;
        }

LABEL_78:

LABEL_79:
LABEL_80:

        goto LABEL_81;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v73 = NFLogGetLogger();
      if (v73)
      {
        v74 = v73;
        v75 = object_getClass(*(a1 + 40));
        v76 = class_isMetaClass(v75);
        v84 = object_getClassName(*(a1 + 40));
        v91 = sel_getName(*(a1 + 48));
        v77 = 45;
        if (v76)
        {
          v77 = 43;
        }

        v74(3, "%c[%{public}s %{public}s]:%i Unexpected event: %@", v77, v84, v91, 122, v5);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v7 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(&v7->super, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_78;
      }

      v78 = object_getClass(*(a1 + 40));
      if (class_isMetaClass(v78))
      {
        v79 = 43;
      }

      else
      {
        v79 = 45;
      }

      v80 = object_getClassName(*(a1 + 40));
      v81 = sel_getName(*(a1 + 48));
      *buf = 67110146;
      v93 = v79;
      v94 = 2082;
      v95 = v80;
      v96 = 2082;
      v97 = v81;
      v98 = 1024;
      v99 = 122;
      v100 = 2112;
      v101 = v5;
      v60 = "%c[%{public}s %{public}s]:%i Unexpected event: %@";
      p_super = &v7->super;
      v62 = 44;
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v50 = NFLogGetLogger();
      if (v50)
      {
        v51 = v50;
        v52 = object_getClass(*(a1 + 40));
        v53 = class_isMetaClass(v52);
        v54 = object_getClassName(*(a1 + 40));
        v89 = sel_getName(*(a1 + 48));
        v55 = 45;
        if (v53)
        {
          v55 = 43;
        }

        v51(3, "%c[%{public}s %{public}s]:%i Failed to convert appletIdentifier to NSData!!", v55, v54, v89, 96);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v7 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(&v7->super, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_78;
      }

      v56 = object_getClass(*(a1 + 40));
      if (class_isMetaClass(v56))
      {
        v57 = 43;
      }

      else
      {
        v57 = 45;
      }

      v58 = object_getClassName(*(a1 + 40));
      v59 = sel_getName(*(a1 + 48));
      *buf = 67109890;
      v93 = v57;
      v94 = 2082;
      v95 = v58;
      v96 = 2082;
      v97 = v59;
      v98 = 1024;
      v99 = 96;
      v60 = "%c[%{public}s %{public}s]:%i Failed to convert appletIdentifier to NSData!!";
      p_super = &v7->super;
      v62 = 34;
    }

    _os_log_impl(&_mh_execute_header, p_super, OS_LOG_TYPE_ERROR, v60, buf, v62);
    goto LABEL_78;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v30 = NFLogGetLogger();
  if (v30)
  {
    v31 = v30;
    v32 = object_getClass(*(a1 + 40));
    v33 = class_isMetaClass(v32);
    v34 = object_getClassName(*(a1 + 40));
    v87 = sel_getName(*(a1 + 48));
    v35 = 45;
    if (v33)
    {
      v35 = 43;
    }

    v31(3, "%c[%{public}s %{public}s]:%i Event is nil!", v35, v34, v87, 74);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v3 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
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
    v39 = sel_getName(*(a1 + 48));
    *buf = 67109890;
    v93 = v37;
    v94 = 2082;
    v95 = v38;
    v96 = 2082;
    v97 = v39;
    v98 = 1024;
    v99 = 74;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Event is nil!", buf, 0x22u);
  }

LABEL_81:
}

id sub_1000D094C(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  if (a1)
  {
    v46 = 0;
    v8 = a4;
    v9 = a2;
    v10 = objc_opt_new();
    v11 = [v8 selectStatus];

    v12 = [NSNumber numberWithUnsignedShort:v11];
    [v10 setObject:v12 forKeyedSubscript:@"commandResult"];

    v13 = [a1 delegate];
    v14 = [v13 appletForIdentifier:v9 filtered:1 cacheOnly:1];

    v15 = [[NSData alloc] initWithBytes:&unk_100296F3F length:10];
    v16 = [v15 NF_asHexString];

    v17 = [[NSData alloc] initWithBytes:&unk_100296F49 length:8];
    v18 = [v17 NF_asHexString];

    v19 = [[NSData alloc] initWithBytes:&unk_100296F51 length:16];
    v20 = [v19 NF_asHexString];

    v21 = [v14 moduleIdentifier];
    v22 = [v21 isEqualToString:v16];

    if (v22)
    {
      v23 = &unk_100296F62;
      v24 = v7;
      v25 = 57;
    }

    else
    {
      v26 = [v14 moduleIdentifier];
      v27 = [v26 isEqualToString:v18];

      if (v27)
      {
        v23 = &unk_10029712A;
        v24 = v7;
        v25 = 53;
      }

      else
      {
        v45 = v7;
        v28 = [v14 moduleIdentifier];
        v29 = [[NSData alloc] initWithBytes:&unk_1002972D2 length:12];
        v30 = [v29 NF_asHexString];
        v31 = [v28 isEqualToString:v30];

        if (v31)
        {
          v23 = &unk_1002972DE;
          v7 = v45;
          v24 = v45;
          v25 = 45;
        }

        else
        {
          v32 = [v14 moduleIdentifier];
          v33 = [[NSData alloc] initWithBytes:&unk_100297672 length:16];
          v34 = [v33 NF_asHexString];
          v35 = [v32 isEqualToString:v34];

          if (v35)
          {
            v7 = v45;
            v36 = [v45 objectForKeyedSubscript:@"command"];
            HIDWORD(v46) = [v36 intValue];

            LODWORD(v46) = 0;
            goto LABEL_11;
          }

          v40 = [v14 moduleIdentifier];
          v41 = [v40 isEqualToString:v20];

          v7 = v45;
          if (!v41)
          {
            v42 = [v45 objectForKeyedSubscript:@"command"];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              v44 = [v45 objectForKeyedSubscript:@"command"];
              HIDWORD(v46) = [v44 intValue];
            }

            LODWORD(v46) = 0;
            goto LABEL_11;
          }

          v23 = &unk_100297682;
          v24 = v45;
          v25 = 6;
        }
      }
    }

    sub_1000D2334(v24, v23, v25, &v46 + 1, &v46);
LABEL_11:
    v37 = [NSNumber numberWithUnsignedInt:HIDWORD(v46)];
    [v10 setObject:v37 forKeyedSubscript:@"command"];

    v38 = [NSNumber numberWithUnsignedInt:v46];
    [v10 setObject:v38 forKeyedSubscript:@"commandParam1"];

    goto LABEL_12;
  }

  v10 = 0;
LABEL_12:

  return v10;
}

id sub_1000D0D8C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (!a1)
  {
    v10 = 0;
    goto LABEL_48;
  }

  v119 = 0;
  v9 = a2;
  v10 = objc_opt_new();
  v11 = [a1 delegate];
  v12 = [v11 appletForIdentifier:v9 filtered:1 cacheOnly:1];

  v13 = [[NSData alloc] initWithBytes:&unk_100296F3F length:10];
  v14 = [v13 NF_asHexString];

  v15 = [[NSData alloc] initWithBytes:&unk_100296F49 length:8];
  v16 = [v15 NF_asHexString];

  v17 = [[NSData alloc] initWithBytes:&unk_100296F51 length:16];
  v117 = [v17 NF_asHexString];

  v18 = [v12 moduleIdentifier];
  v115 = v14;
  v19 = [v18 isEqualToString:v14];

  v20 = &GetElapsedTimeInMillisecondsFromMachTime_ptr;
  v113 = v16;
  v116 = v12;
  if (!v19)
  {
    v24 = [v12 moduleIdentifier];
    v25 = [v24 isEqualToString:v16];

    if (v25)
    {
      v21 = &unk_10029712A;
      v22 = v7;
      v23 = 53;
      goto LABEL_6;
    }

    v26 = [v12 moduleIdentifier];
    v27 = [[NSData alloc] initWithBytes:&unk_1002972D2 length:12];
    [v27 NF_asHexString];
    v29 = v28 = v12;
    v30 = [v26 isEqualToString:v29];

    if (v30)
    {
      v31 = &unk_1002972DE;
      v32 = v7;
      v33 = 45;
    }

    else
    {
      v34 = [v28 moduleIdentifier];
      v35 = [[NSData alloc] initWithBytes:&unk_100297446 length:10];
      v36 = [v35 NF_asHexString];
      v37 = [v34 isEqualToString:v36];

      if (v37)
      {
        v31 = &unk_100297450;
        v32 = v7;
        v33 = 47;
      }

      else
      {
        v38 = [v28 moduleIdentifier];
        v39 = [[NSData alloc] initWithBytes:&unk_1002975C8 length:10];
        v40 = [v39 NF_asHexString];
        v41 = [v38 isEqualToString:v40];

        if (!v41)
        {
          v96 = [v28 moduleIdentifier];
          v97 = [[NSData alloc] initWithBytes:&unk_100297672 length:16];
          v98 = [v97 NF_asHexString];
          v99 = [v96 isEqualToString:v98];

          if (!v99)
          {
            v101 = [v28 moduleIdentifier];
            v102 = [v101 isEqualToString:v117];

            if (v102)
            {
              v103 = [v28 moduleIdentifier];
              v104 = [v103 isEqualToString:v117];

              v20 = &GetElapsedTimeInMillisecondsFromMachTime_ptr;
              if (v104)
              {
                sub_1000D2334(v7, word_100297682, 6u, &v119 + 1, &v119);
              }

              v118 = 0;
              v105 = sub_10021E074(*(a1 + 32));
              if ([v105 notificationType] == 3)
              {
                v106 = v105;
                v107 = +[NFCALogger sharedCALogger];
                v108 = [v106 tciArray];
                [v107 getCAUniversityCode:v108 universityCodes:&v118];

                if (v118)
                {
                  v109 = [NSNumber numberWithUnsignedInt:?];
                  [v10 setObject:v109 forKeyedSubscript:@"accessUniversityCode"];
                }
              }
            }

            else
            {
              v110 = [v7 objectForKeyedSubscript:@"command"];
              v20 = &GetElapsedTimeInMillisecondsFromMachTime_ptr;
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();

              if (isKindOfClass)
              {
                v112 = [v7 objectForKeyedSubscript:@"command"];
                HIDWORD(v119) = [v112 intValue];
              }

              LODWORD(v119) = 0;
            }

            goto LABEL_15;
          }

          v100 = [v7 objectForKeyedSubscript:@"command"];
          HIDWORD(v119) = [v100 intValue];

          LODWORD(v119) = 0;
          goto LABEL_14;
        }

        v31 = &unk_1002975D2;
        v32 = v7;
        v33 = 20;
      }
    }

    sub_1000D2334(v32, v31, v33, &v119 + 1, &v119);
LABEL_14:
    v20 = &GetElapsedTimeInMillisecondsFromMachTime_ptr;
    goto LABEL_15;
  }

  v21 = &unk_100296F62;
  v22 = v7;
  v23 = 57;
LABEL_6:
  sub_1000D2334(v22, v21, v23, &v119 + 1, &v119);
LABEL_15:
  [v10 setObject:&off_1003312F0 forKeyedSubscript:{@"version", v113}];
  v42 = [v20[470] numberWithUnsignedShort:{objc_msgSend(v8, "status")}];
  [v10 setObject:v42 forKeyedSubscript:@"status"];

  v43 = [v20[470] numberWithUnsignedInt:HIDWORD(v119)];
  [v10 setObject:v43 forKeyedSubscript:@"command"];

  v44 = [v20[470] numberWithUnsignedInt:v119];
  [v10 setObject:v44 forKeyedSubscript:@"commandParam1"];

  v45 = [v20[470] numberWithUnsignedShort:{objc_msgSend(v8, "result")}];
  [v10 setObject:v45 forKeyedSubscript:@"result"];

  v46 = [v20[470] numberWithUnsignedShort:{objc_msgSend(v8, "informative")}];
  [v10 setObject:v46 forKeyedSubscript:@"informative"];

  v47 = [v8 appletIdentifier];
  v48 = [NSData NF_dataWithHexString:v47];

  if (v48)
  {
    [v10 setObject:v48 forKeyedSubscript:@"aid"];
  }

  v49 = [v8 transactionIdentifier];
  v50 = [NSData NF_dataWithHexString:v49];

  if (v50)
  {
    [v10 setObject:v50 forKeyedSubscript:@"transactionId"];
  }

  v51 = [v20[470] numberWithUnsignedInt:*(a1 + 8)];
  [v10 setObject:v51 forKeyedSubscript:@"totalRSSISamples"];

  v52 = [v20[470] numberWithUnsignedInt:*(a1 + 12)];
  [v10 setObject:v52 forKeyedSubscript:@"avgRSSIValue"];

  v53 = [v20[470] numberWithUnsignedInt:*(a1 + 16)];
  [v10 setObject:v53 forKeyedSubscript:@"maxRSSIValue"];

  v54 = [v20[470] numberWithUnsignedInt:*(a1 + 20)];
  [v10 setObject:v54 forKeyedSubscript:@"minRSSIValue"];

  v55 = [v8 parsedInfo];
  v56 = [v55 objectForKeyedSubscript:@"Transaction"];

  v57 = [v8 parsedInfo];
  v58 = [v57 objectForKeyedSubscript:@"State"];

  v59 = [v58 objectForKeyedSubscript:@"SPRaw"];

  if (v59)
  {
    v60 = [v58 objectForKeyedSubscript:@"SPRaw"];
    [v10 setObject:v60 forKeyedSubscript:@"SPRaw"];
  }

  v61 = [v58 objectForKeyedSubscript:@"CardDenyListed"];

  if (v61)
  {
    v62 = [v58 objectForKeyedSubscript:@"CardDenyListed"];
    [v10 setObject:v62 forKeyedSubscript:@"CardBlacklisted"];
  }

  v63 = [v58 objectForKeyedSubscript:@"CardExpirationDate"];

  if (v63)
  {
    v64 = [v58 objectForKeyedSubscript:@"CardExpirationDate"];
    [v10 setObject:v64 forKeyedSubscript:@"CardExpirationDate"];
  }

  v65 = [v58 objectForKeyedSubscript:@"TransactionInProgress"];

  if (v65)
  {
    v66 = [v58 objectForKeyedSubscript:@"TransactionInProgress"];
    [v10 setObject:v66 forKeyedSubscript:@"TransactionInProgress"];
  }

  v67 = [v58 objectForKeyedSubscript:@"CardCurrencyCode"];

  if (v67)
  {
    v68 = [v58 objectForKeyedSubscript:@"CardCurrencyCode"];
    [v10 setObject:v68 forKeyedSubscript:@"CardCurrencyCode"];
  }

  v69 = [v56 objectForKeyedSubscript:@"StartStation"];

  if (v69)
  {
    v70 = [v56 objectForKeyedSubscript:@"StartStation"];
    [v10 setObject:v70 forKeyedSubscript:@"StartStation"];
  }

  v71 = [v56 objectForKeyedSubscript:@"EndStation"];

  if (v71)
  {
    v72 = [v56 objectForKeyedSubscript:@"EndStation"];
    [v10 setObject:v72 forKeyedSubscript:@"EndStation"];
  }

  v73 = [v56 objectForKeyedSubscript:@"TerminalIdentifier"];

  if (v73)
  {
    v74 = [v56 objectForKeyedSubscript:@"TerminalIdentifier"];
    [v10 setObject:v74 forKeyedSubscript:@"TerminalIdentifier"];
  }

  v75 = [v56 objectForKeyedSubscript:@"TypeDetailRaw"];
  if (v75)
  {
    v76 = v75;
    v77 = [v56 objectForKeyedSubscript:@"TypeDetailRaw"];
    objc_opt_class();
    v78 = objc_opt_isKindOfClass();

    if (v78)
    {
      v79 = [v56 objectForKeyedSubscript:@"TypeDetailRaw"];
      [v10 setObject:v79 forKeyedSubscript:@"transactionTypeRaw"];

      v80 = [v56 objectForKeyedSubscript:@"TypeDetailRaw"];
      v81 = [v80 length];

      if (v81 >= 3)
      {
        v82 = [v56 objectForKeyedSubscript:@"TypeDetailRaw"];
        v83 = [v82 bytes];

        v84 = [NSNumber numberWithUnsignedChar:*v83];
        [v10 setObject:v84 forKeyedSubscript:@"transactionCategory"];

        v85 = [NSNumber numberWithUnsignedChar:v83[1]];
        [v10 setObject:v85 forKeyedSubscript:@"transactionType"];

        v86 = [NSNumber numberWithUnsignedChar:v83[2]];
        [v10 setObject:v86 forKeyedSubscript:@"transactionExtension"];
      }
    }
  }

  v87 = [v58 objectForKeyedSubscript:@"SPRaw"];

  if (v87)
  {
    v88 = [v58 objectForKeyedSubscript:@"SPRaw"];
    [v10 setObject:v88 forKeyedSubscript:@"issuerCityCode"];
  }

  v89 = [v7 objectForKeyedSubscript:@"interface"];

  if (v89)
  {
    v90 = [v7 objectForKeyedSubscript:@"interface"];
    [v10 setObject:v90 forKeyedSubscript:@"interface"];
  }

  v91 = [v7 objectForKeyedSubscript:@"ReadOperationInfo"];

  if (v91)
  {
    v92 = [v7 objectForKeyedSubscript:@"ReadOperationInfo"];
    [v10 setObject:v92 forKeyedSubscript:@"ReadOperationInfo"];
  }

  v93 = [v7 objectForKeyedSubscript:@"WriteOperationInfo"];

  if (v93)
  {
    v94 = [v7 objectForKeyedSubscript:@"WriteOperationInfo"];
    [v10 setObject:v94 forKeyedSubscript:@"WriteOperationInfo"];
  }

LABEL_48:

  return v10;
}

void sub_1000D1DAC(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 bytes];
    if ([v4 length] > 2)
    {
      v11 = [[NSData alloc] initWithBytes:v5 + 2 length:{objc_msgSend(v4, "length") - 2}];
      v51 = [NFFelicaStateEvent decodeLogEvent:v11];
      v14 = a1[4];
      if (v14 && (*(v14 + 248) & 0x203) != 0)
      {
        v48 = v11;
        v49 = v4;
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        obj = [v51 allKeys];
        v15 = [obj countByEnumeratingWithState:&v52 objects:v68 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v53;
          do
          {
            for (i = 0; i != v16; i = i + 1)
            {
              if (*v53 != v17)
              {
                objc_enumerationMutation(obj);
              }

              v19 = *(*(&v52 + 1) + 8 * i);
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              Logger = NFLogGetLogger();
              if (Logger)
              {
                v21 = Logger;
                Class = object_getClass(a1);
                isMetaClass = class_isMetaClass(Class);
                ClassName = object_getClassName(a1);
                Name = sel_getName("_decodeFelicaLoggingEvent:");
                v26 = [v51 objectForKeyedSubscript:v19];
                v27 = 45;
                if (isMetaClass)
                {
                  v27 = 43;
                }

                v21(5, "%c[%{public}s %{public}s]:%i [L-ICF] %{public}@ = %{public}@", v27, ClassName, Name, 248, v19, v26);
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

                v31 = object_getClassName(a1);
                v32 = sel_getName("_decodeFelicaLoggingEvent:");
                v33 = [v51 objectForKeyedSubscript:v19];
                *buf = 67110402;
                v57 = v30;
                v58 = 2082;
                v59 = v31;
                v60 = 2082;
                v61 = v32;
                v62 = 1024;
                v63 = 248;
                v64 = 2114;
                v65 = v19;
                v66 = 2114;
                v67 = v33;
                _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i [L-ICF] %{public}@ = %{public}@", buf, 0x36u);
              }
            }

            v16 = [obj countByEnumeratingWithState:&v52 objects:v68 count:16];
          }

          while (v16);
        }

        v11 = v48;
        v4 = v49;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v34 = NFLogGetLogger();
      if (v34)
      {
        v35 = v34;
        v36 = object_getClass(a1);
        v37 = class_isMetaClass(v36);
        v45 = object_getClassName(a1);
        v47 = sel_getName("_decodeFelicaLoggingEvent:");
        v38 = 45;
        if (v37)
        {
          v38 = 43;
        }

        v35(6, "%c[%{public}s %{public}s]:%i %{public}@", v38, v45, v47, 251, v51);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v39 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v40 = object_getClass(a1);
        if (class_isMetaClass(v40))
        {
          v41 = 43;
        }

        else
        {
          v41 = 45;
        }

        v42 = object_getClassName(a1);
        v43 = sel_getName("_decodeFelicaLoggingEvent:");
        *buf = 67110146;
        v57 = v41;
        v58 = 2082;
        v59 = v42;
        v60 = 2082;
        v61 = v43;
        v62 = 1024;
        v63 = 251;
        v64 = 2114;
        v65 = v51;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
      }
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v6 = NFLogGetLogger();
      if (v6)
      {
        v7 = v6;
        v8 = object_getClass(a1);
        v9 = class_isMetaClass(v8);
        v44 = object_getClassName(a1);
        v46 = sel_getName("_decodeFelicaLoggingEvent:");
        v10 = 45;
        if (v9)
        {
          v10 = 43;
        }

        v7(3, "%c[%{public}s %{public}s]:%i Unexpected HCI event: %{public}@", v10, v44, v46, 240, v4);
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

        *buf = 67110146;
        v57 = v13;
        v58 = 2082;
        v59 = object_getClassName(a1);
        v60 = 2082;
        v61 = sel_getName("_decodeFelicaLoggingEvent:");
        v62 = 1024;
        v63 = 240;
        v64 = 2114;
        v65 = v4;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unexpected HCI event: %{public}@", buf, 0x2Cu);
      }
    }
  }
}

uint64_t sub_1000D2334(void *a1, unsigned __int16 *a2, unsigned int a3, unsigned int *a4, unsigned int *a5)
{
  v9 = a1;
  v10 = [v9 objectForKeyedSubscript:@"command"];
  v11 = [v10 intValue];

  v12 = 0;
  v13 = HIWORD(v11);
  *a4 = v11;
  *a5 = v11;
  v14 = v11 >> 8;
  do
  {
    if (v13 == *a2)
    {
      if (v12 < a3)
      {
        while (1)
        {
          if (v13 != *a2)
          {
            goto LABEL_14;
          }

          v15 = a2[1];
          if (v15 == 0xFFFF || BYTE1(v11) == v15)
          {
            v16 = a2[2];
            if (v16 == 0xFFFF || v11 == v16)
            {
              break;
            }
          }

          ++v12;
          a2 += 4;
          if (v12 >= a3)
          {
            goto LABEL_15;
          }
        }

        *a4 = *(a2 + 6);
        v19 = *(a2 + 7);
        if (v19 > 2)
        {
          if (v19 == 3)
          {
            goto LABEL_23;
          }

          LOBYTE(v11) = 0;
          if (v19 != 4)
          {
            goto LABEL_23;
          }
        }

        else
        {
          if (v19 == 1)
          {
            goto LABEL_23;
          }

          LOBYTE(v11) = 0;
          if (v19 != 2)
          {
            goto LABEL_23;
          }
        }

        LOBYTE(v11) = v14;
LABEL_23:
        *a5 = v11;
        v18 = 1;
        goto LABEL_24;
      }
    }

    else
    {
      ++v12;
      a2 += 4;
    }

LABEL_14:
    ;
  }

  while (v12 < a3);
LABEL_15:
  v18 = 0;
LABEL_24:

  return v18;
}

id sub_1000D2488(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v50 = 0;
  v6 = a2;
  v7 = [a1 delegate];
  v8 = [v7 appletForIdentifier:v6 filtered:1 cacheOnly:1];

  v9 = [[NSData alloc] initWithBytes:&unk_100296F3F length:10];
  v10 = [v9 NF_asHexString];

  v11 = [[NSData alloc] initWithBytes:&unk_100296F49 length:8];
  v12 = [v11 NF_asHexString];

  v13 = [v8 moduleIdentifier];
  v14 = [v13 isEqualToString:v10];

  if (v14)
  {
    if (sub_1000D2334(v5, word_100296F62, 0x39u, &v50 + 1, &v50))
    {
      goto LABEL_25;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v16 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("_caHCIActivityTimeoutEvent:parsedEvent:");
      v20 = 45;
      if (isMetaClass)
      {
        v20 = 43;
      }

      v16(6, "%c[%{public}s %{public}s]:%i Could not find Enum. Defaulting to CLA_INS_P1_P2 format ", v20, ClassName, Name, 532);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v21 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    v22 = object_getClass(a1);
    if (class_isMetaClass(v22))
    {
      v23 = 43;
    }

    else
    {
      v23 = 45;
    }

    v24 = object_getClassName(a1);
    v25 = sel_getName("_caHCIActivityTimeoutEvent:parsedEvent:");
    *buf = 67109890;
    v52 = v23;
    v53 = 2082;
    v54 = v24;
    v55 = 2082;
    v56 = v25;
    v57 = 1024;
    v58 = 532;
    goto LABEL_23;
  }

  v26 = [v8 moduleIdentifier];
  v27 = [v26 isEqualToString:v12];

  if (v27 && (sub_1000D2334(v5, word_10029712A, 0x35u, &v50 + 1, &v50) & 1) == 0)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v28 = NFLogGetLogger();
    if (v28)
    {
      v29 = v28;
      v30 = object_getClass(a1);
      v31 = class_isMetaClass(v30);
      v32 = object_getClassName(a1);
      v49 = sel_getName("_caHCIActivityTimeoutEvent:parsedEvent:");
      v33 = 45;
      if (v31)
      {
        v33 = 43;
      }

      v29(6, "%c[%{public}s %{public}s]:%i Could not find Enum. Defaulting to CLA_INS_P1_P2 format ", v33, v32, v49, 541);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v21 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    v34 = object_getClass(a1);
    if (class_isMetaClass(v34))
    {
      v35 = 43;
    }

    else
    {
      v35 = 45;
    }

    v36 = object_getClassName(a1);
    v37 = sel_getName("_caHCIActivityTimeoutEvent:parsedEvent:");
    *buf = 67109890;
    v52 = v35;
    v53 = 2082;
    v54 = v36;
    v55 = 2082;
    v56 = v37;
    v57 = 1024;
    v58 = 541;
LABEL_23:
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Could not find Enum. Defaulting to CLA_INS_P1_P2 format ", buf, 0x22u);
LABEL_24:
  }

LABEL_25:
  v38 = objc_opt_new();
  v39 = [v5 objectForKeyedSubscript:@"spid"];
  v40 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v39 intValue]);
  [v38 setObject:v40 forKeyedSubscript:@"spid"];

  v41 = [v5 objectForKeyedSubscript:@"commandResult"];
  v42 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v41 intValue]);
  [v38 setObject:v42 forKeyedSubscript:@"commandResult"];

  v43 = [NSNumber numberWithUnsignedInt:HIDWORD(v50)];
  [v38 setObject:v43 forKeyedSubscript:@"command"];

  v44 = [NSNumber numberWithUnsignedInt:v50];
  [v38 setObject:v44 forKeyedSubscript:@"commandParam1"];

  v45 = [v5 objectForKeyedSubscript:@"timeoutValue"];
  v46 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v45 intValue]);
  [v38 setObject:v46 forKeyedSubscript:@"timeoutValue"];

  return v38;
}

uint64_t sub_1000D29CC(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (![v6 didError])
  {
    goto LABEL_22;
  }

  v8 = [v5 moduleIdentifier];
  v9 = [[NSData alloc] initWithBytes:&unk_1002976B2 length:10];
  v10 = [v9 NF_asHexString];
  v11 = [v8 isEqualToString:v10];

  if (v11)
  {
    goto LABEL_22;
  }

  v12 = [v5 moduleIdentifier];
  v13 = [[NSData alloc] initWithBytes:&unk_100297672 length:16];
  v14 = [v13 NF_asHexString];
  if ([v12 isEqualToString:v14])
  {
    goto LABEL_6;
  }

  v15 = [v5 moduleIdentifier];
  v16 = [[NSData alloc] initWithBytes:&unk_1002976BC length:16];
  v17 = [v16 NF_asHexString];
  if ([v15 isEqualToString:v17])
  {

LABEL_6:
    goto LABEL_7;
  }

  [v5 moduleIdentifier];
  v21 = v47 = v7;
  v22 = [[NSData alloc] initWithBytes:&unk_1002976CC length:16];
  [v22 NF_asHexString];
  v23 = v45 = v15;
  v46 = [v21 isEqualToString:v23];

  v7 = v47;
  if ((v46 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_7:
  v18 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [v6 informative]);
  if (![&off_100339000 containsObject:v18])
  {
    v19 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [v6 result]);
    v20 = [&off_100338FE8 containsObject:v19];

    if (v20)
    {
      goto LABEL_22;
    }

LABEL_12:
    v24 = [v5 moduleIdentifier];
    v25 = [[NSData alloc] initWithBytes:&unk_100296F49 length:8];
    v26 = [v25 NF_asHexString];
    if ([v24 isEqualToString:v26])
    {
      v27 = [v6 result];

      if (v27 == 64)
      {
        goto LABEL_22;
      }
    }

    else
    {
    }

    v28 = [v5 moduleIdentifier];
    v29 = [[NSData alloc] initWithBytes:&unk_100296F3F length:10];
    v30 = [v29 NF_asHexString];
    if ([v28 isEqualToString:v30])
    {
    }

    else
    {
      v31 = [v5 moduleIdentifier];
      v32 = [[NSData alloc] initWithBytes:&unk_100296F49 length:8];
      v33 = [v32 NF_asHexString];
      v34 = [v31 isEqualToString:v33];

      if (!v34)
      {
        goto LABEL_20;
      }
    }

    if ([v6 result] == 61444)
    {
      goto LABEL_22;
    }

LABEL_20:
    v35 = [v5 moduleIdentifier];
    v36 = [[NSData alloc] initWithBytes:&unk_1002976DC length:16];
    v37 = [v36 NF_asHexString];
    if ([v35 isEqualToString:v37])
    {
      v38 = [v6 result];

      if (v38 == 61440)
      {
        goto LABEL_22;
      }
    }

    else
    {
    }

    v41 = [v5 moduleIdentifier];
    v42 = [[NSData alloc] initWithBytes:&unk_1002976EC length:10];
    v43 = [v42 NF_asHexString];
    v44 = [v41 isEqualToString:v43];

    v39 = v44 ^ 1;
    goto LABEL_23;
  }

LABEL_22:
  v39 = 0;
LABEL_23:

  return v39;
}

void sub_1000D2E7C(void *a1, void *a2)
{
  v14 = a1;
  v3 = a2;
  if (v14)
  {
    v4 = [v14 objectForKeyedSubscript:@"appletIdentifier"];

    if (v4)
    {
      v5 = [v14 objectForKeyedSubscript:@"appletIdentifier"];
      v6 = [NSData NF_dataWithHexString:v5];
      v7 = sub_10001A63C(v6);

      if ((v7 & 0xFFFFFFFFFFFFFFFELL) == 2)
      {
        if ([v3 isEqualToString:@"StartEvent"])
        {
          v8 = +[NSDate now];
          v9 = objc_opt_new();
          v10 = v9;
          v11 = @"startEventStartTime";
LABEL_8:
          [v9 setObject:v8 forKeyedSubscript:v11];
          v12 = [v14 objectForKeyedSubscript:@"ptaTransactionMode"];

          if (v12)
          {
            v13 = [v14 objectForKeyedSubscript:@"ptaTransactionMode"];
            [v10 setObject:v13 forKeyedSubscript:@"ptaTransactionMode"];
          }

          sub_1000A4788(NFUnifiedAccessTransactionCALogger, v10, 1);

          goto LABEL_11;
        }

        if ([v3 isEqualToString:@"StepUpRequested"])
        {
          v8 = +[NSDate now];
          v9 = objc_opt_new();
          v10 = v9;
          v11 = @"stepUpEventStartTime";
          goto LABEL_8;
        }
      }

LABEL_11:
    }
  }
}

void sub_1000D3110(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  if (v2 && (*(v2 + 248) & 0x200) != 0)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v4 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 56));
      v9 = 45;
      if (isMetaClass)
      {
        v9 = 43;
      }

      v4(6, "%c[%{public}s %{public}s]:%i app=%{public}@ event=%{public}@", v9, ClassName, Name, 919, *(a1 + 40), *(a1 + 48));
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
      v15 = *(a1 + 40);
      v16 = *(a1 + 48);
      *buf = 67110402;
      v442 = v12;
      v443 = 2082;
      v444 = v13;
      v445 = 2082;
      v446 = v14;
      v447 = 1024;
      v448 = 919;
      v449 = 2114;
      *v450 = v15;
      *&v450[8] = 2114;
      *&v450[10] = v16;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i app=%{public}@ event=%{public}@", buf, 0x36u);
    }
  }

  if ([*(a1 + 48) length] <= 1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v17 = NFLogGetLogger();
    if (v17)
    {
      v18 = v17;
      v19 = object_getClass(*(a1 + 32));
      v20 = class_isMetaClass(v19);
      v21 = object_getClassName(*(a1 + 32));
      v22 = sel_getName(*(a1 + 56));
      v23 = 45;
      if (v20)
      {
        v23 = 43;
      }

      v18(3, "%c[%{public}s %{public}s]:%i Invalid length: %{public}@", v23, v21, v22, 924, *(a1 + 48));
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v24 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_100;
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
    v28 = sel_getName(*(a1 + 56));
    v29 = *(a1 + 48);
    *buf = 67110146;
    v442 = v26;
    v443 = 2082;
    v444 = v27;
    v445 = 2082;
    v446 = v28;
    v447 = 1024;
    v448 = 924;
    v449 = 2114;
    *v450 = v29;
    v30 = "%c[%{public}s %{public}s]:%i Invalid length: %{public}@";
    v31 = v24;
    v32 = 44;
    goto LABEL_99;
  }

  v33 = *(a1 + 32);
  v419 = a1;
  v34 = *(a1 + 48);
  v24 = *(a1 + 40);
  v35 = v34;
  if (!v33)
  {
    goto LABEL_63;
  }

  v36 = [v33 delegate];
  v37 = [v36 appletForIdentifier:v24 filtered:0 cacheOnly:1];

  if (!v35 || !v37)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v58 = NFLogGetLogger();
    if (v58)
    {
      v59 = v58;
      v60 = object_getClass(v33);
      v61 = class_isMetaClass(v60);
      v380 = object_getClassName(v33);
      v395 = sel_getName("parseWithATLLib:event:");
      v62 = 45;
      if (v61)
      {
        v62 = 43;
      }

      v59(6, "%c[%{public}s %{public}s]:%i Failed to get applet from event %{public}@", v62, v380, v395, 744, v35);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v47 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_62;
    }

    v63 = object_getClass(v33);
    if (class_isMetaClass(v63))
    {
      v64 = 43;
    }

    else
    {
      v64 = 45;
    }

    v65 = object_getClassName(v33);
    v66 = sel_getName("parseWithATLLib:event:");
    *buf = 67110146;
    v442 = v64;
    v443 = 2082;
    v444 = v65;
    v445 = 2082;
    v446 = v66;
    v447 = 1024;
    v448 = 744;
    v449 = 2114;
    *v450 = v35;
    v67 = "%c[%{public}s %{public}s]:%i Failed to get applet from event %{public}@";
LABEL_61:
    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, v67, buf, 0x2Cu);
LABEL_62:

LABEL_63:
    v77 = v419;
    goto LABEL_64;
  }

  v38 = [(__CFString *)v37 identifier];
  if (!v38)
  {
    goto LABEL_52;
  }

  v39 = v38;
  v40 = [(__CFString *)v37 packageIdentifier];
  if (!v40)
  {

    goto LABEL_52;
  }

  v41 = v40;
  v42 = [(__CFString *)v37 moduleIdentifier];

  if (!v42)
  {
LABEL_52:
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v68 = NFLogGetLogger();
    if (v68)
    {
      v69 = v68;
      v70 = object_getClass(v33);
      v71 = class_isMetaClass(v70);
      v381 = object_getClassName(v33);
      v396 = sel_getName("parseWithATLLib:event:");
      v72 = 45;
      if (v71)
      {
        v72 = 43;
      }

      v69(6, "%c[%{public}s %{public}s]:%i Failed to get applet information from applet %{public}@", v72, v381, v396, 748, v37);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v47 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_62;
    }

    v73 = object_getClass(v33);
    if (class_isMetaClass(v73))
    {
      v74 = 43;
    }

    else
    {
      v74 = 45;
    }

    v75 = object_getClassName(v33);
    v76 = sel_getName("parseWithATLLib:event:");
    *buf = 67110146;
    v442 = v74;
    v443 = 2082;
    v444 = v75;
    v445 = 2082;
    v446 = v76;
    v447 = 1024;
    v448 = 748;
    v449 = 2114;
    *v450 = v37;
    v67 = "%c[%{public}s %{public}s]:%i Failed to get applet information from applet %{public}@";
    goto LABEL_61;
  }

  v43 = [(__CFString *)v37 identifier];
  v44 = [(__CFString *)v37 packageIdentifier];
  v45 = [(__CFString *)v37 moduleIdentifier];
  v430 = 0;
  v46 = [AppletTranslator parseHCIEvent:v35 withApplet:v43 withPackage:v44 withModule:v45 withTransceiver:0 withError:&v430];
  v47 = v430;

  if (v46 || !v47)
  {
    if (!v47)
    {
      goto LABEL_234;
    }
  }

  else if ([v47 code]== 2)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v48 = NFLogGetLogger();
    if (v48)
    {
      v49 = v48;
      v50 = object_getClass(v33);
      v51 = class_isMetaClass(v50);
      v379 = object_getClassName(v33);
      v394 = sel_getName("parseWithATLLib:event:");
      v52 = 45;
      if (v51)
      {
        v52 = 43;
      }

      v49(6, "%c[%{public}s %{public}s]:%i Applet not supported by the ATL : %{public}@", v52, v379, v394, 760, v47);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v53 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      v54 = object_getClass(v33);
      if (class_isMetaClass(v54))
      {
        v55 = 43;
      }

      else
      {
        v55 = 45;
      }

      v56 = object_getClassName(v33);
      v57 = sel_getName("parseWithATLLib:event:");
      *buf = 67110146;
      v442 = v55;
      v443 = 2082;
      v444 = v56;
      v445 = 2082;
      v446 = v57;
      v447 = 1024;
      v448 = 760;
      v449 = 2114;
      *v450 = v47;
      _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Applet not supported by the ATL : %{public}@", buf, 0x2Cu);
    }

    goto LABEL_62;
  }

  if ([v47 code]== 1 || [v47 code]== 4 || [v47 code]== 5)
  {
    sel = v46;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v136 = NFLogGetLogger();
    if (v136)
    {
      v137 = v136;
      v138 = object_getClass(v33);
      v139 = class_isMetaClass(v138);
      v385 = object_getClassName(v33);
      v400 = sel_getName("parseWithATLLib:event:");
      v140 = 45;
      if (v139)
      {
        v140 = 43;
      }

      v137(6, "%c[%{public}s %{public}s]:%i Error : failed to get more info : %{public}@", v140, v385, v400, 769, v47);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v141 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v141, OS_LOG_TYPE_DEFAULT))
    {
      v142 = object_getClass(v33);
      if (class_isMetaClass(v142))
      {
        v143 = 43;
      }

      else
      {
        v143 = 45;
      }

      v144 = object_getClassName(v33);
      v145 = sel_getName("parseWithATLLib:event:");
      *buf = 67110146;
      v442 = v143;
      v443 = 2082;
      v444 = v144;
      v445 = 2082;
      v446 = v145;
      v447 = 1024;
      v448 = 769;
      v449 = 2114;
      *v450 = v47;
      _os_log_impl(&_mh_execute_header, v141, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Error : failed to get more info : %{public}@", buf, 0x2Cu);
    }

    goto LABEL_269;
  }

LABEL_234:
  v245 = [v46 objectForKeyedSubscript:@"EventType"];
  v427 = v245;
  sela = v46;
  if (!v245)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v279 = NFLogGetLogger();
    if (v279)
    {
      v280 = v279;
      v281 = object_getClass(v33);
      v282 = class_isMetaClass(v281);
      v283 = object_getClassName(v33);
      v408 = sel_getName("parseWithATLLib:event:");
      v284 = 45;
      if (v282)
      {
        v284 = 43;
      }

      v280(6, "%c[%{public}s %{public}s]:%i No event from ATL, HCI didn't contain a relevant message", v284, v283, v408, 777);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v285 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v285, OS_LOG_TYPE_DEFAULT))
    {
      v286 = object_getClass(v33);
      if (class_isMetaClass(v286))
      {
        v287 = 43;
      }

      else
      {
        v287 = 45;
      }

      v288 = object_getClassName(v33);
      v289 = sel_getName("parseWithATLLib:event:");
      *buf = 67109890;
      v442 = v287;
      v443 = 2082;
      v444 = v288;
      v445 = 2082;
      v446 = v289;
      v447 = 1024;
      v448 = 777;
      _os_log_impl(&_mh_execute_header, v285, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i No event from ATL, HCI didn't contain a relevant message", buf, 0x22u);
    }

    goto LABEL_280;
  }

  v246 = v245;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v290 = NFLogGetLogger();
    if (v290)
    {
      v291 = v290;
      v292 = object_getClass(v33);
      v293 = class_isMetaClass(v292);
      v390 = object_getClassName(v33);
      v409 = sel_getName("parseWithATLLib:event:");
      v294 = 45;
      if (v293)
      {
        v294 = 43;
      }

      v291(6, "%c[%{public}s %{public}s]:%i Error : invalid event class : %{public}@", v294, v390, v409, 781, v427);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v295 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v295, OS_LOG_TYPE_DEFAULT))
    {
      v296 = object_getClass(v33);
      if (class_isMetaClass(v296))
      {
        v297 = 43;
      }

      else
      {
        v297 = 45;
      }

      v298 = object_getClassName(v33);
      v299 = sel_getName("parseWithATLLib:event:");
      *buf = 67110146;
      v442 = v297;
      v443 = 2082;
      v444 = v298;
      v445 = 2082;
      v446 = v299;
      v447 = 1024;
      v448 = 781;
      v449 = 2114;
      *v450 = v427;
      _os_log_impl(&_mh_execute_header, v295, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Error : invalid event class : %{public}@", buf, 0x2Cu);
    }

    v264 = 0;
    goto LABEL_291;
  }

  if ([v246 isEqualToString:@"StartEvent"])
  {
    v247 = NFSharedSignpostLog();
    if (os_signpost_enabled(v247))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v247, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "AtlEvent", "AtlStartEvent", buf, 2u);
    }

    sub_1000D2E7C(sela, v246);
    v248 = *(v33 + 32);
    if (v248)
    {
      *(v248 + 171) = 0;
      v249 = *(v33 + 32);
      if (v249)
      {
        *(v249 + 172) = 0;
      }
    }

    v250 = [[NFContactlessPaymentStartEvent alloc] initWithDictionary:sela];
    if (v250)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v251 = NFLogGetLogger();
      if (v251)
      {
        v252 = v251;
        v253 = object_getClass(v33);
        v254 = class_isMetaClass(v253);
        v255 = object_getClassName(v33);
        v406 = sel_getName("parseWithATLLib:event:");
        v256 = 45;
        if (v254)
        {
          v256 = 43;
        }

        v252(6, "%c[%{public}s %{public}s]:%i %{public}@", v256, v255, v406, 797, v250);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v257 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v257, OS_LOG_TYPE_DEFAULT))
      {
        v258 = object_getClass(v33);
        if (class_isMetaClass(v258))
        {
          v259 = 43;
        }

        else
        {
          v259 = 45;
        }

        v260 = object_getClassName(v33);
        v261 = sel_getName("parseWithATLLib:event:");
        *buf = 67110146;
        v442 = v259;
        v443 = 2082;
        v444 = v260;
        v445 = 2082;
        v446 = v261;
        v447 = 1024;
        v448 = 797;
        v449 = 2114;
        *v450 = v250;
        _os_log_impl(&_mh_execute_header, v257, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
      }

      v262 = sub_1000D094C(v33, v24, sela, v250);
      WeakRetained = objc_loadWeakRetained((v33 + 40));
      [WeakRetained handleTransactionStartEvent:v250 atlData:sela caData:v262];
    }

LABEL_254:
    v264 = 1;
LABEL_291:
    v246 = v427;
    goto LABEL_292;
  }

  if ([v246 isEqualToString:@"EndEvent"])
  {
    v300 = NFSharedSignpostLog();
    if (os_signpost_enabled(v300))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v300, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "AtlEndEventEnter", &unk_1002E8B7A, buf, 2u);
    }

    objb = [[NFContactlessPaymentEndEvent alloc] initWithDictionary:sela];
    if (objb)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v301 = NFLogGetLogger();
      if (v301)
      {
        v302 = v301;
        v303 = object_getClass(v33);
        v304 = class_isMetaClass(v303);
        v391 = object_getClassName(v33);
        v410 = sel_getName("parseWithATLLib:event:");
        v305 = 45;
        if (v304)
        {
          v305 = 43;
        }

        v302(6, "%c[%{public}s %{public}s]:%i %{public}@", v305, v391, v410, 809, objb);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v306 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v306, OS_LOG_TYPE_DEFAULT))
      {
        v307 = object_getClass(v33);
        if (class_isMetaClass(v307))
        {
          v308 = 43;
        }

        else
        {
          v308 = 45;
        }

        v309 = object_getClassName(v33);
        v310 = sel_getName("parseWithATLLib:event:");
        *buf = 67110146;
        v442 = v308;
        v443 = 2082;
        v444 = v309;
        v445 = 2082;
        v446 = v310;
        v447 = 1024;
        v448 = 809;
        v449 = 2114;
        *v450 = objb;
        _os_log_impl(&_mh_execute_header, v306, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
      }

      v311 = sub_1000D0D8C(v33, v24, sela, objb);
      v312 = objc_loadWeakRetained((v33 + 40));
      [v312 handleTransactionEndEvent:objb atlData:sela caData:v311];

      if (sub_1000D29CC(v37, objb, v311))
      {
        v421 = v311;
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v313 = NFLogGetLogger();
        if (v313)
        {
          v314 = v313;
          v315 = object_getClass(v33);
          v316 = class_isMetaClass(v315);
          v392 = object_getClassName(v33);
          v411 = sel_getName("parseWithATLLib:event:");
          v317 = 45;
          if (v316)
          {
            v317 = 43;
          }

          v314(6, "%c[%{public}s %{public}s]:%i atEvent = %{public}@", v317, v392, v411, 819, sela);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v318 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v318, OS_LOG_TYPE_DEFAULT))
        {
          v319 = object_getClass(v33);
          if (class_isMetaClass(v319))
          {
            v320 = 43;
          }

          else
          {
            v320 = 45;
          }

          v321 = object_getClassName(v33);
          v322 = sel_getName("parseWithATLLib:event:");
          *buf = 67110146;
          v442 = v320;
          v443 = 2082;
          v444 = v321;
          v445 = 2082;
          v446 = v322;
          v447 = 1024;
          v448 = 819;
          v449 = 2114;
          *v450 = sela;
          _os_log_impl(&_mh_execute_header, v318, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i atEvent = %{public}@", buf, 0x2Cu);
        }

        v418 = [(__CFString *)v37 identifier];
        v323 = [(__CFString *)v37 identifier];
        v324 = [v418 substringToIndex:{objc_msgSend(v323, "length") - 2}];
        v325 = [sela valueForKey:@"result"];
        v326 = [NSString stringWithFormat:@"Applet AID: %@, Error: %@", v324, v325];
        *v433 = @"Applet Identifier";
        v327 = [(__CFString *)v37 identifier];
        *&v451 = v327;
        *(&v451 + 1) = @"Other Bug";
        *v434 = @"Classification";
        *&v434[8] = @"FailureKey";
        *&v452 = @"ttrTransaction";
        v328 = [NSDictionary dictionaryWithObjects:&v451 forKeys:v433 count:3];
        sub_1001998C4(NFBugCapture, @"Transaction Failed ", v326, v328);

        v311 = v421;
      }

      v246 = v427;
    }

    v264 = 1;
    goto LABEL_292;
  }

  if ([v246 isEqualToString:@"ActivityTimeout"])
  {
    v329 = NFSharedSignpostLog();
    if (os_signpost_enabled(v329))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v329, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "AtlActivityTimeoutEvent", &unk_1002E8B7A, buf, 2u);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v330 = NFLogGetLogger();
    if (v330)
    {
      v331 = v330;
      v332 = object_getClass(v33);
      v333 = class_isMetaClass(v332);
      v334 = object_getClassName(v33);
      v412 = sel_getName("parseWithATLLib:event:");
      v335 = 45;
      if (v333)
      {
        v335 = 43;
      }

      v331(6, "%c[%{public}s %{public}s]:%i Got activity timeout", v335, v334, v412, 829);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v336 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v336, OS_LOG_TYPE_DEFAULT))
    {
      v337 = object_getClass(v33);
      if (class_isMetaClass(v337))
      {
        v338 = 43;
      }

      else
      {
        v338 = 45;
      }

      v339 = object_getClassName(v33);
      v340 = sel_getName("parseWithATLLib:event:");
      *buf = 67109890;
      v442 = v338;
      v443 = 2082;
      v444 = v339;
      v445 = 2082;
      v446 = v340;
      v447 = 1024;
      v448 = 829;
      _os_log_impl(&_mh_execute_header, v336, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Got activity timeout", buf, 0x22u);
    }

    v341 = [sela valueForKey:@"Result"];
    v431[0] = @"result";
    v431[1] = @"applet";
    v432[0] = v341;
    v432[1] = v37;
    v342 = [NSDictionary dictionaryWithObjects:v432 forKeys:v431 count:2];
    v343 = sub_1000D2488(v33, v24, sela);
    v344 = objc_loadWeakRetained((v33 + 40));
    [v344 handleAppletInactivityTimeout:v342 atlData:sela caData:v343];

    v345 = NFSharedSignpostLog();
    if (os_signpost_enabled(v345))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v345, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "AtlEvent", "AtlActivityTimeoutEvent", buf, 2u);
    }

    goto LABEL_254;
  }

  if ([v246 isEqualToString:@"StepUpRequested"])
  {
    v346 = NFSharedSignpostLog();
    if (os_signpost_enabled(v346))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v346, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "AtlStepUpEventEnter", &unk_1002E8B7A, buf, 2u);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v347 = NFLogGetLogger();
    if (v347)
    {
      v348 = v347;
      v349 = object_getClass(v33);
      v350 = class_isMetaClass(v349);
      v351 = object_getClassName(v33);
      v413 = sel_getName("parseWithATLLib:event:");
      v352 = 45;
      if (v350)
      {
        v352 = 43;
      }

      v348(6, "%c[%{public}s %{public}s]:%i StepUp Event", v352, v351, v413, 843);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v353 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v353, OS_LOG_TYPE_DEFAULT))
    {
      v354 = object_getClass(v33);
      if (class_isMetaClass(v354))
      {
        v355 = 43;
      }

      else
      {
        v355 = 45;
      }

      v356 = object_getClassName(v33);
      v357 = sel_getName("parseWithATLLib:event:");
      *buf = 67109890;
      v442 = v355;
      v443 = 2082;
      v444 = v356;
      v445 = 2082;
      v446 = v357;
      v447 = 1024;
      v448 = 843;
      _os_log_impl(&_mh_execute_header, v353, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i StepUp Event", buf, 0x22u);
    }

    v246 = v427;
    sub_1000D2E7C(sela, v427);
    v358 = objc_loadWeakRetained((v33 + 40));
    [v358 handleStepUpEvent:sela forApplet:v37];

    v264 = 1;
    goto LABEL_292;
  }

  v359 = [v246 isEqualToString:@"UnavailableCertEvent"];
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v360 = NFLogGetLogger();
  v361 = v360;
  if (v359)
  {
    if (v360)
    {
      v362 = object_getClass(v33);
      v363 = class_isMetaClass(v362);
      v364 = object_getClassName(v33);
      v414 = sel_getName("parseWithATLLib:event:");
      v365 = 45;
      if (v363)
      {
        v365 = 43;
      }

      v361(6, "%c[%{public}s %{public}s]:%i UnavailableCert Event", v365, v364, v414, 853);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v366 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v366, OS_LOG_TYPE_DEFAULT))
    {
      v367 = object_getClass(v33);
      if (class_isMetaClass(v367))
      {
        v368 = 43;
      }

      else
      {
        v368 = 45;
      }

      v369 = object_getClassName(v33);
      v370 = sel_getName("parseWithATLLib:event:");
      *buf = 67109890;
      v442 = v368;
      v443 = 2082;
      v444 = v369;
      v445 = 2082;
      v446 = v370;
      v447 = 1024;
      v448 = 853;
      _os_log_impl(&_mh_execute_header, v366, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i UnavailableCert Event", buf, 0x22u);
    }

    sub_1002508A4(NFHciTransactionEventCALogger, sela);
LABEL_280:
    v264 = 1;
    goto LABEL_291;
  }

  if (v360)
  {
    v371 = object_getClass(v33);
    v372 = class_isMetaClass(v371);
    v393 = object_getClassName(v33);
    v415 = sel_getName("parseWithATLLib:event:");
    v373 = 45;
    if (v372)
    {
      v373 = 43;
    }

    v361(3, "%c[%{public}s %{public}s]:%i Unknown event type : %{public}@", v373, v393, v415, 857, v427);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v374 = NFSharedLogGetLogger();
  v246 = v427;
  if (os_log_type_enabled(v374, OS_LOG_TYPE_ERROR))
  {
    v375 = object_getClass(v33);
    if (class_isMetaClass(v375))
    {
      v376 = 43;
    }

    else
    {
      v376 = 45;
    }

    v377 = object_getClassName(v33);
    v378 = sel_getName("parseWithATLLib:event:");
    *buf = 67110146;
    v442 = v376;
    v443 = 2082;
    v444 = v377;
    v445 = 2082;
    v446 = v378;
    v447 = 1024;
    v448 = 857;
    v449 = 2114;
    *v450 = v427;
    _os_log_impl(&_mh_execute_header, v374, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unknown event type : %{public}@", buf, 0x2Cu);
  }

  v264 = 0;
LABEL_292:

  v77 = v419;
  if (v264)
  {
    return;
  }

LABEL_64:
  v78 = [*(v77 + 48) bytes];
  v79 = *v78;
  v80 = v78[1];
  if ([*(v77 + 40) length] != 8 || *objc_msgSend(*(v77 + 40), "bytes") != 0x51010000A0 || objc_msgSend(*(v77 + 48), "length") != 8 || *v78 != 0x5A5A5A5AA5A5A5A5)
  {
    if (v80 != 1)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v99 = NFLogGetLogger();
      if (v99)
      {
        v100 = v99;
        v101 = object_getClass(*(v77 + 32));
        v102 = class_isMetaClass(v101);
        v103 = object_getClassName(*(v77 + 32));
        v104 = sel_getName(*(v77 + 56));
        v105 = 43;
        if (!v102)
        {
          v105 = 45;
        }

        v100(4, "%c[%{public}s %{public}s]:%i Unsupport version %d: %{public}@ - %{public}@", v105, v103, v104, 945, v80, *(v77 + 40), *(v77 + 48));
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v24 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_100;
      }

      v106 = object_getClass(*(v77 + 32));
      if (class_isMetaClass(v106))
      {
        v107 = 43;
      }

      else
      {
        v107 = 45;
      }

      v108 = object_getClassName(*(v77 + 32));
      v109 = sel_getName(*(v77 + 56));
      v110 = *(v77 + 40);
      v111 = *(v77 + 48);
      *buf = 67110658;
      v442 = v107;
      v443 = 2082;
      v444 = v108;
      v445 = 2082;
      v446 = v109;
      v447 = 1024;
      v448 = 945;
      v449 = 1024;
      *v450 = v80;
      *&v450[4] = 2114;
      *&v450[6] = v110;
      *&v450[14] = 2114;
      *&v450[16] = v111;
      v30 = "%c[%{public}s %{public}s]:%i Unsupport version %d: %{public}@ - %{public}@";
      v31 = v24;
      v32 = 60;
      goto LABEL_99;
    }

    v81 = *(v77 + 40);
    if (v81 && [v81 length] == 5 && ((v82 = objc_msgSend(*(v77 + 40), "bytes"), *v82 == -1) ? (v83 = v82[4] == 255) : (v83 = 0), v83))
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v146 = NFLogGetLogger();
      if (v146)
      {
        v147 = v146;
        v148 = object_getClass(*(v77 + 32));
        v149 = class_isMetaClass(v148);
        v150 = object_getClassName(*(v77 + 32));
        v401 = sel_getName(*(v77 + 56));
        v151 = 45;
        if (v149)
        {
          v151 = 43;
        }

        v147(6, "%c[%{public}s %{public}s]:%i SEOS routing handler logging event", v151, v150, v401, 952);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v152 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
      {
        v153 = object_getClass(*(v77 + 32));
        if (class_isMetaClass(v153))
        {
          v154 = 43;
        }

        else
        {
          v154 = 45;
        }

        v155 = object_getClassName(*(v77 + 32));
        v156 = sel_getName(*(v77 + 56));
        *buf = 67109890;
        v442 = v154;
        v443 = 2082;
        v444 = v155;
        v445 = 2082;
        v446 = v156;
        v447 = 1024;
        v448 = 952;
        _os_log_impl(&_mh_execute_header, v152, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i SEOS routing handler logging event", buf, 0x22u);
      }
    }

    else if (v79 != 32)
    {
      if (v79 != 16)
      {
        if (v79 == 4)
        {
          v84 = objc_loadWeakRetained((*(v77 + 32) + 40));
          v85 = *(v77 + 32);
          v86 = *(v77 + 48);
          v87 = v86;
          if (v85)
          {
            if ([v86 length] > 3)
            {
              v199 = [v87 bytes];
              v98 = objc_opt_new();
              v93 = [[NSData alloc] initWithBytes:&unk_100296F31 length:14];
              if ([v87 length] >= 5)
              {
                v420 = [[NSData alloc] initWithBytes:v199 + 4 length:{objc_msgSend(v87, "length") - 4}];
                v200 = [NFTLV TLVWithTag:225 fromData:?];
                v426 = v200;
                if (!v200)
                {
                  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                  v201 = NFLogGetLogger();
                  if (v201)
                  {
                    v202 = v201;
                    v203 = object_getClass(v85);
                    v204 = class_isMetaClass(v203);
                    v205 = v84;
                    v206 = object_getClassName(v85);
                    v404 = sel_getName("_decodeCRSAuthTimerExpiredEvent:status:");
                    v207 = 45;
                    if (v204)
                    {
                      v207 = 43;
                    }

                    v387 = v206;
                    v84 = v205;
                    v202(3, "%c[%{public}s %{public}s]:%i Invalid TLV", v207, v387, v404, 199);
                  }

                  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                  v208 = NFSharedLogGetLogger();
                  if (os_log_type_enabled(v208, OS_LOG_TYPE_ERROR))
                  {
                    v209 = object_getClass(v85);
                    if (class_isMetaClass(v209))
                    {
                      v210 = 43;
                    }

                    else
                    {
                      v210 = 45;
                    }

                    v211 = object_getClassName(v85);
                    v212 = sel_getName("_decodeCRSAuthTimerExpiredEvent:status:");
                    *buf = 67109890;
                    v442 = v210;
                    v443 = 2082;
                    v444 = v211;
                    v445 = 2082;
                    v446 = v212;
                    v447 = 1024;
                    v448 = 199;
                    _os_log_impl(&_mh_execute_header, v208, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid TLV", buf, 0x22u);
                  }

                  v200 = 0;
                }

                obja = v84;
                v453 = 0u;
                v454 = 0u;
                v451 = 0u;
                v452 = 0u;
                v213 = [v200 childrenWithTag:79];
                v214 = [v213 countByEnumeratingWithState:&v451 objects:buf count:16];
                if (v214)
                {
                  v215 = v214;
                  v216 = *v452;
                  do
                  {
                    for (i = 0; i != v215; i = i + 1)
                    {
                      if (*v452 != v216)
                      {
                        objc_enumerationMutation(v213);
                      }

                      v218 = [*(*(&v451 + 1) + 8 * i) value];
                      if (([v218 isEqualToData:v93] & 1) == 0)
                      {
                        v219 = [v218 NF_asHexString];
                        [v98 addObject:v219];
                      }
                    }

                    v215 = [v213 countByEnumeratingWithState:&v451 objects:buf count:16];
                  }

                  while (v215);
                }

                v84 = obja;
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v220 = NFLogGetLogger();
              if (v220)
              {
                v221 = v220;
                v222 = object_getClass(v85);
                v223 = class_isMetaClass(v222);
                v388 = object_getClassName(v85);
                v405 = sel_getName("_decodeCRSAuthTimerExpiredEvent:status:");
                v224 = 45;
                if (v223)
                {
                  v224 = 43;
                }

                v221(6, "%c[%{public}s %{public}s]:%i %{public}@", v224, v388, v405, 210, v98);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v225 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v225, OS_LOG_TYPE_DEFAULT))
              {
                v226 = object_getClass(v85);
                if (class_isMetaClass(v226))
                {
                  v227 = 43;
                }

                else
                {
                  v227 = 45;
                }

                v228 = object_getClassName(v85);
                v229 = sel_getName("_decodeCRSAuthTimerExpiredEvent:status:");
                *v433 = 67110146;
                *&v433[4] = v227;
                *v434 = 2082;
                *&v434[2] = v228;
                *&v434[10] = 2082;
                *&v434[12] = v229;
                v435 = 1024;
                v436 = 210;
                v437 = 2114;
                v438 = v98;
                _os_log_impl(&_mh_execute_header, v225, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", v433, 0x2Cu);
              }
            }

            else
            {
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v88 = NFLogGetLogger();
              if (v88)
              {
                v89 = v88;
                v90 = object_getClass(v85);
                v91 = class_isMetaClass(v90);
                v382 = object_getClassName(v85);
                v397 = sel_getName("_decodeCRSAuthTimerExpiredEvent:status:");
                v92 = 45;
                if (v91)
                {
                  v92 = 43;
                }

                v89(3, "%c[%{public}s %{public}s]:%i Unexpected HCI event: %{public}@", v92, v382, v397, 183, v87);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v93 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
              {
                v94 = object_getClass(v85);
                if (class_isMetaClass(v94))
                {
                  v95 = 43;
                }

                else
                {
                  v95 = 45;
                }

                v96 = object_getClassName(v85);
                v97 = sel_getName("_decodeCRSAuthTimerExpiredEvent:status:");
                *buf = 67110146;
                v442 = v95;
                v443 = 2082;
                v444 = v96;
                v445 = 2082;
                v446 = v97;
                v447 = 1024;
                v448 = 183;
                v449 = 2114;
                *v450 = v87;
                _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unexpected HCI event: %{public}@", buf, 0x2Cu);
              }

              v98 = 0;
            }
          }

          else
          {
            v98 = 0;
          }

          [v84 handleTimerExpiredEvent:v98];
          [NFGeneralStatisticsCALogger updateAnalyticsGeneralTransactionStatistics:&off_100339760];
          return;
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v127 = NFLogGetLogger();
        if (v127)
        {
          v128 = v127;
          v129 = object_getClass(*(v77 + 32));
          v130 = class_isMetaClass(v129);
          v384 = object_getClassName(*(v77 + 32));
          v399 = sel_getName(*(v77 + 56));
          v131 = 45;
          if (v130)
          {
            v131 = 43;
          }

          v128(3, "%c[%{public}s %{public}s]:%i Unknown type: %d", v131, v384, v399, 989, v79);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v24 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_100;
        }

        v132 = object_getClass(*(v77 + 32));
        if (class_isMetaClass(v132))
        {
          v133 = 43;
        }

        else
        {
          v133 = 45;
        }

        v134 = object_getClassName(*(v77 + 32));
        v135 = sel_getName(*(v77 + 56));
        *buf = 67110146;
        v442 = v133;
        v443 = 2082;
        v444 = v134;
        v445 = 2082;
        v446 = v135;
        v447 = 1024;
        v448 = 989;
        v449 = 1024;
        *v450 = v79;
        v30 = "%c[%{public}s %{public}s]:%i Unknown type: %d";
        v31 = v24;
        v32 = 40;
LABEL_99:
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, v30, buf, v32);
LABEL_100:

        return;
      }

      v112 = *(v77 + 32);
      v113 = *(v77 + 48);
      v114 = v113;
      if (!v112)
      {

        v24 = 0;
        goto LABEL_100;
      }

      v115 = [v113 bytes];
      if ([v114 length] > 2)
      {
        v417 = v114;
        v416 = [[NSData alloc] initWithBytes:v115 + 2 length:{objc_msgSend(v114, "length") - 2}];
        v425 = [NFFelicaStateEvent decodeEvent:"decodeEvent:reverse:" reverse:?];
        v157 = v112[4];
        if (v157 && (*(v157 + 248) & 0x203) != 0)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v158 = NFLogGetLogger();
          if (v158)
          {
            v159 = v158;
            v160 = object_getClass(v112);
            v161 = class_isMetaClass(v160);
            v162 = object_getClassName(v112);
            v402 = sel_getName("_decodeFelicaStateEvent:");
            v163 = 45;
            if (v161)
            {
              v163 = 43;
            }

            v159(5, "%c[%{public}s %{public}s]:%i [L-ICF] HCI State event", v163, v162, v402, 226);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v164 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v164, OS_LOG_TYPE_DEFAULT))
          {
            v165 = object_getClass(v112);
            if (class_isMetaClass(v165))
            {
              v166 = 43;
            }

            else
            {
              v166 = 45;
            }

            v167 = object_getClassName(v112);
            v168 = sel_getName("_decodeFelicaStateEvent:");
            *v433 = 67109890;
            *&v433[4] = v166;
            *v434 = 2082;
            *&v434[2] = v167;
            *&v434[10] = 2082;
            *&v434[12] = v168;
            v435 = 1024;
            v436 = 226;
            _os_log_impl(&_mh_execute_header, v164, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i [L-ICF] HCI State event", v433, 0x22u);
          }

          v453 = 0u;
          v454 = 0u;
          v451 = 0u;
          v452 = 0u;
          obj = [v425 allKeys];
          v169 = [obj countByEnumeratingWithState:&v451 objects:buf count:16];
          if (v169)
          {
            v170 = v169;
            v171 = *v452;
            do
            {
              for (j = 0; j != v170; j = j + 1)
              {
                if (*v452 != v171)
                {
                  objc_enumerationMutation(obj);
                }

                v173 = *(*(&v451 + 1) + 8 * j);
                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v174 = NFLogGetLogger();
                if (v174)
                {
                  v175 = v174;
                  v176 = object_getClass(v112);
                  v177 = class_isMetaClass(v176);
                  v178 = object_getClassName(v112);
                  v179 = sel_getName("_decodeFelicaStateEvent:");
                  v180 = [v425 objectForKeyedSubscript:v173];
                  v181 = 45;
                  if (v177)
                  {
                    v181 = 43;
                  }

                  v175(5, "%c[%{public}s %{public}s]:%i [L-ICF] %{public}@ = %{public}@", v181, v178, v179, 228, v173, v180);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v182 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v182, OS_LOG_TYPE_DEFAULT))
                {
                  v183 = object_getClass(v112);
                  if (class_isMetaClass(v183))
                  {
                    v184 = 43;
                  }

                  else
                  {
                    v184 = 45;
                  }

                  v185 = object_getClassName(v112);
                  v186 = sel_getName("_decodeFelicaStateEvent:");
                  v187 = [v425 objectForKeyedSubscript:v173];
                  *v433 = 67110402;
                  *&v433[4] = v184;
                  *v434 = 2082;
                  *&v434[2] = v185;
                  *&v434[10] = 2082;
                  *&v434[12] = v186;
                  v435 = 1024;
                  v436 = 228;
                  v437 = 2114;
                  v438 = v173;
                  v439 = 2114;
                  v440 = v187;
                  _os_log_impl(&_mh_execute_header, v182, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i [L-ICF] %{public}@ = %{public}@", v433, 0x36u);
                }
              }

              v170 = [obj countByEnumeratingWithState:&v451 objects:buf count:16];
            }

            while (v170);
          }

          v77 = v419;
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v188 = NFLogGetLogger();
        if (v188)
        {
          v189 = v188;
          v190 = object_getClass(v112);
          v191 = class_isMetaClass(v190);
          v386 = object_getClassName(v112);
          v403 = sel_getName("_decodeFelicaStateEvent:");
          v192 = 45;
          if (v191)
          {
            v192 = 43;
          }

          v189(6, "%c[%{public}s %{public}s]:%i %{public}@", v192, v386, v403, 231, v417);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v193 = NFSharedLogGetLogger();
        v116 = v417;
        if (os_log_type_enabled(v193, OS_LOG_TYPE_DEFAULT))
        {
          v194 = object_getClass(v112);
          if (class_isMetaClass(v194))
          {
            v195 = 43;
          }

          else
          {
            v195 = 45;
          }

          v196 = object_getClassName(v112);
          v197 = sel_getName("_decodeFelicaStateEvent:");
          *v433 = 67110146;
          *&v433[4] = v195;
          *v434 = 2082;
          *&v434[2] = v196;
          *&v434[10] = 2082;
          *&v434[12] = v197;
          v435 = 1024;
          v436 = 231;
          v437 = 2114;
          v438 = v417;
          _os_log_impl(&_mh_execute_header, v193, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", v433, 0x2Cu);
        }

        v24 = v425;
        v122 = v416;
      }

      else
      {
        v116 = v114;
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v117 = NFLogGetLogger();
        if (v117)
        {
          v118 = v117;
          v119 = object_getClass(v112);
          v120 = class_isMetaClass(v119);
          v383 = object_getClassName(v112);
          v398 = sel_getName("_decodeFelicaStateEvent:");
          v121 = 45;
          if (v120)
          {
            v121 = 43;
          }

          v118(3, "%c[%{public}s %{public}s]:%i Unexpected HCI event: %{public}@", v121, v383, v398, 219, v114);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v122 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
        {
          v123 = object_getClass(v112);
          if (class_isMetaClass(v123))
          {
            v124 = 43;
          }

          else
          {
            v124 = 45;
          }

          v125 = object_getClassName(v112);
          v126 = sel_getName("_decodeFelicaStateEvent:");
          *v433 = 67110146;
          *&v433[4] = v124;
          *v434 = 2082;
          *&v434[2] = v125;
          *&v434[10] = 2082;
          *&v434[12] = v126;
          v435 = 1024;
          v436 = 219;
          v437 = 2114;
          v438 = v116;
          _os_log_impl(&_mh_execute_header, v122, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unexpected HCI event: %{public}@", v433, 0x2Cu);
        }

        v24 = 0;
      }

      if (!v24)
      {
        goto LABEL_100;
      }

      v35 = [[NSMutableDictionary alloc] initWithDictionary:v24];
      v198 = *(v77 + 40);
      if (v198)
      {
        v37 = [v198 NF_asHexString];
      }

      else
      {
        v37 = &stru_10031EA18;
      }

      [v35 setObject:v37 forKey:@"NFAppletAID"];
      v265 = *(v77 + 32);
      v266 = *(v265 + 32);
      if (v266 && (*(v266 + 248) & 0x200) != 0)
      {
        v267 = v24;
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v268 = NFLogGetLogger();
        if (v268)
        {
          v269 = v268;
          v270 = object_getClass(*(v77 + 32));
          v271 = class_isMetaClass(v270);
          v389 = object_getClassName(*(v77 + 32));
          v407 = sel_getName(*(v77 + 56));
          v272 = 45;
          if (v271)
          {
            v272 = 43;
          }

          v269(6, "%c[%{public}s %{public}s]:%i stateInfo: %{public}@", v272, v389, v407, 975, v35);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v273 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v273, OS_LOG_TYPE_DEFAULT))
        {
          v274 = object_getClass(*(v77 + 32));
          if (class_isMetaClass(v274))
          {
            v275 = 43;
          }

          else
          {
            v275 = 45;
          }

          v276 = object_getClassName(*(v77 + 32));
          v277 = sel_getName(*(v77 + 56));
          *buf = 67110146;
          v442 = v275;
          v443 = 2082;
          v444 = v276;
          v445 = 2082;
          v446 = v277;
          v447 = 1024;
          v448 = 975;
          v449 = 2114;
          *v450 = v35;
          _os_log_impl(&_mh_execute_header, v273, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i stateInfo: %{public}@", buf, 0x2Cu);
        }

        v265 = *(v77 + 32);
        v24 = v267;
      }

      v278 = objc_loadWeakRetained((v265 + 40));
      [v278 handleFelicaStateEvent:v35 appletAID:v37];

LABEL_269:
      goto LABEL_100;
    }

    sub_1000D1DAC(*(v77 + 32), *(v77 + 48));
    return;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v230 = NFLogGetLogger();
  if (v230)
  {
    v231 = v230;
    v232 = object_getClass(*(v77 + 32));
    v233 = class_isMetaClass(v232);
    v234 = object_getClassName(*(v77 + 32));
    v235 = sel_getName(*(v77 + 56));
    v236 = 45;
    if (v233)
    {
      v236 = 43;
    }

    v231(4, "%c[%{public}s %{public}s]:%i SE reset : %{public}@ - %{public}@", v236, v234, v235, 939, *(v77 + 40), *(v77 + 48));
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v237 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v237, OS_LOG_TYPE_ERROR))
  {
    v238 = object_getClass(*(v77 + 32));
    if (class_isMetaClass(v238))
    {
      v239 = 43;
    }

    else
    {
      v239 = 45;
    }

    v240 = object_getClassName(*(v77 + 32));
    v241 = sel_getName(*(v77 + 56));
    v242 = *(v77 + 40);
    v243 = *(v77 + 48);
    *buf = 67110402;
    v442 = v239;
    v443 = 2082;
    v444 = v240;
    v445 = 2082;
    v446 = v241;
    v447 = 1024;
    v448 = 939;
    v449 = 2114;
    *v450 = v242;
    *&v450[8] = 2114;
    *&v450[10] = v243;
    _os_log_impl(&_mh_execute_header, v237, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i SE reset : %{public}@ - %{public}@", buf, 0x36u);
  }

  v244 = NFSharedSignpostLog();
  if (os_signpost_enabled(v244))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v244, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "HCI SE Reset", &unk_1002E8B7A, buf, 2u);
  }
}

void sub_1000D5E68(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  *(*(a1 + 32) + 8) = *(a1 + 40);
  *(*(a1 + 32) + 12) = *(a1 + 44);
  *(*(a1 + 32) + 16) = *(a1 + 48);
  *(*(a1 + 32) + 20) = *(a1 + 52);
  objc_sync_exit(obj);
}

id sub_1000D8714()
{
  objc_opt_self();
  v0 = [NSSet alloc];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v40 = [v0 initWithObjects:{v1, v2, objc_opt_class(), 0}];
  v38 = [NSSet alloc];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [v38 initWithObjects:{v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, objc_opt_class(), 0}];
  v14 = [[NSSet alloc] initWithObjects:{objc_opt_class(), 0}];
  v15 = [NSSet alloc];
  v16 = objc_opt_class();
  v39 = [v15 initWithObjects:{v16, objc_opt_class(), 0}];
  v17 = [NSSet alloc];
  v18 = objc_opt_class();
  v37 = [v17 initWithObjects:{v18, objc_opt_class(), 0}];
  v19 = [NSSet alloc];
  v20 = objc_opt_class();
  v36 = [v19 initWithObjects:{v20, objc_opt_class(), 0}];
  v21 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NFContactlessPaymentSessionInterface];
  [v21 setClasses:v14 forSelector:"setActivePaymentApplet:keys:authorization:completion:" argumentIndex:0 ofReply:0];
  [v21 setClasses:v14 forSelector:"setActivePaymentApplet:keys:authorization:completion:" argumentIndex:0 ofReply:1];
  [v21 setClasses:v39 forSelector:"setActivePaymentApplets:keyIdentifiers:authorization:completion:" argumentIndex:0 ofReply:0];
  [v21 setClasses:v37 forSelector:"setActivePaymentApplets:keyIdentifiers:authorization:completion:" argumentIndex:1 ofReply:0];
  v35 = v14;
  [v21 setClasses:v14 forSelector:"setActivePaymentApplets:keyIdentifiers:authorization:completion:" argumentIndex:0 ofReply:1];
  [v21 setClasses:v36 forSelector:"setActivePaymentApplets:keyIdentifiers:authorization:completion:" argumentIndex:1 ofReply:1];
  [v21 setClasses:v40 forSelector:"getAppletsWithCompletion:" argumentIndex:0 ofReply:1];
  [v21 setClasses:v14 forSelector:"getAppletsWithCompletion:" argumentIndex:1 ofReply:1];
  [v21 setClasses:v40 forSelector:"getFelicaAppletState:completion:" argumentIndex:0 ofReply:0];
  v34 = v13;
  [v21 setClasses:v13 forSelector:"getFelicaAppletState:completion:" argumentIndex:0 ofReply:1];
  [v21 setClasses:v40 forSelector:"getTransitAppletState:completion:" argumentIndex:0 ofReply:0];
  [v21 setClasses:v13 forSelector:"getTransitAppletState:completion:" argumentIndex:0 ofReply:1];
  v33 = [NSSet alloc];
  v22 = objc_opt_class();
  v23 = objc_opt_class();
  v24 = objc_opt_class();
  v25 = objc_opt_class();
  v26 = objc_opt_class();
  v27 = objc_opt_class();
  v28 = objc_opt_class();
  v29 = objc_opt_class();
  v30 = objc_opt_class();
  v31 = [v33 initWithObjects:{v22, v23, v24, v25, v26, v27, v28, v29, v30, objc_opt_class(), 0}];
  [v21 setClasses:v31 forSelector:"setHostCards:" argumentIndex:0 ofReply:0];

  return v21;
}

id sub_1000D8C0C()
{
  objc_opt_self();
  v25 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NFContactlessPaymentSessionCallbacks];
  v23 = [NSSet alloc];
  v21 = objc_opt_class();
  v0 = objc_opt_class();
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [v23 initWithObjects:{v21, v0, v1, v2, v3, v4, v5, v6, v7, v8, objc_opt_class(), 0}];
  [v25 setClasses:v9 forSelector:"didPerformValueAddedServiceTransactions:" argumentIndex:0 ofReply:0];
  v24 = [NSSet alloc];
  v22 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = [v24 initWithObjects:{v22, v10, v11, v12, v13, v14, v15, v16, v17, v18, objc_opt_class(), 0}];
  [v25 setClasses:v19 forSelector:"didFelicaStateChange:" argumentIndex:0 ofReply:0];

  return v25;
}

void sub_1000D95D8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained && ([WeakRetained didEnd] & 1) == 0)
  {
    kdebug_trace();
    v4 = NFSharedSignpostLog();
    if (os_signpost_enabled(v4))
    {
      v5 = [v3 clientName];
      *buf = 138412290;
      *v38 = v5;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TAG_SESSION_START_EMULATION", "starting Tag Emulation session for client %@", buf, 0xCu);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v7 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 48));
      v12 = [v3 clientName];
      v13 = 45;
      if (isMetaClass)
      {
        v13 = 43;
      }

      v7(6, "%c[%{public}s %{public}s]:%i %{public}@", v13, ClassName, Name, 94, v12);
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
      v19 = [v3 clientName];
      *buf = 67110146;
      *v38 = v16;
      *&v38[4] = 2082;
      *&v38[6] = v17;
      v39 = 2082;
      v40 = v18;
      v41 = 1024;
      v42 = 94;
      v43 = 2114;
      v44 = v19;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
    }

    v20 = +[_NFHardwareManager sharedHardwareManager];
    v21 = sub_10004BD70();
    v22 = [v20 setRoutingConfig:v21];

    v23 = NFLogGetLogger();
    if (v23)
    {
      v24 = v23;
      v25 = object_getClass(*(a1 + 32));
      v26 = class_isMetaClass(v25);
      v27 = object_getClassName(*(a1 + 32));
      v28 = sel_getName(*(a1 + 48));
      v29 = [v3 clientName];
      v30 = 45;
      if (v26)
      {
        v30 = 43;
      }

      v24(6, "%c[%{public}s %{public}s]:%i NFC emulation mode activated: %@", v30, v27, v28, 97, v29);
    }

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
      v35 = sel_getName(*(a1 + 48));
      v36 = [v3 clientName];
      *buf = 67110146;
      *v38 = v33;
      *&v38[4] = 2082;
      *&v38[6] = v34;
      v39 = 2082;
      v40 = v35;
      v41 = 1024;
      v42 = 97;
      v43 = 2112;
      v44 = v36;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i NFC emulation mode activated: %@", buf, 0x2Cu);
    }
  }
}

void sub_1000DB3A0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _handleOneAPDU:*(a1 + 32)];
    WeakRetained = v3;
  }
}

void sub_1000DB570(uint64_t a1)
{
  kdebug_trace();
  v2 = NFSharedSignpostLog();
  if (os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TAG_SESSION_START_EMULATION", "begin", buf, 2u);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v4 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 56));
    v9 = [*(a1 + 32) clientName];
    v10 = 45;
    if (isMetaClass)
    {
      v10 = 43;
    }

    v4(6, "%c[%{public}s %{public}s]:%i %{public}@", v10, ClassName, Name, 275, v9);
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
    v16 = [*(a1 + 32) clientName];
    *buf = 67110146;
    v65 = v13;
    v66 = 2082;
    v67 = v14;
    v68 = 2082;
    v69 = v15;
    v70 = 1024;
    v71 = 275;
    v72 = 2114;
    v73 = v16;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    v37 = *(a1 + 40);
    if (v37)
    {
      sub_1000A775C(*(*(a1 + 32) + 184), v37);
      v38 = +[_NFHardwareManager sharedHardwareManager];
      v39 = sub_10004BD70();
      v40 = [v38 setRoutingConfig:v39];

      (*(*(a1 + 48) + 16))();
      v41 = NFLogGetLogger();
      if (v41)
      {
        v42 = v41;
        v43 = object_getClass(*(a1 + 32));
        v44 = class_isMetaClass(v43);
        v45 = object_getClassName(*(a1 + 32));
        v46 = sel_getName(*(a1 + 56));
        v47 = [*(a1 + 32) clientName];
        v48 = 45;
        if (v44)
        {
          v48 = 43;
        }

        v42(6, "%c[%{public}s %{public}s]:%i NFC emulation mode activated: %@", v48, v45, v46, 289, v47);
      }

      v49 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        v50 = object_getClass(*(a1 + 32));
        if (class_isMetaClass(v50))
        {
          v51 = 43;
        }

        else
        {
          v51 = 45;
        }

        v52 = object_getClassName(*(a1 + 32));
        v53 = sel_getName(*(a1 + 56));
        v54 = [*(a1 + 32) clientName];
        *buf = 67110146;
        v65 = v51;
        v66 = 2082;
        v67 = v52;
        v68 = 2082;
        v69 = v53;
        v70 = 1024;
        v71 = 289;
        v72 = 2112;
        v73 = v54;
        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i NFC emulation mode activated: %@", buf, 0x2Cu);
      }
    }

    else
    {
      v55 = *(a1 + 48);
      v56 = [NSError alloc];
      v49 = [NSString stringWithUTF8String:"nfcd"];
      v60 = NSLocalizedDescriptionKey;
      v57 = [NSString stringWithUTF8String:"Invalid Parameter"];
      v61 = v57;
      v58 = [NSDictionary dictionaryWithObjects:&v61 forKeys:&v60 count:1];
      v59 = [v56 initWithDomain:v49 code:10 userInfo:v58];
      (*(v55 + 16))(v55, v59);
    }

    kdebug_trace();
    v33 = NFSharedSignpostLog();
    if (os_signpost_enabled(v33))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v33, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TAG_SESSION_START_EMULATION", "end", buf, 2u);
    }

    goto LABEL_26;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v17 = NFLogGetLogger();
  if (v17)
  {
    v18 = v17;
    v19 = object_getClass(*(a1 + 32));
    v20 = class_isMetaClass(v19);
    v21 = object_getClassName(*(a1 + 32));
    v22 = sel_getName(*(a1 + 56));
    v23 = [*(a1 + 32) sessionUID];
    v24 = 45;
    if (v20)
    {
      v24 = 43;
    }

    v18(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v24, v21, v22, 277, v23);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v25 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
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
    v29 = sel_getName(*(a1 + 56));
    v30 = [*(a1 + 32) sessionUID];
    *buf = 67110146;
    v65 = v27;
    v66 = 2082;
    v67 = v28;
    v68 = 2082;
    v69 = v29;
    v70 = 1024;
    v71 = 277;
    v72 = 2114;
    v73 = v30;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  v31 = *(a1 + 48);
  if (v31)
  {
    v32 = [NSError alloc];
    v33 = [NSString stringWithUTF8String:"nfcd"];
    v62 = NSLocalizedDescriptionKey;
    v34 = [NSString stringWithUTF8String:"Session not active"];
    v63 = v34;
    v35 = [NSDictionary dictionaryWithObjects:&v63 forKeys:&v62 count:1];
    v36 = [v32 initWithDomain:v33 code:54 userInfo:v35];
    (*(v31 + 16))(v31, v36);

LABEL_26:
  }
}

void sub_1000DBD88(uint64_t a1)
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
    v8 = [*(a1 + 32) clientName];
    v9 = 45;
    if (isMetaClass)
    {
      v9 = 43;
    }

    v3(6, "%c[%{public}s %{public}s]:%i %{public}@", v9, ClassName, Name, 299, v8);
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
    v15 = [*(a1 + 32) clientName];
    *buf = 67110146;
    v55 = v12;
    v56 = 2082;
    v57 = v13;
    v58 = 2082;
    v59 = v14;
    v60 = 1024;
    v61 = 299;
    v62 = 2114;
    v63 = v15;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    v36 = +[_NFHardwareManager sharedHardwareManager];
    v37 = sub_10004C144();
    v38 = [v36 setRoutingConfig:v37];

    (*(*(a1 + 40) + 16))();
    v39 = NFLogGetLogger();
    if (v39)
    {
      v40 = v39;
      v41 = object_getClass(*(a1 + 32));
      v42 = class_isMetaClass(v41);
      v43 = object_getClassName(*(a1 + 32));
      v44 = sel_getName(*(a1 + 48));
      v45 = [*(a1 + 32) clientName];
      v46 = 45;
      if (v42)
      {
        v46 = 43;
      }

      v40(6, "%c[%{public}s %{public}s]:%i NFC emulation mode terminated: %@", v46, v43, v44, 306, v45);
    }

    v32 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v47 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v47))
      {
        v48 = 43;
      }

      else
      {
        v48 = 45;
      }

      v49 = object_getClassName(*(a1 + 32));
      v50 = sel_getName(*(a1 + 48));
      v51 = [*(a1 + 32) clientName];
      *buf = 67110146;
      v55 = v48;
      v56 = 2082;
      v57 = v49;
      v58 = 2082;
      v59 = v50;
      v60 = 1024;
      v61 = 306;
      v62 = 2112;
      v63 = v51;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i NFC emulation mode terminated: %@", buf, 0x2Cu);
    }

    goto LABEL_24;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v16 = NFLogGetLogger();
  if (v16)
  {
    v17 = v16;
    v18 = object_getClass(*(a1 + 32));
    v19 = class_isMetaClass(v18);
    v20 = object_getClassName(*(a1 + 32));
    v21 = sel_getName(*(a1 + 48));
    v22 = [*(a1 + 32) sessionUID];
    v23 = 45;
    if (v19)
    {
      v23 = 43;
    }

    v17(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v23, v20, v21, 300, v22);
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
    v28 = sel_getName(*(a1 + 48));
    v29 = [*(a1 + 32) sessionUID];
    *buf = 67110146;
    v55 = v26;
    v56 = 2082;
    v57 = v27;
    v58 = 2082;
    v59 = v28;
    v60 = 1024;
    v61 = 300;
    v62 = 2114;
    v63 = v29;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  v30 = *(a1 + 40);
  if (v30)
  {
    v31 = [NSError alloc];
    v32 = [NSString stringWithUTF8String:"nfcd"];
    v52 = NSLocalizedDescriptionKey;
    v33 = [NSString stringWithUTF8String:"Session not active"];
    v53 = v33;
    v34 = [NSDictionary dictionaryWithObjects:&v53 forKeys:&v52 count:1];
    v35 = [v31 initWithDomain:v32 code:54 userInfo:v34];
    (*(v30 + 16))(v30, v35);

LABEL_24:
  }
}

void sub_1000DC414(uint64_t a1)
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
    v8 = [*(a1 + 32) clientName];
    v9 = 45;
    if (isMetaClass)
    {
      v9 = 43;
    }

    v3(6, "%c[%{public}s %{public}s]:%i %{public}@", v9, ClassName, Name, 313, v8);
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
    v15 = [*(a1 + 32) clientName];
    *buf = 67110146;
    v39 = v12;
    v40 = 2082;
    v41 = v13;
    v42 = 2082;
    v43 = v14;
    v44 = 1024;
    v45 = 313;
    v46 = 2114;
    v47 = v15;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  if (![*(a1 + 32) didStart] || (objc_msgSend(*(a1 + 32), "isSuspended") & 1) != 0 || objc_msgSend(*(a1 + 32), "didEnd"))
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v16 = NFLogGetLogger();
    if (v16)
    {
      v17 = v16;
      v18 = object_getClass(*(a1 + 32));
      v19 = class_isMetaClass(v18);
      v20 = object_getClassName(*(a1 + 32));
      v21 = sel_getName(*(a1 + 56));
      v22 = [*(a1 + 32) sessionUID];
      v23 = 45;
      if (v19)
      {
        v23 = 43;
      }

      v17(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v23, v20, v21, 314, v22);
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
      v29 = [*(a1 + 32) sessionUID];
      *buf = 67110146;
      v39 = v26;
      v40 = 2082;
      v41 = v27;
      v42 = 2082;
      v43 = v28;
      v44 = 1024;
      v45 = 314;
      v46 = 2114;
      v47 = v29;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
    }

    v30 = *(a1 + 48);
    if (v30)
    {
      v31 = [NSError alloc];
      v32 = [NSString stringWithUTF8String:"nfcd"];
      v36 = NSLocalizedDescriptionKey;
      v33 = [NSString stringWithUTF8String:"Session not active"];
      v37 = v33;
      v34 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
      v35 = [v31 initWithDomain:v32 code:54 userInfo:v34];
      (*(v30 + 16))(v30, v35);
    }
  }

  else
  {
    sub_1000A775C(*(*(a1 + 32) + 184), *(a1 + 40));
    (*(*(a1 + 48) + 16))();
  }
}

void sub_1000DC904(uint64_t a1)
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
    v8 = [*(a1 + 32) clientName];
    v9 = 45;
    if (isMetaClass)
    {
      v9 = 43;
    }

    v3(6, "%c[%{public}s %{public}s]:%i %{public}@", v9, ClassName, Name, 325, v8);
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
    v15 = [*(a1 + 32) clientName];
    *buf = 67110146;
    v40 = v12;
    v41 = 2082;
    v42 = v13;
    v43 = 2082;
    v44 = v14;
    v45 = 1024;
    v46 = 325;
    v47 = 2114;
    v48 = v15;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    v36 = *(a1 + 40);
    v32 = sub_1000A7AB0(*(*(a1 + 32) + 184));
    (*(v36 + 16))(v36, v32, 0);
    goto LABEL_24;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v16 = NFLogGetLogger();
  if (v16)
  {
    v17 = v16;
    v18 = object_getClass(*(a1 + 32));
    v19 = class_isMetaClass(v18);
    v20 = object_getClassName(*(a1 + 32));
    v21 = sel_getName(*(a1 + 48));
    v22 = [*(a1 + 32) sessionUID];
    v23 = 45;
    if (v19)
    {
      v23 = 43;
    }

    v17(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v23, v20, v21, 326, v22);
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
    v28 = sel_getName(*(a1 + 48));
    v29 = [*(a1 + 32) sessionUID];
    *buf = 67110146;
    v40 = v26;
    v41 = 2082;
    v42 = v27;
    v43 = 2082;
    v44 = v28;
    v45 = 1024;
    v46 = 326;
    v47 = 2114;
    v48 = v29;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  v30 = *(a1 + 40);
  if (v30)
  {
    v31 = [NSError alloc];
    v32 = [NSString stringWithUTF8String:"nfcd"];
    v37 = NSLocalizedDescriptionKey;
    v33 = [NSString stringWithUTF8String:"Session not active"];
    v38 = v33;
    v34 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    v35 = [v31 initWithDomain:v32 code:54 userInfo:v34];
    (*(v30 + 16))(v30, 0, v35);

LABEL_24:
  }
}