id sub_100020308(void *a1, void *a2, void *a3)
{
  v5 = a2;
  if (!a1)
  {
    v10 = 0;
    goto LABEL_43;
  }

  if (!a1[1])
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v12 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("getKeyWithIdentifier:object:");
      v16 = 45;
      if (isMetaClass)
      {
        v16 = 43;
      }

      v12(3, "%c[%{public}s %{public}s]:%i Could not getNFTrustDBKeyWithIdentifier, failed to connect to database", v16, ClassName, Name, 500);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v17 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = object_getClass(a1);
      if (class_isMetaClass(v18))
      {
        v19 = 43;
      }

      else
      {
        v19 = 45;
      }

      *buf = 67109890;
      v51 = v19;
      v52 = 2082;
      v53 = object_getClassName(a1);
      v54 = 2082;
      v55 = sel_getName("getKeyWithIdentifier:object:");
      v56 = 1024;
      v57 = 500;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Could not getNFTrustDBKeyWithIdentifier, failed to connect to database", buf, 0x22u);
    }

    v20 = sub_10013DE50();
    goto LABEL_26;
  }

  if (!a3)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v21 = NFLogGetLogger();
    if (v21)
    {
      v22 = v21;
      v23 = object_getClass(a1);
      v24 = class_isMetaClass(v23);
      v25 = object_getClassName(a1);
      v42 = sel_getName("getKeyWithIdentifier:object:");
      v26 = 45;
      if (v24)
      {
        v26 = 43;
      }

      v22(3, "%c[%{public}s %{public}s]:%i trustDBKey can not be nil", v26, v25, v42, 505);
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

      *buf = 67109890;
      v51 = v29;
      v52 = 2082;
      v53 = object_getClassName(a1);
      v54 = 2082;
      v55 = sel_getName("getKeyWithIdentifier:object:");
      v56 = 1024;
      v57 = 505;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i trustDBKey can not be nil", buf, 0x22u);
    }

    v20 = sub_10013DC5C(&stru_10031EA18);
LABEL_26:
    v10 = v20;
    goto LABEL_43;
  }

  *a3 = 0;
  v6 = objc_opt_class();
  v48 = 0;
  v7 = sub_10001E524(a1, v6, &v48);
  v8 = v48;
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else if (v7)
  {
    v43 = v7;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v30 = v7;
    v31 = [v30 countByEnumeratingWithState:&v44 objects:v49 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v45;
      while (2)
      {
        for (i = 0; i != v32; i = i + 1)
        {
          if (*v45 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = *(*(&v44 + 1) + 8 * i);
          v36 = [v30 objectForKeyedSubscript:v35];
          v37 = v36;
          if (v36)
          {
            v36 = v36[1];
          }

          v38 = v5;
          v39 = [v36 isEqualToString:v5];

          if (v39)
          {
            *a3 = [v30 objectForKeyedSubscript:v35];

            v10 = 0;
            v5 = v38;
            goto LABEL_40;
          }

          v5 = v38;
        }

        v32 = [v30 countByEnumeratingWithState:&v44 objects:v49 count:16];
        if (v32)
        {
          continue;
        }

        break;
      }
    }

    v10 = 0;
LABEL_40:
    v9 = 0;
    v7 = v43;
  }

  else
  {
    v10 = 0;
  }

LABEL_43:

  return v10;
}

void sub_100020884(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 8), a2);
  }
}

id sub_100020BD0(id a1, void *a2)
{
  v2 = a1;
  if (a1)
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x2020000000;
    v30 = -1;
    if (a2)
    {
      v4 = [a1 map];
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_100020EBC;
      v26[3] = &unk_100315888;
      v26[4] = &v27;
      [v4 enumerateObjectsUsingBlock:v26];

      v5 = v28[3];
      if (v5 != -1)
      {
        [NSNumber numberWithUnsignedInteger:v5 + 1];
        *a2 = v2 = 0;
LABEL_17:
        _Block_object_dispose(&v27, 8);
        goto LABEL_18;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v8 = Logger;
        Class = object_getClass(v2);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v2);
        Name = sel_getName("getSlot:");
        v13 = __error();
        v24 = strerror(*v13);
        v25 = *__error();
        v14 = 45;
        if (isMetaClass)
        {
          v14 = 43;
        }

        v8(3, "%c[%{public}s %{public}s]:%i %s errno=%d Could not find available slot", v14, ClassName, Name, 735, v24, v25);
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

        v18 = object_getClassName(v2);
        v19 = sel_getName("getSlot:");
        v20 = __error();
        v21 = strerror(*v20);
        v22 = *__error();
        *buf = 67110402;
        v32 = v17;
        v33 = 2082;
        v34 = v18;
        v35 = 2082;
        v36 = v19;
        v37 = 1024;
        v38 = 735;
        v39 = 2080;
        v40 = v21;
        v41 = 1024;
        v42 = v22;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i %s errno=%d Could not find available slot", buf, 0x32u);
      }

      v6 = sub_10013E030(@"create key, no availble slot");
    }

    else
    {
      v6 = sub_10013E33C(@"slot shall not be nil");
    }

    v2 = v6;
    goto LABEL_17;
  }

LABEL_18:

  return v2;
}

uint64_t sub_100020EBC(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (!a2 || !*(a2 + 8))
  {
    *(*(*(result + 32) + 8) + 24) = a3;
    *a4 = 1;
  }

  return result;
}

id sub_100020EEC(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!a1)
  {
    goto LABEL_14;
  }

  if (!v6)
  {
    v15 = @"Could not pushKey with nil slot";
LABEL_8:
    a1 = sub_10013E33C(v15);
    goto LABEL_14;
  }

  if (([v6 charValue] & 0x80000000) != 0)
  {
    v15 = @"Could not pushKey with negative slot";
    goto LABEL_8;
  }

  v8 = [a1 map];
  v9 = [v8 count];
  v10 = [v7 unsignedCharValue];

  if (v9 >= v10)
  {
    v16 = [a1 map];
    v17 = [v16 objectAtIndex:{objc_msgSend(v7, "unsignedCharValue") - 1}];

    if (v5)
    {
      v18 = v5[1];
    }

    else
    {
      v18 = 0;
    }

    sub_100020884(v17, v18);
    if (v17)
    {
      v17[2] = 0;
    }

    a1 = 0;
  }

  else
  {
    v11 = [NSString alloc];
    v12 = [a1 instanceAID];
    v13 = [a1 map];
    v14 = [v11 initWithFormat:@"Could pushKey in slot %@ of PTApplet %@, applet has %lu slots", v7, v12, objc_msgSend(v13, "count")];
    a1 = sub_10013E33C(v14);
  }

LABEL_14:

  return a1;
}

id sub_100021094(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!a1)
  {
    goto LABEL_12;
  }

  if (!v3)
  {
    v12 = @"Could not clean with nil slot";
LABEL_8:
    a1 = sub_10013E33C(v12);
    goto LABEL_12;
  }

  if (([v3 charValue] & 0x80000000) != 0)
  {
    v12 = @"Could not clean with negative slot";
    goto LABEL_8;
  }

  v5 = [a1 map];
  v6 = [v5 count];
  v7 = [v4 unsignedCharValue];

  if (v6 >= v7)
  {
    v13 = [a1 map];
    v14 = [v13 objectAtIndex:{objc_msgSend(v4, "unsignedCharValue") - 1}];

    sub_100020884(v14, 0);
    if (v14)
    {
      v14[2] = 0;
    }

    a1 = 0;
  }

  else
  {
    v8 = [NSString alloc];
    v9 = [a1 instanceAID];
    v10 = [a1 map];
    v11 = [v8 initWithFormat:@"Could not clean slot %@ of PTApplet %@, applet has %lu slots", v4, v9, objc_msgSend(v10, "count")];
    a1 = sub_10013E33C(v11);
  }

LABEL_12:

  return a1;
}

NFTrustDBKey *sub_100021788(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = objc_opt_self();
  if (!v8)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v21 = Logger;
      Class = object_getClass(v12);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v12);
      Name = sel_getName("dbKeyWithIdentifier:applicationIdentifier:instanceAID:createKeyRequest:");
      v25 = 45;
      if (isMetaClass)
      {
        v25 = 43;
      }

      v21(3, "%c[%{public}s %{public}s]:%i Could not create NFTrustDBKey with nil identifier", v25, ClassName, Name, 857);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v26 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_53;
    }

    v27 = object_getClass(v12);
    if (class_isMetaClass(v27))
    {
      v28 = 43;
    }

    else
    {
      v28 = 45;
    }

    *buf = 67109890;
    v69 = v28;
    v70 = 2082;
    v71 = object_getClassName(v12);
    v72 = 2082;
    v73 = sel_getName("dbKeyWithIdentifier:applicationIdentifier:instanceAID:createKeyRequest:");
    v74 = 1024;
    v75 = 857;
    v29 = "%c[%{public}s %{public}s]:%i Could not create NFTrustDBKey with nil identifier";
    goto LABEL_52;
  }

  if (!v9)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v30 = NFLogGetLogger();
    if (v30)
    {
      v31 = v30;
      v32 = object_getClass(v12);
      v33 = class_isMetaClass(v32);
      v34 = object_getClassName(v12);
      v64 = sel_getName("dbKeyWithIdentifier:applicationIdentifier:instanceAID:createKeyRequest:");
      v35 = 45;
      if (v33)
      {
        v35 = 43;
      }

      v31(3, "%c[%{public}s %{public}s]:%i Could not create NFTrustDBKey with nil applicationIdentifier", v35, v34, v64, 862);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v26 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_53;
    }

    v36 = object_getClass(v12);
    if (class_isMetaClass(v36))
    {
      v37 = 43;
    }

    else
    {
      v37 = 45;
    }

    *buf = 67109890;
    v69 = v37;
    v70 = 2082;
    v71 = object_getClassName(v12);
    v72 = 2082;
    v73 = sel_getName("dbKeyWithIdentifier:applicationIdentifier:instanceAID:createKeyRequest:");
    v74 = 1024;
    v75 = 862;
    v29 = "%c[%{public}s %{public}s]:%i Could not create NFTrustDBKey with nil applicationIdentifier";
    goto LABEL_52;
  }

  if (!v10)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v38 = NFLogGetLogger();
    if (v38)
    {
      v39 = v38;
      v40 = object_getClass(v12);
      v41 = class_isMetaClass(v40);
      v42 = object_getClassName(v12);
      v65 = sel_getName("dbKeyWithIdentifier:applicationIdentifier:instanceAID:createKeyRequest:");
      v43 = 45;
      if (v41)
      {
        v43 = 43;
      }

      v39(3, "%c[%{public}s %{public}s]:%i Could not create NFTrustDBKey with nil instanceAID", v43, v42, v65, 867);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v26 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_53;
    }

    v44 = object_getClass(v12);
    if (class_isMetaClass(v44))
    {
      v45 = 43;
    }

    else
    {
      v45 = 45;
    }

    *buf = 67109890;
    v69 = v45;
    v70 = 2082;
    v71 = object_getClassName(v12);
    v72 = 2082;
    v73 = sel_getName("dbKeyWithIdentifier:applicationIdentifier:instanceAID:createKeyRequest:");
    v74 = 1024;
    v75 = 867;
    v29 = "%c[%{public}s %{public}s]:%i Could not create NFTrustDBKey with nil instanceAID";
    goto LABEL_52;
  }

  if (!v11)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v46 = NFLogGetLogger();
    if (v46)
    {
      v47 = v46;
      v48 = object_getClass(v12);
      v49 = class_isMetaClass(v48);
      v50 = object_getClassName(v12);
      v66 = sel_getName("dbKeyWithIdentifier:applicationIdentifier:instanceAID:createKeyRequest:");
      v51 = 45;
      if (v49)
      {
        v51 = 43;
      }

      v47(3, "%c[%{public}s %{public}s]:%i Could not create NFTrustDBKey with nil NFTrustCreateKeyRequest", v51, v50, v66, 872);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v26 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_53;
    }

    v52 = object_getClass(v12);
    if (class_isMetaClass(v52))
    {
      v53 = 43;
    }

    else
    {
      v53 = 45;
    }

    *buf = 67109890;
    v69 = v53;
    v70 = 2082;
    v71 = object_getClassName(v12);
    v72 = 2082;
    v73 = sel_getName("dbKeyWithIdentifier:applicationIdentifier:instanceAID:createKeyRequest:");
    v74 = 1024;
    v75 = 872;
    v29 = "%c[%{public}s %{public}s]:%i Could not create NFTrustDBKey with nil NFTrustCreateKeyRequest";
    goto LABEL_52;
  }

  v13 = [NFTrustDBKey alloc];
  if (v13)
  {
    v14 = v13;
    [(NFTrustDBKey *)v13 setIdentifier:v8];
    [(NFTrustDBKey *)v14 setApplicationIdentifier:v9];
    [(NFTrustDBKey *)v14 setInstanceAID:v10];
    v15 = [v11 localValidations];
    [(NFTrustDBKey *)v14 setLocalValidations:v15];

    v16 = [v11 counterLimit];
    counterLimit = v14->_counterLimit;
    v14->_counterLimit = v16;

    v18 = [NSNumber numberWithUnsignedInteger:0];
    counterValue = v14->_counterValue;
    v14->_counterValue = v18;

    goto LABEL_54;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v54 = NFLogGetLogger();
  if (v54)
  {
    v55 = v54;
    v56 = object_getClass(v12);
    v57 = class_isMetaClass(v56);
    v58 = object_getClassName(v12);
    v67 = sel_getName("dbKeyWithIdentifier:applicationIdentifier:instanceAID:createKeyRequest:");
    v59 = 45;
    if (v57)
    {
      v59 = 43;
    }

    v55(3, "%c[%{public}s %{public}s]:%i Could not create DB NFTrustKey", v59, v58, v67, 877);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v26 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    v60 = object_getClass(v12);
    if (class_isMetaClass(v60))
    {
      v61 = 43;
    }

    else
    {
      v61 = 45;
    }

    *buf = 67109890;
    v69 = v61;
    v70 = 2082;
    v71 = object_getClassName(v12);
    v72 = 2082;
    v73 = sel_getName("dbKeyWithIdentifier:applicationIdentifier:instanceAID:createKeyRequest:");
    v74 = 1024;
    v75 = 877;
    v29 = "%c[%{public}s %{public}s]:%i Could not create DB NFTrustKey";
LABEL_52:
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, v29, buf, 0x22u);
  }

LABEL_53:

  v14 = 0;
LABEL_54:

  return v14;
}

void sub_100021E3C(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 48), a2);
  }
}

BOOL sub_100021E54(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = [a1 localValidations];
  v2 = v1 != 0;

  return v2;
}

id sub_100021E94(uint64_t a1)
{
  if (a1)
  {
    v2 = [NFTrustKey keyWithIdentifier:*(a1 + 8)];
    v3 = v2;
    if (v2)
    {
      [v2 setKeyAttestationAuthority:*(a1 + 16)];
      v4 = [*(a1 + 24) NF_asHexString];
      [v3 setKeyAttestation:v4];

      [v3 setCounterLimit:*(a1 + 40)];
      [v3 setCounterValue:*(a1 + 48)];
      v5 = [a1 localValidations];
      [v3 setLocalValidations:v5];

      v6 = v3;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_100021FA0(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 16), a2);
  }
}

void sub_100021FB8(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 24), a2);
  }
}

void sub_100021FD0(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 32), a2);
  }
}

uint64_t sub_100022774(void *a1)
{
  v1 = a1;
  v2 = [v1 category];
  if (v2 > 9)
  {
    v3 = 0;
  }

  else
  {
    v3 = qword_100296B90[v2];
  }

  if ([v1 notificationType] == 3)
  {
    v4 = v1;
    if ([v4 terminalType] == 2 && (objc_msgSend(v4, "terminalSubType") == 9 || objc_msgSend(v4, "terminalSubType") == 11))
    {
      v3 |= 8uLL;
    }
  }

  return v3;
}

void sub_100022814(id a1)
{
  v1 = objc_alloc_init(NFSecureXPCEventPublisherManager);
  v2 = qword_10035D920;
  qword_10035D920 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100029F08(_BYTE *a1)
{
  if (a1 && a1[25] == 1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v3 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("cancelOutstandingActivity");
      v7 = 45;
      if (isMetaClass)
      {
        v7 = 43;
      }

      v3(6, "%c[%{public}s %{public}s]:%i Marking activity cancelled", v7, ClassName, Name, 47);
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
      v13 = v10;
      v14 = 2082;
      v15 = object_getClassName(a1);
      v16 = 2082;
      v17 = sel_getName("cancelOutstandingActivity");
      v18 = 1024;
      v19 = 47;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Marking activity cancelled", buf, 0x22u);
    }

    a1[24] = 1;
  }
}

void sub_10002A0A4(uint64_t a1, void *a2, void *a3)
{
  v14.tv_sec = 0;
  *&v14.tv_usec = 0;
  v5 = a3;
  v6 = a2;
  gettimeofday(&v14, 0);
  v13 = [NSDate dateWithTimeIntervalSince1970:v14.tv_sec];
  v7 = objc_opt_new();
  [v7 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
  v8 = [NSString alloc];
  v9 = [v7 stringFromDate:v13];
  v10 = (v14.tv_usec / 1000);
  v11 = [v6 NF_asHexString];

  v12 = [v8 initWithFormat:@"%@.%03d %@ : %@", v9, v10, v5, v11];
  [*(a1 + 16) addObject:v12];
}

void sub_10002A1E4(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v5 = v3;
    v4 = a1;
    objc_sync_enter(v4);
    [v4[1] addObject:v5];
    if (objc_opt_respondsToSelector())
    {
      [v5 setManager:v4];
    }

    objc_sync_exit(v4);

    v3 = v5;
  }
}

id sub_10002A270(id result, void *a2)
{
  if (result)
  {
    v3 = result;
    v4 = a2;
    objc_sync_enter(v3);
    v5 = [v3[1] containsObject:v4];

    objc_sync_exit(v3);
    return v5;
  }

  return result;
}

void sub_10002A2DC(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = a1;
    objc_sync_enter(v4);
    [v4[1] removeObject:v3];
    if (objc_opt_respondsToSelector())
    {
      [v3 setManager:0];
    }

    if (![v4[1] count])
    {
      v5 = +[_NFHardwareManager sharedHardwareManager];
      v6 = [v5 setHostEmulationEnabled:0];
    }

    if (NFIsInternalBuild() && [v4[2] count])
    {
      v24 = v3;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      obj = v4[2];
      v7 = [obj countByEnumeratingWithState:&v26 objects:v40 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v27;
        do
        {
          for (i = 0; i != v8; i = i + 1)
          {
            if (*v27 != v9)
            {
              objc_enumerationMutation(obj);
            }

            v11 = *(*(&v26 + 1) + 8 * i);
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            Logger = NFLogGetLogger();
            if (Logger)
            {
              v13 = Logger;
              Class = object_getClass(v4);
              isMetaClass = class_isMetaClass(Class);
              ClassName = object_getClassName(v4);
              Name = sel_getName("removeApplet:");
              v16 = 45;
              if (isMetaClass)
              {
                v16 = 43;
              }

              v13(6, "%c[%{public}s %{public}s]:%i %@", v16, ClassName, Name, 105, v11);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v17 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              v18 = object_getClass(v4);
              if (class_isMetaClass(v18))
              {
                v19 = 43;
              }

              else
              {
                v19 = 45;
              }

              v20 = object_getClassName(v4);
              v21 = sel_getName("removeApplet:");
              *buf = 67110146;
              v31 = v19;
              v32 = 2082;
              v33 = v20;
              v34 = 2082;
              v35 = v21;
              v36 = 1024;
              v37 = 105;
              v38 = 2112;
              v39 = v11;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %@", buf, 0x2Cu);
            }
          }

          v8 = [obj countByEnumeratingWithState:&v26 objects:v40 count:16];
        }

        while (v8);
      }

      v3 = v24;
    }

    objc_sync_exit(v4);
  }
}

id *sub_10002A5B8(id *a1)
{
  if (a1)
  {
    v1 = a1;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v3 = Logger;
      Class = object_getClass(v1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v1);
      Name = sel_getName("getAPDULog");
      v8 = 45;
      if (isMetaClass)
      {
        v8 = 43;
      }

      v3(6, "%c[%{public}s %{public}s]:%i %{public}@", v8, ClassName, Name, 121, v1[2]);
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
      v13 = sel_getName("getAPDULog");
      v14 = v1[2];
      *buf = 67110146;
      v17 = v11;
      v18 = 2082;
      v19 = v12;
      v20 = 2082;
      v21 = v13;
      v22 = 1024;
      v23 = 121;
      v24 = 2114;
      v25 = v14;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
    }

    a1 = v1[2];
  }

  return a1;
}

void sub_10002A770(void *a1, void *a2, char a3)
{
  v5 = a2;
  if (a1)
  {
    v6 = a1;
    objc_sync_enter(v6);
    v6[12] = 256;
    v7 = dispatch_get_global_queue(33, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002A854;
    block[3] = &unk_100315B38;
    block[4] = v6;
    v9 = v5;
    v10 = a3;
    dispatch_async(v7, block);

    objc_sync_exit(v6);
  }
}

void sub_10002A854(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  kdebug_trace();
  v3 = NFSharedSignpostLog();
  if (os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "VAS_START", &unk_1002E8B7A, buf, 2u);
  }

  v4 = *(v1 + 32);
  v96 = *(v1 + 48);
  v5 = *(v1 + 40);
  if (v4)
  {
    v91 = v2;
    v92 = v1;
    context = objc_autoreleasePoolPush();
    v6 = 0;
    v7 = 0;
    v94 = 0;
    v8 = 0;
    v95 = 0;
    v9 = 0;
    v93 = v5;
    while (1)
    {
      v10 = v8;
      v11 = v7;
      if (*(v4 + 24) == 1)
      {
        break;
      }

      v8 = [v5 readAPDU];

      if (!v8 || *(v4 + 24) == 1)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          v52 = Logger;
          Class = object_getClass(v4);
          isMetaClass = class_isMetaClass(Class);
          ClassName = object_getClassName(v4);
          Name = sel_getName("runHostCardEmulation:paymentEnabled:");
          v56 = 45;
          if (isMetaClass)
          {
            v56 = 43;
          }

          v52(6, "%c[%{public}s %{public}s]:%i no response or cancelled, abort", v56, ClassName, Name, 170);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v57 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          v58 = object_getClass(v4);
          if (class_isMetaClass(v58))
          {
            v59 = 43;
          }

          else
          {
            v59 = 45;
          }

          v60 = object_getClassName(v4);
          v61 = sel_getName("runHostCardEmulation:paymentEnabled:");
          v101[0] = 67109890;
          v101[1] = v59;
          v102 = 2082;
          v103 = v60;
          v104 = 2082;
          v105 = v61;
          v106 = 1024;
          v107 = 170;
          _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i no response or cancelled, abort", v101, 0x22u);
        }

        v10 = v8;
        goto LABEL_71;
      }

      sub_10002A0A4(v4, v8, @"[<RX]");
      v7 = [[NFCommandAPDU alloc] initWithData:v8 uniformLengthCheck:0];

      if ([v7 instruction] == 164 && objc_msgSend(v7, "p1") == 4)
      {
        [v9 handleDeselect];

        v99 = 0u;
        v100 = 0u;
        v97 = 0u;
        v98 = 0u;
        v12 = *(v4 + 8);
        v13 = [v12 countByEnumeratingWithState:&v97 objects:buf count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v98;
LABEL_12:
          v16 = 0;
          while (1)
          {
            if (*v98 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v97 + 1) + 8 * v16);
            if (objc_opt_respondsToSelector())
            {
              [v17 supportPayment:v96];
            }

            v18 = [v17 handleSelect:v7];
            if (v18)
            {
              break;
            }

            if (v14 == ++v16)
            {
              v14 = [v12 countByEnumeratingWithState:&v97 objects:buf count:16];
              if (v14)
              {
                goto LABEL_12;
              }

              goto LABEL_20;
            }
          }

          v6 = v18;
          v9 = v17;

          v95 = 1;
          if (!v9)
          {
            goto LABEL_37;
          }

          v5 = v93;
        }

        else
        {
LABEL_20:

          v6 = 0;
LABEL_37:
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v36 = NFLogGetLogger();
          v5 = v93;
          if (v36)
          {
            v37 = v36;
            v38 = object_getClass(v4);
            v39 = class_isMetaClass(v38);
            v40 = object_getClassName(v4);
            v86 = sel_getName("runHostCardEmulation:paymentEnabled:");
            v41 = 45;
            if (v39)
            {
              v41 = 43;
            }

            v37(6, "%c[%{public}s %{public}s]:%i Failed to find suitable applet", v41, v40, v86, 198);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v42 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            v43 = object_getClass(v4);
            if (class_isMetaClass(v43))
            {
              v44 = 43;
            }

            else
            {
              v44 = 45;
            }

            v45 = object_getClassName(v4);
            v46 = sel_getName("runHostCardEmulation:paymentEnabled:");
            v101[0] = 67109890;
            v101[1] = v44;
            v102 = 2082;
            v103 = v45;
            v104 = 2082;
            v105 = v46;
            v106 = 1024;
            v107 = 198;
            _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Failed to find suitable applet", v101, 0x22u);
          }

          LOWORD(v101[0]) = -32150;
          v47 = [[NSData alloc] initWithBytes:v101 length:2];

          v48 = [NFResponseAPDU responseWithData:v47];

          v9 = 0;
          v6 = v48;
          v94 = v47;
        }

        if ((*(v4 + 24) & 1) == 0)
        {
          v49 = [v6 data];
          [v5 sendAPDU:v49];

          v50 = [v6 data];
          sub_10002A0A4(v4, v50, @"[>TX]");
        }
      }

      else if (v9)
      {
        v19 = [v9 handleAPDU:v7];

        if ((*(v4 + 24) & 1) == 0)
        {
          v20 = [v19 data];
          [v5 sendAPDU:v20];

          v21 = [v19 data];
          sub_10002A0A4(v4, v21, @"[>TX]");
        }

        v6 = v19;
      }

      else
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v22 = NFLogGetLogger();
        if (v22)
        {
          v23 = v22;
          v24 = object_getClass(v4);
          v25 = class_isMetaClass(v24);
          v84 = object_getClassName(v4);
          v85 = sel_getName("runHostCardEmulation:paymentEnabled:");
          v26 = 45;
          if (v25)
          {
            v26 = 43;
          }

          v23(6, "%c[%{public}s %{public}s]:%i Invalid command: %{public}@", v26, v84, v85, 216, v8, context);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v27 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = object_getClass(v4);
          if (class_isMetaClass(v28))
          {
            v29 = 43;
          }

          else
          {
            v29 = 45;
          }

          v30 = object_getClassName(v4);
          v31 = sel_getName("runHostCardEmulation:paymentEnabled:");
          v101[0] = 67110146;
          v101[1] = v29;
          v102 = 2082;
          v103 = v30;
          v104 = 2082;
          v105 = v31;
          v106 = 1024;
          v107 = 216;
          v108 = 2114;
          v109 = v8;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Invalid command: %{public}@", v101, 0x2Cu);
        }

        strcpy(v101, "i");
        v32 = [[NSData alloc] initWithBytes:v101 length:2];

        v33 = [NFResponseAPDU responseWithData:v32];

        v34 = [v33 data];
        [v5 sendAPDU:v34];

        v35 = [v33 data];
        sub_10002A0A4(v4, v35, @"[>TX]");

        v9 = 0;
        v6 = v33;
        v94 = v32;
      }

      if ((v95 & 1) != 0 && !v9)
      {
        v11 = v7;
        goto LABEL_72;
      }
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v62 = NFLogGetLogger();
    if (v62)
    {
      v63 = v62;
      v64 = object_getClass(v4);
      v65 = class_isMetaClass(v64);
      v66 = object_getClassName(v4);
      v88 = sel_getName("runHostCardEmulation:paymentEnabled:");
      v67 = 45;
      if (v65)
      {
        v67 = 43;
      }

      v63(6, "%c[%{public}s %{public}s]:%i cancelled", v67, v66, v88, 162);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v57 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      v68 = object_getClass(v4);
      if (class_isMetaClass(v68))
      {
        v69 = 43;
      }

      else
      {
        v69 = 45;
      }

      v70 = object_getClassName(v4);
      v71 = sel_getName("runHostCardEmulation:paymentEnabled:");
      v101[0] = 67109890;
      v101[1] = v69;
      v102 = 2082;
      v103 = v70;
      v104 = 2082;
      v105 = v71;
      v106 = 1024;
      v107 = 162;
      _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i cancelled", v101, 0x22u);
    }

