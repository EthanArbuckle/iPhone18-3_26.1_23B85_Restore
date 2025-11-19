uint64_t sub_1000A7E5C(void *a1, uint64_t a2, char a3, _OWORD *a4)
{
  if (!a1)
  {
    return 0;
  }

  if (NFIsInternalBuild())
  {
    v8 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.stockholm"];
    if ([v8 BOOLForKey:@"skipTCC"])
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v10 = Logger;
        Class = object_getClass(a1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(a1);
        Name = sel_getName("_validateForService:userPrompt:auditToken:");
        v14 = 45;
        if (isMetaClass)
        {
          v14 = 43;
        }

        v10(6, "%c[%{public}s %{public}s]:%i Skipping TCC check", v14, ClassName, Name, 91);
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
        *&buf[4] = v17;
        *&buf[8] = 2082;
        *&buf[10] = object_getClassName(a1);
        *&buf[18] = 2082;
        *&buf[20] = sel_getName("_validateForService:userPrompt:auditToken:");
        *&buf[28] = 1024;
        *&buf[30] = 91;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Skipping TCC check", buf, 0x22u);
      }

      goto LABEL_14;
    }
  }

  if (!sub_1000A7B74())
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v22 = NFLogGetLogger();
    if (v22)
    {
      v23 = v22;
      v24 = object_getClass(a1);
      v25 = class_isMetaClass(v24);
      v26 = object_getClassName(a1);
      v92 = sel_getName("_validateForService:userPrompt:auditToken:");
      v27 = 45;
      if (v25)
      {
        v27 = 43;
      }

      v23(3, "%c[%{public}s %{public}s]:%i Missing library; default to false", v27, v26, v92, 97);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v8 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_64;
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

    *buf = 67109890;
    *&buf[4] = v29;
    *&buf[8] = 2082;
    *&buf[10] = object_getClassName(a1);
    *&buf[18] = 2082;
    *&buf[20] = sel_getName("_validateForService:userPrompt:auditToken:");
    *&buf[28] = 1024;
    *&buf[30] = 97;
    v30 = "%c[%{public}s %{public}s]:%i Missing library; default to false";
    goto LABEL_29;
  }

  if (a2)
  {
    if (a2 != 1)
    {
LABEL_54:
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v55 = NFLogGetLogger();
      if (v55)
      {
        v56 = v55;
        v57 = object_getClass(a1);
        v58 = class_isMetaClass(v57);
        v88 = object_getClassName(a1);
        v95 = sel_getName("_validateForService:userPrompt:auditToken:");
        v59 = 45;
        if (v58)
        {
          v59 = 43;
        }

        v56(3, "%c[%{public}s %{public}s]:%i Unknown input service %d", v59, v88, v95, 103, a2);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v8 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_64;
      }

      v60 = object_getClass(a1);
      if (class_isMetaClass(v60))
      {
        v61 = 43;
      }

      else
      {
        v61 = 45;
      }

      *buf = 67110146;
      *&buf[4] = v61;
      *&buf[8] = 2082;
      *&buf[10] = object_getClassName(a1);
      *&buf[18] = 2082;
      *&buf[20] = sel_getName("_validateForService:userPrompt:auditToken:");
      *&buf[28] = 1024;
      *&buf[30] = 103;
      v101 = 1024;
      LODWORD(v102) = a2;
      v30 = "%c[%{public}s %{public}s]:%i Unknown input service %d";
      v31 = v8;
      v32 = 40;
      goto LABEL_63;
    }

    sub_10027ED54(v19);
    v21 = *(v20 + 104);
  }

  else
  {
    sub_10027ED30(v19);
    v21 = *(v33 + 96);
  }

  if (!*v21)
  {
    goto LABEL_54;
  }

  v34 = a4[1];
  *buf = *a4;
  *&buf[16] = v34;
  v35 = sub_10027E534(*buf);
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v36 = NFLogGetLogger();
  if (v36)
  {
    v37 = v36;
    v38 = object_getClass(a1);
    v39 = class_isMetaClass(v38);
    v87 = object_getClassName(a1);
    v93 = sel_getName("_validateForService:userPrompt:auditToken:");
    v40 = 45;
    if (v39)
    {
      v40 = 43;
    }

    v37(6, "%c[%{public}s %{public}s]:%i preflightResult=%llu", v40, v87, v93, 108, v35);
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

    *buf = 67110146;
    *&buf[4] = v43;
    *&buf[8] = 2082;
    *&buf[10] = object_getClassName(a1);
    *&buf[18] = 2082;
    *&buf[20] = sel_getName("_validateForService:userPrompt:auditToken:");
    *&buf[28] = 1024;
    *&buf[30] = 108;
    v101 = 2048;
    v102 = v35;
    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i preflightResult=%llu", buf, 0x2Cu);
  }

  if ((v35 - 2) < 2)
  {
    return 2;
  }

  if (v35 != 1)
  {
    if (v35)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v68 = NFLogGetLogger();
      if (v68)
      {
        v69 = v68;
        v70 = object_getClass(a1);
        v71 = class_isMetaClass(v70);
        v89 = object_getClassName(a1);
        v96 = sel_getName("_validateForService:userPrompt:auditToken:");
        v72 = 45;
        if (v71)
        {
          v72 = 43;
        }

        v69(4, "%c[%{public}s %{public}s]:%i Unexpected state %llu; default to deny", v72, v89, v96, 128, v35);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v8 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_64;
      }

      v73 = object_getClass(a1);
      if (class_isMetaClass(v73))
      {
        v74 = 43;
      }

      else
      {
        v74 = 45;
      }

      v75 = object_getClassName(a1);
      v76 = sel_getName("_validateForService:userPrompt:auditToken:");
      *buf = 67110146;
      *&buf[4] = v74;
      *&buf[8] = 2082;
      *&buf[10] = v75;
      *&buf[18] = 2082;
      *&buf[20] = v76;
      *&buf[28] = 1024;
      *&buf[30] = 128;
      v101 = 2048;
      v102 = v35;
      v30 = "%c[%{public}s %{public}s]:%i Unexpected state %llu; default to deny";
      v31 = v8;
      v32 = 44;
LABEL_63:
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, v30, buf, v32);
LABEL_64:
      v18 = 1;
      goto LABEL_65;
    }

    if (sub_10027E508(v44) != 1)
    {
      return 1;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v45 = NFLogGetLogger();
    if (v45)
    {
      v46 = v45;
      v47 = object_getClass(a1);
      v48 = class_isMetaClass(v47);
      v49 = object_getClassName(a1);
      v94 = sel_getName("_validateForService:userPrompt:auditToken:");
      v50 = 45;
      if (v48)
      {
        v50 = 43;
      }

      v46(4, "%c[%{public}s %{public}s]:%i System restriction is in place", v50, v49, v94, 114);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v8 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_64;
    }

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
    v54 = sel_getName("_validateForService:userPrompt:auditToken:");
    *buf = 67109890;
    *&buf[4] = v52;
    *&buf[8] = 2082;
    *&buf[10] = v53;
    *&buf[18] = 2082;
    *&buf[20] = v54;
    *&buf[28] = 1024;
    *&buf[30] = 114;
    v30 = "%c[%{public}s %{public}s]:%i System restriction is in place";
LABEL_29:
    v31 = v8;
    v32 = 34;
    goto LABEL_63;
  }

  if ((a3 & 1) == 0)
  {
    return 0;
  }

  v63 = sub_10027ED0C(v44);
  v98 = **(v64 + 88);
  v99 = &__kCFBooleanTrue;
  v18 = 1;
  v8 = [NSDictionary dictionaryWithObjects:&v99 forKeys:&v98 count:1, v63];
  v65 = a4[1];
  *buf = *a4;
  *&buf[16] = v65;
  v66 = sub_10027E534(*buf);
  if ((v66 - 2) >= 2)
  {
    v67 = v66;
    if (!v66)
    {
      goto LABEL_65;
    }

    if (v66 == 1)
    {
      v18 = 0;
      goto LABEL_65;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v77 = NFLogGetLogger();
    if (v77)
    {
      v78 = v77;
      v79 = object_getClass(a1);
      v80 = class_isMetaClass(v79);
      v90 = object_getClassName(a1);
      v97 = sel_getName("_validateForService:userPrompt:auditToken:");
      v81 = 45;
      if (v80)
      {
        v81 = 43;
      }

      v78(4, "%c[%{public}s %{public}s]:%i Unexpected state %llu; default to deny", v81, v90, v97, 145, v67);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v82 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
    {
      v83 = object_getClass(a1);
      if (class_isMetaClass(v83))
      {
        v84 = 43;
      }

      else
      {
        v84 = 45;
      }

      v85 = object_getClassName(a1);
      v86 = sel_getName("_validateForService:userPrompt:auditToken:");
      *buf = 67110146;
      *&buf[4] = v84;
      *&buf[8] = 2082;
      *&buf[10] = v85;
      *&buf[18] = 2082;
      *&buf[20] = v86;
      *&buf[28] = 1024;
      *&buf[30] = 145;
      v101 = 2048;
      v102 = v67;
      _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unexpected state %llu; default to deny", buf, 0x2Cu);
    }

    goto LABEL_64;
  }

LABEL_14:
  v18 = 2;
LABEL_65:

  return v18;
}

void sub_1000A87F8(uint64_t a1, uint64_t a2, char a3, __int128 *a4, void *a5)
{
  v9 = a5;
  v10 = v9;
  if (a1)
  {
    v11 = *(a1 + 8);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000A88C4;
    v13[3] = &unk_100317D08;
    v13[4] = a1;
    v14 = v9;
    v15 = a2;
    v18 = a3;
    v12 = a4[1];
    v16 = *a4;
    v17 = v12;
    dispatch_async(v11, v13);
  }
}

uint64_t sub_1000A88C4(uint64_t a1)
{
  v2 = NFSharedSignpostLog();
  if (os_signpost_enabled(v2))
  {
    LOWORD(v10[0]) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "validateWithUserPrompt", &unk_1002E8B7A, v10, 2u);
  }

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 88);
  v7 = *(a1 + 72);
  v10[0] = *(a1 + 56);
  v10[1] = v7;
  v8 = sub_1000A7E5C(v3, v5, v6, v10);
  return (*(v4 + 16))(v4, v8);
}

uint64_t sub_1000A8974(uint64_t result, uint64_t a2, char a3, _OWORD *a4)
{
  if (result)
  {
    v7 = result;
    v8 = NFSharedSignpostLog();
    if (os_signpost_enabled(v8))
    {
      LOWORD(v10[0]) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "validateWithUserPrompt", &unk_1002E8B7A, v10, 2u);
    }

    v9 = a4[1];
    v10[0] = *a4;
    v10[1] = v9;
    return sub_1000A7E5C(v7, a2, a3, v10);
  }

  return result;
}

unint64_t sub_1000A8A30(void *a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v4 = a1;
  if (a1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v9 = Logger;
      Class = object_getClass(v4);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v4);
      Name = sel_getName("setState:forService:auditToken:");
      v13 = 45;
      if (isMetaClass)
      {
        v13 = 43;
      }

      v9(6, "%c[%{public}s %{public}s]:%i ", v13, ClassName, Name, 166);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v14 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = object_getClass(v4);
      if (class_isMetaClass(v15))
      {
        v16 = 43;
      }

      else
      {
        v16 = 45;
      }

      *buf = 67109890;
      *&buf[4] = v16;
      *&buf[8] = 2082;
      *&buf[10] = object_getClassName(v4);
      *&buf[18] = 2082;
      *&buf[20] = sel_getName("setState:forService:auditToken:");
      *&buf[28] = 1024;
      *&buf[30] = 166;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
    }

    if (!sub_1000A7B74())
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v29 = NFLogGetLogger();
      if (v29)
      {
        v30 = v29;
        v31 = object_getClass(v4);
        v32 = class_isMetaClass(v31);
        v33 = object_getClassName(v4);
        v82 = sel_getName("setState:forService:auditToken:");
        v34 = 45;
        if (v32)
        {
          v34 = 43;
        }

        v30(3, "%c[%{public}s %{public}s]:%i Missing TCC library", v34, v33, v82, 169);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v23 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_56;
      }

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
      v38 = sel_getName("setState:forService:auditToken:");
      *buf = 67109890;
      *&buf[4] = v36;
      *&buf[8] = 2082;
      *&buf[10] = v37;
      *&buf[18] = 2082;
      *&buf[20] = v38;
      *&buf[28] = 1024;
      *&buf[30] = 169;
      v28 = "%c[%{public}s %{public}s]:%i Missing TCC library";
      v39 = v23;
      v40 = 34;
      goto LABEL_55;
    }

    if (a2 != 1 && a2 != 2)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v18 = NFLogGetLogger();
      if (v18)
      {
        v19 = v18;
        v20 = object_getClass(v4);
        v21 = class_isMetaClass(v20);
        v78 = object_getClassName(v4);
        v81 = sel_getName("setState:forService:auditToken:");
        v22 = 45;
        if (v21)
        {
          v22 = 43;
        }

        v19(3, "%c[%{public}s %{public}s]:%i Cannot set NFTCCState %d", v22, v78, v81, 182, a2);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v23 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_56;
      }

      v24 = object_getClass(v4);
      if (class_isMetaClass(v24))
      {
        v25 = 43;
      }

      else
      {
        v25 = 45;
      }

      v26 = object_getClassName(v4);
      v27 = sel_getName("setState:forService:auditToken:");
      *buf = 67110146;
      *&buf[4] = v25;
      *&buf[8] = 2082;
      *&buf[10] = v26;
      *&buf[18] = 2082;
      *&buf[20] = v27;
      *&buf[28] = 1024;
      *&buf[30] = 182;
      *&buf[34] = 1024;
      *&buf[36] = a2;
      v28 = "%c[%{public}s %{public}s]:%i Cannot set NFTCCState %d";
      goto LABEL_54;
    }

    if (a3)
    {
      if (a3 != 1)
      {
LABEL_45:
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v59 = NFLogGetLogger();
        if (v59)
        {
          v60 = v59;
          v61 = object_getClass(v4);
          v62 = class_isMetaClass(v61);
          v79 = object_getClassName(v4);
          v83 = sel_getName("setState:forService:auditToken:");
          v63 = 45;
          if (v62)
          {
            v63 = 43;
          }

          v60(3, "%c[%{public}s %{public}s]:%i Unknown input service %d", v63, v79, v83, 188, a3);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v23 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_56;
        }

        v64 = object_getClass(v4);
        if (class_isMetaClass(v64))
        {
          v65 = 43;
        }

        else
        {
          v65 = 45;
        }

        v66 = object_getClassName(v4);
        v67 = sel_getName("setState:forService:auditToken:");
        *buf = 67110146;
        *&buf[4] = v65;
        *&buf[8] = 2082;
        *&buf[10] = v66;
        *&buf[18] = 2082;
        *&buf[20] = v67;
        *&buf[28] = 1024;
        *&buf[30] = 188;
        *&buf[34] = 1024;
        *&buf[36] = a3;
        v28 = "%c[%{public}s %{public}s]:%i Unknown input service %d";
LABEL_54:
        v39 = v23;
        v40 = 40;
LABEL_55:
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, v28, buf, v40);
LABEL_56:
        v4 = 0;
LABEL_57:

        return v4;
      }

      sub_10027ED54(v17);
      v42 = *(v41 + 104);
    }

    else
    {
      sub_10027ED30(v17);
      v42 = *(v43 + 96);
    }

    if (*v42)
    {
      v44 = a4[1];
      *buf = *a4;
      *&buf[16] = v44;
      v23 = sub_10027E560(*buf);
      v46 = sub_10027E58C(v45);
      sub_10027E5B8(v47);
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      *&buf[24] = sub_100006A5C;
      *&buf[32] = sub_1000A92F4;
      v95 = 0;
      v48 = *(v4 + 16);
      sub_10027E610(v49);
      if (*(*&buf[8] + 40))
      {
        *v91 = 0;
        *v92 = v91;
        *&v92[8] = 0x3032000000;
        *&v92[16] = sub_100006A5C;
        *&v92[24] = sub_1000A92F4;
        v93 = 0;
        v51 = sub_10027E668(v50);
        v52 = *(v4 + 16);
        v53 = *(*&buf[8] + 40);
        sub_10027E63C(v54);
        v55 = *(*v92 + 40);
        v4 = v55 == 0;
        if (v55)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v56 = NFLogGetLogger();
          if (v56)
          {
            v56(3, "%s:%i %{public}@", "[NFTCCChecker setState:forService:auditToken:]", 219, *(*v92 + 40));
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v57 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
          {
            v58 = *(*v92 + 40);
            *v85 = 136446722;
            v86 = "[NFTCCChecker setState:forService:auditToken:]";
            v87 = 1024;
            v88 = 219;
            v89 = 2114;
            v90 = v58;
            _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_ERROR, "%{public}s:%i %{public}@", v85, 0x1Cu);
          }
        }

        _Block_object_dispose(v91, 8);
      }

      else
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v69 = NFLogGetLogger();
        if (v69)
        {
          v70 = v69;
          v71 = object_getClass(v4);
          v72 = class_isMetaClass(v71);
          v73 = object_getClassName(v4);
          v84 = sel_getName("setState:forService:auditToken:");
          v74 = 45;
          if (v72)
          {
            v74 = 43;
          }

          v70(3, "%c[%{public}s %{public}s]:%i Couldn't get TCC identity for credential", v74, v73, v84, 207);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v75 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
        {
          v76 = object_getClass(v4);
          if (class_isMetaClass(v76))
          {
            v77 = 43;
          }

          else
          {
            v77 = 45;
          }

          *v91 = 67109890;
          *&v91[4] = v77;
          *v92 = 2082;
          *&v92[2] = object_getClassName(v4);
          *&v92[10] = 2082;
          *&v92[12] = sel_getName("setState:forService:auditToken:");
          *&v92[20] = 1024;
          *&v92[22] = 207;
          _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Couldn't get TCC identity for credential", v91, 0x22u);
        }

        v4 = 0;
      }

      _Block_object_dispose(buf, 8);

      goto LABEL_57;
    }

    goto LABEL_45;
  }

  return v4;
}

void sub_1000A92FC(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (a3)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v8 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 48));
      v11 = 45;
      if (isMetaClass)
      {
        v11 = 43;
      }

      v8(3, "%c[%{public}s %{public}s]:%i %{public}@", v11, ClassName, Name, 200, a3);
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
      *buf = 67110146;
      v20 = v14;
      v21 = 2082;
      v22 = v15;
      v23 = 2082;
      v24 = v16;
      v25 = 1024;
      v26 = 200;
      v27 = 2114;
      v28 = a3;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

void sub_1000A9514(uint64_t a1)
{
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(5, "%s:%i Received signal: %lu", "signalHandler", 100, a1);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v3 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v10 = "signalHandler";
    v11 = 1024;
    v12 = 100;
    v13 = 2048;
    v14 = a1;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Received signal: %lu", buf, 0x1Cu);
  }

  v4 = +[_NFHardwareManager sharedHardwareManager];
  [v4 stop];

  sub_100045B4C(qword_10035D9C0);
  v5 = +[NFSecureXPCEventPublisherManager sharedManager];
  [v5 invalidate];

  Main = CFRunLoopGetMain();
  CFRunLoopStop(Main);
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v7 = NFLogGetLogger();
  if (v7)
  {
    v7(4, "%s:%i Forcing exit in 500ms", "signalHandler", 112);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v8 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v10 = "signalHandler";
    v11 = 1024;
    v12 = 112;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}s:%i Forcing exit in 500ms", buf, 0x12u);
  }

  usleep(0x7A120u);
  _exit(0);
}

id *sub_1000A9CD8(id *a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v23.receiver = a1;
    v23.super_class = NFTouchSensorMonitor;
    v8 = objc_msgSendSuper2(&v23, "init");
    a1 = v8;
    if (v8)
    {
      objc_storeWeak(v8 + 2, v7);
      sub_10027E88C(v9);
      v11 = [objc_alloc(*(v10 + 4016)) initWithType:1];
      v12 = a1[3];
      a1[3] = v11;

      [a1[3] setDispatchQueue:v6];
      objc_storeStrong(a1 + 5, a2);
      objc_initWeak(&location, a1);
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_1000A9EC4;
      v20[3] = &unk_100317D80;
      objc_copyWeak(&v21, &location);
      v13 = objc_retainBlock(v20);
      v14 = a1[4];
      a1[4] = v13;

      [a1[3] setEventHandler:a1[4]];
      [a1[3] setMatching:&off_100339440];
      v15 = a1[3];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_1000AA1E8;
      v17[3] = &unk_100317DA8;
      objc_copyWeak(v19, &location);
      v19[1] = "initWithQueue:delegate:";
      v18 = v6;
      [v15 setServiceNotificationHandler:v17];

      objc_destroyWeak(v19);
      objc_destroyWeak(&v21);
      objc_destroyWeak(&location);
    }
  }

  return a1;
}

void sub_1000A9EC4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && sub_1000A9F9C(v4))
  {
    v6 = sub_1000AA010(WeakRetained, v4);
    if (v6)
    {
      v7 = "touch sensor is ready";
    }

    else
    {
      v7 = "touch sensor is not ready";
    }

    v8 = _os_activity_create(&_mh_execute_header, v7, &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    v10.opaque[0] = 0;
    v10.opaque[1] = 0;
    os_activity_scope_enter(v8, &v10);
    os_activity_scope_leave(&v10);

    v9 = objc_loadWeakRetained(WeakRetained + 2);
    [v9 touchSystemReady:v6];
  }
}

BOOL sub_1000A9F9C(void *a1)
{
  v1 = a1;
  v2 = v1;
  v3 = v1 && [v1 type] == 1 && objc_msgSend(v2, "integerValueForField:", 0x10000) == 65376 && objc_msgSend(v2, "integerValueForField:", 65537) == 9;

  return v3;
}

uint64_t sub_1000AA010(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
LABEL_14:
    v5 = 0;
    goto LABEL_15;
  }

  if ([v3 integerValueForField:65539] != 1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v7 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("_screenStateFromEvent:");
      v11 = 45;
      if (isMetaClass)
      {
        v11 = 43;
      }

      v7(4, "%c[%{public}s %{public}s]:%i Ignore unexpected touch event", v11, ClassName, Name, 195);
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
      v18 = v14;
      v19 = 2082;
      v20 = object_getClassName(a1);
      v21 = 2082;
      v22 = sel_getName("_screenStateFromEvent:");
      v23 = 1024;
      v24 = 195;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Ignore unexpected touch event", buf, 0x22u);
    }

    goto LABEL_14;
  }

  v5 = *[v4 dataValueForField:65540];
LABEL_15:

  return v5 & 1;
}

void sub_1000AA1E8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    *(WeakRetained + 8) = 1;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v7 = Logger;
      Class = object_getClass(v5);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v5);
      Name = sel_getName(*(a1 + 48));
      v11 = 45;
      if (isMetaClass)
      {
        v11 = 43;
      }

      v7(6, "%c[%{public}s %{public}s]:%i Touch service started", v11, ClassName, Name, 77);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v12 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = object_getClass(v5);
      if (class_isMetaClass(v13))
      {
        v14 = 43;
      }

      else
      {
        v14 = 45;
      }

      v15 = object_getClassName(v5);
      v16 = sel_getName(*(a1 + 48));
      *buf = 67109890;
      *&buf[4] = v14;
      *v34 = 2082;
      *&v34[2] = v15;
      v35 = 2082;
      v36 = v16;
      v37 = 1024;
      v38 = 77;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Touch service started", buf, 0x22u);
    }

    v17 = sub_1000AA4D8(v3);
    v18 = sub_1000AA010(v5, v17);
    v19 = v18;
    if (v18)
    {
      v20 = "touch sensor is ready";
    }

    else
    {
      v20 = "touch sensor is not ready";
    }

    v21 = _os_activity_create(&_mh_execute_header, v20, &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    *buf = 0;
    *v34 = 0;
    os_activity_scope_enter(v21, buf);
    os_activity_scope_leave(buf);

    v22 = *(a1 + 32);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000AA594;
    block[3] = &unk_100315EB8;
    v23 = v5;
    v31 = v23;
    v32 = v19;
    dispatch_async(v22, block);
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1000AA5F4;
    v27[3] = &unk_100315F58;
    v24 = v23;
    v25 = *(a1 + 48);
    v28 = v24;
    v29 = v25;
    [v3 setRemovalHandler:v27];
  }
}

