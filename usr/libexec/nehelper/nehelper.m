void sub_100001530(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v12 = v3;
    v4 = xpc_get_type(v3) == &_xpc_type_connection;
    v3 = v12;
    if (v4)
    {
      v5 = *(a1 + 32);
      v6 = v12;
      v7 = v6;
      if (v5)
      {
        v14 = 0;
        v15 = &v14;
        v16 = 0x3032000000;
        v17 = sub_1000016B0;
        v18 = sub_1000016D4;
        v8 = v6;
        v19 = v8;
        v10 = objc_getProperty(v5, v9, 24, 1);
        xpc_connection_set_target_queue(v8, v10);

        v11 = v15[5];
        handler[0] = _NSConcreteStackBlock;
        handler[1] = 3221225472;
        handler[2] = sub_10000AB28;
        handler[3] = &unk_10003CEC8;
        handler[4] = v5;
        handler[5] = &v14;
        xpc_connection_set_event_handler(v11, handler);
        xpc_connection_resume(v15[5]);
        _Block_object_dispose(&v14, 8);
      }

      v3 = v12;
    }
  }
}

void sub_100001698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000016B0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_1000016DC()
{
  objc_opt_self();
  if (qword_100046B18 != -1)
  {
    dispatch_once(&qword_100046B18, &stru_10003CE50);
  }

  v0 = qword_100046B10;

  return v0;
}

void sub_100001D9C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = ne_log_obj();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
LABEL_3:

      sub_10000BA0C(NEHelperServer, *(a1 + 40), 2, 0);
      goto LABEL_4;
    }

    v41 = *(a1 + 32);
    *buf = 138412546;
    v84 = v41;
    v85 = 2112;
    v86 = v6;
    v22 = "%@ loadConfigurationWithID failed. error: %@";
    v42 = v7;
    v43 = 22;
LABEL_45:
    _os_log_error_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, v22, buf, v43);
    goto LABEL_3;
  }

  v8 = [v5 relay];

  if (!v8)
  {
    v7 = ne_log_obj();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_3;
    }

    v21 = *(a1 + 32);
    *buf = 138412290;
    v84 = v21;
    v22 = "%@ no relay found in configuration";
    goto LABEL_44;
  }

  v9 = *(a1 + 56);
  if (v9 == 2)
  {
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v23 = [v5 relay];
    v24 = [v23 relays];

    v25 = [v24 countByEnumeratingWithState:&v70 objects:v81 count:16];
    if (v25)
    {
      v26 = v25;
      v68 = v5;
      v27 = 0;
      v28 = *v71;
      do
      {
        for (i = 0; i != v26; i = i + 1)
        {
          if (*v71 != v28)
          {
            objc_enumerationMutation(v24);
          }

          v30 = *(*(&v70 + 1) + 8 * i);
          v31 = [v30 certificateReferences];
          if (v31)
          {
            v32 = [v30 certificateReferences];
            v33 = [v32 containsObject:*(a1 + 48)];

            v27 |= v33;
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v70 objects:v81 count:16];
      }

      while (v26);

      v5 = v68;
      if (v27)
      {
        v79[0] = kSecReturnRef;
        v79[1] = kSecClass;
        v80[0] = kCFBooleanTrue;
        v80[1] = kSecClassCertificate;
        v79[2] = kSecValuePersistentRef;
        v80[2] = *(a1 + 48);
        v34 = [NSDictionary dictionaryWithObjects:v80 forKeys:v79 count:3];
        result = 0;
        v35 = SecItemCopyMatching(v34, &result);
        if (result)
        {
          v69 = SecCertificateCopyData(result);
          myCFRelease();
          if (v69)
          {
            v36 = _CFXPCCreateXPCObjectFromCFObject();
            myCFRelease();
            v37 = xpc_dictionary_create(0, 0, 0);
            xpc_dictionary_set_value(v37, "relay-certificate-data", v36);
            sub_10000BA0C(NEHelperServer, *(a1 + 40), 0, v37);

LABEL_60:
            goto LABEL_69;
          }

          v62 = ne_log_obj();
          if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
          {
            v66 = *(a1 + 32);
            *buf = 138412290;
            v84 = v66;
            _os_log_error_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, "%@ SecCertificateCopyData failed", buf, 0xCu);
          }

          v60 = *(a1 + 40);
          v61 = 22;
LABEL_68:
          sub_10000BA0C(NEHelperServer, v60, v61, 0);
LABEL_69:

          goto LABEL_4;
        }

        v55 = ne_log_obj();
        if (!os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
        {
LABEL_64:

          v60 = *(a1 + 40);
          v61 = 2;
          goto LABEL_68;
        }

        v56 = *(a1 + 32);
        *buf = 138412546;
        v84 = v56;
        v85 = 1024;
        LODWORD(v86) = v35;
        v57 = "%@ SecItemCopyMatching failed %d";
        v58 = v55;
        v59 = 18;
LABEL_71:
        _os_log_error_impl(&_mh_execute_header, v58, OS_LOG_TYPE_ERROR, v57, buf, v59);
        goto LABEL_64;
      }
    }

    else
    {
    }

    v7 = ne_log_obj();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_3;
    }

    v44 = *(a1 + 32);
    *buf = 138412290;
    v84 = v44;
    v22 = "%@ requested certificate not found in relay configuration";
LABEL_44:
    v42 = v7;
    v43 = 12;
    goto LABEL_45;
  }

  if (v9 != 1)
  {
    goto LABEL_4;
  }

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v67 = v5;
  v10 = [v5 relay];
  v11 = [v10 relays];

  v12 = [v11 countByEnumeratingWithState:&v75 objects:v82 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v76;
LABEL_10:
    v15 = 0;
    while (1)
    {
      if (*v76 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v16 = *(*(&v75 + 1) + 8 * v15);
      v17 = [v16 identityReference];
      if (v17)
      {
        v18 = v17;
        v19 = [v16 identityReference];
        v20 = [v19 isEqualToData:*(a1 + 48)];

        if (v20)
        {
          break;
        }
      }

      if (v13 == ++v15)
      {
        v13 = [v11 countByEnumeratingWithState:&v75 objects:v82 count:16];
        if (v13)
        {
          goto LABEL_10;
        }

        goto LABEL_17;
      }
    }

    v34 = v16;

    if (!v34)
    {
      goto LABEL_37;
    }

    if (qword_100046968)
    {
      v38 = [qword_100046968 objectForKeyedSubscript:*(a1 + 48)];
      if (v38)
      {
        v36 = v38;
        v39 = 0;
        v5 = v67;
        goto LABEL_51;
      }
    }

    v45 = [(__CFDictionary *)v34 copySecIdentityRef];
    result = v45;
    if (v45)
    {
      v36 = [[SecKeyProxy alloc] initWithIdentity:v45];
      v46 = ne_log_obj();
      v5 = v67;
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEBUG, "Created new key proxy", buf, 2u);
      }

      myCFRelease();
      if (!v36)
      {
LABEL_57:
        v54 = ne_log_obj();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          v64 = *(a1 + 32);
          *buf = 138412290;
          v84 = v64;
          _os_log_error_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "%@ key proxy creation failed ", buf, 0xCu);
        }

        sub_10000BA0C(NEHelperServer, *(a1 + 40), 12, 0);
        goto LABEL_60;
      }

      v39 = 1;
LABEL_51:
      v47 = [v36 endpoint];

      if (v47)
      {
        if (v39)
        {
          v48 = qword_100046968;
          if (!qword_100046968)
          {
            v49 = objc_alloc_init(NSMutableDictionary);
            v50 = qword_100046968;
            qword_100046968 = v49;

            v48 = qword_100046968;
          }

          [v48 setObject:v36 forKeyedSubscript:*(a1 + 48)];
        }

        v51 = [v36 endpoint];
        v52 = [v51 _endpoint];

        v53 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_value(v53, "relay-identity-xpc-endpoint", v52);
        sub_10000BA0C(NEHelperServer, *(a1 + 40), 0, v53);

        goto LABEL_60;
      }

      goto LABEL_57;
    }

    v55 = ne_log_obj();
    v5 = v67;
    if (!os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_64;
    }

    v65 = *(a1 + 32);
    *buf = 138412290;
    v84 = v65;
    v57 = "%@ Unable to generate identity reference";
    v58 = v55;
    v59 = 12;
    goto LABEL_71;
  }

LABEL_17:

LABEL_37:
  v40 = ne_log_obj();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
  {
    v63 = *(a1 + 32);
    *buf = 138412290;
    v84 = v63;
    _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "%@ requested identity not found in relay configuration", buf, 0xCu);
  }

  sub_10000BA0C(NEHelperServer, *(a1 + 40), 2, 0);
  v5 = v67;
LABEL_4:
}

void sub_100002668(uint64_t a1)
{
  if (qword_100046968)
  {
    v8 = 0u;
    v9 = 0u;
    v6 = 0u;
    v7 = 0u;
    v1 = *(a1 + 32);
    v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    if (v2)
    {
      v3 = v2;
      v4 = *v7;
      do
      {
        v5 = 0;
        do
        {
          if (*v7 != v4)
          {
            objc_enumerationMutation(v1);
          }

          [qword_100046968 setObject:0 forKeyedSubscript:{*(*(&v6 + 1) + 8 * v5), v6}];
          v5 = v5 + 1;
        }

        while (v3 != v5);
        v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
      }

      while (v3);
    }
  }
}

void sub_100002A84(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("app tracker queue", v3);
  v2 = qword_100046970;
  qword_100046970 = v1;
}

void sub_100003144(uint64_t a1, void *a2, char a3)
{
  v4 = a2;
  v5 = objc_opt_self();
  v170 = 0.0;
  v171 = 0.0;
  if (v4 && xpc_get_type(v4) == &_xpc_type_array)
  {
    v7 = qword_100046988;
    qword_100046988 = 0;

    v8 = qword_100046990;
    qword_100046990 = 0;

    qword_100046AA8 = 0;
    qword_100046AB0 = 0;
    qword_1000469A0 = 0;
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  if (!qword_100046990)
  {
    v139 = a3;
    v140 = v6;
    v142 = xpc_dictionary_create(0, 0, 0);
    xarray = objc_alloc_init(NSMutableDictionary);
    context = objc_autoreleasePoolPush();
    v9 = objc_alloc_init(NSMutableDictionary);
    v10 = v4;
    objc_opt_self();
    v11 = ne_log_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(applier[0]) = 0;
      _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Adding Test domains to tracker list", applier, 2u);
    }

    if (v4 && xpc_get_type(v10) == &_xpc_type_array && xpc_array_get_count(v10))
    {
      *&applier[0] = _NSConcreteStackBlock;
      *(&applier[0] + 1) = 3221225472;
      *&applier[1] = sub_100005024;
      *(&applier[1] + 1) = &unk_10003CCB0;
      *&applier[2] = v9;
      xpc_array_apply(v10, applier);
    }

    v143 = v4;

    v12 = v9;
    objc_opt_self();
    v13 = ne_log_obj();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Fetching Web tracking domain info from SWC", buf, 2u);
    }

    v14 = [_SWCTrackingDomainInfo trackingDomainInfoWithDomains:0];
    v15 = v14;
    if (!v14 || ![v14 count])
    {
      v43 = ne_log_obj();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "No Web tracker domain list", buf, 2u);
      }

      v44 = ne_log_obj();
      if (!os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_43;
      }

      LOWORD(applier[0]) = 0;
      v48 = "Failed to retrieve tracker domain list for Web";
      goto LABEL_118;
    }

    v16 = +[_SWCTrackingDomainInfo lastDatabaseUpdate];
    [v16 timeIntervalSinceReferenceDate];
    v18 = v17;

    v19 = ne_log_obj();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [v15 count];
      v21 = +[_SWCTrackingDomainInfo lastDatabaseUpdate];
      *buf = 134218242;
      *&buf[4] = v20;
      *&buf[12] = 2112;
      *&buf[14] = v21;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Tracker domain info retrieved - count %lu (last update %@)", buf, 0x16u);
    }

    v138 = v5;

    memset(out_token, 0, sizeof(out_token));
    v22 = v15;
    v23 = [v22 countByEnumeratingWithState:out_token objects:applier count:16];
    if (v23)
    {
      v24 = v23;
      v147 = 0;
      xdict = 0;
      v25 = **&out_token[4];
      v154 = **&out_token[4];
      obj = v22;
      do
      {
        v26 = 0;
        v151 = v24;
        do
        {
          if (**&out_token[4] != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*&out_token[2] + 8 * v26);
          v28 = [v22 objectForKeyedSubscript:v27];
          v29 = [v28 source];
          if (v29)
          {
            v31 = [v12 objectForKeyedSubscript:v27];
            if (v31)
            {
              v30 = v31;
              v32 = v28;
              v33 = [v31 objectForKeyedSubscript:@"source"];
              v34 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v33 unsignedIntValue] | 1);
              [v30 setObject:v34 forKeyedSubscript:@"source"];
            }

            else
            {
              v35 = v12;
              v30 = objc_alloc_init(NSMutableDictionary);
              v36 = [v28 ownerName];
              [v30 setObject:v36 forKeyedSubscript:@"owner"];

              v37 = [NSNumber numberWithUnsignedInteger:v29];
              [v30 setObject:v37 forKeyedSubscript:@"source"];

              v38 = v28;
              if (qword_100046AC0 != -1)
              {
                dispatch_once(&qword_100046AC0, &stru_10003CCF0);
              }

              v32 = v28;
              if (byte_100046ABC == 1)
              {
                v39 = [v38 canBlockRequest];
              }

              else
              {
                v39 = 0;
              }

              v40 = [NSNumber numberWithBool:v39];
              [v30 setObject:v40 forKeyedSubscript:@"can-block-request"];

              v12 = v35;
              [v35 setObject:v30 forKeyedSubscript:v27];
              v24 = v151;
            }

            v41 = ne_log_obj();
            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
            {
              v42 = [v12 objectForKeyedSubscript:v27];
              *buf = 67109890;
              *&buf[4] = ++xdict;
              v24 = v151;
              *&buf[8] = 2112;
              *&buf[10] = v27;
              *&buf[18] = 2048;
              *&buf[20] = v29;
              *&buf[28] = 2112;
              *&buf[30] = v42;
              _os_log_debug_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEBUG, "%d: Adding Web domain <%@><%lu><%@>", buf, 0x26u);
            }

            v28 = v32;

            v25 = v154;
            v22 = obj;
          }

          else
          {
            v30 = ne_log_obj();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
            {
              *buf = 67109634;
              *&buf[4] = ++v147;
              *&buf[8] = 2112;
              *&buf[10] = v27;
              *&buf[18] = 2048;
              *&buf[20] = v29;
              _os_log_debug_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "%d: Skipping non-Web domain <%@><0x%lX>", buf, 0x1Cu);
            }
          }

          v26 = v26 + 1;
        }

        while (v24 != v26);
        v24 = [v22 countByEnumeratingWithState:out_token objects:applier count:16];
      }

      while (v24);
    }

    else
    {
      v147 = 0;
      xdict = 0;
    }

    v45 = ne_log_obj();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *&buf[4] = xdict;
      *&buf[8] = 1024;
      *&buf[10] = v147;
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Added %d Web domains, skipped %d non-Web domains", buf, 0xEu);
    }

    v46 = NEResourcesCopyAppTrackingDomainsPath();
    v4 = v143;
    if (!v46)
    {
      v44 = ne_log_obj();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        LOWORD(applier[0]) = 0;
        v48 = "No App tracker domain file found";
        goto LABEL_118;
      }

LABEL_43:

      objc_autoreleasePoolPop(context);
LABEL_44:

      goto LABEL_45;
    }

    if ((sub_100004A0C(v138, v12, &v171, v46) & 1) == 0)
    {
      v44 = ne_log_obj();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        LOWORD(applier[0]) = 0;
        v48 = "Failed to retrieve tracker domain list for App";
        goto LABEL_118;
      }

      goto LABEL_43;
    }

    v47 = NEResourcesCopyTestAppTrackingDomainsPath();
    if (v47)
    {
      if ((sub_100004A0C(v138, v12, &v170, v47) & 1) == 0)
      {
        v44 = ne_log_obj();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          LOWORD(applier[0]) = 0;
          v48 = "Failed to retrieve tracker test domain list for App";
LABEL_118:
          _os_log_error_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, v48, applier, 2u);
          goto LABEL_43;
        }

        goto LABEL_43;
      }
    }

    else
    {
      v49 = ne_log_obj();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        LOWORD(applier[0]) = 0;
        _os_log_error_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "No Test App tracker domain file found", applier, 2u);
      }
    }

    v50 = v12;
    xdicta = v142;
    v155 = xarray;
    v152 = objc_opt_self();
    v51 = ne_log_obj();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
    {
      v137 = [v50 count];
      LODWORD(applier[0]) = 134217984;
      *(applier + 4) = v137;
      _os_log_debug_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEBUG, "Processing all domains <count %lu>", applier, 0xCu);
    }

    v185 = 0u;
    memset(buf, 0, sizeof(buf));
    obja = v50;
    v52 = [obja countByEnumeratingWithState:buf objects:out_token count:16];
    if (v52)
    {
      v53 = v52;
      v54 = **&buf[16];
      do
      {
        for (i = 0; i != v53; i = i + 1)
        {
          if (**&buf[16] != v54)
          {
            objc_enumerationMutation(obja);
          }

          v56 = *(*&buf[8] + 8 * i);
          v57 = [obja objectForKeyedSubscript:v56];
          v58 = [v57 objectForKeyedSubscript:@"owner"];
          v59 = [v57 objectForKeyedSubscript:@"source"];
          v60 = [v56 UTF8String];
          v61 = strlen(v60);
          v62 = ne_log_obj();
          if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
          {
            v73 = [v59 unsignedIntValue] & 1;
            v74 = [v59 unsignedIntValue];
            LODWORD(applier[0]) = 138413570;
            *(applier + 4) = v152;
            WORD6(applier[0]) = 2080;
            *(applier + 14) = v60;
            WORD3(applier[1]) = 1024;
            DWORD2(applier[1]) = v61;
            WORD6(applier[1]) = 2112;
            *(&applier[1] + 14) = v58;
            WORD3(applier[2]) = 1024;
            DWORD2(applier[2]) = v73;
            WORD6(applier[2]) = 1024;
            *(&applier[2] + 14) = (v74 >> 1) & 1;
            _os_log_debug_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEBUG, "%@ DDG domain %s <%d> : %@ web %u app %u", applier, 0x32u);
          }

          v172 = 0;
          if (!ne_trie_has_high_ascii())
          {
            goto LABEL_79;
          }

          v63 = ne_log_obj();
          if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
          {
            LODWORD(applier[0]) = 136315394;
            *(applier + 4) = v60;
            WORD6(applier[0]) = 1024;
            *(applier + 14) = v61;
            _os_log_debug_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEBUG, "DDG domain - puny-coding %s <%d>", applier, 0x12u);
          }

          if (ne_tracker_validate_domain() && v172 - 1 < 0xFD)
          {
            *(applier + v172) = 0;
            v64 = ne_log_obj();
            if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
            {
              *v176 = 136315394;
              *&v176[4] = v60;
              v177 = 2080;
              v178 = applier;
              _os_log_debug_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEBUG, "DDG domain - puny-coded %s -> %s", v176, 0x16u);
            }

            v60 = applier;
LABEL_79:
            v65 = xpc_dictionary_create(0, 0, 0);
            xpc_dictionary_set_string(v65, "owner", [v58 UTF8String]);
            v66 = [v57 objectForKeyedSubscript:@"can-block-request"];
            xpc_dictionary_set_BOOL(v65, "can-block-request", [v66 BOOLValue]);

            if ([v59 unsignedIntValue])
            {
              xpc_dictionary_set_BOOL(v65, "is-web-list", 1);
            }

            if (([v59 unsignedIntValue] & 2) != 0)
            {
              xpc_dictionary_set_BOOL(v65, "is-app-list", 1);
            }

            xpc_dictionary_set_value(xdicta, v60, v65);
            objc_opt_self();
            if (v60 && (v67 = strlen(v60), (v67 - 254) >= 0xFFFFFF03))
            {
              v69 = byte_1000469A8;
              v70 = v67 & 0x7FFFFFFF;
              do
              {
                *v69++ = v60[--v70];
              }

              while (v70);
              v68 = byte_1000469A8;
              byte_1000469A8[v67 & 0x7FFFFFFF] = 0;
            }

            else
            {
              v68 = 0;
            }

            v71 = [[NSString alloc] initWithCString:v68 encoding:4];
            v72 = [[NSString alloc] initWithCString:v60 encoding:4];
            [v155 setObject:v72 forKeyedSubscript:v71];

            goto LABEL_92;
          }

          v65 = ne_log_obj();
          if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
          {
            *v176 = 0;
            _os_log_error_impl(&_mh_execute_header, v65, OS_LOG_TYPE_ERROR, "Failed to puny-code domain", v176, 2u);
          }