LABEL_71:

    v8 = v10;
LABEL_72:
    if (*(v4 + 24) == 1)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v72 = NFLogGetLogger();
      if (v72)
      {
        v73 = v72;
        v74 = object_getClass(v4);
        v75 = class_isMetaClass(v74);
        v76 = object_getClassName(v4);
        v89 = sel_getName("runHostCardEmulation:paymentEnabled:");
        v77 = 45;
        if (v75)
        {
          v77 = 43;
        }

        v73(6, "%c[%{public}s %{public}s]:%i activity cancelled", v77, v76, v89, 230);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v78 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
      {
        v79 = object_getClass(v4);
        if (class_isMetaClass(v79))
        {
          v80 = 43;
        }

        else
        {
          v80 = 45;
        }

        v81 = object_getClassName(v4);
        v82 = sel_getName("runHostCardEmulation:paymentEnabled:");
        v101[0] = 67109890;
        v101[1] = v80;
        v102 = 2082;
        v103 = v81;
        v104 = 2082;
        v105 = v82;
        v106 = 1024;
        v107 = 230;
        _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i activity cancelled", v101, 0x22u);
      }
    }

    if (v9)
    {
      [v9 handleDeselect];
    }

    objc_autoreleasePoolPop(context);
    v2 = v91;
    v1 = v92;
  }

  kdebug_trace();
  v83 = NFSharedSignpostLog();
  if (os_signpost_enabled(v83))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v83, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "VAS_END", &unk_1002E8B7A, buf, 2u);
  }

  *(*(v1 + 32) + 25) = 0;
  *(*(v1 + 32) + 24) = 0;
  objc_sync_exit(v2);
}

id *sub_10002BA4C(id *a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v10.receiver = a1;
    v10.super_class = NFExpressPassConfig;
    v8 = objc_msgSendSuper2(&v10, "init");
    a1 = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 1, a2);
      objc_storeStrong(a1 + 2, a3);
    }
  }

  return a1;
}

__CFString *sub_10002BB2C(int a1)
{
  if ((a1 - 1) > 5)
  {
    return 0;
  }

  else
  {
    return off_100315FF0[(a1 - 1)];
  }
}

__CFString *sub_10002BB54(__CFString *result)
{
  if (result)
  {
    if (LOBYTE(result[5].data) - 1 > 5)
    {
      return 0;
    }

    else
    {
      return off_100315FF0[(LOBYTE(result[5].data) - 1)];
    }
  }

  return result;
}

id sub_10002BB84(uint64_t a1)
{
  v1 = sub_10002BBB4(a1, 1);

  return v1;
}

id sub_10002BBB4(uint64_t a1, int a2)
{
  dispatch_assert_queue_V2(*(a1 + 120));
  objc_opt_self();
  if (MKBDeviceUnlockedSinceBoot() == 1)
  {
    if (!*(a1 + 40))
    {
      sub_10002BDA8(a1, a2);
    }

    v4 = 0;
  }

  else
  {
    v5 = [NSError alloc];
    v6 = [NSString stringWithUTF8String:"nfcd"];
    v12[0] = NSLocalizedDescriptionKey;
    v7 = [NSString stringWithUTF8String:"Not yet first unlock"];
    v13[0] = v7;
    v13[1] = &off_100330060;
    v12[1] = @"Line";
    v12[2] = @"Method";
    v8 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_expressConfigInitWithBugCaptureReport:")];
    v13[2] = v8;
    v12[3] = NSDebugDescriptionErrorKey;
    v9 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_expressConfigInitWithBugCaptureReport:"), 189];
    v13[3] = v9;
    v10 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:4];
    v4 = [v5 initWithDomain:v6 code:75 userInfo:v10];
  }

  return v4;
}

void sub_10002BDA8(uint64_t a1, int a2)
{
  v4 = NFSharedSignpostLog();
  if (os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "updateExpressConfigs", &unk_1002E8B7A, buf, 2u);
  }

  v5 = sub_10021A4A0(*(a1 + 16), @"Express config", 1uLL);
  if (v5)
  {
    v6 = v5;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v8 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("updateExpressConfigsWithBugCaptureReport:");
      v11 = 45;
      if (isMetaClass)
      {
        v11 = 43;
      }

      v8(3, "%c[%{public}s %{public}s]:%i Failed to open session : %@", v11, ClassName, Name, 208, v6);
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

      v15 = object_getClassName(a1);
      v16 = sel_getName("updateExpressConfigsWithBugCaptureReport:");
      *buf = 67110146;
      v356 = v14;
      v357 = 2082;
      v358 = v15;
      v359 = 2082;
      v360 = v16;
      v361 = 1024;
      v362 = 208;
      v363 = 2112;
      v364 = v6;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to open session : %@", buf, 0x2Cu);
    }

    v17 = NFSharedSignpostLog();
    if (os_signpost_enabled(v17))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "updateExpressConfigs", "failed to open session", buf, 2u);
    }

    goto LABEL_291;
  }

  v317 = a2;
  v17 = +[_NFHardwareManager sharedHardwareManager];
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v18 = NFLogGetLogger();
  if (v18)
  {
    v19 = v18;
    v20 = object_getClass(a1);
    v21 = class_isMetaClass(v20);
    v22 = object_getClassName(a1);
    v294 = sel_getName("updateExpressConfigsWithBugCaptureReport:");
    v23 = 45;
    if (v21)
    {
      v23 = 43;
    }

    v19(6, "%c[%{public}s %{public}s]:%i Creating eSE config", v23, v22, v294, 215);
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

    v27 = object_getClassName(a1);
    v28 = sel_getName("updateExpressConfigsWithBugCaptureReport:");
    *buf = 67109890;
    v356 = v26;
    v357 = 2082;
    v358 = v27;
    v359 = 2082;
    v360 = v28;
    v361 = 1024;
    v362 = 215;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Creating eSE config", buf, 0x22u);
  }

  v29 = [[NFExpressConfigESE alloc] initWithDriverWrapper:*(a1 + 16)];
  v30 = *(a1 + 40);
  *(a1 + 40) = v29;

  v318 = [*(a1 + 40) fetchFromStorage];
  if (!v318)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v31 = NFLogGetLogger();
    if (v31)
    {
      v32 = v31;
      v33 = object_getClass(a1);
      v34 = class_isMetaClass(v33);
      v35 = object_getClassName(a1);
      v295 = sel_getName("updateExpressConfigsWithBugCaptureReport:");
      v36 = 45;
      if (v34)
      {
        v36 = 43;
      }

      v32(4, "%c[%{public}s %{public}s]:%i Failed to read expressConfig from storage", v36, v35, v295, 220);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v37 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
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
      v41 = sel_getName("updateExpressConfigsWithBugCaptureReport:");
      *buf = 67109890;
      v356 = v39;
      v357 = 2082;
      v358 = v40;
      v359 = 2082;
      v360 = v41;
      v361 = 1024;
      v362 = 220;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to read expressConfig from storage", buf, 0x22u);
    }

    v42 = *(a1 + 40);
    *(a1 + 40) = 0;
  }

  if (!*(a1 + 40))
  {
    v69 = 0;
    goto LABEL_72;
  }

  v43 = v318;
  if (![v43 count])
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v70 = NFLogGetLogger();
    if (v70)
    {
      v71 = v70;
      v72 = object_getClass(a1);
      v73 = class_isMetaClass(v72);
      v74 = v43;
      v75 = object_getClassName(a1);
      v298 = sel_getName("consistencyCheckWithConfig:bugCaptureReportEnable:");
      v76 = 45;
      if (v73)
      {
        v76 = 43;
      }

      v281 = v75;
      v43 = v74;
      v71(6, "%c[%{public}s %{public}s]:%i Empty express config", v76, v281, v298, 2043);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v77 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
    {
      v78 = object_getClass(a1);
      if (class_isMetaClass(v78))
      {
        v79 = 43;
      }

      else
      {
        v79 = 45;
      }

      *v342 = 67109890;
      v343 = v79;
      v344 = 2082;
      v345 = object_getClassName(a1);
      v346 = 2082;
      v347 = sel_getName("consistencyCheckWithConfig:bugCaptureReportEnable:");
      v348 = 1024;
      v349 = 2043;
      _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Empty express config", v342, 0x22u);
    }

    goto LABEL_70;
  }

  [*(a1 + 40) getSecureElementWrapperAndSetRouting];
  v322 = v341 = 0;
  v44 = sub_100257EEC(v322, &v341);
  v326 = v341;
  if (v44)
  {
    v45 = v44;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v46 = NFLogGetLogger();
    if (v46)
    {
      v47 = v46;
      v48 = object_getClass(a1);
      v49 = class_isMetaClass(v48);
      v50 = v43;
      v51 = object_getClassName(a1);
      v296 = sel_getName("consistencyCheckWithConfig:bugCaptureReportEnable:");
      v52 = 45;
      if (v49)
      {
        v52 = 43;
      }

      v280 = v51;
      v43 = v50;
      v47(3, "%c[%{public}s %{public}s]:%i Applet dump failed", v52, v280, v296, 2051);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v53 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
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
      v57 = sel_getName("consistencyCheckWithConfig:bugCaptureReportEnable:");
      *v342 = 67109890;
      v343 = v55;
      v344 = 2082;
      v345 = v56;
      v346 = 2082;
      v347 = v57;
      v348 = 1024;
      v349 = 2051;
      _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Applet dump failed", v342, 0x22u);
    }

    v44 = v45;
LABEL_48:

    goto LABEL_49;
  }

  v339 = 0u;
  v340 = 0u;
  v337 = 0u;
  v338 = 0u;
  v132 = v43;
  v329 = [v132 countByEnumeratingWithState:&v337 objects:buf count:16];
  if (!v329)
  {

    v264 = 0;
    LOBYTE(v320) = 0;
    v265 = 0;
    BYTE4(v323) = 0;
    goto LABEL_293;
  }

  v315 = v43;
  v316 = v17;
  v320 = 0;
  v319 = 0;
  v323 = 0;
  v328 = *v338;
  v330 = a1;
  v327 = v132;
  do
  {
    for (i = 0; i != v329; i = i + 1)
    {
      if (*v338 != v328)
      {
        objc_enumerationMutation(v132);
      }

      v331 = *(*(&v337 + 1) + 8 * i);
      v134 = [v331 objectForKeyedSubscript:@"appletIdentifier"];
      v135 = [NSData NF_dataWithHexString:v134];
      if (v135)
      {
        v335 = 0u;
        v336 = 0u;
        v333 = 0u;
        v334 = 0u;
        v136 = v326;
        v137 = [v136 countByEnumeratingWithState:&v333 objects:v354 count:16];
        if (v137)
        {
          v138 = v137;
          v139 = *v334;
LABEL_132:
          v140 = 0;
          while (1)
          {
            if (*v334 != v139)
            {
              objc_enumerationMutation(v136);
            }

            v141 = *(*(&v333 + 1) + 8 * v140);
            v142 = [v141 identifierAsData];
            v143 = [v142 isEqualToData:v135];

            if (v143)
            {
              break;
            }

            if (v138 == ++v140)
            {
              v138 = [v136 countByEnumeratingWithState:&v333 objects:v354 count:16];
              a1 = v330;
              v132 = v327;
              if (v138)
              {
                goto LABEL_132;
              }

              goto LABEL_138;
            }
          }

          v144 = v141;

          a1 = v330;
          v132 = v327;
          if (!v144)
          {
            goto LABEL_162;
          }

          v145 = [v331 objectForKeyedSubscript:@"expressEnabled"];
          v325 = v145;
          if (v145)
          {
            if (![v145 BOOLValue] || !-[NSObject authTransientSupport](v144, "authTransientSupport"))
            {
              goto LABEL_210;
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v146 = NFLogGetLogger();
            if (v146)
            {
              v147 = v146;
              v148 = object_getClass(v330);
              v149 = class_isMetaClass(v148);
              v284 = object_getClassName(v330);
              v303 = sel_getName("consistencyCheckWithConfig:bugCaptureReportEnable:");
              v150 = 45;
              if (v149)
              {
                v150 = 43;
              }

              v147(3, "%c[%{public}s %{public}s]:%i Applet authTransientSupport is enabled; aid=%{public}@", v150, v284, v303, 2091, v134);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v151 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v151, OS_LOG_TYPE_ERROR))
            {
              v152 = object_getClass(v330);
              if (class_isMetaClass(v152))
              {
                v153 = 43;
              }

              else
              {
                v153 = 45;
              }

              v154 = object_getClassName(v330);
              v155 = sel_getName("consistencyCheckWithConfig:bugCaptureReportEnable:");
              *v342 = 67110146;
              v343 = v153;
              v344 = 2082;
              v345 = v154;
              v346 = 2082;
              v347 = v155;
              v348 = 1024;
              v349 = 2091;
              v350 = 2114;
              v351 = v134;
              _os_log_impl(&_mh_execute_header, v151, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Applet authTransientSupport is enabled; aid=%{public}@", v342, 0x2Cu);
            }

            v156 = NFLogGetLogger();
            if (v156)
            {
              v157 = v156;
              v158 = object_getClass(v330);
              v159 = class_isMetaClass(v158);
              v285 = object_getClassName(v330);
              v304 = sel_getName("consistencyCheckWithConfig:bugCaptureReportEnable:");
              v160 = 45;
              if (v159)
              {
                v160 = 43;
              }

              v157(3, "%c[%{public}s %{public}s]:%i %@", v160, v285, v304, 2092, v331);
            }

            v161 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v161, OS_LOG_TYPE_ERROR))
            {
              v162 = object_getClass(v330);
              if (class_isMetaClass(v162))
              {
                v163 = 43;
              }

              else
              {
                v163 = 45;
              }

              v164 = object_getClassName(v330);
              v165 = sel_getName("consistencyCheckWithConfig:bugCaptureReportEnable:");
              *v342 = 67110146;
              v343 = v163;
              v344 = 2082;
              v345 = v164;
              v346 = 2082;
              v347 = v165;
              v348 = 1024;
              v349 = 2092;
              v350 = 2112;
              v351 = v331;
              _os_log_impl(&_mh_execute_header, v161, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i %@", v342, 0x2Cu);
            }

            v319 = 1;
          }

          else
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v204 = NFLogGetLogger();
            if (v204)
            {
              v205 = v204;
              v206 = object_getClass(v330);
              v207 = class_isMetaClass(v206);
              v290 = object_getClassName(v330);
              v309 = sel_getName("consistencyCheckWithConfig:bugCaptureReportEnable:");
              v208 = 45;
              if (v207)
              {
                v208 = 43;
              }

              v205(4, "%c[%{public}s %{public}s]:%i Applet is setup in express but express config is not enabled; aid=%{public}@", v208, v290, v309, 2096, v134);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v161 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v161, OS_LOG_TYPE_ERROR))
            {
              v209 = object_getClass(v330);
              if (class_isMetaClass(v209))
              {
                v210 = 43;
              }

              else
              {
                v210 = 45;
              }

              v211 = object_getClassName(v330);
              v212 = sel_getName("consistencyCheckWithConfig:bugCaptureReportEnable:");
              *v342 = 67110146;
              v343 = v210;
              v344 = 2082;
              v345 = v211;
              v346 = 2082;
              v347 = v212;
              v348 = 1024;
              v349 = 2096;
              v350 = 2114;
              v351 = v134;
              _os_log_impl(&_mh_execute_header, v161, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Applet is setup in express but express config is not enabled; aid=%{public}@", v342, 0x2Cu);
            }
          }

LABEL_210:
          v213 = [v331 objectForKeyedSubscript:@"moduleIdentifier"];
          v214 = [NSData NF_dataWithHexString:v213];
          v324 = v214;
          if (v214)
          {
            v215 = v214;
            v216 = [v144 moduleIdentifierAsData];
            v217 = [v215 isEqualToData:v216];

            if ((v217 & 1) == 0)
            {
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v218 = NFLogGetLogger();
              if (v218)
              {
                v219 = v218;
                v220 = object_getClass(v330);
                v221 = class_isMetaClass(v220);
                v291 = object_getClassName(v330);
                v310 = sel_getName("consistencyCheckWithConfig:bugCaptureReportEnable:");
                v222 = 45;
                if (v221)
                {
                  v222 = 43;
                }

                v219(3, "%c[%{public}s %{public}s]:%i Mismatch in moduleID; applet=%{public}@", v222, v291, v310, 2103, v134);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v223 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v223, OS_LOG_TYPE_ERROR))
              {
                v224 = object_getClass(v330);
                if (class_isMetaClass(v224))
                {
                  v225 = 43;
                }

                else
                {
                  v225 = 45;
                }

                v226 = object_getClassName(v330);
                v227 = sel_getName("consistencyCheckWithConfig:bugCaptureReportEnable:");
                *v342 = 67110146;
                v343 = v225;
                v344 = 2082;
                v345 = v226;
                v346 = 2082;
                v347 = v227;
                v348 = 1024;
                v349 = 2103;
                v350 = 2114;
                v351 = v134;
                _os_log_impl(&_mh_execute_header, v223, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Mismatch in moduleID; applet=%{public}@", v342, 0x2Cu);
              }

              HIDWORD(v323) = 1;
            }
          }

          v228 = [v331 objectForKeyedSubscript:@"keyIdentifier"];
          v229 = [NSData NF_dataWithHexString:v228];
          if (v229)
          {
            if ((sub_10025D930(v322, v228) & 1) == 0)
            {
              v230 = v213;
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v231 = NFLogGetLogger();
              if (v231)
              {
                v232 = v231;
                v233 = object_getClass(v330);
                v234 = class_isMetaClass(v233);
                v235 = object_getClassName(v330);
                v311 = sel_getName("consistencyCheckWithConfig:bugCaptureReportEnable:");
                v236 = 45;
                if (v234)
                {
                  v236 = 43;
                }

                v232(3, "%c[%{public}s %{public}s]:%i Applet does not support key; aid=%{public}@, key=%{public}@", v236, v235, v311, 2112, v134, v228);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v237 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v237, OS_LOG_TYPE_ERROR))
              {
                v238 = object_getClass(v330);
                if (class_isMetaClass(v238))
                {
                  v239 = 43;
                }

                else
                {
                  v239 = 45;
                }

                v240 = object_getClassName(v330);
                v241 = sel_getName("consistencyCheckWithConfig:bugCaptureReportEnable:");
                *v342 = 67110402;
                v343 = v239;
                v344 = 2082;
                v345 = v240;
                v346 = 2082;
                v347 = v241;
                v348 = 1024;
                v349 = 2112;
                v350 = 2114;
                v351 = v134;
                v352 = 2114;
                v353 = v228;
                _os_log_impl(&_mh_execute_header, v237, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Applet does not support key; aid=%{public}@, key=%{public}@", v342, 0x36u);
              }

              v213 = v230;
            }

            v242 = sub_10026044C(v322, v229, v144, 1);
            if (v242)
            {
              v321 = v213;
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v243 = NFLogGetLogger();
              if (v243)
              {
                v244 = v243;
                v245 = object_getClass(v330);
                v246 = class_isMetaClass(v245);
                v247 = object_getClassName(v330);
                v312 = sel_getName("consistencyCheckWithConfig:bugCaptureReportEnable:");
                v248 = 45;
                if (v246)
                {
                  v248 = 43;
                }

                v244(3, "%c[%{public}s %{public}s]:%i Key not found; aid=%{public}@, key=%{public}@", v248, v247, v312, 2117, v134, v228);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v249 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v249, OS_LOG_TYPE_ERROR))
              {
                v250 = object_getClass(v330);
                if (class_isMetaClass(v250))
                {
                  v251 = 43;
                }

                else
                {
                  v251 = 45;
                }

                v252 = object_getClassName(v330);
                v253 = sel_getName("consistencyCheckWithConfig:bugCaptureReportEnable:");
                *v342 = 67110402;
                v343 = v251;
                v344 = 2082;
                v345 = v252;
                v346 = 2082;
                v347 = v253;
                v348 = 1024;
                v349 = 2117;
                v350 = 2114;
                v351 = v134;
                v352 = 2114;
                v353 = v228;
                _os_log_impl(&_mh_execute_header, v249, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Key not found; aid=%{public}@, key=%{public}@", v342, 0x36u);
              }

              v254 = NFLogGetLogger();
              if (v254)
              {
                v255 = v254;
                v256 = object_getClass(v330);
                v257 = class_isMetaClass(v256);
                v292 = object_getClassName(v330);
                v313 = sel_getName("consistencyCheckWithConfig:bugCaptureReportEnable:");
                v258 = 45;
                if (v257)
                {
                  v258 = 43;
                }

                v255(3, "%c[%{public}s %{public}s]:%i %@", v258, v292, v313, 2118, v331);
              }

              v259 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v259, OS_LOG_TYPE_ERROR))
              {
                v260 = object_getClass(v330);
                if (class_isMetaClass(v260))
                {
                  v261 = 43;
                }

                else
                {
                  v261 = 45;
                }

                v262 = object_getClassName(v330);
                v263 = sel_getName("consistencyCheckWithConfig:bugCaptureReportEnable:");
                *v342 = 67110146;
                v343 = v261;
                v344 = 2082;
                v345 = v262;
                v346 = 2082;
                v347 = v263;
                v348 = 1024;
                v349 = 2118;
                v350 = 2112;
                v351 = v331;
                _os_log_impl(&_mh_execute_header, v259, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i %@", v342, 0x2Cu);
              }

              v320 = 1;
              v213 = v321;
            }

            a1 = v330;
            v132 = v327;
          }

          goto LABEL_256;
        }

LABEL_138:

LABEL_162:
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v166 = NFLogGetLogger();
        if (v166)
        {
          v167 = v166;
          v168 = object_getClass(a1);
          v169 = class_isMetaClass(v168);
          v286 = object_getClassName(a1);
          v305 = sel_getName("consistencyCheckWithConfig:bugCaptureReportEnable:");
          v170 = 45;
          if (v169)
          {
            v170 = 43;
          }

          v167(3, "%c[%{public}s %{public}s]:%i Applet not found from SE; applet=%{public}@", v170, v286, v305, 2081, v134);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v171 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v171, OS_LOG_TYPE_ERROR))
        {
          v172 = object_getClass(a1);
          if (class_isMetaClass(v172))
          {
            v173 = 43;
          }

          else
          {
            v173 = 45;
          }

          v174 = object_getClassName(a1);
          v175 = sel_getName("consistencyCheckWithConfig:bugCaptureReportEnable:");
          *v342 = 67110146;
          v343 = v173;
          v344 = 2082;
          v345 = v174;
          v346 = 2082;
          v347 = v175;
          v348 = 1024;
          v349 = 2081;
          v350 = 2114;
          v351 = v134;
          _os_log_impl(&_mh_execute_header, v171, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Applet not found from SE; applet=%{public}@", v342, 0x2Cu);
        }

        v176 = NFLogGetLogger();
        if (v176)
        {
          v177 = v176;
          v178 = object_getClass(a1);
          v179 = class_isMetaClass(v178);
          v287 = object_getClassName(a1);
          v306 = sel_getName("consistencyCheckWithConfig:bugCaptureReportEnable:");
          v180 = 45;
          if (v179)
          {
            v180 = 43;
          }

          v177(3, "%c[%{public}s %{public}s]:%i %@", v180, v287, v306, 2082, v331);
        }

        v144 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v144, OS_LOG_TYPE_ERROR))
        {
          v181 = object_getClass(a1);
          if (class_isMetaClass(v181))
          {
            v182 = 43;
          }

          else
          {
            v182 = 45;
          }

          v183 = object_getClassName(a1);
          v184 = sel_getName("consistencyCheckWithConfig:bugCaptureReportEnable:");
          *v342 = 67110146;
          v343 = v182;
          v344 = 2082;
          v345 = v183;
          v346 = 2082;
          v347 = v184;
          v348 = 1024;
          v349 = 2082;
          v350 = 2112;
          v351 = v331;
          _os_log_impl(&_mh_execute_header, v144, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i %@", v342, 0x2Cu);
        }

        LODWORD(v323) = 1;
      }

      else
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v185 = NFLogGetLogger();
        if (v185)
        {
          v186 = v185;
          v187 = object_getClass(a1);
          v188 = class_isMetaClass(v187);
          v288 = object_getClassName(a1);
          v307 = sel_getName("consistencyCheckWithConfig:bugCaptureReportEnable:");
          v189 = 45;
          if (v188)
          {
            v189 = 43;
          }

          v186(3, "%c[%{public}s %{public}s]:%i Pass config contain invalid entry; aid=%{public}@", v189, v288, v307, 2065, v134);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v190 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v190, OS_LOG_TYPE_ERROR))
        {
          v191 = object_getClass(a1);
          if (class_isMetaClass(v191))
          {
            v192 = 43;
          }

          else
          {
            v192 = 45;
          }

          v193 = object_getClassName(a1);
          v194 = sel_getName("consistencyCheckWithConfig:bugCaptureReportEnable:");
          *v342 = 67110146;
          v343 = v192;
          v344 = 2082;
          v345 = v193;
          v346 = 2082;
          v347 = v194;
          v348 = 1024;
          v349 = 2065;
          v350 = 2114;
          v351 = v134;
          _os_log_impl(&_mh_execute_header, v190, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Pass config contain invalid entry; aid=%{public}@", v342, 0x2Cu);
        }

        v195 = NFLogGetLogger();
        if (v195)
        {
          v196 = v195;
          v197 = object_getClass(a1);
          v198 = class_isMetaClass(v197);
          v289 = object_getClassName(a1);
          v308 = sel_getName("consistencyCheckWithConfig:bugCaptureReportEnable:");
          v199 = 45;
          if (v198)
          {
            v199 = 43;
          }

          v196(3, "%c[%{public}s %{public}s]:%i %@", v199, v289, v308, 2066, v331);
        }

        v144 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v144, OS_LOG_TYPE_ERROR))
        {
          v200 = object_getClass(a1);
          if (class_isMetaClass(v200))
          {
            v201 = 43;
          }

          else
          {
            v201 = 45;
          }

          v202 = object_getClassName(a1);
          v203 = sel_getName("consistencyCheckWithConfig:bugCaptureReportEnable:");
          *v342 = 67110146;
          v343 = v201;
          v344 = 2082;
          v345 = v202;
          v346 = 2082;
          v347 = v203;
          v348 = 1024;
          v349 = 2066;
          v350 = 2112;
          v351 = v331;
          _os_log_impl(&_mh_execute_header, v144, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i %@", v342, 0x2Cu);
        }

        HIDWORD(v323) = 1;
      }