id sub_1000AA4D8(void *a1)
{
  v1 = a1;
  mach_absolute_time();
  VendorDefinedEvent = IOHIDEventCreateVendorDefinedEvent();
  if (VendorDefinedEvent)
  {
    v3 = IOHIDServiceClientCopyEvent();
    CFRelease(VendorDefinedEvent);
    if (v3)
    {
      if (sub_1000A9F9C(v3))
      {
        VendorDefinedEvent = v3;
      }

      else
      {
        VendorDefinedEvent = 0;
      }
    }

    else
    {
      VendorDefinedEvent = 0;
    }
  }

  return VendorDefinedEvent;
}

void sub_1000AA594(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 16));
  }

  else
  {
    WeakRetained = 0;
  }

  v4 = WeakRetained;
  [WeakRetained touchSystemReady:*(a1 + 40)];
}

void sub_1000AA5F4(uint64_t a1)
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

    v3(6, "%c[%{public}s %{public}s]:%i Touch service stopped", v7, ClassName, Name, 92);
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
    v12 = sel_getName(*(a1 + 40));
    *buf = 67109890;
    v16 = v10;
    v17 = 2082;
    v18 = v11;
    v19 = 2082;
    v20 = v12;
    v21 = 1024;
    v22 = 92;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Touch service stopped", buf, 0x22u);
  }

  v13 = *(a1 + 32);
  if (v13)
  {
    *(v13 + 8) = 0;
  }
}

void sub_1000AA7D8(void *a1)
{
  if (a1)
  {
    v1 = a1;
    objc_sync_enter(v1);
    if ((*(v1 + 9) & 1) == 0)
    {
      [*(v1 + 3) activate];
      *(v1 + 9) = 1;
      [*(v1 + 3) services];
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v2 = v30 = 0u;
      v3 = [v2 countByEnumeratingWithState:&v27 objects:v41 count:16];
      if (v3)
      {
        v4 = v3;
        v5 = *v28;
        while (2)
        {
          for (i = 0; i != v4; i = i + 1)
          {
            if (*v28 != v5)
            {
              objc_enumerationMutation(v2);
            }

            v7 = sub_1000AA4D8(*(*(&v27 + 1) + 8 * i));
            if (v7)
            {
              v8 = v7;
              *(v1 + 8) = 1;
              v9 = sub_1000AA010(v1, v7);
              v10 = *(v1 + 5);
              block[0] = _NSConcreteStackBlock;
              block[1] = 3221225472;
              block[2] = sub_1000AAAF0;
              block[3] = &unk_100315EB8;
              block[4] = v1;
              v26 = v9;
              dispatch_async(v10, block);

              goto LABEL_13;
            }
          }

          v4 = [v2 countByEnumeratingWithState:&v27 objects:v41 count:16];
          if (v4)
          {
            continue;
          }

          break;
        }
      }

LABEL_13:

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v12 = Logger;
        Class = object_getClass(v1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v1);
        Name = sel_getName("start");
        if (*(v1 + 8))
        {
          v17 = &stru_10031EA18;
        }

        else
        {
          v17 = @"has not ";
        }

        v18 = 45;
        if (isMetaClass)
        {
          v18 = 43;
        }

        v12(6, "%c[%{public}s %{public}s]:%i Touch service %{public}@started", v18, ClassName, Name, 130, v17);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v19 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = object_getClass(v1);
        if (class_isMetaClass(v20))
        {
          v21 = 43;
        }

        else
        {
          v21 = 45;
        }

        v22 = object_getClassName(v1);
        v23 = sel_getName("start");
        if (*(v1 + 8))
        {
          v24 = &stru_10031EA18;
        }

        else
        {
          v24 = @"has not ";
        }

        *buf = 67110146;
        v32 = v21;
        v33 = 2082;
        v34 = v22;
        v35 = 2082;
        v36 = v23;
        v37 = 1024;
        v38 = 130;
        v39 = 2114;
        v40 = v24;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Touch service %{public}@started", buf, 0x2Cu);
      }
    }

    objc_sync_exit(v1);
  }
}

void sub_1000AAAF0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 16));
  }

  else
  {
    WeakRetained = 0;
  }

  v4 = WeakRetained;
  [WeakRetained touchSystemReady:*(a1 + 40)];
}

void sub_1000AAB50(void *a1)
{
  if (a1)
  {
    obj = a1;
    objc_sync_enter(obj);
    [obj[3] cancel];
    *(obj + 9) = 0;
    objc_sync_exit(obj);
  }
}

void *sub_1000AAD04(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v10 = a2;
  v11 = a3;
  v12 = a4;
  if (a1)
  {
    v25.receiver = a1;
    v25.super_class = NFAssertPKWalletForegroundPresentment;
    v13 = objc_msgSendSuper2(&v25, "initWithRemoteAssertion:xpcConnection:", v11, v12);
    a1 = v13;
    if (v13)
    {
      objc_storeStrong(v13 + 4, a2);
      v14 = [v10 expressPassIDList];
      v15 = [v14 copy];
      v16 = a1[6];
      a1[6] = v15;

      v17 = objc_opt_new();
      v18 = a1[5];
      a1[5] = v17;
    }

    else
    {
      if (!a5)
      {
        a1 = 0;
        goto LABEL_7;
      }

      v24 = [NSError alloc];
      v18 = [NSString stringWithUTF8String:"nfcd"];
      v26[0] = NSLocalizedDescriptionKey;
      v19 = [NSString stringWithUTF8String:"Unexpected Result"];
      v27[0] = v19;
      v27[1] = &off_100330DE0;
      v26[1] = @"Line";
      v26[2] = @"Method";
      v20 = [[NSString alloc] initWithFormat:@"%s", sel_getName("initWithConfiguration:remoteAssertion:xpcConnection:outError:")];
      v27[2] = v20;
      v26[3] = NSDebugDescriptionErrorKey;
      v21 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("initWithConfiguration:remoteAssertion:xpcConnection:outError:"), 60];
      v27[3] = v21;
      v22 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:4];
      *a5 = [v24 initWithDomain:v18 code:13 userInfo:v22];
    }
  }

LABEL_7:

  return a1;
}

void sub_1000AB4F4(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) options];
  if ((v2 & 4) != 0)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    if (v3)
    {
      v3 = v3[4];
    }

    v5 = v3;
    v6 = [v5 clientInfo];
    sub_10017DD1C(v4, v6);
  }

  if (([*(*(a1 + 32) + 32) options] & 8) == 0)
  {
    goto LABEL_91;
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    v7 = v7[54];
  }

  v8 = v7;
  v9 = [v8 count];

  v10 = *(a1 + 40);
  if (v10)
  {
    v10 = v10[54];
  }

  v11 = v10;
  v12 = [v11 count];

  v13 = *(a1 + 40);
  if (v13)
  {
    v13 = v13[54];
  }

  v14 = v13;
  v15 = v14;
  v16 = *(a1 + 32);
  if (v16)
  {
    v17 = *(v16 + 32);
  }

  else
  {
    v17 = 0;
  }

  [v14 removeObject:v17];

  v18 = [*(a1 + 40) expressModeManager];
  v90 = v18;
  if (v9 == 1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v20 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 48));
      v24 = 45;
      if (isMetaClass)
      {
        v24 = 43;
      }

      v20(6, "%c[%{public}s %{public}s]:%i Clearing visibility restriction", v24, ClassName, Name, 284);
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
      *buf = 67109890;
      v96 = v27;
      v97 = 2082;
      v98 = v28;
      v99 = 2082;
      v100 = v29;
      v101 = 1024;
      v102 = 284;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Clearing visibility restriction", buf, 0x22u);
    }

    v30 = v90;
    if (v90)
    {
      sub_10003B14C(v90, v90[6], 0);
      v30 = v90;
LABEL_65:
      v57 = *(v30 + 181);
LABEL_66:
      v58 = sub_100006030(v30);
      if (sub_1000065FC(*(a1 + 40)))
      {
        v59 = *(a1 + 40);
        v60 = [*(a1 + 32) xpc];
        v61 = sub_1000E9E3C(v59, v60);

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v62 = NFLogGetLogger();
        if (v62)
        {
          v63 = v62;
          v64 = object_getClass(*(a1 + 32));
          v65 = class_isMetaClass(v64);
          v85 = object_getClassName(*(a1 + 32));
          v87 = sel_getName(*(a1 + 48));
          v66 = 45;
          if (v65)
          {
            v66 = 43;
          }

          v63(6, "%c[%{public}s %{public}s]:%i expressInProgress=%d, expressIsActive=%d, requestorHoldsActiveSession=%d", v66, v85, v87, 310, v57 & 1, v58, v61);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v67 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
        {
          v68 = object_getClass(*(a1 + 32));
          if (class_isMetaClass(v68))
          {
            v69 = 43;
          }

          else
          {
            v69 = 45;
          }

          v70 = object_getClassName(*(a1 + 32));
          v71 = sel_getName(*(a1 + 48));
          *buf = 67110658;
          v96 = v69;
          v97 = 2082;
          v98 = v70;
          v99 = 2082;
          v100 = v71;
          v101 = 1024;
          v102 = 310;
          v103 = 1024;
          *v104 = v57 & 1;
          *&v104[4] = 1024;
          *&v104[6] = v58;
          v105 = 1024;
          v106 = v61;
          _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i expressInProgress=%d, expressIsActive=%d, requestorHoldsActiveSession=%d", buf, 0x34u);
        }

        if (!(v57 & 1 | !v58) && ((v61 ^ 1) & 1) == 0)
        {
          v72 = [*(a1 + 40) lastKnownRoutingConfig];
          v73 = [v72 contactlessOnAny];

          if (!v73)
          {
LABEL_79:
            sub_10002E9BC(v90);

            [*(a1 + 32) setState:4];
LABEL_92:
            [*(a1 + 40) maybeStartNextSession];
            return;
          }
        }
      }

      else
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v74 = NFLogGetLogger();
        if (v74)
        {
          v75 = v74;
          v76 = object_getClass(*(a1 + 32));
          v77 = class_isMetaClass(v76);
          v78 = object_getClassName(*(a1 + 32));
          v88 = sel_getName(*(a1 + 48));
          v79 = 45;
          if (v77)
          {
            v79 = 43;
          }

          v75(6, "%c[%{public}s %{public}s]:%i expressInProgress=%d, expressIsActive=%d", v79, v78, v88, 308, v57 & 1, v58);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v80 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
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
          v84 = sel_getName(*(a1 + 48));
          *buf = 67110402;
          v96 = v82;
          v97 = 2082;
          v98 = v83;
          v99 = 2082;
          v100 = v84;
          v101 = 1024;
          v102 = 308;
          v103 = 1024;
          *v104 = v57 & 1;
          *&v104[4] = 1024;
          *&v104[6] = v58;
          _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i expressInProgress=%d, expressIsActive=%d", buf, 0x2Eu);
        }

        if (!(v57 & 1 | !v58))
        {
          goto LABEL_79;
        }
      }

LABEL_91:
      [*(a1 + 32) setState:4];
      if ((v2 & 4) == 0)
      {
        return;
      }

      goto LABEL_92;
    }

LABEL_95:
    v57 = 0;
    goto LABEL_66;
  }

  if (v12 == 2)
  {
    sub_10017AC8C(*(a1 + 40), 7);
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    v31 = v94 = 0u;
    v32 = [v31 countByEnumeratingWithState:&v91 objects:v107 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v92;
      while (2)
      {
        v35 = 0;
        do
        {
          if (*v92 != v34)
          {
            objc_enumerationMutation(v31);
          }

          v36 = *(*(&v91 + 1) + 8 * v35);
          if (v36)
          {
            v37 = *(v36 + 32);
          }

          else
          {
            v37 = 0;
          }

          if (([v37 options] & 8) != 0)
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v39 = NFLogGetLogger();
            if (v39)
            {
              v40 = v39;
              v41 = object_getClass(*(a1 + 32));
              if (class_isMetaClass(v41))
              {
                v42 = 43;
              }

              else
              {
                v42 = 45;
              }

              v43 = object_getClassName(*(a1 + 32));
              v44 = sel_getName(*(a1 + 48));
              if (v36)
              {
                v45 = *(v36 + 32);
              }

              else
              {
                v45 = 0;
              }

              v46 = [v45 expressPassIDList];
              v40(6, "%c[%{public}s %{public}s]:%i Restore global restriction list to %{public}@", v42, v43, v44, 290, v46);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v47 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
            {
              v48 = object_getClass(*(a1 + 32));
              if (class_isMetaClass(v48))
              {
                v49 = 43;
              }

              else
              {
                v49 = 45;
              }

              v89 = v49;
              v50 = object_getClassName(*(a1 + 32));
              v51 = sel_getName(*(a1 + 48));
              if (v36)
              {
                v52 = *(v36 + 32);
              }

              else
              {
                v52 = 0;
              }

              v53 = v52;
              v54 = [v53 expressPassIDList];
              *buf = 67110146;
              v96 = v89;
              v97 = 2082;
              v98 = v50;
              v99 = 2082;
              v100 = v51;
              v101 = 1024;
              v102 = 290;
              v103 = 2114;
              *v104 = v54;
              _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Restore global restriction list to %{public}@", buf, 0x2Cu);
            }

            if (v36)
            {
              v55 = *(v36 + 32);
            }

            else
            {
              v55 = 0;
            }

            v56 = [v55 expressPassIDList];
            if (v90)
            {
              sub_10003B14C(v90, v90[6], v56);
            }

            goto LABEL_64;
          }

          v35 = v35 + 1;
        }

        while (v33 != v35);
        v38 = [v31 countByEnumeratingWithState:&v91 objects:v107 count:16];
        v33 = v38;
        if (v38)
        {
          continue;
        }

        break;
      }
    }

LABEL_64:

    v30 = v90;
    if (v90)
    {
      goto LABEL_65;
    }

    goto LABEL_95;
  }

  if ((v2 & 4) != 0)
  {
    [*(a1 + 40) maybeStartNextSession];
    v18 = v90;
  }
}

id sub_1000ABE38(void *a1, void *a2)
{
  v4 = objc_opt_new();
  v5 = v4;
  if (!a2)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v14 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("inputTags:");
      v18 = 45;
      if (isMetaClass)
      {
        v18 = 43;
      }

      v14(3, "%c[%{public}s %{public}s]:%i Expecting error", v18, ClassName, Name, 186);
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

      *buf = 67109890;
      v41 = v21;
      v42 = 2082;
      v43 = object_getClassName(a1);
      v44 = 2082;
      v45 = sel_getName("inputTags:");
      v46 = 1024;
      v47 = 186;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Expecting error", buf, 0x22u);
    }

    goto LABEL_30;
  }

  if (!v4)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v22 = NFLogGetLogger();
    if (v22)
    {
      v23 = v22;
      v24 = object_getClass(a1);
      v25 = class_isMetaClass(v24);
      v26 = object_getClassName(a1);
      v37 = sel_getName("inputTags:");
      v27 = 45;
      if (v25)
      {
        v27 = 43;
      }

      v23(3, "%c[%{public}s %{public}s]:%i Could not create array", v27, v26, v37, 191);
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

      *buf = 67109890;
      v41 = v30;
      v42 = 2082;
      v43 = object_getClassName(a1);
      v44 = 2082;
      v45 = sel_getName("inputTags:");
      v46 = 1024;
      v47 = 191;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Could not create array", buf, 0x22u);
    }

    v31 = [NSError alloc];
    v32 = [NSString stringWithUTF8String:"nfcd"];
    v38 = NSLocalizedDescriptionKey;
    v33 = [NSString stringWithUTF8String:"No resources"];
    v39 = v33;
    v34 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    *a2 = [v31 initWithDomain:v32 code:34 userInfo:v34];

LABEL_30:
    v12 = 0;
    goto LABEL_31;
  }

  v6 = [NFTLV TLVWithTag:24352 value:a1[1]];
  [v5 addObject:v6];

  v7 = [NFTLV TLVWithTag:81 value:a1[2]];
  [v5 addObject:v7];

  v8 = [NFTLV TLVWithTag:82 value:a1[3]];
  [v5 addObject:v8];

  if (a1[4])
  {
    v9 = [NFTLV TLVWithTag:83 value:?];
    [v5 addObject:v9];
  }

  if (a1[5])
  {
    v10 = [NFTLV TLVWithTag:85 value:?];
    [v5 addObject:v10];
  }

  if (a1[6])
  {
    v11 = [NFTLV TLVWithTag:87 value:?];
    [v5 addObject:v11];
  }

  v12 = v5;
LABEL_31:

  return v12;
}

id *sub_1000AC3A0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = objc_opt_self();
  if (!a4)
  {
    v12 = v9;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v14 = Logger;
      Class = object_getClass(v12);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v12);
      Name = sel_getName("signInputTableWithChallenge:data:error:");
      v18 = 45;
      if (isMetaClass)
      {
        v18 = 43;
      }

      v14(3, "%c[%{public}s %{public}s]:%i Expecting error", v18, ClassName, Name, 346);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v19 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = object_getClass(v12);
      if (class_isMetaClass(v20))
      {
        v21 = 43;
      }

      else
      {
        v21 = 45;
      }

      *buf = 67109890;
      v26 = v21;
      v27 = 2082;
      v28 = object_getClassName(v12);
      v29 = 2082;
      v30 = sel_getName("signInputTableWithChallenge:data:error:");
      v31 = 1024;
      v32 = 346;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Expecting error", buf, 0x22u);
    }

    goto LABEL_18;
  }

  if (!v7)
  {
    sub_10013E33C(@"Could not create NFTrustSignInputTable, challenge is nil");
    *a4 = p_isa = 0;
    goto LABEL_19;
  }

  if ([v7 length] != 8)
  {
    v22 = [[NSString alloc] initWithFormat:@"Could not create NFTrustSignInputTable, challenge must be 8 bytes long (got %lu bytes)", objc_msgSend(v7, "length")];
    *a4 = sub_10013E33C(v22);

LABEL_18:
    p_isa = 0;
    goto LABEL_19;
  }

  v10 = [NFTrustSignInputTable alloc];
  p_isa = &v10->super.isa;
  if (v10)
  {
    objc_storeStrong(&v10->_challenge, a2);
    objc_storeStrong(p_isa + 2, a3);
  }

LABEL_19:

  return p_isa;
}

void *sub_1000AC624(void *a1, void *a2)
{
  v2 = a1;
  if (a1)
  {
    v4 = objc_opt_new();
    v5 = v4;
    if (a2)
    {
      if (v4)
      {
        v6 = [NFTLV TLVWithTag:144 unsignedChar:0];
        [v5 addObject:v6];

        v7 = [NFTLV TLVWithTag:145 value:v2[1]];
        [v5 addObject:v7];

        if (v2[2])
        {
          v8 = [NFTLV TLVWithTag:148 value:?];
          [v5 addObject:v8];
        }

        v2 = v5;
        goto LABEL_28;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v19 = Logger;
        Class = object_getClass(v2);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v2);
        Name = sel_getName("inputTags:");
        v23 = 45;
        if (isMetaClass)
        {
          v23 = 43;
        }

        v19(3, "%c[%{public}s %{public}s]:%i Could not create array", v23, ClassName, Name, 381);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v24 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = object_getClass(v2);
        if (class_isMetaClass(v25))
        {
          v26 = 43;
        }

        else
        {
          v26 = 45;
        }

        *buf = 67109890;
        v37 = v26;
        v38 = 2082;
        v39 = object_getClassName(v2);
        v40 = 2082;
        v41 = sel_getName("inputTags:");
        v42 = 1024;
        v43 = 381;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Could not create array", buf, 0x22u);
      }

      v27 = [NSError alloc];
      v28 = [NSString stringWithUTF8String:"nfcd"];
      v34 = NSLocalizedDescriptionKey;
      v29 = [NSString stringWithUTF8String:"No resources"];
      v35 = v29;
      v30 = [NSDictionary dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      *a2 = [v27 initWithDomain:v28 code:34 userInfo:v30];
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v9 = NFLogGetLogger();
      if (v9)
      {
        v10 = v9;
        v11 = object_getClass(v2);
        v12 = class_isMetaClass(v11);
        v13 = object_getClassName(v2);
        v32 = sel_getName("inputTags:");
        v14 = 45;
        if (v12)
        {
          v14 = 43;
        }

        v10(3, "%c[%{public}s %{public}s]:%i Expecting error", v14, v13, v32, 376);
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

        *buf = 67109890;
        v37 = v17;
        v38 = 2082;
        v39 = object_getClassName(v2);
        v40 = 2082;
        v41 = sel_getName("inputTags:");
        v42 = 1024;
        v43 = 376;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Expecting error", buf, 0x22u);
      }
    }

    v2 = 0;
LABEL_28:
  }

  return v2;
}

id sub_1000ACA34(void *a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {
      v4 = sub_1000AC624(a1, a2);
      if (!*a2)
      {
        v5 = [NFTLV TLVWithTag:32525 children:v4];
        v6 = v5;
        if (v5)
        {
          v7 = [v5 asData];
        }

        else
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          Logger = NFLogGetLogger();
          if (Logger)
          {
            v17 = Logger;
            Class = object_getClass(a1);
            isMetaClass = class_isMetaClass(Class);
            ClassName = object_getClassName(a1);
            Name = sel_getName("getValue:");
            v21 = 45;
            if (isMetaClass)
            {
              v21 = 43;
            }

            v17(3, "%c[%{public}s %{public}s]:%i Could not create an Operation Dictionary TLV", v21, ClassName, Name, 412);
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

            *buf = 67109890;
            v35 = v24;
            v36 = 2082;
            v37 = object_getClassName(a1);
            v38 = 2082;
            v39 = sel_getName("getValue:");
            v40 = 1024;
            v41 = 412;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Could not create an Operation Dictionary TLV", buf, 0x22u);
          }

          v25 = [NSError alloc];
          v26 = [NSString stringWithUTF8String:"nfcd"];
          v32 = NSLocalizedDescriptionKey;
          v27 = [NSString stringWithUTF8String:"No resources"];
          v33 = v27;
          v28 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
          *a2 = [v25 initWithDomain:v26 code:34 userInfo:v28];

          v7 = 0;
        }

        goto LABEL_27;
      }
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v8 = NFLogGetLogger();
      if (v8)
      {
        v9 = v8;
        v10 = object_getClass(a1);
        v11 = class_isMetaClass(v10);
        v12 = object_getClassName(a1);
        v30 = sel_getName("getValue:");
        v13 = 45;
        if (v11)
        {
          v13 = 43;
        }

        v9(3, "%c[%{public}s %{public}s]:%i Expecting error", v13, v12, v30, 399);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v4 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
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

        *buf = 67109890;
        v35 = v15;
        v36 = 2082;
        v37 = object_getClassName(a1);
        v38 = 2082;
        v39 = sel_getName("getValue:");
        v40 = 1024;
        v41 = 399;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Expecting error", buf, 0x22u);
      }
    }

    v7 = 0;
LABEL_27:

    goto LABEL_28;
  }

  v7 = 0;
LABEL_28:

  return v7;
}