LABEL_92:
        }

        v53 = [obja countByEnumeratingWithState:buf objects:out_token count:16];
      }

      while (v53);
    }

    v75 = v155;
    v76 = objc_alloc_init(NSMutableDictionary);
    v77 = objc_alloc_init(NSMutableDictionary);
    v78 = ne_log_obj();
    if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
    {
      v79 = [v155 count];
      LODWORD(applier[0]) = 134217984;
      *(applier + 4) = v79;
      _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "Deriving unique prefixes for %lu tracker domains", applier, 0xCu);
    }

    v168 = 0u;
    v169 = 0u;
    v166 = 0u;
    v167 = 0u;
    v144 = [v155 keyEnumerator];
    v80 = [v144 countByEnumeratingWithState:&v166 objects:v175 count:16];
    v153 = v76;
    if (v80)
    {
      v81 = v80;
      v82 = 0;
      v148 = 0;
      xarraya = *v167;
      do
      {
        v83 = 0;
        v84 = v82;
        do
        {
          if (*v167 != xarraya)
          {
            objc_enumerationMutation(v144);
          }

          v85 = *(*(&v166 + 1) + 8 * v83);
          v82 = [v75 objectForKeyedSubscript:v85];

          v86 = [v153 objectForKeyedSubscript:v82];

          if (!v86)
          {
            v87 = [obja objectForKeyedSubscript:v82];
            v88 = [v87 objectForKeyedSubscript:@"owner"];
            v89 = [v82 length];
            v148 += [v88 length] + 2 * v89 + 2;
            [v153 setObject:v82 forKeyedSubscript:v82];
          }

          v164 = 0u;
          v165 = 0u;
          v162 = 0u;
          v163 = 0u;
          v90 = [v75 keyEnumerator];
          v91 = [v90 countByEnumeratingWithState:&v162 objects:v174 count:16];
          if (v91)
          {
            v92 = v91;
            v93 = *v163;
            do
            {
              for (j = 0; j != v92; j = j + 1)
              {
                if (*v163 != v93)
                {
                  objc_enumerationMutation(v90);
                }

                v95 = *(*(&v162 + 1) + 8 * j);
                if (([v85 isEqual:v95] & 1) == 0)
                {
                  v96 = [v85 commonPrefixWithString:v95 options:2];
                  if ([v96 length])
                  {
                    [v77 setObject:v96 forKeyedSubscript:v96];
                  }
                }
              }

              v92 = [v90 countByEnumeratingWithState:&v162 objects:v174 count:16];
            }

            while (v92);
          }

          v83 = v83 + 1;
          v84 = v82;
          v75 = v155;
        }

        while (v83 != v81);
        v81 = [v144 countByEnumeratingWithState:&v166 objects:v175 count:16];
      }

      while (v81);

      v97 = v148;
      v76 = v153;
    }

    else
    {
      v97 = 0;
    }

    if (![v77 count] && objc_msgSend(v75, "count") == 1)
    {
      v98 = [v75 allKeys];
      v99 = [v98 objectAtIndexedSubscript:0];

      [v77 setObject:v99 forKeyedSubscript:v99];
    }

    v100 = ne_log_obj();
    if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
    {
      v101 = [v77 count];
      v102 = [v75 count];
      LODWORD(applier[0]) = 134218240;
      *(applier + 4) = v101;
      WORD6(applier[0]) = 2048;
      *(applier + 14) = v102;
      _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_DEFAULT, "Derived %lu unique prefixes for %lu tracker domains", applier, 0x16u);
    }

    xarray = xpc_array_create(0, 0);
    v158 = 0u;
    v159 = 0u;
    v160 = 0u;
    v161 = 0u;
    v103 = [v76 keyEnumerator];
    v104 = [v103 countByEnumeratingWithState:&v158 objects:v173 count:16];
    if (v104)
    {
      v105 = v104;
      v106 = *v159;
      do
      {
        for (k = 0; k != v105; k = k + 1)
        {
          if (*v159 != v106)
          {
            objc_enumerationMutation(v103);
          }

          v108 = [*(*(&v158 + 1) + 8 * k) lowercaseString];
          v109 = xpc_string_create([v108 UTF8String]);
          xpc_array_append_value(xarray, v109);
        }

        v105 = [v103 countByEnumeratingWithState:&v158 objects:v173 count:16];
      }

      while (v105);
    }

    objc_autoreleasePoolPop(context);
    if ((v139 & 1) == 0)
    {
      objc_storeStrong(&qword_100046988, v142);
      objc_storeStrong(&qword_100046990, xarray);
      qword_100046AA8 = [v77 count];
      qword_100046AB0 = v97;
    }

    v110 = v170;
    v111 = v171;
    if (v171 <= v170)
    {
      *&v112 = v170;
    }

    else
    {
      *&v112 = v171;
    }

    if (v18 > v171)
    {
      *&v112 = v18;
    }

    qword_1000469A0 = v112;
    v113 = ne_log_obj();
    v4 = v143;
    if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(applier[0]) = 134218752;
      *(applier + 4) = qword_1000469A0;
      WORD6(applier[0]) = 2048;
      *(applier + 14) = v18;
      WORD3(applier[1]) = 2048;
      *(&applier[1] + 1) = v111;
      LOWORD(applier[2]) = 2048;
      *(&applier[2] + 2) = v110;
      _os_log_impl(&_mh_execute_header, v113, OS_LOG_TYPE_DEFAULT, "Domain list g_lastUpdateTimeInterval %f <lastUpdateTimeInterval %f lastUpdateTimeIntervalApp %f lastUpdateTimeIntervalAppTest %f>", applier, 0x2Au);
    }

    *v176 = 0;
    if ((v140 & 1) == 0)
    {
      v114 = open("/private/var/db/com.apple.networkextension.tracker-info", 0);
      if (v114 < 0)
      {
        v122 = ne_log_obj();
        if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
        {
          v123 = __error();
          v124 = strerror(*v123);
          LODWORD(applier[0]) = 136315650;
          *(applier + 4) = "+[NEHelperTrackerManager fetchTrackerDomainList:isInit:]";
          WORD6(applier[0]) = 2080;
          *(applier + 14) = "/private/var/db/com.apple.networkextension.tracker-info";
          WORD3(applier[1]) = 2080;
          *(&applier[1] + 1) = v124;
          _os_log_impl(&_mh_execute_header, v122, OS_LOG_TYPE_DEFAULT, "%s: failed to open mmap file %s: %s", applier, 0x20u);
        }
      }

      else
      {
        v115 = v114;
        memset(applier, 0, 112);
        v116 = ne_trie_init_from_file();
        v117 = v116;
        v119 = *v176 != *&qword_1000469A0 || v116 == 0;
        v120 = ne_log_obj();
        if (os_log_type_enabled(v120, OS_LOG_TYPE_DEBUG))
        {
          out_token[0] = 136316674;
          *&out_token[1] = "+[NEHelperTrackerManager fetchTrackerDomainList:isInit:]";
          LOWORD(out_token[3]) = 2080;
          *(&out_token[3] + 2) = "/private/var/db/com.apple.networkextension.tracker-info";
          HIWORD(out_token[5]) = 1024;
          out_token[6] = v115;
          LOWORD(out_token[7]) = 1024;
          *(&out_token[7] + 2) = v117 != 0;
          HIWORD(out_token[8]) = 2048;
          *&out_token[9] = *v176;
          LOWORD(out_token[11]) = 2048;
          *(&out_token[11] + 2) = qword_1000469A0;
          HIWORD(out_token[13]) = 1024;
          out_token[14] = v119;
          _os_log_debug_impl(&_mh_execute_header, v120, OS_LOG_TYPE_DEBUG, "%s: opened mmap file %s <fd %d> trie_ok %d file timestamp %f g_lastUpdateTimeInterval %f do_rebuild %d", out_token, 0x3Cu);
        }

        if (v117)
        {
          ne_trie_free();
        }

        close(v115);
        v4 = v143;
        if (!v119)
        {
          v121 = ne_log_obj();
          if (os_log_type_enabled(v121, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(applier[0]) = 0;
            _os_log_impl(&_mh_execute_header, v121, OS_LOG_TYPE_DEFAULT, "No need to re-build the tracker domain trie", applier, 2u);
          }

LABEL_169:
          objc_opt_self();
          v132 = dword_1000468A0;
          if (dword_1000468A0 != -1)
          {
            goto LABEL_176;
          }

          out_token[0] = -1;
          if (notify_register_check("com.apple.nehelper.tracker-info-ready", out_token))
          {
            v133 = ne_log_obj();
            if (os_log_type_enabled(v133, OS_LOG_TYPE_ERROR))
            {
              LODWORD(applier[0]) = 136315138;
              *(applier + 4) = "com.apple.nehelper.tracker-info-ready";
              _os_log_error_impl(&_mh_execute_header, v133, OS_LOG_TYPE_ERROR, "Failed to register for the %s notification", applier, 0xCu);
            }

            v132 = dword_1000468A0;
          }

          else
          {
            v132 = out_token[0];
            dword_1000468A0 = out_token[0];
          }

          if (v132 != -1)
          {
LABEL_176:
            v134 = notify_set_state(v132, *&qword_1000469A0);
            if (v134)
            {
              v135 = v134;
              v136 = ne_log_obj();
              if (os_log_type_enabled(v136, OS_LOG_TYPE_ERROR))
              {
                LODWORD(applier[0]) = 136315394;
                *(applier + 4) = "com.apple.nehelper.tracker-info-ready";
                WORD6(applier[0]) = 1024;
                *(applier + 14) = v135;
                _os_log_error_impl(&_mh_execute_header, v136, OS_LOG_TYPE_ERROR, "Failed to set the state for the %s notification (status %d)", applier, 0x12u);
              }
            }

            else
            {
              notify_post("com.apple.nehelper.tracker-info-ready");
              v136 = ne_log_obj();
              if (os_log_type_enabled(v136, OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(applier[0]) = 136315138;
                *(applier + 4) = "com.apple.nehelper.tracker-info-ready";
                _os_log_impl(&_mh_execute_header, v136, OS_LOG_TYPE_DEFAULT, "Posted to %s", applier, 0xCu);
              }
            }
          }

          goto LABEL_44;
        }
      }
    }

    v125 = open("/private/var/db/com.apple.networkextension.tracker-info.temp", 518, 420);
    if (v125 >= 1)
    {
      v126 = v125;
      v183 = 0u;
      v182 = 0u;
      v181 = 0u;
      memset(out_token, 0, sizeof(out_token));
      v127 = ne_log_obj();
      if (os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(applier[0]) = 136315906;
        *(applier + 4) = "+[NEHelperTrackerManager fetchTrackerDomainList:isInit:]";
        WORD6(applier[0]) = 2080;
        *(applier + 14) = "/private/var/db/com.apple.networkextension.tracker-info.temp";
        WORD3(applier[1]) = 2048;
        *(&applier[1] + 1) = *v176;
        LOWORD(applier[2]) = 2048;
        *(&applier[2] + 2) = *&qword_1000469A0;
        _os_log_impl(&_mh_execute_header, v127, OS_LOG_TYPE_DEFAULT, "%s: Created new mmap file %s (old ts %llu new ts %llu)", applier, 0x2Au);
      }

      [v77 count];
      ne_tracker_build_trie();
      ne_trie_free();
      close(v126);
      rename("/private/var/db/com.apple.networkextension.tracker-info.temp", "/private/var/db/com.apple.networkextension.tracker-info", v128);
      if (v129 < 0)
      {
        v130 = *__error();
        if (strerror_r(v130, applier, 0x80uLL))
        {
          LOBYTE(applier[0]) = 0;
        }

        v131 = ne_log_obj();
        if (os_log_type_enabled(v131, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315906;
          *&buf[4] = "/private/var/db/com.apple.networkextension.tracker-info.temp";
          *&buf[12] = 2080;
          *&buf[14] = "/private/var/db/com.apple.networkextension.tracker-info";
          *&buf[22] = 1024;
          *&buf[24] = v130;
          *&buf[28] = 2080;
          *&buf[30] = applier;
          _os_log_fault_impl(&_mh_execute_header, v131, OS_LOG_TYPE_FAULT, "Failed to move %s to %s: [%d] %s", buf, 0x26u);
        }

        v4 = v143;
      }
    }

    goto LABEL_169;
  }

LABEL_45:
}

uint64_t sub_100004A0C(uint64_t a1, void *a2, void *a3, const void *a4)
{
  v44 = a2;
  objc_opt_self();
  v6 = ne_log_obj();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    *v50 = a4;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Fetching from App domain file url %@", buf, 0xCu);
  }

  v7 = +[NSFileManager defaultManager];
  v8 = [v7 attributesOfItemAtPath:a4 error:0];

  v9 = [NSData dataWithContentsOfFile:a4];
  CFRelease(a4);
  if (v8 && v9 && [v9 length])
  {
    v10 = [v8 objectForKey:NSFileCreationDate];
    v11 = v10;
    if (v10)
    {
      [v10 timeIntervalSinceReferenceDate];
      *a3 = v12;
      v13 = [NSJSONSerialization JSONObjectWithData:v9 options:0 error:0];
      v14 = ne_log_obj();
      v15 = v14;
      if (v13)
      {
        v38 = v9;
        v39 = v8;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v16 = [v13 count];
          *buf = 134218242;
          *v50 = v16;
          *&v50[8] = 2112;
          *&v50[10] = v11;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Fetched App domain list <count %lu, %@>", buf, 0x16u);
        }

        v37 = v11;

        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v17 = v13;
        v18 = [v17 countByEnumeratingWithState:&v45 objects:v51 count:16];
        if (v18)
        {
          v19 = v18;
          v41 = 0;
          v20 = *v46;
          v21 = @"s";
          v42 = v17;
          do
          {
            v22 = 0;
            v43 = v19;
            do
            {
              if (*v46 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v23 = *(*(&v45 + 1) + 8 * v22);
              v24 = [v17 objectForKeyedSubscript:v23];
              v25 = [v24 objectForKeyedSubscript:v21];
              if (([v25 unsignedIntValue] & 2) != 0)
              {
                v27 = v20;
                v28 = v21;
                v29 = [v44 objectForKeyedSubscript:v23];
                if (v29)
                {
                  v26 = v29;
                  v30 = [v29 objectForKeyedSubscript:@"source"];
                  v31 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v30 unsignedIntValue] | 2);
                  [v26 setObject:v31 forKeyedSubscript:@"source"];
                }

                else
                {
                  v26 = objc_alloc_init(NSMutableDictionary);
                  v32 = [v24 objectForKeyedSubscript:@"n"];
                  [v26 setObject:v32 forKeyedSubscript:@"owner"];

                  [v26 setObject:v25 forKeyedSubscript:@"source"];
                  [v44 setObject:v26 forKeyedSubscript:v23];
                }

                v33 = ne_log_obj();
                if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
                {
                  v40 = [v25 unsignedIntValue];
                  v34 = [v44 objectForKeyedSubscript:v23];
                  *buf = 67109890;
                  LODWORD(v41) = v41 + 1;
                  *v50 = v41;
                  *&v50[4] = 2112;
                  *&v50[6] = v23;
                  *&v50[14] = 1024;
                  *&v50[16] = v40;
                  *&v50[20] = 2112;
                  *&v50[22] = v34;
                  _os_log_debug_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "%d: Adding App domain <%@><%u><%@>", buf, 0x22u);
                }

                v21 = v28;
                v20 = v27;
                v17 = v42;
                v19 = v43;
              }

              else
              {
                v26 = ne_log_obj();
                if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 67109634;
                  *v50 = ++HIDWORD(v41);
                  *&v50[4] = 2112;
                  *&v50[6] = v23;
                  *&v50[14] = 2048;
                  *&v50[16] = v25;
                  _os_log_debug_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "%d: Skipping App domain <%@><0x%lX>", buf, 0x1Cu);
                }
              }

              v22 = v22 + 1;
            }

            while (v19 != v22);
            v19 = [v17 countByEnumeratingWithState:&v45 objects:v51 count:16];
          }

          while (v19);
        }

        v35 = 1;
        v9 = v38;
        v8 = v39;
        v11 = v37;
        goto LABEL_36;
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "App tracker domain list invalid", buf, 2u);
      }

      v17 = 0;
    }

    else
    {
      v17 = ne_log_obj();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "No App tracker domain file creation date", buf, 2u);
      }
    }

    v35 = 0;
LABEL_36:

    goto LABEL_37;
  }

  v11 = ne_log_obj();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "No App tracker domain file metadata or data", buf, 2u);
  }

  v35 = 0;
LABEL_37:

  return v35;
}

uint64_t sub_100005024(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if (xpc_get_type(v4) == &_xpc_type_string)
    {
      string_ptr = xpc_string_get_string_ptr(v5);
      if (string_ptr)
      {
        v7 = string_ptr;
        v8 = objc_alloc_init(NSMutableDictionary);
        [v8 setObject:@"<Test Owner>" forKeyedSubscript:@"owner"];
        v9 = [NSNumber numberWithUnsignedInteger:3];
        [v8 setObject:v9 forKeyedSubscript:@"source"];

        v10 = *(a1 + 32);
        v11 = [NSString stringWithUTF8String:v7];
        [v10 setObject:v8 forKeyedSubscript:v11];

        v12 = ne_log_obj();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          v14 = *(a1 + 32);
          v15 = [NSString stringWithUTF8String:v7];
          v16 = [v14 objectForKeyedSubscript:v15];
          v17 = 136315394;
          v18 = v7;
          v19 = 2112;
          v20 = v16;
          _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Adding test domain <%s><%@>", &v17, 0x16u);
        }
      }
    }
  }

  return 1;
}

void sub_10000533C(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("NEHelperTrackerManagerQueue", v3);
  v2 = qword_100046980;
  qword_100046980 = v1;
}

void sub_1000053A0(id a1)
{
  os_unfair_lock_lock(&stru_100046AB8);
  sub_100003144(NEHelperTrackerManager, 0, 1);

  os_unfair_lock_unlock(&stru_100046AB8);
}

BOOL sub_10000555C(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  if (!a1)
  {
    v39 = 0;
    goto LABEL_75;
  }

  uint64 = xpc_dictionary_get_uint64(v4, "MessageType");
  if (uint64 == 1003)
  {
    v31 = v5;
    if (sub_100006D68(0))
    {
      v9 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_uint64(v9, "MessageType", 0x3EDuLL);
      v32 = *(a1 + 8);
      v33 = WiFiManagerClientCopyNetworksWithBundleIdentifier();
      length = v33;
      if (v33)
      {
        v34 = v33;
        Count = CFArrayGetCount(v33);
        if (Count)
        {
          v36 = Count;
          v37 = objc_alloc_init(NSMutableArray);
          if (v36 < 1)
          {
            v39 = 1;
LABEL_66:
            v57 = _CFXPCCreateXPCObjectFromCFObject();
            xpc_dictionary_set_value(v9, "QueryResult", v57);
            sub_10000BA0C(NEHelperServer, v31, 100, v9);
          }

          else
          {
            v38 = 0;
            v39 = 0;
            while (1)
            {
              CFArrayGetValueAtIndex(v34, v38);
              v40 = sub_100006E34();
              if (!v40)
              {
                break;
              }

              v41 = v40;
              [v37 addObject:v40];

              v39 = v36 <= ++v38;
              if (v36 == v38)
              {
                goto LABEL_66;
              }
            }

            v57 = ne_log_obj();
            if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *&buf[4] = objc_opt_class();
              v140 = *&buf[4];
              _os_log_error_impl(&_mh_execute_header, v57, OS_LOG_TYPE_ERROR, "%@ received invalid network object from WiFiManager.", buf, 0xCu);
            }
          }

          myCFRelease();
LABEL_73:

          goto LABEL_74;
        }

        sub_10000BA0C(NEHelperServer, v31, 100, v9);
        myCFRelease();
      }

      else
      {
        sub_10000BA0C(NEHelperServer, v31, 100, v9);
      }

      v39 = 1;
      goto LABEL_73;
    }

    v9 = ne_log_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
LABEL_41:
      v39 = 0;
      goto LABEL_73;
    }

    *buf = 138412290;
    *&buf[4] = objc_opt_class();
    v43 = *&buf[4];
    v44 = "%@ failed to get WiFiManager client.";
LABEL_128:
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, v44, buf, 0xCu);

    goto LABEL_41;
  }

  if (uint64 != 1002)
  {
    if (uint64 != 1001)
    {
      v39 = 1;
      goto LABEL_75;
    }

    v7 = v5;
    length = 0;
    data = xpc_dictionary_get_data(v7, "AddParameter", &length);
    if (data && length)
    {
      v9 = [NSData dataWithBytesNoCopy:data length:length freeWhenDone:0];
      v10 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v9 error:0];
      v11 = [v10 decodeObjectOfClass:objc_opt_class() forKey:@"NEHotspotConfigurationKey"];
      if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v12 = [v11 validate];
        if (v12 != 100)
        {
          v58 = v12;
          v59 = ne_log_obj();
          if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
          {
            v138 = objc_opt_class();
            *buf = 138412290;
            *&buf[4] = v138;
            v139 = v138;
            _os_log_error_impl(&_mh_execute_header, v59, OS_LOG_TYPE_ERROR, "%@ failed to validate the configuration data for add/update request.", buf, 0xCu);
          }

          v60 = xpc_dictionary_create(0, 0, 0);
          xpc_dictionary_set_uint64(v60, "MessageType", 0x3ECuLL);
          sub_10000BA0C(NEHelperServer, v7, v58, v60);

          v39 = 1;
          goto LABEL_45;
        }

        v13 = v11;
        if (WiFiNetworkCreate())
        {
          if (([v13 useSSIDPrefix] & 1) != 0 || (objc_msgSend(v13, "SSID"), v14 = objc_claimAutoreleasedReturnValue(), v14, !v14))
          {
            if (![v13 useSSIDPrefix] || (objc_msgSend(v13, "SSIDPrefix"), v63 = objc_claimAutoreleasedReturnValue(), v63, !v63) || (objc_msgSend(v13, "SSIDPrefix"), v64 = objc_claimAutoreleasedReturnValue(), WiFiNetworkSetProperty(), v64, !objc_msgSend(v13, "hidden")))
            {
LABEL_84:
              v65 = [v13 lifeTimeInDays];
              if (v65 && (sub_100007008(a1) & 1) == 0 && [v13 securityType] != 3)
              {
                v66 = [v13 securityType];

                if (v66 == 4)
                {
                  goto LABEL_90;
                }

                v67 = [v13 lifeTimeInDays];
                [v67 doubleValue];
                v69 = v68 * 86400.0;

                v65 = +[NSDate date];
                [v65 dateByAddingTimeInterval:v69];
                WiFiNetworkSetExpireDate();
              }

LABEL_90:
              [NSNumber numberWithInt:2];
              WiFiNetworkSetProperty();
              v187 = v13;
              if ([v13 securityType] == 1)
              {
                WiFiNetworkSetWEP();
              }

              else
              {
                if ([v13 securityType] != 2)
                {
                  if ([v13 securityType] != 3 && objc_msgSend(v13, "securityType") != 4)
                  {
                    goto LABEL_106;
                  }

                  v114 = [v13 eapSettings];
                  v183 = objc_alloc_init(NSMutableDictionary);
                  v115 = [v114 username];
                  v116 = [v115 length];

                  if (v116)
                  {
                    v117 = [v114 username];
                    [v183 setObject:v117 forKey:@"UserName"];
                  }

                  v118 = [v114 password];
                  v119 = [v118 length];

                  if (v119)
                  {
                    v120 = [v114 password];
                    [v183 setObject:v120 forKey:@"UserPassword"];
                  }

                  v121 = [v114 supportedEAPTypes];
                  v122 = [v121 count];

                  if (v122)
                  {
                    v123 = [v114 supportedEAPTypes];
                    [v183 setObject:v123 forKey:@"AcceptEAPTypes"];
                  }

                  if ([v114 isTLSClientCertificateRequired])
                  {
                    v185 = objc_alloc_init(NSMutableDictionary);
                    v124 = [v114 identityReference];
                    [v185 setObject:v124 forKeyedSubscript:@"TLSClientIdentityData"];

                    v125 = [v114 clientTrustChainReference];
                    v126 = [v125 count];

                    if (v126)
                    {
                      v127 = [v114 clientTrustChainReference];
                      [v185 setObject:v127 forKeyedSubscript:@"TLSClientIdentityTrustChain"];
                    }

                    [v183 setObject:v185 forKeyedSubscript:@"TLSIdentityHandle"];
                  }

                  v186 = v10;
                  v128 = [v114 trustedServerCertificateReferences];
                  v129 = [v128 count];

                  if (v129)
                  {
                    v130 = [v114 trustedServerCertificateReferences];
                    [v183 setObject:v130 forKeyedSubscript:@"TLSTrustedCertificates"];
                  }

                  v131 = [v114 supportedEAPTypes];
                  v132 = [NSNumber numberWithInteger:21];
                  v133 = [v131 containsObject:v132];

                  if (v133)
                  {
                    v134 = [v114 ttlsInnerAuthenticationType];
                    if (v134 > 3)
                    {
                      v135 = @"EAP";
                    }

                    else
                    {
                      v135 = off_10003CDE8[v134];
                    }

                    [v183 setObject:v135 forKeyedSubscript:@"TTLSInnerAuthentication"];
                  }

                  v144 = [v114 outerIdentity];
                  v145 = [v144 length];

                  if (v145)
                  {
                    v146 = [v114 outerIdentity];
                    [v183 setObject:v146 forKeyedSubscript:@"OuterIdentity"];
                  }

                  v147 = [v114 trustedServerNames];
                  v148 = [v147 count];

                  if (v148)
                  {
                    v149 = [v114 trustedServerNames];
                    [v183 setObject:v149 forKeyedSubscript:@"TLSTrustedServerNames"];
                  }

                  v150 = [v114 preferredTLSVersion];
                  v151 = @"1.2";
                  if (v150 == 1)
                  {
                    v151 = @"1.1";
                  }

                  if (v150)
                  {
                    v152 = v151;
                  }

                  else
                  {
                    v152 = @"1.0";
                  }

                  [v183 setObject:v152 forKeyedSubscript:@"TLSMaximumVersion"];

                  v181 = [NSDictionary dictionaryWithObject:v183 forKey:@"EAPClientConfiguration"];
                  WiFiNetworkSetProperty();
                  WiFiNetworkSetWPA();
                  v13 = v187;
                  if ([v187 securityType] == 4)
                  {
                    WiFiNetworkSetProperty();
                    v153 = [v187 hs20Settings];
                    v154 = [v153 domainName];
                    WiFiNetworkSetProperty();

                    v155 = [v187 hs20Settings];
                    [v155 isRoamingEnabled];
                    v13 = v187;
                    WiFiNetworkSetProperty();

                    v156 = [v187 hs20Settings];
                    v157 = [v156 roamingConsortiumOIs];
                    v158 = [v157 count];

                    if (v158)
                    {
                      v159 = [v187 hs20Settings];
                      v160 = [v159 roamingConsortiumOIs];
                      WiFiNetworkSetProperty();
                    }

                    v161 = [v187 hs20Settings];
                    v162 = [v161 naiRealmNames];
                    v163 = [v162 count];

                    if (v163)
                    {
                      v164 = [v187 hs20Settings];
                      v165 = [v164 naiRealmNames];
                      WiFiNetworkSetProperty();
                    }
                  }

                  v166 = [v13 eapSettings];
                  v167 = [v166 password];
                  v168 = [v167 length];

                  if (v168)
                  {
                    v169 = [v13 eapSettings];
                    v170 = [v169 password];
                    WiFiNetworkSetPassword();
                  }

                  v84 = v183;
                  v10 = v186;
LABEL_105:

LABEL_106:
                  if (sub_100006D68(0))
                  {
                    v184 = v10;
                    v85 = +[NSUUID UUID];
                    v86 = [v85 UUIDString];

                    v87 = *(a1 + 8);
                    v180 = [v13 joinOnce];
                    v178 = [v13 isAccessory];
                    v182 = v87;
                    v88 = v87;
                    v89 = v7;
                    obj = v86;
                    v90 = v86;
                    objc_opt_self();
                    v91 = [NEHelperHotspotConfigurationTask alloc];
                    v92 = v90;
                    v93 = v89;
                    v94 = v88;
                    if (v91)
                    {
                      *buf = v91;
                      *&buf[8] = NEHelperHotspotConfigurationTask;
                      v95 = objc_msgSendSuper2(buf, "init");
                      v91 = v95;
                      if (v95)
                      {
                        objc_storeStrong(&v95->_taskIdentifier, obj);
                        objc_storeStrong(&v91->_requestMessage, a2);
                        objc_storeStrong(&v91->_bundleID, v182);
                        v91->_joinOnce = v180;
                        v91->_isAccessory = v178;
                      }
                    }

                    v10 = v184;

                    [qword_100046AD0 setObject:v91 forKeyedSubscript:v92];
                    v96 = objc_alloc_init(NSMutableDictionary);
                    [v96 setObject:*(a1 + 8) forKeyedSubscript:kWiFiNetworkBundleIdentifierKey];
                    v97 = [NSNumber numberWithInteger:sub_100007008(a1) ^ 1];
                    [v96 setObject:v97 forKeyedSubscript:kWiFiAddNetworkOriginatorKey];

                    v98 = v187;
                    if ([v187 joinOnce])
                    {
                      v99 = ne_log_obj();
                      if (os_log_type_enabled(v99, OS_LOG_TYPE_INFO))
                      {
                        v100 = objc_opt_class();
                        *buf = 138412290;
                        *&buf[4] = v100;
                        v101 = v100;
                        _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_INFO, "%@ setting kWiFiAddNetworkDisassociateOnSessionEndKey option", buf, 0xCu);
                      }

                      v102 = [NSNumber numberWithBool:1];
                      [v96 setObject:v102 forKeyedSubscript:kWiFiAddNetworkDisassociateOnSessionEndKey];

                      v98 = v187;
                    }

                    if ([v98 useSSIDPrefix])
                    {
                      v103 = ne_log_obj();
                      if (os_log_type_enabled(v103, OS_LOG_TYPE_INFO))
                      {
                        v104 = objc_opt_class();
                        *buf = 138412290;
                        *&buf[4] = v104;
                        v105 = v104;
                        _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_INFO, "%@ setting kWiFiAddNetworkUseSSIDPrefixKey option", buf, 0xCu);
                      }

                      v106 = [NSNumber numberWithBool:1];
                      [v96 setObject:v106 forKeyedSubscript:kWiFiAddNetworkUseSSIDPrefixKey];

                      v98 = v187;
                    }

                    if ([v98 isAccessory])
                    {
                      v107 = ne_log_obj();
                      if (os_log_type_enabled(v107, OS_LOG_TYPE_INFO))
                      {
                        v108 = objc_opt_class();
                        *buf = 138412290;
                        *&buf[4] = v108;
                        v109 = v108;
                        _os_log_impl(&_mh_execute_header, v107, OS_LOG_TYPE_INFO, "%@ setting isAccessory option", buf, 0xCu);
                      }

                      [v96 setObject:&__kCFBooleanTrue forKeyedSubscript:@"isAccessory"];
                    }

                    v110 = WiFiManagerClientAddNetworkAsync();
                    myCFRelease();
                    v39 = v110 == 0;
                    if (v110)
                    {
                      v111 = ne_log_obj();
                      if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
                      {
                        v173 = objc_opt_class();
                        *buf = 138412546;
                        *&buf[4] = v173;
                        *&buf[12] = 1024;
                        *&buf[14] = v110;
                        v174 = v173;
                        _os_log_error_impl(&_mh_execute_header, v111, OS_LOG_TYPE_ERROR, "%@ WiFiManagerClientAddNetworkAsync() failed: %d", buf, 0x12u);
                      }
                    }

                    goto LABEL_45;
                  }

                  v113 = ne_log_obj();
                  if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
                  {
                    v175 = objc_opt_class();
                    *buf = 138412290;
                    *&buf[4] = v175;
                    v176 = v175;
                    _os_log_error_impl(&_mh_execute_header, v113, OS_LOG_TYPE_ERROR, "%@ failed to get WiFiManager client.", buf, 0xCu);
                  }

                  myCFRelease();
LABEL_44:
                  v39 = 0;
LABEL_45:

                  goto LABEL_73;
                }

                WiFiNetworkSetWPA();
              }

              v84 = [v13 passphrase];
              WiFiNetworkSetProperty();
              goto LABEL_105;
            }
          }

          else
          {
            v15 = [v13 SSID];
            WiFiNetworkSetProperty();

            if (([v13 hidden] & 1) == 0)
            {
              goto LABEL_84;
            }
          }

          WiFiNetworkSetProperty();
          goto LABEL_84;
        }

        v48 = ne_log_obj();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          v70 = objc_opt_class();
          *buf = 138412290;
          *&buf[4] = v70;
          v71 = v70;
          v72 = "%@ failed to convert input configuration into wifi network dictionary for add/update request";