LABEL_256:
    }

    v329 = [v132 countByEnumeratingWithState:&v337 objects:buf count:16];
  }

  while (v329);

  if ((v323 & v317) == 1)
  {
    sub_100199548(NFBugCapture, @"Express Mode Failure", @"Express config invalid", @"Applet missing from SE", 0, &stru_100315E30);
  }

  v43 = v315;
  v17 = v316;
  if ((HIDWORD(v323) & v317) == 1)
  {
    sub_100199548(NFBugCapture, @"Express Mode Failure", @"Express config invalid", @"Pass config contains invalid entries", 0, &stru_100315E50);
  }

  v44 = 0;
  if ((v320 & v317) == 1)
  {
    sub_100199548(NFBugCapture, @"Express Mode Failure", @"Express config invalid", @"Applet does not contain specified key", 0, &stru_100315E70);
  }

  v264 = v319;
  if ((v319 & v317) == 1)
  {
    sub_100199548(NFBugCapture, @"Express Mode Failure", @"Express config invalid", @"Pass config expressEnabled set but applet authTransientSetting is true", 0, &stru_100315E90);
    v264 = 1;
  }

  v265 = v323;
LABEL_293:
  if ((v265 & 1) != 0 || (v323 & 0x100000000) != 0)
  {
    goto LABEL_48;
  }

  v278 = v320 | v264;

  if ((v278 & 1) == 0)
  {
    goto LABEL_70;
  }

LABEL_49:
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v58 = NFLogGetLogger();
  if (v58)
  {
    v59 = v58;
    v60 = object_getClass(a1);
    v61 = class_isMetaClass(v60);
    v62 = object_getClassName(a1);
    v297 = sel_getName("updateExpressConfigsWithBugCaptureReport:");
    v63 = 45;
    if (v61)
    {
      v63 = 43;
    }

    v59(3, "%c[%{public}s %{public}s]:%i Consistency check failure", v63, v62, v297, 226);
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
    v68 = sel_getName("updateExpressConfigsWithBugCaptureReport:");
    *buf = 67109890;
    v356 = v66;
    v357 = 2082;
    v358 = v67;
    v359 = 2082;
    v360 = v68;
    v361 = 1024;
    v362 = 226;
    _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Consistency check failure", buf, 0x22u);
  }

LABEL_70:
  v80 = *(a1 + 40);
  v332 = 0;
  v81 = [v80 loadConfig:v43 outError:&v332];
  v69 = v332;
  if ((v81 & 1) == 0)
  {
    v82 = *(a1 + 40);
    *(a1 + 40) = 0;
  }

LABEL_72:
  v83 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.stockholm"];
  v84 = [v83 BOOLForKey:@"ecp2ExpressTestMode"];
  if ((v84 & 1) == 0)
  {
    if ((*(a1 + 179) & 1) == 0)
    {
      v6 = v69;
      goto LABEL_268;
    }

LABEL_85:
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v96 = NFLogGetLogger();
    if (v96)
    {
      v97 = v96;
      v98 = object_getClass(a1);
      v99 = class_isMetaClass(v98);
      v100 = object_getClassName(a1);
      v300 = sel_getName("updateExpressConfigsWithBugCaptureReport:");
      v101 = 45;
      if (v99)
      {
        v101 = 43;
      }

      v97(6, "%c[%{public}s %{public}s]:%i Factory test mode", v101, v100, v300, 244);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v102 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
    {
      v103 = object_getClass(a1);
      if (class_isMetaClass(v103))
      {
        v104 = 43;
      }

      else
      {
        v104 = 45;
      }

      v105 = object_getClassName(a1);
      v106 = sel_getName("updateExpressConfigsWithBugCaptureReport:");
      *buf = 67109890;
      v356 = v104;
      v357 = 2082;
      v358 = v105;
      v359 = 2082;
      v360 = v106;
      v361 = 1024;
      v362 = 244;
      _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Factory test mode", buf, 0x22u);
    }

    goto LABEL_95;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v85 = NFLogGetLogger();
  if (v85)
  {
    v86 = v85;
    v87 = object_getClass(a1);
    v88 = class_isMetaClass(v87);
    v89 = object_getClassName(a1);
    v299 = sel_getName("updateExpressConfigsWithBugCaptureReport:");
    v90 = 45;
    if (v88)
    {
      v90 = 43;
    }

    v86(6, "%c[%{public}s %{public}s]:%i ECP2 FTA test mode!", v90, v89, v299, 241);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v91 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
  {
    v92 = object_getClass(a1);
    if (class_isMetaClass(v92))
    {
      v93 = 43;
    }

    else
    {
      v93 = 45;
    }

    v94 = object_getClassName(a1);
    v95 = sel_getName("updateExpressConfigsWithBugCaptureReport:");
    *buf = 67109890;
    v356 = v93;
    v357 = 2082;
    v358 = v94;
    v359 = 2082;
    v360 = v95;
    v361 = 1024;
    v362 = 241;
    _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ECP2 FTA test mode!", buf, 0x22u);
  }

  if (*(a1 + 179))
  {
    goto LABEL_85;
  }

LABEL_95:
  v107 = *(a1 + 40);
  if (v107)
  {
    *(v107 + 112) = 1;
    v108 = *(a1 + 40);
  }

  else
  {
    v108 = 0;
  }

  v6 = [v108 reconfigureWithArray:&__NSArray0__struct restoreAuthorization:0 updateStorage:1];

  if (!v6)
  {
    v6 = sub_100012574(*(a1 + 40), v84);
    if (v6)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v121 = NFLogGetLogger();
      if (v121)
      {
        v122 = v121;
        v123 = object_getClass(a1);
        v124 = class_isMetaClass(v123);
        v283 = object_getClassName(a1);
        v302 = sel_getName("updateExpressConfigsWithBugCaptureReport:");
        v125 = 45;
        if (v124)
        {
          v125 = 43;
        }

        v122(3, "%c[%{public}s %{public}s]:%i Failed to set factory test config: %{public}@", v125, v283, v302, 258, v6);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v126 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
      {
        v127 = object_getClass(a1);
        if (class_isMetaClass(v127))
        {
          v128 = 43;
        }

        else
        {
          v128 = 45;
        }

        v129 = object_getClassName(a1);
        v130 = sel_getName("updateExpressConfigsWithBugCaptureReport:");
        *buf = 67110146;
        v356 = v128;
        v357 = 2082;
        v358 = v129;
        v359 = 2082;
        v360 = v130;
        v361 = 1024;
        v362 = 258;
        v363 = 2114;
        v364 = v6;
        _os_log_impl(&_mh_execute_header, v126, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to set factory test config: %{public}@", buf, 0x2Cu);
      }

      v131 = *(a1 + 40);
      if (v131)
      {
        *(v131 + 112) = 0;
      }

      v119 = NFSharedSignpostLog();
      if (!os_signpost_enabled(v119))
      {
        goto LABEL_290;
      }

      *buf = 0;
      v120 = "failed to set factory mode";
      goto LABEL_289;
    }

    *(a1 + 179) = 257;
LABEL_268:
    sub_10002E078(a1);
    sub_10002E704(a1);
    if (*(a1 + 179) == 1)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v266 = NFLogGetLogger();
      if (v266)
      {
        v267 = v266;
        v268 = object_getClass(a1);
        v269 = class_isMetaClass(v268);
        v270 = object_getClassName(a1);
        v314 = sel_getName("updateExpressConfigsWithBugCaptureReport:");
        v271 = 45;
        if (v269)
        {
          v271 = 43;
        }

        v267(6, "%c[%{public}s %{public}s]:%i Enabling NFC express for LPM factory test mode", v271, v270, v314, 271);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v272 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v272, OS_LOG_TYPE_DEFAULT))
      {
        v273 = object_getClass(a1);
        if (class_isMetaClass(v273))
        {
          v274 = 43;
        }

        else
        {
          v274 = 45;
        }

        v275 = object_getClassName(a1);
        v276 = sel_getName("updateExpressConfigsWithBugCaptureReport:");
        *buf = 67109890;
        v356 = v274;
        v357 = 2082;
        v358 = v275;
        v359 = 2082;
        v360 = v276;
        v361 = 1024;
        v362 = 271;
        _os_log_impl(&_mh_execute_header, v272, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Enabling NFC express for LPM factory test mode", buf, 0x22u);
      }

      if (*(a1 + 179) == 1)
      {
        if (*(a1 + 180))
        {
          v277 = 16;
        }

        else
        {
          v277 = 4;
        }
      }

      else
      {
        v277 = *(a1 + 168);
      }

      sub_1002208E4(*(a1 + 16), v277, 1);
      sub_1001AA264(*(a1 + 16), 1);
    }

    if (*(a1 + 152) == 1 && ([v17 hasSession]& 1) == 0)
    {
      sub_10002E9BC(a1);
    }

    sub_10021CC94(*(a1 + 16), @"Express config");
    v119 = NFSharedSignpostLog();
    if (!os_signpost_enabled(v119))
    {
      goto LABEL_290;
    }

    *buf = 0;
    v120 = &unk_1002E8B7A;
LABEL_289:
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v119, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "updateExpressConfigs", v120, buf, 2u);
    goto LABEL_290;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v109 = NFLogGetLogger();
  if (v109)
  {
    v110 = v109;
    v111 = object_getClass(a1);
    v112 = class_isMetaClass(v111);
    v282 = object_getClassName(a1);
    v301 = sel_getName("updateExpressConfigsWithBugCaptureReport:");
    v113 = 45;
    if (v112)
    {
      v113 = 43;
    }

    v110(3, "%c[%{public}s %{public}s]:%i Failed to clear express applets on eSE: %{public}@", v113, v282, v301, 251, v6);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v114 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
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
    v118 = sel_getName("updateExpressConfigsWithBugCaptureReport:");
    *buf = 67110146;
    v356 = v116;
    v357 = 2082;
    v358 = v117;
    v359 = 2082;
    v360 = v118;
    v361 = 1024;
    v362 = 251;
    v363 = 2114;
    v364 = v6;
    _os_log_impl(&_mh_execute_header, v114, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to clear express applets on eSE: %{public}@", buf, 0x2Cu);
  }

  v119 = NFSharedSignpostLog();
  if (os_signpost_enabled(v119))
  {
    *buf = 0;
    v120 = "failed to remove old config";
    goto LABEL_289;
  }

LABEL_290:

LABEL_291:
}

void sub_10002E078(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = *(v2 + 16);
    v4 = [v3 count];

    if ([*(a1 + 40) hasExpressWithAutoSelection])
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    if (v4)
    {
      v6 = v5 + 1;
    }

    else
    {
      v6 = v5;
    }

    if (notify_is_valid_token(*(a1 + 144)) || (v7 = notify_register_check("com.apple.stockholm.express.state", (a1 + 144)), !v7))
    {
      v18 = notify_set_state(*(a1 + 144), v6);
      if (v18)
      {
        v19 = v18;
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          v21 = Logger;
          Class = object_getClass(a1);
          isMetaClass = class_isMetaClass(Class);
          ClassName = object_getClassName(a1);
          Name = sel_getName("_updateAppletCount");
          v24 = 45;
          if (isMetaClass)
          {
            v24 = 43;
          }

          v21(3, "%c[%{public}s %{public}s]:%i Failed to notify set state : %d", v24, ClassName, Name, 462, v19);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v14 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_51;
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

        *buf = 67110146;
        v62 = v26;
        v63 = 2082;
        v64 = object_getClassName(a1);
        v65 = 2082;
        v66 = sel_getName("_updateAppletCount");
        v67 = 1024;
        v68 = 462;
        v69 = 1024;
        LODWORD(v70) = v19;
        v17 = "%c[%{public}s %{public}s]:%i Failed to notify set state : %d";
      }

      else
      {
        v36 = notify_post("com.apple.stockholm.express.state");
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v37 = NFLogGetLogger();
        v38 = v37;
        if (!v36)
        {
          if (v37)
          {
            v47 = object_getClass(a1);
            v48 = class_isMetaClass(v47);
            v55 = object_getClassName(a1);
            v60 = sel_getName("_updateAppletCount");
            v49 = 43;
            if (!v48)
            {
              v49 = 45;
            }

            v38(6, "%c[%{public}s %{public}s]:%i posted %s expressState: 0x%x; status: %u", v49, v55, v60, 458, "com.apple.stockholm.express.state", v6, 0);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v14 = NFSharedLogGetLogger();
          if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_51;
          }

          v50 = object_getClass(a1);
          if (class_isMetaClass(v50))
          {
            v51 = 43;
          }

          else
          {
            v51 = 45;
          }

          *buf = 67110658;
          v62 = v51;
          v63 = 2082;
          v64 = object_getClassName(a1);
          v65 = 2082;
          v66 = sel_getName("_updateAppletCount");
          v67 = 1024;
          v68 = 458;
          v69 = 2080;
          v70 = "com.apple.stockholm.express.state";
          v71 = 1024;
          v72 = v6;
          v73 = 1024;
          v74 = 0;
          v17 = "%c[%{public}s %{public}s]:%i posted %s expressState: 0x%x; status: %u";
          v44 = v14;
          v45 = OS_LOG_TYPE_DEFAULT;
          v46 = 56;
          goto LABEL_50;
        }

        if (v37)
        {
          v39 = object_getClass(a1);
          v40 = class_isMetaClass(v39);
          v54 = object_getClassName(a1);
          v59 = sel_getName("_updateAppletCount");
          v41 = 45;
          if (v40)
          {
            v41 = 43;
          }

          v38(3, "%c[%{public}s %{public}s]:%i Failed to notify : %d", v41, v54, v59, 455, v36);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v14 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_51;
        }

        v42 = object_getClass(a1);
        if (class_isMetaClass(v42))
        {
          v43 = 43;
        }

        else
        {
          v43 = 45;
        }

        *buf = 67110146;
        v62 = v43;
        v63 = 2082;
        v64 = object_getClassName(a1);
        v65 = 2082;
        v66 = sel_getName("_updateAppletCount");
        v67 = 1024;
        v68 = 455;
        v69 = 1024;
        LODWORD(v70) = v36;
        v17 = "%c[%{public}s %{public}s]:%i Failed to notify : %d";
      }
    }

    else
    {
      v8 = v7;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v9 = NFLogGetLogger();
      if (v9)
      {
        v10 = v9;
        v11 = object_getClass(a1);
        v12 = class_isMetaClass(v11);
        v52 = object_getClassName(a1);
        v56 = sel_getName("_updateAppletCount");
        v13 = 45;
        if (v12)
        {
          v13 = 43;
        }

        v10(3, "%c[%{public}s %{public}s]:%i Failed to notify register check : %d", v13, v52, v56, 466, v8);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v14 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_51;
      }

      v15 = object_getClass(a1);
      if (class_isMetaClass(v15))
      {
        v16 = 43;
      }

      else
      {
        v16 = 45;
      }

      *buf = 67110146;
      v62 = v16;
      v63 = 2082;
      v64 = object_getClassName(a1);
      v65 = 2082;
      v66 = sel_getName("_updateAppletCount");
      v67 = 1024;
      v68 = 466;
      v69 = 1024;
      LODWORD(v70) = v8;
      v17 = "%c[%{public}s %{public}s]:%i Failed to notify register check : %d";
    }

    v44 = v14;
    v45 = OS_LOG_TYPE_ERROR;
    v46 = 40;
LABEL_50:
    _os_log_impl(&_mh_execute_header, v44, v45, v17, buf, v46);
LABEL_51:

    sub_10002FB28(a1);
    return;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v27 = NFLogGetLogger();
  if (v27)
  {
    v28 = v27;
    v29 = object_getClass(a1);
    v30 = class_isMetaClass(v29);
    v31 = object_getClassName(a1);
    v58 = sel_getName("_updateAppletCount");
    v32 = 45;
    if (v30)
    {
      v32 = 43;
    }

    v28(6, "%c[%{public}s %{public}s]:%i Config not yet initialized", v32, v31, v58, 433);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v33 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
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
    v62 = v35;
    v63 = 2082;
    v64 = object_getClassName(a1);
    v65 = 2082;
    v66 = sel_getName("_updateAppletCount");
    v67 = 1024;
    v68 = 433;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Config not yet initialized", buf, 0x22u);
  }
}

void sub_10002E704(_DWORD *val)
{
  if (val)
  {
    val[43] = 0;
    *(val + 176) = 0;
    objc_initWeak(&location, val);
    if (!*(val + 12))
    {
      v2 = [NFTimer alloc];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10002F010;
      v15[3] = &unk_100315F08;
      objc_copyWeak(&v16, &location);
      v3 = [v2 initWithCallback:v15 queue:0];
      v4 = *(val + 12);
      *(val + 12) = v3;

      objc_destroyWeak(&v16);
    }

    if (!*(val + 11))
    {
      *(val + 16) = 0x4056800000000000;
      if (NFIsInternalBuild())
      {
        v5 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.stockholm"];
        v6 = [v5 objectForKey:@"expressModeMaxTimeout"];

        if (v6)
        {
          *(val + 16) = [v5 integerForKey:@"expressModeMaxTimeout"];
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          Logger = NFLogGetLogger();
          if (Logger)
          {
            Logger(5, "%s:%i Overriding maximum express mode timeout to %f", "[NFExpressModeManager initExpressTransactionsStates]", 312, *(val + 16));
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v8 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            v9 = *(val + 16);
            *buf = 136446722;
            v19 = "[NFExpressModeManager initExpressTransactionsStates]";
            v20 = 1024;
            v21 = 312;
            v22 = 2048;
            v23 = v9;
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Overriding maximum express mode timeout to %f", buf, 0x1Cu);
          }
        }
      }

      v10 = [NFTimer alloc];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10002F1BC;
      v13[3] = &unk_100315F08;
      objc_copyWeak(&v14, &location);
      v11 = [v10 initWithCallback:v13 queue:0];
      v12 = *(val + 11);
      *(val + 11) = v11;

      objc_destroyWeak(&v14);
    }

    objc_destroyWeak(&location);
  }
}

BOOL sub_10002E9BC(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = NFSharedSignpostLog();
  if (os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "EXPRESS_ACTIVATE_APPLETS", "in", buf, 2u);
  }

  if (*(a1 + 152) != 1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v4 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("activateConfig");
      v8 = 45;
      if (isMetaClass)
      {
        v8 = 43;
      }

      v4(5, "%c[%{public}s %{public}s]:%i Express mode not enabled", v8, ClassName, Name, 1255);
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

      v12 = object_getClassName(a1);
      v13 = sel_getName("activateConfig");
      *buf = 67109890;
      v53 = v11;
      v54 = 2082;
      v55 = v12;
      v56 = 2082;
      v57 = v13;
      v58 = 1024;
      v59 = 1255;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Express mode not enabled", buf, 0x22u);
    }
  }

  if (!*(a1 + 40))
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v31 = NFLogGetLogger();
    if (v31)
    {
      v32 = v31;
      v33 = object_getClass(a1);
      v34 = class_isMetaClass(v33);
      v35 = object_getClassName(a1);
      v50 = sel_getName("activateConfig");
      v36 = 45;
      if (v34)
      {
        v36 = 43;
      }

      v32(6, "%c[%{public}s %{public}s]:%i Config not yet initialized", v36, v35, v50, 1259);
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
      v41 = sel_getName("activateConfig");
      *buf = 67109890;
      v53 = v39;
      v54 = 2082;
      v55 = v40;
      v56 = 2082;
      v57 = v41;
      v58 = 1024;
      v59 = 1259;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Config not yet initialized", buf, 0x22u);
    }

    v16 = NFSharedSignpostLog();
    if (os_signpost_enabled(v16))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "EXPRESS_ACTIVATE_APPLETS", "out, config not yet initialized", buf, 2u);
    }

    v17 = 0;
    goto LABEL_51;
  }

  sub_10026449C();
  sub_100035DE4(a1, 1);
  v51 = 0;
  v14 = *(a1 + 40);
  v15 = sub_10000658C(a1);
  v16 = [v14 updateExpressConfigLimitedTo:v15 andActivate:1 hasChanged:&v51 disableDPDEnter:a1 + 185];

  v17 = v16 == 0;
  if (!v16)
  {
    v42 = *(a1 + 16);
    if (v42)
    {
      *(v42 + 176) = 0;
    }

    if (v51 != 1)
    {
      goto LABEL_48;
    }

    goto LABEL_45;
  }

  v18 = [v16 localizedDescription];
  v19 = [NSString stringWithFormat:@"File: NFExpressModeManager, Function: activateApplets, Error: %@", v18];
  sub_100199C14(NFBugCapture, @"Failed to update express config on eSE", v19, 0);

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v20 = NFLogGetLogger();
  if (v20)
  {
    v21 = v20;
    v22 = object_getClass(a1);
    v23 = class_isMetaClass(v22);
    v47 = object_getClassName(a1);
    v49 = sel_getName("activateConfig");
    v24 = 45;
    if (v23)
    {
      v24 = 43;
    }

    v21(3, "%c[%{public}s %{public}s]:%i failed to activate express config on eSE: %{public}@", v24, v47, v49, 1279, v16);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v25 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    v26 = object_getClass(a1);
    if (class_isMetaClass(v26))
    {
      v27 = 43;
    }

    else
    {
      v27 = 45;
    }

    v28 = object_getClassName(a1);
    v29 = sel_getName("activateConfig");
    *buf = 67110146;
    v53 = v27;
    v54 = 2082;
    v55 = v28;
    v56 = 2082;
    v57 = v29;
    v58 = 1024;
    v59 = 1279;
    v60 = 2114;
    v61 = v16;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i failed to activate express config on eSE: %{public}@", buf, 0x2Cu);
  }

  v30 = *(a1 + 16);
  if (v30)
  {
    *(v30 + 176) = 0;
  }

  if (v51)
  {
LABEL_45:
    sub_100035A5C("com.apple.stockholm.express.applets.updated");
    v43 = NFSharedSignpostLog();
    if (os_signpost_enabled(v43))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v43, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "EXPRESS_MODE_APPLETS_UPDATED_NOTIFICATION", "com.apple.stockholm.express.applets.updated", buf, 2u);
    }

    goto LABEL_48;
  }

  sub_100035A5C("com.apple.stockholm.express.config.failure");