id *sub_1000ACE4C(id *a1, void *a2, void *a3, unsigned int a4, void *a5)
{
  v9 = a3;
  if (a1)
  {
    v10 = sub_1000AC624(a2, a5);
    v11 = [NFTLV TLVsWithData:v9];
    v12 = v11;
    if (!a5)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v28 = Logger;
        Class = object_getClass(a1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(a1);
        Name = sel_getName("signOutputTableWithInputTable:data:localValidation:error:");
        v32 = 45;
        if (isMetaClass)
        {
          v32 = 43;
        }

        v28(3, "%c[%{public}s %{public}s]:%i Expecting error", v32, ClassName, Name, 445);
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

        v36 = object_getClassName(a1);
        v37 = sel_getName("signOutputTableWithInputTable:data:localValidation:error:");
        *buf = 67109890;
        v95 = v35;
        v96 = 2082;
        v97 = v36;
        v98 = 2082;
        v99 = v37;
        v100 = 1024;
        v101 = 445;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Expecting error", buf, 0x22u);
      }

      a1 = 0;
      goto LABEL_65;
    }

    if (v11)
    {
      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      v13 = v11;
      v14 = [v13 countByEnumeratingWithState:&v87 objects:v93 count:16];
      if (v14)
      {
        v15 = v14;
        v79 = a4;
        obj = v13;
        v81 = a5;
        v82 = v10;
        v83 = v9;
        v84 = v12;
        v16 = 0;
        v17 = *v88;
        v18 = a1 + 3;
        v19 = a1;
        v20 = a1 + 2;
        v80 = v19;
        v21 = v19 + 1;
        while (2)
        {
          for (i = 0; i != v15; i = i + 1)
          {
            v23 = v16;
            if (*v88 != v17)
            {
              objc_enumerationMutation(obj);
            }

            v24 = *(*(&v87 + 1) + 8 * i);
            v16 = v24;

            v25 = [v16 tag];
            v26 = v18;
            if (v25 != 24375)
            {
              v26 = v21;
              if (v25 != 151)
              {
                v26 = v20;
                if (v25 != 150)
                {
                  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                  v39 = NFLogGetLogger();
                  v12 = v84;
                  if (v39)
                  {
                    v40 = v39;
                    v41 = object_getClass(v80);
                    v42 = class_isMetaClass(v41);
                    v43 = object_getClassName(v80);
                    v77 = sel_getName("signOutputTableWithInputTable:data:localValidation:error:");
                    v44 = 45;
                    if (v42)
                    {
                      v44 = 43;
                    }

                    v40(3, "%c[%{public}s %{public}s]:%i Sign returned an unexpected tag", v44, v43, v77, 468);
                  }

                  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                  v45 = NFSharedLogGetLogger();
                  v9 = v83;
                  if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
                  {
                    v46 = object_getClass(v80);
                    if (class_isMetaClass(v46))
                    {
                      v47 = 43;
                    }

                    else
                    {
                      v47 = 45;
                    }

                    v48 = object_getClassName(v80);
                    v49 = sel_getName("signOutputTableWithInputTable:data:localValidation:error:");
                    *buf = 67109890;
                    v95 = v47;
                    v96 = 2082;
                    v97 = v48;
                    v98 = 2082;
                    v99 = v49;
                    v100 = 1024;
                    v101 = 468;
                    _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Sign returned an unexpected tag", buf, 0x22u);
                  }

                  v50 = [[NSString alloc] initWithFormat:@"Could not sign, unexpected tag %u returned from SE", objc_msgSend(v16, "tag")];
                  *v81 = sub_10013DC5C(v50);

                  a1 = 0;
                  v10 = v82;
                  goto LABEL_65;
                }
              }
            }

            objc_storeStrong(v26, v24);
          }

          v15 = [obj countByEnumeratingWithState:&v87 objects:v93 count:16];
          if (v15)
          {
            continue;
          }

          break;
        }

        v9 = v83;
        v12 = v84;
        a1 = v80;
        a5 = v81;
        v13 = obj;
        a4 = v79;
      }

      if (a1[3])
      {
        if (a4)
        {
          if (a1[1])
          {
            [v10 addObject:?];
          }

          else if (a4 <= 7)
          {
            if (((1 << a4) & 0x22) != 0)
            {
              v51 = 1;
            }

            else if (((1 << a4) & 0x44) != 0)
            {
              v51 = 2;
            }

            else
            {
              if (((1 << a4) & 0x90) == 0)
              {
                goto LABEL_50;
              }

              v51 = 4;
            }

            v52 = [NFTLV TLVWithTag:151 unsignedChar:v51];
            [v10 addObject:v52];
          }
        }

LABEL_50:
        if (a1[2])
        {
          [v10 addObject:?];
        }

        v53 = [NFTLV TLVWithTag:32525 children:v10];
        v54 = v53;
        if (v53)
        {
          v55 = [v53 asMutableData];
          v56 = a1;
          a1 = v55;
          v57 = [v56[3] asData];
          [a1 appendData:v57];
        }

        else
        {
          v58 = a5;
          v85 = v12;
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v59 = NFLogGetLogger();
          if (v59)
          {
            v60 = v59;
            v61 = object_getClass(a1);
            v62 = class_isMetaClass(v61);
            v63 = v10;
            v64 = object_getClassName(a1);
            v78 = sel_getName("signOutputTableWithInputTable:data:localValidation:error:");
            v65 = 45;
            if (v62)
            {
              v65 = 43;
            }

            v75 = v64;
            v10 = v63;
            v60(3, "%c[%{public}s %{public}s]:%i Could not Operation Dictionary DGI", v65, v75, v78, 508);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v66 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
          {
            v67 = object_getClass(a1);
            if (class_isMetaClass(v67))
            {
              v68 = 43;
            }

            else
            {
              v68 = 45;
            }

            v69 = object_getClassName(a1);
            v70 = sel_getName("signOutputTableWithInputTable:data:localValidation:error:");
            *buf = 67109890;
            v95 = v68;
            v96 = 2082;
            v97 = v69;
            v98 = 2082;
            v99 = v70;
            v100 = 1024;
            v101 = 508;
            _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Could not Operation Dictionary DGI", buf, 0x22u);
          }

          v71 = [NSError alloc];
          v57 = [NSString stringWithUTF8String:"nfcd"];
          v91 = NSLocalizedDescriptionKey;
          v72 = [NSString stringWithUTF8String:"No resources"];
          v92 = v72;
          v73 = [NSDictionary dictionaryWithObjects:&v92 forKeys:&v91 count:1];
          *v58 = [v71 initWithDomain:v57 code:34 userInfo:v73];

          a1 = 0;
          v12 = v85;
        }

        goto LABEL_65;
      }

      v38 = @"Could not sign missing tag 0x5F37 from SE response";
    }

    else
    {
      v38 = @"Error in SE response";
    }

    sub_10013DC5C(v38);
    *a5 = a1 = 0;
LABEL_65:
  }

  return a1;
}

id sub_1000AD650(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, id *a6)
{
  v40 = 0;
  v8 = sub_100158334(a1, 128, a2, a3, a4, a5, &v40);
  v9 = v40;
  v10 = v8;
  *a6 = v8;
  if (v9)
  {
    v11 = v9;
LABEL_3:
    v12 = v11;
    goto LABEL_27;
  }

  if (v8)
  {
    v13 = [v8 status];
    if (v13 == 36864)
    {
      v12 = 0;
      goto LABEL_27;
    }

    if (v13 == 26881)
    {
      v11 = sub_10013DD60();
      goto LABEL_3;
    }

    v29 = [NSError alloc];
    v30 = [*a6 status];
    v41 = NSLocalizedDescriptionKey;
    v31 = [*a6 status];
    if (v31 == 36864)
    {
      v32 = "Success";
    }

    else
    {
      v33 = &word_100318090;
      v34 = 24;
      v32 = "Unknown Error";
      while (--v34)
      {
        v35 = v33 + 8;
        v36 = *v33;
        v33 += 8;
        if (v36 == v31)
        {
          v32 = *(v35 - 1);
          break;
        }
      }
    }

    v26 = [NSString stringWithUTF8String:v32];
    v42 = v26;
    v37 = [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1];
    v12 = [v29 initWithDomain:@"GP" code:v30 userInfo:v37];
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v15 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("sendTrustCommand:p1:p2:data:rapdu:");
      v19 = 45;
      if (isMetaClass)
      {
        v19 = 43;
      }

      v15(3, "%c[%{public}s %{public}s]:%i Failed to send trust command, expecting rapdu", v19, ClassName, Name, 557);
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
      v24 = sel_getName("sendTrustCommand:p1:p2:data:rapdu:");
      *buf = 67109890;
      v46 = v22;
      v47 = 2082;
      v48 = v23;
      v49 = 2082;
      v50 = v24;
      v51 = 1024;
      v52 = 557;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to send trust command, expecting rapdu", buf, 0x22u);
    }

    v25 = [NSError alloc];
    v26 = [NSString stringWithUTF8String:"nfcd"];
    v43 = NSLocalizedDescriptionKey;
    v27 = [NSString stringWithUTF8String:"Command Error"];
    v44 = v27;
    v28 = [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
    v12 = [v25 initWithDomain:v26 code:16 userInfo:v28];
  }

LABEL_27:

  return v12;
}

id sub_1000AD9F4(id a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (v3)
    {
      v44 = 0;
      v5 = sub_10008943C(a1, [v3 unsignedShortValue], &v44);
      v6 = v44;
      if (v6)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          v8 = Logger;
          Class = object_getClass(a1);
          isMetaClass = class_isMetaClass(Class);
          ClassName = object_getClassName(a1);
          Name = sel_getName("deleteKeyInSlot:");
          v11 = 45;
          if (isMetaClass)
          {
            v11 = 43;
          }

          v8(3, "%c[%{public}s %{public}s]:%i Error while sending TrustCommand : %{public}@", v11, ClassName, Name, 585, v6);
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
          v16 = sel_getName("deleteKeyInSlot:");
          *buf = 67110146;
          v48 = v14;
          v49 = 2082;
          v50 = v15;
          v51 = 2082;
          v52 = v16;
          v53 = 1024;
          v54 = 585;
          v55 = 2114;
          v56 = v6;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Error while sending TrustCommand : %{public}@", buf, 0x2Cu);
        }

        a1 = v6;
      }

      else if ([v5 status] == 36864 || objc_msgSend(v5, "status") == 27272)
      {
        a1 = 0;
      }

      else
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v17 = NFLogGetLogger();
        if (v17)
        {
          v18 = v17;
          v19 = object_getClass(a1);
          v20 = class_isMetaClass(v19);
          v21 = object_getClassName(a1);
          v22 = sel_getName("deleteKeyInSlot:");
          v43 = [v5 status];
          v23 = 45;
          if (v20)
          {
            v23 = 43;
          }

          v18(3, "%c[%{public}s %{public}s]:%i Error status on delete 0x%X", v23, v21, v22, 589, v43);
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
          v28 = sel_getName("deleteKeyInSlot:");
          v29 = [v5 status];
          *buf = 67110146;
          v48 = v26;
          v49 = 2082;
          v50 = v27;
          v51 = 2082;
          v52 = v28;
          v53 = 1024;
          v54 = 589;
          v55 = 1024;
          LODWORD(v56) = v29;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Error status on delete 0x%X", buf, 0x28u);
        }

        v30 = [NSError alloc];
        v31 = [v5 status];
        v45 = NSLocalizedDescriptionKey;
        v32 = [v5 status];
        if (v32 == 36864)
        {
          v33 = "Success";
        }

        else
        {
          v34 = &word_100318090;
          v35 = 24;
          v33 = "Unknown Error";
          while (--v35)
          {
            v36 = v34 + 8;
            v37 = *v34;
            v34 += 8;
            if (v37 == v32)
            {
              v33 = *(v36 - 1);
              break;
            }
          }
        }

        v38 = [NSString stringWithUTF8String:v33];
        v46 = v38;
        v39 = [NSDictionary dictionaryWithObjects:&v46 forKeys:&v45 count:1];
        a1 = [v30 initWithDomain:@"GP" code:v31 userInfo:v39];
      }
    }

    else
    {
      a1 = sub_10013E33C(@"slot is nil");
    }
  }

  return a1;
}

id *sub_1000ADE64(id *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (v3)
    {
      v5 = [v3 unsignedShortValue];
      v46 = 1;
      v6 = [[NSData alloc] initWithBytes:&v46 length:1];
      v45 = __rev16(v5);
      v7 = [[NSData alloc] initWithBytes:&v45 length:2];
      v44[0] = [v6 DERItem];
      v44[1] = v8;
      v44[2] = [v7 DERItem];
      v44[3] = v9;
      v43 = 0;
      v10 = sub_1000AE24C(v44, 2u, &unk_100296E70, &v43);
      v11 = v43;
      v12 = v11;
      if (v10 || !v11)
      {
        a1 = sub_10013DC5C(@"Error while encoding GetKeyInputData");
        v37 = 0;
        v26 = 0;
      }

      else
      {
        v42 = 0;
        v13 = v11;
        v14 = [NSData alloc];
        v48 = 1;
        v15 = [v14 initWithBytes:&v48 length:1];
        v16 = [NSData alloc];
        v47 = 272;
        v17 = [v16 initWithBytes:&v47 length:2];
        *buf = [v15 DERItem];
        *v50 = v18;
        *&v50[8] = [v17 DERItem];
        *&v50[16] = v19;
        v20 = [v13 DERItem];
        v22 = v21;

        *&v50[24] = v20;
        *&v50[32] = v22;
        LODWORD(v13) = sub_1000AE24C(buf, 3u, &unk_100296EA0, &v42);

        v23 = v42;
        v24 = v23;
        if (v13 || !v23)
        {
          a1 = sub_10013DC5C(@"Error while encoding GetKeyInputCommandData");
          v37 = 0;
          v26 = 0;
        }

        else
        {
          v41 = 0;
          v25 = sub_1000AD650(a1, 160, 128, 0, v23, &v41);
          v26 = v41;
          if (v25)
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            Logger = NFLogGetLogger();
            if (Logger)
            {
              v28 = Logger;
              Class = object_getClass(a1);
              isMetaClass = class_isMetaClass(Class);
              sel = object_getClassName(a1);
              Name = sel_getName("getKeyInSlot:");
              v31 = 45;
              if (isMetaClass)
              {
                v31 = 43;
              }

              v28(3, "%c[%{public}s %{public}s]:%i Error while sending TrustCommand : %{public}@", v31, sel, Name, 638, v25);
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

              ClassName = object_getClassName(a1);
              v36 = sel_getName("getKeyInSlot:");
              *buf = 67110146;
              *&buf[4] = v34;
              *v50 = 2082;
              *&v50[2] = ClassName;
              *&v50[10] = 2082;
              *&v50[12] = v36;
              *&v50[20] = 1024;
              *&v50[22] = 638;
              *&v50[26] = 2114;
              *&v50[28] = v25;
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Error while sending TrustCommand : %{public}@", buf, 0x2Cu);
            }
          }

          v37 = v25;
          a1 = v37;
        }
      }
    }

    else
    {
      a1 = sub_10013E33C(@"slot is nil");
    }
  }

  return a1;
}

uint64_t sub_1000AE24C(unint64_t a1, unsigned int a2, uint64_t a3, void *a4)
{
  v12 = DERLengthOfEncodedSequence(0x2000000000000010, a1, a2, a3);
  v8 = [[NSMutableData alloc] initWithLength:v12];
  v9 = DEREncodeSequence(0x2000000000000010, a1, a2, a3, [v8 mutableBytes], &v12);
  if (!v9)
  {
    v10 = v8;
    *a4 = v8;
  }

  return v9;
}