LABEL_130:
          _os_log_error_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, v72, buf, 0xCu);
        }
      }

      else
      {
        v48 = ne_log_obj();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          v112 = objc_opt_class();
          *buf = 138412290;
          *&buf[4] = v112;
          v71 = v112;
          v72 = "%@ received invalid configuration object for add/update request.";
          goto LABEL_130;
        }
      }

      goto LABEL_44;
    }

    v9 = ne_log_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_41;
    }

    v42 = objc_opt_class();
    *buf = 138412290;
    *&buf[4] = v42;
    v43 = v42;
    v44 = "%@ failed to get input configuration for add/update request.";
    goto LABEL_128;
  }

  string = xpc_dictionary_get_string(v5, "NetworkToRemove");
  if (!string)
  {
    v45 = ne_log_obj();
    if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
LABEL_47:

      v39 = 0;
      goto LABEL_74;
    }

    *buf = 138412290;
    *&buf[4] = objc_opt_class();
    v46 = *&buf[4];
    v47 = "%@ failed to get input data for configuration remove request.";
LABEL_135:
    _os_log_error_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, v47, buf, 0xCu);

    goto LABEL_47;
  }

  v17 = string;
  if (!sub_100006D68(0))
  {
    v45 = ne_log_obj();
    if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_47;
    }

    *buf = 138412290;
    *&buf[4] = objc_opt_class();
    v46 = *&buf[4];
    v47 = "%@ failed to get WiFiManager client.";
    goto LABEL_135;
  }

  length = 0;
  v18 = WiFiManagerClientCopyCurrentSessionBasedNetwork();
  if (!v18)
  {
    v25 = ne_log_obj();
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_54;
    }

    *buf = 138412290;
    *&buf[4] = objc_opt_class();
    v27 = *&buf[4];
    _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "%@ The currently associated Wi-Fi network is not a JoinOnce network.", buf, 0xCu);
    goto LABEL_161;
  }

  BundleIdentifier = WiFiNetworkGetBundleIdentifier();
  if (CFEqual(BundleIdentifier, *(a1 + 8)))
  {
    v20 = ne_log_obj();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      *&buf[4] = objc_opt_class();
      v136 = *&buf[4];
      _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "%@ disassociating (JoinOnce)Wi-Fi network.", buf, 0xCu);
    }

    v21 = WiFiManagerClientCopyDevices();
    length = v21;
    if (v21 && (v22 = v21, CFArrayGetCount(v21)))
    {
      if (!CFArrayGetValueAtIndex(v22, 0) || (v23 = WiFiDeviceClientDisassociate()) == 0)
      {
        myCFRelease();
        myCFRelease();
        goto LABEL_158;
      }

      v24 = v23;
      v25 = ne_log_obj();
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_54;
      }

      v26 = objc_opt_class();
      *buf = 138412546;
      *&buf[4] = v26;
      *&buf[12] = 1024;
      *&buf[14] = v24;
      v27 = v26;
      v28 = "%@ WiFiDeviceClientDisassociate failed: %d";
      v29 = v25;
      v30 = 18;
    }

    else
    {
      v25 = ne_log_obj();
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_54;
      }

      v137 = objc_opt_class();
      *buf = 138412290;
      *&buf[4] = v137;
      v27 = v137;
      v28 = "%@ WiFiManagerClientCopyDevices() failed(No Wi-Fi devices found).";
      v29 = v25;
      v30 = 12;
    }

    _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, v28, buf, v30);
LABEL_161:

LABEL_54:
    myCFRelease();
    myCFRelease();
    if (v18)
    {
      goto LABEL_158;
    }

    goto LABEL_57;
  }

  myCFRelease();
  myCFRelease();
LABEL_57:
  v49 = [NSString stringWithUTF8String:v17];
  v50 = *(a1 + 8);
  v51 = WiFiManagerClientCopyNetworksWithBundleIdentifier();
  length = v51;
  if (!v51)
  {
    v62 = ne_log_obj();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
    {
      v141 = objc_opt_class();
      v142 = *(a1 + 8);
      *buf = 138412546;
      *&buf[4] = v141;
      *&buf[12] = 2112;
      *&buf[14] = v142;
      v143 = v141;
      _os_log_debug_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEBUG, "%@ %@ does not own any networks", buf, 0x16u);
    }

    goto LABEL_157;
  }

  v52 = v51;
  v53 = CFArrayGetCount(v51);
  if (v53 < 1)
  {
    goto LABEL_156;
  }

  v54 = v53;
  v55 = 0;
  while (!CFArrayGetValueAtIndex(v52, v55))
  {
LABEL_63:
    if (v54 == ++v55)
    {
      goto LABEL_156;
    }
  }

  v56 = sub_100006E34();
  if (![v49 isEqualToString:v56])
  {

    goto LABEL_63;
  }

  v73 = ne_log_obj();
  if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
  {
    v171 = objc_opt_class();
    *buf = 138412546;
    *&buf[4] = v171;
    *&buf[12] = 2112;
    *&buf[14] = v49;
    v172 = v171;
    _os_log_debug_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEBUG, "%@ removing configuration for network [%@]", buf, 0x16u);
  }

  WiFiManagerClientRemoveNetwork();
  if (WiFiNetworkIsHotspot())
  {
    v74 = WiFiManagerClientCopyDevices();
    if (v74 && (v75 = v74, CFArrayGetCount(v74)))
    {
      CFArrayGetValueAtIndex(v75, 0);
      v76 = WiFiDeviceClientDisassociate();
      if (v76)
      {
        v77 = v76;
        v78 = ne_log_obj();
        if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
        {
          v79 = objc_opt_class();
          *buf = 138412546;
          *&buf[4] = v79;
          *&buf[12] = 1024;
          *&buf[14] = v77;
          v80 = v79;
          v81 = "%@ WiFiDeviceClientDisassociate failed: %d";
          v82 = v78;
          v83 = 18;
          goto LABEL_182;
        }

        goto LABEL_154;
      }
    }

    else
    {
      v78 = ne_log_obj();
      if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
      {
        v177 = objc_opt_class();
        *buf = 138412290;
        *&buf[4] = v177;
        v80 = v177;
        v81 = "%@ WiFiManagerClientCopyDevices() failed (No Wi-Fi devices found).";
        v82 = v78;
        v83 = 12;
LABEL_182:
        _os_log_error_impl(&_mh_execute_header, v82, OS_LOG_TYPE_ERROR, v81, buf, v83);
      }

LABEL_154:
    }
  }

LABEL_156:
  myCFRelease();
  myCFRelease();
LABEL_157:

LABEL_158:
  v39 = 1;
LABEL_74:

LABEL_75:
  return v39;
}

uint64_t sub_100006D68(int a1)
{
  v1 = qword_100046AE0;
  if (a1 || !qword_100046AE0)
  {
    if (qword_100046AE0)
    {
      WiFiManagerClientRegisterServerRestartCallback();
      CFRunLoopGetMain();
      WiFiManagerClientUnscheduleFromRunLoop();
    }

    myCFRelease();
    v1 = WiFiManagerClientCreate();
    qword_100046AE0 = v1;
    if (v1)
    {
      WiFiManagerClientRegisterServerRestartCallback();
      CFRunLoopGetMain();
      WiFiManagerClientScheduleWithRunLoop();
      return qword_100046AE0;
    }
  }

  return v1;
}

uint64_t sub_100006E34()
{
  if (WiFiNetworkIsHotspot())
  {
    result = WiFiNetworkGetHS20DomainName();
    if (!result)
    {

      return WiFiNetworkGetProperty();
    }
  }

  else
  {

    return WiFiNetworkGetSSID();
  }

  return result;
}

id sub_100006EB4()
{
  v0 = ne_log_obj();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "[NEHelperHotspotConfigurationManager] WiFiManager restarted", v2, 2u);
  }

  sub_100006D68(1);
  result = [qword_100046AD0 count];
  if (result)
  {
    [qword_100046AD0 enumerateKeysAndObjectsUsingBlock:&stru_10003CDC8];
    return [qword_100046AD0 removeAllObjects];
  }

  return result;
}

void sub_100006F4C(id a1, id a2, id a3, BOOL *a4)
{
  v5 = a3;
  v6 = a2;
  myCFRelease();
  if (v5)
  {
    Property = objc_getProperty(v5, v7, 24, 1);
  }

  else
  {
    Property = 0;
  }

  v9 = Property;
  v10 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v10, "MessageType", 0x3ECuLL);
  sub_10000BA0C(NEHelperServer, v9, 107, v10);
}

uint64_t sub_100007008(uint64_t a1)
{
  v2 = [LSApplicationProxy applicationProxyForIdentifier:*(a1 + 8)];
  v3 = [v2 appState];
  v4 = [v3 isValid];

  if (v4)
  {
    v5 = [v2 applicationType];
    v6 = [v5 isEqualToString:LSSystemApplicationType];

    if ((v6 & 1) == 0)
    {
      v7 = [v2 applicationType];
      [v7 isEqualToString:LSUserApplicationType];

LABEL_7:
      v8 = 0;
      goto LABEL_8;
    }
  }

  else if (![*(a1 + 8) length] || (objc_msgSend(*(a1 + 8), "hasPrefix:", @"com.apple.") & 1) == 0)
  {
    goto LABEL_7;
  }

  v8 = 1;
LABEL_8:

  return v8;
}

void sub_1000070EC(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v6 = ne_log_obj();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    if (a3 <= 4)
    {
      if (a3 > 1)
      {
        if (a3 == 2)
        {
          v7 = @"System has cancelled the popup or it timed out.";
        }

        else if (a3 == 3)
        {
          v7 = @"Request failed, already asking the user for consent.";
        }

        else
        {
          v7 = @"Request failed, invalid bundle ID.";
        }

        goto LABEL_26;
      }

      if (!a3)
      {
        v7 = @"User has given consent, network added and joined successfully.";
        goto LABEL_26;
      }

      if (a3 == 1)
      {
        v7 = @"User did NOT given consent.";
        goto LABEL_26;
      }
    }

    else
    {
      if (a3 <= 7)
      {
        if (a3 == 5)
        {
          v7 = @"Request failed, existing network that cannot be overwritten.";
        }

        else if (a3 == 6)
        {
          v7 = @"Request succeed, already associated to that network.";
        }

        else
        {
          v7 = @"Added to known networks, but association failed.";
        }

        goto LABEL_26;
      }

      switch(a3)
      {
        case 8:
          v7 = @"Session based add failed, application is not in foreground.";
          goto LABEL_26;
        case 9:
          v7 = @"Request failed, network not found.";
          goto LABEL_26;
        case 0x7FFFFFFF:
          v7 = @"Request failed, unknown error.";
LABEL_26:
          *buf = 67109378;
          *&buf[4] = a3;
          LOWORD(v33) = 2112;
          *(&v33 + 2) = v7;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[NEHelperHotspotConfigurationManager] add network callback callled, result: [%d][%@]", buf, 0x12u);
          goto LABEL_27;
      }
    }

    v7 = @"unknown";
    goto LABEL_26;
  }

LABEL_27:

  if ([qword_100046AD0 count])
  {
    v31 = a4;
    v8 = a4;
    objc_opt_self();
    if (v8)
    {
      v9 = [qword_100046AD0 objectForKeyedSubscript:v8];
      [qword_100046AD0 removeObjectForKey:v8];
    }

    else
    {
      v9 = 0;
    }

    myCFRelease();
    if (!v9)
    {
      v11 = ne_log_obj();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[NEHelperHotspotConfigurationManager] failed to find the task object", buf, 2u);
      }

      goto LABEL_44;
    }

    v11 = objc_getProperty(v9, v10, 24, 1);
    v12 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v12, "MessageType", 0x3ECuLL);
    if (a3 != 7)
    {
      if (a3)
      {
        sub_10000BA0C(NEHelperServer, v11, a3, v12);
        goto LABEL_43;
      }

      if (*(v9 + 9))
      {
        v13 = sub_100006E34();
        Property = objc_getProperty(v9, v14, 32, 1);
        v26[0] = _NSConcreteStackBlock;
        v26[1] = 3221225472;
        v26[2] = sub_1000075F4;
        v26[3] = &unk_10003CD88;
        v30 = 0;
        v27 = v11;
        v28 = v12;
        v29 = v9;
        v16 = v13;
        v17 = Property;
        v18 = v26;
        objc_opt_self();
        v19 = +[NEConfigurationManager sharedManagerForAllUsers];
        *buf = _NSConcreteStackBlock;
        *&v33 = 3221225472;
        *(&v33 + 1) = sub_1000079A4;
        v34 = &unk_10003CD18;
        v35 = v17;
        v36 = v16;
        v37 = v19;
        v38 = v18;
        v20 = v19;
        v21 = v16;
        v22 = v17;
        v23 = v18;
        [v20 loadConfigurationsWithCompletionQueue:&_dispatch_main_q handler:buf];

LABEL_43:
LABEL_44:

        goto LABEL_45;
      }
    }

    sub_10000BA0C(NEHelperServer, v11, 0, v12);
    if ((*(v9 + 8) & 1) == 0)
    {
      v25 = objc_getProperty(v9, v24, 32, 1);
      sub_100007728(NEHelperHotspotConfigurationTask, v25);
    }

    goto LABEL_43;
  }

  v9 = ne_log_obj();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[NEHelperHotspotConfigurationManager] there are no pending tasks", buf, 2u);
  }

LABEL_45:
}

void sub_1000075F4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v3;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to update configuration to allow SSID, error %@", &v10, 0xCu);
    }
  }

  v5 = *(a1 + 56);
  if (v5 == 7 || v5 == 0)
  {
    sub_10000BA0C(NEHelperServer, *(a1 + 32), 0, *(a1 + 40));
    v8 = *(a1 + 48);
    if (v8)
    {
      if (v8[8])
      {
        goto LABEL_14;
      }

      Property = objc_getProperty(v8, v7, 32, 1);
    }

    else
    {
      Property = 0;
    }

    sub_100007728(NEHelperHotspotConfigurationTask, Property);
    goto LABEL_14;
  }

  sub_10000BA0C(NEHelperServer, *(a1 + 32), v5, *(a1 + 40));
LABEL_14:
}

void sub_100007728(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = SCPreferencesCreate(kCFAllocatorDefault, @"nehelper", @"/Library/Preferences/com.apple.networkextension.hotspot-configuration.plist");
  if (!v3)
  {
    v5 = ne_log_obj();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 138412290;
    v16 = objc_opt_class();
    v6 = v16;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%@ failed to create hotspot configuration preference file.", buf, 0xCu);
LABEL_16:

    goto LABEL_17;
  }

  v4 = v3;
  v5 = SCPreferencesGetValue(v3, @"bundle-ids");
  if (!isa_nsarray())
  {
    v7 = objc_alloc_init(NSMutableArray);
    goto LABEL_9;
  }

  if (![v5 containsObject:v2])
  {
    v7 = [v5 mutableCopy];
LABEL_9:
    v6 = v7;
    [v7 addObject:v2];
    if (SCPreferencesSetValue(v4, @"bundle-ids", v6))
    {
      if (SCPreferencesCommitChanges(v4))
      {
LABEL_15:
        myCFRelease();
        goto LABEL_16;
      }

      v8 = ne_log_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = objc_opt_class();
        v10 = v9;
        v11 = SCError();
        *buf = 138412546;
        v16 = v9;
        v17 = 2080;
        v18 = SCErrorString(v11);
        v12 = "%@ SCPreferencesCommitChanges failed: %s";
LABEL_19:
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, v12, buf, 0x16u);
      }
    }

    else
    {
      v8 = ne_log_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v13 = objc_opt_class();
        v10 = v13;
        v14 = SCError();
        *buf = 138412546;
        v16 = v13;
        v17 = 2080;
        v18 = SCErrorString(v14);
        v12 = "%@ SCPreferencesSetValue failed: %s";
        goto LABEL_19;
      }
    }

    goto LABEL_15;
  }

  myCFRelease();
LABEL_17:
}

void sub_1000079A4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v7 = +[NEConfigurationManager networkPrivacyConfigurationName];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v29 = v5;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v38;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v38 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v37 + 1) + 8 * i);
          v15 = [v14 name];
          v16 = [v15 isEqualToString:v7];

          if (v16)
          {
            v17 = v14;

            v11 = v17;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v10);
    }

    else
    {
      v11 = 0;
    }

    v18 = [v11 pathController];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v19 = [v18 pathRules];
    v20 = [v19 countByEnumeratingWithState:&v33 objects:v41 count:16];
    if (v20)
    {
      v21 = v20;
      v28 = v18;
      v30 = 0;
      v22 = *v34;
      do
      {
        for (j = 0; j != v21; j = j + 1)
        {
          if (*v34 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v33 + 1) + 8 * j);
          v25 = [v24 matchSigningIdentifier];
          if ([v25 isEqualToString:*(a1 + 32)])
          {
            v26 = [v24 multicastPreferenceSet];

            if ((v26 & 1) == 0)
            {
              [v24 setDenyMulticast:0];
              [v24 setTemporaryAllowMulticastNetworkName:*(a1 + 40)];
              v30 = 1;
            }
          }

          else
          {
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v33 objects:v41 count:16];
      }

      while (v21);

      v18 = v28;
      if (v30)
      {
        v31[0] = _NSConcreteStackBlock;
        v31[1] = 3221225472;
        v31[2] = sub_100007CD8;
        v31[3] = &unk_10003D180;
        v27 = *(a1 + 48);
        v32 = *(a1 + 56);
        [v27 saveConfiguration:v11 withCompletionQueue:&_dispatch_main_q handler:v31];

LABEL_29:
        v6 = 0;

        v5 = v29;
        goto LABEL_30;
      }
    }

    else
    {
    }

    (*(*(a1 + 56) + 16))();
    goto LABEL_29;
  }

  (*(*(a1 + 56) + 16))();
LABEL_30:
}

void sub_100007CD8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ne_log_obj();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to save configuration with allowed SSID: %@", &v6, 0xCu);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v6) = 0;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Saved configuration with allowed SSID", &v6, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1000080C0(id a1)
{
  objc_storeStrong(&qword_100046AC8, &_dispatch_main_q);
  qword_100046AD0 = objc_alloc_init(NSMutableDictionary);

  _objc_release_x1();
}

void sub_100008110(uint64_t a1)
{
  objc_opt_self();
  v2 = SCPreferencesCreate(kCFAllocatorDefault, @"nehelper", @"/Library/Preferences/com.apple.networkextension.hotspot-configuration.plist");
  if (v2)
  {
    v3 = SCPreferencesGetValue(v2, @"bundle-ids");
    if (isa_nsarray())
    {
      v4 = [v3 copy];
    }

    else
    {
      v4 = 0;
    }

    myCFRelease();
    v6 = v4;

    if (!v6 || ![v6 containsObject:*(a1 + 32)])
    {
      goto LABEL_31;
    }

    v7 = *(a1 + 32);
    objc_opt_self();
    v8 = SCPreferencesCreate(kCFAllocatorDefault, @"nehelper", @"/Library/Preferences/com.apple.networkextension.hotspot-configuration.plist");
    if (!v8)
    {
      v10 = ne_log_obj();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }

      *buf = 138412290;
      v32 = objc_opt_class();
      v11 = v32;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%@ failed to create hotspot configuration preference file.", buf, 0xCu);
LABEL_23:

LABEL_24:
      if (WiFiManagerClientCreate())
      {
        v18 = *(a1 + 32);
        WiFiManagerClientRemoveNetworksWithBundleIdentifier();
        v19 = ne_log_obj();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = *(a1 + 40);
          v21 = objc_opt_class();
          v22 = *(a1 + 32);
          *buf = 138412546;
          v32 = v21;
          v33 = 2112;
          v34 = v22;
          v23 = v21;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%@ removed all networks matching the bundle identifier [%@]", buf, 0x16u);
        }

        myCFRelease();
      }

      else
      {
        v24 = ne_log_obj();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v25 = *(a1 + 40);
          v26 = objc_opt_class();
          v27 = *(a1 + 32);
          *buf = 138412546;
          v32 = v26;
          v33 = 2112;
          v34 = v27;
          v28 = v26;
          _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%@ failed to get WiFiManager client, unable to remove networks matching bundle identifier [%@]", buf, 0x16u);
        }
      }

      goto LABEL_31;
    }

    v9 = v8;
    v10 = SCPreferencesGetValue(v8, @"bundle-ids");
    if (!isa_nsarray() || ![v10 containsObject:v7])
    {
      myCFRelease();
      goto LABEL_24;
    }

    v11 = [v10 mutableCopy];
    [v11 removeObject:v7];
    if (SCPreferencesSetValue(v9, @"bundle-ids", v11))
    {
      if (SCPreferencesCommitChanges(v9))
      {
LABEL_22:
        myCFRelease();
        goto LABEL_23;
      }

      v12 = ne_log_obj();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = objc_opt_class();
        v14 = v13;
        v15 = SCError();
        *buf = 138412546;
        v32 = v13;
        v33 = 2080;
        v34 = SCErrorString(v15);
        v16 = "%@ SCPreferencesCommitChanges failed: %s";
LABEL_33:
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, v16, buf, 0x16u);
      }
    }

    else
    {
      v12 = ne_log_obj();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v29 = objc_opt_class();
        v14 = v29;
        v30 = SCError();
        *buf = 138412546;
        v32 = v29;
        v33 = 2080;
        v34 = SCErrorString(v30);
        v16 = "%@ SCPreferencesSetValue failed: %s";
        goto LABEL_33;
      }
    }

    goto LABEL_22;
  }

  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v32 = objc_opt_class();
    v17 = v32;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%@ failed to create hotspot configuration preference file.", buf, 0xCu);
  }

  v6 = 0;
LABEL_31:
}

uint64_t sub_10000894C(const char *a1, int32_t a2, char *a3, int32_t a4)
{
  pErrorCode = U_ZERO_ERROR;
  v13 = xmmword_10002AE10;
  v8 = uidna_openUTS46(0x22u, &pErrorCode);
  v9 = uidna_nameToASCII_UTF8(v8, a1, a2, a3, a4, &v13, &pErrorCode);
  uidna_close(v8);
  if (pErrorCode)
  {
    v10 = ne_log_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = a1;
      v17 = 1024;
      errors = pErrorCode;
      v11 = "Failed to punycode label - uidna_nameToASCII_UTF8(%s) failed errorCode %d";
LABEL_9:
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, v11, buf, 0x12u);
      return 0;
    }

    return 0;
  }

  if (v13.errors)
  {
    v10 = ne_log_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = a1;
      v17 = 1024;
      errors = v13.errors;
      v11 = "Failed to punycode label - uidna_nameToASCII_UTF8(%s) failed info.errors 0x%08X";
      goto LABEL_9;
    }

    return 0;
  }

  return v9;
}

void sub_100009730(uint64_t a1, void *a2)
{
  if (!a1 || !a2)
  {
    return;
  }

  v3 = a2;
  if (*(a1 + 16))
  {
    v4 = *(a1 + 24);
    Property = WiFiNetworkGetProperty();
    SSIDData = WiFiNetworkGetSSIDData();
    SSID = WiFiNetworkGetSSID();
    if (v4)
    {
      if (WiFiNetworkIsEAP())
      {
        v8 = 3;
      }

      else if (WiFiNetworkIsWPAWPA2PSK() || WiFiNetworkIsSAE())
      {
        v8 = 2;
      }

      else if (WiFiNetworkIsWEP())
      {
        v8 = 1;
      }

      else
      {
        v8 = 4 * (WiFiNetworkIsOpen() == 0);
      }

      *valuePtr = v8;
      v9 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, valuePtr);
      if (!Property)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v9 = 0;
      if (!Property)
      {
        goto LABEL_19;
      }
    }

    if (SSIDData && SSID)
    {
      *valuePtr = kCNNetworkInfoKeySSIDData;
      *&valuePtr[8] = kCNNetworkInfoKeySSID;
      *&valuePtr[16] = kCNNetworkInfoKeyBSSID;
      v20 = 0;
      values[0] = SSIDData;
      values[1] = SSID;
      values[2] = Property;
      v18 = 0;
      if (v9)
      {
        v20 = @"wifi-security-type";
        v18 = v9;
        v10 = 4;
      }

      else
      {
        v10 = 3;
      }

      v11 = CFDictionaryCreate(kCFAllocatorDefault, valuePtr, values, v10, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      myCFRelease();
      values[0] = v11;
      if (v11)
      {
        v11 = _CFXPCCreateXPCObjectFromCFObject();
        myCFRelease();
      }

      goto LABEL_23;
    }

LABEL_19:
    myCFRelease();
    v11 = 0;
    values[0] = 0;
LABEL_23:
    v12 = ne_log_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = objc_opt_class();
      v14 = *(a1 + 32);
      *valuePtr = 138412546;
      *&valuePtr[4] = v13;
      *&valuePtr[12] = 2112;
      *&valuePtr[14] = v14;
      v15 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%@ sending actual Wi-Fi info to [%@]", valuePtr, 0x16u);
    }

    sub_10000BA0C(NEHelperServer, v3, 0, v11);
    goto LABEL_26;
  }

  sub_10000A098(a1, v3, 0);
LABEL_26:

  myCFRelease();
  v16 = *(a1 + 40);
  *(a1 + 40) = 0;
}

void sub_100009A3C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    string = xpc_dictionary_get_string(v3, "interface-name");
    if (string)
    {
      v6 = [NSString stringWithUTF8String:string];
      v7 = *(a1 + 40);
      *(a1 + 40) = v6;
    }

    *(a1 + 24) = xpc_dictionary_get_BOOL(v4, "security-type-requested");
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000A424;
    block[3] = &unk_10003D7C0;
    block[4] = a1;
    dispatch_sync(&_dispatch_main_q, block);
    if (!*(a1 + 16))
    {
      v8 = ne_log_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = objc_opt_class();
        *buf = 138412290;
        v13 = v9;
        v10 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%@ device is not associated to Wi-Fi network", buf, 0xCu);
      }
    }
  }
}