LABEL_48:
  v44 = NFSharedSignpostLog();
  if (os_signpost_enabled(v44))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v44, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "EXPRESS_ACTIVATE_APPLETS", "out", buf, 2u);
  }

  [*(a1 + 80) stopTimer];
  v45 = *(a1 + 80);
  *(a1 + 80) = 0;

LABEL_51:
  return v17;
}

void sub_10002F010(uint64_t a1)
{
  v2 = _os_activity_create(&_mh_execute_header, "com.apple.nfcd.express.txn.typeFTimer", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  *state = 0;
  *&state[8] = 0;
  os_activity_scope_enter(v2, state);
  os_activity_scope_leave(state);

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(5, "%s:%i Express Mode timeout.", "[NFExpressModeManager initExpressTransactionsStates]_block_invoke", 301);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v5 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *state = 136446466;
    *&state[4] = "[NFExpressModeManager initExpressTransactionsStates]_block_invoke";
    *&state[12] = 1024;
    *&state[14] = 301;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Express Mode timeout.", state, 0x12u);
  }

  if (WeakRetained)
  {
    v6 = WeakRetained[15];
    *state = _NSConcreteStackBlock;
    *&state[8] = 3221225472;
    *&state[16] = sub_10003C2FC;
    v8 = &unk_100315F58;
    v9 = WeakRetained;
    v10 = "_handleExpressModeTimeout";
    dispatch_async(v6, state);
  }
}

void sub_10002F1BC(uint64_t a1)
{
  v2 = _os_activity_create(&_mh_execute_header, "com.apple.nfcd.express.txn.exitTimer", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  *state = 0;
  *&state[8] = 0;
  os_activity_scope_enter(v2, state);
  os_activity_scope_leave(state);

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(5, "%s:%i Max express mode operation timeout", "[NFExpressModeManager initExpressTransactionsStates]_block_invoke", 320);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v5 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *state = 136446466;
    *&state[4] = "[NFExpressModeManager initExpressTransactionsStates]_block_invoke";
    *&state[12] = 1024;
    *&state[14] = 320;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Max express mode operation timeout", state, 0x12u);
  }

  sub_10002F314(WeakRetained, 1);
}

void sub_10002F314(uint64_t a1, char a2)
{
  if (a1)
  {
    v2 = *(a1 + 120);
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10003D6C8;
    v3[3] = &unk_100315EB8;
    v3[4] = a1;
    v4 = a2;
    dispatch_async(v2, v3);
  }
}

void sub_10002F394(void *a1)
{
  if (a1)
  {
    sub_100007EE0(a1);
    v2 = a1[12];
    a1[12] = 0;

    v3 = a1[11];
    a1[11] = 0;
  }
}

id sub_10002F3E4(id a1, void *a2, void *a3, void *a4, void *a5)
{
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (a1)
  {
    v73.receiver = a1;
    v73.super_class = NFExpressModeManager;
    a1 = objc_msgSendSuper2(&v73, "init");
    if (a1)
    {
      if (NF_isFeatureSupported())
      {
        if (v11 && v12 && v13)
        {
          objc_storeStrong(a1 + 1, a2);
          objc_storeStrong(a1 + 2, a3);
          objc_storeStrong(a1 + 3, a4);
          objc_storeStrong(a1 + 15, a5);
          v14 = *(a1 + 2);
          if (v14)
          {
            *(v14 + 224) = a1;
          }

          [*(a1 + 3) setDelegate:a1];
          *(a1 + 36) = -1;
          v15 = sub_10021A4A0(v11, @"Express init", 1uLL);
          if (!v15)
          {
            *(a1 + 19) = 0;
            v49 = +[NSUserDefaults standardUserDefaults];
            v51 = [v49 objectForKey:@"ExpressModeEnabled"];

            if (v51)
            {
              v52 = [v49 BOOLForKey:@"ExpressModeEnabled"];
              [v49 removeObjectForKey:@"ExpressModeEnabled"];
              *(a1 + 19) = v52;
              [v49 setInteger:? forKey:?];
            }

            else
            {
              v53 = [v49 objectForKey:@"ExpressModeControlState"];

              if (v53)
              {
                *(a1 + 19) = [v49 integerForKey:@"ExpressModeControlState"];
              }
            }

            *(a1 + 180) = [v49 BOOLForKey:@"ecp2ExpressTestMode"];
            if ([v49 BOOLForKey:@"ExpressModeFactoryTest"])
            {
              v54 = 1;
            }

            else
            {
              v54 = *(a1 + 180);
            }

            *(a1 + 179) = v54 & 1;
            *(a1 + 20) = 0;
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            Logger = NFLogGetLogger();
            if (Logger)
            {
              v56 = Logger;
              Class = object_getClass(a1);
              isMetaClass = class_isMetaClass(Class);
              ClassName = object_getClassName(a1);
              Name = sel_getName("initWithDelegate:driverWrapper:controllerManager:workQueue:");
              v61 = 45;
              if (isMetaClass)
              {
                v61 = 43;
              }

              v56(6, "%c[%{public}s %{public}s]:%i Enabled=%ld", v61, ClassName, Name, 404, *(a1 + 19));
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v62 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
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
              v66 = sel_getName("initWithDelegate:driverWrapper:controllerManager:workQueue:");
              v67 = *(a1 + 19);
              *buf = 67110146;
              v75 = v64;
              v76 = 2082;
              v77 = v65;
              v78 = 2082;
              v79 = v66;
              v80 = 1024;
              v81 = 404;
              v82 = 2048;
              v83 = v67;
              _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Enabled=%ld", buf, 0x2Cu);
            }

            v68 = MKBDeviceUnlockedSinceBoot();
            if (*(a1 + 19) == 1)
            {
              *(a1 + 19) = v68 == 1;
            }

            if (v68 == 1)
            {
              sub_10002BDA8(a1, 1);
            }

            sub_10021CC94(v11, @"Express init");
            v69 = objc_alloc_init(NSMutableDictionary);
            v16 = *(a1 + 14);
            *(a1 + 14) = v69;
            goto LABEL_40;
          }

          v16 = v15;
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v17 = NFLogGetLogger();
          if (v17)
          {
            v18 = v17;
            v19 = object_getClass(a1);
            v20 = class_isMetaClass(v19);
            v21 = object_getClassName(a1);
            v70 = sel_getName("initWithDelegate:driverWrapper:controllerManager:workQueue:");
            v22 = 45;
            if (v20)
            {
              v22 = 43;
            }

            v18(3, "%c[%{public}s %{public}s]:%i Failed to open session : %@", v22, v21, v70, 383, v16);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v23 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
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
            v27 = sel_getName("initWithDelegate:driverWrapper:controllerManager:workQueue:");
            *buf = 67110146;
            v75 = v25;
            v76 = 2082;
            v77 = v26;
            v78 = 2082;
            v79 = v27;
            v80 = 1024;
            v81 = 383;
            v82 = 2112;
            v83 = v16;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to open session : %@", buf, 0x2Cu);
          }

LABEL_39:
          v49 = a1;
          a1 = 0;
LABEL_40:

          goto LABEL_41;
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v39 = NFLogGetLogger();
        if (v39)
        {
          v40 = v39;
          v41 = object_getClass(a1);
          v42 = class_isMetaClass(v41);
          v43 = object_getClassName(a1);
          v72 = sel_getName("initWithDelegate:driverWrapper:controllerManager:workQueue:");
          v44 = 45;
          if (v42)
          {
            v44 = 43;
          }

          v40(3, "%c[%{public}s %{public}s]:%i incorrect arguments", v44, v43, v72, 367);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v16 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_39;
        }

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
        v48 = sel_getName("initWithDelegate:driverWrapper:controllerManager:workQueue:");
        *buf = 67109890;
        v75 = v46;
        v76 = 2082;
        v77 = v47;
        v78 = 2082;
        v79 = v48;
        v80 = 1024;
        v81 = 367;
        v38 = "%c[%{public}s %{public}s]:%i incorrect arguments";
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
          v71 = sel_getName("initWithDelegate:driverWrapper:controllerManager:workQueue:");
          v33 = 45;
          if (v31)
          {
            v33 = 43;
          }

          v29(3, "%c[%{public}s %{public}s]:%i Express is not supported", v33, v32, v71, 362);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v16 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_39;
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
        v37 = sel_getName("initWithDelegate:driverWrapper:controllerManager:workQueue:");
        *buf = 67109890;
        v75 = v35;
        v76 = 2082;
        v77 = v36;
        v78 = 2082;
        v79 = v37;
        v80 = 1024;
        v81 = 362;
        v38 = "%c[%{public}s %{public}s]:%i Express is not supported";
      }

      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, v38, buf, 0x22u);
      goto LABEL_39;
    }
  }

LABEL_41:

  return a1;
}

void sub_10002FB28(uint64_t a1)
{
  if (*(a1 + 152) == 1)
  {
    if (*(a1 + 48) || *(a1 + 56))
    {
      v2 = *(a1 + 136);
      if ((v2 & 0x11) != 0)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          v4 = Logger;
          Class = object_getClass(a1);
          isMetaClass = class_isMetaClass(Class);
          ClassName = object_getClassName(a1);
          Name = sel_getName("_updateExpressModeDriverConfiguration");
          v8 = 45;
          if (isMetaClass)
          {
            v8 = 43;
          }

          v4(6, "%c[%{public}s %{public}s]:%i Override transit express only", v8, ClassName, Name, 1754);
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

          *buf = 67109890;
          v174 = v11;
          v175 = 2082;
          v176 = object_getClassName(a1);
          v177 = 2082;
          v178 = sel_getName("_updateExpressModeDriverConfiguration");
          v179 = 1024;
          v180 = 1754;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Override transit express only", buf, 0x22u);
        }

        v2 = *(a1 + 136);
        v12 = 1;
        if ((v2 & 2) == 0)
        {
LABEL_15:
          if ((v2 & 4) == 0)
          {
            goto LABEL_16;
          }

          goto LABEL_41;
        }
      }

      else
      {
        v12 = 0;
        if ((v2 & 2) == 0)
        {
          goto LABEL_15;
        }
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v23 = NFLogGetLogger();
      if (v23)
      {
        v24 = v23;
        v25 = object_getClass(a1);
        v26 = class_isMetaClass(v25);
        v27 = object_getClassName(a1);
        v163 = sel_getName("_updateExpressModeDriverConfiguration");
        v28 = 45;
        if (v26)
        {
          v28 = 43;
        }

        v24(6, "%c[%{public}s %{public}s]:%i Override access express only", v28, v27, v163, 1759);
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
        v33 = sel_getName("_updateExpressModeDriverConfiguration");
        *buf = 67109890;
        v174 = v31;
        v175 = 2082;
        v176 = v32;
        v177 = 2082;
        v178 = v33;
        v179 = 1024;
        v180 = 1759;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Override access express only", buf, 0x22u);
      }

      v2 = *(a1 + 136);
      v12 = 2;
      if ((v2 & 4) == 0)
      {
LABEL_16:
        if ((v2 & 0x20) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_51;
      }

LABEL_41:
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v34 = NFLogGetLogger();
      if (v34)
      {
        v35 = v34;
        v36 = object_getClass(a1);
        v37 = class_isMetaClass(v36);
        v38 = object_getClassName(a1);
        v164 = sel_getName("_updateExpressModeDriverConfiguration");
        v39 = 45;
        if (v37)
        {
          v39 = 43;
        }

        v35(6, "%c[%{public}s %{public}s]:%i Override Generic-A express only", v39, v38, v164, 1764);
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
        v44 = sel_getName("_updateExpressModeDriverConfiguration");
        *buf = 67109890;
        v174 = v42;
        v175 = 2082;
        v176 = v43;
        v177 = 2082;
        v178 = v44;
        v179 = 1024;
        v180 = 1764;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Override Generic-A express only", buf, 0x22u);
      }

      v2 = *(a1 + 136);
      v12 = 4;
      if ((v2 & 0x20) == 0)
      {
LABEL_17:
        if ((v2 & 8) == 0)
        {
LABEL_71:
          *(a1 + 168) = v12;
          v67 = *(a1 + 16);
          if (v67)
          {
            sub_1002208E4(v67, v12, 0);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v68 = NFLogGetLogger();
          if (v68)
          {
            v69 = v68;
            v70 = object_getClass(a1);
            v71 = class_isMetaClass(v70);
            v72 = object_getClassName(a1);
            v73 = sel_getName("_updateExpressModeDriverConfiguration");
            v74 = 45;
            if (v71)
            {
              v74 = 43;
            }

            v69(6, "%c[%{public}s %{public}s]:%i Restricted passes available. Express Mode config: 0x%04x", v74, v72, v73, 1780, *(a1 + 168));
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v75 = NFSharedLogGetLogger();
          if (!os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_84;
          }

          v76 = object_getClass(a1);
          if (class_isMetaClass(v76))
          {
            v77 = 43;
          }

          else
          {
            v77 = 45;
          }

          v78 = object_getClassName(a1);
          v79 = sel_getName("_updateExpressModeDriverConfiguration");
          v80 = *(a1 + 168);
          *buf = 67110146;
          v174 = v77;
          v175 = 2082;
          v176 = v78;
          v177 = 2082;
          v178 = v79;
          v179 = 1024;
          v180 = 1780;
          v181 = 1024;
          v182 = v80;
          v81 = "%c[%{public}s %{public}s]:%i Restricted passes available. Express Mode config: 0x%04x";
          goto LABEL_82;
        }

LABEL_61:
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v56 = NFLogGetLogger();
        if (v56)
        {
          v57 = v56;
          v58 = object_getClass(a1);
          v59 = class_isMetaClass(v58);
          v60 = object_getClassName(a1);
          v166 = sel_getName("_updateExpressModeDriverConfiguration");
          v61 = 45;
          if (v59)
          {
            v61 = 43;
          }

          v57(6, "%c[%{public}s %{public}s]:%i Override ECP2 express only", v61, v60, v166, 1774);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v62 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
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
          v66 = sel_getName("_updateExpressModeDriverConfiguration");
          *buf = 67109890;
          v174 = v64;
          v175 = 2082;
          v176 = v65;
          v177 = 2082;
          v178 = v66;
          v179 = 1024;
          v180 = 1774;
          _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Override ECP2 express only", buf, 0x22u);
        }

        v12 = 16;
        goto LABEL_71;
      }

LABEL_51:
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v45 = NFLogGetLogger();
      if (v45)
      {
        v46 = v45;
        v47 = object_getClass(a1);
        v48 = class_isMetaClass(v47);
        v49 = object_getClassName(a1);
        v165 = sel_getName("_updateExpressModeDriverConfiguration");
        v50 = 45;
        if (v48)
        {
          v50 = 43;
        }

        v46(6, "%c[%{public}s %{public}s]:%i Override SinglePoll express only", v50, v49, v165, 1769);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v51 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        v52 = object_getClass(a1);
        if (class_isMetaClass(v52))
        {
          v53 = 43;
        }

        else
        {
          v53 = 45;
        }

        v54 = object_getClassName(a1);
        v55 = sel_getName("_updateExpressModeDriverConfiguration");
        *buf = 67109890;
        v174 = v53;
        v175 = 2082;
        v176 = v54;
        v177 = 2082;
        v178 = v55;
        v179 = 1024;
        v180 = 1769;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Override SinglePoll express only", buf, 0x22u);
      }

      v12 = 32;
      if ((*(a1 + 136) & 8) == 0)
      {
        goto LABEL_71;
      }

      goto LABEL_61;
    }

    *(a1 + 168) = 0;
    v84 = *(a1 + 40);
    if (!v84 || (v85 = v84[3], v86 = v84[4], !(v86 + v85 + v84[5] + v84[6] + v84[7] + v84[8])))
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v87 = NFLogGetLogger();
      if (v87)
      {
        v88 = v87;
        v89 = object_getClass(a1);
        v90 = class_isMetaClass(v89);
        v91 = object_getClassName(a1);
        v167 = sel_getName("_updateExpressModeDriverConfiguration");
        v92 = 45;
        if (v90)
        {
          v92 = 43;
        }

        v88(6, "%c[%{public}s %{public}s]:%i No express modes active", v92, v91, v167, 1787);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v75 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_84;
      }

      v93 = object_getClass(a1);
      if (class_isMetaClass(v93))
      {
        v94 = 43;
      }

      else
      {
        v94 = 45;
      }

      *buf = 67109890;
      v174 = v94;
      v175 = 2082;
      v176 = object_getClassName(a1);
      v177 = 2082;
      v178 = sel_getName("_updateExpressModeDriverConfiguration");
      v179 = 1024;
      v180 = 1787;
      v81 = "%c[%{public}s %{public}s]:%i No express modes active";
      v82 = v75;
      v83 = 34;
      goto LABEL_83;
    }

    if (v85 | v86)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v95 = NFLogGetLogger();
      if (v95)
      {
        v96 = v95;
        v97 = object_getClass(a1);
        v98 = class_isMetaClass(v97);
        v99 = object_getClassName(a1);
        v168 = sel_getName("_updateExpressModeDriverConfiguration");
        v100 = 45;
        if (v98)
        {
          v100 = 43;
        }

        v96(6, "%c[%{public}s %{public}s]:%i Express mode configured for typeF Transit", v100, v99, v168, 1793);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v101 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
      {
        v102 = object_getClass(a1);
        if (class_isMetaClass(v102))
        {
          v103 = 43;
        }

        else
        {
          v103 = 45;
        }

        *buf = 67109890;
        v174 = v103;
        v175 = 2082;
        v176 = object_getClassName(a1);
        v177 = 2082;
        v178 = sel_getName("_updateExpressModeDriverConfiguration");
        v179 = 1024;
        v180 = 1793;
        _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Express mode configured for typeF Transit", buf, 0x22u);
      }

      v104 = *(a1 + 168) | 1u;
      *(a1 + 168) = v104;
      v84 = *(a1 + 40);
      if (!v84)
      {
        goto LABEL_154;
      }
    }

    else
    {
      v104 = 0;
    }

    if (!v84[5])
    {
      goto LABEL_165;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v105 = NFLogGetLogger();
    if (v105)
    {
      v106 = v105;
      v107 = object_getClass(a1);
      v108 = class_isMetaClass(v107);
      v109 = object_getClassName(a1);
      v169 = sel_getName("_updateExpressModeDriverConfiguration");
      v110 = 45;
      if (v108)
      {
        v110 = 43;
      }

      v106(6, "%c[%{public}s %{public}s]:%i Express mode configured for ECPAccess", v110, v109, v169, 1797);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v111 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
    {
      v112 = object_getClass(a1);
      if (class_isMetaClass(v112))
      {
        v113 = 43;
      }

      else
      {
        v113 = 45;
      }

      v114 = object_getClassName(a1);
      v115 = sel_getName("_updateExpressModeDriverConfiguration");
      *buf = 67109890;
      v174 = v113;
      v175 = 2082;
      v176 = v114;
      v177 = 2082;
      v178 = v115;
      v179 = 1024;
      v180 = 1797;
      _os_log_impl(&_mh_execute_header, v111, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Express mode configured for ECPAccess", buf, 0x22u);
    }

    v104 = *(a1 + 168) | 2u;
    *(a1 + 168) = v104;
    v84 = *(a1 + 40);
    if (v84)
    {
LABEL_165:
      if (!v84[6])
      {
        goto LABEL_166;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v116 = NFLogGetLogger();
      if (v116)
      {
        v117 = v116;
        v118 = object_getClass(a1);
        v119 = class_isMetaClass(v118);
        v120 = object_getClassName(a1);
        v170 = sel_getName("_updateExpressModeDriverConfiguration");
        v121 = 45;
        if (v119)
        {
          v121 = 43;
        }

        v117(6, "%c[%{public}s %{public}s]:%i Express mode configured for Generic-A", v121, v120, v170, 1801);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v122 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
      {
        v123 = object_getClass(a1);
        if (class_isMetaClass(v123))
        {
          v124 = 43;
        }

        else
        {
          v124 = 45;
        }

        v125 = object_getClassName(a1);
        v126 = sel_getName("_updateExpressModeDriverConfiguration");
        *buf = 67109890;
        v174 = v124;
        v175 = 2082;
        v176 = v125;
        v177 = 2082;
        v178 = v126;
        v179 = 1024;
        v180 = 1801;
        _os_log_impl(&_mh_execute_header, v122, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Express mode configured for Generic-A", buf, 0x22u);
      }

      v104 = *(a1 + 168) | 4u;
      *(a1 + 168) = v104;
      v84 = *(a1 + 40);
      if (v84)
      {
LABEL_166:
        if (!v84[8])
        {
          goto LABEL_167;
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v127 = NFLogGetLogger();
        if (v127)
        {
          v128 = v127;
          v129 = object_getClass(a1);
          v130 = class_isMetaClass(v129);
          v131 = object_getClassName(a1);
          v171 = sel_getName("_updateExpressModeDriverConfiguration");
          v132 = 45;
          if (v130)
          {
            v132 = 43;
          }

          v128(6, "%c[%{public}s %{public}s]:%i Express mode configured for SinglePoll", v132, v131, v171, 1805);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v133 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v133, OS_LOG_TYPE_DEFAULT))
        {
          v134 = object_getClass(a1);
          if (class_isMetaClass(v134))
          {
            v135 = 43;
          }

          else
          {
            v135 = 45;
          }

          v136 = object_getClassName(a1);
          v137 = sel_getName("_updateExpressModeDriverConfiguration");
          *buf = 67109890;
          v174 = v135;
          v175 = 2082;
          v176 = v136;
          v177 = 2082;
          v178 = v137;
          v179 = 1024;
          v180 = 1805;
          _os_log_impl(&_mh_execute_header, v133, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Express mode configured for SinglePoll", buf, 0x22u);
        }

        v104 = *(a1 + 168) | 0x20u;
        *(a1 + 168) = v104;
        v84 = *(a1 + 40);
        if (v84)
        {
LABEL_167:
          if (v84[7])
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v138 = NFLogGetLogger();
            if (v138)
            {
              v139 = v138;
              v140 = object_getClass(a1);
              v141 = class_isMetaClass(v140);
              v142 = object_getClassName(a1);
              v172 = sel_getName("_updateExpressModeDriverConfiguration");
              v143 = 45;
              if (v141)
              {
                v143 = 43;
              }

              v139(6, "%c[%{public}s %{public}s]:%i Express mode configured for ECP2", v143, v142, v172, 1809);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v144 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v144, OS_LOG_TYPE_DEFAULT))
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
              v148 = sel_getName("_updateExpressModeDriverConfiguration");
              *buf = 67109890;
              v174 = v146;
              v175 = 2082;
              v176 = v147;
              v177 = 2082;
              v178 = v148;
              v179 = 1024;
              v180 = 1809;
              _os_log_impl(&_mh_execute_header, v144, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Express mode configured for ECP2", buf, 0x22u);
            }

            v104 = *(a1 + 168) | 0x10u;
            *(a1 + 168) = v104;
          }
        }
      }
    }

LABEL_154:
    sub_1002208E4(*(a1 + 16), v104, 0);
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v149 = NFLogGetLogger();
    if (v149)
    {
      v150 = v149;
      v151 = object_getClass(a1);
      v152 = class_isMetaClass(v151);
      v153 = object_getClassName(a1);
      v154 = sel_getName("_updateExpressModeDriverConfiguration");
      v155 = 45;
      if (v152)
      {
        v155 = 43;
      }

      v150(6, "%c[%{public}s %{public}s]:%i Express Mode config: 0x%04x", v155, v153, v154, 1814, *(a1 + 168));
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v75 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_84;
    }

    v156 = object_getClass(a1);
    if (class_isMetaClass(v156))
    {
      v157 = 43;
    }

    else
    {
      v157 = 45;
    }

    v158 = object_getClassName(a1);
    v159 = sel_getName("_updateExpressModeDriverConfiguration");
    v160 = *(a1 + 168);
    *buf = 67110146;
    v174 = v157;
    v175 = 2082;
    v176 = v158;
    v177 = 2082;
    v178 = v159;
    v179 = 1024;
    v180 = 1814;
    v181 = 1024;
    v182 = v160;
    v81 = "%c[%{public}s %{public}s]:%i Express Mode config: 0x%04x";
LABEL_82:
    v82 = v75;
    v83 = 40;
LABEL_83:
    _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, v81, buf, v83);
LABEL_84:

    return;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v13 = NFLogGetLogger();
  if (v13)
  {
    v14 = v13;
    v15 = object_getClass(a1);
    v16 = class_isMetaClass(v15);
    v17 = object_getClassName(a1);
    v162 = sel_getName("_updateExpressModeDriverConfiguration");
    v18 = 45;
    if (v16)
    {
      v18 = 43;
    }

    v14(6, "%c[%{public}s %{public}s]:%i Disabling express config", v18, v17, v162, 1743);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v19 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
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

    *buf = 67109890;
    v174 = v21;
    v175 = 2082;
    v176 = object_getClassName(a1);
    v177 = 2082;
    v178 = sel_getName("_updateExpressModeDriverConfiguration");
    v179 = 1024;
    v180 = 1743;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Disabling express config", buf, 0x22u);
  }

  v22 = *(a1 + 16);
  if (v22)
  {
    sub_1002208E4(v22, 0, 0);
  }
}

id sub_100030C60(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = NFSharedSignpostLog();
    if (os_signpost_enabled(v4))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "setExpressModeControlState", &unk_1002E8B7A, buf, 2u);
    }

    v5 = sub_10002BB84(a1);
    v6 = v5;
    if (v5)
    {
      v7 = [v5 code] != 75;
    }

    else
    {
      v7 = 1;
    }

    if (*(a1 + 179) == 1)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v9 = Logger;
        Class = object_getClass(a1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(a1);
        Name = sel_getName("setExpressModeControlState:");
        v13 = 45;
        if (isMetaClass)
        {
          v13 = 43;
        }

        v9(4, "%c[%{public}s %{public}s]:%i Forcing express mode on when factoryTestMode is enabled", v13, ClassName, Name, 485);
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
        v18 = sel_getName("setExpressModeControlState:");
        *buf = 67109890;
        v107 = v16;
        v108 = 2082;
        v109 = v17;
        v110 = 2082;
        v111 = v18;
        v112 = 1024;
        v113 = 485;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Forcing express mode on when factoryTestMode is enabled", buf, 0x22u);
      }

      a2 = 1;
    }

    if (a2 != *(a1 + 152))
    {
      v19 = +[NSUserDefaults standardUserDefaults];
      v20 = [v19 objectForKey:@"ExpressModeEnabled"];

      if (v20)
      {
        [v19 removeObjectForKey:@"ExpressModeEnabled"];
      }

      [v19 setInteger:a2 forKey:@"ExpressModeControlState"];
      if (a2 == 1 && v7)
      {
        v21 = NFSharedSignpostLog();
        if (os_signpost_enabled(v21))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "setExpressModeControlState", "enabling express", buf, 2u);
        }

        v22 = sub_10021A4A0(*(a1 + 16), @"Enable Express", 1uLL);

        if (v22)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v23 = NFLogGetLogger();
          if (v23)
          {
            v24 = v23;
            v25 = object_getClass(a1);
            v26 = class_isMetaClass(v25);
            v99 = object_getClassName(a1);
            v102 = sel_getName("setExpressModeControlState:");
            v27 = 45;
            if (v26)
            {
              v27 = 43;
            }

            v24(4, "%c[%{public}s %{public}s]:%i Failed to open session : %@", v27, v99, v102, 501, v22);
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
            v32 = sel_getName("setExpressModeControlState:");
            *buf = 67110146;
            v107 = v30;
            v108 = 2082;
            v109 = v31;
            v110 = 2082;
            v111 = v32;
            v112 = 1024;
            v113 = 501;
            v114 = 2112;
            v115[0] = v22;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to open session : %@", buf, 0x2Cu);
          }

          v33 = NFSharedSignpostLog();
          if (os_signpost_enabled(v33))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v33, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "setExpressModeControlState", "failed to open session", buf, 2u);
          }

          *(a1 + 152) = 0;
          v34 = [NSError alloc];
          v35 = [NSString stringWithUTF8String:"nfcd"];
          v36 = [v22 code];
          v116[0] = NSLocalizedDescriptionKey;
          if ([v22 code] > 75)
          {
            v37 = 76;
          }

          else
          {
            v37 = [v22 code];
          }

          v75 = [NSString stringWithUTF8String:off_100315B58[v37]];
          v117[0] = v75;
          v117[1] = v22;
          v116[1] = NSUnderlyingErrorKey;
          v116[2] = @"Line";
          v117[2] = &off_100330078;
          v116[3] = @"Method";
          v76 = [[NSString alloc] initWithFormat:@"%s", sel_getName("setExpressModeControlState:")];
          v117[3] = v76;
          v116[4] = NSDebugDescriptionErrorKey;
          v77 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("setExpressModeControlState:"), 504];
          v117[4] = v77;
          v78 = [NSDictionary dictionaryWithObjects:v117 forKeys:v116 count:5];
          v79 = [v34 initWithDomain:v35 code:v36 userInfo:v78];

          v80 = v79;
LABEL_102:

          goto LABEL_103;
        }

        *(a1 + 152) = 1;
        sub_10002E078(a1);
        v59 = +[_NFHardwareManager sharedHardwareManager];
        v60 = [v59 controllerInfo];
        v61 = [v60 hasLPEMSupport];

        if (v61)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v62 = NFLogGetLogger();
          if (v62)
          {
            v63 = v62;
            v64 = object_getClass(a1);
            v65 = class_isMetaClass(v64);
            v66 = object_getClassName(a1);
            v104 = sel_getName("setExpressModeControlState:");
            v67 = 45;
            if (v65)
            {
              v67 = 43;
            }

            v63(6, "%c[%{public}s %{public}s]:%i Updating LPEM config after enabling express", v67, v66, v104, 514);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v68 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
          {
            v69 = object_getClass(a1);
            if (class_isMetaClass(v69))
            {
              v70 = 43;
            }

            else
            {
              v70 = 45;
            }

            v71 = object_getClassName(a1);
            v72 = sel_getName("setExpressModeControlState:");
            *buf = 67109890;
            v107 = v70;
            v108 = 2082;
            v109 = v71;
            v110 = 2082;
            v111 = v72;
            v112 = 1024;
            v113 = 514;
            _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Updating LPEM config after enabling express", buf, 0x22u);
          }

          v73 = NFSharedSignpostLog();
          if (os_signpost_enabled(v73))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v73, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "setExpressModeControlState", "enabling LPEM", buf, 2u);
          }

          if (*(a1 + 179) == 1)
          {
            if (*(a1 + 180))
            {
              v74 = 16;
            }

            else
            {
              v74 = 4;
            }
          }

          else
          {
            v74 = *(a1 + 168);
          }

          sub_1002208E4(*(a1 + 16), v74, 1);
          sub_1001AA264(*(a1 + 16), 1);
        }

        [*(a1 + 40) activateExpressConfig];
        v6 = 0;
      }

      else if (*(a1 + 152) == 1 && v7)
      {
        v38 = NFSharedSignpostLog();
        if (os_signpost_enabled(v38))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v38, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "setExpressModeControlState", "disabling express", buf, 2u);
        }

        v39 = [*(a1 + 40) deactivateExpressConfig];
        *(a1 + 152) = a2;
        v40 = NFSharedSignpostLog();
        if (os_signpost_enabled(v40))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v40, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "setExpressModeControlState", "expressConfig deactivated", buf, 2u);
        }

        sub_10002FB28(a1);
        v41 = NFSharedSignpostLog();
        if (os_signpost_enabled(v41))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v41, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "setExpressModeControlState", "driver config updated", buf, 2u);
        }

        v42 = +[_NFHardwareManager sharedHardwareManager];
        v43 = [v42 controllerInfo];
        v44 = [v43 hasLPEMSupport];

        if (v44)
        {
          v45 = NFSharedSignpostLog();
          if (os_signpost_enabled(v45))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v45, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "setExpressModeControlState", "disabling LPEM", buf, 2u);
          }

          sub_1001AA6BC(*(a1 + 16), 1);
        }

        sub_10021CC94(*(a1 + 16), @"Enable Express");
        v46 = NFSharedSignpostLog();
        if (os_signpost_enabled(v46))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v46, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "setExpressModeControlState", "express disabled", buf, 2u);
        }
      }

      else
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v47 = NFLogGetLogger();
        if (v47)
        {
          v48 = v47;
          v49 = object_getClass(a1);
          v50 = class_isMetaClass(v49);
          v51 = object_getClassName(a1);
          v103 = sel_getName("setExpressModeControlState:");
          v52 = 45;
          if (v50)
          {
            v52 = 43;
          }

          v48(6, "%c[%{public}s %{public}s]:%i firstUnlock=%d, target state=%ld", v52, v51, v103, 543, v7, a2);
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
          v57 = sel_getName("setExpressModeControlState:");
          *buf = 67110402;
          v107 = v55;
          v108 = 2082;
          v109 = v56;
          v110 = 2082;
          v111 = v57;
          v112 = 1024;
          v113 = 543;
          v114 = 1024;
          LODWORD(v115[0]) = v7;
          WORD2(v115[0]) = 2048;
          *(v115 + 6) = a2;
          _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i firstUnlock=%d, target state=%ld", buf, 0x32u);
        }

        v58 = NFSharedSignpostLog();
        if (os_signpost_enabled(v58))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v58, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "setExpressModeControlState", "in bio-lock", buf, 2u);
        }

        *(a1 + 152) = a2;
      }

      v81 = *(a1 + 40);
      if (v81)
      {
        v82 = v81[2];
      }

      else
      {
        v82 = 0;
      }

      v83 = v82;
      v84 = [v81 hasUWBKeys:v83];

      if (v84)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v85 = NFLogGetLogger();
        if (v85)
        {
          v86 = v85;
          v87 = object_getClass(a1);
          v88 = class_isMetaClass(v87);
          v100 = object_getClassName(a1);
          v105 = sel_getName("setExpressModeControlState:");
          v89 = 45;
          if (v88)
          {
            v89 = 43;
          }

          v86(6, "%c[%{public}s %{public}s]:%i posting %{public}@ to SESD", v89, v100, v105, 552, @"com.apple.stockholm.express.keys.uwb.changed");
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v90 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
        {
          v91 = object_getClass(a1);
          if (class_isMetaClass(v91))
          {
            v92 = 43;
          }

          else
          {
            v92 = 45;
          }

          v93 = object_getClassName(a1);
          v94 = sel_getName("setExpressModeControlState:");
          *buf = 67110146;
          v107 = v92;
          v108 = 2082;
          v109 = v93;
          v110 = 2082;
          v111 = v94;
          v112 = 1024;
          v113 = 552;
          v114 = 2114;
          v115[0] = @"com.apple.stockholm.express.keys.uwb.changed";
          _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i posting %{public}@ to SESD", buf, 0x2Cu);
        }

        v95 = +[_NFHardwareManager sharedHardwareManager];
        v96 = [v95 sesdEventPublisher];
        [v96 sendXpcNotificationEventWithString:@"com.apple.stockholm.express.keys.uwb.changed"];
      }
    }

    v97 = NFSharedSignpostLog();
    if (os_signpost_enabled(v97))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v97, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "setExpressModeControlState", &unk_1002E8B7A, buf, 2u);
    }

    v80 = v6;
    goto LABEL_102;
  }

  v80 = 0;