NSObject *sub_1000AE30C(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = v8;
  if (a1)
  {
    if (v8)
    {
      if (v7)
      {
        v174 = a4;
        v175 = a1;
        v10 = [v8 subjectIdentifier];
        v11 = v10;
        v12 = objc_opt_self();
        if (v11)
        {
          if ([v11 length] && objc_msgSend(v11, "length") < 0x41)
          {
            *buf = v12;
            *v195 = &OBJC_METACLASS___NFTrustCreateKeyInputTable;
            v71 = [(uint8_t *)buf new];
            v38 = v71;
            if (!v71)
            {
LABEL_31:

              if (!v38)
              {
                v28 = sub_10013DC5C(@"Could not create key input table");
LABEL_130:

                goto LABEL_131;
              }

              v39 = [v9 discretionaryData];

              if (v39)
              {
                v40 = [v9 discretionaryData];
                v41 = v38[4];
                v38[4] = v40;
              }

              v42 = [v9 localValidations];

              if (v42)
              {
                *buf = 0;
                *v195 = buf;
                *&v195[8] = 0x3032000000;
                *&v195[16] = sub_100006A6C;
                *&v195[24] = sub_1000AF3DC;
                *&v195[32] = objc_opt_new();
                v43 = [v9 localValidations];
                v179[0] = _NSConcreteStackBlock;
                v179[1] = 3221225472;
                v179[2] = sub_1000AF3E4;
                v179[3] = &unk_100318060;
                v179[4] = buf;
                [v43 enumerateObjectsUsingBlock:v179];

                objc_storeStrong(v38 + 5, *(*v195 + 40));
                _Block_object_dispose(buf, 8);
              }

              v44 = [v9 counterLimit];

              if (v44)
              {
                v45 = objc_opt_new();
                v46 = [v9 counterLimit];
                v47 = [v46 unsignedIntValue];

                *buf = v47;
                [v45 appendBytes:&buf[3] length:1];
                [v45 appendBytes:&buf[2] length:1];
                [v45 appendBytes:&buf[1] length:1];
                [v45 appendBytes:buf length:1];
                v48 = v38[6];
                v38[6] = v45;
              }

              v178 = 0;
              v49 = sub_1000ABE38(v38, &v178);
              v50 = 0;
              if (!v178)
              {
                v51 = [NFTLV TLVWithTag:32551 children:v49];
                v50 = [v51 asData];
              }

              v52 = v178;
              if (v52)
              {
                v28 = v52;
                v53 = 0;
LABEL_129:

                goto LABEL_130;
              }

              v177 = 0;
              v54 = v175;
              v28 = sub_1000AD650(v175, 193, 0, [v7 unsignedCharValue], v50, &v177);
              v55 = v177;
              v170 = v55;
              v171 = v38;
              if (v28)
              {
                v56 = v9;
                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                Logger = NFLogGetLogger();
                if (Logger)
                {
                  v58 = Logger;
                  Class = object_getClass(v175);
                  isMetaClass = class_isMetaClass(Class);
                  ClassName = object_getClassName(v175);
                  Name = sel_getName("createKeyInSlot:request:response:");
                  v54 = v175;
                  v61 = 45;
                  if (isMetaClass)
                  {
                    v61 = 43;
                  }

                  v58(3, "%c[%{public}s %{public}s]:%i Error while sending TrustCommand : %{public}@", v61, ClassName, Name, 712, v28);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v62 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
                {
                  v63 = object_getClass(v54);
                  v64 = v50;
                  if (class_isMetaClass(v63))
                  {
                    v65 = 43;
                  }

                  else
                  {
                    v65 = 45;
                  }

                  v66 = object_getClassName(v54);
                  v67 = sel_getName("createKeyInSlot:request:response:");
                  *buf = 67110146;
                  *&buf[4] = v65;
                  v50 = v64;
                  *v195 = 2082;
                  *&v195[2] = v66;
                  v54 = v175;
                  *&v195[10] = 2082;
                  *&v195[12] = v67;
                  *&v195[20] = 1024;
                  *&v195[22] = 712;
                  *&v195[26] = 2114;
                  *&v195[28] = v28;
                  _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Error while sending TrustCommand : %{public}@", buf, 0x2Cu);
                }

                v68 = [v28 domain];
                if ([v68 isEqualToString:@"GP"])
                {
                  v69 = [v28 code];

                  v54 = v175;
                  if (v69 == 27268)
                  {
                    sub_10013E030(@"create key with counter");
                    v28 = v70 = v28;
                    goto LABEL_127;
                  }
                }

                else
                {
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v98 = NFLogGetLogger();
                if (v98)
                {
                  v99 = v98;
                  v100 = object_getClass(v54);
                  v101 = class_isMetaClass(v100);
                  v102 = object_getClassName(v175);
                  v158 = sel_getName("createKeyInSlot:request:response:");
                  v54 = v175;
                  v103 = 45;
                  if (v101)
                  {
                    v103 = 43;
                  }

                  v99(3, "%c[%{public}s %{public}s]:%i Failed to create Key in SE", v103, v102, v158, 721);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v70 = NFSharedLogGetLogger();
                if (!os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_127;
                }

                v104 = object_getClass(v54);
                v105 = v50;
                if (class_isMetaClass(v104))
                {
                  v106 = 43;
                }

                else
                {
                  v106 = 45;
                }

                v107 = v7;
                v108 = object_getClassName(v54);
                v109 = sel_getName("createKeyInSlot:request:response:");
                *buf = 67109890;
                *&buf[4] = v106;
                v50 = v105;
                *v195 = 2082;
                *&v195[2] = v108;
                v7 = v107;
                *&v195[10] = 2082;
                *&v195[12] = v109;
                *&v195[20] = 1024;
                *&v195[22] = 721;
                v110 = "%c[%{public}s %{public}s]:%i Failed to create Key in SE";
                goto LABEL_126;
              }

              v53 = v55;
              v76 = objc_opt_new();
              [v53 response];
              v77 = v176 = 0;
              if (!v76)
              {
                v97 = 0;
                goto LABEL_106;
              }

              v78 = sub_1000ABE38(v38, &v176);
              v79 = [NFTLV TLVsWithData:v77];
              v169 = v79;
              if (v79)
              {
                v168 = v9;
                v182 = 0u;
                v183 = 0u;
                v180 = 0u;
                v181 = 0u;
                v80 = v79;
                v81 = [v80 countByEnumeratingWithState:&v180 objects:buf count:16];
                if (v81)
                {
                  v82 = v81;
                  v165 = v7;
                  v166 = v78;
                  v163 = v77;
                  v164 = v50;
                  v83 = 0;
                  v84 = v76 + 5;
                  v85 = v76 + 4;
                  v86 = *v181;
                  v172 = v76 + 2;
                  v173 = v76 + 3;
                  v167 = v76;
                  v87 = v76 + 1;
                  v88 = v80;
                  while (2)
                  {
                    for (i = 0; i != v82; i = i + 1)
                    {
                      v90 = v83;
                      if (*v181 != v86)
                      {
                        objc_enumerationMutation(v88);
                      }

                      v91 = v88;
                      v92 = *(*(&v180 + 1) + 8 * i);
                      v83 = v92;

                      v93 = [v83 tag];
                      if (v93 <= 88)
                      {
                        v94 = v87;
                        if (v93 != 65)
                        {
                          v94 = v172;
                          if (v93 != 67)
                          {
LABEL_93:
                            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                            v112 = NFLogGetLogger();
                            if (v112)
                            {
                              v113 = v112;
                              v114 = object_getClass(v167);
                              v115 = class_isMetaClass(v114);
                              v116 = object_getClassName(v167);
                              v117 = sel_getName("keyAttestionWith:responseData:error:");
                              v162 = [v83 tag];
                              v118 = 45;
                              if (v115)
                              {
                                v118 = 43;
                              }

                              v113(3, "%c[%{public}s %{public}s]:%i Could not create key, unexpected tag %u returned from SE", v118, v116, v117, 277, v162);
                            }

                            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                            v119 = NFSharedLogGetLogger();
                            v7 = v165;
                            v53 = v170;
                            v38 = v171;
                            if (os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
                            {
                              v120 = object_getClass(v167);
                              if (class_isMetaClass(v120))
                              {
                                v121 = 43;
                              }

                              else
                              {
                                v121 = 45;
                              }

                              v122 = object_getClassName(v167);
                              v123 = sel_getName("keyAttestionWith:responseData:error:");
                              v124 = [v83 tag];
                              *v184 = 67110146;
                              v185 = v121;
                              v186 = 2082;
                              v187 = v122;
                              v188 = 2082;
                              v189 = v123;
                              v190 = 1024;
                              v191 = 277;
                              v192 = 1024;
                              v193 = v124;
                              _os_log_impl(&_mh_execute_header, v119, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Could not create key, unexpected tag %u returned from SE", v184, 0x28u);
                            }

                            v125 = [[NSString alloc] initWithFormat:@"Could not create key, unexpected tag %u returned from SE", objc_msgSend(v83, "tag")];
                            v176 = sub_10013DC5C(v125);

                            v97 = 0;
                            v76 = v167;
                            v9 = v168;
                            v54 = v175;
                            v77 = v163;
                            v50 = v164;
                            goto LABEL_103;
                          }
                        }
                      }

                      else
                      {
                        v94 = v85;
                        if (v93 != 89)
                        {
                          v94 = v84;
                          if (v93 != 24375)
                          {
                            v94 = v173;
                            if (v93 != 32585)
                            {
                              goto LABEL_93;
                            }
                          }
                        }
                      }

                      objc_storeStrong(v94, v92);
                      v88 = v91;
                    }

                    v82 = [v91 countByEnumeratingWithState:&v180 objects:buf count:16];
                    if (v82)
                    {
                      continue;
                    }

                    break;
                  }

                  v50 = v164;
                  v7 = v165;
                  v54 = v175;
                  v53 = v170;
                  v38 = v171;
                  v80 = v88;
                  v78 = v166;
                  v76 = v167;
                  v77 = v163;
                }

                if (!v76[1])
                {
                  sub_10013DC5C(@"Could not create key, missing keyVersion from SE response");
                  v176 = v97 = 0;
                  v9 = v168;
                  goto LABEL_105;
                }

                v9 = v168;
                if (v76[2])
                {
                  if (v76[3])
                  {
                    if (v76[4])
                    {
                      if (v76[5])
                      {
                        [v78 insertObject:? atIndex:?];
                        [v78 insertObject:v76[2] atIndex:1];
                        [v78 insertObject:v76[3] atIndex:1];
                        [v78 insertObject:v76[4] atIndex:1];
                        [v78 insertObject:v76[5] atIndex:1];
                        [NFTLV TLVWithTag:32545 children:v78];
                        v166 = v78;
                        v96 = v95 = v77;
                        v97 = [v96 asData];

                        v77 = v95;
LABEL_103:
                        v78 = v166;
                        goto LABEL_105;
                      }

                      v111 = @"Could not create key, missing keyAttestationSignature from SE response";
                    }

                    else
                    {
                      v111 = @"Could not create key, missing keyDeviceNonce from SE response";
                    }
                  }

                  else
                  {
                    v111 = @"Could not create key, missing keyPublicKey from SE response";
                  }
                }

                else
                {
                  v111 = @"Could not create key, missing keyPlatformIdentifier from SE response";
                }
              }

              else
              {
                v111 = @"Error in SE response";
              }

              sub_10013DC5C(v111);
              v176 = v97 = 0;
LABEL_105:

LABEL_106:
              v28 = v176;
              v126 = v97;
              *v174 = v97;

              if (!v28)
              {
                goto LABEL_129;
              }

              v56 = v9;
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v127 = NFLogGetLogger();
              if (v127)
              {
                v128 = v127;
                v129 = object_getClass(v54);
                v130 = class_isMetaClass(v129);
                v131 = object_getClassName(v175);
                v159 = sel_getName("createKeyInSlot:request:response:");
                v54 = v175;
                v132 = 45;
                if (v130)
                {
                  v132 = 43;
                }

                v128(3, "%c[%{public}s %{public}s]:%i Key was created in SE but an error was detected in response, delete key ...", v132, v131, v159, 730);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v133 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v133, OS_LOG_TYPE_ERROR))
              {
                v134 = object_getClass(v54);
                v135 = v50;
                if (class_isMetaClass(v134))
                {
                  v136 = 43;
                }

                else
                {
                  v136 = 45;
                }

                v137 = object_getClassName(v54);
                v138 = sel_getName("createKeyInSlot:request:response:");
                *buf = 67109890;
                *&buf[4] = v136;
                v50 = v135;
                *v195 = 2082;
                *&v195[2] = v137;
                v54 = v175;
                *&v195[10] = 2082;
                *&v195[12] = v138;
                *&v195[20] = 1024;
                *&v195[22] = 730;
                _os_log_impl(&_mh_execute_header, v133, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Key was created in SE but an error was detected in response, delete key ...", buf, 0x22u);
              }

              v139 = sub_1000AD9F4(v54, v7);

              if (!v139)
              {
LABEL_128:
                v53 = v170;
                v38 = v171;
                goto LABEL_129;
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v140 = NFLogGetLogger();
              if (v140)
              {
                v141 = v140;
                v142 = object_getClass(v54);
                v143 = class_isMetaClass(v142);
                v144 = object_getClassName(v175);
                v160 = sel_getName("createKeyInSlot:request:response:");
                v54 = v175;
                v145 = 45;
                if (v143)
                {
                  v145 = 43;
                }

                v141(3, "%c[%{public}s %{public}s]:%i Could not delete badly created key", v145, v144, v160, 733);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v70 = NFSharedLogGetLogger();
              if (!os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
              {
LABEL_127:
                v9 = v56;

                goto LABEL_128;
              }

              v146 = object_getClass(v54);
              v147 = v50;
              if (class_isMetaClass(v146))
              {
                v148 = 43;
              }

              else
              {
                v148 = 45;
              }

              v149 = v7;
              v150 = object_getClassName(v54);
              v151 = sel_getName("createKeyInSlot:request:response:");
              *buf = 67109890;
              *&buf[4] = v148;
              v50 = v147;
              *v195 = 2082;
              *&v195[2] = v150;
              v7 = v149;
              *&v195[10] = 2082;
              *&v195[12] = v151;
              *&v195[20] = 1024;
              *&v195[22] = 733;
              v110 = "%c[%{public}s %{public}s]:%i Could not delete badly created key";
LABEL_126:
              _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_ERROR, v110, buf, 0x22u);
              goto LABEL_127;
            }

            objc_storeStrong(v71 + 1, v10);
            LOWORD(v180) = 256;
            v72 = [[NSData alloc] initWithBytes:&v180 length:2];
            v73 = v38[2];
            v38[2] = v72;

            v74 = [NSData alloc];
            *v184 = 257;
            v75 = [v74 initWithBytes:v184 length:2];
            v21 = v38[3];
            v38[3] = v75;
LABEL_30:

            goto LABEL_31;
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v13 = NFLogGetLogger();
          if (v13)
          {
            v14 = v13;
            v15 = object_getClass(v12);
            v16 = class_isMetaClass(v15);
            v17 = v9;
            v18 = object_getClassName(v12);
            v19 = sel_getName("createKeyInputTableWithSubjectIdentifier:");
            v161 = [v11 length];
            v153 = v18;
            v20 = 45;
            if (v16)
            {
              v20 = 43;
            }

            v9 = v17;
            v14(3, "%c[%{public}s %{public}s]:%i Could not create NFTrustCreateKeyInputTable, subjectIdentifier length is not ]0, 0x40] (%lu)", v20, v153, v19, 168, v161);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v21 = NFSharedLogGetLogger();
          if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
LABEL_29:
            v38 = 0;
            goto LABEL_30;
          }

          v22 = object_getClass(v12);
          if (class_isMetaClass(v22))
          {
            v23 = 43;
          }

          else
          {
            v23 = 45;
          }

          *buf = 67110146;
          *&buf[4] = v23;
          *v195 = 2082;
          *&v195[2] = object_getClassName(v12);
          *&v195[10] = 2082;
          *&v195[12] = sel_getName("createKeyInputTableWithSubjectIdentifier:");
          *&v195[20] = 1024;
          *&v195[22] = 168;
          *&v195[26] = 2048;
          *&v195[28] = [v11 length];
          v24 = "%c[%{public}s %{public}s]:%i Could not create NFTrustCreateKeyInputTable, subjectIdentifier length is not ]0, 0x40] (%lu)";
          v25 = v21;
          v26 = 44;
        }

        else
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v29 = NFLogGetLogger();
          if (v29)
          {
            v30 = v29;
            v31 = object_getClass(v12);
            v32 = class_isMetaClass(v31);
            v33 = v9;
            v34 = object_getClassName(v12);
            v156 = sel_getName("createKeyInputTableWithSubjectIdentifier:");
            v35 = 45;
            if (v32)
            {
              v35 = 43;
            }

            v154 = v34;
            v9 = v33;
            v30(3, "%c[%{public}s %{public}s]:%i Could not create NFTrustCreateKeyInputTable, subjectIdentifier is nil", v35, v154, v156, 163);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v21 = NFSharedLogGetLogger();
          if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_29;
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
          *&buf[4] = v37;
          *v195 = 2082;
          *&v195[2] = object_getClassName(v12);
          *&v195[10] = 2082;
          *&v195[12] = sel_getName("createKeyInputTableWithSubjectIdentifier:");
          *&v195[20] = 1024;
          *&v195[22] = 163;
          v24 = "%c[%{public}s %{public}s]:%i Could not create NFTrustCreateKeyInputTable, subjectIdentifier is nil";
          v25 = v21;
          v26 = 34;
        }

        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, v24, buf, v26);
        goto LABEL_29;
      }

      v27 = @"slot is nil";
    }

    else
    {
      v27 = @"Could not performCreateKey, with nil request";
    }

    v28 = sub_10013E33C(v27);
    goto LABEL_131;
  }

  v28 = 0;
LABEL_131:

  return v28;
}

void sub_1000AF3E4(uint64_t a1, void *a2)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000AF4A0;
  v3[3] = &unk_100318038;
  v3[4] = &v4;
  [a2 enumerateObjectsUsingBlock:v3];
  [*(*(*(a1 + 32) + 8) + 40) appendBytes:v5 + 3 length:1];
  _Block_object_dispose(&v4, 8);
}

id sub_1000AF4A0(uint64_t a1, void *a2)
{
  result = [a2 primitiveLocalValidation];
  *(*(*(a1 + 32) + 8) + 24) |= result;
  return result;
}

id *sub_1000AF4DC(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = v8;
  if (!a1)
  {
    goto LABEL_39;
  }

  if (!v8)
  {
    v15 = @"Could not performSignWithKey with nil request";
LABEL_8:
    a1 = sub_10013E33C(v15);
    goto LABEL_39;
  }

  if (!v7)
  {
    v15 = @"slot is nil";
    goto LABEL_8;
  }

  v10 = [v8 challenge];
  v11 = [v9 data];
  v60 = 0;
  v12 = sub_1000AC3A0(NFTrustSignInputTable, v10, v11, &v60);
  v13 = v60;

  if (v13)
  {
    a1 = v13;
    v14 = 0;
  }

  else
  {
    v59 = 0;
    v16 = sub_1000ACA34(v12, &v59);
    v17 = v59;
    if (v17)
    {
      a1 = v17;
      v14 = 0;
    }

    else
    {
      v58 = 0;
      v18 = sub_1000AD650(a1, 195, 0, [v7 unsignedCharValue], v16, &v58);
      v14 = v58;
      v56 = v16;
      if (v18)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          v20 = Logger;
          Class = object_getClass(a1);
          isMetaClass = class_isMetaClass(Class);
          ClassName = object_getClassName(a1);
          Name = sel_getName("signWithKeyInSlot:request:response:");
          v23 = 45;
          if (isMetaClass)
          {
            v23 = 43;
          }

          v20(3, "%c[%{public}s %{public}s]:%i Error while sending TrustCommand : %{public}@", v23, ClassName, Name, 774, v18);
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
          v28 = sel_getName("signWithKeyInSlot:request:response:");
          *buf = 67110146;
          v62 = v26;
          v63 = 2082;
          v64 = v27;
          v65 = 2082;
          v66 = v28;
          v67 = 1024;
          v68 = 774;
          v69 = 2114;
          v70 = v18;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Error while sending TrustCommand : %{public}@", buf, 0x2Cu);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v29 = NFLogGetLogger();
        if (v29)
        {
          v30 = v29;
          v31 = object_getClass(a1);
          v32 = class_isMetaClass(v31);
          v51 = object_getClassName(a1);
          v53 = sel_getName("signWithKeyInSlot:request:response:");
          v33 = 45;
          if (v32)
          {
            v33 = 43;
          }

          v30(3, "%c[%{public}s %{public}s]:%i Failed to sign with Key in SE : %{public}@", v33, v51, v53, 778, v18);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v34 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
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
          v38 = sel_getName("signWithKeyInSlot:request:response:");
          *buf = 67110146;
          v62 = v36;
          v63 = 2082;
          v64 = v37;
          v65 = 2082;
          v66 = v38;
          v67 = 1024;
          v68 = 778;
          v69 = 2114;
          v70 = v18;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to sign with Key in SE : %{public}@", buf, 0x2Cu);
        }

        a1 = v18;
      }

      else
      {
        v39 = objc_opt_new();
        v40 = [v14 response];
        v57 = 0;
        v41 = sub_1000ACE4C(v39, v12, v40, 0, &v57);
        a1 = v57;
        v54 = v39;
        sel = v40;
        if (v39)
        {
          v42 = *(v39 + 16);
        }

        else
        {
          v42 = 0;
        }

        v43 = v42;
        v44 = [v43 value];
        v45 = v41;
        v46 = [NFTrustSignResponse signResponseWithRawData:v41 counterValueData:v44];
        v47 = v46;

        *a4 = v46;
        if (a1)
        {
          v48 = a1;
        }
      }

      v16 = v56;
    }
  }

LABEL_39:

  return a1;
}

id sub_1000AF9E4(id *a1, void *a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  if (!a1)
  {
    v33 = 0;
    goto LABEL_21;
  }

  if (!v17)
  {
    v36 = @"Could not signWithKeyInSlot, signRequest is nil";
LABEL_20:
    v33 = sub_10013E33C(v36);
    goto LABEL_21;
  }

  if (!v16)
  {
    v36 = @"Could not signWithKeyInSlot, AID is nil";
    goto LABEL_20;
  }

  if (!v15)
  {
    v36 = @"Could not signWithKeyInSlot, slot is nil";
    goto LABEL_20;
  }

  v418 = a1;
  v443 = 0;
  v20 = sub_1001599F4(a1, &v443);
  v21 = v443;
  if (v21)
  {
    v22 = v21;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v24 = Logger;
      Class = object_getClass(v418);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v418);
      Name = sel_getName("signWithKeyInSlot:AID:signRequest:paymentRequest:authorization:uid:response:");
      v27 = 45;
      if (isMetaClass)
      {
        v27 = 43;
      }

      v24(3, "%c[%{public}s %{public}s]:%i Failed to select CRS: %{public}@", v27, ClassName, Name, 821, v22);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v28 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = object_getClass(v418);
      if (class_isMetaClass(v29))
      {
        v30 = 43;
      }

      else
      {
        v30 = 45;
      }

      v31 = object_getClassName(v418);
      v32 = sel_getName("signWithKeyInSlot:AID:signRequest:paymentRequest:authorization:uid:response:");
      *buf = 67110146;
      v477 = v30;
      v478 = 2082;
      v479 = v31;
      v480 = 2082;
      v481 = v32;
      v482 = 1024;
      v483 = 821;
      v484 = 2114;
      v485 = v22;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to select CRS: %{public}@", buf, 0x2Cu);
    }

    v33 = v22;
    v34 = v20;
    v35 = v33;
    goto LABEL_16;
  }

  if (!v20)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v55 = NFLogGetLogger();
    if (v55)
    {
      v56 = v55;
      v57 = object_getClass(a1);
      v58 = class_isMetaClass(v57);
      v59 = object_getClassName(a1);
      v373 = sel_getName("signWithKeyInSlot:AID:signRequest:paymentRequest:authorization:uid:response:");
      v60 = 45;
      if (v58)
      {
        v60 = 43;
      }

      v56(3, "%c[%{public}s %{public}s]:%i Failed to select CRS, expecting RAPDU", v60, v59, v373, 826);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v61 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      v62 = object_getClass(v418);
      if (class_isMetaClass(v62))
      {
        v63 = 43;
      }

      else
      {
        v63 = 45;
      }

      v64 = object_getClassName(v418);
      v65 = sel_getName("signWithKeyInSlot:AID:signRequest:paymentRequest:authorization:uid:response:");
      *buf = 67109890;
      v477 = v63;
      v478 = 2082;
      v479 = v64;
      v480 = 2082;
      v481 = v65;
      v482 = 1024;
      v483 = 826;
      _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to select CRS, expecting RAPDU", buf, 0x22u);
    }

    v66 = [NSError alloc];
    v35 = [NSString stringWithUTF8String:"nfcd"];
    v474 = NSLocalizedDescriptionKey;
    v34 = [NSString stringWithUTF8String:"Command Error"];
    v475 = v34;
    v67 = [NSDictionary dictionaryWithObjects:&v475 forKeys:&v474 count:1];
    v33 = [v66 initWithDomain:v35 code:16 userInfo:v67];

    goto LABEL_16;
  }

  if ([v20 status] != 36864)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v68 = NFLogGetLogger();
    if (v68)
    {
      v69 = v68;
      v70 = object_getClass(a1);
      v71 = class_isMetaClass(v70);
      v72 = object_getClassName(a1);
      v374 = sel_getName("signWithKeyInSlot:AID:signRequest:paymentRequest:authorization:uid:response:");
      v73 = 45;
      if (v71)
      {
        v73 = 43;
      }

      v69(3, "%c[%{public}s %{public}s]:%i Failed to select CRS, expecting0x9000", v73, v72, v374, 831);
    }

    v417 = v20;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v74 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
    {
      v75 = object_getClass(v418);
      if (class_isMetaClass(v75))
      {
        v76 = 43;
      }

      else
      {
        v76 = 45;
      }

      v77 = object_getClassName(v418);
      v78 = sel_getName("signWithKeyInSlot:AID:signRequest:paymentRequest:authorization:uid:response:");
      *buf = 67109890;
      v477 = v76;
      v478 = 2082;
      v479 = v77;
      v480 = 2082;
      v481 = v78;
      v482 = 1024;
      v483 = 831;
      _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to select CRS, expecting0x9000", buf, 0x22u);
    }

    v79 = [NSError alloc];
    v34 = [NSString stringWithUTF8String:"nfcd"];
    v472 = NSLocalizedDescriptionKey;
    v80 = [NSString stringWithUTF8String:"Command Error"];
    v473 = v80;
    v81 = [NSDictionary dictionaryWithObjects:&v473 forKeys:&v472 count:1];
    v33 = [v79 initWithDomain:v34 code:16 userInfo:v81];

    v35 = v417;
    goto LABEL_16;
  }

  v415 = v18;
  v38 = [NSData NF_dataWithHexString:v16];
  v39 = [NFTLV TLVWithTag:79 value:v38];

  if (!v39)
  {
    v33 = sub_10013DC5C(@"Could not create AID TLV");
    v54 = 0;
    v18 = v415;
    goto LABEL_322;
  }

  v414 = v39;
  v416 = v20;
  v40 = [v17 challenge];
  v41 = [v17 data];
  v442 = 0;
  v42 = sub_1000AC3A0(NFTrustSignInputTable, v40, v41, &v442);
  v43 = v442;

  if (v43)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v44 = NFLogGetLogger();
    if (v44)
    {
      v45 = v44;
      v46 = object_getClass(v418);
      v47 = class_isMetaClass(v46);
      v367 = object_getClassName(v418);
      v372 = sel_getName("signWithKeyInSlot:AID:signRequest:paymentRequest:authorization:uid:response:");
      v48 = 45;
      if (v47)
      {
        v48 = 43;
      }

      v45(3, "%c[%{public}s %{public}s]:%i %{public}@", v48, v367, v372, 846, v43);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v49 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      v50 = object_getClass(v418);
      if (class_isMetaClass(v50))
      {
        v51 = 43;
      }

      else
      {
        v51 = 45;
      }

      v52 = object_getClassName(v418);
      v53 = sel_getName("signWithKeyInSlot:AID:signRequest:paymentRequest:authorization:uid:response:");
      *buf = 67110146;
      v477 = v51;
      v478 = 2082;
      v479 = v52;
      v480 = 2082;
      v481 = v53;
      v482 = 1024;
      v483 = 846;
      v484 = 2114;
      v485 = v43;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
    }

    v54 = v43;
    v33 = v54;
    v18 = v415;
    goto LABEL_321;
  }

  v441 = 0;
  v82 = sub_1000ACA34(v42, &v441);
  v83 = v441;
  if (v83)
  {
    v54 = v83;
    v33 = v54;
    v18 = v415;
    goto LABEL_320;
  }

  v413 = v42;
  v84 = [NSArray alloc];
  v85 = +[NFTLV TLVWithTag:unsignedChar:](NFTLV, "TLVWithTag:unsignedChar:", 196, [v15 unsignedCharValue]);
  v412 = v82;
  v86 = [NFTLV TLVWithData:v82];
  v87 = [v84 initWithObjects:{v85, v86, 0}];
  v88 = [NFTLV TLVWithTag:239 children:v87];

  v411 = v88;
  if (!v88)
  {
    v33 = sub_10013DC5C(@"Could not create opaque Data TLV");
    v54 = 0;
    v18 = v415;
    v82 = v412;
    v42 = v413;
    goto LABEL_319;
  }

  v89 = [[NSArray alloc] initWithObjects:{v414, v88, 0}];
  v90 = [NFTLV TLVWithTag:228 children:v89];

  v410 = v90;
  if (!v90)
  {
    v33 = sub_10013DC5C(@"Could not create E4 TLV");
    v54 = 0;
    v18 = v415;
    v82 = v412;
    v42 = v413;
    goto LABEL_318;
  }

  v409 = [v90 asMutableData];
  v18 = v415;
  if (v415)
  {
    v440 = 0;
    v91 = sub_1001D99C8(NFECommercePaymentRequestEncoder, v415, 0, &v440);
    v405 = v440;
    if (!v91)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v120 = NFLogGetLogger();
      if (v120)
      {
        v121 = v120;
        v122 = object_getClass(v418);
        v123 = class_isMetaClass(v122);
        v124 = object_getClassName(v418);
        v375 = sel_getName("signWithKeyInSlot:AID:signRequest:paymentRequest:authorization:uid:response:");
        v125 = 45;
        if (v123)
        {
          v125 = 43;
        }

        v121(3, "%c[%{public}s %{public}s]:%i Failed to create TLV from input.", v125, v124, v375, 881);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v126 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
      {
        v127 = object_getClass(v418);
        if (class_isMetaClass(v127))
        {
          v128 = 43;
        }

        else
        {
          v128 = 45;
        }

        v129 = object_getClassName(v418);
        v130 = sel_getName("signWithKeyInSlot:AID:signRequest:paymentRequest:authorization:uid:response:");
        *buf = 67109890;
        v477 = v128;
        v478 = 2082;
        v479 = v129;
        v480 = 2082;
        v481 = v130;
        v482 = 1024;
        v483 = 881;
        _os_log_impl(&_mh_execute_header, v126, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to create TLV from input.", buf, 0x22u);
      }

      if (v405)
      {
        v54 = v405;
        v131 = 0;
        v33 = v54;
      }

      else
      {
        v33 = sub_10013DC5C(@"Could not create ECommerce TLV");
        v131 = 0;
        v54 = 0;
      }

      v82 = v412;
      v42 = v413;
      goto LABEL_317;
    }

    v92 = [NFTLV TLVWithTag:230 value:v91];
    v407 = v91;
    if (!v92)
    {
      v33 = sub_10013DC5C(@"Could not create E6 TLV");
      v82 = v412;
      v42 = v413;
      v54 = v405;
      v131 = v407;
      goto LABEL_317;
    }

    v93 = v92;
    v94 = [v92 asData];
    [v409 appendData:v94];
  }

  else
  {
    v93 = 0;
    v405 = 0;
  }

  v404 = v409;
  v408 = v93;
  if (!v19)
  {
    goto LABEL_157;
  }

  v439 = 0;
  v95 = sub_10022B0E8(NFSSEWrapper, &v439);
  v96 = v439;
  v402 = v96;
  if (!v96 || v95)
  {
    v399 = v95;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v132 = NFLogGetLogger();
    if (v132)
    {
      v133 = v132;
      v134 = object_getClass(v418);
      v135 = class_isMetaClass(v134);
      v136 = object_getClassName(v418);
      v376 = sel_getName("signWithKeyInSlot:AID:signRequest:paymentRequest:authorization:uid:response:");
      v137 = 45;
      if (v135)
      {
        v137 = 43;
      }

      v133(3, "%c[%{public}s %{public}s]:%i Failed to get host challenge", v137, v136, v376, 903);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v138 = NFSharedLogGetLogger();
    v18 = v415;
    if (os_log_type_enabled(v138, OS_LOG_TYPE_ERROR))
    {
      v139 = object_getClass(v418);
      if (class_isMetaClass(v139))
      {
        v140 = 43;
      }

      else
      {
        v140 = 45;
      }

      v141 = object_getClassName(v418);
      v142 = sel_getName("signWithKeyInSlot:AID:signRequest:paymentRequest:authorization:uid:response:");
      *buf = 67109890;
      v477 = v140;
      v478 = 2082;
      v479 = v141;
      v480 = 2082;
      v481 = v142;
      v482 = 1024;
      v483 = 903;
      _os_log_impl(&_mh_execute_header, v138, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get host challenge", buf, 0x22u);
    }

    v143 = [NSError alloc];
    v144 = [NSString stringWithUTF8String:"nfcd"];
    if (v399)
    {
      v468 = NSLocalizedDescriptionKey;
      if (v399 >= 0x4C)
      {
        v145 = 76;
      }

      else
      {
        v145 = v399;
      }

      v146 = [NSString stringWithUTF8String:off_100317DC8[v145]];
      v469 = v146;
      v147 = [NSDictionary dictionaryWithObjects:&v469 forKeys:&v468 count:1];
      v148 = v143;
      v149 = v144;
      v150 = v399;
    }

    else
    {
      v470 = NSLocalizedDescriptionKey;
      v146 = [NSString stringWithUTF8String:"Unknown Error"];
      v471 = v146;
      v147 = [NSDictionary dictionaryWithObjects:&v471 forKeys:&v470 count:1];
      v148 = v143;
      v149 = v144;
      v150 = 6;
    }

    v33 = [v148 initWithDomain:v149 code:v150 userInfo:v147];

    goto LABEL_135;
  }

  v438 = 0;
  v97 = sub_1000B7A20(v418, v96, &v438);
  v398 = v438;
  v400 = v16;
  v393 = v97;
  if (v97)
  {
    v391 = v17;
    v395 = v15;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v98 = NFLogGetLogger();
    if (v98)
    {
      v99 = v98;
      v100 = object_getClass(v418);
      v101 = class_isMetaClass(v100);
      v102 = object_getClassName(v418);
      v388 = sel_getName("signWithKeyInSlot:AID:signRequest:paymentRequest:authorization:uid:response:");
      v387 = [NSError alloc];
      v103 = [NSString stringWithUTF8String:"nfcd"];
      v466 = NSLocalizedDescriptionKey;
      if (v97 >= 0x4C)
      {
        v104 = 76;
      }

      else
      {
        v104 = v97;
      }

      v105 = [NSString stringWithUTF8String:off_100317DC8[v104]];
      v467 = v105;
      v106 = [NSDictionary dictionaryWithObjects:&v467 forKeys:&v466 count:1];
      v107 = [v387 initWithDomain:v103 code:v393 userInfo:v106];
      v108 = 45;
      if (v101)
      {
        v108 = 43;
      }

      v99(3, "%c[%{public}s %{public}s]:%i Failed to authenticate to CRS %{public}@", v108, v102, v388, 914, v107);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v109 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
    {
      v110 = object_getClass(v418);
      if (class_isMetaClass(v110))
      {
        v111 = 43;
      }

      else
      {
        v111 = 45;
      }

      v389 = v111;
      v419 = object_getClassName(v418);
      sel = sel_getName("signWithKeyInSlot:AID:signRequest:paymentRequest:authorization:uid:response:");
      v112 = [NSError alloc];
      v113 = [NSString stringWithUTF8String:"nfcd"];
      v114 = NSLocalizedDescriptionKey;
      v464 = NSLocalizedDescriptionKey;
      if (v393 >= 0x4C)
      {
        v115 = 76;
      }

      else
      {
        v115 = v393;
      }

      v116 = [NSString stringWithUTF8String:off_100317DC8[v115]];
      v465 = v116;
      v117 = [NSDictionary dictionaryWithObjects:&v465 forKeys:&v464 count:1];
      v118 = v393;
      v119 = [v112 initWithDomain:v113 code:v393 userInfo:v117];
      *buf = 67110146;
      v477 = v389;
      v478 = 2082;
      v479 = v419;
      v480 = 2082;
      v481 = sel;
      v482 = 1024;
      v483 = 914;
      v484 = 2114;
      v485 = v119;
      _os_log_impl(&_mh_execute_header, v109, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to authenticate to CRS %{public}@", buf, 0x2Cu);
    }

    else
    {
      v114 = NSLocalizedDescriptionKey;
      v118 = v393;
      if (v393 >= 0x4C)
      {
        v115 = 76;
      }

      else
      {
        v115 = v393;
      }
    }

    v169 = [NSError alloc];
    v166 = [NSString stringWithUTF8String:"nfcd"];
    v462 = v114;
    v167 = [NSString stringWithUTF8String:off_100317DC8[v115]];
    v463 = v167;
    v168 = [NSDictionary dictionaryWithObjects:&v463 forKeys:&v462 count:1];
    v33 = [v169 initWithDomain:v166 code:v118 userInfo:v168];
    v18 = v415;
    v15 = v395;
    v16 = v400;
    v17 = v391;
LABEL_134:

LABEL_135:
LABEL_136:
    v82 = v412;
    v42 = v413;
    v54 = v405;
    v131 = v408;
    goto LABEL_316;
  }

  v151 = v19;
  if ([v398 length] <= 0xF)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v152 = NFLogGetLogger();
    if (v152)
    {
      v153 = v152;
      v154 = object_getClass(v418);
      v155 = class_isMetaClass(v154);
      v156 = object_getClassName(v418);
      v157 = sel_getName("signWithKeyInSlot:AID:signRequest:paymentRequest:authorization:uid:response:");
      v385 = [v398 length];
      v158 = 45;
      if (v155)
      {
        v158 = 43;
      }

      v153(3, "%c[%{public}s %{public}s]:%i Initialize auth response too small: %lu", v158, v156, v157, 919, v385);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v159 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v159, OS_LOG_TYPE_ERROR))
    {
      v160 = object_getClass(v418);
      if (class_isMetaClass(v160))
      {
        v161 = 43;
      }

      else
      {
        v161 = 45;
      }

      v162 = object_getClassName(v418);
      v163 = sel_getName("signWithKeyInSlot:AID:signRequest:paymentRequest:authorization:uid:response:");
      v164 = [v398 length];
      *buf = 67110146;
      v477 = v161;
      v478 = 2082;
      v479 = v162;
      v480 = 2082;
      v481 = v163;
      v482 = 1024;
      v483 = 919;
      v484 = 2048;
      v485 = v164;
      _os_log_impl(&_mh_execute_header, v159, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Initialize auth response too small: %lu", buf, 0x2Cu);
    }

    v165 = [NSError alloc];
    v166 = [NSString stringWithUTF8String:"nfcd"];
    v460 = NSLocalizedDescriptionKey;
    v167 = [NSString stringWithUTF8String:"Command Error"];
    v461 = v167;
    v168 = [NSDictionary dictionaryWithObjects:&v461 forKeys:&v460 count:1];
    v33 = [v165 initWithDomain:v166 code:16 userInfo:v168];
    v18 = v415;
    v16 = v400;
    goto LABEL_134;
  }

  v170 = [v398 subdataWithRange:{0, 8}];
  [v398 subdataWithRange:{8, 8}];
  v396 = v394 = v170;
  if (!v170 || !v396)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v178 = NFLogGetLogger();
    if (v178)
    {
      v179 = v178;
      v180 = object_getClass(v418);
      v181 = class_isMetaClass(v180);
      v182 = object_getClassName(v418);
      v377 = sel_getName("signWithKeyInSlot:AID:signRequest:paymentRequest:authorization:uid:response:");
      v183 = 45;
      if (v181)
      {
        v183 = 43;
      }

      v179(3, "%c[%{public}s %{public}s]:%i Failed to get cardChallenge and cardCryptogram from CRS", v183, v182, v377, 927);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v184 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v184, OS_LOG_TYPE_ERROR))
    {
      v185 = object_getClass(v418);
      if (class_isMetaClass(v185))
      {
        v186 = 43;
      }

      else
      {
        v186 = 45;
      }

      v187 = object_getClassName(v418);
      v188 = sel_getName("signWithKeyInSlot:AID:signRequest:paymentRequest:authorization:uid:response:");
      *buf = 67109890;
      v477 = v186;
      v478 = 2082;
      v479 = v187;
      v480 = 2082;
      v481 = v188;
      v482 = 1024;
      v483 = 927;
      _os_log_impl(&_mh_execute_header, v184, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get cardChallenge and cardCryptogram from CRS", buf, 0x22u);
    }

    v189 = [NSError alloc];
    v190 = [NSString stringWithUTF8String:"nfcd"];
    v458 = NSLocalizedDescriptionKey;
    v191 = [NSString stringWithUTF8String:"Command Error"];
    v459 = v191;
    v192 = [NSDictionary dictionaryWithObjects:&v459 forKeys:&v458 count:1];
    v193 = v189;
    v177 = v190;
    v194 = v190;
    v195 = 16;
    goto LABEL_153;
  }

  v171 = sub_10022B9AC(NFSSEWrapper, v19);
  v390 = v171 == 4;
  v172 = 1;
  if (v171 == 2)
  {
    goto LABEL_141;
  }

  v173 = v171;
  if (v171 == 4)
  {
    goto LABEL_141;
  }

  v172 = 0;
  v390 = v171 == 3;
  if (v171 == 1 || v171 == 3)
  {
    goto LABEL_141;
  }

  if (v171 != 5)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v354 = NFLogGetLogger();
    if (v354)
    {
      v355 = v354;
      v356 = object_getClass(v418);
      v357 = class_isMetaClass(v356);
      v370 = object_getClassName(v418);
      v384 = sel_getName("signWithKeyInSlot:AID:signRequest:paymentRequest:authorization:uid:response:");
      v358 = 45;
      if (v357)
      {
        v358 = 43;
      }

      v355(3, "%c[%{public}s %{public}s]:%i Unknown transaction type: %d", v358, v370, v384, 945, v173);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v359 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v359, OS_LOG_TYPE_ERROR))
    {
      v360 = object_getClass(v418);
      if (class_isMetaClass(v360))
      {
        v361 = 43;
      }

      else
      {
        v361 = 45;
      }

      v362 = object_getClassName(v418);
      v363 = sel_getName("signWithKeyInSlot:AID:signRequest:paymentRequest:authorization:uid:response:");
      *buf = 67110146;
      v477 = v361;
      v478 = 2082;
      v479 = v362;
      v480 = 2082;
      v481 = v363;
      v482 = 1024;
      v483 = 945;
      v484 = 1024;
      LODWORD(v485) = v173;
      _os_log_impl(&_mh_execute_header, v359, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unknown transaction type: %d", buf, 0x28u);
    }

    v364 = [NSError alloc];
    v365 = [NSString stringWithUTF8String:"nfcd"];
    v456 = NSLocalizedDescriptionKey;
    v191 = [NSString stringWithUTF8String:"Unexpected Result"];
    v457 = v191;
    v192 = [NSDictionary dictionaryWithObjects:&v457 forKeys:&v456 count:1];
    v193 = v364;
    v177 = v365;
    v194 = v365;
    v195 = 13;
LABEL_153:
    v33 = [v193 initWithDomain:v194 code:v195 userInfo:v192];

    goto LABEL_155;
  }

  v172 = 0;
  v390 = 1;
LABEL_141:
  v174 = [NSMutableData alloc];
  v436 = 849024;
  v437 = [v404 length];
  v175 = [v174 initWithBytes:&v436 length:5];
  [v175 appendData:v404];
  v435 = 0;
  v392 = 1;
  [v175 appendBytes:&v435 length:1];
  v176 = [v418 serialNumberAsData];
  v177 = v175;
  v33 = sub_10022C208(NFSSEWrapper, 3, v175, a7, v151, v176, v172, v390, v402, v394, v396, 0, 0, 0, 0);

  if (v33)
  {
    v404 = v33;
    goto LABEL_156;
  }

  v33 = sub_10013DC5C(@"Failed to get signed data");
  v404 = 0;
LABEL_155:
  v392 = 0;
LABEL_156:

  v19 = v151;
  v16 = v400;
  if (!v392)
  {
    v18 = v415;
    goto LABEL_136;
  }

LABEL_157:
  v403 = *([v404 bytes] + 3);
  v434 = v405;
  v196 = sub_1001579EC(v418, v404, 0, &v434);
  v197 = v434;

  v198 = [NFResponseAPDU responseWithData:v196];

  if (v197)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v199 = NFLogGetLogger();
    if (v199)
    {
      v200 = v199;
      v201 = object_getClass(v418);
      v202 = class_isMetaClass(v201);
      v203 = object_getClassName(v418);
      v378 = sel_getName("signWithKeyInSlot:AID:signRequest:paymentRequest:authorization:uid:response:");
      v204 = 45;
      if (v202)
      {
        v204 = 43;
      }

      v200(3, "%c[%{public}s %{public}s]:%i Failed to execute opaque data", v204, v203, v378, 982);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v205 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v205, OS_LOG_TYPE_ERROR))
    {
      v206 = object_getClass(v418);
      if (class_isMetaClass(v206))
      {
        v207 = 43;
      }

      else
      {
        v207 = 45;
      }

      v208 = object_getClassName(v418);
      v209 = sel_getName("signWithKeyInSlot:AID:signRequest:paymentRequest:authorization:uid:response:");
      *buf = 67109890;
      v477 = v207;
      v478 = 2082;
      v479 = v208;
      v480 = 2082;
      v481 = v209;
      v482 = 1024;
      v483 = 982;
      _os_log_impl(&_mh_execute_header, v205, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to execute opaque data", buf, 0x22u);
    }

    v54 = v197;
    v416 = v198;
    v33 = v54;
    v18 = v415;
    goto LABEL_315;
  }

  v401 = v16;
  v397 = v15;
  if (!v198)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v219 = NFLogGetLogger();
    if (v219)
    {
      v220 = v219;
      v221 = object_getClass(v418);
      v222 = class_isMetaClass(v221);
      v223 = object_getClassName(v418);
      v379 = sel_getName("signWithKeyInSlot:AID:signRequest:paymentRequest:authorization:uid:response:");
      v224 = 45;
      if (v222)
      {
        v224 = 43;
      }

      v220(3, "%c[%{public}s %{public}s]:%i Failed to execute opaque data, expecting RAPDU", v224, v223, v379, 987);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v225 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v225, OS_LOG_TYPE_ERROR))
    {
      v226 = object_getClass(v418);
      if (class_isMetaClass(v226))
      {
        v227 = 43;
      }

      else
      {
        v227 = 45;
      }

      v228 = object_getClassName(v418);
      v229 = sel_getName("signWithKeyInSlot:AID:signRequest:paymentRequest:authorization:uid:response:");
      *buf = 67109890;
      v477 = v227;
      v478 = 2082;
      v479 = v228;
      v480 = 2082;
      v481 = v229;
      v482 = 1024;
      v483 = 987;
      _os_log_impl(&_mh_execute_header, v225, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to execute opaque data, expecting RAPDU", buf, 0x22u);
    }

    v230 = [NSError alloc];
    v231 = [NSString stringWithUTF8String:"nfcd"];
    v454 = NSLocalizedDescriptionKey;
    v232 = [NSString stringWithUTF8String:"Unexpected Result"];
    v455 = v232;
    v233 = [NSDictionary dictionaryWithObjects:&v455 forKeys:&v454 count:1];
    v234 = v230;
    v235 = v231;
    v236 = 13;
    goto LABEL_192;
  }

  v210 = v198;
  if ([v198 status] == 36864)
  {
    v416 = v198;
    goto LABEL_171;
  }

  v237 = objc_opt_new();
  if (([v198 status] & 0xFF00) != 0x6100)
  {
    v275 = [NSError alloc];
    v276 = [v198 status];
    v452 = NSLocalizedDescriptionKey;
    v277 = [v198 status];
    if (v277 == 36864)
    {
      v278 = "Success";
    }

    else
    {
      v301 = &word_100318090;
      v302 = 24;
      v278 = "Unknown Error";
      do
      {
        if (!--v302)
        {
          goto LABEL_248;
        }

        v303 = v301 + 8;
        v304 = *v301;
        v301 += 8;
      }

      while (v304 != v277);
      v278 = *(v303 - 1);
    }

LABEL_248:
    v305 = [NSString stringWithUTF8String:v278];
    v453 = v305;
    v306 = [NSDictionary dictionaryWithObjects:&v453 forKeys:&v452 count:1];
    v33 = [v275 initWithDomain:@"GP" code:v276 userInfo:v306];

    goto LABEL_249;
  }

  if (([v198 status] & 0xFF00) == 0x6100)
  {
    while (1)
    {
      v238 = v210;
      v239 = [v210 response];
      [v237 appendData:v239];

      v240 = [v210 status];
      v433 = 0;
      v210 = sub_10015837C(v418, 128, 192, 0, 0, 0, v240, 0, &v433);
      v241 = v433;

      if (v241)
      {
        break;
      }

      if (!v210)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v339 = NFLogGetLogger();
        if (v339)
        {
          v340 = v339;
          v341 = object_getClass(v418);
          v342 = class_isMetaClass(v341);
          v343 = object_getClassName(v418);
          v383 = sel_getName("signWithKeyInSlot:AID:signRequest:paymentRequest:authorization:uid:response:");
          v344 = 45;
          if (v342)
          {
            v344 = 43;
          }

          v340(3, "%c[%{public}s %{public}s]:%i Failed to retrieve more data from CRS, expecting RAPDU", v344, v343, v383, 1020);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v345 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v345, OS_LOG_TYPE_ERROR))
        {
          v346 = object_getClass(v418);
          if (class_isMetaClass(v346))
          {
            v347 = 43;
          }

          else
          {
            v347 = 45;
          }

          v348 = object_getClassName(v418);
          v349 = sel_getName("signWithKeyInSlot:AID:signRequest:paymentRequest:authorization:uid:response:");
          *buf = 67109890;
          v477 = v347;
          v478 = 2082;
          v479 = v348;
          v480 = 2082;
          v481 = v349;
          v482 = 1024;
          v483 = 1020;
          _os_log_impl(&_mh_execute_header, v345, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to retrieve more data from CRS, expecting RAPDU", buf, 0x22u);
        }

        v350 = [NSError alloc];
        v351 = [NSString stringWithUTF8String:"nfcd"];
        v450 = NSLocalizedDescriptionKey;
        v352 = [NSString stringWithUTF8String:"Unexpected Result"];
        v451 = v352;
        v353 = [NSDictionary dictionaryWithObjects:&v451 forKeys:&v450 count:1];
        v33 = [v350 initWithDomain:v351 code:13 userInfo:v353];

        v210 = 0;
LABEL_249:
        v54 = 0;
LABEL_250:

        v416 = v210;
        goto LABEL_314;
      }

      if ([v210 status] == 36864)
      {
        v242 = [v210 response];
        [v237 appendData:v242];

        v243 = [NSData alloc];
        v432 = 144;
        v244 = [v243 initWithBytes:&v432 length:2];
        [v237 appendData:v244];
      }

      if (([v210 status] & 0xFF00) != 0x6100)
      {
        goto LABEL_200;
      }
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v329 = NFLogGetLogger();
    if (v329)
    {
      v330 = v329;
      v331 = object_getClass(v418);
      v332 = class_isMetaClass(v331);
      v369 = object_getClassName(v418);
      v382 = sel_getName("signWithKeyInSlot:AID:signRequest:paymentRequest:authorization:uid:response:");
      v333 = 45;
      if (v332)
      {
        v333 = 43;
      }

      v330(3, "%c[%{public}s %{public}s]:%i Failed to retrieve more data from CRS : %{public}@", v333, v369, v382, 1015, v241);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v334 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v334, OS_LOG_TYPE_ERROR))
    {
      v335 = object_getClass(v418);
      if (class_isMetaClass(v335))
      {
        v336 = 43;
      }

      else
      {
        v336 = 45;
      }

      v337 = object_getClassName(v418);
      v338 = sel_getName("signWithKeyInSlot:AID:signRequest:paymentRequest:authorization:uid:response:");
      *buf = 67110146;
      v477 = v336;
      v478 = 2082;
      v479 = v337;
      v480 = 2082;
      v481 = v338;
      v482 = 1024;
      v483 = 1015;
      v484 = 2114;
      v485 = v241;
      _os_log_impl(&_mh_execute_header, v334, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to retrieve more data from CRS : %{public}@", buf, 0x2Cu);
    }

    v33 = v241;
    v54 = v33;
    goto LABEL_250;
  }

LABEL_200:
  v245 = [NFResponseAPDU responseWithData:v237];

  v416 = v245;
  if (!v245)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v246 = NFLogGetLogger();
    if (v246)
    {
      v247 = v246;
      v248 = object_getClass(v418);
      v249 = class_isMetaClass(v248);
      v250 = object_getClassName(v418);
      v380 = sel_getName("signWithKeyInSlot:AID:signRequest:paymentRequest:authorization:uid:response:");
      v251 = 45;
      if (v249)
      {
        v251 = 43;
      }

      v247(3, "%c[%{public}s %{public}s]:%i Failed to sign with Key in SE, expecting RAPDU", v251, v250, v380, 1040);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v252 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v252, OS_LOG_TYPE_ERROR))
    {
      v253 = object_getClass(v418);
      if (class_isMetaClass(v253))
      {
        v254 = 43;
      }

      else
      {
        v254 = 45;
      }

      v255 = object_getClassName(v418);
      v256 = sel_getName("signWithKeyInSlot:AID:signRequest:paymentRequest:authorization:uid:response:");
      *buf = 67109890;
      v477 = v254;
      v478 = 2082;
      v479 = v255;
      v480 = 2082;
      v481 = v256;
      v482 = 1024;
      v483 = 1040;
      _os_log_impl(&_mh_execute_header, v252, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to sign with Key in SE, expecting RAPDU", buf, 0x22u);
    }

    v257 = [NSError alloc];
    v231 = [NSString stringWithUTF8String:"nfcd"];
    v448 = NSLocalizedDescriptionKey;
    v232 = [NSString stringWithUTF8String:"Command Error"];
    v449 = v232;
    v233 = [NSDictionary dictionaryWithObjects:&v449 forKeys:&v448 count:1];
    v234 = v257;
    v235 = v231;
    v236 = 16;
LABEL_192:
    v33 = [v234 initWithDomain:v235 code:v236 userInfo:v233];

    v416 = 0;
    goto LABEL_243;
  }