void sub_100009BB4(uint64_t a1, int a2)
{
  v4 = ne_log_obj();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (a2)
  {
    if (v5)
    {
      v6 = *(a1 + 32);
      v8 = objc_opt_class();
      Property = *(a1 + 32);
      if (Property)
      {
        Property = objc_getProperty(Property, v7, 32, 1);
      }

      *buf = 138412546;
      *&buf[4] = v8;
      *&buf[12] = 2112;
      *&buf[14] = Property;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%@ [%@] has an active VPN or DNS configuration", buf, 0x16u);
    }

    sub_100009730(*(a1 + 32), *(a1 + 40));
  }

  else
  {
    if (v5)
    {
      v10 = *(a1 + 32);
      v12 = objc_opt_class();
      v13 = *(a1 + 32);
      if (v13)
      {
        v13 = objc_getProperty(v13, v11, 32, 1);
      }

      *buf = 138412546;
      *&buf[4] = v12;
      *&buf[12] = 2112;
      *&buf[14] = v13;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%@ [%@] has no active VPN or DNS configuration", buf, 0x16u);
    }

    v14 = +[LSApplicationWorkspace defaultWorkspace];
    v15 = [v14 isVersion:*(a1 + 48) greaterThanOrEqualToVersion:@"13.0"];

    v16 = ne_log_obj();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_INFO);
    if (v15)
    {
      if (v17)
      {
        v18 = *(a1 + 32);
        v20 = objc_opt_class();
        v21 = *(a1 + 32);
        if (v21)
        {
          v21 = objc_getProperty(v21, v19, 32, 1);
        }

        *buf = 138412546;
        *&buf[4] = v20;
        *&buf[12] = 2112;
        *&buf[14] = v21;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%@ [%@] is linked on or above iOS 13.0, retuning nil", buf, 0x16u);
      }

      sub_10000A098(*(a1 + 32), *(a1 + 40), 1);
    }

    else
    {
      if (v17)
      {
        v22 = *(a1 + 32);
        v24 = objc_opt_class();
        v25 = *(a1 + 32);
        if (v25)
        {
          v25 = objc_getProperty(v25, v23, 32, 1);
        }

        *buf = 138412546;
        *&buf[4] = v24;
        *&buf[12] = 2112;
        *&buf[14] = v25;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%@ returning pseudo Wi-Fi information to [%@]", buf, 0x16u);
      }

      v26 = *(a1 + 32);
      v27 = *(a1 + 40);
      if (v26)
      {
        if (!qword_100046AF0)
        {
          if ((byte_100046AE8 & 1) == 0)
          {
            byte_100046AE8 = 1;
            v28 = &_CPGetDeviceRegionCode;
            if (&_CPGetDeviceRegionCode)
            {
              v29 = CPGetDeviceRegionCode();
              v30 = v29;
              if (v29)
              {
                LOBYTE(v28) = CFEqual(v29, @"CH") != 0;
              }

              else
              {
                LOBYTE(v28) = 0;
              }
            }

            else
            {
              v30 = 0;
            }

            byte_100046AE9 = v28;
            v31 = ne_log_obj();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              *&buf[4] = v30;
              _os_log_debug_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "region code is %@", buf, 0xCu);
            }
          }

          if (byte_100046AE9)
          {
            v32 = @"WLAN";
          }

          else
          {
            v32 = @"Wi-Fi";
          }

          ExternalRepresentation = CFStringCreateExternalRepresentation(kCFAllocatorDefault, v32, 0x8000100u, 0);
          if (ExternalRepresentation)
          {
            v34 = ExternalRepresentation;
            *buf = kCNNetworkInfoKeySSIDData;
            *&buf[8] = kCNNetworkInfoKeySSID;
            *&buf[16] = kCNNetworkInfoKeyBSSID;
            values[0] = ExternalRepresentation;
            values[1] = v32;
            values[2] = @"00:00:00:00:00:00";
            qword_100046AF0 = CFDictionaryCreate(kCFAllocatorDefault, buf, values, 3, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
            CFRelease(v34);
          }
        }

        v35 = _CFXPCCreateXPCObjectFromCFObject();
        v36 = ne_log_obj();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          v37 = objc_opt_class();
          v38 = *(v26 + 32);
          *buf = 138412546;
          *&buf[4] = v37;
          *&buf[12] = 2112;
          *&buf[14] = v38;
          v39 = v37;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "%@ sending pseudo Wi-Fi info to [%@]", buf, 0x16u);
        }

        sub_10000BA0C(NEHelperServer, v27, 0, v35);
        myCFRelease();
        v40 = *(v26 + 40);
        *(v26 + 40) = 0;
      }
    }
  }
}

void sub_10000A098(uint64_t a1, void *a2, int64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    if (v5)
    {
      v7 = ne_log_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = objc_opt_class();
        v9 = *(a1 + 32);
        v12 = 138412802;
        v13 = v8;
        v14 = 2048;
        v15 = a3;
        v16 = 2112;
        v17 = v9;
        v10 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%@ sending result code %lld to [%@]", &v12, 0x20u);
      }

      sub_10000BA0C(NEHelperServer, v6, a3, 0);
    }

    myCFRelease();
    v11 = *(a1 + 40);
    *(a1 + 40) = 0;
  }
}

void sub_10000A1C0(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v10 = a2;
  v27 = a3;
  v26 = a5;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (!v12)
  {
    goto LABEL_29;
  }

  v13 = v12;
  v14 = *v31;
  v28 = v11;
  do
  {
    v15 = 0;
    do
    {
      if (*v31 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v16 = *(*(&v30 + 1) + 8 * v15);
      v17 = [v16 VPN];
      if (v17 && ([v16 VPN], v5 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(v5, "isEnabled") & 1) != 0))
      {
        v18 = 0;
      }

      else
      {
        v19 = [v16 dnsSettings];
        if (!v19)
        {
          if (v17)
          {
          }

          v7 = 0;
          goto LABEL_25;
        }

        v7 = v19;
        v6 = [v16 dnsSettings];
        if (![v6 isEnabled])
        {
          v24 = 0;
          goto LABEL_23;
        }

        v18 = 1;
      }

      v21 = [v16 applicationIdentifier];
      v22 = *(a1 + 32);
      if (v22)
      {
        Property = objc_getProperty(v22, v20, 32, 1);
      }

      else
      {
        Property = 0;
      }

      v24 = [v21 isEqual:Property];

      if (!v18)
      {
        v11 = v28;
        if (!v17)
        {
          goto LABEL_17;
        }

        goto LABEL_24;
      }

      v11 = v28;
LABEL_23:

      if (!v17)
      {
LABEL_17:

        if (v24)
        {
          goto LABEL_30;
        }

        goto LABEL_25;
      }

LABEL_24:

      if (v24)
      {
LABEL_30:
        (*(*(a1 + 40) + 16))();

        goto LABEL_31;
      }

LABEL_25:
      v15 = v15 + 1;
    }

    while (v13 != v15);
    v25 = [v11 countByEnumeratingWithState:&v30 objects:v34 count:16];
    v13 = v25;
  }

  while (v25);
LABEL_29:

  (*(*(a1 + 40) + 16))();
LABEL_31:
}

void sub_10000A424(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 40, 1);
  }

  v4 = Property;
  if (!sub_10000A67C(0))
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v11 = "[NEHelperWiFiInfoManager] Failed to get WiFi Manager Client instance";
      v12 = buf;
      goto LABEL_26;
    }

    goto LABEL_9;
  }

  v5 = WiFiManagerClientCopyCurrentSessionBasedNetwork();
  if (!v5)
  {
    if (v4)
    {
      if (WiFiManagerClientGetDevice())
      {
        v6 = WiFiDeviceClientCopyCurrentNetwork();
        goto LABEL_10;
      }

      v8 = ne_log_obj();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }

      *buf = 138412290;
      *&buf[4] = v4;
      v11 = "[NEHelperWiFiInfoManager] WiFiManagerClientGetDevice for %@ returned NULL";
      v12 = buf;
      v13 = v8;
      v14 = 12;
      goto LABEL_27;
    }

    if (sub_10000A67C(0))
    {
      v9 = WiFiManagerClientCopyDevices();
      *buf = v9;
      if (v9)
      {
        v10 = v9;
        if (CFArrayGetCount(v9))
        {
          CFArrayGetValueAtIndex(v10, 0);
          v6 = WiFiDeviceClientCopyCurrentNetwork();
          CFRelease(v10);
          goto LABEL_10;
        }
      }

      myCFRelease();
      v8 = ne_log_obj();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }

      v15 = 0;
      v11 = "[NEHelperWiFiInfoManager] WiFiManagerClientCopyDevices() returned no devices";
      goto LABEL_24;
    }

    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v15 = 0;
      v11 = "[NEHelperWiFiInfoManager] Failed to get WiFi Manager Client instance";
LABEL_24:
      v12 = &v15;
LABEL_26:
      v13 = v8;
      v14 = 2;
LABEL_27:
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, v11, v12, v14);
    }

LABEL_9:

    v6 = 0;
    goto LABEL_10;
  }

  v6 = v5;
  v7 = ne_log_obj();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[NEHelperWiFiInfoManager] currently associated to a session based Wi-Fi network", buf, 2u);
  }

LABEL_10:
  *(*(a1 + 32) + 16) = v6;
}

uint64_t sub_10000A67C(int a1)
{
  v1 = qword_100046AF8;
  if (a1 || !qword_100046AF8)
  {
    if (qword_100046AF8)
    {
      WiFiManagerClientRegisterServerRestartCallback();
      CFRunLoopGetMain();
      WiFiManagerClientUnscheduleFromRunLoop();
    }

    myCFRelease();
    v1 = WiFiManagerClientCreate();
    qword_100046AF8 = v1;
    if (v1)
    {
      WiFiManagerClientRegisterServerRestartCallback();
      CFRunLoopGetMain();
      WiFiManagerClientScheduleWithRunLoop();
      return qword_100046AF8;
    }
  }

  return v1;
}

uint64_t sub_10000A748()
{
  v0 = ne_log_obj();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "[NEHelperWiFiInfoManager] WiFiManager restarted", v2, 2u);
  }

  return sub_10000A67C(1);
}

void sub_10000AB28(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!v3 || xpc_get_type(v3) != &_xpc_type_dictionary)
  {
    v5 = *(*(*(a1 + 40) + 8) + 40);
    if (v5)
    {
      xpc_connection_cancel(v5);
      v6 = *(*(a1 + 40) + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = 0;
    }

    else
    {
      v8 = ne_log_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buffer[0]) = 0;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "XPC connection is nil when handling first message", buffer, 2u);
      }
    }

    goto LABEL_38;
  }

  uint64 = xpc_dictionary_get_uint64(v4, "delegate-class-id");
  if (uint64)
  {
    v10 = sub_10000B5A8(NEHelperServer, uint64);
    if (v10)
    {
      v11 = v10;
      if ([(objc_class *)v10 conformsToProtocol:&OBJC_PROTOCOL___NEHelperDelegate])
      {
        v12 = [[v11 alloc] initWithFirstMessage:v4];
        if (v12)
        {
          v13 = v12;
          v61 = 0;
          v62 = &v61;
          v63 = 0x3032000000;
          v64 = sub_1000016B0;
          v65 = sub_1000016D4;
          v14 = [NEHelperClient alloc];
          v15 = *(*(*(a1 + 40) + 8) + 40);
          v16 = v15;
          v57 = v13;
          if (v14)
          {
            v67.receiver = v14;
            v67.super_class = NEHelperClient;
            v17 = objc_msgSendSuper2(&v67, "init");
            v14 = v17;
            if (v17)
            {
              objc_storeStrong(&v17->_connection, v15);
              objc_storeStrong((v14 + 32), v13);
              *(v14 + 8) = uint64;
              pid = xpc_connection_get_pid(v16);
              *(v14 + 16) = (32 * pid + uint64) ^ v14;
              v19 = nelog_is_debug_logging_enabled() ^ 1;
              if (uint64 == 2)
              {
                LOBYTE(v19) = 0;
              }

              if ((v19 & 1) == 0)
              {
                v87 = 0u;
                v88 = 0u;
                v85 = 0u;
                v86 = 0u;
                v83 = 0u;
                v84 = 0u;
                v81 = 0u;
                v82 = 0u;
                v79 = 0u;
                v80 = 0u;
                v77 = 0u;
                v78 = 0u;
                v75 = 0u;
                v76 = 0u;
                memset(buffer, 0, sizeof(buffer));
                proc_name(pid, buffer, 0x100u);
                v20 = ne_log_obj();
                v21 = v20;
                if (uint64 == 2)
                {
                  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315394;
                    v69 = buffer;
                    v70 = 1024;
                    LODWORD(v71) = pid;
                    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Processing new Settings client connection from client %s pid %d", buf, 0x12u);
                  }
                }

                else if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
                {
                  v54 = sub_10000B5A8(NEHelperServer, uint64);
                  v55 = NSStringFromClass(v54);
                  *buf = 138412802;
                  v69 = v55;
                  v70 = 2080;
                  v71 = buffer;
                  v72 = 1024;
                  v73 = pid;
                  v56 = v55;
                  _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "Processing new client connection with class %@ from client %s pid %d", buf, 0x1Cu);
                }
              }

              *&buffer[0] = _NSConcreteStackBlock;
              *(&buffer[0] + 1) = 3221225472;
              *&buffer[1] = sub_10000C1F8;
              *(&buffer[1] + 1) = &unk_10003D020;
              *&v75 = __PAIR64__(uint64, pid);
              if (qword_100046B20 != -1)
              {
                dispatch_once(&qword_100046B20, buffer);
              }
            }
          }

          v66 = v14;
          v39 = v62[5];
          if (v39)
          {
            sub_10000B614(*(a1 + 32), v39);
            Property = v62[5];
            if (Property)
            {
              Property = objc_getProperty(Property, v40, 32, 1);
            }

            v42 = Property;
            v43 = *(*(*(a1 + 40) + 8) + 40);
            handler[0] = _NSConcreteStackBlock;
            handler[1] = 3221225472;
            handler[2] = sub_10000B67C;
            handler[3] = &unk_10003CEC8;
            handler[4] = *(a1 + 32);
            handler[5] = &v61;
            xpc_connection_set_event_handler(v43, handler);
            v44 = ne_log_obj();
            if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
            {
              v47 = sub_10000B5A8(NEHelperServer, uint64);
              v48 = NSStringFromClass(v47);
              v49 = xpc_connection_get_pid(*(*(*(a1 + 40) + 8) + 40));
              LODWORD(buffer[0]) = 138412546;
              *(buffer + 4) = v48;
              WORD6(buffer[0]) = 1024;
              *(buffer + 14) = v49;
              _os_log_debug_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEBUG, "Start processing first message with class %@ from client pid %d", buffer, 0x12u);
            }

            if (v42)
            {
              if (objc_opt_respondsToSelector())
              {
                v45 = [v42 handlerQueue];
                v58 = v42;
                v59 = v4;
                xpc_dictionary_handoff_reply();
              }

              else
              {
                [v42 handleMessage:v4];
              }
            }

            else
            {
              sub_10000BA0C(NEHelperServer, v4, 32, 0);
            }

            v46 = ne_log_obj();
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
            {
              v50 = sub_10000B5A8(NEHelperServer, uint64);
              v51 = NSStringFromClass(v50);
              v52 = xpc_connection_get_pid(*(*(*(a1 + 40) + 8) + 40));
              LODWORD(buffer[0]) = 138412546;
              *(buffer + 4) = v51;
              WORD6(buffer[0]) = 1024;
              *(buffer + 14) = v52;
              _os_log_debug_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEBUG, "End processing first message with class %@ from client pid %d", buffer, 0x12u);
            }
          }

          else
          {
            sub_10000BA0C(NEHelperServer, v4, 1, 0);
            xpc_connection_cancel(*(*(*(a1 + 40) + 8) + 40));
          }

          _Block_object_dispose(&v61, 8);

          goto LABEL_38;
        }

        v30 = ne_log_obj();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          v53 = NSStringFromClass(v11);
          LODWORD(buffer[0]) = 138412290;
          *(buffer + 4) = v53;
          _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%@ initWithConnection failed", buffer, 0xCu);
        }
      }

      else
      {
        v30 = ne_log_obj();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          v34 = NSStringFromClass(v11);
          LODWORD(buffer[0]) = 138412290;
          *(buffer + 4) = v34;
          _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Received invalid class name %@", buffer, 0xCu);
        }
      }

      goto LABEL_35;
    }

    v30 = ne_log_obj();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buffer[0]) = 67109120;
      DWORD1(buffer[0]) = uint64;
      v31 = "Received unknown class ID %d";
      v32 = v30;
      v33 = 8;
LABEL_32:
      _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, v31, buffer, v33);
      goto LABEL_35;
    }

    goto LABEL_35;
  }

  if (!xpc_dictionary_get_BOOL(v4, "init-command"))
  {
    v30 = ne_log_obj();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buffer[0]) = 0;
      v31 = "Received invalid class ID";
      v32 = v30;
      v33 = 2;
      goto LABEL_32;
    }

LABEL_35:

    v35 = ne_log_obj();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = sub_10000B5A8(NEHelperServer, uint64);
      v37 = NSStringFromClass(v36);
      v38 = xpc_connection_get_pid(*(*(*(a1 + 40) + 8) + 40));
      LODWORD(buffer[0]) = 138412546;
      *(buffer + 4) = v37;
      WORD6(buffer[0]) = 1024;
      *(buffer + 14) = v38;
      _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "Failed to create a NEHelperClient with class %@ from client pid %d", buffer, 0x12u);
    }

    sub_10000BA0C(NEHelperServer, v4, 22, 0);
    xpc_connection_cancel(*(*(*(a1 + 40) + 8) + 40));
    goto LABEL_38;
  }

  v22 = *(a1 + 32);
  if (v22)
  {
    v23 = ne_log_obj();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buffer[0]) = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Handling init command", buffer, 2u);
    }

    sub_10000BAD0();
    sub_10000BCB4(1);
    objc_opt_self();
    v24 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v25 = dispatch_queue_create("Initialize tracking domain info", v24);

    dispatch_async(v25, &stru_10003CCD0);
    v27 = objc_getProperty(v22, v26, 24, 1);
    objc_opt_self();
    v28 = +[NEConfigurationManager sharedManagerForAllUsers];
    *&buffer[0] = _NSConcreteStackBlock;
    *(&buffer[0] + 1) = 3221225472;
    *&buffer[1] = sub_10001F48C;
    *(&buffer[1] + 1) = &unk_10003D850;
    *&v75 = v27;
    v29 = v27;
    [v28 loadConfigurationsWithCompletionQueue:v29 handler:buffer];

    sub_10001F74C(NEHelperConfigurationManager, 0);
  }

  sub_10000BA0C(NEHelperServer, v4, 0, 0);
LABEL_38:
}

void sub_10000B574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10000B5A8(uint64_t a1, int a2)
{
  objc_opt_self();
  v3 = a2 - 1;
  if (a2 - 1) <= 0xD && ((0x3FBBu >> v3))
  {
    v4 = *off_10003D060[v3];
    v5 = objc_opt_class();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_10000B614(os_unfair_lock_s *a1, void *a2)
{
  if (a1)
  {
    v3 = a2;
    os_unfair_lock_lock(a1 + 2);
    [objc_getProperty(a1 v4];

    os_unfair_lock_unlock(a1 + 2);
  }
}

void sub_10000B67C(uint64_t a1, void *a2)
{
  v4 = a2;
  Property = *(*(*(a1 + 40) + 8) + 40);
  if (!Property)
  {
    goto LABEL_18;
  }

  if (!v4)
  {
    goto LABEL_5;
  }

  if (xpc_get_type(v4) != &_xpc_type_dictionary)
  {
    Property = *(*(*(a1 + 40) + 8) + 40);
    if (!Property)
    {
LABEL_6:
      xpc_connection_cancel(Property);
      v6 = *(a1 + 32);
      if (v6)
      {
        v7 = *(*(*(a1 + 40) + 8) + 40);
        os_unfair_lock_lock(v6 + 2);
        [objc_getProperty(v6 v8];

        os_unfair_lock_unlock(v6 + 2);
      }

      v9 = *(*(a1 + 40) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = 0;

      goto LABEL_18;
    }

LABEL_5:
    Property = objc_getProperty(Property, v3, 24, 1);
    goto LABEL_6;
  }

  v11 = ne_log_obj();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v18 = *(*(*(a1 + 40) + 8) + 40);
    if (v18)
    {
      v19 = *(v18 + 8);
    }

    else
    {
      v19 = 0;
    }

    v20 = sub_10000B5A8(NEHelperServer, v19);
    v22 = NSStringFromClass(v20);
    v23 = *(*(*(a1 + 40) + 8) + 40);
    if (v23)
    {
      v23 = objc_getProperty(v23, v21, 24, 1);
    }

    *buf = 138412546;
    v33 = v22;
    v34 = 1024;
    pid = xpc_connection_get_pid(v23);
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Start processing new message with class %@ from client pid %d", buf, 0x12u);
  }

  v13 = *(*(*(a1 + 40) + 8) + 40);
  if (v13 && (v14 = objc_getProperty(v13, v12, 32, 1)) != 0)
  {
    v15 = v14;
    if (objc_opt_respondsToSelector())
    {
      v16 = [v15 handlerQueue];
      v15 = v15;
      v31 = v4;
      xpc_dictionary_handoff_reply();
    }

    else
    {
      [v15 handleMessage:v4];
    }
  }

  else
  {
    sub_10000BA0C(NEHelperServer, v4, 32, 0);
    v15 = 0;
  }

  v17 = ne_log_obj();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v24 = *(*(*(a1 + 40) + 8) + 40);
    if (v24)
    {
      v25 = *(v24 + 8);
    }

    else
    {
      v25 = 0;
    }

    v26 = sub_10000B5A8(NEHelperServer, v25);
    v28 = NSStringFromClass(v26);
    v29 = *(*(*(a1 + 40) + 8) + 40);
    if (v29)
    {
      v29 = objc_getProperty(v29, v27, 24, 1);
    }

    v30 = xpc_connection_get_pid(v29);
    *buf = 138412546;
    v33 = v28;
    v34 = 1024;
    pid = v30;
    _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "End processing new message with class %@ from client pid %d", buf, 0x12u);
  }

LABEL_18:
}

void sub_10000BA0C(uint64_t a1, void *a2, int64_t a3, void *a4)
{
  original = a2;
  v6 = a4;
  objc_opt_self();
  reply = xpc_dictionary_create_reply(original);
  v8 = reply;
  if (reply)
  {
    xpc_dictionary_set_int64(reply, "result-code", a3);
    if (v6)
    {
      xpc_dictionary_set_value(v8, "result-data", v6);
    }

    v9 = xpc_dictionary_get_remote_connection(original);
    xpc_connection_send_message(v9, v8);
  }
}

void sub_10000BAD0()
{
  valuePtr = 0;
  v0 = SCPreferencesCreate(kCFAllocatorDefault, @"NEHelper control settings", @"/Library/Preferences/com.apple.networkextension.control.plist");
  if (v0)
  {
    v1 = v0;
    Value = SCPreferencesGetValue(v0, @"DisableRestrictions");
    TypeID = CFBooleanGetTypeID();
    v4 = Value && CFGetTypeID(Value) == TypeID && CFBooleanGetValue(Value) != 0;
    v5 = SCPreferencesGetValue(v1, @"DisableNexus");
    v6 = CFBooleanGetTypeID();
    v7 = v5 && CFGetTypeID(v5) == v6 && CFBooleanGetValue(v5) != 0;
    v8 = SCPreferencesGetValue(v1, @"FallbackDefault");
    v9 = CFNumberGetTypeID();
    if (v8)
    {
      LOBYTE(v8) = CFGetTypeID(v8) == v9 && CFNumberGetValue(v8, kCFNumberIntType, &valuePtr) != 0;
    }

    CFRelease(v1);
  }

  else
  {
    LOBYTE(v8) = 0;
    v7 = 0;
    v4 = 0;
  }

  if (qword_100046B30 != -1)
  {
    dispatch_once(&qword_100046B30, &stru_10003D040);
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000C058;
  v10[3] = &unk_10003CF20;
  v12 = v4;
  v13 = v7;
  v14 = v8;
  v11 = valuePtr;
  dispatch_async(qword_100046B28, v10);
}

void sub_10000BCB4(uint64_t a1)
{
  v2 = SCPreferencesCreate(kCFAllocatorDefault, @"NEHelper managed preferences", @"/Library/Managed Preferences/mobile/com.apple.networkextension.control.plist");
  v3 = SCPreferencesCreate(kCFAllocatorDefault, @"NEHelper control settings", @"/Library/Preferences/com.apple.networkextension.control.plist");
  v4 = v3;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    if (!SCPreferencesLock(v3, 1u))
    {
      v16 = ne_log_obj();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        Error = SCCopyLastError();
        *buf = 136315394;
        v22 = "/Library/Preferences/com.apple.networkextension.control.plist";
        v23 = 2112;
        v24 = Error;
        _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "[Managed] Failed to lock SCPreferences for %s: %@", buf, 0x16u);
      }

      goto LABEL_34;
    }

    for (i = 0; i != 3; ++i)
    {
      v7 = off_10003CEE8[i];
      Value = SCPreferencesGetValue(v2, v7);
      if (CFStringCompare(v7, @"CriticalDomains", 0))
      {
        if (Value)
        {
          SCPreferencesSetValue(v4, v7, Value);
        }

        else if ((a1 & 1) == 0)
        {
          SCPreferencesRemoveValue(v4, v7);
        }
      }

      else
      {
        v9 = Value;
        v10 = SCPreferencesGetValue(v4, v7);
        if (isa_nsarray() && [v9 count])
        {
          v11 = a1;
          v12 = sub_10000EAA4(NEHelperSettingsManager, v10, v9);
          v13 = ne_log_obj();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v22 = v7;
            v23 = 2112;
            v24 = v12;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[Managed] setting %@ to %@", buf, 0x16u);
          }

          SCPreferencesSetValue(v4, v7, v12);
          a1 = v11;
        }
      }
    }

    if (!SCPreferencesCommitChanges(v4))
    {
      v14 = ne_log_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v18 = SCError();
        v19 = SCErrorString(v18);
        *buf = 136315138;
        v22 = v19;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "[Managed] Failed to save the control settings: %s", buf, 0xCu);
      }
    }

    if (!SCPreferencesUnlock(v4))
    {
      v15 = ne_log_obj();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v20 = SCCopyLastError();
        *buf = 136315394;
        v22 = "/Library/Preferences/com.apple.networkextension.control.plist";
        v23 = 2112;
        v24 = v20;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "[Managed] Failed to unlock preferences for %s: %@", buf, 0x16u);
      }
    }
  }

  if (!v2)
  {
    if (!v4)
    {
      return;
    }

    goto LABEL_29;
  }