LABEL_103:

  return v80;
}

void sub_100031A1C(_BYTE *a1, uint64_t a2, uint64_t a3)
{
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
      Name = sel_getName("pauseExpressMode:suspendFieldDetect:");
      v11 = 45;
      if (isMetaClass)
      {
        v11 = 43;
      }

      v7(6, "%c[%{public}s %{public}s]:%i pause=%{public}d, suspendFD=%{public}d", v11, ClassName, Name, 573, a2, a3);
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

      *buf = 67110402;
      v25 = v14;
      v26 = 2082;
      v27 = object_getClassName(a1);
      v28 = 2082;
      v29 = sel_getName("pauseExpressMode:suspendFieldDetect:");
      v30 = 1024;
      v31 = 573;
      v32 = 1026;
      v33 = a2;
      v34 = 1026;
      v35 = a3;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i pause=%{public}d, suspendFD=%{public}d", buf, 0x2Eu);
    }

    a1[177] = a2;
    v15 = +[_NFHardwareManager sharedHardwareManager];
    v16 = [v15 hasSession];
    v17 = v16;
    if (a3)
    {
      if (v15)
      {
        v18 = v15[2];
      }

      else
      {
        v18 = 0;
      }

      v19 = v18;
      v20 = v19;
      if (a2)
      {
        [v19 suspend:@"NFExpressModeManager"];

        if ((v17 & 1) == 0)
        {
          v21 = sub_10004C224(NFRoutingConfig, 0);
          v22 = [v15 setRoutingConfig:v21];
        }
      }

      else
      {
        [v19 resume:@"NFExpressModeManager"];
      }
    }

    else if ((v16 & 1) == 0)
    {
      [v15 maybeStartNextSession];
    }
  }
}

void sub_100031C70(uint64_t a1)
{
  if (a1)
  {
    *(a1 + 184) = 0;
    if (*(a1 + 104))
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v3 = Logger;
        Class = object_getClass(a1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(a1);
        Name = sel_getName("cancelSinglePollAssertion");
        v7 = 45;
        if (isMetaClass)
        {
          v7 = 43;
        }

        v3(6, "%c[%{public}s %{public}s]:%i Cancelling express mode assertion", v7, ClassName, Name, 650);
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
        v14 = v10;
        v15 = 2082;
        v16 = object_getClassName(a1);
        v17 = 2082;
        v18 = sel_getName("cancelSinglePollAssertion");
        v19 = 1024;
        v20 = 650;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Cancelling express mode assertion", buf, 0x22u);
      }

      [*(a1 + 104) stopTimer];
      v11 = *(a1 + 104);
      *(a1 + 104) = 0;
    }
  }
}

id sub_100031E18(uint64_t a1, void *a2, _BOOL8 a3, uint64_t a4)
{
  v73 = a2;
  if (a1)
  {
    v7 = NFSharedSignpostLog();
    if (os_signpost_enabled(v7))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "setExpressPassConfig", &unk_1002E8B7A, buf, 2u);
    }

    v8 = sub_10002BBB4(a1, 0);
    if (v8)
    {
      v9 = v8;
      v10 = NFSharedSignpostLog();
      if (os_signpost_enabled(v10))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "setExpressPassConfig", "Not yet first unlock", buf, 2u);
      }

      v11 = [NSError alloc];
      v12 = [NSString stringWithUTF8String:"nfcd"];
      v13 = [v9 code];
      v88[0] = NSLocalizedDescriptionKey;
      if ([v9 code] > 75)
      {
        v14 = 76;
      }

      else
      {
        v14 = [v9 code];
      }

      v38 = [NSString stringWithUTF8String:off_100315B58[v14]];
      v89[0] = v38;
      v89[1] = v9;
      v88[1] = NSUnderlyingErrorKey;
      v88[2] = @"Line";
      v89[2] = &off_100330090;
      v88[3] = @"Method";
      v42 = [[NSString alloc] initWithFormat:@"%s", sel_getName("setExpressPassConfig:restoreAuthorization:updateStorage:")];
      v89[3] = v42;
      v88[4] = NSDebugDescriptionErrorKey;
      v43 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("setExpressPassConfig:restoreAuthorization:updateStorage:"), 668];
      v89[4] = v43;
      v44 = [NSDictionary dictionaryWithObjects:v89 forKeys:v88 count:5];
      v41 = [v11 initWithDomain:v12 code:v13 userInfo:v44];
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
        Name = sel_getName("setExpressPassConfig:restoreAuthorization:updateStorage:");
        v19 = 45;
        if (isMetaClass)
        {
          v19 = 43;
        }

        v16(6, "%c[%{public}s %{public}s]:%i restoreAuthorization=%d", v19, ClassName, Name, 671, a3);
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
        v24 = sel_getName("setExpressPassConfig:restoreAuthorization:updateStorage:");
        *buf = 67110146;
        v79 = v22;
        v80 = 2082;
        v81 = v23;
        v82 = 2082;
        v83 = v24;
        v84 = 1024;
        v85 = 671;
        v86 = 1024;
        v87 = a3;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i restoreAuthorization=%d", buf, 0x28u);
      }

      if (*(a1 + 179) != 1)
      {
        [*(a1 + 40) dumpConfig:v73 logLevel:6 prefix:@"new config"];
        v46 = NFSharedSignpostLog();
        if (os_signpost_enabled(v46))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v46, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "setExpressPassConfig", "reconfiguring", buf, 2u);
        }

        v9 = [*(a1 + 40) reconfigureWithArray:v73 restoreAuthorization:a3 updateStorage:a4];
        if (v9)
        {
          v47 = [NSError alloc];
          v48 = [NSString stringWithUTF8String:"nfcd"];
          v49 = [v9 code];
          v74[0] = NSLocalizedDescriptionKey;
          if ([v9 code] > 75)
          {
            v50 = 76;
          }

          else
          {
            v50 = [v9 code];
          }

          v51 = [NSString stringWithUTF8String:off_100315B58[v50]];
          v75[0] = v51;
          v75[1] = v9;
          v74[1] = NSUnderlyingErrorKey;
          v74[2] = @"Line";
          v75[2] = &off_1003300C0;
          v74[3] = @"Method";
          v52 = [[NSString alloc] initWithFormat:@"%s", sel_getName("setExpressPassConfig:restoreAuthorization:updateStorage:")];
          v75[3] = v52;
          v74[4] = NSDebugDescriptionErrorKey;
          v53 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("setExpressPassConfig:restoreAuthorization:updateStorage:"), 686];
          v75[4] = v53;
          v54 = [NSDictionary dictionaryWithObjects:v75 forKeys:v74 count:5];
          v41 = [v47 initWithDomain:v48 code:v49 userInfo:v54];
        }

        else
        {
          v41 = 0;
        }

        v55 = NFSharedSignpostLog();
        if (os_signpost_enabled(v55))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v55, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "setExpressPassConfig", "updating counters", buf, 2u);
        }

        sub_10002E078(a1);
        v56 = NFSharedSignpostLog();
        if (os_signpost_enabled(v56))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v56, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "setExpressPassConfig", "updating LPEM", buf, 2u);
        }

        v57 = sub_1001A9F5C(*(a1 + 16));
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v58 = NFLogGetLogger();
        if (v58)
        {
          v59 = v58;
          v60 = object_getClass(a1);
          v61 = class_isMetaClass(v60);
          v62 = object_getClassName(a1);
          v72 = sel_getName("setExpressPassConfig:restoreAuthorization:updateStorage:");
          v63 = 45;
          if (v61)
          {
            v63 = 43;
          }

          v59(6, "%c[%{public}s %{public}s]:%i Updating express mode config after setting passes : update lpem: %d", v63, v62, v72, 695, v57 != 0);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v64 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
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
          v68 = sel_getName("setExpressPassConfig:restoreAuthorization:updateStorage:");
          *buf = 67110146;
          v79 = v66;
          v80 = 2082;
          v81 = v67;
          v82 = 2082;
          v83 = v68;
          v84 = 1024;
          v85 = 695;
          v86 = 1024;
          v87 = v57 != 0;
          _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Updating express mode config after setting passes : update lpem: %d", buf, 0x28u);
        }

        sub_1002208E4(*(a1 + 16), *(a1 + 168), v57 != 0);
        v12 = NFSharedSignpostLog();
        if (os_signpost_enabled(v12))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "setExpressPassConfig", &unk_1002E8B7A, buf, 2u);
        }

        goto LABEL_34;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v25 = NFLogGetLogger();
      if (v25)
      {
        v26 = v25;
        v27 = object_getClass(a1);
        v28 = class_isMetaClass(v27);
        v29 = object_getClassName(a1);
        v71 = sel_getName("setExpressPassConfig:restoreAuthorization:updateStorage:");
        v30 = 45;
        if (v28)
        {
          v30 = 43;
        }

        v26(3, "%c[%{public}s %{public}s]:%i Can't change express applets when factory test mode is enabled", v30, v29, v71, 674);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v31 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
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
        v35 = sel_getName("setExpressPassConfig:restoreAuthorization:updateStorage:");
        *buf = 67109890;
        v79 = v33;
        v80 = 2082;
        v81 = v34;
        v82 = 2082;
        v83 = v35;
        v84 = 1024;
        v85 = 674;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Can't change express applets when factory test mode is enabled", buf, 0x22u);
      }

      v36 = NFSharedSignpostLog();
      if (os_signpost_enabled(v36))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v36, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "setExpressPassConfig", "skip due to factory mode", buf, 2u);
      }

      v37 = [NSError alloc];
      v9 = [NSString stringWithUTF8String:"nfcd"];
      v76[0] = NSLocalizedDescriptionKey;
      v12 = [NSString stringWithUTF8String:"Invalid State"];
      v77[0] = v12;
      v77[1] = &off_1003300A8;
      v76[1] = @"Line";
      v76[2] = @"Method";
      v38 = [[NSString alloc] initWithFormat:@"%s", sel_getName("setExpressPassConfig:restoreAuthorization:updateStorage:")];
      v77[2] = v38;
      v76[3] = NSDebugDescriptionErrorKey;
      v39 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("setExpressPassConfig:restoreAuthorization:updateStorage:"), 676];
      v77[3] = v39;
      v40 = [NSDictionary dictionaryWithObjects:v77 forKeys:v76 count:4];
      v41 = [v37 initWithDomain:v9 code:12 userInfo:v40];
    }

LABEL_34:
    goto LABEL_35;
  }

  v41 = 0;
LABEL_35:

  return v41;
}

id sub_100032938(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = sub_100006D58(a1);
    v5 = v4;
    if (v4)
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v6 = v4;
      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v16;
        while (2)
        {
          for (i = 0; i != v8; i = i + 1)
          {
            if (*v16 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v15 + 1) + 8 * i);
            v12 = [v11 objectForKeyedSubscript:{@"appletIdentifier", v15}];
            if ([v12 isEqualToString:v3])
            {
              v13 = v11;

              goto LABEL_13;
            }
          }

          v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }
      }

      v13 = 0;
LABEL_13:
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

BOOL sub_100032ABC(void *a1)
{
  v2 = sub_10004BF2C();
  v3 = +[_NFHardwareManager sharedHardwareManager];
  v4 = [v3 setRoutingConfig:v2];

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
      Name = sel_getName("_setRoutingForWrapper:");
      v10 = 45;
      if (isMetaClass)
      {
        v10 = 43;
      }

      v6(3, "%c[%{public}s %{public}s]:%i Failed to set secure element to wired mode", v10, ClassName, Name, 747);
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
      v17 = v13;
      v18 = 2082;
      v19 = object_getClassName(a1);
      v20 = 2082;
      v21 = sel_getName("_setRoutingForWrapper:");
      v22 = 1024;
      v23 = 747;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to set secure element to wired mode", buf, 0x22u);
    }
  }

  return v4 == 0;
}

uint64_t sub_100032C9C(void *a1, void *a2, unsigned int a3, void *a4)
{
  if (!a1)
  {
    return 0;
  }

  v7 = a2;
  v8 = NFSharedSignpostLog();
  if (os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "restoreAuthorizationForAllAppletsExcept", &unk_1002E8B7A, buf, 2u);
  }

  v9 = sub_10002BBB4(a1, 0);
  *a4 = v9;
  if (v9 && [v9 code] == 75)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v11 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("restoreAuthorizationForAllAppletsExcept:uid:expressConfigInitError:");
      v15 = 45;
      if (isMetaClass)
      {
        v15 = 43;
      }

      v11(4, "%c[%{public}s %{public}s]:%i Calling before first unlock!!!", v15, ClassName, Name, 789);
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

      v19 = object_getClassName(a1);
      v20 = sel_getName("restoreAuthorizationForAllAppletsExcept:uid:expressConfigInitError:");
      *buf = 67109890;
      v44 = v18;
      v45 = 2082;
      v46 = v19;
      v47 = 2082;
      v48 = v20;
      v49 = 1024;
      v50 = 789;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Calling before first unlock!!!", buf, 0x22u);
    }
  }

  v21 = +[_NFHardwareManager sharedHardwareManager];
  v22 = [v21 secureElementWrapper];
  v23 = v7;
  v24 = v22;
  if (v24)
  {
    if (sub_100032ABC(a1))
    {
      v42 = 0;
      v25 = sub_100205314(v24, v23, a3, &v42);
      if (v25)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v26 = NFLogGetLogger();
        if (v26)
        {
          v27 = v26;
          v28 = object_getClass(a1);
          v29 = class_isMetaClass(v28);
          v30 = object_getClassName(a1);
          v41 = sel_getName("_restoreAuthorizationForAllAppletsExcept:forSEWrapper:uid:");
          v31 = 45;
          if (v29)
          {
            v31 = 43;
          }

          v27(3, "%c[%{public}s %{public}s]:%i Failed to restore authorization on all applets", v31, v30, v41, 769);
        }

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
          v36 = sel_getName("_restoreAuthorizationForAllAppletsExcept:forSEWrapper:uid:");
          *buf = 67109890;
          v44 = v34;
          v45 = 2082;
          v46 = v35;
          v47 = 2082;
          v48 = v36;
          v49 = 1024;
          v50 = 769;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to restore authorization on all applets", buf, 0x22u);
        }
      }

      else if (v42 == 1)
      {
        v39 = sub_100253E14(v24);
      }
    }

    else
    {
      v25 = 6;
    }
  }

  else
  {
    v25 = 0;
  }

  v37 = NFSharedSignpostLog();
  if (os_signpost_enabled(v37))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v37, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "restoreAuthorizationForAllAppletsExcept", &unk_1002E8B7A, buf, 2u);
  }

  return v25;
}