LABEL_171:
  if ([v416 status] != 36864)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v258 = NFLogGetLogger();
    if (v258)
    {
      v259 = v258;
      v260 = object_getClass(v418);
      v261 = class_isMetaClass(v260);
      v262 = object_getClassName(v418);
      v263 = sel_getName("signWithKeyInSlot:AID:signRequest:paymentRequest:authorization:uid:response:");
      v386 = [v416 status];
      v264 = 45;
      if (v261)
      {
        v264 = 43;
      }

      v259(3, "%c[%{public}s %{public}s]:%i Failed to sign through CRS, Expecting 0x9000 got : 0x%04X", v264, v262, v263, 1045, v386);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v265 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v265, OS_LOG_TYPE_ERROR))
    {
      v266 = object_getClass(v418);
      if (class_isMetaClass(v266))
      {
        v267 = 43;
      }

      else
      {
        v267 = 45;
      }

      v268 = object_getClassName(v418);
      v269 = sel_getName("signWithKeyInSlot:AID:signRequest:paymentRequest:authorization:uid:response:");
      v270 = [v416 status];
      *buf = 67110146;
      v477 = v267;
      v478 = 2082;
      v479 = v268;
      v480 = 2082;
      v481 = v269;
      v482 = 1024;
      v483 = 1045;
      v484 = 1024;
      LODWORD(v485) = v270;
      _os_log_impl(&_mh_execute_header, v265, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to sign through CRS, Expecting 0x9000 got : 0x%04X", buf, 0x28u);
    }

    v271 = [NSError alloc];
    v272 = [v416 status];
    v446 = NSLocalizedDescriptionKey;
    v273 = [v416 status];
    if (v273 == 36864)
    {
      v274 = "Success";
    }

    else
    {
      v295 = &word_100318090;
      v296 = 24;
      v274 = "Unknown Error";
      do
      {
        if (!--v296)
        {
          goto LABEL_242;
        }

        v297 = v295 + 8;
        v298 = *v295;
        v295 += 8;
      }

      while (v298 != v273);
      v274 = *(v297 - 1);
    }

LABEL_242:
    v299 = [NSString stringWithUTF8String:v274];
    v447 = v299;
    v300 = [NSDictionary dictionaryWithObjects:&v447 forKeys:&v446 count:1];
    v33 = [v271 initWithDomain:@"GP" code:v272 userInfo:v300];

LABEL_243:
    v54 = 0;
    goto LABEL_314;
  }

  v211 = [v416 response];
  v212 = [NFTLV TLVsWithData:v211];

  v430 = 0u;
  v431 = 0u;
  v428 = 0u;
  v429 = 0u;
  v213 = v212;
  v214 = [v213 countByEnumeratingWithState:&v428 objects:v445 count:16];
  if (!v214)
  {
    goto LABEL_180;
  }

  v215 = v214;
  v216 = *v429;
  while (2)
  {
    for (i = 0; i != v215; i = i + 1)
    {
      if (*v429 != v216)
      {
        objc_enumerationMutation(v213);
      }

      v218 = *(*(&v428 + 1) + 8 * i);
      if ([v218 tag] == 234)
      {
        v279 = objc_opt_new();
        v280 = [v218 value];
        v427 = 0;
        v281 = sub_1000ACE4C(v279, v413, v280, v403, &v427);
        v282 = v427;
        if (v279)
        {
          v283 = *(v279 + 16);
        }

        else
        {
          v283 = 0;
        }

        v284 = [v283 value];
        v406 = [NFTrustSignResponse signResponseWithRawData:v281 counterValueData:v284];

        if (v282)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v285 = NFLogGetLogger();
          if (v285)
          {
            v286 = v285;
            v287 = object_getClass(v418);
            v288 = class_isMetaClass(v287);
            v368 = object_getClassName(v418);
            v381 = sel_getName("signWithKeyInSlot:AID:signRequest:paymentRequest:authorization:uid:response:");
            v289 = 45;
            if (v288)
            {
              v289 = 43;
            }

            v286(3, "%c[%{public}s %{public}s]:%i Error in Opaque Data response : %{public}@", v289, v368, v381, 1071, v282);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v290 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v290, OS_LOG_TYPE_ERROR))
          {
            v291 = object_getClass(v418);
            if (class_isMetaClass(v291))
            {
              v292 = 43;
            }

            else
            {
              v292 = 45;
            }

            v293 = object_getClassName(v418);
            v294 = sel_getName("signWithKeyInSlot:AID:signRequest:paymentRequest:authorization:uid:response:");
            *buf = 67110146;
            v477 = v292;
            v478 = 2082;
            v479 = v293;
            v480 = 2082;
            v481 = v294;
            v482 = 1024;
            v483 = 1071;
            v484 = 2114;
            v485 = v282;
            _os_log_impl(&_mh_execute_header, v290, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Error in Opaque Data response : %{public}@", buf, 0x2Cu);
          }

          v33 = v282;
          v54 = v33;
          goto LABEL_313;
        }

        if (!v406)
        {
          goto LABEL_181;
        }

        v425 = 0u;
        v426 = 0u;
        v423 = 0u;
        v424 = 0u;
        v307 = v213;
        v308 = [v307 countByEnumeratingWithState:&v423 objects:v444 count:16];
        v309 = 0;
        if (v308)
        {
          sela = *v424;
          do
          {
            for (j = 0; j != v308; j = (j + 1))
            {
              if (*v424 != sela)
              {
                objc_enumerationMutation(v307);
              }

              v311 = *(*(&v423 + 1) + 8 * j);
              if ([v311 tag] == 235)
              {
                v312 = v311;

                v309 = v312;
              }
            }

            v308 = [v307 countByEnumeratingWithState:&v423 objects:v444 count:16];
          }

          while (v308);

          if (!v309)
          {
            v308 = 0;
            goto LABEL_310;
          }

          v313 = [v309 childWithTag:225];
          if (!v313)
          {
            v33 = sub_10013DC5C(@"Expecting getOnlineDPANResponse");
            goto LABEL_311;
          }

          v307 = v313;
          v314 = [v313 childWithTag:130];
          if (!v314)
          {
            v33 = sub_10013DC5C(@"Expecting transactionID in getOnlineDPANResponse");

            goto LABEL_311;
          }

          v315 = v314;
          v316 = objc_opt_new();
          v317 = [v315 asData];
          v318 = [v317 NF_asHexString];
          [v316 setValue:v318 forKey:@"transactionIdentifier"];

          v319 = [v309 value];
          [v316 setValue:v319 forKey:@"transactionData"];

          selb = v316;
          v308 = [[NFECommercePaymentResponse alloc] initWithDictionary:v316];
          v320 = objc_opt_new();
          v321 = [v418 rsaCertificate];

          if (v321)
          {
            v322 = [v418 rsaCertificate];
            [v320 setObject:v322 forKeyedSubscript:@"RSA"];
          }

          v323 = [v418 eccCertificate];

          if (v323)
          {
            v324 = [v418 eccCertificate];
            [v320 setObject:v324 forKeyedSubscript:@"ECDSA"];
          }

          v325 = [v418 eckaCertificate];

          if (v325)
          {
            v326 = [v418 eckaCertificate];
            [v320 setObject:v326 forKeyedSubscript:@"ECKA"];
          }

          v327 = [v418 eccCertificate];

          if (v327)
          {
            v328 = [v418 eccCertificate];
            [v320 setObject:v328 forKeyedSubscript:@"ECC"];
          }

          [(NFECommercePaymentResponse *)v308 setCerts:v320];
        }

LABEL_310:
        *a8 = [NFTrustPaymentSignResponse paymentSignResponseWithSignResponse:v406 paymentResponse:v308];

        v33 = 0;
LABEL_311:

        goto LABEL_312;
      }
    }

    v215 = [v213 countByEnumeratingWithState:&v428 objects:v445 count:16];
    if (v215)
    {
      continue;
    }

    break;
  }