LABEL_34:
  CFRelease(v2);
  if (!v4)
  {
    return;
  }

LABEL_29:
  CFRelease(v4);
}

uint64_t sub_10000C058(uint64_t a1)
{
  sub_10000C0CC("com.apple.networkextension.disable-restrictions", *(a1 + 36));
  result = sub_10000C0CC("com.apple.networkextension.disable-nexus", *(a1 + 37));
  if (*(a1 + 38) == 1)
  {
    v3 = *(a1 + 32);

    return sub_10000C0CC("com.apple.networkextension.fallback-default", v3);
  }

  return result;
}

uint64_t sub_10000C0CC(const char *a1, uint64_t a2)
{
  if (qword_100046B30 != -1)
  {
    dispatch_once(&qword_100046B30, &stru_10003D040);
  }

  dispatch_assert_queue_V2(qword_100046B28);
  out_token = -1;
  result = notify_register_check(a1, &out_token);
  if (!result)
  {
    v5 = 0;
    if (notify_get_state(out_token, &v5) || v5 != a2)
    {
      v5 = a2;
      if (!notify_set_state(out_token, a2))
      {
        notify_post(a1);
      }
    }

    return notify_cancel(out_token);
  }

  return result;
}

void sub_10000C188(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("NEHelperServerNotificationQueue", v3);
  v2 = qword_100046B28;
  qword_100046B28 = v1;
}

void sub_10000C1F8(uint64_t a1)
{
  memset(buffer, 0, sizeof(buffer));
  if (proc_name(*(a1 + 32), buffer, 0x100u) >= 1)
  {
    v2 = ne_log_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      v4 = sub_10000B5A8(NEHelperServer, *(a1 + 36));
      v5 = NSStringFromClass(v4);
      v6 = 136315650;
      v7 = buffer;
      v8 = 1024;
      v9 = v3;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Launched by %s (pid %d) using class %@", &v6, 0x1Cu);
    }
  }
}

void sub_10000C31C(id a1)
{
  NEInitCFTypes();
  v1 = [NEHelperServer alloc];
  if (!v1)
  {
    v2 = 0;
LABEL_5:
    v11 = 0;
    goto LABEL_8;
  }

  v16.receiver = v1;
  v16.super_class = NEHelperServer;
  v2 = objc_msgSendSuper2(&v16, "init");
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("NEHelperServer queue", v3);
    v5 = *(v2 + 3);
    *(v2 + 3) = v4;

    mach_service = xpc_connection_create_mach_service("com.apple.nehelper", 0, 1uLL);
    v7 = *(v2 + 4);
    *(v2 + 4) = mach_service;

    v8 = [[NSMutableSet alloc] initWithCapacity:0];
    v9 = *(v2 + 5);
    *(v2 + 5) = v8;

    *(v2 + 2) = 0;
    v10 = *(v2 + 4);
    if (!v10 || xpc_get_type(v10) != &_xpc_type_connection)
    {
      goto LABEL_5;
    }

    xpc_connection_set_target_queue(*(v2 + 4), *(v2 + 3));
    v12 = *(v2 + 4);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100001530;
    handler[3] = &unk_10003D4C8;
    v15 = v2;
    xpc_connection_set_event_handler(v12, handler);
  }

  v2 = v2;
  v11 = v2;
LABEL_8:

  v13 = qword_100046B10;
  qword_100046B10 = v11;
}

void sub_10000C4DC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = ne_log_obj();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = 138543618;
    v9 = v5;
    v10 = 2114;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Received effective settings change for event: %{public}@, groups: %{public}@", &v8, 0x16u);
  }

  if ([v6 containsObject:MOEffectiveSettingsGroupAllowedClient])
  {
    sub_10000C76C(*(a1 + 32));
  }
}

void sub_10000C5D0(uint64_t a1)
{
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Querying LaunchServices", buf, 2u);
  }

  v4 = [[LSApplicationRecord alloc] initWithBundleIdentifier:@"com.apple.mobilesafari" allowPlaceholder:0 error:0];
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v3, 24, 1);
    v6 = *(a1 + 32);
  }

  else
  {
    v6 = 0;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000C6D4;
  block[3] = &unk_10003D7C0;
  block[4] = v6;
  dispatch_async(Property, block);
}

void sub_10000C6D4(uint64_t a1)
{
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "LaunchServices is available", v6, 2u);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    *(v3 + 12) = 1;
  }

  v4 = sub_100020804();
  sub_100024D20(v4, v5);
}

void sub_10000C76C(uint64_t a1)
{
  if (a1)
  {
    v1 = objc_opt_new();
    v2 = [v1 allowedClient];
    v3 = [v2 allowedClient];
    v4 = [v3 value];

    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v4 bundleIdentifier];
      v8 = 138543362;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "The current Managed Settings allowed client is now %{public}@", &v8, 0xCu);
    }

    v7 = [v4 bundleIdentifier];
    sub_10001FFB0(NEHelperConfigurationManager, v7);
  }
}

void sub_10000C898(void *a1, void *a2, const char *a3)
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    if (v5 && xpc_get_type(v5) == &_xpc_type_dictionary)
    {
      string = xpc_dictionary_get_string(v6, _xpc_event_key_name);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000D0FC;
      block[3] = &unk_10003CF00;
      block[4] = a3;
      block[5] = string;
      if (qword_100046B20 != -1)
      {
        dispatch_once(&qword_100046B20, block);
      }

      if (!strcmp(a3, "com.apple.fsevents.matching"))
      {
        if (!strcmp(string, "ConfigFileChanged"))
        {
          memset(&buf, 0, sizeof(buf));
          if (stat("/Library/Preferences/com.apple.networkextension.plist", &buf) && *__error() == 2)
          {
            v48 = 0;
            v49 = &v48;
            v50 = 0x3032000000;
            v51 = sub_1000016B0;
            v52 = sub_1000016D4;
            v53 = os_transaction_create();
            v24 = +[NEConfigurationManager sharedManagerForAllUsers];
            v26 = objc_getProperty(a1, v25, 24, 1);
            v45[0] = _NSConcreteStackBlock;
            v45[1] = 3221225472;
            v45[2] = sub_10000D1B0;
            v45[3] = &unk_10003CF48;
            v45[4] = &v48;
            [v24 handleFileRemovedWithCompletionQueue:v26 completionHandler:v45];

            v27 = sub_100020804();
            sub_100025D30(v27, v28);

            _Block_object_dispose(&v48, 8);
          }
        }

        else if (!strcmp(string, "ControlSettingsChanged"))
        {
          sub_10000BAD0();
        }

        else
        {
          v11 = strcmp(string, "ManagedPreferencesChanged");
          if (!v11)
          {
            sub_10000BCB4(v11);
          }
        }
      }

      else if (!strcmp(a3, "com.apple.distnoted.matching"))
      {
        if (!strcmp(string, "ApplicationInstalled") || !strcmp(string, "ApplicationUninstalled"))
        {
          v12 = _CFXPCCreateCFObjectFromXPCObject();
          v13 = [NSString stringWithUTF8String:_xpc_event_key_name];
          v14 = [v12 objectForKeyedSubscript:v13];

          v15 = [v12 objectForKeyedSubscript:@"UserInfo"];
          if (isa_nsdictionary() && isa_nsstring())
          {
            v44 = [v15 objectForKeyedSubscript:@"bundleIDs"];
            if (isa_nsarray())
            {
              v16 = [NSPredicate predicateWithBlock:&stru_10003CFD8];
              v17 = [v44 filteredArrayUsingPredicate:v16];

              LODWORD(v16) = [v14 isEqualToString:@"ApplicationInstalled"];
              v42 = [v15 objectForKeyedSubscript:@"isPlaceholder"];
              v18 = ne_log_obj();
              v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
              if (v16)
              {
                if (v19)
                {
                  v20 = [v42 BOOLValue];
                  v21 = "";
                  if (v20)
                  {
                    v21 = "placeholder ";
                  }

                  buf.st_dev = 136446466;
                  *&buf.st_mode = v21;
                  WORD2(buf.st_ino) = 2112;
                  *(&buf.st_ino + 6) = v17;
                  _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Received an apps installed notification with %{public}sbundle IDs %@", &buf, 0x16u);
                }

                v22 = 0;
                v23 = v17;
              }

              else
              {
                if (v19)
                {
                  buf.st_dev = 138412290;
                  *&buf.st_mode = v17;
                  _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Received an apps uninstalled notification with bundle IDs %@", &buf, 0xCu);
                }

                v23 = 0;
                v22 = v17;
              }

              v38 = v17;
              v48 = 0;
              v49 = &v48;
              v50 = 0x3032000000;
              v51 = sub_1000016B0;
              v52 = sub_1000016D4;
              v53 = os_transaction_create();
              v41 = [v42 BOOLValue];
              v47[0] = _NSConcreteStackBlock;
              v47[1] = 3221225472;
              v47[2] = sub_10000D1C4;
              v47[3] = &unk_10003CF48;
              v47[4] = &v48;
              v29 = v23;
              v30 = v22;
              v40 = v47;
              group = dispatch_group_create();
              if ([v29 count])
              {
                dispatch_group_enter(group);
                v31 = sub_100020804();
                v56[0] = _NSConcreteStackBlock;
                v56[1] = 3221225472;
                v56[2] = sub_10000D1D8;
                v56[3] = &unk_10003D7C0;
                v57 = group;
                sub_100025E3C(v31, v29, v56);
              }

              if ([v30 count])
              {
                dispatch_group_enter(group);
                v33 = sub_100020804();
                v54[0] = _NSConcreteStackBlock;
                v54[1] = 3221225472;
                v54[2] = sub_10000D1E0;
                v54[3] = &unk_10003D7C0;
                v55 = group;
                sub_100025E3C(v33, v30, v54);
              }

              Property = objc_getProperty(a1, v32, 24, 1);
              *&buf.st_dev = _NSConcreteStackBlock;
              buf.st_ino = 3221225472;
              *&buf.st_uid = sub_10000D1E8;
              *&buf.st_rdev = &unk_10003CFB8;
              LOBYTE(buf.st_ctimespec.tv_sec) = v41;
              v35 = v29;
              buf.st_atimespec.tv_sec = v35;
              v36 = v30;
              buf.st_atimespec.tv_nsec = v36;
              buf.st_mtimespec.tv_sec = a1;
              v37 = v40;
              buf.st_mtimespec.tv_nsec = v37;
              dispatch_group_notify(group, Property, &buf);

              _Block_object_dispose(&v48, 8);
            }
          }
        }

        else if (!strcmp(string, "ApplicationDatabaseUpdated"))
        {
          v8 = ne_log_obj();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf.st_dev) = 0;
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Handling an application database updated notification", &buf, 2u);
          }

          v9 = sub_100020804();
          sub_100025C9C(v9, v10);

          notify_post("com.apple.networkextension.apps-changed");
        }
      }
    }

    NWPrivilegedHelperHandleEvent();
  }
}

void sub_10000D0FC(uint64_t a1)
{
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 136315394;
    v6 = v3;
    v7 = 2080;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Launched by event of type %s and name %s", &v5, 0x16u);
  }
}

void sub_10000D1B0(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

void sub_10000D1C4(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

void sub_10000D1E8(uint64_t a1)
{
  v2 = objc_alloc_init(NSArray);
  if ((*(a1 + 64) & 1) != 0 || ![*(a1 + 32) count])
  {
    v45 = v2;
    goto LABEL_18;
  }

  v3 = a1;
  v4 = [*(a1 + 32) count] == 1;
  v5 = ne_log_obj();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v7 = *(v3 + 32);
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v7;
      v8 = "Handling an apps installed notification with bundle IDs %@";
LABEL_9:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v8, &buf, 0xCu);
    }
  }

  else if (v6)
  {
    v9 = [*(v3 + 32) count];
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v9;
    v8 = "Handling an apps installed notification with %lu bundle IDs";
    goto LABEL_9;
  }

  sub_1000154E4(NEHelperConfigurationManager, 0, *(v3 + 32), 0);
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v10 = *(v3 + 32);
  v11 = [v10 countByEnumeratingWithState:&v51 objects:v65 count:16];
  if (v11)
  {
    v12 = *v52;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v52 != v12)
        {
          objc_enumerationMutation(v10);
        }

        sub_100014540(NEHelperConfigurationManager, *(*(&v51 + 1) + 8 * i), 0);
      }

      v11 = [v10 countByEnumeratingWithState:&v51 objects:v65 count:16];
    }

    while (v11);
  }

  sub_10001F74C(NEHelperConfigurationManager, *(v3 + 32));
  v14 = [v2 arrayByAddingObjectsFromArray:*(v3 + 32)];

  v45 = v14;
  a1 = v3;
LABEL_18:
  v47 = a1;
  v15 = [*(a1 + 40) count];
  v16 = objc_msgSend_removeObjectsForKeys_;
  if (!v15)
  {
    v22 = a1;
    v23 = v45;
    goto LABEL_39;
  }

  v17 = [*(a1 + 40) count] == 1;
  v18 = ne_log_obj();
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
  if (v17)
  {
    if (v19)
    {
      v20 = *(v47 + 40);
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v20;
      v21 = "Handling an apps uninstalled notification with bundle IDs %@";
LABEL_25:
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v21, &buf, 0xCu);
    }
  }

  else if (v19)
  {
    v24 = [*(v47 + 40) count];
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v24;
    v21 = "Handling an apps uninstalled notification with %lu bundle IDs";
    goto LABEL_25;
  }

  v44 = [NSPredicate predicateWithBlock:&stru_10003CF68];
  v25 = [*(v47 + 40) filteredArrayUsingPredicate:v44];
  v26 = *(v47 + 48);
  v46 = v25;
  if (v26)
  {
    v27 = ne_log_obj();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v46;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Removing configurations for apps with bundle IDs %@", &buf, 0xCu);
    }

    if ([v46 count])
    {
      sub_1000154E4(NEHelperConfigurationManager, 0, 0, v46);
      v60[0] = 0;
      v60[1] = v60;
      v60[2] = 0x3032000000;
      v60[3] = sub_1000016B0;
      v60[4] = sub_1000016D4;
      v61 = os_transaction_create();
      v28 = +[NEConfigurationManager sharedManagerForAllUsers];
      v30 = objc_getProperty(v26, v29, 24, 1);
      v59[0] = _NSConcreteStackBlock;
      v59[1] = 3221225472;
      v59[2] = sub_10000DFD8;
      v59[3] = &unk_10003CF48;
      v59[4] = v60;
      [v28 handleApplicationsRemoved:v46 completionQueue:v30 withCompletionHandler:v59];

      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      obj = v46;
      v31 = [obj countByEnumeratingWithState:&v55 objects:&buf count:16];
      if (v31)
      {
        v32 = *v56;
        do
        {
          for (j = 0; j != v31; j = j + 1)
          {
            if (*v56 != v32)
            {
              objc_enumerationMutation(obj);
            }

            v34 = *(*(&v55 + 1) + 8 * j);
            v35 = objc_opt_self();
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_100008110;
            block[3] = &unk_10003CD60;
            v63 = v34;
            v64 = v35;
            v36 = v34;
            dispatch_async(&_dispatch_main_q, block);
          }

          v31 = [obj countByEnumeratingWithState:&v55 objects:&buf count:16];
        }

        while (v31);
      }

      _Block_object_dispose(v60, 8);
    }
  }

  v23 = [v45 arrayByAddingObjectsFromArray:*(v47 + 40)];

  v22 = v47;
  v16 = objc_msgSend_removeObjectsForKeys_;
LABEL_39:
  v49[0] = _NSConcreteStackBlock;
  v37 = *(v16 + 420);
  v49[1] = v37;
  v49[2] = sub_10000D90C;
  v49[3] = &unk_10003CF90;
  v38 = *(v22 + 48);
  v50 = *(v22 + 56);
  v39 = v23;
  v40 = v49;
  if (v38)
  {
    v41 = +[NEConfigurationManager sharedManagerForAllUsers];
    Property = objc_getProperty(v38, v42, 24, 1);
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = v37;
    v67 = sub_10000D958;
    v68 = &unk_10003D000;
    v69 = v39;
    v70 = v40;
    [v41 loadConfigurationsWithCompletionQueue:Property handler:&buf];
  }
}

uint64_t sub_10000D90C(uint64_t a1, int a2)
{
  if (a2)
  {
    notify_post("com.apple.networkextension.apps-changed");
  }

  v3 = *(*(a1 + 32) + 16);

  return v3();
}

void sub_10000D958(uint64_t a1, void *a2)
{
  v3 = a2;
  v54 = ne_session_fallback_advisory();
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  obj = v3;
  v65 = [obj countByEnumeratingWithState:&v72 objects:v81 count:16];
  if (v65)
  {
    v59 = 0;
    v64 = *v73;
    do
    {
      v4 = 0;
      do
      {
        if (*v73 != v64)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v72 + 1) + 8 * v4);
        v6 = [v5 pluginType];
        if (v6 && [*(a1 + 32) containsObject:v6])
        {
          v7 = ne_log_obj();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            v8 = [v5 name];
            *buf = 138412546;
            v78 = v8;
            v79 = 2112;
            v80 = v6;
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "App for configuration %@ (%@) changed", buf, 0x16u);
          }

          v59 = 1;
          goto LABEL_43;
        }

        v9 = [v5 appVPN];
        v10 = [v9 appRules];
        if ([v10 count])
        {
          goto LABEL_16;
        }

        v11 = [v5 contentFilter];
        v12 = [v11 perApp];
        v13 = [v12 appRules];
        if ([v13 count])
        {
          goto LABEL_15;
        }

        v66 = v6;
        v62 = [v5 dnsProxy];
        v14 = [v62 perApp];
        v15 = [v14 appRules];
        if ([v15 count])
        {

          v6 = v66;
LABEL_15:

LABEL_16:
LABEL_17:
          v7 = [v5 appVPN];
          v16 = [v5 contentFilter];
          v17 = [v16 perApp];

          if (v17)
          {
            v18 = [v5 contentFilter];
            goto LABEL_23;
          }

          v19 = [v5 dnsProxy];
          v20 = [v19 perApp];

          if (v20)
          {
            v18 = [v5 dnsProxy];
            goto LABEL_23;
          }

          v21 = [v5 relay];
          v22 = [v21 perApp];

          if (v22)
          {
            v18 = [v5 relay];
LABEL_23:
            v23 = v18;
            v22 = [v18 perApp];

            if (v7)
            {
              v24 = v7;
              goto LABEL_26;
            }

            v24 = v22;
            if (v22)
            {
LABEL_26:
              v25 = [v24 appRules];
            }

            else
            {
              v25 = 0;
            }
          }

          else
          {
            v25 = 0;
            v24 = v7;
            if (v7)
            {
              goto LABEL_26;
            }
          }

          v70 = 0u;
          v71 = 0u;
          v68 = 0u;
          v69 = 0u;
          v26 = v25;
          v27 = [v26 countByEnumeratingWithState:&v68 objects:v76 count:16];
          if (v27)
          {
            v28 = v27;
            v60 = v22;
            v63 = v7;
            v67 = v6;
            v29 = *v69;
            while (2)
            {
              for (i = 0; i != v28; i = i + 1)
              {
                if (*v69 != v29)
                {
                  objc_enumerationMutation(v26);
                }

                v31 = *(*(&v68 + 1) + 8 * i);
                v32 = [v31 matchSigningIdentifier];
                if (v32)
                {
                  v33 = v32;
                  v34 = *(a1 + 32);
                  v35 = [v31 matchSigningIdentifier];
                  LOBYTE(v34) = [v34 containsObject:v35];

                  if (v34)
                  {

                    v36 = ne_log_obj();
                    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
                    {
                      v37 = [v5 name];
                      v38 = *(a1 + 32);
                      *buf = 138412546;
                      v78 = v37;
                      v79 = 2112;
                      v80 = v38;
                      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "One or more apps in the per-app rules for configuration %@ changed: %@", buf, 0x16u);
                    }

                    v59 = 1;
                    goto LABEL_40;
                  }
                }
              }

              v28 = [v26 countByEnumeratingWithState:&v68 objects:v76 count:16];
              if (v28)
              {
                continue;
              }

              break;
            }

            v36 = v26;
LABEL_40:
            v6 = v67;
            v22 = v60;
            v7 = v63;
          }

          else
          {
            v36 = v26;
          }

LABEL_43:
          goto LABEL_44;
        }

        v57 = [v5 relay];
        v56 = [v57 perApp];
        v55 = [v56 appRules];
        v61 = [v55 count];

        v6 = v66;
        if (v61)
        {
          goto LABEL_17;
        }

        v39 = [v5 pathController];
        if (!v39 || (v40 = v39, [v5 pathController], v41 = objc_claimAutoreleasedReturnValue(), v42 = objc_msgSend(v41, "hasNonDefaultRules") | v54, v41, v40, (v42 & 1) == 0))
        {
          v43 = [v5 alwaysOnVPN];
          if (!v43 || (v44 = v43, [v5 alwaysOnVPN], v45 = objc_claimAutoreleasedReturnValue(), v46 = objc_msgSend(v45, "isEnabled"), v45, v44, (v46 & 1) == 0))
          {
            v47 = [v5 dnsProxy];
            if (!v47 || (v48 = v47, [v5 dnsProxy], v49 = objc_claimAutoreleasedReturnValue(), v50 = objc_msgSend(v49, "isEnabled"), v49, v48, (v50 & 1) == 0))
            {
              v7 = [v5 appPush];
              if (v7)
              {
                v51 = [v5 appPush];
                v52 = [v51 isEnabled];

                v59 |= v52;
              }

              v6 = v66;
              goto LABEL_43;
            }
          }
        }

        v59 = 1;
        v6 = v66;
LABEL_44:

        v4 = v4 + 1;
      }

      while (v4 != v65);
      v53 = [obj countByEnumeratingWithState:&v72 objects:v81 count:16];
      v65 = v53;
    }

    while (v53);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10000DFD8(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

BOOL sub_10000DFEC(id a1, id a2, NSDictionary *a3)
{
  v3 = a2;
  if (isa_nsstring())
  {
    LOBYTE(v4) = 1;
    v5 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v3 allowPlaceholder:1 error:0];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 applicationState];
      v4 = [v7 isInstalled] ^ 1;
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

BOOL sub_10000E080(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = xpc_connection_copy_entitlement_value();

  return v3 != 0;
}

id sub_10000E0E0(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  pid = xpc_connection_get_pid(v2);

  LODWORD(v2) = proc_name(pid, buffer, 0x100u);
  v4 = [NSString alloc];
  if (v2 < 1)
  {
    return [v4 initWithFormat:@"process%d", pid];
  }

  else
  {
    return [v4 initWithCString:buffer encoding:4];
  }
}

id sub_10000E1B0(os_unfair_lock_s *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = objc_alloc_init(NSMutableArray);
    os_unfair_lock_lock(a1 + 2);
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v16 = a1;
    v6 = objc_getProperty(a1, v5, 40, 1);
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v9 = v7;
      v10 = *v18;
      do
      {
        v11 = 0;
        do
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v17 + 1) + 8 * v11);
          if (v12)
          {
            if (v12[2] == 6)
            {
              objc_getProperty(*(*(&v17 + 1) + 8 * v11), v8, 32, 1);
              if (objc_opt_respondsToSelector())
              {
                v13 = [objc_getProperty(v12 v8];
                v14 = [v3 isEqualToString:v13];

                if (v14)
                {
                  [v4 addObject:v12];
                }
              }
            }
          }

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    os_unfair_lock_unlock(v16 + 2);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_10000EAA4(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  if (isa_nsarray() && [v4 count])
  {
    v6 = [v4 mutableCopy];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          if ([v6 indexOfObject:{v12, v15}] == 0x7FFFFFFFFFFFFFFFLL)
          {
            [v6 addObject:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    v13 = [[NSArray alloc] initWithArray:v6];
  }

  else
  {
    v13 = v5;
  }

  return v13;
}

uint64_t sub_10000F8D0(unsigned int a1, uint64_t a2, int a3)
{
  v5 = socket(a3, 2, 0);
  if (v5 < 0)
  {
    return *__error();
  }

  v6 = v5;
  v7 = ioctl(v5, a1, a2);
  close(v6);
  if (v7 < 0)
  {
    return *__error();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000F948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 1);
  if (v6 == 30)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    *&v22[16] = 0u;
    v23 = 0u;
    v21 = 0u;
    *v22 = 0u;
    __strlcpy_chk();
    *v22 = 7708;
    *&v22[8] = *(a2 + 8);
    if (a3)
    {
      WORD4(v24) = 7708;
      v25 = *(a3 + 8);
    }

    if (a4)
    {
      v11 = *(a4 + 16);
    }

    else
    {
      v11 = -1;
    }

    *(&v27 + 1) = v11;
    if (*(a2 + 8) == 254 && (*(a2 + 9) & 0xC0) == 0x80)
    {
      v12 = sub_10000F8D0(0xC0806982, &v21, 30);
      if (v12)
      {
        v8 = v12;
        v13 = ne_log_obj();
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_27;
        }

        v19 = 136315138;
        v20 = strerror(v8);
        v14 = "Couldn't set link-local IPv6 address, %s";
        goto LABEL_24;
      }
    }

    else
    {
      v15 = sub_10000F8D0(0x8080691A, &v21, 30);
      if (v15)
      {
        v8 = v15;
        v13 = ne_log_obj();
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_27;
        }

        v19 = 136315138;
        v20 = strerror(v8);
        v14 = "Couldn't set IPv6 address, %s";
LABEL_24:
        v16 = v13;
        v17 = 12;
        goto LABEL_30;
      }
    }

    return 0;
  }

  if (v6 == 2)
  {
    *&v22[16] = 0u;
    v23 = 0u;
    v21 = 0u;
    __strlcpy_chk();
    *v22 = 0x210uLL;
    *&v22[4] = *(a2 + 4);
    *&v22[16] = __PAIR64__(*&v22[4], 528);
    v23 = 0uLL;
    if (a3)
    {
      LOWORD(v23) = 528;
      DWORD1(v23) = *(a3 + 4);
    }

    v7 = sub_10000F8D0(0x8040691A, &v21, 2);
    if (!v7)
    {
      return 0;
    }

    v8 = v7;
    if (v7 == 17)
    {
      v9 = ne_log_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v19) = 0;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Couldn't set interface address, already exists", &v19, 2u);
      }

      return 0;
    }

    v13 = ne_log_obj();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
LABEL_27:

      return v8;
    }

    LOWORD(v19) = 0;
    v14 = "Couldn't set interface address";
    v16 = v13;
    v17 = 2;