id sub_1000330EC(void *a1, void *a2, void *a3, id *a4)
{
  v7 = a2;
  if (a1)
  {
    v8 = a3;
    v9 = NFSharedSignpostLog();
    if (os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "restoreAuthorizarionForKeys", &unk_1002E8B7A, buf, 2u);
    }

    v10 = sub_1000335E8(a1, v8);

    if (v10)
    {
      v11 = sub_10002BBB4(a1, 0);
      *a4 = v11;
      if (v11 && [v11 code] == 75)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          v13 = Logger;
          Class = object_getClass(a1);
          isMetaClass = class_isMetaClass(Class);
          ClassName = object_getClassName(a1);
          Name = sel_getName("restoreAuthorizationForKeys:onApplet:expressConfigInitError:");
          v17 = 45;
          if (isMetaClass)
          {
            v17 = 43;
          }

          v13(4, "%c[%{public}s %{public}s]:%i Calling before first unlock!!!", v17, ClassName, Name, 815);
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
          v22 = sel_getName("restoreAuthorizationForKeys:onApplet:expressConfigInitError:");
          *buf = 67109890;
          v39 = v20;
          v40 = 2082;
          v41 = v21;
          v42 = 2082;
          v43 = v22;
          v44 = 1024;
          v45 = 815;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Calling before first unlock!!!", buf, 0x22u);
        }

        v23 = NFSharedSignpostLog();
        if (os_signpost_enabled(v23))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v23, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "restoreAuthorizationForAllAppletsExcept", "Not yet first unlock", buf, 2u);
        }

        v24 = *a4;
      }

      else
      {
        v25 = a1[5];
        v26 = [v7 allObjects];
        v24 = [v25 disableExpressForKeys:v26 onApplet:v10];

        v27 = NFSharedSignpostLog();
        if (os_signpost_enabled(v27))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v27, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "restoreAuthorizarionForKeys", &unk_1002E8B7A, buf, 2u);
        }
      }
    }

    else
    {
      v28 = NFSharedSignpostLog();
      if (os_signpost_enabled(v28))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v28, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "restoreAuthorizarionForKeys", "invalid aid", buf, 2u);
      }

      v29 = [NSError alloc];
      v30 = [NSString stringWithUTF8String:"nfcd"];
      v46[0] = NSLocalizedDescriptionKey;
      v31 = [NSString stringWithUTF8String:"Invalid Parameter"];
      v47[0] = v31;
      v47[1] = &off_1003300D8;
      v46[1] = @"Line";
      v46[2] = @"Method";
      v32 = [[NSString alloc] initWithFormat:@"%s", sel_getName("restoreAuthorizationForKeys:onApplet:expressConfigInitError:")];
      v47[2] = v32;
      v46[3] = NSDebugDescriptionErrorKey;
      v33 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("restoreAuthorizationForKeys:onApplet:expressConfigInitError:"), 809];
      v47[3] = v33;
      v46[4] = NSLocalizedFailureReasonErrorKey;
      v34 = [[NSString alloc] initWithFormat:@"Incorrect applet identifier!"];
      v47[4] = v34;
      v35 = [NSDictionary dictionaryWithObjects:v47 forKeys:v46 count:5];
      v24 = [v29 initWithDomain:v30 code:10 userInfo:v35];
    }
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

id sub_1000335E8(void *a1, uint64_t a2)
{
  v3 = [NSData NF_dataWithHexString:a2];
  v4 = [a1 appletForIdentifier:v3 filtered:1 cacheOnly:0];

  return v4;
}

uint64_t sub_100033654(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = [[NSData alloc] initWithBytes:&unk_100296C08 length:7];
    v3 = [v2 NF_asHexString];

    v4 = [[NSData alloc] initWithBytes:&unk_100296C0F length:7];
    v5 = [v4 NF_asHexString];

    v6 = [[NSData alloc] initWithBytes:&unk_100296C16 length:9];
    v7 = [v6 NF_asHexString];

    if (sub_1000337D8(v1, v3) & 1) != 0 || (sub_1000337D8(v1, v5) & 1) != 0 || (sub_1000337D8(v1, v7))
    {
      v1 = 1;
    }

    else
    {
      v9 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.stockholm"];
      if ([v9 BOOLForKey:@"PtaAidForStepUpOperation"])
      {
        v10 = [[NSData alloc] initWithBytes:&unk_100296C1F length:13];
        v11 = [v10 NF_asHexString];

        v1 = sub_1000337D8(v1, v11);
      }

      else
      {
        v1 = 0;
      }
    }
  }

  return v1;
}

uint64_t sub_1000337D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 length];
  sub_100035194(a1);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v17 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v15 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v14 + 1) + 8 * v9);
      v11 = [v3 length];
      if (v11 <= [v10 length])
      {
        v12 = 1;
        if (![v10 compare:v3 options:1 range:{0, v4}])
        {
          break;
        }
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v12 = 0;
  }

  return v12;
}

id sub_100033938(uint64_t a1)
{
  v1 = a1;
  if (!a1)
  {
    goto LABEL_35;
  }

  v2 = sub_100006D58(a1);
  if (!v2)
  {
    v1 = 0;
    goto LABEL_34;
  }

  v3 = [[NSData alloc] initWithBytes:&unk_100296C08 length:7];
  v48 = [v3 NF_asHexString];

  v4 = [[NSData alloc] initWithBytes:&unk_100296C0F length:7];
  v46 = [v4 NF_asHexString];

  v5 = [[NSData alloc] initWithBytes:&unk_100296C16 length:9];
  v43 = [v5 NF_asHexString];

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = v2;
  v6 = [obj countByEnumeratingWithState:&v50 objects:v64 count:16];
  v39 = v2;
  if (!v6)
  {
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v44 = 0;
    v45 = 0;
    v47 = 0;
    goto LABEL_33;
  }

  v7 = v6;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v44 = 0;
  v45 = 0;
  v47 = 0;
  v8 = *v51;
  do
  {
    for (i = 0; i != v7; i = i + 1)
    {
      if (*v51 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v50 + 1) + 8 * i);
      v11 = [v10 objectForKeyedSubscript:@"appletIdentifier"];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v13 = [v10 objectForKeyedSubscript:@"appletIdentifier"];
        if ([v13 hasPrefix:v48])
        {
          ++v47;
          v14 = [v10 objectForKeyedSubscript:@"expressEnabled"];
          objc_opt_class();
          v15 = objc_opt_isKindOfClass();

          if ((v15 & 1) == 0)
          {
            goto LABEL_28;
          }

          v16 = [v10 objectForKeyedSubscript:@"expressEnabled"];
          v44 += [v16 BOOLValue];
          goto LABEL_27;
        }

        if ([v13 hasPrefix:v46])
        {
          ++v45;
          v27 = [v10 objectForKeyedSubscript:@"expressEnabled"];
          objc_opt_class();
          v28 = objc_opt_isKindOfClass();

          if ((v28 & 1) == 0)
          {
            goto LABEL_28;
          }

          v16 = [v10 objectForKeyedSubscript:@"expressEnabled"];
          v41 += [v16 BOOLValue];
          goto LABEL_27;
        }

        if ([v13 hasPrefix:v43])
        {
          ++v42;
          v29 = [v10 objectForKeyedSubscript:@"expressEnabled"];
          objc_opt_class();
          v30 = objc_opt_isKindOfClass();

          if (v30)
          {
            v16 = [v10 objectForKeyedSubscript:@"expressEnabled"];
            v40 += [v16 BOOLValue];
LABEL_27:
          }
        }
      }

      else
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          v18 = Logger;
          Class = object_getClass(v1);
          isMetaClass = class_isMetaClass(Class);
          ClassName = object_getClassName(v1);
          Name = sel_getName("unifiedAccessKeysStatistics");
          v22 = 45;
          if (isMetaClass)
          {
            v22 = 43;
          }

          v18(3, "%c[%{public}s %{public}s]:%i pass found with invalid AID. Skipping...", v22, ClassName, Name, 926);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v13 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v23 = object_getClass(v1);
          if (class_isMetaClass(v23))
          {
            v24 = 43;
          }

          else
          {
            v24 = 45;
          }

          v25 = object_getClassName(v1);
          v26 = sel_getName("unifiedAccessKeysStatistics");
          *buf = 67109890;
          v57 = v24;
          v58 = 2082;
          v59 = v25;
          v60 = 2082;
          v61 = v26;
          v62 = 1024;
          v63 = 926;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i pass found with invalid AID. Skipping...", buf, 0x22u);
        }
      }

LABEL_28:
    }

    v7 = [obj countByEnumeratingWithState:&v50 objects:v64 count:16];
  }

  while (v7);
LABEL_33:

  v54[0] = @"totalHomePasses";
  v31 = [NSNumber numberWithInteger:v47];
  v55[0] = v31;
  v54[1] = @"totalHomeExpressEnabledPasses";
  v32 = [NSNumber numberWithInteger:v44];
  v55[1] = v32;
  v54[2] = @"totalServerPasses";
  v33 = [NSNumber numberWithInteger:v45];
  v55[2] = v33;
  v54[3] = @"totalServerExpressEnabledPasses";
  v34 = [NSNumber numberWithInteger:v41];
  v55[3] = v34;
  v54[4] = @"totalAcwgPasses";
  v35 = [NSNumber numberWithInteger:v42];
  v55[4] = v35;
  v54[5] = @"totalAcwgExpressEnabledPasses";
  v36 = [NSNumber numberWithInteger:v40];
  v55[5] = v36;
  v1 = [NSDictionary dictionaryWithObjects:v55 forKeys:v54 count:6];

  v2 = v39;
LABEL_34:

LABEL_35:

  return v1;
}

id sub_100033F64(uint64_t a1)
{
  if (!a1)
  {
    v49 = 0;
    goto LABEL_61;
  }

  v59 = objc_opt_new();
  v2 = [[NSData alloc] initWithBytes:&unk_100296C08 length:7];
  v60 = [v2 NF_asHexString];

  v3 = [[NSData alloc] initWithBytes:&unk_100296C0F length:7];
  v69 = [v3 NF_asHexString];

  v4 = [[NSData alloc] initWithBytes:&unk_100296C16 length:9];
  v67 = [v4 NF_asHexString];

  v5 = sub_100006D58(a1);
  if (!v5)
  {
    v49 = 0;
    v7 = v59;
    goto LABEL_60;
  }

  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  obj = v5;
  v75 = [v5 countByEnumeratingWithState:&v94 objects:v101 count:16];
  if (!v75)
  {
    v81 = 0;
    v82 = 0;
    v63 = 0;
    v64 = 0;
    v79 = 0;
    v80 = 0;
    v83 = 0;
    v84 = 0;
    v65 = 0;
    v66 = 0;
    v68 = 0;
    v7 = v59;
    goto LABEL_59;
  }

  v81 = 0;
  v82 = 0;
  v63 = 0;
  v64 = 0;
  v79 = 0;
  v80 = 0;
  v83 = 0;
  v84 = 0;
  v65 = 0;
  v66 = 0;
  v68 = 0;
  v73 = *v95;
  v6 = @"UWBExpressEnabled";
  v7 = v59;
  v8 = v60;
  do
  {
    v9 = 0;
    do
    {
      if (*v95 != v73)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v94 + 1) + 8 * v9);
      v77 = [v10 objectForKeyedSubscript:@"passUniqueID"];
      v11 = [v10 objectForKeyedSubscript:@"appletIdentifier"];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        v17 = v77;
        goto LABEL_51;
      }

      v13 = [v10 objectForKeyedSubscript:@"appletIdentifier"];
      if ([v13 hasPrefix:v8])
      {
        v71 = v13;
        ++v68;
        v14 = [v10 objectForKeyedSubscript:@"expressEnabled"];
        objc_opt_class();
        v15 = objc_opt_isKindOfClass();

        if (v15)
        {
          v16 = [v10 objectForKeyedSubscript:@"expressEnabled"];
          v65 += [v16 BOOLValue];
          goto LABEL_16;
        }

        goto LABEL_42;
      }

      if ([v13 hasPrefix:v69])
      {
        v71 = v13;
        ++v66;
        v18 = [v10 objectForKeyedSubscript:@"expressEnabled"];
        objc_opt_class();
        v19 = objc_opt_isKindOfClass();

        if (v19)
        {
          v16 = [v10 objectForKeyedSubscript:@"expressEnabled"];
          v64 += [v16 BOOLValue];
          goto LABEL_16;
        }

LABEL_42:
        v17 = v77;
LABEL_43:
        v13 = v71;
        goto LABEL_44;
      }

      if ([v13 hasPrefix:v67])
      {
        v71 = v13;
        v20 = [v10 objectForKeyedSubscript:@"associatedReaders"];
        objc_opt_class();
        v21 = objc_opt_isKindOfClass();

        if (v21)
        {
          v22 = [v10 objectForKeyedSubscript:@"associatedReaders"];
          v23 = v22;
          if (v22)
          {
            v63 += [v22 count];
          }
        }

        v24 = [v10 objectForKeyedSubscript:@"ECP2Info"];
        objc_opt_class();
        v25 = objc_opt_isKindOfClass();

        if ((v25 & 1) == 0)
        {
          goto LABEL_42;
        }

        v26 = [v10 objectForKeyedSubscript:@"ECP2Info"];
        if (!v26)
        {
          v16 = 0;
LABEL_16:
          v17 = v77;

          goto LABEL_43;
        }

        v61 = v26;
        v62 = v9;
        v27 = [v26 objectForKeyedSubscript:@"TCIs"];
        v90 = 0u;
        v91 = 0u;
        v92 = 0u;
        v93 = 0u;
        v28 = [v27 countByEnumeratingWithState:&v90 objects:v100 count:16];
        if (!v28)
        {
          goto LABEL_41;
        }

        v29 = v28;
        v30 = *v91;
        while (2)
        {
          v31 = 0;
LABEL_27:
          v32 = v6;
          if (*v91 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v33 = *(*(&v90 + 1) + 8 * v31);
          v34 = [[NSData alloc] initWithBytes:&unk_100296C2C length:3];
          v35 = [v33 isEqual:v34];

          v36 = [v10 objectForKeyedSubscript:@"expressEnabled"];
          objc_opt_class();
          v37 = objc_opt_isKindOfClass();

          if (v35)
          {
            if (v37)
            {
              v38 = [v10 objectForKeyedSubscript:@"expressEnabled"];
              v79 += [v38 BOOLValue];
            }

            ++v83;
            v6 = v32;
            v39 = [v10 objectForKeyedSubscript:v32];
            objc_opt_class();
            v40 = objc_opt_isKindOfClass();

            if (v40)
            {
              v41 = [v10 objectForKeyedSubscript:v32];
              v81 += [v41 BOOLValue];
              goto LABEL_38;
            }
          }

          else
          {
            if (v37)
            {
              v42 = [v10 objectForKeyedSubscript:@"expressEnabled"];
              v80 += [v42 BOOLValue];
            }

            ++v84;
            v6 = v32;
            v43 = [v10 objectForKeyedSubscript:v32];
            objc_opt_class();
            v44 = objc_opt_isKindOfClass();

            if (v44)
            {
              v41 = [v10 objectForKeyedSubscript:v32];
              v82 += [v41 BOOLValue];
LABEL_38:

              v6 = v32;
            }
          }

          if (v29 == ++v31)
          {
            v29 = [v27 countByEnumeratingWithState:&v90 objects:v100 count:16];
            if (!v29)
            {
LABEL_41:

              v7 = v59;
              v8 = v60;
              v16 = v61;
              v9 = v62;
              goto LABEL_16;
            }

            continue;
          }

          goto LABEL_27;
        }
      }

      v17 = v77;
LABEL_44:
      if (([v13 hasPrefix:v8] & 1) != 0 || (objc_msgSend(v13, "hasPrefix:", v69) & 1) != 0 || objc_msgSend(v13, "hasPrefix:", v67))
      {
        v45 = [v7 valueForKey:v17];

        if (v45)
        {
          v46 = [v7 valueForKey:v17];
          v47 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v46 intValue] + 1);

          [v7 setObject:v47 forKeyedSubscript:v17];
        }

        else
        {
          [v7 setObject:&off_1003300F0 forKeyedSubscript:v17];
        }
      }

LABEL_51:
      v9 = v9 + 1;
    }

    while (v9 != v75);
    v48 = [obj countByEnumeratingWithState:&v94 objects:v101 count:16];
    v75 = v48;
  }

  while (v48);
LABEL_59:
  v86 = 0;
  v87 = &v86;
  v88 = 0x2020000000;
  v89 = 0;
  v85[0] = _NSConcreteStackBlock;
  v85[1] = 3221225472;
  v85[2] = sub_1000349BC;
  v85[3] = &unk_1003152C8;
  v85[4] = &v86;
  [v7 enumerateKeysAndObjectsUsingBlock:v85];
  v98[0] = @"uaHomePasses";
  v78 = [NSNumber numberWithInteger:v68];
  v99[0] = v78;
  v98[1] = @"uaHomeExpressEnabledPasses";
  v76 = [NSNumber numberWithInteger:v65];
  v99[1] = v76;
  v98[2] = @"uaServerPasses";
  v74 = [NSNumber numberWithInteger:v66];
  v99[2] = v74;
  v98[3] = @"uaServerExpressEnabledPasses";
  v72 = [NSNumber numberWithInteger:v64];
  v99[3] = v72;
  v98[4] = @"aliroHomePasses";
  v50 = [NSNumber numberWithInteger:v83];
  v99[4] = v50;
  v98[5] = @"aliroHomeExpressEnabledPasses";
  v51 = [NSNumber numberWithInteger:v79];
  v99[5] = v51;
  v98[6] = @"aliroServerPasses";
  v52 = [NSNumber numberWithInteger:v84];
  v99[6] = v52;
  v98[7] = @"aliroServerExpressEnabledPasses";
  v53 = [NSNumber numberWithInteger:v80];
  v99[7] = v53;
  v98[8] = @"aliroHomeUWBExpressEnabledPasses";
  v54 = [NSNumber numberWithInteger:v81];
  v99[8] = v54;
  v98[9] = @"aliroServerUWBExpressEnabledPasses";
  v55 = [NSNumber numberWithInteger:v82];
  v99[9] = v55;
  v98[10] = @"aliroAuxKeyCount";
  v56 = [NSNumber numberWithInteger:v63];
  v99[10] = v56;
  v98[11] = @"multiHomePasses";
  v57 = [NSNumber numberWithInteger:v87[3]];
  v99[11] = v57;
  v49 = [NSDictionary dictionaryWithObjects:v99 forKeys:v98 count:12];

  _Block_object_dispose(&v86, 8);
  v5 = obj;
LABEL_60:

LABEL_61:

  return v49;
}

void sub_1000349BC(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v9 = a3;
  v7 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    if ([v9 intValue] >= 2)
    {
      ++*(*(*(a1 + 32) + 8) + 24);
    }
  }

  else
  {
    *a4 = 1;
  }
}

id sub_100034A8C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v71 = a3;
  if (a1 && v5)
  {
    v6 = sub_10000658C(a1);
    if (v6)
    {
      v7 = v5;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v9 = Logger;
        Class = object_getClass(a1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(a1);
        Name = sel_getName("getUwbAndExpressStats:keyIdentifier:");
        v12 = 45;
        if (isMetaClass)
        {
          v12 = 43;
        }

        v9(6, "%c[%{public}s %{public}s]:%i Restriction in place: passes=%{public}@", v12, ClassName, Name, 1078, v6);
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

        *buf = 67110146;
        v82 = v15;
        v83 = 2082;
        v84 = object_getClassName(a1);
        v85 = 2082;
        v86 = sel_getName("getUwbAndExpressStats:keyIdentifier:");
        v87 = 1024;
        v88 = 1078;
        v89 = 2114;
        v90 = v6;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Restriction in place: passes=%{public}@", buf, 0x2Cu);
      }

      v5 = v7;
    }

    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v16 = *(a1 + 40);
    v69 = v6;
    if (v16)
    {
      v16 = v16[2];
    }

    obj = v16;
    v17 = [obj countByEnumeratingWithState:&v72 objects:v80 count:16];
    if (v17)
    {
      v18 = v17;
      v68 = a1;
      v19 = *v73;
LABEL_18:
      v20 = 0;
      while (1)
      {
        if (*v73 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v72 + 1) + 8 * v20);
        v22 = [v21 objectForKeyedSubscript:@"passUniqueID"];
        v23 = [v21 objectForKeyedSubscript:@"appletIdentifier"];
        v24 = v5;
        v25 = [v5 caseInsensitiveCompare:v23];
        v26 = v25;
        if (v71)
        {
          if (v25)
          {
          }

          else
          {
            v27 = [v21 objectForKeyedSubscript:@"keyIdentifier"];
            v28 = [v71 caseInsensitiveCompare:v27];

            if (!v28)
            {
              v30 = v69;
              if (v69 && ([v69 containsObject:v22] & 1) == 0)
              {
                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v48 = NFLogGetLogger();
                if (v48)
                {
                  v49 = v48;
                  v50 = object_getClass(v68);
                  v51 = class_isMetaClass(v50);
                  v52 = object_getClassName(v68);
                  v67 = sel_getName("getUwbAndExpressStats:keyIdentifier:");
                  v53 = 45;
                  if (v51)
                  {
                    v53 = 43;
                  }

                  v49(4, "%c[%{public}s %{public}s]:%i ***WARNING*** Requested AID is not currently enabled for express!!", v53, v52, v67, 1089);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v54 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
                {
                  v55 = object_getClass(v68);
                  if (class_isMetaClass(v55))
                  {
                    v56 = 43;
                  }

                  else
                  {
                    v56 = 45;
                  }

                  v57 = object_getClassName(v68);
                  v58 = sel_getName("getUwbAndExpressStats:keyIdentifier:");
                  *buf = 67109890;
                  v82 = v56;
                  v83 = 2082;
                  v84 = v57;
                  v85 = 2082;
                  v86 = v58;
                  v87 = 1024;
                  v88 = 1089;
                  _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i ***WARNING*** Requested AID is not currently enabled for express!!", buf, 0x22u);
                }
              }

              v59 = [v21 objectForKeyedSubscript:@"UWBExpressEnabled"];
              v60 = [v59 BOOLValue];

              v61 = [v21 objectForKeyedSubscript:@"expressEnabled"];
              v62 = [v61 BOOLValue];

              v78[0] = @"supportsUWB";
              v44 = [NSNumber numberWithBool:v60];
              v78[1] = @"expressEnabled";
              v79[0] = v44;
              v45 = [NSNumber numberWithBool:v62];
              v79[1] = v45;
              v46 = v79;
              v47 = v78;
LABEL_57:
              v29 = [NSDictionary dictionaryWithObjects:v46 forKeys:v47 count:2];

              v5 = v24;
              goto LABEL_58;
            }
          }
        }

        else
        {

          if (!v26)
          {
            v31 = [v21 objectForKeyedSubscript:@"expressEnabled"];
            v32 = [v31 BOOLValue];

            v30 = v69;
            if (v69 && ([v69 containsObject:v22] & 1) == 0)
            {
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v33 = NFLogGetLogger();
              if (v33)
              {
                v34 = v33;
                v35 = object_getClass(v68);
                v36 = class_isMetaClass(v35);
                v37 = object_getClassName(v68);
                v66 = sel_getName("getUwbAndExpressStats:keyIdentifier:");
                v38 = 45;
                if (v36)
                {
                  v38 = 43;
                }

                v34(4, "%c[%{public}s %{public}s]:%i ***WARNING*** Requested AID is not currently enabled for express!!", v38, v37, v66, 1106);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v39 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
              {
                v40 = object_getClass(v68);
                if (class_isMetaClass(v40))
                {
                  v41 = 43;
                }

                else
                {
                  v41 = 45;
                }

                v42 = object_getClassName(v68);
                v43 = sel_getName("getUwbAndExpressStats:keyIdentifier:");
                *buf = 67109890;
                v82 = v41;
                v83 = 2082;
                v84 = v42;
                v85 = 2082;
                v86 = v43;
                v87 = 1024;
                v88 = 1106;
                _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i ***WARNING*** Requested AID is not currently enabled for express!!", buf, 0x22u);
              }
            }

            v76[0] = @"supportsUWB";
            v44 = [NSNumber numberWithBool:0];
            v76[1] = @"expressEnabled";
            v77[0] = v44;
            v45 = [NSNumber numberWithBool:v32];
            v77[1] = v45;
            v46 = v77;
            v47 = v76;
            goto LABEL_57;
          }
        }

        v20 = v20 + 1;
        v5 = v24;
        if (v18 == v20)
        {
          v18 = [obj countByEnumeratingWithState:&v72 objects:v80 count:16];
          if (v18)
          {
            goto LABEL_18;
          }

          break;
        }
      }
    }

    v29 = 0;
    v30 = v69;
LABEL_58:
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

void *sub_100035194(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_10000658C(a1);
    if (v2)
    {
      v29 = a1;
      v30 = objc_opt_new();
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v3 = *(a1 + 40);
      if (v3)
      {
        v3 = v3[2];
      }

      v4 = v3;
      v5 = [v4 countByEnumeratingWithState:&v31 objects:v45 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v32;
        do
        {
          for (i = 0; i != v6; i = i + 1)
          {
            if (*v32 != v7)
            {
              objc_enumerationMutation(v4);
            }

            v9 = *(*(&v31 + 1) + 8 * i);
            v10 = [v9 objectForKeyedSubscript:@"expressEnabled"];
            v11 = [v10 BOOLValue];

            if (v11)
            {
              v12 = [v9 objectForKeyedSubscript:@"passUniqueID"];
              if ([v2 containsObject:v12])
              {
                v13 = [v9 objectForKeyedSubscript:@"appletIdentifier"];
                [v30 addObject:v13];
              }
            }
          }

          v6 = [v4 countByEnumeratingWithState:&v31 objects:v45 count:16];
        }

        while (v6);
      }

      v14 = [v30 copy];
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v16 = Logger;
        Class = object_getClass(v29);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v29);
        Name = sel_getName("_expressEnableAIDs");
        v19 = 45;
        if (isMetaClass)
        {
          v19 = 43;
        }

        v16(6, "%c[%{public}s %{public}s]:%i Restriction in place: aids=%{public}@", v19, ClassName, Name, 1142, v14);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v20 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = object_getClass(v29);
        if (class_isMetaClass(v21))
        {
          v22 = 43;
        }

        else
        {
          v22 = 45;
        }

        v23 = object_getClassName(v29);
        v24 = sel_getName("_expressEnableAIDs");
        *buf = 67110146;
        v36 = v22;
        v37 = 2082;
        v38 = v23;
        v39 = 2082;
        v40 = v24;
        v41 = 1024;
        v42 = 1142;
        v43 = 2114;
        v44 = v14;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Restriction in place: aids=%{public}@", buf, 0x2Cu);
      }
    }

    else
    {
      v25 = *(a1 + 40);
      if (v25)
      {
        v25 = v25[9];
      }

      v14 = v25;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

uint64_t sub_1000354C4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    sub_100035194(a1);
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = v12 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = *v10;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v4);
          }

          if (![*(*(&v9 + 1) + 8 * i) caseInsensitiveCompare:{v3, v9}])
          {
            v5 = 1;
            goto LABEL_12;
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_1000355EC(uint64_t a1, void *a2, void *a3)
{
  v42 = a2;
  v39 = a3;
  if (a1)
  {
    v5 = [[NSData alloc] initWithBytes:&unk_100296C16 length:9];
    v6 = [v5 NF_asHexString];

    v40 = sub_10000658C(a1);
    if (v40)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v8 = Logger;
        Class = object_getClass(a1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(a1);
        Name = sel_getName("isExpressAppletAid:forKeys:");
        v11 = 45;
        if (isMetaClass)
        {
          v11 = 43;
        }

        v8(6, "%c[%{public}s %{public}s]:%i Restriction in place: passes=%{public}@", v11, ClassName, Name, 1186, v40);
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

        *buf = 67110146;
        v49 = v14;
        v50 = 2082;
        v51 = object_getClassName(a1);
        v52 = 2082;
        v53 = sel_getName("isExpressAppletAid:forKeys:");
        v54 = 1024;
        v55 = 1186;
        v56 = 2114;
        v57 = v40;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Restriction in place: passes=%{public}@", buf, 0x2Cu);
      }
    }

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v15 = *(a1 + 40);
    if (v15)
    {
      v15 = v15[2];
    }

    v16 = v40;
    v17 = v15;
    v18 = [v17 countByEnumeratingWithState:&v43 objects:v47 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v44;
      v41 = *v44;
LABEL_17:
      v21 = 0;
      while (1)
      {
        if (*v44 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v43 + 1) + 8 * v21);
        v23 = [v22 objectForKeyedSubscript:@"expressEnabled"];
        v24 = [v23 BOOLValue];

        if (!v24)
        {
          goto LABEL_36;
        }

        v25 = [v22 objectForKeyedSubscript:@"passUniqueID"];
        if (!v16 || [v16 containsObject:v25])
        {
          v26 = [v22 objectForKeyedSubscript:@"keyIdentifier"];

          if (v26)
          {
            break;
          }
        }

LABEL_35:

LABEL_36:
        if (v19 == ++v21)
        {
          v19 = [v17 countByEnumeratingWithState:&v43 objects:v47 count:16];
          if (v19)
          {
            goto LABEL_17;
          }

          goto LABEL_38;
        }
      }

      v27 = v6;
      v28 = [v22 objectForKeyedSubscript:@"appletIdentifier"];
      if ([v28 hasPrefix:v6])
      {
        if (![v42 caseInsensitiveCompare:v28])
        {
          v29 = [v22 objectForKeyedSubscript:@"keyIdentifier"];
          v30 = [v39 containsObject:v29];

          if (v30)
          {
LABEL_39:

            v34 = 1;
            goto LABEL_40;
          }
        }

        goto LABEL_34;
      }

      v31 = [v22 objectForKeyedSubscript:@"appletIdentifier"];
      if (![v42 caseInsensitiveCompare:v31])
      {
        v32 = [v22 objectForKeyedSubscript:@"keyIdentifier"];
        if ([v39 containsObject:v32])
        {
          v33 = [v22 objectForKeyedSubscript:@"UWBExpressEnabled"];
          v38 = [v33 BOOLValue];

          v6 = v27;
          v16 = v40;
          if ((v38 & 1) == 0)
          {
            goto LABEL_39;
          }

          goto LABEL_34;
        }
      }

      v6 = v27;
      v16 = v40;
LABEL_34:

      v20 = v41;
      goto LABEL_35;
    }

LABEL_38:
    v34 = 0;
LABEL_40:
  }

  else
  {
    v34 = 0;
  }

  return v34;
}