LABEL_180:

LABEL_181:
  v33 = sub_10013DC5C(@"Could create NFTrustSignResponse");
LABEL_312:
  v54 = 0;
LABEL_313:

LABEL_314:
  v18 = v415;
  v15 = v397;
  v16 = v401;
LABEL_315:
  v82 = v412;
  v42 = v413;
  v131 = v408;
LABEL_316:

LABEL_317:
LABEL_318:

LABEL_319:
LABEL_320:

LABEL_321:
  v20 = v416;
  v39 = v414;
LABEL_322:

  v34 = v20;
  v35 = v54;
LABEL_16:

LABEL_21:

  return v33;
}

id *sub_1000B2E8C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_self();
  v7 = objc_opt_new();
  v8 = v7;
  if (v7)
  {
    objc_storeStrong((v7 + 8), a3);
    objc_storeStrong(v8 + 2, a2);
  }

  return v8;
}

id sub_1000B3EA0(void *a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v167 = a1;
  if (!a1)
  {
    v162 = 0;
    goto LABEL_28;
  }

  v160 = objc_opt_new();
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v6 = Logger;
    Class = object_getClass(a1);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(a1);
    Name = sel_getName("crs_getApplicationsWithSearchCriteria:os:");
    v9 = 45;
    if (isMetaClass)
    {
      v9 = 43;
    }

    v6(6, "%c[%{public}s %{public}s]:%i OS=%d", v9, ClassName, Name, 214, a3);
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

    *buf = 67110146;
    v235 = v12;
    v236 = 2082;
    v237 = object_getClassName(a1);
    v238 = 2082;
    v239 = sel_getName("crs_getApplicationsWithSearchCriteria:os:");
    v240 = 1024;
    v241 = 214;
    v242 = 1024;
    v243 = a3;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i OS=%d", buf, 0x28u);
  }

  if (!v4)
  {
    v13 = [NFTLV TLVWithTag:79 value:0];
    v4 = [v13 asData];
  }

  v14 = sub_10015837C(a1, 128, 242, 64, 0, v4, 0, a3, 0);
  if (!v14)
  {
LABEL_16:
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v17 = NFLogGetLogger();
    if (v17)
    {
      v18 = v17;
      v19 = object_getClass(a1);
      v20 = class_isMetaClass(v19);
      v154 = object_getClassName(a1);
      v156 = sel_getName("crs_getApplicationsWithSearchCriteria:os:");
      v21 = 45;
      if (v20)
      {
        v21 = 43;
      }

      v18(3, "%c[%{public}s %{public}s]:%i Command failed for OS %d", v21, v154, v156, 222, a3);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v22 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = object_getClass(a1);
      v24 = v22;
      if (class_isMetaClass(v23))
      {
        v25 = 43;
      }

      else
      {
        v25 = 45;
      }

      v26 = object_getClassName(a1);
      v27 = sel_getName("crs_getApplicationsWithSearchCriteria:os:");
      *buf = 67110146;
      v235 = v25;
      v22 = v24;
      v236 = 2082;
      v237 = v26;
      v238 = 2082;
      v239 = v27;
      v240 = 1024;
      v241 = 222;
      v242 = 1024;
      v243 = a3;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Command failed for OS %d", buf, 0x28u);
    }

    v14 = 0;
LABEL_26:
    v162 = 0;
    goto LABEL_27;
  }

  while ([v14 status] == 25360)
  {
    v15 = [v14 response];
    [v160 appendData:v15];

    v16 = sub_10015837C(a1, 128, 242, 64, 1, v4, 0, a3, 0);

    v14 = v16;
    if (!v16)
    {
      goto LABEL_16;
    }
  }

  if ([v14 status] != 36864)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v140 = NFLogGetLogger();
    if (v140)
    {
      v141 = v140;
      v142 = object_getClass(a1);
      v143 = class_isMetaClass(v142);
      v144 = object_getClassName(a1);
      v145 = sel_getName("crs_getApplicationsWithSearchCriteria:os:");
      v158 = [v14 status];
      v146 = 45;
      if (v143)
      {
        v146 = 43;
      }

      v141(3, "%c[%{public}s %{public}s]:%i Returned error: 0x%04x for OS %d", v146, v144, v145, 230, v158, a3);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v22 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v147 = object_getClass(a1);
      v148 = v22;
      if (class_isMetaClass(v147))
      {
        v149 = 43;
      }

      else
      {
        v149 = 45;
      }

      v150 = object_getClassName(a1);
      v151 = sel_getName("crs_getApplicationsWithSearchCriteria:os:");
      v152 = [v14 status];
      *buf = 67110402;
      v235 = v149;
      v22 = v148;
      v236 = 2082;
      v237 = v150;
      v238 = 2082;
      v239 = v151;
      v240 = 1024;
      v241 = 230;
      v242 = 1024;
      v243 = v152;
      v244 = 1024;
      v245 = a3;
      _os_log_impl(&_mh_execute_header, v148, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Returned error: 0x%04x for OS %d", buf, 0x2Eu);
    }

    goto LABEL_26;
  }

  v159 = v14;
  v29 = [v14 response];
  [v160 appendData:v29];

  v162 = objc_opt_new();
  v184 = 0u;
  v185 = 0u;
  v186 = 0u;
  v187 = 0u;
  v22 = [NFTLV TLVsWithData:v160 requireDefiniteEncoding:1];
  v164 = [v22 countByEnumeratingWithState:&v184 objects:v217 count:16];
  if (v164)
  {
    v163 = *v185;
    while (1)
    {
      v30 = 0;
      do
      {
        if (*v185 != v163)
        {
          objc_enumerationMutation(v22);
        }

        v165 = v30;
        v31 = *(*(&v184 + 1) + 8 * v30);
        v170 = v31;
        if ([v31 tag] != 97)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v128 = NFLogGetLogger();
          if (v128)
          {
            v129 = v128;
            v130 = object_getClass(v167);
            v131 = class_isMetaClass(v130);
            v132 = object_getClassName(v167);
            v133 = sel_getName("crs_applicationsFromTLV:os:");
            v157 = [v31 tag];
            v134 = 45;
            if (v131)
            {
              v134 = 43;
            }

            v129(3, "%c[%{public}s %{public}s]:%i Unexpected tag: 0x%x", v134, v132, v133, 58, v157);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v32 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            v135 = object_getClass(v167);
            if (class_isMetaClass(v135))
            {
              v136 = 43;
            }

            else
            {
              v136 = 45;
            }

            v137 = object_getClassName(v167);
            v138 = sel_getName("crs_applicationsFromTLV:os:");
            v139 = [v31 tag];
            *buf = 67110146;
            v235 = v136;
            v236 = 2082;
            v237 = v137;
            v238 = 2082;
            v239 = v138;
            v240 = 1024;
            v241 = 58;
            v242 = 1024;
            v243 = v139;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unexpected tag: 0x%x", buf, 0x28u);
            v127 = 0;
          }

          else
          {
            v127 = 0;
          }

          goto LABEL_163;
        }

        v166 = objc_opt_new();
        v32 = objc_opt_new();
        v33 = [[NSNumber alloc] initWithInteger:a3];
        [v32 setObject:v33 forKeyedSubscript:@"seOS"];

        v215 = 0u;
        v216 = 0u;
        v213 = 0u;
        v214 = 0u;
        v34 = [v31 children];
        v172 = [(NFApplet *)v34 countByEnumeratingWithState:&v213 objects:buf count:16];
        if (!v172)
        {
          goto LABEL_151;
        }

        v168 = 0;
        v171 = *v214;
        v169 = v34;
        do
        {
          v35 = 0;
          do
          {
            if (*v214 != v171)
            {
              v36 = v35;
              objc_enumerationMutation(v34);
              v35 = v36;
            }

            v173 = v35;
            v37 = *(*(&v213 + 1) + 8 * v35);
            v38 = [v37 tag];
            if (v38 <= 161)
            {
              if (v38 <= 131)
              {
                switch(v38)
                {
                  case 79:
                    if (v168)
                    {
                      v77 = [[NFApplet alloc] initWithDictionary:v32];
                      [v166 addObject:v77];

                      [v32 removeAllObjects];
                    }

                    v78 = [v37 value];
                    [v32 setObject:v78 forKeyedSubscript:@"identifier"];

                    [v32 setObject:@"embedded" forKeyedSubscript:@"seid"];
                    v168 = 1;
                    goto LABEL_133;
                  case 128:
                    v39 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v37 valueAsUnsignedLong]);
                    v40 = v32;
                    v41 = v39;
                    v42 = @"updateCounter";
                    break;
                  case 129:
                    v39 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v37 valueAsUnsignedLong]);
                    v40 = v32;
                    v41 = v39;
                    v42 = @"priority";
                    break;
                  default:
                    goto LABEL_134;
                }

LABEL_131:
                [v40 setObject:v41 forKeyedSubscript:v42];
LABEL_132:

                goto LABEL_133;
              }

              if (v38 != 132)
              {
                if (v38 != 135)
                {
                  if (v38 == 147)
                  {
                    v194 = 0u;
                    v195 = 0u;
                    v192 = 0u;
                    v193 = 0u;
                    v54 = [v37 value];
                    v55 = [NFTLV TLVsWithData:v54];

                    v178 = v55;
                    v56 = [v55 countByEnumeratingWithState:&v192 objects:v219 count:16];
                    if (v56)
                    {
                      v57 = v56;
                      v58 = *v193;
                      v174 = *v193;
                      do
                      {
                        v59 = 0;
                        v176 = v57;
                        do
                        {
                          if (*v193 != v58)
                          {
                            objc_enumerationMutation(v178);
                          }

                          v60 = *(*(&v192 + 1) + 8 * v59);
                          if ([v60 tag] == 160)
                          {
                            v182 = v59;
                            v61 = [v60 children];
                            v62 = [v61 firstObject];

                            v190 = 0u;
                            v191 = 0u;
                            v188 = 0u;
                            v189 = 0u;
                            v180 = v62;
                            v63 = [v62 children];
                            v64 = [v63 countByEnumeratingWithState:&v188 objects:v218 count:16];
                            if (v64)
                            {
                              v65 = v64;
                              v66 = *v189;
                              do
                              {
                                for (i = 0; i != v65; i = i + 1)
                                {
                                  if (*v189 != v66)
                                  {
                                    objc_enumerationMutation(v63);
                                  }

                                  v68 = *(*(&v188 + 1) + 8 * i);
                                  if ([v68 tag] == 128)
                                  {
                                    v69 = [v68 value];
                                    v70 = [v69 length];

                                    if (v70 == 2)
                                    {
                                      v71 = [v68 value];
                                      [v32 setObject:v71 forKeyedSubscript:@"typeFSystemCode"];
                                    }
                                  }
                                }

                                v65 = [v63 countByEnumeratingWithState:&v188 objects:v218 count:16];
                              }

                              while (v65);
                            }

                            v58 = v174;
                            v57 = v176;
                            v59 = v182;
                          }

                          v59 = v59 + 1;
                        }

                        while (v59 != v57);
                        v57 = [v178 countByEnumeratingWithState:&v192 objects:v219 count:16];
                      }

                      while (v57);
                    }
                  }

                  goto LABEL_133;
                }

                v39 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v37 valueAsUnsignedLong]);
                v40 = v32;
                v41 = v39;
                v42 = @"family";
                goto LABEL_131;
              }

              v81 = [v37 value];
              v82 = v32;
              v83 = v81;
              v84 = @"moduleIdentifier";
LABEL_137:
              [v82 setObject:v83 forKeyedSubscript:v84];

              goto LABEL_134;
            }

            if (v38 <= 165)
            {
              if (v38 != 162)
              {
                if (v38 == 163)
                {
                  v43 = objc_opt_new();
                  v208 = 0u;
                  v209 = 0u;
                  v210 = 0u;
                  v211 = 0u;
                  v107 = [v37 childrenWithTag:79];
                  v108 = [v107 countByEnumeratingWithState:&v208 objects:v223 count:16];
                  if (v108)
                  {
                    v109 = v108;
                    v110 = *v209;
                    do
                    {
                      for (j = 0; j != v109; j = j + 1)
                      {
                        if (*v209 != v110)
                        {
                          objc_enumerationMutation(v107);
                        }

                        v112 = [*(*(&v208 + 1) + 8 * j) value];
                        v113 = [v112 NF_asHexString];
                        [v43 addObject:v113];
                      }

                      v109 = [v107 countByEnumeratingWithState:&v208 objects:v223 count:16];
                    }

                    while (v109);
                  }

                  v51 = v32;
                  v52 = v43;
                  v53 = @"groupMembers";
                }

                else
                {
                  if (v38 != 164)
                  {
                    goto LABEL_134;
                  }

                  v43 = objc_opt_new();
                  v204 = 0u;
                  v205 = 0u;
                  v206 = 0u;
                  v207 = 0u;
                  v44 = [v37 childrenWithTag:79];
                  v45 = [v44 countByEnumeratingWithState:&v204 objects:v222 count:16];
                  if (v45)
                  {
                    v46 = v45;
                    v47 = *v205;
                    do
                    {
                      for (k = 0; k != v46; k = k + 1)
                      {
                        if (*v205 != v47)
                        {
                          objc_enumerationMutation(v44);
                        }

                        v49 = [*(*(&v204 + 1) + 8 * k) value];
                        v50 = [v49 NF_asHexString];
                        [v43 addObject:v50];
                      }

                      v46 = [v44 countByEnumeratingWithState:&v204 objects:v222 count:16];
                    }

                    while (v46);
                  }

                  v51 = v32;
                  v52 = v43;
                  v53 = @"referencedApps";
                }

                [v51 setObject:v52 forKeyedSubscript:v53];

                goto LABEL_133;
              }

              v79 = [v37 childWithTag:79];
              v39 = v79;
              if (!v79)
              {
                goto LABEL_132;
              }

              v80 = [v79 value];
              [v32 setObject:v80 forKeyedSubscript:@"groupHead"];
              goto LABEL_147;
            }

            if (v38 != 166)
            {
              if (v38 == 196)
              {
                v81 = [v37 value];
                v82 = v32;
                v83 = v81;
                v84 = @"packageIdentifier";
                goto LABEL_137;
              }

              if (v38 != 40816)
              {
                goto LABEL_134;
              }

              v212 = 0;
              v72 = [v37 value];
              v73 = [v72 length];

              if (v73 == 2)
              {
                v74 = [v37 value];
                [v74 getBytes:&v212 + 1 range:{0, 1}];

                v75 = [NSNumber numberWithUnsignedChar:HIBYTE(v212)];
                [v32 setObject:v75 forKeyedSubscript:@"lifecycleState"];

                v76 = [v37 value];
                [v76 getBytes:&v212 range:{1, 1}];

                v39 = [NSNumber numberWithUnsignedChar:v212];
                v40 = v32;
                v41 = v39;
                v42 = @"activationState";
                goto LABEL_131;
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v114 = NFLogGetLogger();
              if (v114)
              {
                v115 = v114;
                v116 = object_getClass(v167);
                v117 = class_isMetaClass(v116);
                v118 = object_getClassName(v167);
                v119 = sel_getName("crs_applicationsFromTLV:os:");
                v120 = [v37 value];
                v121 = 45;
                if (v117)
                {
                  v121 = 43;
                }

                v115(3, "%c[%{public}s %{public}s]:%i Invalid value: %{public}@", v121, v118, v119, 97, v120);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v39 = NFSharedLogGetLogger();
              if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_132;
              }

              v122 = object_getClass(v167);
              if (class_isMetaClass(v122))
              {
                v123 = 43;
              }

              else
              {
                v123 = 45;
              }

              v124 = object_getClassName(v167);
              v125 = sel_getName("crs_applicationsFromTLV:os:");
              v80 = [v37 value];
              *v224 = 67110146;
              v225 = v123;
              v226 = 2082;
              v227 = v124;
              v228 = 2082;
              v229 = v125;
              v230 = 1024;
              v231 = 97;
              v232 = 2114;
              v233 = v80;
              _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid value: %{public}@", v224, 0x2Cu);
LABEL_147:

              goto LABEL_132;
            }

            v85 = [v37 value];
            [v32 setObject:v85 forKeyedSubscript:@"discretionary"];

            v175 = objc_opt_new();
            v200 = 0u;
            v201 = 0u;
            v202 = 0u;
            v203 = 0u;
            v181 = [v37 children];
            v86 = [v181 countByEnumeratingWithState:&v200 objects:v221 count:16];
            if (!v86)
            {
              goto LABEL_117;
            }

            v87 = v86;
            v88 = *v201;
            v177 = *v201;
            do
            {
              v89 = 0;
              v179 = v87;
              do
              {
                if (*v201 != v88)
                {
                  objc_enumerationMutation(v181);
                }

                v90 = *(*(&v200 + 1) + 8 * v89);
                if ([v90 tag] == 254)
                {
                  v198 = 0u;
                  v199 = 0u;
                  v196 = 0u;
                  v197 = 0u;
                  v91 = [v90 children];
                  v92 = [v91 countByEnumeratingWithState:&v196 objects:v220 count:16];
                  if (v92)
                  {
                    v93 = v92;
                    v183 = v89;
                    v94 = *v197;
                    do
                    {
                      for (m = 0; m != v93; m = m + 1)
                      {
                        if (*v197 != v94)
                        {
                          objc_enumerationMutation(v91);
                        }

                        v96 = *(*(&v196 + 1) + 8 * m);
                        if ([v96 tag] == 57152)
                        {
                          v97 = [v96 value];
                          v98 = [v97 length];

                          if (v98 == 2)
                          {
                            v224[0] = 0;
                            v99 = [v96 value];
                            [v99 getBytes:v224 range:{1, 1}];

                            v100 = [NSNumber numberWithInt:v224[0] & 1];
                            [v32 setObject:v100 forKeyedSubscript:@"authTransientSupport"];

                            v101 = [NSNumber numberWithInt:(v224[0] >> 1) & 1];
                            [v32 setObject:v101 forKeyedSubscript:@"terminateAppSupport"];

                            v102 = [NSNumber numberWithInt:(v224[0] >> 2) & 1];
                            [v32 setObject:v102 forKeyedSubscript:@"containerInstance"];

                            v103 = [NSNumber numberWithInt:(v224[0] >> 3) & 1];
                            [v32 setObject:v103 forKeyedSubscript:@"proxyInstance"];

                            v104 = [NSNumber numberWithInt:(v224[0] >> 4) & 3];
                            [v32 setObject:v104 forKeyedSubscript:@"groupActivationStyle"];

                            v105 = [NSNumber numberWithInt:(v224[0] >> 6) & 1];
                            [v32 setObject:v105 forKeyedSubscript:@"authTransientConfigurable"];
                          }
                        }
                      }

                      v93 = [v91 countByEnumeratingWithState:&v196 objects:v220 count:16];
                    }

                    while (v93);
                    v88 = v177;
                    v87 = v179;
                    v89 = v183;
                  }
                }

                else
                {
                  if ([v90 tag] != 221)
                  {
                    goto LABEL_115;
                  }

                  v91 = [v90 value];
                  v106 = [v91 NF_asHexString];
                  [v175 addObject:v106];
                }

LABEL_115:
                v89 = v89 + 1;
              }

              while (v89 != v87);
              v87 = [v181 countByEnumeratingWithState:&v200 objects:v221 count:16];
            }

            while (v87);
LABEL_117:

            if ([v175 count])
            {
              [v32 setObject:v175 forKeyedSubscript:@"multiSEApplicationGroup"];
            }

LABEL_133:
            v34 = v169;
            v31 = v170;
LABEL_134:
            v35 = v173 + 1;
          }

          while ((v173 + 1) != v172);
          v126 = [(NFApplet *)v34 countByEnumeratingWithState:&v213 objects:buf count:16];
          v172 = v126;
        }

        while (v126);

        if (v168)
        {
          v34 = [[NFApplet alloc] initWithDictionary:v32];
          [v166 addObject:v34];
LABEL_151:
        }

        v127 = v166;
LABEL_163:

        if (v127)
        {
          [v162 addObjectsFromArray:v127];
        }

        v30 = v165 + 1;
      }

      while ((v165 + 1) != v164);
      v164 = [v22 countByEnumeratingWithState:&v184 objects:v217 count:16];
      if (!v164)
      {
        v14 = v159;
        break;
      }
    }
  }

LABEL_27:

LABEL_28:

  return v162;
}