LABEL_30:
    _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, v14, &v19, v17);
    goto LABEL_27;
  }

  return 22;
}

void sub_1000114BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100011560(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (v4 && xpc_get_type(v4) == &_xpc_type_dictionary)
  {
    length = 0;
    data = xpc_dictionary_get_data(v5, "interface-option-data", &length);
    uint64 = xpc_dictionary_get_uint64(v5, "interface-option");
    if (uint64)
    {
      v8 = uint64;
      if (setsockopt(*(a1 + 56), 2, uint64, data, length))
      {
        v9 = *__error();
        if (strerror_r(v9, __strerrbuf, 0x80uLL))
        {
          __strerrbuf[0] = 0;
        }

        v10 = ne_log_obj();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109634;
          v35 = v8;
          v36 = 1024;
          v37 = v9;
          v38 = 2080;
          v39 = __strerrbuf;
          _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to set socket option %d on kernel control socket: [%d] %s", buf, 0x18u);
        }
      }
    }

    if (xpc_dictionary_get_BOOL(v5, "interface-bind-channel-pid"))
    {
      v11 = xpc_dictionary_get_uint64(v5, "interface-type");
      if (v11 - 1 <= 1)
      {
        v12 = v11;
        v13 = xpc_dictionary_get_remote_connection(*(a1 + 32));
        v14 = v13;
        if (v13)
        {
          pid = xpc_connection_get_pid(v13);
          v32 = pid;
          if (v12 == 2)
          {
            v16 = 17;
          }

          else
          {
            v16 = -1;
          }

          if (v12 == 1)
          {
            v17 = 29;
          }

          else
          {
            v17 = v16;
          }

          v18 = ne_log_obj();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            *__strerrbuf = 67109120;
            LODWORD(v41) = pid;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "binding ipsec channel to pid: %d", __strerrbuf, 8u);
          }

          if (setsockopt(*(a1 + 56), 2, v17, &v32, 4u))
          {
            v19 = *__error();
            if (strerror_r(v19, __strerrbuf, 0x80uLL))
            {
              __strerrbuf[0] = 0;
            }

            v20 = ne_log_obj();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109634;
              v35 = v17;
              v36 = 1024;
              v37 = v19;
              v38 = 2080;
              v39 = __strerrbuf;
              _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Failed to set socket option %d on kernel control socket: [%d] %s", buf, 0x18u);
            }
          }
        }

        else
        {
          v21 = ne_log_obj();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v31 = *(a1 + 32);
            *__strerrbuf = 138412290;
            v41 = v31;
            _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Could not get remote connection for message: %@", __strerrbuf, 0xCu);
          }
        }
      }
    }

    uuid = xpc_dictionary_get_uuid(v5, "interface-bind-channel-exec-uuid");
    if (uuid)
    {
      v23 = uuid;
      v24 = xpc_dictionary_get_uint64(v5, "interface-type");
      if (v24 - 1 <= 1)
      {
        v25 = v24 == 2 ? 20 : -1;
        v26 = v24 == 1 ? 28 : v25;
        if (setsockopt(*(a1 + 56), 2, v26, v23, 0x10u))
        {
          v27 = *__error();
          if (strerror_r(v27, __strerrbuf, 0x80uLL))
          {
            __strerrbuf[0] = 0;
          }

          v28 = ne_log_obj();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109634;
            v35 = v26;
            v36 = 1024;
            v37 = v27;
            v38 = 2080;
            v39 = __strerrbuf;
            _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Failed to set socket option %d on kernel control socket: [%d] %s", buf, 0x18u);
          }
        }
      }
    }

    if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
    {
      CStringPtr = CFStringGetCStringPtr(@"DisableTrafficShaping", 0x8000100u);
      *(*(*(a1 + 40) + 8) + 24) = xpc_dictionary_get_BOOL(v5, CStringPtr);
    }

    if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
    {
      *(*(*(a1 + 48) + 8) + 24) = xpc_dictionary_get_BOOL(v5, "interface-direct-link");
    }
  }

  return 1;
}

void sub_1000140A0(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  v5 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
  if (v8)
  {
    [v5 encodeObject:v8 forKey:@"config-index"];
  }

  [v5 encodeInt64:a3 forKey:@"config-generation"];
  [v5 finishEncoding];
  v6 = [v5 encodedData];
  v7 = xpc_data_create([v6 bytes], objc_msgSend(v6, "length"));
  sub_10000BA0C(NEHelperServer, *(a1 + 32), 0, v7);
}

void sub_100014194(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v9 = a3;
  v10 = a5;
  if (v8)
  {
    v11 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v12 = [[NSArray alloc] initWithArray:v8 copyItems:1];
    v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v21;
      do
      {
        v16 = 0;
        do
        {
          if (*v21 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [*(*(&v20 + 1) + 8 * v16) copyPasswordsFromSystemKeychain];
          v16 = v16 + 1;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v14);
    }

    v17 = v12;
    [v11 encodeObject:v17 forKey:@"config-objects"];

    [v11 finishEncoding];
    v18 = [v11 encodedData];
    v8 = xpc_data_create([v18 bytes], objc_msgSend(v18, "length"));

    if (v9)
    {
      goto LABEL_10;
    }

LABEL_12:
    v19 = 0;
    goto LABEL_13;
  }

  v17 = 0;
  if (!v9)
  {
    goto LABEL_12;
  }

LABEL_10:
  v19 = [v9 code];
LABEL_13:
  sub_10000BA0C(NEHelperServer, *(a1 + 32), v19, v8);
}

id sub_10001438C(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  os_unfair_lock_lock(&unk_100046B80);
  v3 = 0;
  if (v2 && qword_100046B38)
  {
    v3 = [qword_100046B38 isEqualToString:v2];
  }

  os_unfair_lock_unlock(&unk_100046B80);

  return v3;
}

void sub_1000143FC(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a4;
  v11 = a5;
  v12 = a3;
  v13 = +[NEConfigurationManager sharedManagerForAllUsers];
  Property = objc_getProperty(a1, v14, 40, 1);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10001CEC8;
  v19[3] = &unk_10003D248;
  v16 = v11;
  v20 = v16;
  v17 = v9;
  v21 = v17;
  v18 = v10;
  v22 = v18;
  v23 = a1;
  [v13 loadConfigurations:0 withFilter:v12 completionQueue:Property completionHandler:v19];
}

void sub_100014540(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  v6 = sub_1000016DC();
  if (v6 && (v7 = v6[12], v6, (v7 & 1) != 0))
  {
    v26 = 0;
    v8 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v4 allowPlaceholder:0 error:&v26];
    v9 = v26;
    if (v9 || !v8)
    {
      v11 = ne_log_obj();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v30 = v4;
        v31 = 2112;
        v32 = v9;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Did not find an app with bundle ID %@, cannot add app rules from app mapping: %@", buf, 0x16u);
      }
    }

    else
    {
      v10 = [v8 entitlements];
      v11 = [v10 objectForKey:@"com.apple.developer.networking.networkextension" ofClass:objc_opt_class()];

      if ([v11 count])
      {
        v12 = [v8 entitlements];
        v13 = [v12 objectForKey:@"get-task-allow" ofClass:objc_opt_class()];

        v14 = [v8 entitlements];
        v15 = [v14 objectForKey:@"com.apple.private.networkextension.test-control" ofClass:objc_opt_class()];

        if (([v13 BOOLValue] & 1) != 0 || objc_msgSend(v15, "BOOLValue"))
        {
          v16 = [v8 URL];
          v17 = [NSBundle bundleWithURL:v16];

          v18 = [v17 infoDictionary];
          if (isa_nsdictionary())
          {
            v19 = [v18 objectForKeyedSubscript:@"NETestAppMapping"];
            if (isa_nsdictionary() && [v19 count])
            {
              log = ne_log_obj();
              if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v30 = @"NETestAppMapping";
                v31 = 2112;
                v32 = v4;
                _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Setting app rules from the %@ for %@", buf, 0x16u);
              }

              if (v5)
              {
                sub_10001C740(NEHelperConfigurationManager, v19, v5);
              }

              else
              {
                v27[0] = @"user-uuid";
                v20 = NECopyConsoleUserUUID();
                v27[1] = @"application-id";
                v28[0] = v20;
                v28[1] = v4;
                loga = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:2];

                v21 = +[NEConfigurationManager sharedManagerForAllUsers];
                v24[0] = _NSConcreteStackBlock;
                v24[1] = 3221225472;
                v24[2] = sub_10001C508;
                v24[3] = &unk_10003D298;
                v25 = v19;
                [v21 loadConfigurations:0 withFilter:loga completionQueue:&_dispatch_main_q completionHandler:v24];
              }
            }
          }
        }
      }
    }
  }

  else
  {
    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v30 = v4;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "LaunchServices is not available, cannot add app rules from app mapping from app %@", buf, 0xCu);
    }
  }
}

void sub_1000149A8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 code];

  sub_10000BA0C(NEHelperServer, v2, v3, 0);
}

void sub_1000149F8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v17 = *(a1 + 40);
    v18 = 7;
LABEL_32:
    sub_10000BA0C(NEHelperServer, v17, v18, 0);
    goto LABEL_33;
  }

  v7 = [v5 pluginType];
  if (!v7 || (v8 = *(a1 + 32)) != 0 && (*(v8 + 14) & 1) != 0)
  {
  }

  else
  {
    v33 = *(a1 + 56);

    if ((v33 & 1) == 0)
    {
      v12 = ne_log_obj();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        Property = *(a1 + 32);
        if (Property)
        {
          Property = objc_getProperty(Property, v34, 72, 1);
        }

        *buf = 138412290;
        v40 = Property;
        v16 = "%@ is not allowed to remove provider-based configurations";
        v25 = v12;
        v26 = 12;
        goto LABEL_37;
      }

      goto LABEL_31;
    }
  }

  sub_10001B4F4(*(a1 + 32), v5);
  v9 = [v5 appPush];
  if (!v9)
  {
    goto LABEL_15;
  }

  v10 = *(a1 + 32);
  if (!v10)
  {

LABEL_10:
    v12 = ne_log_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 32);
      if (v14)
      {
        v15 = objc_getProperty(*(a1 + 32), v13, 72, 1);
      }

      else
      {
        v15 = 0;
      }

      *buf = 138412546;
      v40 = v14;
      v41 = 2112;
      v42 = v15;
      v16 = "%@ [%@] is not entitled to remove app push provider configuration";
LABEL_24:
      v25 = v12;
      v26 = 22;
LABEL_37:
      _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, v16, buf, v26);
      goto LABEL_31;
    }

    goto LABEL_31;
  }

  if ((*(v10 + 20) & 0x20) != 0)
  {
LABEL_15:
  }

  else
  {
    v11 = *(v10 + 9);

    if ((v11 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  v19 = [v5 hotspot];
  if (!v19)
  {
    goto LABEL_25;
  }

  v20 = *(a1 + 32);
  if (!v20)
  {

LABEL_20:
    v12 = ne_log_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v23 = *(a1 + 32);
      if (v23)
      {
        v24 = objc_getProperty(*(a1 + 32), v22, 72, 1);
      }

      else
      {
        v24 = 0;
      }

      *buf = 138412546;
      v40 = v23;
      v41 = 2112;
      v42 = v24;
      v16 = "%@ [%@] is not entitled to remove hotspot provider configuration";
      goto LABEL_24;
    }

LABEL_31:

    v17 = *(a1 + 40);
    v18 = 10;
    goto LABEL_32;
  }

  if ((*(v20 + 20) & 0x100) != 0)
  {
LABEL_25:
  }

  else
  {
    v21 = *(v20 + 9);

    if ((v21 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  v28 = +[NEConfigurationManager sharedManagerForAllUsers];
  v29 = *(a1 + 48);
  v30 = *(a1 + 32);
  if (v30)
  {
    v31 = objc_getProperty(v30, v27, 40, 1);
  }

  else
  {
    v31 = 0;
  }

  v32 = *(a1 + 48);
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_10001C3F0;
  v36[3] = &unk_10003D2E8;
  v37 = v32;
  v38 = *(a1 + 40);
  [v28 removeConfigurationFromDisk:v29 completionQueue:v31 completionHandler:v36];

LABEL_33:
}

void sub_100014D60(void *a1, void *a2)
{
  v3 = a2;
  v4 = +[NEConfigurationManager sharedManagerForAllUsers];
  Property = objc_getProperty(a1, v5, 40, 1);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001BF4C;
  v8[3] = &unk_10003D298;
  v7 = v3;
  v9 = v7;
  [v4 loadConfigurations:0 withFilter:0 completionQueue:Property completionHandler:v8];
}

void sub_100014E38(void *a1, void *a2)
{
  v3 = a2;
  v4 = +[NEConfigurationManager sharedManagerForAllUsers];
  Property = objc_getProperty(a1, v5, 40, 1);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001BC7C;
  v8[3] = &unk_10003D298;
  v7 = v3;
  v9 = v7;
  [v4 loadConfigurations:0 withFilter:0 completionQueue:Property completionHandler:v8];
}

id sub_100014F10(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_1000169A0;
  v14 = sub_1000169B0;
  v15 = 0;
  sub_10001BAF0();
  v3 = qword_100046B90;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001BB40;
  v7[3] = &unk_10003D700;
  v8 = v2;
  v9 = &v10;
  v4 = v2;
  dispatch_sync(v3, v7);
  v5 = v11[5];

  _Block_object_dispose(&v10, 8);
  return v5;
}

void sub_100015030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100015048(uint64_t a1, const char *a2)
{
  if (a2)
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      v4 = v3[8];
    }

    else
    {
      v4 = 0;
    }

    v5 = *(a1 + 32);
    if (v5)
    {
      *(v5 + 16) = v4 & 1;
      v6 = *(a1 + 32);
      v3 = *(a1 + 40);
      if (!v3)
      {
LABEL_7:
        v8 = v3;
        v9 = *(a1 + 40);
        if (v9)
        {
          Property = objc_getProperty(v9, v7, 40, 1);
          v11 = *(a1 + 40);
        }

        else
        {
          v11 = 0;
          Property = 0;
        }

        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_10001AF64;
        v15[3] = &unk_10003D338;
        v16 = v11;
        v17 = *(a1 + 48);
        sub_10001AFE8(v6, v8, Property, v15);

        return;
      }
    }

    else
    {
      v6 = 0;
      if (!v3)
      {
        goto LABEL_7;
      }
    }

    v3 = objc_getProperty(v3, a2, 32, 1);
    goto LABEL_7;
  }

  v12 = *(a1 + 40);
  if (v12)
  {
    v13 = objc_getProperty(v12, a2, 48, 1);
  }

  else
  {
    v13 = 0;
  }

  sub_10000BA0C(NEHelperServer, v13, 10, 0);
  v14 = *(a1 + 48);

  sub_10000BA0C(NEHelperServer, v14, 0, 0);
}

id sub_1000151DC(uint64_t a1, uint64_t a2)
{
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_100015210(uint64_t a1, void *a2, id a3)
{
  v5 = a2;
  if ([v5 count] == a3)
  {
    sub_10000BA0C(NEHelperServer, *(a1 + 32), 22, 0);
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = 0;
  }

  else
  {
    v8 = [v5 objectAtIndexedSubscript:a3];
    v9 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v9, "config-operation", 8);
    if (v8)
    {
      Property = objc_getProperty(v8, v10, 24, 1);
    }

    else
    {
      Property = 0;
    }

    v13 = Property;
    v14 = *(a1 + 40);
    if (v14)
    {
      v15 = objc_getProperty(v14, v12, 40, 1);
    }

    else
    {
      v15 = 0;
    }

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10001AE5C;
    v18[3] = &unk_10003D388;
    v16 = *(a1 + 32);
    v17 = *(a1 + 48);
    v19 = v16;
    v21 = v17;
    v20 = v5;
    v22 = a3;
    xpc_connection_send_message_with_reply(v13, v9, v15, v18);
  }
}

id sub_1000153AC(void *a1)
{
  v1 = a1;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_1000169A0;
  v13 = sub_1000169B0;
  v14 = 0;
  v2 = +[LSApplicationWorkspace defaultWorkspace];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001AB00;
  v6[3] = &unk_10003D590;
  v8 = &v9;
  v3 = v1;
  v7 = v3;
  [v2 enumerateApplicationsOfType:0 block:v6];

  v4 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v4;
}

void sub_1000154CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000154E4(uint64_t a1, char a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  objc_opt_self();
  if (qword_100046B78 != -1)
  {
    dispatch_once(&qword_100046B78, &stru_10003D5F0);
  }

  v8 = sub_1000155F4();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001934C;
  block[3] = &unk_10003D640;
  v14 = a2;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

id sub_1000155F4()
{
  objc_opt_self();
  if (qword_100046B48 != -1)
  {
    dispatch_once(&qword_100046B48, &stru_10003D0F8);
  }

  v0 = qword_100046B40;

  return v0;
}

void sub_10001564C(uint64_t a1)
{
  v68 = objc_alloc_init(MOEffectiveSettingsStore);
  v2 = [v68 user];
  v3 = [v2 sharingPolicy];
  v4 = [v3 isEqualToString:MOUserSharingPolicyRestricted];

  if (!v4)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v89 = 0x3032000000;
    v90 = sub_1000169A0;
    v91 = sub_1000169B0;
    v92 = 0;
    v7 = *(a1 + 48);
    v64 = *(a1 + 72);
    v8 = *(a1 + 32);
    if (!v7)
    {
      v67 = 0;
      v23 = 0;
      v12 = 0;
      v19 = 0;
      v65 = 1;
      v66 = 0;
      goto LABEL_23;
    }

    v9 = [LSBundleRecord bundleRecordWithBundleIdentifier:v8 allowPlaceholder:0 error:0];
    v10 = v9;
    if (v9)
    {
      v67 = [v9 teamIdentifier];
      v11 = v67;
      v12 = [v10 SDKVersion];
      v13 = v12;
      v14 = [v10 infoDictionary];
      v15 = [v14 objectForKey:@"NSBonjourServices" ofClass:objc_opt_class()];
      v66 = v15 != 0;

      v16 = [v10 entitlements];
      v17 = [v16 objectForKey:@"com.apple.developer.networking.multicast" ofClass:objc_opt_class()];
      v65 = v17 == 0;

      v18 = NEResourcesCopyDevicePreferredLocalizations();
      v19 = [v10 localizedNameWithPreferredLocalizations:v18];
    }

    else
    {
      v67 = 0;
      v12 = 0;
      v19 = 0;
      v65 = 1;
      v66 = 0;
    }

    v20 = [LSApplicationProxy applicationProxyForIdentifier:v8 placeholder:0];
    if (v20)
    {
      v21 = [NSSet setWithObject:@"NSLocalNetworkUsageDescription"];
      v22 = [v20 localizedValuesForKeys:v21 fromTable:0];

      if (!v22 || ([v22 stringForKey:@"NSLocalNetworkUsageDescription"], v23 = objc_claimAutoreleasedReturnValue(), v24 = v23, !v23))
      {
        v23 = [v20 objectForInfoDictionaryKey:@"NSLocalNetworkUsageDescription" ofClass:objc_opt_class()];
        v25 = v23;
      }

      if (v19)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v23 = 0;
      if (v19)
      {
LABEL_22:

LABEL_23:
        v31 = v67;
        objc_storeStrong(&v92, v23);
        v32 = v12;
        v33 = v32;
        if (!*(a1 + 32) || !v19)
        {
          v36 = ne_log_obj();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            v60 = *(a1 + 32);
            *v81 = 138412802;
            *&v81[4] = v60;
            v82 = 2112;
            v83 = v19;
            v84 = 2112;
            v85 = v31;
            _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "Could not find bundle ID or display name for app: (bundleID: %@, name: %@, teamID: %@)", v81, 0x20u);
          }

          sub_10000BA0C(NEHelperServer, *(a1 + 40), 22, 0);
          goto LABEL_63;
        }

        if (v32)
        {
          [v32 doubleValue];
          v35 = v34 < 18.0;
          if (v66)
          {
            if (v34 < 18.0)
            {
              goto LABEL_36;
            }

            goto LABEL_35;
          }
        }

        else
        {
          if (v66)
          {
LABEL_35:
            if (!*(*(&buf + 1) + 40))
            {
              v59 = ne_log_obj();
              if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
              {
                v63 = *(a1 + 32);
                *v81 = 138413058;
                *&v81[4] = v63;
                v82 = 2112;
                v83 = v19;
                v84 = 2112;
                v85 = v31;
                v86 = 2112;
                v87 = v33;
                _os_log_error_impl(&_mh_execute_header, v59, OS_LOG_TYPE_ERROR, "App did not provide a local network usage string, not prompting: (bundleID: %@, name: %@, teamID: %@, sdkVersion: %@)", v81, 0x2Au);
              }

              sub_10000BA0C(NEHelperServer, *(a1 + 40), 1, 0);
              goto LABEL_63;
            }

LABEL_36:
            if (!v31)
            {
              v37 = ne_log_obj();
              if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
              {
                v38 = *(a1 + 32);
                *v81 = 138412546;
                *&v81[4] = v38;
                v82 = 2112;
                v83 = v19;
                _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "No team ID found for (bundleID: %@, name: %@)", v81, 0x16u);
              }

              v31 = @"TEAMID";
            }

            v39 = ne_log_obj();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
            {
              v61 = *(a1 + 32);
              v62 = *(a1 + 72);
              *v81 = 138413058;
              *&v81[4] = v19;
              v82 = 2112;
              v83 = v31;
              v84 = 2112;
              v85 = v61;
              v86 = 1024;
              LODWORD(v87) = v62;
              _os_log_debug_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEBUG, "Got message for: %@ (%@.%@ PID %d)", v81, 0x26u);
            }

            v40 = [NSString stringWithFormat:@"%@.%@", v31, *(a1 + 32)];
            v41 = *(a1 + 48);
            v42 = *(a1 + 40);
            v43 = v40;
            v44 = v43;
            if (v41)
            {
              if (qword_100046B60)
              {
                v45 = [qword_100046B60 objectForKeyedSubscript:v43];
                v46 = v45;
                if (v45 && [v45 count])
                {
                  v47 = ne_log_obj();
                  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
                  {
                    *v81 = 138412290;
                    *&v81[4] = v44;
                    _os_log_debug_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEBUG, "We've already got a prompt outstanding for %@, joining queue", v81, 0xCu);
                  }

                  [v46 addObject:v42];
                  v48 = 0;
                }

                else
                {
                  v49 = ne_log_obj();
                  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
                  {
                    *v81 = 138412290;
                    *&v81[4] = v44;
                    _os_log_debug_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEBUG, "No prompts for %@, starting queue and prompting", v81, 0xCu);
                  }

                  v50 = [[NSMutableArray alloc] initWithObjects:{v42, 0}];
                  v48 = 1;
                  v46 = v50;
                }

                [qword_100046B60 setObject:v46 forKeyedSubscript:v44];

                if ((v48 & 1) == 0)
                {
                  goto LABEL_53;
                }
              }

              else
              {
                v52 = objc_alloc_init(NSMutableDictionary);
                v53 = qword_100046B60;
                qword_100046B60 = v52;

                v54 = [[NSMutableArray alloc] initWithObjects:{v42, 0}];
                [qword_100046B60 setObject:v54 forKeyedSubscript:v44];
                v55 = ne_log_obj();
                if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
                {
                  *v81 = 138412290;
                  *&v81[4] = v44;
                  _os_log_debug_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEBUG, "First prompt, starting the queue with %@ and prompting", v81, 0xCu);
                }
              }

              v56 = +[NEConfigurationManager sharedManagerForAllUsers];
              v57 = sub_1000155F4();
              v69[0] = _NSConcreteStackBlock;
              v69[1] = 3221225472;
              v69[2] = sub_1000169B8;
              v69[3] = &unk_10003D478;
              v69[4] = *(a1 + 48);
              v70 = v44;
              v51 = v56;
              v71 = v51;
              v72 = *(a1 + 56);
              v73 = *(a1 + 32);
              v78 = *(a1 + 72);
              v74 = v19;
              v75 = v31;
              v58 = *(a1 + 64);
              v79 = *(a1 + 76);
              v76 = v58;
              p_buf = &buf;
              [v51 loadConfigurations:0 withFilter:0 completionQueue:v57 completionHandler:v69];

LABEL_59:
LABEL_63:

              _Block_object_dispose(&buf, 8);
              goto LABEL_64;
            }

LABEL_53:
            v51 = ne_log_obj();
            if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
            {
              *v81 = 138412290;
              *&v81[4] = v44;
              _os_log_debug_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEBUG, "Prompt for %@ enqueued, stopping", v81, 0xCu);
            }

            goto LABEL_59;
          }

          v35 = 0;
        }

        if (v65 || v35)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }
    }

    v26 = [RBSProcessPredicate predicateMatchingBundleIdentifier:v8];
    *v81 = 0;
    v27 = [RBSProcessHandle handleForPredicate:v26 error:v81];
    v28 = *v81;

    if (v27)
    {
      if (v28)
      {
LABEL_18:
        v19 = 0;
LABEL_21:

        goto LABEL_22;
      }
    }

    else
    {
      v29 = [RBSProcessIdentifier identifierWithPid:v64];
      v80 = 0;
      v27 = [RBSProcessHandle handleForIdentifier:v29 error:&v80];
      v30 = v80;

      v28 = v30;
      if (v30)
      {
        goto LABEL_18;
      }
    }

    v19 = [v27 name];
    goto LABEL_21;
  }

  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Prompt for %@ occurred in restricted (guest) mode, suppressing alert", &buf, 0xCu);
  }

  sub_10000BA0C(NEHelperServer, *(a1 + 40), 1, 0);
LABEL_64:
}