void sub_100035A5C(uint64_t a1)
{
  v2 = +[_NFHardwareManager sharedHardwareManager];
  sub_1000E7BDC(v2, a1, 0);
}

void sub_100035ABC(uint64_t a1)
{
  if (a1)
  {
    v2 = NFSharedSignpostLog();
    if (os_signpost_enabled(v2))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "EXPRESS_UPDATE_APPLETS", "in", buf, 2u);
    }

    v3 = sub_10021A4A0(*(a1 + 16), @"ExpressUpdate", 1uLL);
    if (v3)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v5 = Logger;
        Class = object_getClass(a1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(a1);
        Name = sel_getName("updateExpressAppletCache");
        v8 = 45;
        if (isMetaClass)
        {
          v8 = 43;
        }

        v5(3, "%c[%{public}s %{public}s]:%i Failed to open session : %@", v8, ClassName, Name, 1233, v3);
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

        v12 = object_getClassName(a1);
        v13 = sel_getName("updateExpressAppletCache");
        *buf = 67110146;
        v23 = v11;
        v24 = 2082;
        v25 = v12;
        v26 = 2082;
        v27 = v13;
        v28 = 1024;
        v29 = 1233;
        v30 = 2112;
        v31 = v3;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to open session : %@", buf, 0x2Cu);
      }
    }

    else
    {
      v21 = 0;
      v14 = *(a1 + 40);
      v15 = sub_10000658C(a1);
      v16 = [v14 updateExpressConfigLimitedTo:v15 andActivate:0 hasChanged:&v21 disableDPDEnter:a1 + 185];

      if (v21 == 1)
      {
        sub_100035A5C("com.apple.stockholm.express.applets.updated");
        v17 = NFSharedSignpostLog();
        if (os_signpost_enabled(v17))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "EXPRESS_MODE_APPLETS_UPDATED_NOTIFICATION", "com.apple.stockholm.express.applets.updated", buf, 2u);
        }
      }

      sub_10021CC94(*(a1 + 16), @"ExpressUpdate");
      v18 = NFSharedSignpostLog();
      if (os_signpost_enabled(v18))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "EXPRESS_UPDATE_APPLETS", "out", buf, 2u);
      }
    }
  }
}

uint64_t sub_100035DE4(uint64_t result, int a2)
{
  if (result)
  {
    if (a2)
    {
      v2 = *(result + 40);
      if (v2)
      {
        LOBYTE(v2) = vaddvq_s64(vaddq_s64(*(v2 + 24), *(v2 + 40))) + *(v2 + 56) + *(v2 + 64) != 0;
      }
    }

    else
    {
      LOBYTE(v2) = 0;
    }

    v3 = *(result + 16);
    if (v3)
    {
      *(v3 + 176) = v2;
    }
  }

  return result;
}

BOOL sub_100035E30(id val, double a2)
{
  if (val)
  {
    if (*(val + 19) == 1)
    {
      *(val + 178) = 1;
      v4 = *(val + 9);
      if (!v4)
      {
        objc_initWeak(&location, val);
        v5 = [NFTimer alloc];
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_1000360A0;
        v19[3] = &unk_100315DC8;
        objc_copyWeak(v20, &location);
        v20[1] = "restartExpressModeAfter:";
        v20[2] = *&a2;
        v6 = [v5 initWithCallback:v19 queue:*(val + 15)];
        v7 = *(val + 9);
        *(val + 9) = v6;

        objc_destroyWeak(v20);
        objc_destroyWeak(&location);
        v4 = *(val + 9);
      }

      [v4 stopTimer];
      [*(val + 9) startTimer:a2 leeway:0.5];
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v9 = Logger;
        Class = object_getClass(val);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(val);
        Name = sel_getName("restartExpressModeAfter:");
        v13 = 45;
        if (isMetaClass)
        {
          v13 = 43;
        }

        v9(6, "%c[%{public}s %{public}s]:%i express is disabled - skipping", v13, ClassName, Name, 1309);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v14 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = object_getClass(val);
        if (class_isMetaClass(v15))
        {
          v16 = 43;
        }

        else
        {
          v16 = 45;
        }

        LODWORD(location) = 67109890;
        HIDWORD(location) = v16;
        v22 = 2082;
        v23 = object_getClassName(val);
        v24 = 2082;
        v25 = sel_getName("restartExpressModeAfter:");
        v26 = 1024;
        v27 = 1309;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i express is disabled - skipping", &location, 0x22u);
      }
    }
  }

  return val != 0;
}

void sub_1000360A0(uint64_t a1)
{
  v2 = _os_activity_create(&_mh_execute_header, "com.apple.nfcd.express.restartTimer", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  *state = 0;
  *&state[8] = 0;
  os_activity_scope_enter(v2, state);
  os_activity_scope_leave(state);

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    WeakRetained[178] = 0;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v6 = Logger;
      Class = object_getClass(v4);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v4);
      Name = sel_getName(*(a1 + 40));
      v11 = 45;
      if (isMetaClass)
      {
        v11 = 43;
      }

      v6(6, "%c[%{public}s %{public}s]:%i Attempt to re-enabling express mode after %f", v11, ClassName, Name, 1330, *(a1 + 48));
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v12 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = object_getClass(v4);
      if (class_isMetaClass(v13))
      {
        v14 = 43;
      }

      else
      {
        v14 = 45;
      }

      v15 = object_getClassName(v4);
      v16 = sel_getName(*(a1 + 40));
      v17 = *(a1 + 48);
      *state = 67110146;
      *&state[4] = v14;
      *&state[8] = 2082;
      *&state[10] = v15;
      v19 = 2082;
      v20 = v16;
      v21 = 1024;
      v22 = 1330;
      v23 = 2048;
      v24 = v17;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Attempt to re-enabling express mode after %f", state, 0x2Cu);
    }

    sub_100036290(v4);
  }
}

void sub_100036290(_BYTE *a1)
{
  if (a1)
  {
    v2 = +[_NFHardwareManager sharedHardwareManager];
    v3 = [v2 hasSession];

    v4 = a1[181];
    v5 = v4;
    v6 = sub_100006030(a1);
    v7 = (v3 | v4) ^ 1;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v9 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("activateConfigIfPossible");
      v12 = 43;
      if (!isMetaClass)
      {
        v12 = 45;
      }

      v9(6, "%c[%{public}s %{public}s]:%i activeSession=%d,expressInProgress=%d,expressModesActive=%d", v12, ClassName, Name, 2714, v3, v5, v6);
    }

    v13 = v7 & v6;
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

      *buf = 67110658;
      v33 = v16;
      v34 = 2082;
      v35 = object_getClassName(a1);
      v36 = 2082;
      v37 = sel_getName("activateConfigIfPossible");
      v38 = 1024;
      v39 = 2714;
      v40 = 1024;
      v41 = v3;
      v42 = 1024;
      v43 = v5;
      v44 = 1024;
      v45 = v6;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i activeSession=%d,expressInProgress=%d,expressModesActive=%d", buf, 0x34u);
    }

    if (v13)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v17 = NFLogGetLogger();
      if (v17)
      {
        v18 = v17;
        v19 = object_getClass(a1);
        v20 = class_isMetaClass(v19);
        v21 = object_getClassName(a1);
        v31 = sel_getName("activateConfigIfPossible");
        v22 = 45;
        if (v20)
        {
          v22 = 43;
        }

        v18(6, "%c[%{public}s %{public}s]:%i Express mode reactivation required", v22, v21, v31, 2717);
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
        v27 = sel_getName("activateConfigIfPossible");
        *buf = 67109890;
        v33 = v25;
        v34 = 2082;
        v35 = v26;
        v36 = 2082;
        v37 = v27;
        v38 = 1024;
        v39 = 2717;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Express mode reactivation required", buf, 0x22u);
      }

      sub_10002E9BC(a1);
      v28 = +[_NFHardwareManager sharedHardwareManager];
      [v28 maybeStartNextSession];
    }
  }
}

BOOL sub_1000365C8(_BOOL8 result)
{
  if (result)
  {
    v1 = *(result + 40);
    return v1 && (v1[5] && (*(result + 168) & 2) != 0 || v1[6] && (*(result + 168) & 4) != 0 || v1[8] && (*(result + 168) & 0x20) != 0 || v1[7] && (*(result + 168) & 0x10) != 0 || v1[3] && (*(result + 168) & 1) != 0 || v1[4] && (*(result + 168) & 1) != 0);
  }

  return result;
}

id sub_100036644(id a1, uint64_t a2)
{
  v2 = a1;
  if (a1)
  {
    v3 = [NSData NF_dataWithHexString:a2];
    v2 = [v2 appletForIdentifier:v3 filtered:1 cacheOnly:1];
  }

  return v2;
}

id sub_1000366B4(_BYTE *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = +[_NFHardwareManager sharedHardwareManager];
  v7 = [v6 secureElementWrapper];
  if (a1[179] == 1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v9 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("_secureElementWrapperForApplet:");
      v13 = 45;
      if (isMetaClass)
      {
        v13 = 43;
      }

      v9(6, "%c[%{public}s %{public}s]:%i Test mode - USING ESE", v13, ClassName, Name, 1385);
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
      v94 = v16;
      v95 = 2082;
      v96 = object_getClassName(a1);
      v97 = 2082;
      v98 = sel_getName("_secureElementWrapperForApplet:");
      v99 = 1024;
      v100 = 1385;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Test mode - USING ESE", buf, 0x22u);
    }

    v17 = v7;
  }

  else
  {
    v18 = [v5 identifierAsData];
    v19 = sub_100257F24(v7, v18, 0);

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v20 = NFLogGetLogger();
    v21 = v20;
    if (v19)
    {
      if (v20)
      {
        v22 = object_getClass(a1);
        v23 = class_isMetaClass(v22);
        v24 = v19;
        v25 = v5;
        v26 = a3;
        v27 = object_getClassName(a1);
        v83 = sel_getName("_secureElementWrapperForApplet:");
        v28 = 45;
        if (v23)
        {
          v28 = 43;
        }

        v79 = v27;
        a3 = v26;
        v5 = v25;
        v19 = v24;
        v21(6, "%c[%{public}s %{public}s]:%i USING ESE", v28, v79, v83, 1391);
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

        *buf = 67109890;
        v94 = v31;
        v95 = 2082;
        v96 = object_getClassName(a1);
        v97 = 2082;
        v98 = sel_getName("_secureElementWrapperForApplet:");
        v99 = 1024;
        v100 = 1391;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i USING ESE", buf, 0x22u);
      }

      v17 = v7;
    }

    else
    {
      if (v20)
      {
        v32 = object_getClass(a1);
        v33 = class_isMetaClass(v32);
        v34 = v5;
        v35 = a3;
        v36 = object_getClassName(a1);
        v84 = sel_getName("_secureElementWrapperForApplet:");
        v37 = 45;
        if (v33)
        {
          v37 = 43;
        }

        v80 = v36;
        a3 = v35;
        v5 = v34;
        v19 = 0;
        v21(3, "%c[%{public}s %{public}s]:%i NO SE FOUND", v37, v80, v84, 1395);
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
        v94 = v40;
        v95 = 2082;
        v96 = object_getClassName(a1);
        v97 = 2082;
        v98 = sel_getName("_secureElementWrapperForApplet:");
        v99 = 1024;
        v100 = 1395;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i NO SE FOUND", buf, 0x22u);
      }

      v17 = 0;
    }
  }

  if (v17)
  {
    v41 = sub_10004BF2C();
    v42 = +[_NFHardwareManager sharedHardwareManager];
    v43 = [v42 setRoutingConfig:v41];

    if (!v43)
    {
      v73 = v17;
      goto LABEL_64;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v44 = NFLogGetLogger();
    if (v44)
    {
      v45 = v44;
      v46 = object_getClass(a1);
      v47 = class_isMetaClass(v46);
      v48 = object_getClassName(a1);
      v85 = sel_getName("_activateSecureElementForApplet:outError:");
      v49 = 45;
      if (v47)
      {
        v49 = 43;
      }

      v45(3, "%c[%{public}s %{public}s]:%i Failed to set SE to wired mode", v49, v48, v85, 1427);
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
      v54 = sel_getName("_activateSecureElementForApplet:outError:");
      *buf = 67109890;
      v94 = v52;
      v95 = 2082;
      v96 = v53;
      v97 = 2082;
      v98 = v54;
      v99 = 1024;
      v100 = 1427;
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to set SE to wired mode", buf, 0x22u);
    }

    if (a3)
    {
      v88 = v5;
      v87 = [NSError alloc];
      v55 = [NSString stringWithUTF8String:"nfcd"];
      v56 = [v43 code];
      v89[0] = NSLocalizedDescriptionKey;
      v57 = a3;
      if ([v43 code] > 75)
      {
        v58 = 76;
      }

      else
      {
        v58 = [v43 code];
      }

      v74 = [NSString stringWithUTF8String:off_100315B58[v58]];
      v90[0] = v74;
      v90[1] = v43;
      v89[1] = NSUnderlyingErrorKey;
      v89[2] = @"Line";
      v90[2] = &off_100330120;
      v89[3] = @"Method";
      v75 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_activateSecureElementForApplet:outError:")];
      v90[3] = v75;
      v89[4] = NSDebugDescriptionErrorKey;
      v76 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_activateSecureElementForApplet:outError:"), 1429];
      v90[4] = v76;
      v77 = [NSDictionary dictionaryWithObjects:v90 forKeys:v89 count:5];
      *v57 = [v87 initWithDomain:v55 code:v56 userInfo:v77];

      v73 = 0;
      v5 = v88;
      goto LABEL_64;
    }
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v59 = NFLogGetLogger();
    if (v59)
    {
      v60 = v59;
      v61 = object_getClass(a1);
      v62 = class_isMetaClass(v61);
      v81 = object_getClassName(a1);
      v86 = sel_getName("_activateSecureElementForApplet:outError:");
      v63 = 45;
      if (v62)
      {
        v63 = 43;
      }

      v60(3, "%c[%{public}s %{public}s]:%i Failed to find SE for applet: %{public}@", v63, v81, v86, 1416, v5);
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
      v68 = sel_getName("_activateSecureElementForApplet:outError:");
      *buf = 67110146;
      v94 = v66;
      v95 = 2082;
      v96 = v67;
      v97 = 2082;
      v98 = v68;
      v99 = 1024;
      v100 = 1416;
      v101 = 2114;
      v102 = v5;
      _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to find SE for applet: %{public}@", buf, 0x2Cu);
    }

    if (!a3)
    {
      v73 = 0;
      goto LABEL_65;
    }

    v69 = [NSError alloc];
    v41 = [NSString stringWithUTF8String:"nfcd"];
    v91[0] = NSLocalizedDescriptionKey;
    v43 = [NSString stringWithUTF8String:"Invalid Parameter"];
    v92[0] = v43;
    v92[1] = &off_100330108;
    v91[1] = @"Line";
    v91[2] = @"Method";
    v70 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_activateSecureElementForApplet:outError:")];
    v92[2] = v70;
    v91[3] = NSDebugDescriptionErrorKey;
    v71 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_activateSecureElementForApplet:outError:"), 1418];
    v92[3] = v71;
    v72 = [NSDictionary dictionaryWithObjects:v92 forKeys:v91 count:4];
    *a3 = [v69 initWithDomain:v41 code:10 userInfo:v72];
  }

  v73 = 0;
LABEL_64:

LABEL_65:

  return v73;
}

id sub_1000370EC(_BYTE *a1, void *a2, void *a3, void *a4)
{
  v68 = a2;
  v7 = a3;
  v66 = a4;
  if (!a1)
  {
    goto LABEL_47;
  }

  v8 = NFSharedSignpostLog();
  if (os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "disableAuthorizationForApplets", &unk_1002E8B7A, buf, 2u);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v10 = Logger;
    Class = object_getClass(a1);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(a1);
    Name = sel_getName("disableAuthorizationForApplets:andKey:authorization:");
    v15 = [NFApplet aidListForPrinting:v68];
    v16 = 45;
    if (isMetaClass)
    {
      v16 = 43;
    }

    v10(6, "%c[%{public}s %{public}s]:%i applets: %{public}@  key: %{public}@", v16, ClassName, Name, 1443, v15, v7);
  }

  v67 = v7;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v17 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = object_getClass(a1);
    if (class_isMetaClass(v18))
    {
      v19 = 43;
    }

    else
    {
      v19 = 45;
    }

    v20 = object_getClassName(a1);
    v21 = sel_getName("disableAuthorizationForApplets:andKey:authorization:");
    v22 = [NFApplet aidListForPrinting:v68];
    *buf = 67110402;
    *&buf[4] = v19;
    *v78 = 2082;
    *&v78[2] = v20;
    v79 = 2082;
    v80 = v21;
    v81 = 1024;
    v82 = 1443;
    v83 = 2114;
    v84 = v22;
    v85 = 2114;
    v86 = v7;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i applets: %{public}@  key: %{public}@", buf, 0x36u);
  }

  v23 = sub_10002BBB4(a1, 0);
  if (v23)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v24 = NFLogGetLogger();
    if (v24)
    {
      v25 = v24;
      v26 = object_getClass(a1);
      v27 = class_isMetaClass(v26);
      v28 = object_getClassName(a1);
      v65 = sel_getName("disableAuthorizationForApplets:andKey:authorization:");
      v29 = 45;
      if (v27)
      {
        v29 = 43;
      }

      v25(4, "%c[%{public}s %{public}s]:%i Calling before first unlock!!!", v29, v28, v65, 1450);
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

      v33 = object_getClassName(a1);
      v34 = sel_getName("disableAuthorizationForApplets:andKey:authorization:");
      *buf = 67109890;
      *&buf[4] = v32;
      *v78 = 2082;
      *&v78[2] = v33;
      v79 = 2082;
      v80 = v34;
      v81 = 1024;
      v82 = 1450;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Calling before first unlock!!!", buf, 0x22u);
    }

    sub_100199548(NFBugCapture, @"Express Mode Failure", @"Express config init before 1st unlock", @"disableAuthorizationForApplets:andKey:authorization:", 0, 0);
  }

  v35 = [v68 count];
  if (v7)
  {
    if (v35 == 1)
    {
      v36 = [v68 objectAtIndexedSubscript:0];
      v37 = v7;
      v38 = v36;
      v39 = v66;
      v87[0] = @"appletIdentifier";
      v40 = [v38 identifier];
      v87[1] = @"keyIdentifier";
      *buf = v40;
      *v78 = v37;
      v41 = [NSDictionary dictionaryWithObjects:buf forKeys:v87 count:2];
      v42 = [NSArray arrayWithObject:v41];

      v43 = sub_100039AC8(a1, v42, v38, v39);

      v44 = NFSharedSignpostLog();
      if (os_signpost_enabled(v44))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v44, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "disableAuthorizationForApplets", "for keys", buf, 2u);
      }

      if (!v43)
      {
        v63 = 0;
        v7 = v67;
        goto LABEL_51;
      }

      v45 = [NSError alloc];
      v46 = [NSString stringWithUTF8String:"nfcd"];
      v47 = [v43 code];
      v69[0] = NSLocalizedDescriptionKey;
      if ([v43 code] > 75)
      {
        v48 = 76;
      }

      else
      {
        v48 = [v43 code];
      }

      v56 = [NSString stringWithUTF8String:off_100315B58[v48]];
      v70[0] = v56;
      v70[1] = v43;
      v69[1] = NSUnderlyingErrorKey;
      v69[2] = @"Line";
      v70[2] = &off_100330180;
      v69[3] = @"Method";
      v57 = [[NSString alloc] initWithFormat:@"%s", sel_getName("disableAuthorizationForApplets:andKey:authorization:")];
      v70[3] = v57;
      v69[4] = NSDebugDescriptionErrorKey;
      v58 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("disableAuthorizationForApplets:andKey:authorization:"), 1473];
      v70[4] = v58;
      v62 = [NSDictionary dictionaryWithObjects:v70 forKeys:v69 count:5];
      v63 = [v45 initWithDomain:v46 code:v47 userInfo:v62];
      v23 = v43;
      v7 = v67;
      goto LABEL_50;
    }

    v54 = NFSharedSignpostLog();
    if (os_signpost_enabled(v54))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v54, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "disableAuthorizationForApplets", "too many applets", buf, 2u);
    }

    v55 = [NSError alloc];
    v46 = [NSString stringWithUTF8String:"nfcd"];
    v71[0] = NSLocalizedDescriptionKey;
    v56 = [NSString stringWithUTF8String:"Invalid Parameter"];
    v72[0] = v56;
    v72[1] = &off_100330168;
    v71[1] = @"Line";
    v71[2] = @"Method";
    v57 = [[NSString alloc] initWithFormat:@"%s", sel_getName("disableAuthorizationForApplets:andKey:authorization:")];
    v72[2] = v57;
    v71[3] = NSDebugDescriptionErrorKey;
    v58 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("disableAuthorizationForApplets:andKey:authorization:"), 1468];
    v72[3] = v58;
    v59 = v72;
    v60 = v71;
    goto LABEL_43;
  }

  if (v35)
  {
    v49 = sub_100037C68(a1, v68, v66);

    v50 = NFSharedSignpostLog();
    if (os_signpost_enabled(v50))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v50, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "disableAuthorizationForApplets", "for applets", buf, 2u);
    }

    if (v49)
    {
      v51 = [NSError alloc];
      v46 = [NSString stringWithUTF8String:"nfcd"];
      v52 = [v49 code];
      v73[0] = NSLocalizedDescriptionKey;
      if ([v49 code] > 75)
      {
        v53 = 76;
      }

      else
      {
        v53 = [v49 code];
      }

      v56 = [NSString stringWithUTF8String:off_100315B58[v53]];
      v74[0] = v56;
      v74[1] = v49;
      v73[1] = NSUnderlyingErrorKey;
      v73[2] = @"Line";
      v74[2] = &off_100330150;
      v73[3] = @"Method";
      v57 = [[NSString alloc] initWithFormat:@"%s", sel_getName("disableAuthorizationForApplets:andKey:authorization:")];
      v74[3] = v57;
      v73[4] = NSDebugDescriptionErrorKey;
      v58 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("disableAuthorizationForApplets:andKey:authorization:"), 1462];
      v74[4] = v58;
      v62 = [NSDictionary dictionaryWithObjects:v74 forKeys:v73 count:5];
      v63 = [v51 initWithDomain:v46 code:v52 userInfo:v62];
      v23 = v49;
      goto LABEL_50;
    }