uint64_t sub_1000B539C(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v3 = Logger;
    Class = object_getClass(a1);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(a1);
    Name = sel_getName("crs_deactivateAll");
    v7 = 45;
    if (isMetaClass)
    {
      v7 = 43;
    }

    v3(6, "%c[%{public}s %{public}s]:%i ", v7, ClassName, Name, 249);
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
    v45 = v10;
    v46 = 2082;
    v47 = object_getClassName(a1);
    v48 = 2082;
    v49 = sel_getName("crs_deactivateAll");
    v50 = 1024;
    v51 = 249;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }

  v11 = [[NSData alloc] initWithBytes:&unk_100296EE8 length:2];
  v12 = sub_100158334(a1, 128, 240, 1, 0, v11, 0);

  if (!v12)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v14 = NFLogGetLogger();
    if (v14)
    {
      v15 = v14;
      v16 = object_getClass(a1);
      v17 = class_isMetaClass(v16);
      v18 = object_getClassName(a1);
      v42 = sel_getName("crs_deactivateAll");
      v19 = 45;
      if (v17)
      {
        v19 = 43;
      }

      v15(3, "%c[%{public}s %{public}s]:%i Command failed", v19, v18, v42, 259);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v20 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_33;
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
    v24 = sel_getName("crs_deactivateAll");
    *buf = 67109890;
    v45 = v22;
    v46 = 2082;
    v47 = v23;
    v48 = 2082;
    v49 = v24;
    v50 = 1024;
    v51 = 259;
    v25 = "%c[%{public}s %{public}s]:%i Command failed";
    v26 = v20;
    v27 = 34;
    goto LABEL_32;
  }

  if ([v12 status] != 36864)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v28 = NFLogGetLogger();
    if (v28)
    {
      v29 = v28;
      v30 = object_getClass(a1);
      v31 = class_isMetaClass(v30);
      v32 = object_getClassName(a1);
      v33 = sel_getName("crs_deactivateAll");
      v43 = [v12 status];
      v34 = 45;
      if (v31)
      {
        v34 = 43;
      }

      v29(3, "%c[%{public}s %{public}s]:%i Returned error: 0x%04x", v34, v32, v33, 264, v43);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v20 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_33;
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
    v38 = sel_getName("crs_deactivateAll");
    v39 = [v12 status];
    *buf = 67110146;
    v45 = v36;
    v46 = 2082;
    v47 = v37;
    v48 = 2082;
    v49 = v38;
    v50 = 1024;
    v51 = 264;
    v52 = 1024;
    v53 = v39;
    v25 = "%c[%{public}s %{public}s]:%i Returned error: 0x%04x";
    v26 = v20;
    v27 = 40;
LABEL_32:
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, v25, buf, v27);
LABEL_33:

    v13 = 0;
    goto LABEL_34;
  }

  v13 = 1;
LABEL_34:

  return v13;
}

uint64_t sub_1000B57E8(id *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = v6;
  if (!a1)
  {
LABEL_15:
    v25 = 0;
    goto LABEL_115;
  }

  if (![v6 count])
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v17 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("crs_setApplications:isSelectable:groupActivationStyle:");
      v21 = 45;
      if (isMetaClass)
      {
        v21 = 43;
      }

      v17(3, "%c[%{public}s %{public}s]:%i Empty applets", v21, ClassName, Name, 370);
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

      *buf = 67109890;
      v155 = v24;
      v156 = 2082;
      v157 = object_getClassName(a1);
      v158 = 2082;
      v159 = sel_getName("crs_setApplications:isSelectable:groupActivationStyle:");
      v160 = 1024;
      v161 = 370;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Empty applets", buf, 0x22u);
    }

    goto LABEL_15;
  }

  v137 = v7;
  v8 = v7;
  v9 = [a1 handle];
  v10 = [v9 info];
  v11 = [v10 seType];

  if (v11 == 2)
  {
    v12 = [a1 handle];
    v13 = [v12 info];
    v14 = [v13 sequenceCounter];
    v15 = [v14 unsignedIntegerValue] < 0x321;
  }

  else
  {
    v15 = 0;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v26 = NFLogGetLogger();
  v138 = a1;
  if (v26)
  {
    v27 = v26;
    v28 = object_getClass(a1);
    v29 = class_isMetaClass(v28);
    v30 = object_getClassName(a1);
    v31 = sel_getName("_crs_setApplications:isSelectable:groupActivationStyle:");
    [NFApplet aidListForPrinting:v8];
    v33 = v32 = v8;
    v129 = v31;
    a1 = v138;
    v34 = 43;
    if (!v29)
    {
      v34 = 45;
    }

    v27(6, "%c[%{public}s %{public}s]:%i AIDs=%{public}@ isSelectable=%d groupType=%d custom=%d", v34, v30, v129, 275, v33, a3, a4, v15);

    v8 = v32;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v35 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    v36 = object_getClass(a1);
    if (class_isMetaClass(v36))
    {
      v37 = 43;
    }

    else
    {
      v37 = 45;
    }

    v38 = object_getClassName(a1);
    v39 = sel_getName("_crs_setApplications:isSelectable:groupActivationStyle:");
    v40 = [NFApplet aidListForPrinting:v8];
    *buf = 67110914;
    v155 = v37;
    v156 = 2082;
    v157 = v38;
    v158 = 2082;
    v159 = v39;
    v160 = 1024;
    v161 = 275;
    v162 = 2114;
    v163 = v40;
    v164 = 1024;
    v165 = a3;
    v166 = 1024;
    v167 = a4;
    v168 = 1024;
    v169 = v15;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i AIDs=%{public}@ isSelectable=%d groupType=%d custom=%d", buf, 0x3Eu);

    a1 = v138;
  }

  if (!v15)
  {
    goto LABEL_33;
  }

  if (!a3)
  {
    v7 = v137;
    if (a4 < 3)
    {
      v41 = 8 * (a4 & 0x1F);
      v42 = 8751360;
      goto LABEL_32;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v106 = NFLogGetLogger();
    if (v106)
    {
      v107 = v106;
      v108 = object_getClass(a1);
      v109 = class_isMetaClass(v108);
      v110 = object_getClassName(a1);
      v132 = sel_getName("_crs_setApplications:isSelectable:groupActivationStyle:");
      v111 = 45;
      if (v109)
      {
        v111 = 43;
      }

      v107(3, "%c[%{public}s %{public}s]:%i Invalid activation style: %d", v111, v110, v132, 308, a4);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v101 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
    {
LABEL_99:

      v25 = 0;
      goto LABEL_114;
    }

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
    v115 = sel_getName("_crs_setApplications:isSelectable:groupActivationStyle:");
    *buf = 67110146;
    v155 = v113;
    v156 = 2082;
    v157 = v114;
    v158 = 2082;
    v159 = v115;
    v160 = 1024;
    v161 = 308;
    v162 = 1024;
    LODWORD(v163) = a4;
LABEL_98:
    _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid activation style: %d", buf, 0x28u);
    goto LABEL_99;
  }

  v7 = v137;
  if (a4 >= 3)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v95 = NFLogGetLogger();
    if (v95)
    {
      v96 = v95;
      v97 = object_getClass(a1);
      v98 = class_isMetaClass(v97);
      v99 = object_getClassName(a1);
      v131 = sel_getName("_crs_setApplications:isSelectable:groupActivationStyle:");
      v100 = 45;
      if (v98)
      {
        v100 = 43;
      }

      v96(3, "%c[%{public}s %{public}s]:%i Invalid activation style: %d", v100, v99, v131, 293, a4);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v101 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_99;
    }

    v102 = object_getClass(a1);
    if (class_isMetaClass(v102))
    {
      v103 = 43;
    }

    else
    {
      v103 = 45;
    }

    v104 = object_getClassName(a1);
    v105 = sel_getName("_crs_setApplications:isSelectable:groupActivationStyle:");
    *buf = 67110146;
    v155 = v103;
    v156 = 2082;
    v157 = v104;
    v158 = 2082;
    v159 = v105;
    v160 = 1024;
    v161 = 293;
    v162 = 1024;
    LODWORD(v163) = a4;
    goto LABEL_98;
  }

  v41 = 8 * (a4 & 0x1F);
  v42 = 8882945;
LABEL_32:
  LODWORD(a3) = v42 >> v41;
LABEL_33:
  v43 = objc_opt_new();
  v140 = 0u;
  v141 = 0u;
  v142 = 0u;
  v143 = 0u;
  v136 = v8;
  v44 = v8;
  v45 = [v44 countByEnumeratingWithState:&v140 objects:buf count:16];
  if (!v45)
  {
    v47 = 0;
    goto LABEL_47;
  }

  v46 = v45;
  v47 = 0;
  v48 = *v141;
  while (2)
  {
    for (i = 0; i != v46; i = i + 1)
    {
      if (*v141 != v48)
      {
        objc_enumerationMutation(v44);
      }

      v50 = [*(*(&v140 + 1) + 8 * i) identifierAsData];
      v51 = [NFTLV TLVWithTag:79 value:v50];

      v52 = [v51 asData];
      if ([v43 length])
      {
        v53 = [v43 length];
        if (&v53[[v52 length]] >= 0x100)
        {
          v54 = sub_100158334(v138, 128, 240, 1, a3, v43, 0);

          if (v54)
          {
            if ([v54 status] == 36864)
            {
              v55 = objc_opt_new();

              v43 = v55;
              v47 = v54;
              goto LABEL_43;
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v83 = NFLogGetLogger();
            if (v83)
            {
              v84 = v83;
              v85 = object_getClass(v138);
              v86 = class_isMetaClass(v85);
              v87 = object_getClassName(v138);
              v88 = sel_getName("_crs_setApplications:isSelectable:groupActivationStyle:");
              v135 = [v54 status];
              v89 = 45;
              if (v86)
              {
                v89 = 43;
              }

              v84(3, "%c[%{public}s %{public}s]:%i Returned error: 0x%04x", v89, v87, v88, 336, v135);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v75 = NFSharedLogGetLogger();
            if (!os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
            {
LABEL_79:

              v144[0] = 0;
              v8 = v136;
              v7 = v137;
              goto LABEL_113;
            }

            v90 = object_getClass(v138);
            if (class_isMetaClass(v90))
            {
              v91 = 43;
            }

            else
            {
              v91 = 45;
            }

            v92 = object_getClassName(v138);
            v93 = sel_getName("_crs_setApplications:isSelectable:groupActivationStyle:");
            v94 = [v54 status];
            *v144 = 67110146;
            v145 = v91;
            v146 = 2082;
            v147 = v92;
            v148 = 2082;
            v149 = v93;
            v150 = 1024;
            v151 = 336;
            v152 = 1024;
            v153 = v94;
            v80 = "%c[%{public}s %{public}s]:%i Returned error: 0x%04x";
            v81 = v75;
            v82 = 40;
          }

          else
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v69 = NFLogGetLogger();
            if (v69)
            {
              v70 = v69;
              v71 = object_getClass(v138);
              v72 = class_isMetaClass(v71);
              v73 = object_getClassName(v138);
              v130 = sel_getName("_crs_setApplications:isSelectable:groupActivationStyle:");
              v74 = 45;
              if (v72)
              {
                v74 = 43;
              }

              v70(3, "%c[%{public}s %{public}s]:%i Command failed", v74, v73, v130, 332);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v75 = NFSharedLogGetLogger();
            if (!os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_79;
            }

            v76 = object_getClass(v138);
            if (class_isMetaClass(v76))
            {
              v77 = 43;
            }

            else
            {
              v77 = 45;
            }

            v78 = object_getClassName(v138);
            v79 = sel_getName("_crs_setApplications:isSelectable:groupActivationStyle:");
            *v144 = 67109890;
            v145 = v77;
            v146 = 2082;
            v147 = v78;
            v148 = 2082;
            v149 = v79;
            v150 = 1024;
            v151 = 332;
            v80 = "%c[%{public}s %{public}s]:%i Command failed";
            v81 = v75;
            v82 = 34;
          }

          _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_ERROR, v80, v144, v82);
          goto LABEL_79;
        }
      }

LABEL_43:
      [v43 appendData:v52];
    }

    v46 = [v44 countByEnumeratingWithState:&v140 objects:buf count:16];
    if (v46)
    {
      continue;
    }

    break;
  }

LABEL_47:

  if (![v43 length])
  {
    v54 = v47;
    v8 = v136;
    v7 = v137;
    goto LABEL_101;
  }

  v54 = sub_100158334(v138, 128, 240, 1, a3, v43, 0);

  v8 = v136;
  if (v54)
  {
    v7 = v137;
    if ([v54 status] != 36864)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v56 = NFLogGetLogger();
      if (v56)
      {
        v57 = v56;
        v58 = object_getClass(v138);
        v59 = class_isMetaClass(v58);
        v60 = object_getClassName(v138);
        v61 = sel_getName("_crs_setApplications:isSelectable:groupActivationStyle:");
        v134 = [v54 status];
        v62 = 45;
        if (v59)
        {
          v62 = 43;
        }

        v57(3, "%c[%{public}s %{public}s]:%i Returned error: 0x%04x", v62, v60, v61, 358, v134);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v63 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        v64 = object_getClass(v138);
        if (class_isMetaClass(v64))
        {
          v65 = 43;
        }

        else
        {
          v65 = 45;
        }

        v66 = object_getClassName(v138);
        v67 = sel_getName("_crs_setApplications:isSelectable:groupActivationStyle:");
        v68 = [v54 status];
        *v144 = 67110146;
        v145 = v65;
        v146 = 2082;
        v147 = v66;
        v148 = 2082;
        v149 = v67;
        v150 = 1024;
        v151 = 358;
        v152 = 1024;
        v153 = v68;
        _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Returned error: 0x%04x", v144, 0x28u);
      }

      goto LABEL_112;
    }

LABEL_101:
    v144[0] = 1;
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v116 = NFLogGetLogger();
    v7 = v137;
    if (v116)
    {
      v117 = v116;
      v118 = object_getClass(v138);
      v119 = class_isMetaClass(v118);
      v120 = object_getClassName(v138);
      v133 = sel_getName("_crs_setApplications:isSelectable:groupActivationStyle:");
      v121 = 45;
      if (v119)
      {
        v121 = 43;
      }

      v117(3, "%c[%{public}s %{public}s]:%i Command failed", v121, v120, v133, 354);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v122 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
    {
      v123 = object_getClass(v138);
      if (class_isMetaClass(v123))
      {
        v124 = 43;
      }

      else
      {
        v124 = 45;
      }

      v125 = object_getClassName(v138);
      v126 = sel_getName("_crs_setApplications:isSelectable:groupActivationStyle:");
      *v144 = 67109890;
      v145 = v124;
      v146 = 2082;
      v147 = v125;
      v148 = 2082;
      v149 = v126;
      v150 = 1024;
      v151 = 354;
      _os_log_impl(&_mh_execute_header, v122, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Command failed", v144, 0x22u);
    }

    v54 = 0;
LABEL_112:
    v144[0] = 0;
  }

LABEL_113:

  v25 = v144[0];
LABEL_114:

LABEL_115:
  return v25;
}

uint64_t sub_1000B6574(uint64_t a1, void *a2)
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
      Name = sel_getName("crs_markApplicationForDelete:");
      v10 = [v3 identifier];
      v11 = 45;
      if (isMetaClass)
      {
        v11 = 43;
      }

      v5(5, "%c[%{public}s %{public}s]:%i AID=%{public}@", v11, ClassName, Name, 381, v10);
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

      v15 = object_getClassName(a1);
      v16 = sel_getName("crs_markApplicationForDelete:");
      v17 = [v3 identifier];
      *buf = 67110146;
      v54 = v14;
      v55 = 2082;
      v56 = v15;
      v57 = 2082;
      v58 = v16;
      v59 = 1024;
      v60 = 381;
      v61 = 2114;
      v62 = v17;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i AID=%{public}@", buf, 0x2Cu);
    }

    v18 = [a1 delegate];
    [v18 markApplicationForDelete:v3];

    v19 = [v3 identifierAsData];
    v20 = [NFTLV TLVWithTag:79 value:v19];

    v21 = [v20 asData];
    v22 = sub_100158334(a1, 128, 246, 0, 0, v21, 0);

    if (v22)
    {
      if ([v22 status] == 36864 || objc_msgSend(v22, "status") == 27266 && (objc_msgSend(v3, "identifierAsData"), v37 = objc_claimAutoreleasedReturnValue(), v37, !v37))
      {
        a1 = 1;
LABEL_36:

        goto LABEL_37;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v38 = NFLogGetLogger();
      if (v38)
      {
        v39 = v38;
        v40 = object_getClass(a1);
        v41 = class_isMetaClass(v40);
        v42 = object_getClassName(a1);
        v43 = sel_getName("crs_markApplicationForDelete:");
        v52 = [v22 status];
        v44 = 45;
        if (v41)
        {
          v44 = 43;
        }

        v39(3, "%c[%{public}s %{public}s]:%i Returned error: 0x%04x", v44, v42, v43, 407, v52);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v29 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
LABEL_35:

        a1 = 0;
        goto LABEL_36;
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
      v48 = sel_getName("crs_markApplicationForDelete:");
      v49 = [v22 status];
      *buf = 67110146;
      v54 = v46;
      v55 = 2082;
      v56 = v47;
      v57 = 2082;
      v58 = v48;
      v59 = 1024;
      v60 = 407;
      v61 = 1024;
      LODWORD(v62) = v49;
      v34 = "%c[%{public}s %{public}s]:%i Returned error: 0x%04x";
      v35 = v29;
      v36 = 40;
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v23 = NFLogGetLogger();
      if (v23)
      {
        v24 = v23;
        v25 = object_getClass(a1);
        v26 = class_isMetaClass(v25);
        v27 = object_getClassName(a1);
        v51 = sel_getName("crs_markApplicationForDelete:");
        v28 = 45;
        if (v26)
        {
          v28 = 43;
        }

        v24(3, "%c[%{public}s %{public}s]:%i Command failed", v28, v27, v51, 396);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v29 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_35;
      }

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
      v33 = sel_getName("crs_markApplicationForDelete:");
      *buf = 67109890;
      v54 = v31;
      v55 = 2082;
      v56 = v32;
      v57 = 2082;
      v58 = v33;
      v59 = 1024;
      v60 = 396;
      v34 = "%c[%{public}s %{public}s]:%i Command failed";
      v35 = v29;
      v36 = 34;
    }

    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, v34, buf, v36);
    goto LABEL_35;
  }

LABEL_37:

  return a1;
}

uint64_t sub_1000B6A7C(void *a1, void *a2, void *a3)
{
  if (!a1)
  {
    return 0;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v6 = a3;
  v7 = a2;
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v9 = Logger;
    Class = object_getClass(a1);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(a1);
    Name = sel_getName("crs_setEntangledAuthorizationRandom:mac:");
    v13 = 45;
    if (isMetaClass)
    {
      v13 = 43;
    }

    v9(5, "%c[%{public}s %{public}s]:%i ", v13, ClassName, Name, 420);
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
    v52 = v16;
    v53 = 2082;
    v54 = object_getClassName(a1);
    v55 = 2082;
    v56 = sel_getName("crs_setEntangledAuthorizationRandom:mac:");
    v57 = 1024;
    v58 = 420;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }

  v17 = [a1 delegate];
  [v17 markApplicationForDelete:0];

  v18 = [v7 mutableCopy];
  [v18 appendData:v6];

  v50 = 0;
  v19 = sub_100158334(a1, 128, 226, 176, 0, v18, &v50);
  v20 = v50;
  if (v19)
  {
    if ([v19 status] == 36864)
    {
      v21 = 0;
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v33 = NFLogGetLogger();
      if (v33)
      {
        v34 = v33;
        v35 = object_getClass(a1);
        v36 = class_isMetaClass(v35);
        v37 = object_getClassName(a1);
        v38 = sel_getName("crs_setEntangledAuthorizationRandom:mac:");
        v49 = [v19 status];
        v39 = 45;
        if (v36)
        {
          v39 = 43;
        }

        v34(3, "%c[%{public}s %{public}s]:%i Returned error: 0x%04x", v39, v37, v38, 446, v49);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v40 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
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
        v44 = sel_getName("crs_setEntangledAuthorizationRandom:mac:");
        v45 = [v19 status];
        *buf = 67110146;
        v52 = v42;
        v53 = 2082;
        v54 = v43;
        v55 = 2082;
        v56 = v44;
        v57 = 1024;
        v58 = 446;
        v59 = 1024;
        v60 = v45;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Returned error: 0x%04x", buf, 0x28u);
      }

      v21 = 8;
      if ([v19 status] != 27010)
      {
        if ([v19 status] == 27013)
        {
          v21 = 8;
        }

        else
        {
          v21 = 6;
        }
      }
    }
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v22 = NFLogGetLogger();
    if (v22)
    {
      v23 = v22;
      v24 = object_getClass(a1);
      v25 = class_isMetaClass(v24);
      v26 = object_getClassName(a1);
      v48 = sel_getName("crs_setEntangledAuthorizationRandom:mac:");
      v27 = 45;
      if (v25)
      {
        v27 = 43;
      }

      v23(3, "%c[%{public}s %{public}s]:%i Command failed", v27, v26, v48, 438);
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
      v32 = sel_getName("crs_setEntangledAuthorizationRandom:mac:");
      *buf = 67109890;
      v52 = v30;
      v53 = 2082;
      v54 = v31;
      v55 = 2082;
      v56 = v32;
      v57 = 1024;
      v58 = 438;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Command failed", buf, 0x22u);
    }

    if ([v20 code])
    {
      v21 = [v20 code];
    }

    else
    {
      v21 = 16;
    }
  }

  return v21;
}

uint64_t sub_1000B6F74(void *a1, void *a2, void *a3)
{
  if (!a1)
  {
    return 0;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v6 = a3;
  v7 = a2;
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v9 = Logger;
    Class = object_getClass(a1);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(a1);
    Name = sel_getName("crs_setAuthorizationRandom:mac:");
    v13 = 45;
    if (isMetaClass)
    {
      v13 = 43;
    }

    v9(5, "%c[%{public}s %{public}s]:%i ", v13, ClassName, Name, 460);
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
    v54 = v16;
    v55 = 2082;
    v56 = object_getClassName(a1);
    v57 = 2082;
    v58 = sel_getName("crs_setAuthorizationRandom:mac:");
    v59 = 1024;
    v60 = 460;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }

  v17 = [a1 delegate];
  [v17 markApplicationForDelete:0];

  v18 = [NFTLV TLVWithTag:216 value:v7];

  v19 = [v18 asData];
  v20 = [v19 mutableCopy];

  [v20 appendData:v6];
  v52 = 0;
  v21 = sub_100158334(a1, 128, 226, 176, 0, v20, &v52);
  v22 = v52;
  if (v21)
  {
    if ([v21 status] == 36864)
    {
      v23 = 0;
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
        v40 = sel_getName("crs_setAuthorizationRandom:mac:");
        v51 = [v21 status];
        v41 = 45;
        if (v38)
        {
          v41 = 43;
        }

        v36(3, "%c[%{public}s %{public}s]:%i Returned error: 0x%04x", v41, v39, v40, 487, v51);
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
        v46 = sel_getName("crs_setAuthorizationRandom:mac:");
        v47 = [v21 status];
        *buf = 67110146;
        v54 = v44;
        v55 = 2082;
        v56 = v45;
        v57 = 2082;
        v58 = v46;
        v59 = 1024;
        v60 = 487;
        v61 = 1024;
        v62 = v47;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Returned error: 0x%04x", buf, 0x28u);
      }

      v23 = 8;
      if ([v21 status] != 27010)
      {
        if ([v21 status] == 27013)
        {
          v23 = 8;
        }

        else
        {
          v23 = 6;
        }
      }
    }
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v24 = NFLogGetLogger();
    if (v24)
    {
      v25 = v24;
      v26 = object_getClass(a1);
      v27 = class_isMetaClass(v26);
      v28 = object_getClassName(a1);
      v50 = sel_getName("crs_setAuthorizationRandom:mac:");
      v29 = 45;
      if (v27)
      {
        v29 = 43;
      }

      v25(3, "%c[%{public}s %{public}s]:%i Command failed", v29, v28, v50, 479);
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
      v34 = sel_getName("crs_setAuthorizationRandom:mac:");
      *buf = 67109890;
      v54 = v32;
      v55 = 2082;
      v56 = v33;
      v57 = 2082;
      v58 = v34;
      v59 = 1024;
      v60 = 479;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Command failed", buf, 0x22u);
    }

    if ([v22 code])
    {
      v23 = [v22 code];
    }

    else
    {
      v23 = 16;
    }
  }

  return v23;
}

uint64_t sub_1000B74A4(void *a1, uint64_t a2, void *a3, void *a4)
{
  if (!a1)
  {
    return 0;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v8 = a4;
  v9 = a3;
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v11 = Logger;
    Class = object_getClass(a1);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(a1);
    Name = sel_getName("crs_setAuthorizationTimeout:challenge:mac:");
    v14 = 45;
    if (isMetaClass)
    {
      v14 = 43;
    }

    v11(6, "%c[%{public}s %{public}s]:%i t=%d", v14, ClassName, Name, 501, a2);
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
    v57 = v17;
    v58 = 2082;
    v59 = object_getClassName(a1);
    v60 = 2082;
    v61 = sel_getName("crs_setAuthorizationTimeout:challenge:mac:");
    v62 = 1024;
    v63 = 501;
    v64 = 1024;
    v65 = a2;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i t=%d", buf, 0x28u);
  }

  v55 = __rev16(a2);
  v18 = [[NSMutableData alloc] initWithBytes:&v55 length:2];
  [v18 appendData:v9];

  v19 = [NFTLV TLVWithTag:210 value:v18];
  v20 = [v19 asData];
  v21 = [v20 mutableCopy];

  [v21 appendData:v8];
  v54 = 0;
  v22 = sub_100158334(a1, 128, 226, 176, 0, v21, &v54);
  v23 = v54;
  if (v22)
  {
    if ([v22 status] == 36864)
    {
      v24 = 0;
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
        v41 = sel_getName("crs_setAuthorizationTimeout:challenge:mac:");
        v53 = [v22 status];
        v42 = 45;
        if (v39)
        {
          v42 = 43;
        }

        v37(3, "%c[%{public}s %{public}s]:%i Returned error: 0x%04x", v42, v40, v41, 530, v53);
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
        v47 = sel_getName("crs_setAuthorizationTimeout:challenge:mac:");
        v48 = [v22 status];
        *buf = 67110146;
        v57 = v45;
        v58 = 2082;
        v59 = v46;
        v60 = 2082;
        v61 = v47;
        v62 = 1024;
        v63 = 530;
        v64 = 1024;
        v65 = v48;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Returned error: 0x%04x", buf, 0x28u);
      }

      if ([v22 status] == 27010)
      {
        v24 = 8;
      }

      else
      {
        v24 = 8;
        if ([v22 status] != 27013)
        {
          if ([v22 status] == 26754)
          {
            v24 = 8;
          }

          else
          {
            v24 = 6;
          }
        }
      }
    }
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
      v52 = sel_getName("crs_setAuthorizationTimeout:challenge:mac:");
      v30 = 45;
      if (v28)
      {
        v30 = 43;
      }

      v26(3, "%c[%{public}s %{public}s]:%i Command failed", v30, v29, v52, 522);
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
      v35 = sel_getName("crs_setAuthorizationTimeout:challenge:mac:");
      *buf = 67109890;
      v57 = v33;
      v58 = 2082;
      v59 = v34;
      v60 = 2082;
      v61 = v35;
      v62 = 1024;
      v63 = 522;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Command failed", buf, 0x22u);
    }

    if ([v23 code])
    {
      v24 = [v23 code];
    }

    else
    {
      v24 = 16;
    }
  }

  return v24;
}