void sub_100016148(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"ConfigurationProperties"];
  v4 = [v3 objectForKeyedSubscript:*(a1 + 32)];

  v5 = [v4 objectForKeyedSubscript:@"Signature"];
  if (isa_nsdata())
  {
    v7 = +[NEConfigurationManager sharedManagerForAllUsers];
    v8 = *(a1 + 32);
    v9 = *(a1 + 48);
    if (v9)
    {
      Property = objc_getProperty(v9, v6, 40, 1);
    }

    else
    {
      Property = 0;
    }

    v11 = *(a1 + 32);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000165BC;
    v16[3] = &unk_10003D4F0;
    v17 = v11;
    v18 = *(a1 + 40);
    v21 = *(a1 + 56);
    v12 = v5;
    v13 = *(a1 + 48);
    v19 = v12;
    v20 = v13;
    [v7 loadConfigurationWithID:v8 withCompletionQueue:Property handler:v16];
  }

  else
  {
    v14 = ne_log_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 32);
      *buf = 138412290;
      v23 = v15;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "No signature found for configuration identifier %@", buf, 0xCu);
    }

    sub_10000BA0C(NEHelperServer, *(a1 + 40), 22, 0);
  }
}

void sub_100016350(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a5;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v9;
  v12 = [obj countByEnumeratingWithState:&v32 objects:v42 count:16];
  if (v12)
  {
    v13 = v12;
    v29 = v11;
    v30 = v10;
    v14 = *v33;
    while (2)
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v33 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v32 + 1) + 8 * i);
        v17 = [v16 VPN];
        if (v17)
        {
          v18 = v17;
          v19 = *(a1 + 56);
          if (*(a1 + 56) && ([v16 VPN], v5 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(v5, "isEnabled") & 1) == 0))
          {
          }

          else
          {
            v20 = [v16 applicationIdentifier];
            v21 = [v20 isEqual:*(a1 + 32)];

            if (v19)
            {

              if (v21)
              {
                goto LABEL_18;
              }
            }

            else
            {

              if (v21)
              {
LABEL_18:
                v23 = ne_log_obj();
                if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
                {
                  v24 = *(a1 + 40);
                  v25 = [v16 applicationIdentifier];
                  v26 = v25;
                  v27 = *(a1 + 56);
                  *buf = 138412802;
                  v37 = v24;
                  if (v27)
                  {
                    v28 = @" (enabled)";
                  }

                  else
                  {
                    v28 = &stru_10003E738;
                  }

                  v38 = 2112;
                  v39 = v25;
                  v40 = 2112;
                  v41 = v28;
                  _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "%@ Bundle id %@ has VPN configuration%@", buf, 0x20u);
                }

                v22 = 0;
                v11 = v29;
                v10 = v30;
                goto LABEL_24;
              }
            }
          }
        }
      }

      v13 = [obj countByEnumeratingWithState:&v32 objects:v42 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }

    v11 = v29;
    v10 = v30;
  }

  v22 = 7;
LABEL_24:

  sub_10000BA0C(NEHelperServer, *(a1 + 48), v22, 0);
}

void sub_1000165BC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v14 = ne_log_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v26 = *(a1 + 32);
      *buf = 138412546;
      v32 = v26;
      v33 = 2112;
      v34 = v7;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to load configuration with ID %@: %@", buf, 0x16u);
    }

    v12 = *(a1 + 40);
    v13 = 3;
    goto LABEL_12;
  }

  v8 = [v5 VPN];

  if (!v8)
  {
    v15 = ne_log_obj();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v27 = [v5 name];
      *buf = 138412290;
      v32 = v27;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Configuration %@ is not a VPN configuration", buf, 0xCu);
    }

    v12 = *(a1 + 40);
    v13 = 22;
    goto LABEL_12;
  }

  v9 = [v5 VPN];
  v10 = [v9 isEnabled];
  v11 = *(a1 + 64);

  if (v11 == v10)
  {
    v12 = *(a1 + 40);
    v13 = 0;
LABEL_12:
    sub_10000BA0C(NEHelperServer, v12, v13, 0);
    goto LABEL_13;
  }

  v16 = *(a1 + 64);
  v17 = [v5 VPN];
  [v17 setEnabled:v16];

  v19 = +[NEConfigurationManager sharedManagerForAllUsers];
  v21 = *(a1 + 48);
  Property = *(a1 + 56);
  if (Property)
  {
    Property = objc_getProperty(Property, v18, 56, 1);
  }

  v23 = Property;
  v24 = *(a1 + 56);
  if (v24)
  {
    v25 = objc_getProperty(v24, v22, 40, 1);
  }

  else
  {
    v25 = 0;
  }

  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1000168A0;
  v28[3] = &unk_10003D2E8;
  v29 = v5;
  v30 = *(a1 + 40);
  [v19 saveConfigurationToDisk:v29 currentSignature:v21 userUUID:v23 isUpgrade:0 completionQueue:v25 completionHandler:v28];

LABEL_13:
}

void sub_1000168A0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = [*(a1 + 32) name];
      v7 = 138412546;
      v8 = v6;
      v9 = 2112;
      v10 = v3;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to enable configuration %@: %@", &v7, 0x16u);
    }

    v5 = 22;
  }

  else
  {
    v5 = 0;
  }

  sub_10000BA0C(NEHelperServer, *(a1 + 40), v5, 0);
}

uint64_t sub_1000169A0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000169B8(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v168 = a2;
  v8 = a3;
  v176 = a5;
  v177 = a1;
  v166 = v8;
  if (v8)
  {
    v10 = ne_log_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      *&buf[4] = v8;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to load configurations with error %{public}@", buf, 0xCu);
    }

    sub_1000181B4(*(a1 + 32), *(a1 + 40), 0, 22);
    goto LABEL_153;
  }

  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v9, 56, 1);
  }

  v164 = Property;
  v180 = +[NEConfigurationManager networkPrivacyConfigurationName];
  v212 = 0u;
  v213 = 0u;
  v210 = 0u;
  v211 = 0u;
  v12 = v168;
  v13 = [v12 countByEnumeratingWithState:&v210 objects:v228 count:16];
  if (v13)
  {
    v178 = 0;
    v179 = 0;
    v14 = *v211;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v211 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v210 + 1) + 8 * i);
        v17 = [v16 name];
        v18 = [v17 isEqualToString:v180];

        if (v18)
        {
          if (v179)
          {
            v19 = ne_log_obj();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              v27 = [v16 identifier];
              *buf = 138543618;
              *&buf[4] = v180;
              *&buf[12] = 2114;
              *&buf[14] = v27;
              _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Found a duplicate %{public}@ configuration %{public}@, removing", buf, 0x16u);
            }

            v20 = *(v177 + 48);
            v21 = [v16 identifier];
            v22 = sub_1000155F4();
            v207[0] = _NSConcreteStackBlock;
            v207[1] = 3221225472;
            v207[2] = sub_1000183F8;
            v207[3] = &unk_10003D2E8;
            v208 = v180;
            v209 = 0;
            [v20 removeConfigurationFromDisk:v21 completionQueue:v22 completionHandler:v207];

            v23 = v208;
          }

          else
          {
            v179 = v16;
            v23 = [v176 objectForKeyedSubscript:@"ConfigurationProperties"];
            v24 = [v179 identifier];
            v25 = [v23 objectForKeyedSubscript:v24];
            v26 = [v25 objectForKeyedSubscript:@"Signature"];

            v178 = v26;
          }
        }
      }

      v13 = [v12 countByEnumeratingWithState:&v210 objects:v228 count:16];
    }

    while (v13);

    if (v179)
    {
      v174 = 0;
      goto LABEL_25;
    }
  }

  else
  {

    v178 = 0;
  }

  v179 = [[NEConfiguration alloc] initWithName:v180 grade:2];
  v174 = 1;
LABEL_25:
  v28 = [v179 pathController];
  v29 = v28 == 0;

  if (v29)
  {
    v30 = objc_alloc_init(NEPathController);
    [v179 setPathController:v30];
  }

  v31 = [v179 pathController];
  [v31 setEnabled:1];

  if (*(v177 + 56))
  {
    v32 = [NEProcessInfo copyUUIDsForBundleID:*(v177 + 64) uid:0];
    if (([v32 containsObject:*(v177 + 56)] & 1) == 0)
    {
      v33 = ne_log_obj();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        v34 = *(v177 + 56);
        v35 = *(v177 + 64);
        *buf = 138412802;
        *&buf[4] = v34;
        *&buf[12] = 2112;
        *&buf[14] = v35;
        *&buf[22] = 2112;
        v225 = v32;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "Received UUID %@ for %@ does not match cached UUIDs %@", buf, 0x20u);
      }

      v36 = [NELaunchServices bundleProxyForIdentifier:*(v177 + 64) uid:0 plugins:0];
      v37 = v36;
      if (v36)
      {
        v38 = [v36 machOUUIDs];
        v39 = [v37 machOUUIDs];
        v40 = [v39 containsObject:*(v177 + 56)];

        if (v40)
        {
          v41 = ne_log_obj();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
          {
            v42 = *(v177 + 56);
            *buf = 138412546;
            *&buf[4] = v42;
            *&buf[12] = 2112;
            *&buf[14] = v38;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "Received UUID %@ does match launch services UUIDs %@", buf, 0x16u);
          }
        }
      }
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v225 = sub_1000169A0;
  v226 = sub_1000169B0;
  v227 = 0;
  v203 = 0u;
  v204 = 0u;
  v205 = 0u;
  v206 = 0u;
  v43 = [v179 pathController];
  v44 = [v43 pathRules];

  v45 = [v44 countByEnumeratingWithState:&v203 objects:v223 count:16];
  if (v45)
  {
    v46 = *v204;
    while (2)
    {
      for (j = 0; j != v45; j = j + 1)
      {
        if (*v204 != v46)
        {
          objc_enumerationMutation(v44);
        }

        v48 = *(*(&v203 + 1) + 8 * j);
        v49 = [v48 matchSigningIdentifier];
        v50 = [v49 isEqualToString:*(v177 + 64)];

        if (v50)
        {
          objc_storeStrong((*&buf[8] + 40), v48);
          goto LABEL_49;
        }
      }

      v45 = [v44 countByEnumeratingWithState:&v203 objects:v223 count:16];
      if (v45)
      {
        continue;
      }

      break;
    }
  }

LABEL_49:

  if ([*(*&buf[8] + 40) multicastPreferenceSet])
  {
    v51 = [*(*&buf[8] + 40) denyMulticast];
    if (v51)
    {
      v52 = ne_log_obj();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
      {
        v54 = *(v177 + 64);
        v53 = *(v177 + 72);
        *v229 = 138412546;
        v230 = v53;
        v231 = 2112;
        v232 = v54;
        v55 = "Local network denied by preference for %@ (%@)";
LABEL_60:
        _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_INFO, v55, v229, 0x16u);
      }
    }

    else
    {
      v52 = ne_log_obj();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
      {
        v71 = *(v177 + 64);
        v70 = *(v177 + 72);
        *v229 = 138412546;
        v230 = v70;
        v231 = 2112;
        v232 = v71;
        v55 = "Local network allowed by preference for %@ (%@)";
        goto LABEL_60;
      }
    }

    sub_1000181B4(*(v177 + 32), *(v177 + 40), v51 != 1, 0);
    goto LABEL_152;
  }

  v56 = *(v177 + 32);
  v57 = *(v177 + 104);
  v58 = *(v177 + 64);
  v59 = v58;
  if (!v56)
  {

    goto LABEL_71;
  }

  v60 = [RBSProcessPredicate predicateMatchingBundleIdentifier:v58];
  v215 = 0;
  v61 = [RBSProcessHandle handleForPredicate:v60 error:&v215];
  v62 = v215;

  if (!v61)
  {
    v63 = [RBSProcessIdentifier identifierWithPid:v57];
    v214 = 0;
    v61 = [RBSProcessHandle handleForIdentifier:v63 error:&v214];
    v64 = v214;

    v62 = v64;
  }

  v65 = [v61 currentState];
  v66 = [v65 isRunning];

  v67 = [v61 currentState];
  v68 = [v67 endowmentNamespaces];
  if ([v68 containsObject:@"com.apple.frontboard.visibility"])
  {
    v69 = 1;
  }

  else
  {
    v72 = [v61 currentState];
    v73 = [v72 endowmentNamespaces];
    v69 = [v73 containsObject:@"com.apple.launchservices.userfacing"];
  }

  v74 = ne_log_obj();
  if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
  {
    v123 = "not ";
    if (v66)
    {
      v124 = "";
    }

    else
    {
      v124 = "not ";
    }

    *v229 = 138412802;
    v230 = v59;
    v232 = v124;
    v231 = 2080;
    if (v69)
    {
      v123 = "";
    }

    v233 = 2080;
    v234 = v123;
    _os_log_debug_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEBUG, "%@ is %srunning, is %sforeground", v229, 0x20u);
  }

  if ((v66 & v69) != 1)
  {

LABEL_71:
    v80 = ne_log_obj();
    if (os_log_type_enabled(v80, OS_LOG_TYPE_INFO))
    {
      v81 = *(v177 + 64);
      *v229 = 138412290;
      v230 = v81;
      _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_INFO, "Prompt for %@ denied because app is not in foreground, stopping", v229, 0xCu);
    }

    sub_1000181B4(*(v177 + 32), *(v177 + 40), 0, 16);
    goto LABEL_152;
  }

  v75 = ne_log_obj();
  if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
  {
    *v229 = 138412290;
    v230 = v59;
    _os_log_debug_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEBUG, "Allowing alert for %@ that is in foreground", v229, 0xCu);
  }

  v187[0] = _NSConcreteStackBlock;
  v187[1] = 3221225472;
  v187[2] = sub_100018504;
  v187[3] = &unk_10003D428;
  v76 = *(v177 + 40);
  v187[4] = *(v177 + 32);
  v188 = v76;
  v189 = *(v177 + 80);
  v190 = *(v177 + 64);
  v191 = *(v177 + 88);
  v200 = *(v177 + 108);
  v192 = *(v177 + 48);
  v193 = 0;
  v194 = v179;
  v201 = v174;
  v202 = 0;
  v195 = v178;
  v196 = 0;
  v198 = buf;
  v199 = *(v177 + 104);
  v197 = v164;
  v163 = objc_retainBlock(v187);
  v77 = *(v177 + 32);
  if (v77 && (*(v77 + 15) & 1) != 0)
  {
    v78 = sub_1000155F4();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100018B04;
    block[3] = &unk_10003D450;
    v182 = v163;
    dispatch_async(v78, block);

    v79 = v182;
    goto LABEL_151;
  }

  v82 = ne_log_obj();
  if (os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
  {
    v84 = *(v177 + 64);
    v83 = *(v177 + 72);
    *v229 = 138412546;
    v230 = v83;
    v231 = 2112;
    v232 = v84;
    _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_INFO, "Local network preference not yet set, prompting for %@ (%@)", v229, 0x16u);
  }

  if (!objc_opt_class() || !_os_feature_enabled_impl())
  {
    v117 = [NEUserNotification alloc];
    v118 = *(v177 + 72);
    v119 = *(*(*(v177 + 96) + 8) + 40);
    v120 = sub_1000155F4();
    v79 = [v117 initAndShowLocalNetworkAlertWithAppName:v118 reasonString:v119 extensionItem:0 callbackQueue:v120 callbackHandler:v163];

    if (v79)
    {
      v121 = ne_log_obj();
      if (os_log_type_enabled(v121, OS_LOG_TYPE_DEBUG))
      {
        v147 = *(v177 + 72);
        v146 = *(v177 + 80);
        v148 = *(v177 + 64);
        *v229 = 138412802;
        v230 = v147;
        v231 = 2112;
        v232 = v146;
        v233 = 2112;
        v234 = v148;
        _os_log_debug_impl(&_mh_execute_header, v121, OS_LOG_TYPE_DEBUG, "Displayed prompt for %@ (%@.%@)", v229, 0x20u);
      }
    }

    else
    {
      v122 = ne_log_obj();
      if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
      {
        v150 = *(v177 + 72);
        v149 = *(v177 + 80);
        v151 = *(v177 + 64);
        *v229 = 138412802;
        v230 = v150;
        v231 = 2112;
        v232 = v149;
        v233 = 2112;
        v234 = v151;
        _os_log_error_impl(&_mh_execute_header, v122, OS_LOG_TYPE_ERROR, "Failed to display prompt for %@ (%@.%@), prompt already in progress or not supported", v229, 0x20u);
      }

      sub_1000181B4(*(v177 + 32), *(v177 + 40), 0, 36);
      v79 = 0;
    }

    goto LABEL_151;
  }

  v85 = objc_alloc_init(CWFInterface);
  [v85 activate];
  v86 = [v85 knownNetworkInfoForLocalNetworkPromptWithOptions:0];
  v87 = ne_log_obj();
  v160 = v85;
  if (os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
  {
    *v229 = 138412290;
    v230 = v86;
    _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_INFO, "local network wifiInfo: %@", v229, 0xCu);
  }

  v162 = v86;

  v161 = NEResourcesCopyDeviceLocalizedNSString();
  v88 = v86;
  if (!v86)
  {
    v125 = [NSString stringWithFormat:@"%@\n\n%@", *(*(*(v177 + 96) + 8) + 40), v161];
    v79 = 0;
    v126 = *(*(v177 + 96) + 8);
    v127 = *(v126 + 40);
    *(v126 + 40) = v125;
    goto LABEL_143;
  }

  v89 = [v86 mutableCopy];
  v90 = CWFLocalNetworkMapCalloutsKey;
  v91 = [v88 objectForKeyedSubscript:CWFLocalNetworkMapCalloutsKey];
  v171 = [v91 mutableCopy];
  v185 = 0u;
  v186 = 0u;
  v183 = 0u;
  v184 = 0u;
  v92 = v91;
  v93 = [v92 countByEnumeratingWithState:&v183 objects:v222 count:16];
  obj = v92;
  v158 = v90;
  v159 = v89;
  v94 = 0;
  v95 = 0;
  if (!v93)
  {
    v167 = 0;
    goto LABEL_135;
  }

  v167 = 0;
  v170 = *v184;
  v175 = CWFLocalNetworkMapDeviceCountKey;
  v173 = CWFLocalNetworkMapDeviceNamesKey;
  v165 = CWFLocalNetworkMapTitleKey;
  do
  {
    v172 = v93;
    for (k = 0; k != v172; k = k + 1)
    {
      if (*v184 != v170)
      {
        objc_enumerationMutation(obj);
      }

      v97 = *(*(&v183 + 1) + 8 * k);
      v98 = ne_log_obj();
      if (os_log_type_enabled(v98, OS_LOG_TYPE_INFO))
      {
        *v229 = 138412290;
        v230 = v97;
        _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_INFO, "callout: %@", v229, 0xCu);
      }

      v99 = [v97 objectForKeyedSubscript:v175];

      if (v99)
      {
        v100 = [v97 objectForKeyedSubscript:v175];
        v101 = [v100 integerValue];
        if (v101 >= 50)
        {
          v102 = 50;
        }

        else
        {
          v102 = v101;
        }
      }

      else
      {
        v102 = 0;
      }

      v103 = [v97 objectForKeyedSubscript:v173];

      if (v103 && ([v97 objectForKeyedSubscript:v173], v104 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v104, "firstObject"), v105 = objc_claimAutoreleasedReturnValue(), v104, v105))
      {
        v106 = NEResourcesCopyDeviceLocalizedFormatString();
        v107 = [NSString stringWithFormat:v106, v105];

        if (v102 <= 0)
        {
          v111 = 0;
          v167 = 1;
          goto LABEL_108;
        }

        v108 = @"APP_WANTS_LOCAL_NETWORK_DISCOVERED_DEVICES_COUNT_AND_PLURAL";
        if (v102 == 1)
        {
          v108 = @"APP_WANTS_LOCAL_NETWORK_DISCOVERED_DEVICES_COUNT_AND";
        }

        v167 = 1;
      }

      else
      {
        if (v102 <= 0)
        {
          v107 = 0;
          v105 = 0;
          v111 = 0;
          goto LABEL_108;
        }

        v105 = 0;
        v107 = 0;
        v108 = @"APP_WANTS_LOCAL_NETWORK_DISCOVERED_DEVICES_COUNT_PLURAL";
        if (v102 == 1)
        {
          v108 = @"APP_WANTS_LOCAL_NETWORK_DISCOVERED_DEVICES_COUNT";
        }
      }

      v109 = v108;
      v110 = NEResourcesCopyDeviceLocalizedFormatString();
      v111 = [NSString stringWithFormat:v110, v102];
      if (v102 > v94)
      {
        v94 = v102;
      }

      v95 = 1;
LABEL_108:
      if (!(v107 | v111))
      {
        goto LABEL_117;
      }

      v112 = [v97 mutableCopy];
      v113 = v112;
      if (v107)
      {
        [v112 setObject:v107 forKey:@"mapLabelCalloutSubtitleKey"];
        v114 = @"mapLabelCalloutSubtitle2Key";
        if (!v111)
        {
          goto LABEL_114;
        }

LABEL_113:
        [v113 setObject:v111 forKey:v114];
        goto LABEL_114;
      }

      v114 = @"mapLabelCalloutSubtitleKey";
      if (v111)
      {
        goto LABEL_113;
      }

LABEL_114:
      [v171 removeObject:{v97, v114}];
      [v171 addObject:v113];
      v115 = ne_log_obj();
      if (os_log_type_enabled(v115, OS_LOG_TYPE_INFO))
      {
        v116 = [v97 objectForKeyedSubscript:v165];
        *v229 = 138412802;
        v230 = v107;
        v231 = 2112;
        v232 = v111;
        v233 = 2112;
        v234 = v116;
        _os_log_impl(&_mh_execute_header, v115, OS_LOG_TYPE_INFO, "local network name='%@' count='%@' for title='%@'", v229, 0x20u);
      }

LABEL_117:
    }

    v92 = obj;
    v93 = [obj countByEnumeratingWithState:&v183 objects:v222 count:16];
  }

  while (v93);
LABEL_135:

  [v159 setObject:v171 forKey:v158];
  v221[0] = v159;
  v220[0] = @"kTCCNotificationExtensionClientDataKey";
  v220[1] = @"kTCCNotificationExtensionDaemonDataKey";
  v218 = @"kTCCNotificationExtensionDaemonDataInfoString";
  v219 = v161;
  v128 = [NSDictionary dictionaryWithObjects:&v219 forKeys:&v218 count:1];
  v221[1] = v128;
  v129 = [NSDictionary dictionaryWithObjects:v221 forKeys:v220 count:2];

  v79 = objc_alloc_init(NSExtensionItem);
  [v79 setUserInfo:v129];
  v130 = ne_log_obj();
  if (os_log_type_enabled(v130, OS_LOG_TYPE_INFO))
  {
    v131 = [v79 userInfo];
    *v229 = 138412546;
    v230 = v79;
    v231 = 2112;
    v232 = v131;
    _os_log_impl(&_mh_execute_header, v130, OS_LOG_TYPE_INFO, "created extensionItem='%@' with userInfo='%@'", v229, 0x16u);
  }

  v216[0] = @"deviceCount";
  v132 = [NSNumber numberWithInteger:v94];
  v217[0] = v132;
  v216[1] = @"networkCount";
  if (obj)
  {
    v133 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [obj count]);
  }

  else
  {
    v133 = &off_100042AD8;
  }

  v217[1] = v133;
  v216[2] = @"deviceNamesPresent";
  v134 = [NSNumber numberWithBool:v167 & 1];
  v217[2] = v134;
  v216[3] = @"deviceCountsPresent";
  v135 = [NSNumber numberWithBool:v95 & 1];
  v217[3] = v135;
  v136 = [NSDictionary dictionaryWithObjects:v217 forKeys:v216 count:4];
  v137 = *(v177 + 32);
  v138 = *(v137 + 96);
  *(v137 + 96) = v136;

  if (obj)
  {
  }

  v127 = v159;
LABEL_143:

  v139 = [NEUserNotification alloc];
  v140 = *(v177 + 72);
  v141 = *(*(*(v177 + 96) + 8) + 40);
  v142 = sub_1000155F4();
  v143 = [v139 initAndShowLocalNetworkAlertWithAppName:v140 reasonString:v141 extensionItem:v79 callbackQueue:v142 callbackHandler:v163];

  if (v143)
  {
    v144 = ne_log_obj();
    if (os_log_type_enabled(v144, OS_LOG_TYPE_DEBUG))
    {
      v153 = *(v177 + 72);
      v152 = *(v177 + 80);
      v154 = *(v177 + 64);
      *v229 = 138412802;
      v230 = v153;
      v231 = 2112;
      v232 = v152;
      v233 = 2112;
      v234 = v154;
      _os_log_debug_impl(&_mh_execute_header, v144, OS_LOG_TYPE_DEBUG, "Displayed prompt for %@ (%@.%@)", v229, 0x20u);
    }
  }

  else
  {
    v145 = ne_log_obj();
    if (os_log_type_enabled(v145, OS_LOG_TYPE_ERROR))
    {
      v156 = *(v177 + 72);
      v155 = *(v177 + 80);
      v157 = *(v177 + 64);
      *v229 = 138412802;
      v230 = v156;
      v231 = 2112;
      v232 = v155;
      v233 = 2112;
      v234 = v157;
      _os_log_error_impl(&_mh_execute_header, v145, OS_LOG_TYPE_ERROR, "Failed to display prompt for %@ (%@.%@), prompt already in progress or not supported", v229, 0x20u);
    }

    sub_1000181B4(*(v177 + 32), *(v177 + 40), 0, 36);
  }

LABEL_151:
LABEL_152:
  _Block_object_dispose(buf, 8);

LABEL_153:
}

void sub_1000181B4(uint64_t a1, void *a2, _BOOL4 a3, int64_t a4)
{
  v7 = a2;
  if (a1)
  {
    if (a4)
    {
      v8 = 0;
    }

    else
    {
      v8 = xpc_BOOL_create(a3);
    }

    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v22 = v7;
      v23 = 1024;
      LODWORD(v24) = a3;
      _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Draining local network replies for %@ with allowed: %u", buf, 0x12u);
    }

    if (qword_100046B60)
    {
      v10 = [qword_100046B60 objectForKeyedSubscript:v7];
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v11 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = 0;
        v14 = *v18;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v18 != v14)
            {
              objc_enumerationMutation(v10);
            }

            sub_10000BA0C(NEHelperServer, *(*(&v17 + 1) + 8 * i), a4, v8);
          }

          v13 = &v12[v13];
          v12 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
        }

        while (v12);
      }

      else
      {
        v13 = 0;
      }

      [v10 removeAllObjects];
      [qword_100046B60 setObject:0 forKeyedSubscript:v7];
    }

    else
    {
      v13 = 0;
    }

    v16 = ne_log_obj();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218242;
      v22 = v13;
      v23 = 2112;
      v24 = v7;
      _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Drained %llu local network replies for %@", buf, 0x16u);
    }
  }
}