LABEL_47:
    v63 = 0;
    goto LABEL_51;
  }

  v61 = NFSharedSignpostLog();
  if (os_signpost_enabled(v61))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v61, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "disableAuthorizationForApplets", "no keys no applets", buf, 2u);
  }

  v55 = [NSError alloc];
  v46 = [NSString stringWithUTF8String:"nfcd"];
  v75[0] = NSLocalizedDescriptionKey;
  v56 = [NSString stringWithUTF8String:"Invalid Parameter"];
  v76[0] = v56;
  v76[1] = &off_100330138;
  v75[1] = @"Line";
  v75[2] = @"Method";
  v57 = [[NSString alloc] initWithFormat:@"%s", sel_getName("disableAuthorizationForApplets:andKey:authorization:")];
  v76[2] = v57;
  v75[3] = NSDebugDescriptionErrorKey;
  v58 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("disableAuthorizationForApplets:andKey:authorization:"), 1458];
  v76[3] = v58;
  v59 = v76;
  v60 = v75;
LABEL_43:
  v62 = [NSDictionary dictionaryWithObjects:v59 forKeys:v60 count:4];
  v63 = [v55 initWithDomain:v46 code:10 userInfo:v62];
LABEL_50:

LABEL_51:

  return v63;
}

id sub_100037C68(_BYTE *a1, void *a2, void *a3)
{
  v5 = a2;
  v129 = a3;
  v6 = [v5 objectAtIndexedSubscript:0];
  v134 = 0;
  v7 = sub_1000366B4(a1, v6, &v134);
  v8 = v134;

  if (!v7 || v8)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v54 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("_disableAuthOnApplets:authorization:uid:");
      v57 = 45;
      if (isMetaClass)
      {
        v57 = 43;
      }

      v54(3, "%c[%{public}s %{public}s]:%i Failed to load SE for applets: %{public}@", v57, ClassName, Name, 1547, v5);
    }

    sel = v7;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v58 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      v59 = object_getClass(a1);
      if (class_isMetaClass(v59))
      {
        v60 = 43;
      }

      else
      {
        v60 = 45;
      }

      v61 = object_getClassName(a1);
      v62 = sel_getName("_disableAuthOnApplets:authorization:uid:");
      *buf = 67110146;
      v149 = v60;
      v150 = 2082;
      v151 = v61;
      v152 = 2082;
      v153 = v62;
      v154 = 1024;
      v155 = 1547;
      v156 = 2114;
      v157 = v5;
      _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to load SE for applets: %{public}@", buf, 0x2Cu);
    }

    v63 = [NSError alloc];
    v9 = [NSString stringWithUTF8String:"nfcd"];
    if (v8)
    {
      v64 = [v8 code];
      v146[0] = NSLocalizedDescriptionKey;
      v65 = v9;
      if ([v8 code] > 75)
      {
        v66 = 76;
      }

      else
      {
        v66 = [v8 code];
      }

      v67 = [NSString stringWithUTF8String:off_100315B58[v66]];
      v147[0] = v67;
      v147[1] = v8;
      v146[1] = NSUnderlyingErrorKey;
      v146[2] = @"Line";
      v147[2] = &off_1003301C8;
      v146[3] = @"Method";
      v71 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_disableAuthOnApplets:authorization:uid:")];
      v147[3] = v71;
      v146[4] = NSDebugDescriptionErrorKey;
      v72 = v8;
      v73 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_disableAuthOnApplets:authorization:uid:"), 1548];
      v147[4] = v73;
      v74 = [NSDictionary dictionaryWithObjects:v147 forKeys:v146 count:5];
      v52 = [v63 initWithDomain:v65 code:v64 userInfo:v74];

      v8 = v72;
      v9 = v65;
    }

    else
    {
      v144[0] = NSLocalizedDescriptionKey;
      v67 = [NSString stringWithUTF8String:"Unknown Error"];
      v145[0] = v67;
      v145[1] = &off_1003301C8;
      v144[1] = @"Line";
      v144[2] = @"Method";
      v68 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_disableAuthOnApplets:authorization:uid:")];
      v145[2] = v68;
      v144[3] = NSDebugDescriptionErrorKey;
      v69 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_disableAuthOnApplets:authorization:uid:"), 1548];
      v145[3] = v69;
      v70 = [NSDictionary dictionaryWithObjects:v145 forKeys:v144 count:4];
      v52 = [v63 initWithDomain:v9 code:6 userInfo:v70];

      v8 = 0;
    }

    v7 = sel;
    goto LABEL_92;
  }

  v9 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v5, "count")}];
  v130 = 0u;
  v131 = 0u;
  v132 = 0u;
  v133 = 0u;
  v10 = v5;
  v11 = [v10 countByEnumeratingWithState:&v130 objects:v143 count:16];
  if (!v11)
  {
    goto LABEL_18;
  }

  v12 = v11;
  v13 = *v131;
  v126 = 0;
  v127 = v5;
  while (2)
  {
    for (i = 0; i != v12; i = i + 1)
    {
      if (*v131 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v130 + 1) + 8 * i);
      v16 = [v15 identifierAsData];
      v17 = sub_100257F24(v7, v16, 0);

      if (v17)
      {
        if ([v17 authTransientConfigurable])
        {
          if ([v17 lifecycleState] == 130 || objc_msgSend(v17, "lifecycleState") == 129)
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v75 = NFLogGetLogger();
            if (v75)
            {
              v76 = v75;
              v77 = object_getClass(a1);
              v78 = class_isMetaClass(v77);
              v117 = object_getClassName(a1);
              v121 = sel_getName("_disableAuthOnApplets:authorization:uid:");
              v79 = 45;
              if (v78)
              {
                v79 = 43;
              }

              v76(3, "%c[%{public}s %{public}s]:%i Applet %{public}@ is frozen or terminated", v79, v117, v121, 1562, v17);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v80 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
            {
              v81 = object_getClass(a1);
              if (class_isMetaClass(v81))
              {
                v82 = 43;
              }

              else
              {
                v82 = 45;
              }

              v83 = object_getClassName(a1);
              v84 = sel_getName("_disableAuthOnApplets:authorization:uid:");
              *buf = 67110146;
              v149 = v82;
              v150 = 2082;
              v151 = v83;
              v152 = 2082;
              v153 = v84;
              v154 = 1024;
              v155 = 1562;
              v156 = 2114;
              v157 = v17;
              _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Applet %{public}@ is frozen or terminated", buf, 0x2Cu);
            }

            v125 = [NSError alloc];
            v85 = [NSString stringWithUTF8String:"nfcd"];
            v139[0] = NSLocalizedDescriptionKey;
            v86 = [NSString stringWithUTF8String:"Invalid Parameter"];
            v140[0] = v86;
            v140[1] = &off_1003301F8;
            v139[1] = @"Line";
            v139[2] = @"Method";
            v87 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_disableAuthOnApplets:authorization:uid:")];
            v140[2] = v87;
            v139[3] = NSDebugDescriptionErrorKey;
            v88 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_disableAuthOnApplets:authorization:uid:"), 1563];
            v140[3] = v88;
            v89 = v140;
            v90 = v139;
          }

          else
          {
            v18 = [v17 authTransientSupport];
            if (v129 || !v18)
            {
              goto LABEL_14;
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v101 = NFLogGetLogger();
            if (v101)
            {
              v102 = v101;
              v103 = object_getClass(a1);
              v104 = class_isMetaClass(v103);
              v105 = object_getClassName(a1);
              v123 = sel_getName("_disableAuthOnApplets:authorization:uid:");
              v106 = 45;
              if (v104)
              {
                v106 = 43;
              }

              v102(3, "%c[%{public}s %{public}s]:%i Missing authorization", v106, v105, v123, 1567);
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
              v111 = sel_getName("_disableAuthOnApplets:authorization:uid:");
              *buf = 67109890;
              v149 = v109;
              v150 = 2082;
              v151 = v110;
              v152 = 2082;
              v153 = v111;
              v154 = 1024;
              v155 = 1567;
              _os_log_impl(&_mh_execute_header, v107, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Missing authorization", buf, 0x22u);
            }

            sub_100199548(NFBugCapture, @"Express Mode Failure", @"Missing authorization", @"_disableAuthOnApplets:authorization:uid:", 0, 0);
            v125 = [NSError alloc];
            v85 = [NSString stringWithUTF8String:"nfcd"];
            v137[0] = NSLocalizedDescriptionKey;
            v86 = [NSString stringWithUTF8String:"Invalid Parameter"];
            v138[0] = v86;
            v138[1] = &off_100330210;
            v137[1] = @"Line";
            v137[2] = @"Method";
            v87 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_disableAuthOnApplets:authorization:uid:")];
            v138[2] = v87;
            v137[3] = NSDebugDescriptionErrorKey;
            v88 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_disableAuthOnApplets:authorization:uid:"), 1569];
            v138[3] = v88;
            v89 = v138;
            v90 = v137;
          }
        }

        else
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v91 = NFLogGetLogger();
          if (v91)
          {
            v92 = v91;
            v93 = object_getClass(a1);
            v94 = class_isMetaClass(v93);
            v118 = object_getClassName(a1);
            v122 = sel_getName("_disableAuthOnApplets:authorization:uid:");
            v95 = 45;
            if (v94)
            {
              v95 = 43;
            }

            v92(3, "%c[%{public}s %{public}s]:%i Applet %{public}@ is not auth transient configurable", v95, v118, v122, 1557, v17);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v96 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
          {
            v97 = object_getClass(a1);
            if (class_isMetaClass(v97))
            {
              v98 = 43;
            }

            else
            {
              v98 = 45;
            }

            v99 = object_getClassName(a1);
            v100 = sel_getName("_disableAuthOnApplets:authorization:uid:");
            *buf = 67110146;
            v149 = v98;
            v150 = 2082;
            v151 = v99;
            v152 = 2082;
            v153 = v100;
            v154 = 1024;
            v155 = 1557;
            v156 = 2114;
            v157 = v17;
            _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Applet %{public}@ is not auth transient configurable", buf, 0x2Cu);
          }

          v125 = [NSError alloc];
          v85 = [NSString stringWithUTF8String:"nfcd"];
          v141[0] = NSLocalizedDescriptionKey;
          v86 = [NSString stringWithUTF8String:"Invalid Parameter"];
          v142[0] = v86;
          v142[1] = &off_1003301E0;
          v141[1] = @"Line";
          v141[2] = @"Method";
          v87 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_disableAuthOnApplets:authorization:uid:")];
          v142[2] = v87;
          v141[3] = NSDebugDescriptionErrorKey;
          v88 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_disableAuthOnApplets:authorization:uid:"), 1558];
          v142[3] = v88;
          v89 = v142;
          v90 = v141;
        }

        v112 = [NSDictionary dictionaryWithObjects:v89 forKeys:v90 count:4];
        v52 = [v125 initWithDomain:v85 code:10 userInfo:v112];

        goto LABEL_89;
      }

LABEL_14:
      if ([v17 authTransientSupport])
      {
        [v9 addObject:v17];
      }
    }

    v12 = [v10 countByEnumeratingWithState:&v130 objects:v143 count:16];
    v8 = 0;
    v5 = v127;
    if (v12)
    {
      continue;
    }

    break;
  }

LABEL_18:

  if (![v9 count])
  {
    goto LABEL_91;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v19 = NFLogGetLogger();
  if (v19)
  {
    v20 = v19;
    v21 = object_getClass(a1);
    v22 = class_isMetaClass(v21);
    v23 = object_getClassName(a1);
    v24 = sel_getName("_disableAuthOnApplets:authorization:uid:");
    v124 = [v9 count];
    v25 = 45;
    if (v22)
    {
      v25 = 43;
    }

    v20(6, "%c[%{public}s %{public}s]:%i Disabling transient authorization on %u applets", v25, v23, v24, 1580, v124);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v26 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = object_getClass(a1);
    if (class_isMetaClass(v27))
    {
      v28 = 43;
    }

    else
    {
      v28 = 45;
    }

    v29 = object_getClassName(a1);
    v30 = sel_getName("_disableAuthOnApplets:authorization:uid:");
    v31 = [v9 count];
    *buf = 67110146;
    v149 = v28;
    v150 = 2082;
    v151 = v29;
    v152 = 2082;
    v153 = v30;
    v154 = 1024;
    v155 = 1580;
    v156 = 1024;
    LODWORD(v157) = v31;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Disabling transient authorization on %u applets", buf, 0x28u);
  }

  v32 = sub_1002040C4(v7, 0, 0xFFFFFFFF, v9, v129);
  if (!v32)
  {
    v113 = sub_100253E14(v7);
LABEL_91:
    v52 = 0;
    goto LABEL_92;
  }

  v33 = v32;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v34 = NFLogGetLogger();
  if (v34)
  {
    v35 = v34;
    v36 = object_getClass(a1);
    v37 = class_isMetaClass(v36);
    v115 = object_getClassName(a1);
    v119 = sel_getName("_disableAuthOnApplets:authorization:uid:");
    v38 = 45;
    if (v37)
    {
      v38 = 43;
    }

    v35(3, "%c[%{public}s %{public}s]:%i Failed to disable transient auth for applets: %{public}@", v38, v115, v119, 1587, v9);
  }

  v126 = v8;
  v127 = v5;
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
    v43 = sel_getName("_disableAuthOnApplets:authorization:uid:");
    *buf = 67110146;
    v149 = v41;
    v150 = 2082;
    v151 = v42;
    v152 = 2082;
    v153 = v43;
    v154 = 1024;
    v155 = 1587;
    v156 = 2114;
    v157 = v9;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to disable transient auth for applets: %{public}@", buf, 0x2Cu);
  }

  v44 = [NSError alloc];
  v45 = [NSString stringWithUTF8String:"nfcd"];
  v46 = v33;
  v135[0] = NSLocalizedDescriptionKey;
  if (v33 >= 0x4C)
  {
    v47 = 76;
  }

  else
  {
    v47 = v33;
  }

  v48 = [NSString stringWithUTF8String:off_100315B58[v47]];
  v136[0] = v48;
  v136[1] = &off_100330228;
  v135[1] = @"Line";
  v135[2] = @"Method";
  v49 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_disableAuthOnApplets:authorization:uid:")];
  v136[2] = v49;
  v135[3] = NSDebugDescriptionErrorKey;
  v50 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_disableAuthOnApplets:authorization:uid:"), 1588];
  v136[3] = v50;
  v51 = [NSDictionary dictionaryWithObjects:v136 forKeys:v135 count:4];
  v52 = [v44 initWithDomain:v45 code:v46 userInfo:v51];

LABEL_89:
  v8 = v126;
  v5 = v127;
LABEL_92:

  return v52;
}

id sub_100038D7C(_BYTE *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = "disableAuthorizationForPasses:authorization:";
    v8 = NFSharedSignpostLog();
    if (os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "disableAuthorizationForPasses", &unk_1002E8B7A, buf, 2u);
    }

    v92 = v6;

    v105 = 0;
    v106 = &v105;
    v107 = 0x3032000000;
    v108 = sub_1000069FC;
    v109 = sub_100039A4C;
    v110 = 0;
    v93 = sub_10002BBB4(a1, 0);
    if (v93 && [v93 code] == 75)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v10 = Logger;
        Class = object_getClass(a1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(a1);
        Name = sel_getName("disableAuthorizationForPasses:authorization:");
        v14 = 45;
        if (isMetaClass)
        {
          v14 = 43;
        }

        v10(4, "%c[%{public}s %{public}s]:%i Calling before first unlock!!!", v14, ClassName, Name, 1485);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v15 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
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

        v18 = object_getClassName(a1);
        v19 = sel_getName("disableAuthorizationForPasses:authorization:");
        *buf = 67109890;
        v114 = v17;
        v115 = 2082;
        v116 = v18;
        v117 = 2082;
        v118 = v19;
        v119 = 1024;
        v120 = 1485;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Calling before first unlock!!!", buf, 0x22u);
      }

      sub_100199548(NFBugCapture, @"Express Mode Failure", @"Express config init before 1st unlock", @"disableAuthorizationForPasses:authorization:", 0, 0);
    }

    v95 = objc_alloc_init(NSMutableArray);
    v96 = objc_alloc_init(NSMutableDictionary);
    v101 = 0u;
    v102 = 0u;
    v103 = 0u;
    v104 = 0u;
    v91 = v5;
    v20 = v5;
    v21 = [v20 countByEnumeratingWithState:&v101 objects:v127 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = RBSProcessMonitor_ptr;
      v97 = *v102;
      v94 = v20;
      while (2)
      {
        for (i = 0; i != v22; i = i + 1)
        {
          if (*v102 != v97)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v101 + 1) + 8 * i);
          v26 = v23[59];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v27 = [v25 objectForKeyedSubscript:@"appletIdentifier"];
            if (!v27 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v61 = NFLogGetLogger();
              if (v61)
              {
                v62 = v61;
                v63 = object_getClass(a1);
                v64 = class_isMetaClass(v63);
                v65 = object_getClassName(a1);
                v90 = sel_getName(v7);
                v66 = 45;
                if (v64)
                {
                  v66 = 43;
                }

                v62(3, "%c[%{public}s %{public}s]:%i Invalid AID type.", v66, v65, v90, 1502);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v67 = NFSharedLogGetLogger();
              v5 = v91;
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
                v71 = sel_getName(v7);
                *buf = 67109890;
                v114 = v69;
                v115 = 2082;
                v116 = v70;
                v117 = 2082;
                v118 = v71;
                v119 = 1024;
                v120 = 1502;
                _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid AID type.", buf, 0x22u);
              }

              v72 = NFSharedSignpostLog();
              if (os_signpost_enabled(v72))
              {
                *buf = 0;
                _os_signpost_emit_with_name_impl(&_mh_execute_header, v72, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "disableAuthorizationForPasses", "invalid aid", buf, 2u);
              }

              v73 = [NSError alloc];
              v74 = [NSString stringWithUTF8String:"nfcd"];
              v125[0] = NSLocalizedDescriptionKey;
              v75 = [NSString stringWithUTF8String:"Invalid Parameter"];
              v126[0] = v75;
              v126[1] = &off_100330198;
              v125[1] = @"Line";
              v125[2] = @"Method";
              v76 = [[NSString alloc] initWithFormat:@"%s", sel_getName(v7)];
              v126[2] = v76;
              v125[3] = NSDebugDescriptionErrorKey;
              v77 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(v7), 1504];
              v126[3] = v77;
              v125[4] = NSLocalizedFailureReasonErrorKey;
              v78 = [[NSString alloc] initWithFormat:@"Invalid AID type."];
              v126[4] = v78;
              v79 = [NSDictionary dictionaryWithObjects:v126 forKeys:v125 count:5];
              v80 = [v73 initWithDomain:v74 code:10 userInfo:v79];

              v6 = v92;
              goto LABEL_77;
            }

            v28 = sub_1000335E8(a1, v27);
            if (v28)
            {
              v29 = [v25 objectForKeyedSubscript:@"keyIdentifier"];

              if (v29)
              {
                v30 = [v96 objectForKeyedSubscript:v28];
                if (!v30)
                {
                  v30 = objc_alloc_init(NSMutableArray);
                  [v96 setObject:v30 forKeyedSubscript:v28];
                }

                [v30 addObject:v25];
              }

              else
              {
                [v95 addObject:v28];
              }
            }

            else
            {
              v41 = v7;
              v42 = [v25 objectForKeyedSubscript:@"passUniqueID"];
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v43 = NFLogGetLogger();
              if (v43)
              {
                v44 = v43;
                v45 = object_getClass(a1);
                v46 = class_isMetaClass(v45);
                v47 = object_getClassName(a1);
                v89 = sel_getName(v41);
                v48 = !v46;
                v23 = RBSProcessMonitor_ptr;
                v49 = 45;
                if (!v48)
                {
                  v49 = 43;
                }

                v44(4, "%c[%{public}s %{public}s]:%i AID %{public}@ for pass %{public}@ does not exist; ignoring", v49, v47, v89, 1510, v27, v42);
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
                v54 = sel_getName(v41);
                *buf = 67110402;
                v114 = v52;
                v115 = 2082;
                v116 = v53;
                v23 = RBSProcessMonitor_ptr;
                v117 = 2082;
                v118 = v54;
                v119 = 1024;
                v120 = 1510;
                v121 = 2114;
                v122 = v27;
                v123 = 2114;
                v124 = v42;
                _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i AID %{public}@ for pass %{public}@ does not exist; ignoring", buf, 0x36u);
              }

              v7 = v41;
              v20 = v94;
            }
          }

          else
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v31 = NFLogGetLogger();
            if (v31)
            {
              v32 = v31;
              v33 = object_getClass(a1);
              v34 = class_isMetaClass(v33);
              v35 = object_getClassName(a1);
              v88 = sel_getName(v7);
              v36 = 45;
              if (v34)
              {
                v36 = 43;
              }

              v32(3, "%c[%{public}s %{public}s]:%i Invalid pass type.", v36, v35, v88, 1496);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v27 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
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
              v40 = sel_getName(v7);
              *buf = 67109890;
              v114 = v38;
              v23 = RBSProcessMonitor_ptr;
              v115 = 2082;
              v116 = v39;
              v117 = 2082;
              v118 = v40;
              v119 = 1024;
              v120 = 1496;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid pass type.", buf, 0x22u);
            }
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v101 objects:v127 count:16];
        if (v22)
        {
          continue;
        }

        break;
      }
    }

    v6 = v92;
    if ([v95 count])
    {
      v55 = sub_100037C68(a1, v95, v92);
      if (v55)
      {
        objc_storeStrong(v106 + 5, v55);
      }
    }

    v98[0] = _NSConcreteStackBlock;
    v98[1] = 3221225472;
    v98[2] = sub_100039A54;
    v98[3] = &unk_100315DF0;
    v98[4] = a1;
    v99 = v92;
    v100 = &v105;
    [v96 enumerateKeysAndObjectsUsingBlock:v98];
    v56 = NFSharedSignpostLog();
    if (os_signpost_enabled(v56))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v56, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "disableAuthorizationForPasses", &unk_1002E8B7A, buf, 2u);
    }

    if (v106[5])
    {
      v57 = [NSError alloc];
      v58 = [NSString stringWithUTF8String:"nfcd"];
      v59 = [v106[5] code];
      v111[0] = NSLocalizedDescriptionKey;
      if ([v106[5] code] > 75)
      {
        v60 = 76;
      }

      else
      {
        v60 = [v106[5] code];
      }

      v5 = v91;
      v81 = [NSString stringWithUTF8String:off_100315B58[v60]];
      v82 = v106[5];
      v112[0] = v81;
      v112[1] = v82;
      v111[1] = NSUnderlyingErrorKey;
      v111[2] = @"Line";
      v112[2] = &off_1003301B0;
      v111[3] = @"Method";
      v83 = [[NSString alloc] initWithFormat:@"%s", sel_getName(v7)];
      v112[3] = v83;
      v111[4] = NSDebugDescriptionErrorKey;
      v84 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(v7), 1537];
      v112[4] = v84;
      v85 = [NSDictionary dictionaryWithObjects:v112 forKeys:v111 count:5];
      v80 = [v57 initWithDomain:v58 code:v59 userInfo:v85];

      v6 = v92;
    }

    else
    {
      v80 = 0;
      v5 = v91;
    }

LABEL_77:
    _Block_object_dispose(&v105, 8);
  }

  else
  {
    v80 = 0;
  }

  return v80;
}