uint64_t sub_1000B7A20(void *a1, void *a2, void *a3)
{
  if (!a1)
  {
    return 0;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v6 = a2;
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v8 = Logger;
    Class = object_getClass(a1);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(a1);
    Name = sel_getName("crs_authenticate:response:");
    v12 = 45;
    if (isMetaClass)
    {
      v12 = 43;
    }

    v8(6, "%c[%{public}s %{public}s]:%i ", v12, ClassName, Name, 544);
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

    *buf = 67109890;
    v49 = v15;
    v50 = 2082;
    v51 = object_getClassName(a1);
    v52 = 2082;
    v53 = sel_getName("crs_authenticate:response:");
    v54 = 1024;
    v55 = 544;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }

  v47 = 0;
  v16 = sub_100158334(a1, 128, 248, 0, 0, v6, &v47);

  v17 = v47;
  if (v16)
  {
    +[NFExceptionsCALogger postAnalyticsCRSAuthInitEventWithStatus:](NFExceptionsCALogger, "postAnalyticsCRSAuthInitEventWithStatus:", [v16 status]);
    if ([v16 status] == 36864)
    {
      sub_10022E700(NFDailyStatisticsCALogger, @"totalAuthEvents");
    }

    if ([v16 status] == 36864)
    {
      if (a3)
      {
        [v16 response];
        *a3 = v18 = 0;
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v30 = NFLogGetLogger();
      if (v30)
      {
        v31 = v30;
        v32 = object_getClass(a1);
        v33 = class_isMetaClass(v32);
        v34 = object_getClassName(a1);
        v35 = sel_getName("crs_authenticate:response:");
        v46 = [v16 status];
        v36 = 45;
        if (v33)
        {
          v36 = 43;
        }

        v31(3, "%c[%{public}s %{public}s]:%i Returned error: 0x%04x", v36, v34, v35, 570, v46);
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
        v41 = sel_getName("crs_authenticate:response:");
        v42 = [v16 status];
        *buf = 67110146;
        v49 = v39;
        v50 = 2082;
        v51 = v40;
        v52 = 2082;
        v53 = v41;
        v54 = 1024;
        v55 = 570;
        v56 = 1024;
        v57 = v42;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Returned error: 0x%04x", buf, 0x28u);
      }

      v18 = 8;
      if ([v16 status] != 27010)
      {
        if ([v16 status] == 27013)
        {
          v18 = 8;
        }

        else
        {
          v18 = 6;
        }
      }
    }
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v19 = NFLogGetLogger();
    if (v19)
    {
      v20 = v19;
      v21 = object_getClass(a1);
      v22 = class_isMetaClass(v21);
      v23 = object_getClassName(a1);
      v45 = sel_getName("crs_authenticate:response:");
      v24 = 45;
      if (v22)
      {
        v24 = 43;
      }

      v20(3, "%c[%{public}s %{public}s]:%i Command failed", v24, v23, v45, 554);
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
      v29 = sel_getName("crs_authenticate:response:");
      *buf = 67109890;
      v49 = v27;
      v50 = 2082;
      v51 = v28;
      v52 = 2082;
      v53 = v29;
      v54 = 1024;
      v55 = 554;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Command failed", buf, 0x22u);
    }

    if ([v17 code])
    {
      v18 = [v17 code];
    }

    else
    {
      v18 = 16;
    }
  }

  return v18;
}

uint64_t sub_1000B7F34(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (a1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v10 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("crs_authorizeWithLocalValidation:cryptogram:targetAID:");
      v14 = 45;
      if (isMetaClass)
      {
        v14 = 43;
      }

      v10(6, "%c[%{public}s %{public}s]:%i ", v14, ClassName, Name, 585);
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
      v90 = v17;
      v91 = 2082;
      v92 = object_getClassName(a1);
      v93 = 2082;
      v94 = sel_getName("crs_authorizeWithLocalValidation:cryptogram:targetAID:");
      v95 = 1024;
      v96 = 585;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
    }

    v18 = objc_opt_new();
    if (v8)
    {
      if ([v8 length] < 5 || objc_msgSend(v8, "length") > 0x10)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v22 = NFLogGetLogger();
        if (v22)
        {
          v23 = v22;
          v24 = object_getClass(a1);
          v25 = class_isMetaClass(v24);
          v26 = object_getClassName(a1);
          v81 = sel_getName("crs_authorizeWithLocalValidation:cryptogram:targetAID:");
          v27 = 45;
          if (v25)
          {
            v27 = 43;
          }

          v23(3, "%c[%{public}s %{public}s]:%i Invalid parameters to CRS authorization with local validation command", v27, v26, v81, 599);
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
          v32 = sel_getName("crs_authorizeWithLocalValidation:cryptogram:targetAID:");
          *buf = 67109890;
          v90 = v30;
          v91 = 2082;
          v92 = v31;
          v93 = 2082;
          v94 = v32;
          v95 = 1024;
          v96 = 599;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid parameters to CRS authorization with local validation command", buf, 0x22u);
        }

        v33 = 0;
        v34 = 0;
        goto LABEL_25;
      }

      v19 = [NFTLV TLVWithTag:79 value:v8];
      v20 = [v19 asData];
      [v18 appendData:v20];

      v21 = 13;
    }

    else
    {
      v21 = 2;
    }

    [v18 appendData:v7];
    v88 = 0;
    v33 = sub_100158334(a1, 128, 244, v21, a2, v18, &v88);
    v34 = v88;
    if (v33)
    {
      v35 = a2 - 1;
      if (a2 - 1) < 7 && ((0x77u >> v35))
      {
        +[NFExceptionsCALogger postAnalyticsCRSAuthWithStatus:withMethod:](NFExceptionsCALogger, "postAnalyticsCRSAuthWithStatus:withMethod:", [v33 status], dword_100296EEC[v35]);
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
          v40 = v18;
          v41 = v34;
          v42 = v7;
          v43 = object_getClassName(a1);
          v82 = sel_getName("crs_authorizeWithLocalValidation:cryptogram:targetAID:");
          v44 = 45;
          if (v39)
          {
            v44 = 43;
          }

          v79 = v43;
          v7 = v42;
          v34 = v41;
          v18 = v40;
          v37(3, "%c[%{public}s %{public}s]:%i Unexpected location validation method", v44, v79, v82, 629);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v45 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          v46 = object_getClass(a1);
          v47 = v18;
          v48 = v34;
          v49 = v7;
          if (class_isMetaClass(v46))
          {
            v50 = 43;
          }

          else
          {
            v50 = 45;
          }

          v51 = object_getClassName(a1);
          v52 = sel_getName("crs_authorizeWithLocalValidation:cryptogram:targetAID:");
          *buf = 67109890;
          v90 = v50;
          v7 = v49;
          v34 = v48;
          v18 = v47;
          v91 = 2082;
          v92 = v51;
          v93 = 2082;
          v94 = v52;
          v95 = 1024;
          v96 = 629;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unexpected location validation method", buf, 0x22u);
        }
      }

      if ([v33 status] == 36864)
      {
        a1 = 0;
      }

      else if ([v33 status] == 27011)
      {
        a1 = 1;
      }

      else
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v64 = NFLogGetLogger();
        if (v64)
        {
          v65 = v64;
          v66 = object_getClass(a1);
          v87 = class_isMetaClass(v66);
          v86 = object_getClassName(a1);
          v67 = v18;
          v68 = v34;
          v69 = v7;
          v70 = sel_getName("crs_authorizeWithLocalValidation:cryptogram:targetAID:");
          v85 = [v33 status];
          v84 = v70;
          v7 = v69;
          v34 = v68;
          v18 = v67;
          v71 = 45;
          if (v87)
          {
            v71 = 43;
          }

          v65(3, "%c[%{public}s %{public}s]:%i Returned error: 0x%04x", v71, v86, v84, 646, v85);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v72 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
        {
          v73 = object_getClass(a1);
          if (class_isMetaClass(v73))
          {
            v74 = 43;
          }

          else
          {
            v74 = 45;
          }

          v75 = object_getClassName(a1);
          v76 = sel_getName("crs_authorizeWithLocalValidation:cryptogram:targetAID:");
          v77 = [v33 status];
          *buf = 67110146;
          v90 = v74;
          v91 = 2082;
          v92 = v75;
          v93 = 2082;
          v94 = v76;
          v95 = 1024;
          v96 = 646;
          v97 = 1024;
          v98 = v77;
          _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Returned error: 0x%04x", buf, 0x28u);
        }

        a1 = 8;
        if ([v33 status] != 27010)
        {
          if ([v33 status] == 27013)
          {
            a1 = 8;
          }

          else
          {
            a1 = 6;
          }
        }
      }

      goto LABEL_69;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v53 = NFLogGetLogger();
    if (v53)
    {
      v54 = v53;
      v55 = object_getClass(a1);
      v56 = class_isMetaClass(v55);
      v57 = object_getClassName(a1);
      v83 = sel_getName("crs_authorizeWithLocalValidation:cryptogram:targetAID:");
      v58 = 45;
      if (v56)
      {
        v58 = 43;
      }

      v54(3, "%c[%{public}s %{public}s]:%i Command failed", v58, v57, v83, 609);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v59 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      v60 = object_getClass(a1);
      if (class_isMetaClass(v60))
      {
        v61 = 43;
      }

      else
      {
        v61 = 45;
      }

      v62 = object_getClassName(a1);
      v63 = sel_getName("crs_authorizeWithLocalValidation:cryptogram:targetAID:");
      *buf = 67109890;
      v90 = v61;
      v91 = 2082;
      v92 = v62;
      v93 = 2082;
      v94 = v63;
      v95 = 1024;
      v96 = 609;
      _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Command failed", buf, 0x22u);
    }

    if ([v34 code])
    {
      a1 = [v34 code];
      v33 = 0;
      goto LABEL_69;
    }

    v33 = 0;
LABEL_25:
    a1 = 16;
LABEL_69:
  }

  return a1;
}

NFECommercePaymentResponse *sub_1000B8790(NFECommercePaymentResponse *a1, void *a2)
{
  v3 = a2;
  v59 = a1;
  if (a1)
  {
    v4 = [NFTLV TLVsWithData:v3];
    v5 = v4;
    if (v3 && [v4 count])
    {
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v6 = v5;
      v7 = [v6 countByEnumeratingWithState:&v60 objects:v66 count:16];
      if (v7)
      {
        v8 = v7;
        v57 = v3;
        v9 = 0;
        v10 = *v61;
        v58 = v6;
        do
        {
          for (i = 0; i != v8; i = i + 1)
          {
            if (*v61 != v10)
            {
              objc_enumerationMutation(v6);
            }

            v12 = *(*(&v60 + 1) + 8 * i);
            v13 = [v12 tag];
            if (v13 != 40726)
            {
              if (v13 == 225)
              {
                v14 = [v12 childWithTag:130];
                v15 = [v14 value];
                v16 = [v15 NF_asHexString];

                v9 = v16;
              }

              else
              {
                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                Logger = NFLogGetLogger();
                if (Logger)
                {
                  v18 = Logger;
                  Class = object_getClass(v59);
                  isMetaClass = class_isMetaClass(Class);
                  ClassName = object_getClassName(v59);
                  Name = sel_getName("crs_decodeResponseTLV:");
                  v56 = [v12 tag];
                  v52 = ClassName;
                  v23 = 45;
                  if (isMetaClass)
                  {
                    v23 = 43;
                  }

                  v6 = v58;
                  v18(4, "%c[%{public}s %{public}s]:%i Unknown tag: 0x%x", v23, v52, Name, 765, v56);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v14 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
                {
                  v24 = object_getClass(v59);
                  if (class_isMetaClass(v24))
                  {
                    v25 = 43;
                  }

                  else
                  {
                    v25 = 45;
                  }

                  v26 = object_getClassName(v59);
                  v27 = sel_getName("crs_decodeResponseTLV:");
                  v28 = [v12 tag];
                  *buf = 67110146;
                  v68 = v25;
                  v69 = 2082;
                  v70 = v26;
                  v71 = 2082;
                  v72 = v27;
                  v6 = v58;
                  v73 = 1024;
                  v74 = 765;
                  v75 = 1024;
                  LODWORD(v76) = v28;
                  _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unknown tag: 0x%x", buf, 0x28u);
                }
              }
            }
          }

          v8 = [v6 countByEnumeratingWithState:&v60 objects:v66 count:16];
        }

        while (v8);

        v3 = v57;
        if (v9)
        {
          v29 = [NFECommercePaymentResponse alloc];
          v64[0] = @"transactionIdentifier";
          v64[1] = @"transactionData";
          v65[0] = v9;
          v65[1] = v57;
          v30 = [NSDictionary dictionaryWithObjects:v65 forKeys:v64 count:2];
          a1 = [(NFECommercePaymentResponse *)v29 initWithDictionary:v30];

LABEL_47:
          goto LABEL_48;
        }
      }

      else
      {
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v41 = NFLogGetLogger();
      if (v41)
      {
        v42 = v41;
        v43 = object_getClass(v59);
        v44 = class_isMetaClass(v43);
        v45 = object_getClassName(v59);
        v55 = sel_getName("crs_decodeResponseTLV:");
        v46 = 45;
        if (v44)
        {
          v46 = 43;
        }

        v42(3, "%c[%{public}s %{public}s]:%i Missing transaction ID", v46, v45, v55, 771);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v9 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
LABEL_46:
        a1 = 0;
        goto LABEL_47;
      }

      v47 = object_getClass(v59);
      if (class_isMetaClass(v47))
      {
        v48 = 43;
      }

      else
      {
        v48 = 45;
      }

      v49 = object_getClassName(v59);
      v50 = sel_getName("crs_decodeResponseTLV:");
      *buf = 67109890;
      v68 = v48;
      v69 = 2082;
      v70 = v49;
      v71 = 2082;
      v72 = v50;
      v73 = 1024;
      v74 = 771;
      v38 = "%c[%{public}s %{public}s]:%i Missing transaction ID";
      v39 = v9;
      v40 = 34;
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v31 = NFLogGetLogger();
      if (v31)
      {
        v32 = v31;
        v33 = object_getClass(v59);
        v34 = class_isMetaClass(v33);
        v53 = object_getClassName(v59);
        v54 = sel_getName("crs_decodeResponseTLV:");
        v35 = 45;
        if (v34)
        {
          v35 = 43;
        }

        v32(3, "%c[%{public}s %{public}s]:%i Missing/invalid value: %{public}@", v35, v53, v54, 747, v3);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v9 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_46;
      }

      v36 = object_getClass(v59);
      if (class_isMetaClass(v36))
      {
        v37 = 43;
      }

      else
      {
        v37 = 45;
      }

      *buf = 67110146;
      v68 = v37;
      v69 = 2082;
      v70 = object_getClassName(v59);
      v71 = 2082;
      v72 = sel_getName("crs_decodeResponseTLV:");
      v73 = 1024;
      v74 = 747;
      v75 = 2114;
      v76 = v3;
      v38 = "%c[%{public}s %{public}s]:%i Missing/invalid value: %{public}@";
      v39 = v9;
      v40 = 44;
    }

    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, v38, buf, v40);
    goto LABEL_46;
  }

LABEL_48:

  return a1;
}

uint64_t sub_1000B8D78(NFECommercePaymentResponse *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (a1)
  {
    if (!a6)
    {
      v78 = +[NSAssertionHandler currentHandler];
      [v78 handleFailureInMethod:"crs_authorizeForECommerce:cryptogram:encryptedPIN:request:response:" object:a1 file:@"NFSecureElementWrapper+ContactlessRegistry.m" lineNumber:785 description:{@"Invalid parameter not satisfying: %@", @"theResponse != nil"}];
    }

    if ((a2 - 5) > 2 || v12 && [v12 length] == 16)
    {
      v14 = sub_1001D99C8(NFECommercePaymentRequestEncoder, v13, v12, 0);
      if (v14)
      {
        if ([v11 length] == 8)
        {
          v15 = [v14 mutableCopy];
          [v15 appendData:v11];
          v88 = v15;
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          Logger = NFLogGetLogger();
          if (Logger)
          {
            v17 = Logger;
            Class = object_getClass(a1);
            isMetaClass = class_isMetaClass(Class);
            ClassName = object_getClassName(a1);
            Name = sel_getName("crs_authorizeForECommerce:input:output:swStatus:");
            v21 = 45;
            if (isMetaClass)
            {
              v21 = 43;
            }

            v17(6, "%c[%{public}s %{public}s]:%i ", v21, ClassName, Name, 661);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v22 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v23 = object_getClass(a1);
            v24 = v14;
            if (class_isMetaClass(v23))
            {
              v25 = 43;
            }

            else
            {
              v25 = 45;
            }

            *buf = 67109890;
            v93 = v25;
            v14 = v24;
            v94 = 2082;
            v95 = object_getClassName(a1);
            v96 = 2082;
            v97 = sel_getName("crs_authorizeForECommerce:input:output:swStatus:");
            v98 = 1024;
            v99 = 661;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
          }

          v91 = 0;
          v86 = a2;
          v26 = sub_100158334(&a1->super.isa, 128, 244, 4, a2, v88, &v91);
          v27 = v91;
          if (v26)
          {
            if ([v26 status] == 36864)
            {
              v28 = [v26 response];
              v29 = v28;
              sel = [v26 status];
              v30 = 0;
            }

            else
            {
              v83 = v14;
              v84 = a6;
              v85 = v11;
              v89 = objc_opt_new();
              while (([v26 status] & 0xFF00) == 0x6100)
              {
                v43 = [v26 response];
                [v89 appendData:v43];

                v44 = [v26 status];
                v90 = v27;
                v45 = sub_10015837C(&a1->super.isa, 128, 192, 0, 0, 0, v44, 0, &v90);
                v46 = v90;

                if (!v45)
                {
                  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                  v62 = NFLogGetLogger();
                  if (v62)
                  {
                    v63 = v62;
                    v64 = object_getClass(a1);
                    v65 = class_isMetaClass(v64);
                    v66 = object_getClassName(a1);
                    v81 = sel_getName("crs_authorizeForECommerce:input:output:swStatus:");
                    v67 = 45;
                    if (v65)
                    {
                      v67 = 43;
                    }

                    v63(3, "%c[%{public}s %{public}s]:%i Command failed", v67, v66, v81, 698);
                  }

                  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                  v68 = NFSharedLogGetLogger();
                  if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
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
                    v72 = sel_getName("crs_authorizeForECommerce:input:output:swStatus:");
                    *buf = 67109890;
                    v93 = v70;
                    v94 = 2082;
                    v95 = v71;
                    v96 = 2082;
                    v97 = v72;
                    v98 = 1024;
                    v99 = 698;
                    _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Command failed", buf, 0x22u);
                  }

                  v14 = v83;
                  sel = 0;
                  v28 = 0;
                  v45 = 0;
                  if ([v46 code])
                  {
                    v30 = [v46 code];
                  }

                  else
                  {
                    v30 = 16;
                  }

                  goto LABEL_66;
                }

                v26 = v45;
                v27 = v46;
                if ([v45 status] == 36864)
                {
                  v47 = [v45 response];
                  v28 = v89;
                  [v89 appendData:v47];

                  v48 = v89;
                  sel = [v45 status];
                  v30 = 0;
                  goto LABEL_66;
                }
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v49 = NFLogGetLogger();
              if (v49)
              {
                v50 = v49;
                v51 = object_getClass(a1);
                v52 = class_isMetaClass(v51);
                v53 = object_getClassName(a1);
                v54 = sel_getName("crs_authorizeForECommerce:input:output:swStatus:");
                v82 = [v26 status];
                v55 = 45;
                if (v52)
                {
                  v55 = 43;
                }

                v50(3, "%c[%{public}s %{public}s]:%i Returned error: 0x%04x", v55, v53, v54, 711, v82);
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
                v60 = sel_getName("crs_authorizeForECommerce:input:output:swStatus:");
                v61 = [v26 status];
                *buf = 67110146;
                v93 = v58;
                v94 = 2082;
                v95 = v59;
                v96 = 2082;
                v97 = v60;
                v98 = 1024;
                v99 = 711;
                v100 = 1024;
                v101 = v61;
                _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Returned error: 0x%04x", buf, 0x28u);
              }

              v14 = v83;
              sel = [v26 status];
              if ([v26 status] == 27010 || objc_msgSend(v26, "status") == 27013)
              {
                v28 = 0;
                v30 = 8;
              }

              else if ([v26 status] == 27265)
              {
                v28 = 0;
                v30 = 14;
              }

              else if ([v26 status] == 27012)
              {
                v28 = 0;
                v30 = 23;
              }

              else if ([v26 status] == 27264)
              {
                v28 = 0;
                v30 = 10;
              }

              else
              {
                v30 = 9;
                if ([v26 status] == 27272)
                {
                  v28 = 0;
                }

                else
                {
                  v28 = 0;
                  if ([v26 status] == 27015)
                  {
                    v30 = 9;
                  }

                  else
                  {
                    v30 = 6;
                  }
                }
              }

              v45 = v26;
              v46 = v27;
LABEL_66:

              v26 = v45;
              v27 = v46;
              a6 = v84;
              v11 = v85;
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
              v80 = sel_getName("crs_authorizeForECommerce:input:output:swStatus:");
              v36 = 45;
              if (v34)
              {
                v36 = 43;
              }

              v32(3, "%c[%{public}s %{public}s]:%i Command failed", v36, v35, v80, 671);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v37 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              v38 = object_getClass(a1);
              v39 = v14;
              if (class_isMetaClass(v38))
              {
                v40 = 43;
              }

              else
              {
                v40 = 45;
              }

              v41 = object_getClassName(a1);
              v42 = sel_getName("crs_authorizeForECommerce:input:output:swStatus:");
              *buf = 67109890;
              v93 = v40;
              v14 = v39;
              v94 = 2082;
              v95 = v41;
              v96 = 2082;
              v97 = v42;
              v98 = 1024;
              v99 = 671;
              _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Command failed", buf, 0x22u);
            }

            if ([v27 code])
            {
              v30 = [v27 code];
              sel = 0;
              v28 = 0;
              v26 = 0;
            }

            else
            {
              sel = 0;
              v28 = 0;
              v26 = 0;
              v30 = 16;
            }
          }

          v73 = v28;
          if (!v30)
          {
            v75 = sub_1000B8790(a1, v73);
            if (v75)
            {
              sub_1000B9740(a1, v86, v13, v74, sel);
              v76 = v75;
              v30 = 0;
              *a6 = v75;
            }

            else
            {
              v30 = 23;
            }
          }
        }

        else
        {
          v30 = 10;
        }
      }

      else
      {
        v30 = 22;
      }
    }

    else
    {
      v30 = 10;
    }
  }

  else
  {
    v30 = 0;
  }

  return v30;
}