void sub_1000183F8(uint64_t a1, uint64_t a2)
{
  v4 = ne_log_obj();
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v9 = 138543618;
      v10 = v6;
      v11 = 2114;
      v12 = v7;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to remove duplicate %{public}@ configuration with error %{public}@", &v9, 0x16u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = 138543362;
    v10 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Removed duplicate %{public}@ configuration", &v9, 0xCu);
  }
}

void sub_100018504(uint64_t a1, uint64_t a2)
{
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    LODWORD(v72) = a2 == 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "User responded with local network: %u", buf, 8u);
  }

  v6 = objc_getProperty(*(a1 + 32), v5, 96, 1);
  if (v6)
  {
    v8 = v6;
    Property = *(a1 + 32);
    if (Property)
    {
      Property = objc_getProperty(Property, v7, 96, 1);
    }

    v10 = [Property objectForKey:@"deviceCount"];
    v55 = [v10 integerValue];
  }

  else
  {
    v55 = 0;
  }

  v12 = objc_getProperty(*(a1 + 32), v7, 96, 1);
  v13 = *(a1 + 32);
  if (v12)
  {
    if (v13)
    {
      v13 = objc_getProperty(v13, v11, 96, 1);
    }

    v14 = [v13 objectForKey:@"networkCount"];
    v54 = [v14 integerValue];

    v13 = *(a1 + 32);
  }

  else
  {
    v54 = 0;
  }

  v15 = objc_getProperty(v13, v11, 96, 1);
  if (v15)
  {
    v17 = v15;
    v18 = *(a1 + 32);
    if (v18)
    {
      v18 = objc_getProperty(v18, v16, 96, 1);
    }

    v19 = [v18 objectForKey:@"deviceNamesPresent"];
    v53 = [v19 BOOLValue];
  }

  else
  {
    v53 = 0;
  }

  v21 = objc_getProperty(*(a1 + 32), v16, 96, 1);
  v22 = *(a1 + 32);
  if (v21)
  {
    if (v22)
    {
      v22 = objc_getProperty(v22, v20, 96, 1);
    }

    v23 = [v22 objectForKey:@"deviceCountsPresent"];
    v24 = [v23 BOOLValue];

    v22 = *(a1 + 32);
  }

  else
  {
    v24 = 0;
  }

  v25 = v22[12];
  v22[12] = 0;

  if (*(a1 + 32))
  {
    v52 = a2;
    v26 = a2 == 0;
    v27 = *(a1 + 132);
    v28 = *(a1 + 56);
    v30 = *(a1 + 40);
    v29 = *(a1 + 48);
    v31 = *(a1 + 64);
    v32 = v28;
    v33 = v29;
    v34 = v30;
    v35 = objc_alloc_init(NSMutableDictionary);
    v36 = [NSNumber numberWithBool:v26];
    [v35 setObject:v36 forKeyedSubscript:@"allowed"];

    [v35 setObject:v34 forKeyedSubscript:@"identifier"];
    [v35 setObject:v33 forKeyedSubscript:@"teamID"];

    [v35 setObject:v32 forKeyedSubscript:@"bundleID"];
    [v35 setObject:v31 forKeyedSubscript:@"query"];

    v37 = [NSNumber numberWithBool:v31 != 0];
    [v35 setObject:v37 forKeyedSubscript:@"hasQuery"];

    v38 = [NSNumber numberWithBool:v27];
    [v35 setObject:v38 forKeyedSubscript:@"hasEntitlement"];

    v39 = [NSNumber numberWithInteger:v55];
    [v35 setObject:v39 forKeyedSubscript:@"nearbyGenericBonjourDeviceCount"];

    v40 = [NSNumber numberWithInteger:v54];
    [v35 setObject:v40 forKeyedSubscript:@"networkCount"];

    v41 = [NSNumber numberWithBool:v53];
    [v35 setObject:v41 forKeyedSubscript:@"deviceNamesPresent"];

    v42 = [NSNumber numberWithBool:v24];
    [v35 setObject:v42 forKeyedSubscript:@"deviceCountsPresent"];

    v43 = ne_log_obj();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v72 = v35;
      _os_log_debug_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEBUG, "Local network decision: %@", buf, 0xCu);
    }

    AnalyticsSendEvent();
    a2 = v52;
  }

  v44 = a2 == 0;
  v45 = *(a1 + 72);
  v46 = sub_1000155F4();
  v56[0] = _NSConcreteStackBlock;
  v56[1] = 3221225472;
  v56[2] = sub_100018B1C;
  v56[3] = &unk_10003D400;
  v47 = *(a1 + 80);
  v48 = *(a1 + 32);
  v49 = *(a1 + 40);
  v57 = v47;
  v58 = v48;
  v59 = v49;
  v60 = *(a1 + 88);
  v68 = *(a1 + 133);
  v61 = *(a1 + 96);
  v62 = *(a1 + 56);
  v69 = *(a1 + 134);
  v50 = *(a1 + 104);
  v51 = *(a1 + 120);
  v63 = v50;
  v66 = v51;
  v67 = *(a1 + 128);
  v70 = v44;
  v64 = *(a1 + 72);
  v65 = *(a1 + 112);
  [v45 loadConfigurations:0 withFilter:0 completionQueue:v46 completionHandler:v56];
}

void sub_100018B1C(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v9 = a3;
  v10 = a5;
  if (*(a1 + 32))
  {
    v11 = ne_log_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      buffer = 138543362;
      v82 = v9;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to re-load configurations with error %{public}@", &buffer, 0xCu);
    }

    sub_1000181B4(*(a1 + 40), *(a1 + 48), 0, 22);
    goto LABEL_49;
  }

  v12 = *(a1 + 56);
  v13 = [v10 objectForKeyedSubscript:@"ConfigurationProperties"];
  v14 = [*(a1 + 56) identifier];
  v15 = [v13 objectForKeyedSubscript:v14];
  v16 = [v15 objectForKeyedSubscript:@"Signature"];

  v58 = v9;
  v59 = v8;
  v56 = v16;
  v57 = v10;
  if ((*(a1 + 116) & 1) == 0 && ([v16 isEqualToData:*(a1 + 64)] & 1) == 0)
  {
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v17 = v8;
    v18 = [v17 countByEnumeratingWithState:&v73 objects:v85 count:16];
    if (v18)
    {
      v19 = v18;
      v60 = v12;
      v20 = *v74;
      while (2)
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v74 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v73 + 1) + 8 * i);
          v23 = [v22 identifier];
          v24 = [*(a1 + 56) identifier];
          v25 = [v23 isEqual:v24];

          if (v25)
          {
            v12 = v22;

            goto LABEL_17;
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v73 objects:v85 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }

      v12 = v60;
    }

LABEL_17:
  }

  v61 = v12;
  [v12 pathController];
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v55 = v72 = 0u;
  obj = [v55 pathRules];
  v26 = [obj countByEnumeratingWithState:&v69 objects:v84 count:16];
  if (!v26)
  {
    goto LABEL_41;
  }

  v27 = v26;
  v28 = *v70;
  while (2)
  {
    for (j = 0; j != v27; j = j + 1)
    {
      if (*v70 != v28)
      {
        objc_enumerationMutation(obj);
      }

      v30 = *(*(&v69 + 1) + 8 * j);
      v31 = [v30 matchSigningIdentifier];
      if (![v31 isEqualToString:*(a1 + 72)])
      {
        goto LABEL_28;
      }

      v32 = *(a1 + 117);
      if (v32 == 1)
      {
        v62 = [v30 matchPath];
        if ([v62 isEqualToString:*(a1 + 80)])
        {
          goto LABEL_38;
        }

        if (*(a1 + 117))
        {

LABEL_28:
          continue;
        }
      }

      v33 = [v30 matchPath];
      v34 = v33;
      if (!v33 || !*(a1 + 80))
      {

        if (v32)
        {
LABEL_38:
        }

LABEL_40:
        objc_storeStrong((*(*(a1 + 104) + 8) + 40), v30);
        goto LABEL_41;
      }

      v35 = [v30 matchPath];
      v36 = [v35 isEqualToString:*(a1 + 80)];

      if (v32)
      {
      }

      if (v36)
      {
        goto LABEL_40;
      }
    }

    v27 = [obj countByEnumeratingWithState:&v69 objects:v84 count:16];
    if (v27)
    {
      continue;
    }

    break;
  }

LABEL_41:

  v37 = *(*(*(a1 + 104) + 8) + 40);
  v9 = v58;
  if (!v37)
  {
    v38 = [[NEPathRule alloc] initWithSigningIdentifier:*(a1 + 72)];
    [v38 setAllowEmptyDesignatedRequirement:1];
    v39 = [v55 pathRules];

    if (v39)
    {
      v40 = [v55 pathRules];
      v41 = [v40 arrayByAddingObject:v38];
      [v55 setPathRules:v41];
    }

    else
    {
      v83 = v38;
      v40 = [NSArray arrayWithObjects:&v83 count:1];
      [v55 setPathRules:v40];
    }

    if (*(a1 + 80))
    {
      [v38 setMatchPath:?];
    }

    else
    {
      v50 = *(a1 + 112);
      if (v50)
      {
        bzero(&buffer, 0x400uLL);
        if ((proc_pidpath(v50, &buffer, 0x400u) & 0x80000000) == 0)
        {
          v51 = [NSString stringWithUTF8String:&buffer];
          [v38 setMatchPath:v51];

          v52 = ne_log_obj();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
          {
            v53 = [v38 matchPath];
            v54 = *(a1 + 112);
            *buf = 138412546;
            v78 = v53;
            v79 = 1024;
            v80 = v54;
            _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_INFO, "Found path %@ for PID %d", buf, 0x12u);
          }
        }
      }
    }

    v42 = *(*(a1 + 104) + 8);
    v43 = *(v42 + 40);
    *(v42 + 40) = v38;

    v37 = *(*(*(a1 + 104) + 8) + 40);
  }

  [v37 setDenyMulticast:(*(a1 + 118) & 1) == 0];
  [*(*(*(a1 + 104) + 8) + 40) setMulticastPreferenceSet:1];
  v44 = *(a1 + 88);
  v45 = *(a1 + 96);
  v46 = sub_1000155F4();
  v64[0] = _NSConcreteStackBlock;
  v64[1] = 3221225472;
  v64[2] = sub_1000191B0;
  v64[3] = &unk_10003D3D8;
  v47 = *(a1 + 40);
  v48 = *(a1 + 48);
  v65 = v61;
  v66 = v47;
  v67 = v48;
  v68 = *(a1 + 118);
  v49 = v61;
  [v44 saveConfigurationToDisk:v49 currentSignature:v56 userUUID:v45 isUpgrade:0 completionQueue:v46 completionHandler:v64];

  v8 = v59;
  v10 = v57;
LABEL_49:
}

void sub_1000191B0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ne_log_obj();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      v12 = 138543618;
      v13 = v3;
      v14 = 2114;
      v15 = v11;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to save configuration with error %{public}@ for %{public}@", &v12, 0x16u);
    }

    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = 0;
    v9 = 94;
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 56);
      v12 = 67109120;
      LODWORD(v13) = v10;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Got local network response: %u, delivering reply", &v12, 8u);
    }

    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v9 = 0;
  }

  sub_1000181B4(v6, v7, v8, v9);
}

void sub_1000192E8(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("show-local-network-alert", v3);
  v2 = qword_100046B40;
  qword_100046B40 = v1;
}

void sub_10001934C(uint64_t a1)
{
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Installing default local network access policies", buf, 2u);
  }

  if (*(a1 + 48))
  {
    v3 = 0;
    v4 = 0;
  }

  else
  {
    v4 = [*(a1 + 32) mutableCopy];
    v3 = *(a1 + 40);
  }

  v52 = v3;
  v53 = a1;
  v51 = (v4 | v3) == 0;
  if (!(v4 | v3))
  {
    objc_opt_self();
    v5 = objc_alloc_init(NSMutableArray);
    v6 = [LSApplicationRecord enumeratorWithOptions:0];
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v75 objects:buf count:16];
    if (!v7)
    {
      goto LABEL_25;
    }

    v8 = v7;
    v9 = *v76;
    while (1)
    {
      v10 = 0;
      do
      {
        if (*v76 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v75 + 1) + 8 * v10);
        if ([v11 developerType] == 1)
        {
          v12 = [v11 isAppStoreVendable];
          if ([v11 developerType] != 1)
          {
            if (v12)
            {
              goto LABEL_19;
            }

            goto LABEL_20;
          }

          v13 = v12 ^ 1;
        }

        else
        {
          if ([v11 developerType] != 1)
          {
            goto LABEL_19;
          }

          v13 = 0;
        }

        if (([v11 isDeletableSystemApplication] & 1) == 0 && (v13 & 1) == 0)
        {
LABEL_19:
          sub_10001A8D0(NEHelperConfigurationManager, v11);
          v14 = [v11 bundleIdentifier];
          [v5 addObject:v14];
        }

LABEL_20:
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v15 = [v6 countByEnumeratingWithState:&v75 objects:buf count:16];
      v8 = v15;
      if (!v15)
      {
LABEL_25:

        v16 = ne_log_large_obj();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          *&buf[4] = v5;
          _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "All user apps: %@", buf, 0xCu);
        }

        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        v17 = qword_100046B70;
        v18 = [v17 countByEnumeratingWithState:&v71 objects:v81 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v72;
          do
          {
            for (i = 0; i != v19; i = i + 1)
            {
              if (*v72 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = *(*(&v71 + 1) + 8 * i);
              if (([v5 containsObject:v22] & 1) == 0)
              {
                v23 = [LSApplicationRecord alloc];
                v70 = 0;
                v24 = [v23 initWithBundleIdentifier:v22 allowPlaceholder:0 error:&v70];
                v25 = v70;
                v26 = ne_log_obj();
                v27 = v26;
                if (v24)
                {
                  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412290;
                    *&buf[4] = v22;
                    _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "Deny-listing %@", buf, 0xCu);
                  }

                  [v5 addObject:v22];
                }

                else
                {
                  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412290;
                    *&buf[4] = v22;
                    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Not deny-listing %@, not installed yet", buf, 0xCu);
                  }
                }
              }
            }

            v19 = [v17 countByEnumeratingWithState:&v71 objects:v81 count:16];
          }

          while (v19);
        }

        goto LABEL_54;
      }
    }
  }

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v17 = v4;
  v28 = [v17 countByEnumeratingWithState:&v66 objects:v80 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v67;
    do
    {
      for (j = 0; j != v29; j = j + 1)
      {
        if (*v67 != v30)
        {
          objc_enumerationMutation(v17);
        }

        v32 = *(*(&v66 + 1) + 8 * j);
        objc_opt_self();
        v33 = [LSApplicationRecord alloc];
        *buf = 0;
        v34 = [v33 initWithBundleIdentifier:v32 allowPlaceholder:0 error:buf];

        if (v34)
        {
          sub_10001A8D0(NEHelperConfigurationManager, v34);
        }
      }

      v29 = [v17 countByEnumeratingWithState:&v66 objects:v80 count:16];
    }

    while (v29);
  }

  v5 = v17;
LABEL_54:

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v35 = qword_100046B68;
  v36 = [v35 countByEnumeratingWithState:&v62 objects:v79 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v63;
    do
    {
      for (k = 0; k != v37; k = k + 1)
      {
        if (*v63 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = *(*(&v62 + 1) + 8 * k);
        if ([v5 containsObject:v40])
        {
          v41 = ne_log_obj();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            *&buf[4] = v40;
            _os_log_debug_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEBUG, "Allow-listing %@", buf, 0xCu);
          }

          [v5 removeObject:v40];
        }
      }

      v37 = [v35 countByEnumeratingWithState:&v62 objects:v79 count:16];
    }

    while (v37);
  }

  v42 = NEGetRootUUID();
  v43 = +[NEConfigurationManager networkPrivacyConfigurationName];
  v44 = +[NEConfigurationManager sharedManagerForAllUsers];
  v45 = sub_1000155F4();
  v54[0] = _NSConcreteStackBlock;
  v54[1] = 3221225472;
  v54[2] = sub_100019A80;
  v54[3] = &unk_10003D618;
  v55 = v43;
  v56 = v44;
  v60 = *(v53 + 48);
  v61 = v51;
  v57 = v5;
  v58 = v52;
  v59 = v42;
  v46 = v42;
  v47 = v52;
  v48 = v5;
  v49 = v44;
  v50 = v43;
  [v49 loadConfigurations:0 withFilter:0 completionQueue:v45 completionHandler:v54];
}

void sub_100019A80(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v9 = a3;
  v90 = a5;
  if (!v9)
  {
    v10 = objc_alloc_init(NSMutableArray);
    v116 = 0u;
    v117 = 0u;
    v118 = 0u;
    v119 = 0u;
    v11 = v8;
    v12 = [v11 countByEnumeratingWithState:&v116 objects:v128 count:16];
    v85 = v8;
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      v15 = *v117;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v117 != v15)
          {
            objc_enumerationMutation(v11);
          }

          v17 = *(*(&v116 + 1) + 8 * i);
          v18 = [v17 name];
          v19 = [v18 isEqualToString:*(a1 + 32)];

          if (v19)
          {
            if (v14)
            {
              v20 = ne_log_obj();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                v95 = *(a1 + 32);
                v24 = [v17 identifier];
                *buf = 138543618;
                v125 = v95;
                v126 = 2114;
                v127 = v24;
                _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Found a duplicate %{public}@ configuration %{public}@, removing", buf, 0x16u);
              }

              v21 = *(a1 + 40);
              v22 = [v17 identifier];
              v23 = sub_1000155F4();
              v113[0] = _NSConcreteStackBlock;
              v113[1] = 3221225472;
              v113[2] = sub_10001A6B8;
              v113[3] = &unk_10003D2E8;
              v114 = *(a1 + 32);
              v115 = 0;
              [v21 removeConfigurationFromDisk:v22 completionQueue:v23 completionHandler:v113];
            }

            else
            {
              v14 = v17;
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v116 objects:v128 count:16];
      }

      while (v13);

      v25 = v14;
      if (v14)
      {
        goto LABEL_21;
      }
    }

    else
    {
    }

    v25 = [[NEConfiguration alloc] initWithName:*(a1 + 32) grade:2];
    if (!v25)
    {
LABEL_22:
      v26 = [v25 pathController];

      if (!v26)
      {
        v27 = objc_alloc_init(NEPathController);
        [v25 setPathController:v27];
      }

      v28 = [v25 pathController];
      [v28 setEnabled:1];

      v29 = [v25 pathController];
      [v29 setIgnoreRouteRules:1];

      log = v25;
      v30 = [v25 pathController];
      [v30 setIgnoreFallback:1];

      v111 = 0u;
      v112 = 0u;
      v109 = 0u;
      v110 = 0u;
      obj = v10;
      v91 = [obj countByEnumeratingWithState:&v109 objects:v123 count:16];
      if (!v91)
      {
LABEL_94:

        v9 = 0;
        v8 = v85;
        goto LABEL_95;
      }

      v89 = *v110;
LABEL_26:
      v31 = 0;
      while (1)
      {
        if (*v110 != v89)
        {
          objc_enumerationMutation(obj);
        }

        v94 = v31;
        v32 = *(*(&v109 + 1) + 8 * v31);
        v33 = [v90 objectForKeyedSubscript:@"ConfigurationProperties"];
        v34 = [v32 identifier];
        v35 = [v33 objectForKeyedSubscript:v34];
        v93 = [v35 objectForKeyedSubscript:@"Signature"];

        v92 = [v32 pathController];
        v36 = objc_alloc_init(NSMutableArray);
        if ((*(a1 + 72) & 1) == 0)
        {
          v37 = objc_alloc_init(NSMutableArray);
          v38 = [v32 pathController];
          v105 = 0u;
          v106 = 0u;
          v107 = 0u;
          v108 = 0u;
          v88 = v38;
          v39 = [v38 pathRules];
          v40 = [v39 countByEnumeratingWithState:&v105 objects:v122 count:16];
          if (!v40)
          {
            goto LABEL_51;
          }

          v41 = v40;
          v42 = *v106;
          while (1)
          {
            v43 = 0;
            do
            {
              if (*v106 != v42)
              {
                objc_enumerationMutation(v39);
              }

              v44 = *(*(&v105 + 1) + 8 * v43);
              if ([v44 isDefaultPathRule])
              {
                goto LABEL_43;
              }

              if (*(a1 + 73) == 1 && (v45 = *(a1 + 48), [v44 matchSigningIdentifier], v46 = objc_claimAutoreleasedReturnValue(), LOBYTE(v45) = objc_msgSend(v45, "containsObject:", v46), v46, (v45 & 1) == 0))
              {
                v50 = ne_log_obj();
                if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
                {
                  v51 = [v44 matchSigningIdentifier];
                  *buf = 138412290;
                  v125 = v51;
                  v52 = v50;
                  v53 = "Removing rule for %@, not found";
                  goto LABEL_49;
                }
              }

              else
              {
                v47 = *(a1 + 56);
                if (!v47 || ([v44 matchSigningIdentifier], v48 = objc_claimAutoreleasedReturnValue(), v49 = objc_msgSend(v47, "containsObject:", v48), v48, !v49))
                {
                  v54 = [v44 matchSigningIdentifier];
                  [v37 addObject:v54];

LABEL_43:
                  [v36 addObject:v44];
                  goto LABEL_46;
                }

                v50 = ne_log_obj();
                if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
                {
                  v51 = [v44 matchSigningIdentifier];
                  *buf = 138412290;
                  v125 = v51;
                  v52 = v50;
                  v53 = "Removing rule for %@, uninstalled";
LABEL_49:
                  _os_log_debug_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEBUG, v53, buf, 0xCu);
                }
              }

LABEL_46:
              v43 = v43 + 1;
            }

            while (v41 != v43);
            v55 = [v39 countByEnumeratingWithState:&v105 objects:v122 count:16];
            v41 = v55;
            if (!v55)
            {
LABEL_51:

              v56 = ne_log_large_obj();
              if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v125 = v37;
                _os_log_debug_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEBUG, "Existing apps: %@", buf, 0xCu);
              }

              [*(a1 + 48) removeObjectsInArray:v37];
              break;
            }
          }
        }

        v57 = ne_log_large_obj();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
        {
          v84 = *(a1 + 48);
          *buf = 138412290;
          v125 = v84;
          _os_log_debug_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEBUG, "Apps for which we need a policy: %@", buf, 0xCu);
        }

        v103 = 0u;
        v104 = 0u;
        v101 = 0u;
        v102 = 0u;
        v58 = *(a1 + 48);
        v59 = [v58 countByEnumeratingWithState:&v101 objects:v121 count:16];
        v60 = &AnalyticsSendEvent_ptr;
        if (v59)
        {
          break;
        }

LABEL_81:

        [v92 setPathRules:v36];
        v73 = ne_log_obj();
        if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEBUG, "Final rule list:", buf, 2u);
        }

        v98 = 0u;
        v99 = 0u;
        v96 = 0u;
        v97 = 0u;
        v74 = [v92 pathRules];
        v75 = [v74 countByEnumeratingWithState:&v96 objects:v120 count:16];
        if (v75)
        {
          v76 = v75;
          v77 = *v97;
          do
          {
            for (j = 0; j != v76; j = j + 1)
            {
              if (*v97 != v77)
              {
                objc_enumerationMutation(v74);
              }

              v79 = *(*(&v96 + 1) + 8 * j);
              v80 = ne_log_obj();
              if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v125 = v79;
                _os_log_debug_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }
            }

            v76 = [v74 countByEnumeratingWithState:&v96 objects:v120 count:16];
          }

          while (v76);
        }

        v81 = *(a1 + 40);
        v82 = *(a1 + 64);
        v83 = sub_1000155F4();
        [v81 saveConfigurationToDisk:? currentSignature:? userUUID:? isUpgrade:? completionQueue:? completionHandler:?];

        v31 = v94 + 1;
        if ((v94 + 1) == v91)
        {
          v91 = [obj countByEnumeratingWithState:&v109 objects:v123 count:16];
          if (!v91)
          {
            goto LABEL_94;
          }

          goto LABEL_26;
        }
      }

      v61 = v59;
      v62 = *v102;
LABEL_58:
      v63 = 0;
      while (1)
      {
        if (*v102 != v62)
        {
          objc_enumerationMutation(v58);
        }

        v64 = *(*(&v101 + 1) + 8 * v63);
        if (*(a1 + 73) & 1) != 0 || ([qword_100046B70 containsObject:*(*(&v101 + 1) + 8 * v63)])
        {
          goto LABEL_71;
        }

        v65 = [LSApplicationRecord alloc];
        v100 = 0;
        v66 = [v65 initWithBundleIdentifier:v64 allowPlaceholder:0 error:&v100];
        v67 = v100;
        if ([v66 developerType] == 1)
        {
          v68 = [v66 isAppStoreVendable];
          if ([v66 developerType] == 1)
          {
            v69 = v68 ^ 1;
LABEL_68:
            if ([v66 isDeletableSystemApplication] & 1) != 0 || (v69)
            {
LABEL_77:
              v71 = ne_log_obj();
              if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v125 = v64;
                _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_INFO, "Ignoring local network rule for %@, not eligible", buf, 0xCu);
              }

              v60 = &AnalyticsSendEvent_ptr;
              goto LABEL_74;
            }

            goto LABEL_70;
          }

          if ((v68 & 1) == 0)
          {
            goto LABEL_77;
          }
        }

        else if ([v66 developerType] == 1)
        {
          v69 = 0;
          goto LABEL_68;
        }

LABEL_70:

        v60 = &AnalyticsSendEvent_ptr;
LABEL_71:
        v67 = [objc_alloc(v60[323]) initWithSigningIdentifier:v64];
        [v67 setAllowEmptyDesignatedRequirement:1];
        [v67 setDenyMulticast:1];
        [v67 setMulticastPreferenceSet:0];
        v70 = ne_log_obj();
        if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v125 = v64;
          v126 = 2112;
          v127 = v67;
          _os_log_debug_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEBUG, "Created path rule for %@: %@", buf, 0x16u);
        }

        [v36 addObject:v67];
LABEL_74:

        if (v61 == ++v63)
        {
          v72 = [v58 countByEnumeratingWithState:&v101 objects:v121 count:16];
          v61 = v72;
          if (!v72)
          {
            goto LABEL_81;
          }

          goto LABEL_58;
        }
      }
    }

LABEL_21:
    [v10 insertObject:v25 atIndex:0];
    goto LABEL_22;
  }

  log = ne_log_obj();
  if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v125 = v9;
    _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to load configurations with error %@", buf, 0xCu);
  }

LABEL_95:
}