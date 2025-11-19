void sub_1000035BC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    if (*(v1 + 8))
    {
      v3 = ne_log_obj();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(a1 + 40);
        *buf = 138412290;
        v8 = v4;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "hotspot provider software updating - ignore extension failure/exit for %@", buf, 0xCu);
      }

      return;
    }

    WeakRetained = objc_loadWeakRetained((v1 + 16));
  }

  else
  {
    WeakRetained = 0;
  }

  v6 = [WeakRetained managerObject];

  [v6 handleHotspotProviderStopped];
}

void sub_100003800(uint64_t a1, int a2)
{
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "FALSE";
    v6 = *(a1 + 32);
    if (a2)
    {
      v5 = "TRUE";
    }

    v13 = 138412546;
    v14 = v6;
    v15 = 2080;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@: stopWithReason, result: %s", &v13, 0x16u);
  }

  if (a2)
  {
    v7 = 0;
  }

  else
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 32);
      v13 = 138412290;
      v14 = v12;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%@: failed to stop hotspot evaluation provider", &v13, 0xCu);
    }

    v7 = [NSError errorWithDomain:@"NEAgentErrorDomain" code:1 userInfo:0];
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    WeakRetained = objc_loadWeakRetained((v9 + 16));
  }

  else
  {
    WeakRetained = 0;
  }

  v11 = [WeakRetained managerObject];

  [v11 handleHotspotProviderError:v7];
}

void sub_1000039A4(uint64_t a1, int a2)
{
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "FALSE";
    v6 = *(a1 + 32);
    if (a2)
    {
      v5 = "TRUE";
    }

    v13 = 138412546;
    v14 = v6;
    v15 = 2080;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@: stopWithReason, result: %s", &v13, 0x16u);
  }

  if (a2)
  {
    v7 = 0;
  }

  else
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 32);
      v13 = 138412290;
      v14 = v12;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%@: failed to stop hotspot authentication provider", &v13, 0xCu);
    }

    v7 = [NSError errorWithDomain:@"NEAgentErrorDomain" code:1 userInfo:0];
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    WeakRetained = objc_loadWeakRetained((v9 + 16));
  }

  else
  {
    WeakRetained = 0;
  }

  v11 = [WeakRetained managerObject];

  [v11 handleHotspotProviderError:v7];
}

id sub_100003BD4(uint64_t a1, const char *a2)
{
  result = *(a1 + 32);
  if (result)
  {
    result = objc_getProperty(result, a2, 88, 1);
    if (result)
    {
      Property = *(a1 + 32);
      if (Property)
      {
        Property = objc_getProperty(Property, v4, 88, 1);
        v6 = *(a1 + 32);
      }

      else
      {
        v6 = 0;
      }

      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_100003C84;
      v7[3] = &unk_1000246D0;
      v7[4] = v6;
      return [Property startWithCompletion:v7];
    }
  }

  return result;
}

void sub_100003C84(uint64_t a1, int a2)
{
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "FALSE";
    v6 = *(a1 + 32);
    if (a2)
    {
      v5 = "TRUE";
    }

    v13 = 138412546;
    v14 = v6;
    v15 = 2080;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@: startWithCompletion, result: %s", &v13, 0x16u);
  }

  if (a2)
  {
    v7 = 0;
  }

  else
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 32);
      v13 = 138412290;
      v14 = v12;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%@: failed to start hotspot authentication provider", &v13, 0xCu);
    }

    v7 = [NSError errorWithDomain:@"NEAgentErrorDomain" code:1 userInfo:0];
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    WeakRetained = objc_loadWeakRetained((v9 + 16));
  }

  else
  {
    WeakRetained = 0;
  }

  v11 = [WeakRetained managerObject];

  [v11 handleHotspotProviderError:v7];
}

id sub_100003EB4(uint64_t a1, const char *a2)
{
  result = *(a1 + 32);
  if (result)
  {
    result = objc_getProperty(result, a2, 80, 1);
    if (result)
    {
      Property = *(a1 + 32);
      if (Property)
      {
        Property = objc_getProperty(Property, v4, 80, 1);
        v6 = *(a1 + 32);
      }

      else
      {
        v6 = 0;
      }

      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_100003F64;
      v7[3] = &unk_1000246D0;
      v7[4] = v6;
      return [Property startWithCompletion:v7];
    }
  }

  return result;
}

void sub_100003F64(uint64_t a1, int a2)
{
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "FALSE";
    v6 = *(a1 + 32);
    if (a2)
    {
      v5 = "TRUE";
    }

    v13 = 138412546;
    v14 = v6;
    v15 = 2080;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@: startWithCompletion, result: %s", &v13, 0x16u);
  }

  if (a2)
  {
    v7 = 0;
  }

  else
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 32);
      v13 = 138412290;
      v14 = v12;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%@: failed to start hotspot evaluation provider", &v13, 0xCu);
    }

    v7 = [NSError errorWithDomain:@"NEAgentErrorDomain" code:1 userInfo:0];
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    WeakRetained = objc_loadWeakRetained((v9 + 16));
  }

  else
  {
    WeakRetained = 0;
  }

  v11 = [WeakRetained managerObject];

  [v11 handleHotspotProviderError:v7];
}

void sub_100004248(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    objc_setProperty_atomic(v3, a2, *(a1 + 40), 56);
  }
}

id sub_100004378(uint64_t a1, const char *a2)
{
  result = *(a1 + 32);
  if (result)
  {
    Property = objc_getProperty(result, a2, 80, 1);
    result = *(a1 + 32);
    if (Property)
    {
      if (result)
      {
        result = objc_getProperty(result, v4, 80, 1);
        v6 = *(a1 + 32);
      }

      else
      {
        v6 = 0;
      }

      v15 = _NSConcreteStackBlock;
      v16 = 3221225472;
      v17 = sub_1000044B0;
      v18 = &unk_1000246D0;
      v19 = v6;
      v7 = &v15;
      return [result wakeWithCompletion:{v7, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19}];
    }

    if (result)
    {
      result = objc_getProperty(result, v4, 88, 1);
      if (result)
      {
        result = *(a1 + 32);
        if (result)
        {
          result = objc_getProperty(result, v8, 88, 1);
          v9 = *(a1 + 32);
        }

        else
        {
          v9 = 0;
        }

        v10 = _NSConcreteStackBlock;
        v11 = 3221225472;
        v12 = sub_10000458C;
        v13 = &unk_1000246D0;
        v14 = v9;
        v7 = &v10;
        return [result wakeWithCompletion:{v7, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19}];
      }
    }
  }

  return result;
}

void sub_1000044B0(uint64_t a1, int a2)
{
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = "FALSE";
    v6 = *(a1 + 32);
    if (a2)
    {
      v5 = "TRUE";
    }

    v7 = 138412546;
    v8 = v6;
    v9 = 2080;
    v10 = v5;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%@: wakeWithCompletion completed, result %s", &v7, 0x16u);
  }
}

void sub_10000458C(uint64_t a1, int a2)
{
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = "FALSE";
    v6 = *(a1 + 32);
    if (a2)
    {
      v5 = "TRUE";
    }

    v7 = 138412546;
    v8 = v6;
    v9 = 2080;
    v10 = v5;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%@: wakeWithCompletion completed, result %s", &v7, 0x16u);
  }
}

void sub_1000047A8(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    Property = objc_getProperty(v3, a2, 80, 1);
    v6 = *(a1 + 32);
    if (Property)
    {
      if (v6)
      {
        v7 = objc_getProperty(v6, v4, 80, 1);
        v8 = *(a1 + 32);
      }

      else
      {
        v8 = 0;
        v7 = 0;
      }

      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10000494C;
      v17[3] = &unk_1000246A8;
      v17[4] = v8;
      v18 = *(a1 + 40);
      [v7 sleepWithCompletion:v17];
      v9 = v18;
LABEL_11:

      return;
    }

    if (v6 && objc_getProperty(v6, v4, 88, 1))
    {
      v11 = *(a1 + 32);
      if (v11)
      {
        v12 = objc_getProperty(v11, v10, 88, 1);
        v13 = *(a1 + 32);
      }

      else
      {
        v13 = 0;
        v12 = 0;
      }

      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100004A38;
      v15[3] = &unk_1000246A8;
      v15[4] = v13;
      v16 = *(a1 + 40);
      [v12 sleepWithCompletion:v15];
      v9 = v16;
      goto LABEL_11;
    }
  }

  v14 = *(*(a1 + 40) + 16);

  v14();
}

uint64_t sub_10000494C(uint64_t a1, int a2)
{
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = "FAIL";
    v7 = *(a1 + 32);
    if (a2)
    {
      v6 = "TRUE";
    }

    v8 = 138412546;
    v9 = v7;
    v10 = 2080;
    v11 = v6;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%@: sleepWithCompletion completed for hotspot evaluation \t\t\t\t\t\t\tprovider, result: %s", &v8, 0x16u);
  }

  return (*(*(a1 + 40) + 16))();
}

uint64_t sub_100004A38(uint64_t a1, int a2)
{
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = "FAIL";
    v7 = *(a1 + 32);
    if (a2)
    {
      v6 = "TRUE";
    }

    v8 = 138412546;
    v9 = v7;
    v10 = 2080;
    v11 = v6;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%@: sleepWithCompletion completed for hotspot authentication \t\t\t\t\t\t\tprovider, result: %s", &v8, 0x16u);
  }

  return (*(*(a1 + 40) + 16))();
}

void sub_100004C94(id *a1, const char *a2)
{
  v3 = a1[4];
  if (!v3)
  {
    return;
  }

  objc_setProperty_atomic(v3, a2, a1[5], 56);
  v4 = a1[4];
  if (!v4)
  {
    return;
  }

  v5 = v4[3];
  if (v5 != 12)
  {
    if (v5 != 11)
    {
      return;
    }

    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "initializing HostForEvaluationProvider", buf, 2u);
    }

    v8 = a1[4];
    if (!v8)
    {
      return;
    }

    if (objc_getProperty(a1[4], v7, 80, 1))
    {
      goto LABEL_16;
    }

    v10 = [NEHotspotEvaluationProviderHost alloc];
    objc_setProperty_atomic(v8, v11, v10, 80);

    v13 = objc_getProperty(v8, v12, 80, 1);
    v15 = [objc_getProperty(v8 v14];
    v16 = [v15 evaluationProviderBundleIdentifier];
    [v13 initialize:v16];

    [objc_getProperty(v8 v17];
    v19 = v8;
    v20 = 80;
    goto LABEL_15;
  }

  v21 = ne_log_obj();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "initializing HostForAuthenticationProvider", buf, 2u);
  }

  v8 = a1[4];
  if (!v8)
  {
    return;
  }

  if (!objc_getProperty(a1[4], v22, 88, 1))
  {
    v23 = [NEHotspotAuthenticationProviderHost alloc];
    objc_setProperty_atomic(v8, v24, v23, 88);

    v26 = objc_getProperty(v8, v25, 88, 1);
    v28 = [objc_getProperty(v8 v27];
    v29 = [v28 authenticationProviderBundleIdentifier];
    [v26 initialize:v29];

    [objc_getProperty(v8 v30];
    v19 = v8;
    v20 = 88;
LABEL_15:
    v31 = objc_getProperty(v19, v18, v20, 1);
    [v31 setQueue:{objc_getProperty(v8, v32, 24, 1)}];
  }

LABEL_16:
  v33 = a1[4];
  if (!v33)
  {
    return;
  }

  v34 = v33[3];
  if (v34 == 11)
  {
    if (objc_getProperty(v33, v9, 80, 1))
    {
      v35 = ne_log_obj();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        v36 = a1[4];
        *buf = 138412290;
        v61 = v36;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "%@: setting up hotspot evaluation provider", buf, 0xCu);
      }

      v38 = a1[4];
      if (v38)
      {
        Property = objc_getProperty(v38, v37, 80, 1);
        v40 = a1[4];
      }

      else
      {
        v40 = 0;
        Property = 0;
      }

      v54 = _NSConcreteStackBlock;
      v55 = 3221225472;
      v56 = sub_100005170;
      v57 = &unk_1000246A8;
      v58 = v40;
      v41 = &v59;
      v59 = a1[6];
      v42 = &v54;
LABEL_33:
      [Property setupWithCompletion:{v42, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59}];

      return;
    }

    v33 = a1[4];
    if (!v33)
    {
      return;
    }

    v34 = v33[3];
  }

  if (v34 == 12 && objc_getProperty(v33, v9, 88, 1))
  {
    v43 = ne_log_obj();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
    {
      v44 = a1[4];
      *buf = 138412290;
      v61 = v44;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "%@: setting up hotspot authentication provider", buf, 0xCu);
    }

    v46 = a1[4];
    if (v46)
    {
      Property = objc_getProperty(v46, v45, 88, 1);
      v47 = a1[4];
    }

    else
    {
      v47 = 0;
      Property = 0;
    }

    v48 = _NSConcreteStackBlock;
    v49 = 3221225472;
    v50 = sub_100005418;
    v51 = &unk_1000246A8;
    v52 = v47;
    v41 = &v53;
    v53 = a1[6];
    v42 = &v48;
    goto LABEL_33;
  }
}

void sub_100005170(uint64_t a1, unsigned int a2)
{
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138412546;
    v25 = v5;
    v26 = 1024;
    v27 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@: setupWithCompletion result %d", buf, 0x12u);
  }

  if (!a2)
  {
    v9 = ne_log_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    v16 = *(a1 + 32);
    *buf = 138412290;
    v25 = v16;
    v17 = "%@: failed to setup hotspot evaluation provider";
LABEL_16:
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, v17, buf, 0xCu);
    goto LABEL_17;
  }

  if ((sub_10000568C(*(a1 + 32)) & 1) == 0)
  {
    v9 = ne_log_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    v18 = *(a1 + 32);
    *buf = 138412290;
    v25 = v18;
    v17 = "%@: entitlement validation failed";
    goto LABEL_16;
  }

  v7 = sub_100005A04(*(a1 + 32), v6);
  v8 = ne_log_obj();
  v9 = v8;
  if (!v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v19 = *(a1 + 32);
      *buf = 138412290;
      v25 = v19;
      v17 = "%@: failed to get extension process identity";
      goto LABEL_16;
    }

LABEL_17:

    (*(*(a1 + 40) + 16))();
    return;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v20 = *(a1 + 32);
    if (v20)
    {
      Property = objc_getProperty(*(a1 + 32), v10, 64, 1);
    }

    else
    {
      Property = 0;
    }

    v22 = [Property pid];
    *buf = 138412546;
    v25 = v20;
    v26 = 1024;
    v27 = v22;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%@: received extension process identity (pid: %u)", buf, 0x12u);
  }

  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  if (v12)
  {
    v12 = objc_getProperty(v12, v11, 64, 1);
  }

  v23 = v12;
  v14 = v12;
  v15 = [NSArray arrayWithObjects:&v23 count:1];
  (*(v13 + 16))(v13, 1, v15);
}

void sub_100005418(uint64_t a1, int a2)
{
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138412546;
    v22 = v5;
    v23 = 1024;
    v24 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@: setupWithCompletion result %d", buf, 0x12u);
  }

  if (!a2)
  {
    v8 = ne_log_obj();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    v15 = *(a1 + 32);
    *buf = 138412290;
    v22 = v15;
    v16 = "%@: failed to setup hotspot authentication provider";
LABEL_17:
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, v16, buf, 0xCu);
    goto LABEL_18;
  }

  if ((sub_10000568C(*(a1 + 32)) & 1) == 0)
  {
    v8 = ne_log_obj();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    v17 = *(a1 + 32);
    *buf = 138412290;
    v22 = v17;
    v16 = "%@: validation failed";
    goto LABEL_17;
  }

  v7 = sub_100005A04(*(a1 + 32), v6);
  v8 = ne_log_obj();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  if (!v7)
  {
    if (v9)
    {
      v18 = *(a1 + 32);
      *buf = 138412290;
      v22 = v18;
      v16 = "%@: failed to get extension process identity";
      goto LABEL_17;
    }

LABEL_18:

    (*(*(a1 + 40) + 16))();
    return;
  }

  if (v9)
  {
    v19 = *(a1 + 32);
    *buf = 138412290;
    v22 = v19;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%@: received extension process identity", buf, 0xCu);
  }

  Property = *(a1 + 32);
  v12 = *(a1 + 40);
  if (Property)
  {
    Property = objc_getProperty(Property, v10, 64, 1);
  }

  v20 = Property;
  v13 = Property;
  v14 = [NSArray arrayWithObjects:&v20 count:1];
  (*(v12 + 16))(v12, 1, v14);
}

uint64_t sub_10000568C(uint64_t a1)
{
  v1 = a1;
  if (!a1)
  {
    return v1;
  }

  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v22 = v1;
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%@: validating hotspot provider entitlement", buf, 0xCu);
  }

  v3 = @"com.apple.developer.networking.networkextension";
  v5 = sub_100005BC8(v1, v4);
  v6 = ne_log_obj();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v22 = v1;
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%@: finding hotspot provider's entitlement", buf, 0xCu);
    }

    v8 = [v5 valueForEntitlement:@"com.apple.developer.networking.networkextension"];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v22 = v1;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%@: failed to find xpc connection with the hotspot provider", buf, 0xCu);
    }

    v8 = 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v8 count])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          if ([*(*(&v17 + 1) + 8 * i) isEqual:{@"hotspot-provider", v17}])
          {
            v16 = ne_log_obj();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v22 = v1;
              v23 = 2080;
              v24 = "hotspot-provider";
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%@: hotspot provider has [%s] entitlement", buf, 0x16u);
            }

            v1 = 1;
            goto LABEL_25;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v9 = ne_log_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *buf = 138412290;
    v22 = v1;
    v14 = "%@: hotspot provider is missing the required NetworkExtension entitlement";
  }

  else
  {
    v9 = ne_log_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *buf = 138412290;
    v22 = v1;
    v14 = "%@: rejecting un-entitled hotspot provider";
  }

  _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, v14, buf, 0xCu);
LABEL_24:
  v1 = 0;
LABEL_25:

  return v1;
}

uint64_t sub_100005A04(uint64_t a1, const char *a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = sub_100005BC8(a1, a2);
  if (!v3)
  {
    v11 = ne_log_obj();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
LABEL_8:
      v10 = 0;
      goto LABEL_9;
    }

    *buf = 138412290;
    v18 = a1;
    v14 = "%@: unable to derive the process identity, no hotspot provider xpc connection";
LABEL_12:
    _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, v14, buf, 0xCu);
    goto LABEL_8;
  }

  v4 = [NEProcessIdentity alloc];
  v5 = [v3 processIdentifier];
  [v3 auditToken];
  v6 = [v4 initWithPID:v5 auditToken:buf];
  objc_setProperty_atomic(a1, v7, v6, 64);

  if (!objc_getProperty(a1, v8, 64, 1))
  {
    v11 = ne_log_obj();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    *buf = 138412290;
    v18 = a1;
    v14 = "%@: failed to create a NEProcessIdentity object";
    goto LABEL_12;
  }

  v10 = 1;
  v11 = [objc_getProperty(a1 v9];
  v16 = v11;
  v12 = [NSArray arrayWithObjects:&v16 count:1];
  v13 = *(a1 + 72);
  *(a1 + 72) = v12;

LABEL_9:
  return v10;
}

id sub_100005BC8(_DWORD *self, const char *a2)
{
  v3 = self[3];
  if (v3 == 11)
  {
    if (objc_getProperty(self, a2, 80, 1))
    {
      v4 = [objc_getProperty(self a2];
    }

    else
    {
      v4 = 0;
    }

    v3 = self[3];
  }

  else
  {
    v4 = 0;
  }

  if (v3 == 12 && objc_getProperty(self, a2, 88, 1))
  {
    v6 = [objc_getProperty(self v5];

    v4 = v6;
  }

  return v4;
}

void sub_100005CE0(id a1)
{
  qword_10002B708 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NEHotspotPluginDriver];

  _objc_release_x1();
}

void sub_100005D7C(id a1)
{
  qword_10002B6F8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NEHotspotPluginManager];

  _objc_release_x1();
}

void sub_100005F0C(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    if (v3[9])
    {
      v4 = objc_getProperty(v3, a2, 40, 1);
      if (v4)
      {
        v6 = v4;
        v7 = *(a1 + 32);
        v8 = *(a1 + 40);
        v9 = v7 ? objc_getProperty(v7, v5, 40, 1) : 0;
        v10 = [v8 containsObject:v9];

        if (v10)
        {
          v11 = *(a1 + 32);
          if (v11)
          {
            *(v11 + 8) = 0;
            v12 = *(a1 + 32);
            if (v12)
            {
              *(v12 + 9) = 0;
            }
          }

          v13 = ne_log_obj();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            Property = *(a1 + 32);
            if (Property)
            {
              Property = objc_getProperty(Property, v14, 40, 1);
            }

            v16 = 138412290;
            v17 = Property;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "extensions %@ has been updated, idling", &v16, 0xCu);
          }
        }
      }
    }
  }
}

void sub_100006184(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    if ((v3[8] & 1) != 0 && (v3[9] & 1) == 0)
    {
      v4 = objc_getProperty(v3, a2, 40, 1);
      if (v4)
      {
        v6 = v4;
        v7 = *(a1 + 32);
        v8 = *(a1 + 40);
        if (v7)
        {
          Property = objc_getProperty(v7, v5, 40, 1);
        }

        else
        {
          Property = 0;
        }

        v10 = [v8 containsObject:Property];

        if (v10)
        {
          v11 = *(a1 + 32);
          if (v11)
          {
            *(v11 + 9) = 1;
          }
        }
      }
    }
  }
}

void sub_100006364(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    if (v3[8])
    {
      return;
    }

    v4 = *(a1 + 40);
    Property = objc_getProperty(v3, a2, 32, 1);
  }

  else
  {
    Property = 0;
    v4 = *(a1 + 40);
  }

  if ([v4 containsObject:Property])
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      *(v6 + 8) = 1;
    }

    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      if (v9)
      {
        v9 = objc_getProperty(v9, v8, 40, 1);
      }

      v10 = 138412290;
      v11 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Extensions %@ is being updated", &v10, 0xCu);
    }
  }
}

void sub_1000065A8(uint64_t a1, const char *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    Property = objc_getProperty(v3, a2, 32, 1);
  }

  else
  {
    Property = 0;
  }

  if ([v4 containsObject:Property])
  {
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      if (v8)
      {
        v8 = objc_getProperty(v8, v7, 32, 1);
      }

      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "app for plugin type [%@] has been uninstalled", &v9, 0xCu);
    }
  }
}

void sub_100006824(uint64_t a1, int a2)
{
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v9 = 138412546;
    v10 = v5;
    v11 = 1024;
    v12 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@: (evaluation provider) stopWithReason result %d", &v9, 0x12u);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    WeakRetained = objc_loadWeakRetained((v6 + 16));
  }

  else
  {
    WeakRetained = 0;
  }

  v8 = [WeakRetained managerObject];

  [v8 handleHotspotProviderStopped];
}

void sub_100006920(uint64_t a1, int a2)
{
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v9 = 138412546;
    v10 = v5;
    v11 = 1024;
    v12 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@: (authentication provider) stopWithReason result %d", &v9, 0x12u);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    WeakRetained = objc_loadWeakRetained((v6 + 16));
  }

  else
  {
    WeakRetained = 0;
  }

  v8 = [WeakRetained managerObject];

  [v8 handleHotspotProviderStopped];
}

uint64_t sub_100006B54(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100007058(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = 138412546;
      v10 = v8;
      v11 = 2112;
      v12 = v3;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%@ provider failed to process signal request error %@", &v9, 0x16u);
    }

    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = v3;
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = 0;
  }

  sub_100007140(v5, v7, v6);
}

void sub_100007140(void *a1, void *a2, void *a3)
{
  if (a1)
  {
    v5 = a3;
    v6 = a2;
    v7 = [a1 managerObjectFactory];
    v8 = [v7 managerObject];

    [v8 handleProviderError:v6 forMessageID:v5];
  }
}

void sub_1000072D0(uint64_t a1)
{
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1 + 32);
    v7 = 138412290;
    v8 = v6;
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%@ provider stopped", &v7, 0xCu);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = [v3 managerObjectFactory];
    v5 = [v4 managerObject];

    [v5 handleProviderStopped];
  }
}

void sub_100007450(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = 138412546;
      v9 = v7;
      v10 = 2112;
      v11 = v3;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%@ failed to start the provider, error %@", &v8, 0x16u);
    }

    v5 = *(a1 + 32);
    v6 = v3;
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = 0;
  }

  sub_100007538(v5, v6);
}

void sub_100007538(void *a1, void *a2)
{
  if (a1)
  {
    v3 = a2;
    v4 = [a1 managerObjectFactory];
    v5 = [v4 managerObject];

    [v5 handleProviderError:v3];
  }
}

void sub_1000079CC(void *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = [a1 managerObjectFactory];
    v4 = [v3 managerObject];

    [v4 handleProviderInstallationStatus:a2];
  }
}

void sub_100007E18(id a1)
{
  qword_10002B728 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NEAppPushPluginDriver];

  _objc_release_x1();
}

void sub_100007EB4(id a1)
{
  qword_10002B718 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NEAppPushPluginManager];

  _objc_release_x1();
}

uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  v1 = sub_100015AF4();
  if (v1)
  {
    v2 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.neagent"];
    objc_setProperty_atomic(v1, v3, v2, 16);

    if (!objc_getProperty(v1, v4, 16, 1))
    {
      v10 = ne_log_obj();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = 136315138;
        v12 = "com.apple.neagent";
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to create an XPC listener for service %s", &v11, 0xCu);
      }

      exit(1);
    }

    [objc_getProperty(v1 v5];
    [objc_getProperty(v1 v6];
    v7 = +[LSApplicationWorkspace defaultWorkspace];
    [v7 addObserver:v1];
  }

  objc_autoreleasePoolPop(v0);
  v8 = +[NSRunLoop mainRunLoop];
  [v8 run];

  return 0;
}

void sub_100008254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 16));
    v7 = [WeakRetained managerObject];

    v6 = [[NSError alloc] initWithDomain:@"NEAgentURLFilterErrorDomain" code:a3 userInfo:0];
    [v7 setStatus:a2 error:v6];
  }
}

void sub_10000848C(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    objc_setProperty_atomic(v3, a2, 0, 104);
    v3 = *(a1 + 32);
  }

  sub_1000084D4(v3);
}

void sub_1000084D4(void *a1)
{
  if (a1)
  {
    v2 = ne_log_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412546;
      v8 = a1;
      v9 = 2080;
      v10 = "[NEAgentURLFilterExtension extensionDidStop]";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@: %s - enter", &v7, 0x16u);
    }

    if (objc_getProperty(a1, v3, 64, 1))
    {
      Property = objc_getProperty(a1, v4, 64, 1);
      Property[2]();
      objc_setProperty_atomic_copy(a1, v6, 0, 64);
    }
  }
}

void sub_1000085D0(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    if (v3[8])
    {
      v4 = ne_log_obj();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 40);
        *buf = 138412290;
        v14 = v5;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Filter App updating - ignore extension failure/exit for %@", buf, 0xCu);
      }

      return;
    }

    if (objc_getProperty(v3, a2, 56, 1))
    {
      return;
    }

    v7 = *(a1 + 32);
    if (v7)
    {
      objc_getProperty(v7, v6, 24, 1);
      v8 = *(a1 + 32);
    }
  }

  v12 = *(a1 + 40);
  v10 = NECreateTimerSource();
  v11 = *(a1 + 32);
  if (v11)
  {
    objc_setProperty_atomic(v11, v9, v10, 56);
  }
}

void sub_100008750(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    if (objc_getProperty(v3, a2, 56, 1))
    {
      Property = *(a1 + 32);
      if (Property)
      {
        Property = objc_getProperty(Property, v4, 56, 1);
      }

      dispatch_source_cancel(Property);
      v7 = *(a1 + 32);
      if (!v7)
      {
        goto LABEL_12;
      }

      objc_setProperty_atomic(v7, v6, 0, 56);
    }

    v8 = *(a1 + 32);
    if (v8 && (*(v8 + 8) & 1) != 0)
    {
      v9 = ne_log_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 40);
        v13 = 138412290;
        v14 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Filter App updating - ignore extension failure/exit for %@", &v13, 0xCu);
      }

      return;
    }
  }

LABEL_12:
  v11 = ne_log_obj();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = *(a1 + 40);
    v13 = 138412290;
    v14 = v12;
    _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Filter extension exit timer expired for %@ - notify that extension failed", &v13, 0xCu);
  }

  sub_100008254(*(a1 + 32), 0, 1);
}

void sub_100008944(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (v3 && objc_getProperty(v3, a2, 112, 1))
  {
    Property = *(a1 + 32);
    if (Property)
    {
      Property = objc_getProperty(Property, v4, 112, 1);
    }

    [Property resetCache];
  }

  else
  {
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = 138412546;
      v9 = v7;
      v10 = 2080;
      v11 = "[NEAgentURLFilterExtension resetURLFilterCache]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%@: %s - nil engine", &v8, 0x16u);
    }
  }
}

void sub_100008AF4(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (v3 && objc_getProperty(v3, a2, 112, 1))
  {
    Property = *(a1 + 32);
    if (Property)
    {
      Property = objc_getProperty(Property, v4, 112, 1);
    }

    [Property fetchFilterServerParameters];
  }

  else
  {
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = 138412546;
      v9 = v7;
      v10 = 2080;
      v11 = "[NEAgentURLFilterExtension fetchURLFilterServerParameters]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%@: %s - nil engine", &v8, 0x16u);
    }
  }
}

void sub_100008CD8(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (v3 && objc_getProperty(v3, a2, 112, 1))
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      Property = objc_getProperty(v5, v4, 112, 1);
    }

    else
    {
      Property = 0;
    }

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100008E50;
    v9[3] = &unk_1000247C0;
    v10 = *(a1 + 40);
    [Property fetchConnectionWithCompletionHandler:v9];
  }

  else
  {
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      *buf = 138412546;
      v12 = v8;
      v13 = 2080;
      v14 = "[NEAgentURLFilterExtension getURLFilterClientConnectionWithCompletionHandler:completionHandler:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%@: %s - nil engine", buf, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void sub_100008EF0(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (v3 && objc_getProperty(v3, a2, 104, 1))
  {
    v4 = *(a1 + 32);
    v5 = objc_initWeak(location, v4);
    Property = *(a1 + 32);
    if (Property)
    {
      Property = objc_getProperty(Property, v6, 104, 1);
    }

    v8 = Property;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100009058;
    v11[3] = &unk_100024798;
    v11[4] = *(a1 + 32);
    v9 = v4;
    v12 = v9;
    [v8 startWithCompletion:v11];

    objc_destroyWeak(location);
  }

  else
  {
    v10 = ne_log_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LOWORD(location[0]) = 0;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "URL Filter Extension not initialized.", location, 2u);
    }

    sub_100008254(*(a1 + 32), 0, 1);
  }
}

void sub_100009058(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = ne_log_obj();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    *buf = 138413058;
    v17 = v7;
    v18 = 2080;
    v19 = "[NEAgentURLFilterExtension startURLFilter]_block_invoke";
    v20 = 1024;
    v21 = a2;
    v22 = 2112;
    v23 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@: %s - startWithCompletion result %d <%@>", buf, 0x26u);
  }

  if (a2)
  {
    v9 = *(a1 + 32);
    if (v9)
    {
      Property = objc_getProperty(v9, v8, 104, 1);
      v11 = *(a1 + 32);
    }

    else
    {
      v11 = 0;
      Property = 0;
    }

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10000925C;
    v14[3] = &unk_100024770;
    v14[4] = v11;
    v15 = *(a1 + 40);
    [Property fetchPrefilterDataWithTag:0 completion:v14];
  }

  else
  {
    v12 = ne_log_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      *buf = 138412546;
      v17 = v13;
      v18 = 2080;
      v19 = "[NEAgentURLFilterExtension startURLFilter]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%@: %s - Failed to start provider", buf, 0x16u);
    }

    sub_100008254(*(a1 + 32), 3, 1);
  }
}

void sub_10000925C(uint64_t a1, void *a2, void *a3, void *a4, void *a5, unsigned int a6, unsigned int a7, unsigned int a8, void *a9)
{
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a9;
  v20 = ne_log_obj();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = v18;
    v22 = a8;
    v23 = *(a1 + 32);
    v24 = [v15 length];
    v45 = a1;
    v25 = v15;
    v26 = v19;
    v27 = v24;
    v28 = [v16 path];
    v29 = "present";
    *buf = 138414594;
    v50 = v23;
    a8 = v22;
    v18 = v21;
    v52 = "[NEAgentURLFilterExtension startURLFilter]_block_invoke";
    v53 = 2048;
    v51 = 2080;
    if (!v17)
    {
      v29 = "nil";
    }

    v54 = v27;
    v19 = v26;
    v15 = v25;
    a1 = v45;
    v55 = 2112;
    v56 = v28;
    v30 = v28;
    v57 = 2080;
    v58 = v29;
    v59 = 2112;
    v60 = v18;
    v61 = 1024;
    v62 = a6;
    v63 = 1024;
    v64 = a7;
    v65 = 1024;
    v66 = a8;
    v67 = 2112;
    v68 = v19;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%@: %s - fetchPreFilterDataWithCompletion - data <%lu bytes>, file %@, sb_extension <%s>, tag <%@> numberOfBits %d, numberOfHashes %d, murmurSeed %d, error %@", buf, 0x5Au);
  }

  if (!v15 || ![v15 length])
  {
    v31 = [v16 path];

    if (!v17 || !v31)
    {
      v41 = ne_log_obj();
      if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      v42 = *(a1 + 32);
      *buf = 138412546;
      v50 = v42;
      v51 = 2080;
      v52 = "[NEAgentURLFilterExtension startURLFilter]_block_invoke";
      v43 = "%@: %s - Failed first fetch of pre-filter data";
      goto LABEL_24;
    }
  }

  if (*(a1 + 40))
  {
    v33 = objc_alloc_init(NEURLFilterEngine);
    v34 = *(a1 + 40);
    if (v34)
    {
      objc_setProperty_atomic(v34, v32, v33, 112);
    }

    Property = *(a1 + 32);
    if (Property)
    {
      Property = objc_getProperty(Property, v35, 72, 1);
    }

    v38 = [Property urlFilter];
    v39 = *(a1 + 40);
    if (v39)
    {
      v39 = objc_getProperty(v39, v37, 112, 1);
    }

    [v39 setUrlConfiguration:v38];

    if (sub_10000963C(*(a1 + 40), v15, v16, v17, a6, a7, a8, v18))
    {
      v47[0] = _NSConcreteStackBlock;
      v47[1] = 3221225472;
      v47[2] = sub_10000A0D8;
      v47[3] = &unk_100024748;
      v40 = *(a1 + 40);
      v47[4] = *(a1 + 32);
      v48 = v40;
      sub_10000A314(v48, v47);

      goto LABEL_22;
    }

    v41 = ne_log_obj();
    if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
LABEL_21:

      sub_100008254(*(a1 + 32), 3, 1);
      goto LABEL_22;
    }

    v44 = *(a1 + 32);
    *buf = 138412546;
    v50 = v44;
    v51 = 2080;
    v52 = "[NEAgentURLFilterExtension startURLFilter]_block_invoke";
    v43 = "%@: %s - Failed to save first fetch of pre-filter data";
LABEL_24:
    _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, v43, buf, 0x16u);
    goto LABEL_21;
  }

LABEL_22:
}

BOOL sub_10000963C(void *a1, void *a2, void *a3, void *a4, unsigned int a5, unsigned int a6, unsigned int a7, void *a8)
{
  v12 = a2;
  v13 = a3;
  v14 = a4;
  self = a1;
  v72 = a8;
  if (!a1)
  {
    goto LABEL_20;
  }

  memset(&v73, 0, sizeof(v73));
  if (v12 && [v12 length])
  {
    v15 = [v12 bytes];
    st_size_low = [v12 length];
    v17 = 0;
    v18 = -1;
    v19 = -1;
    goto LABEL_29;
  }

  st_size_low = 0;
  v17 = 0;
  v18 = -1;
  v19 = -1;
  if (!v13)
  {
    goto LABEL_28;
  }

  v15 = 0;
  if (!v14)
  {
    goto LABEL_29;
  }

  [v14 UTF8String];
  v20 = sandbox_extension_consume();
  if (v20 == -1)
  {
    v22 = *__error();
    if (strerror_r(v22, __strerrbuf, 0x80uLL))
    {
      __strerrbuf[0] = 0;
    }

    v23 = ne_log_obj();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      *buf = 138413058;
      v75 = self;
      v76 = 2080;
      v77 = "[NEAgentURLFilterExtension savePrefilterData:fileURL:sandboxExtension:numberOfBits:numberOfHashes:murmurSeed:tag:]";
      v78 = 1024;
      *v79 = v22;
      *&v79[4] = 2080;
      *&v79[6] = __strerrbuf;
      _os_log_fault_impl(&_mh_execute_header, v23, OS_LOG_TYPE_FAULT, "%@: %s - Failed to consume sandbox extension from provider: [%d] %s", buf, 0x26u);
    }

    goto LABEL_20;
  }

  v19 = v20;
  getpid();
  v21 = [v13 path];
  v64 = [v21 UTF8String];
  if (sandbox_check())
  {

LABEL_16:
    v26 = *__error();
    if (strerror_r(v26, __strerrbuf, 0x80uLL))
    {
      __strerrbuf[0] = 0;
    }

    v27 = ne_log_obj();
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_19;
    }

    v51 = [v13 path];
    *buf = 138413314;
    v75 = self;
    v76 = 2080;
    v77 = "[NEAgentURLFilterExtension savePrefilterData:fileURL:sandboxExtension:numberOfBits:numberOfHashes:murmurSeed:tag:]";
    v78 = 2080;
    *v79 = [v51 UTF8String];
    *&v79[8] = 1024;
    *&v79[10] = v26;
    v80 = 2080;
    v81 = __strerrbuf;
    v52 = "%@: %s - No read permission to file %s: [%d] %s";
LABEL_58:
    _os_log_fault_impl(&_mh_execute_header, v27, OS_LOG_TYPE_FAULT, v52, buf, 0x30u);

LABEL_19:
LABEL_20:
    v28 = 0;
    goto LABEL_50;
  }

  getpid();
  v24 = [v13 path];
  v65 = [v24 UTF8String];
  v25 = sandbox_check();

  if (v25)
  {
    goto LABEL_16;
  }

  v29 = [v13 path];
  v18 = open([v29 UTF8String], 0);

  if (v18 < 0)
  {
    v50 = *__error();
    if (strerror_r(v50, __strerrbuf, 0x80uLL))
    {
      __strerrbuf[0] = 0;
    }

    v27 = ne_log_obj();
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_19;
    }

    v51 = [v13 path];
    *buf = 138413314;
    v75 = self;
    v76 = 2080;
    v77 = "[NEAgentURLFilterExtension savePrefilterData:fileURL:sandboxExtension:numberOfBits:numberOfHashes:murmurSeed:tag:]";
    v78 = 2080;
    *v79 = [v51 UTF8String];
    *&v79[8] = 1024;
    *&v79[10] = v50;
    v80 = 2080;
    v81 = __strerrbuf;
    v52 = "%@: %s - Failed to open file %s: [%d] %s";
    goto LABEL_58;
  }

  if (fstat(v18, &v73) == -1 || !v73.st_size)
  {
    v54 = *__error();
    if (strerror_r(v54, __strerrbuf, 0x80uLL))
    {
      __strerrbuf[0] = 0;
    }

    v55 = ne_log_obj();
    if (!os_log_type_enabled(v55, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_66;
    }

    v56 = [v13 path];
    v57 = [v56 UTF8String];
    *buf = 138413314;
    v75 = self;
    v76 = 2080;
    v77 = "[NEAgentURLFilterExtension savePrefilterData:fileURL:sandboxExtension:numberOfBits:numberOfHashes:murmurSeed:tag:]";
    v78 = 2080;
    *v79 = v57;
    *&v79[8] = 1024;
    *&v79[10] = v54;
    v80 = 2080;
    v81 = __strerrbuf;
    v58 = "%@: %s - Failed to get file stats for file %s: [%d] %s";
    goto LABEL_68;
  }

  v30 = mmap(0, v73.st_size, 1, 2, v18, 0);
  if (v30 == -1)
  {
    v59 = *__error();
    if (strerror_r(v59, __strerrbuf, 0x80uLL))
    {
      __strerrbuf[0] = 0;
    }

    v55 = ne_log_obj();
    if (!os_log_type_enabled(v55, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_66;
    }

    v56 = [v13 path];
    v63 = [v56 UTF8String];
    *buf = 138413314;
    v75 = self;
    v76 = 2080;
    v77 = "[NEAgentURLFilterExtension savePrefilterData:fileURL:sandboxExtension:numberOfBits:numberOfHashes:murmurSeed:tag:]";
    v78 = 2080;
    *v79 = v63;
    *&v79[8] = 1024;
    *&v79[10] = v59;
    v80 = 2080;
    v81 = __strerrbuf;
    v58 = "%@: %s - mmap failed for file %s: [%d] %s";
LABEL_68:
    _os_log_fault_impl(&_mh_execute_header, v55, OS_LOG_TYPE_FAULT, v58, buf, 0x30u);

LABEL_66:
    close(v18);
    goto LABEL_20;
  }

  v17 = v30;
  v31 = ne_log_obj();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
  {
    st_size = v73.st_size;
    v61 = [v13 path];
    v62 = [v61 UTF8String];
    *__strerrbuf = 138413314;
    v83 = self;
    v84 = 2080;
    v85 = "[NEAgentURLFilterExtension savePrefilterData:fileURL:sandboxExtension:numberOfBits:numberOfHashes:murmurSeed:tag:]";
    v86 = 1024;
    LODWORD(v87) = v18;
    WORD2(v87) = 2048;
    *(&v87 + 6) = st_size;
    HIWORD(v87) = 2080;
    v88 = v62;
    _os_log_debug_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "%@: %s - read mmap <fd %d, size %lld> for file %s", __strerrbuf, 0x30u);
  }

  st_size_low = LODWORD(v73.st_size);
LABEL_28:
  v15 = v17;
LABEL_29:
  v66 = v18;
  v67 = v12;
  v32 = v14;
  v33 = v13;
  v34 = [NSString alloc];
  v36 = [objc_getProperty(self v35];
  v37 = [v36 appBundleIdentifier];
  v38 = [v34 initWithFormat:@"%@%@", @"/private/var/db/urlPrefilter/com.apple.networkextension.url-prefilter-data.temp.", v37];

  v39 = ne_log_obj();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    *__strerrbuf = 138414082;
    v83 = self;
    v84 = 2080;
    v85 = "[NEAgentURLFilterExtension savePrefilterData:fileURL:sandboxExtension:numberOfBits:numberOfHashes:murmurSeed:tag:]";
    v86 = 1024;
    LODWORD(v87) = st_size_low;
    WORD2(v87) = 1024;
    *(&v87 + 6) = a5;
    WORD5(v87) = 1024;
    HIDWORD(v87) = a6;
    LOWORD(v88) = 1024;
    *(&v88 + 2) = a7;
    HIWORD(v88) = 2112;
    v89 = v38;
    v90 = 2112;
    v91 = v72;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "%@: %s - savePrefilterData <%u bytes of data> bits %u hashes %u seed %u - using mmap file %@ tag %@", __strerrbuf, 0x42u);
  }

  v40 = +[NEBloomFilter mmapToFile:data:dataLength:numberOfBits:numberOfHashes:murmurSeed:tag:](NEBloomFilter, "mmapToFile:data:dataLength:numberOfBits:numberOfHashes:murmurSeed:tag:", [v38 UTF8String], v15, st_size_low, a5, a6, a7, v72);
  v13 = v33;
  if (v17 && v73.st_size >= 1)
  {
    munmap(v17, v73.st_size);
  }

  v14 = v32;
  if (v66 < 0)
  {
    goto LABEL_42;
  }

  close(v66);
  v41 = [v13 path];
  v42 = unlink([v41 UTF8String]);

  if (v42)
  {
    v43 = *__error();
    if (strerror_r(v43, __strerrbuf, 0x80uLL))
    {
      __strerrbuf[0] = 0;
    }

    v44 = ne_log_obj();
    if (!os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_41;
    }

    v45 = [v13 path];
    v46 = [v45 UTF8String];
    *buf = 138413314;
    v75 = self;
    v76 = 2080;
    v77 = "[NEAgentURLFilterExtension savePrefilterData:fileURL:sandboxExtension:numberOfBits:numberOfHashes:murmurSeed:tag:]";
    v78 = 2080;
    *v79 = v46;
    *&v79[8] = 1024;
    *&v79[10] = v43;
    v80 = 2080;
    v81 = __strerrbuf;
    _os_log_fault_impl(&_mh_execute_header, v44, OS_LOG_TYPE_FAULT, "%@: %s - Failed to delete file %s: [%d] %s", buf, 0x30u);
    goto LABEL_56;
  }

  v44 = ne_log_obj();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
  {
    v45 = [v13 path];
    v53 = [v45 UTF8String];
    *__strerrbuf = 138412802;
    v83 = self;
    v84 = 2080;
    v85 = "[NEAgentURLFilterExtension savePrefilterData:fileURL:sandboxExtension:numberOfBits:numberOfHashes:murmurSeed:tag:]";
    v86 = 2080;
    *&v87 = v53;
    _os_log_debug_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEBUG, "%@: %s - Deleted file %s", __strerrbuf, 0x20u);
LABEL_56:
  }

LABEL_41:

LABEL_42:
  if (v19 != -1 && sandbox_extension_release() == -1)
  {
    v47 = *__error();
    if (strerror_r(v47, __strerrbuf, 0x80uLL))
    {
      __strerrbuf[0] = 0;
    }

    v48 = ne_log_obj();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
    {
      *buf = 138413058;
      v75 = self;
      v76 = 2080;
      v77 = "[NEAgentURLFilterExtension savePrefilterData:fileURL:sandboxExtension:numberOfBits:numberOfHashes:murmurSeed:tag:]";
      v78 = 1024;
      *v79 = v47;
      *&v79[4] = 2080;
      *&v79[6] = __strerrbuf;
      _os_log_fault_impl(&_mh_execute_header, v48, OS_LOG_TYPE_FAULT, "%@: %s - Failed to release sandbox extension from provider: [%d] %s", buf, 0x26u);
    }
  }

  v28 = v40 != 0;

  v12 = v67;
LABEL_50:

  return v28;
}

void sub_10000A0D8(uint64_t a1, int a2)
{
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138412802;
    v25 = v5;
    v26 = 2080;
    v27 = "[NEAgentURLFilterExtension startURLFilter]_block_invoke";
    v28 = 1024;
    v29 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@: %s - updatePrefilterWithCompletionHandler - result %d", buf, 0x1Cu);
  }

  if (a2)
  {
    Property = *(a1 + 40);
    if (Property)
    {
      Property = objc_getProperty(Property, v6, 112, 1);
    }

    [Property getPrefilter];
    v9 = *(a1 + 40);
    if (v9)
    {
      WeakRetained = objc_loadWeakRetained((v9 + 16));
      v11 = [WeakRetained managerObject];

      [v11 acceptAgentClients];
      v12 = *(a1 + 40);
    }

    else
    {
      v12 = 0;
    }

    sub_10000A410(v12, v8);
    v14 = *(a1 + 40);
    if (v14)
    {
      v15 = objc_getProperty(v14, v13, 112, 1);
      v16 = *(a1 + 40);
    }

    else
    {
      v16 = 0;
      v15 = 0;
    }

    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10000A57C;
    v21[3] = &unk_100024720;
    v17 = v16;
    v18 = *(a1 + 32);
    v22 = v17;
    v23 = v18;
    [v15 startFilterWithCompletionHandler:v21];
  }

  else
  {
    v19 = ne_log_obj();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = *(a1 + 32);
      *buf = 138412546;
      v25 = v20;
      v26 = 2080;
      v27 = "[NEAgentURLFilterExtension startURLFilter]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%@: %s - Failed to update session with first fetch of pre-filter data", buf, 0x16u);
    }

    sub_100008254(*(a1 + 32), 3, 1);
  }
}

void sub_10000A314(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = a2;
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412546;
      v8 = a1;
      v9 = 2080;
      v10 = "[NEAgentURLFilterExtension updatePrefilterWithCompletionHandler:]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@: %s - enter", &v7, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 16));
    v6 = [WeakRetained managerObject];

    [v6 updatePrefilterWithCompletionHandler:v3];
  }
}

void sub_10000A410(void *a1, const char *a2)
{
  if (a1 && !objc_getProperty(a1, a2, 120, 1))
  {
    objc_getProperty(a1, v3, 24, 1);
    v4 = NECreateTimerSource();
    objc_setProperty_atomic(a1, v5, v4, 128);

    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v8 = a1;
      v9 = 2080;
      v10 = "[NEAgentURLFilterExtension setFilterBringupTimeout]";
      v11 = 1024;
      v12 = 10;
      _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%@: %s - Filter bringup timeout scheduled <interval %d secs>", buf, 0x1Cu);
    }
  }
}

void sub_10000A57C(uint64_t a1, void *a2)
{
  v3 = a2;
  sub_10000A6EC(*(a1 + 32), v4);
  if (v3)
  {
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 40);
      v13 = 138412802;
      v14 = v12;
      v15 = 2080;
      v16 = "[NEAgentURLFilterExtension startURLFilter]_block_invoke";
      v17 = 2112;
      v18 = v3;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%@: %s - Failed to startFilter <%@>", &v13, 0x20u);
    }

    v7 = [v3 domain];
    if ([v7 isEqual:@"NEMembershipCheckerErrorDomain"])
    {
      if ([v3 code] == 2)
      {

LABEL_11:
        v10 = 3;
        goto LABEL_12;
      }

      v11 = [v3 code];

      if (v11 == 3)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }

    v10 = 1;
LABEL_12:
    v8 = *(a1 + 40);
    v9 = 3;
    goto LABEL_13;
  }

  sub_10000A75C(*(a1 + 40), v5);
  v8 = *(a1 + 40);
  v9 = 2;
  v10 = 0;
LABEL_13:
  sub_100008254(v8, v9, v10);
}

void sub_10000A6EC(void *a1, const char *a2)
{
  if (a1 && objc_getProperty(a1, a2, 120, 1))
  {
    Property = objc_getProperty(a1, v3, 120, 1);
    dispatch_source_cancel(Property);

    objc_setProperty_atomic(a1, v5, 0, 120);
  }
}

void sub_10000A75C(void *a1, const char *a2)
{
  if (a1)
  {
    v3 = [objc_getProperty(a1 a2];
    [v3 prefilterFetchInterval];
    v5 = v4;

    if (v5 != 0.0 && !objc_getProperty(a1, v6, 128, 1))
    {
      v8 = [objc_getProperty(a1 v7];
      [v8 prefilterFetchInterval];

      objc_getProperty(a1, v9, 24, 1);
      v10 = NECreateTimerSource();
      objc_setProperty_atomic(a1, v11, v10, 128);
    }
  }
}

void sub_10000A888(uint64_t a1)
{
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 138412802;
    v25 = v3;
    v26 = 2080;
    v27 = "[NEAgentURLFilterExtension schedulePrefilterFetch]_block_invoke";
    v28 = 1024;
    v29 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@: %s - Periodic Prefilter fetch <interval %d secs>", buf, 0x1Cu);
  }

  v6 = *(a1 + 32);
  if (!v6)
  {
    goto LABEL_14;
  }

  Property = objc_getProperty(v6, v5, 128, 1);
  v9 = *(a1 + 32);
  if (!Property)
  {
    goto LABEL_9;
  }

  v10 = v9 ? objc_getProperty(*(a1 + 32), v8, 128, 1) : 0;
  dispatch_source_cancel(v10);
  v12 = *(a1 + 32);
  if (v12)
  {
    objc_setProperty_atomic(v12, v11, 0, 128);
    v9 = *(a1 + 32);
  }

  else
  {
LABEL_14:
    v9 = 0;
  }

LABEL_9:
  v13 = objc_initWeak(buf, v9);
  v15 = *(a1 + 32);
  if (v15)
  {
    v15 = objc_getProperty(v15, v14, 112, 1);
  }

  v16 = v15;
  v17 = [v16 getPrefilterTag];

  v19 = *(a1 + 32);
  if (v19)
  {
    v19 = objc_getProperty(v19, v18, 104, 1);
  }

  v20 = v19;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10000AAB4;
  v22[3] = &unk_100024770;
  v22[4] = *(a1 + 32);
  v21 = v9;
  v23 = v21;
  [v20 fetchPrefilterDataWithTag:v17 completion:v22];

  objc_destroyWeak(buf);
}

void sub_10000AAB4(uint64_t a1, void *a2, void *a3, void *a4, void *a5, unsigned int a6, unsigned int a7, unsigned int a8, void *a9)
{
  v16 = a2;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a9;
  v21 = ne_log_obj();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v38 = v18;
    v22 = a6;
    v23 = v17;
    v24 = a7;
    v25 = a8;
    v26 = v19;
    v27 = v20;
    v28 = *(a1 + 32);
    v29 = [v16 length];
    v30 = "present";
    *buf = 138414594;
    v42 = v28;
    v20 = v27;
    v19 = v26;
    a8 = v25;
    a7 = v24;
    v17 = v23;
    a6 = v22;
    v18 = v38;
    v44 = "[NEAgentURLFilterExtension schedulePrefilterFetch]_block_invoke";
    v45 = 2048;
    v43 = 2080;
    if (!v38)
    {
      v30 = "nil";
    }

    v46 = v29;
    v47 = 2112;
    v48 = v17;
    v49 = 2080;
    v50 = v30;
    v51 = 2112;
    v52 = v19;
    v53 = 1024;
    v54 = a6;
    v55 = 1024;
    v56 = a7;
    v57 = 1024;
    v58 = a8;
    v59 = 2112;
    v60 = v20;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%@: %s - fetchPreFilterDataWithCompletion - data <%lu bytes>, file %@, sb_extension <%s>, tag <%@>,  numberOfBits %d, numberOfHashes  %d, murmurSeed %d, error %@", buf, 0x5Au);
  }

  if (v16 && [v16 length] || (objc_msgSend(v17, "path"), v31 = objc_claimAutoreleasedReturnValue(), v31, v18) && v31)
  {
    v32 = *(a1 + 40);
    if (v32)
    {
      if (sub_10000963C(v32, v16, v17, v18, a6, a7, a8, v19))
      {
        v39[0] = _NSConcreteStackBlock;
        v39[1] = 3221225472;
        v39[2] = sub_10000AE34;
        v39[3] = &unk_100024748;
        v33 = *(a1 + 40);
        v39[4] = *(a1 + 32);
        v40 = v33;
        sub_10000A314(v40, v39);
      }

      else
      {
        v36 = ne_log_obj();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          v37 = *(a1 + 32);
          *buf = 138412546;
          v42 = v37;
          v43 = 2080;
          v44 = "[NEAgentURLFilterExtension schedulePrefilterFetch]_block_invoke";
          _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "%@: %s - fetchPreFilterDataWithCompletion - failed to save prefilter data to file", buf, 0x16u);
        }

        sub_100008254(*(a1 + 32), 3, 1);
      }
    }
  }

  else
  {
    v34 = ne_log_obj();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = *(a1 + 32);
      *buf = 138412546;
      v42 = v35;
      v43 = 2080;
      v44 = "[NEAgentURLFilterExtension schedulePrefilterFetch]_block_invoke";
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%@: %s - Fetched null pre-filter data - skip", buf, 0x16u);
    }
  }
}

void sub_10000AE34(uint64_t a1, int a2)
{
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v10 = 138412802;
    v11 = v5;
    v12 = 2080;
    v13 = "[NEAgentURLFilterExtension schedulePrefilterFetch]_block_invoke";
    v14 = 1024;
    v15 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@: %s - updatePrefilterWithCompletionHandler - result %d", &v10, 0x1Cu);
  }

  if (a2)
  {
    Property = *(a1 + 40);
    if (Property)
    {
      Property = objc_getProperty(Property, v6, 112, 1);
    }

    [Property getPrefilter];
    sub_10000A75C(*(a1 + 40));
  }

  else
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = 138412546;
      v11 = v9;
      v12 = 2080;
      v13 = "[NEAgentURLFilterExtension schedulePrefilterFetch]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%@: %s - Failed to update session with fetched pre-filter data", &v10, 0x16u);
    }

    sub_100008254(*(a1 + 32), 3, 1);
  }
}

void sub_10000AFAC(uint64_t a1)
{
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v13 = 138412802;
    v14 = v9;
    v15 = 2080;
    v16 = "[NEAgentURLFilterExtension setFilterBringupTimeout]_block_invoke";
    v17 = 1024;
    v18 = v10;
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%@: %s - Filter bringup timed out <interval %d secs>", &v13, 0x1Cu);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    if (!objc_getProperty(v4, v3, 120, 1))
    {
      goto LABEL_9;
    }

    Property = *(a1 + 32);
    if (Property)
    {
      Property = objc_getProperty(Property, v5, 120, 1);
    }

    dispatch_source_cancel(Property);
    v4 = *(a1 + 32);
    if (v4)
    {
      objc_setProperty_atomic(v4, v7, 0, 120);
LABEL_9:
      v4 = *(a1 + 32);
      if (v4)
      {
        v4 = objc_getProperty(v4, v5, 112, 1);
      }
    }
  }

  if (([v4 isActive] & 1) == 0)
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      v12 = *(a1 + 40);
      v13 = 138412802;
      v14 = v11;
      v15 = 2080;
      v16 = "[NEAgentURLFilterExtension setFilterBringupTimeout]_block_invoke";
      v17 = 1024;
      v18 = v12;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%@: %s - Failed to bringup filter before timeout of %d seconds", &v13, 0x1Cu);
    }

    sub_100008254(*(a1 + 32), 3, 3);
  }
}

void sub_10000B228(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    objc_setProperty_atomic(v3, a2, *(a1 + 40), 72);
    v5 = *(a1 + 32);
    if (v5)
    {
      if (objc_getProperty(v5, v4, 112, 1))
      {
        v6 = ne_log_obj();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          v17 = *(a1 + 32);
          v18 = [*(a1 + 40) urlFilter];
          *location = 138412802;
          *&location[4] = v17;
          v22 = 2080;
          v23 = "[NEAgentURLFilterExtension updateConfiguration:]_block_invoke";
          v24 = 2112;
          v25 = v18;
          _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%@: %s - Updating config %@", location, 0x20u);
        }

        sub_100008254(*(a1 + 32), 3, 3);
        Property = *(a1 + 32);
        if (Property)
        {
          Property = objc_getProperty(Property, v7, 112, 1);
        }

        [Property stopFilter];
        v9 = *(a1 + 32);
        v10 = objc_initWeak(location, v9);
        sub_10000A410(*(a1 + 32), v11);
        v13 = *(a1 + 32);
        if (v13)
        {
          v13 = objc_getProperty(v13, v12, 112, 1);
        }

        v14 = v13;
        v15 = [*(a1 + 40) urlFilter];
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_10000B44C;
        v19[3] = &unk_1000246F8;
        v16 = v9;
        v20 = v16;
        [v14 setConfiguration:v15 completionHandler:v19];

        objc_destroyWeak(location);
      }
    }
  }
}

void sub_10000B44C(uint64_t a1, void *a2)
{
  v3 = a2;
  sub_10000A6EC(*(a1 + 32), v4);
  if (v3)
  {
    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = 138412802;
      v11 = v9;
      v12 = 2080;
      v13 = "[NEAgentURLFilterExtension updateConfiguration:]_block_invoke";
      v14 = 2112;
      v15 = v3;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%@: %s - Failed to startFilter <%@>", &v10, 0x20u);
    }

    v6 = [v3 domain];
    if ([v6 isEqual:@"NEMembershipCheckerErrorDomain"])
    {
      if ([v3 code] == 2)
      {

LABEL_10:
        v7 = 3;
        goto LABEL_11;
      }

      v8 = [v3 code];

      if (v8 == 3)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

    v7 = 1;
LABEL_11:
    sub_100008254(*(a1 + 32), 3, v7);
  }
}

id sub_10000B630(uint64_t a1, const char *a2)
{
  result = *(a1 + 32);
  if (result)
  {
    result = objc_getProperty(result, a2, 104, 1);
    if (result)
    {
      Property = *(a1 + 32);
      if (Property)
      {
        Property = objc_getProperty(Property, v4, 104, 1);
        v6 = *(a1 + 32);
      }

      else
      {
        v6 = 0;
      }

      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_10000B6E0;
      v7[3] = &unk_1000246D0;
      v7[4] = v6;
      return [Property wakeWithCompletion:v7];
    }
  }

  return result;
}

void sub_10000B6E0(uint64_t a1, int a2)
{
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138412802;
    v7 = v5;
    v8 = 2080;
    v9 = "[NEAgentURLFilterExtension wakeup]_block_invoke_2";
    v10 = 1024;
    v11 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@: %s - wakeWithCompletion completed <result %d>", &v6, 0x1Cu);
  }
}

void sub_10000B874(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (!v3 || !objc_getProperty(v3, a2, 104, 1))
  {
    (*(*(a1 + 40) + 16))();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    Property = objc_getProperty(v5, v4, 104, 1);
    v7 = *(a1 + 32);
  }

  else
  {
    v7 = 0;
    Property = 0;
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000B954;
  v8[3] = &unk_1000246A8;
  v8[4] = v7;
  v9 = *(a1 + 40);
  [Property sleepWithCompletion:v8];
}

void sub_10000B954(uint64_t a1, int a2)
{
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138412802;
    v7 = v5;
    v8 = 2080;
    v9 = "[NEAgentURLFilterExtension sleepWithCompletionHandler:]_block_invoke_2";
    v10 = 1024;
    v11 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@: %s - sleepWithCompletion completed <result %d>", &v6, 0x1Cu);
  }

  if (a2)
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_10000BBC0(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    objc_setProperty_atomic(v3, a2, *(a1 + 40), 72);
    v5 = *(a1 + 32);
    if (v5)
    {
      if (objc_getProperty(v5, v4, 104, 1))
      {
        goto LABEL_16;
      }
    }
  }

  v8 = [NEURLFilterControlProviderHost alloc];
  v9 = *(a1 + 32);
  if (v9)
  {
    objc_setProperty_atomic(v9, v7, v8, 104);
  }

  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v10, 104, 1);
  }

  v12 = *(a1 + 40);
  v13 = Property;
  v14 = [v12 urlFilter];
  v15 = [v14 controlProviderBundleIdentifier];
  [v13 initialize:v15];

  v17 = *(a1 + 32);
  if (v17)
  {
    v17 = objc_getProperty(v17, v16, 104, 1);
    v18 = *(a1 + 32);
  }

  else
  {
    v18 = 0;
  }

  [v17 setDelegate:v18];
  v20 = *(a1 + 32);
  if (v20)
  {
    v20 = objc_getProperty(v20, v19, 104, 1);
  }

  v22 = v20;
  v23 = *(a1 + 32);
  v24 = v23 ? objc_getProperty(v23, v21, 24, 1) : 0;
  [v22 setQueue:v24];

  v26 = *(a1 + 32);
  if (v26 && objc_getProperty(v26, v25, 104, 1))
  {
LABEL_16:
    v27 = *(a1 + 32);
    if (v27)
    {
      v28 = objc_getProperty(v27, v6, 104, 1);
      v29 = *(a1 + 32);
    }

    else
    {
      v29 = 0;
      v28 = 0;
    }

    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_10000BE60;
    v32[3] = &unk_1000246A8;
    v32[4] = v29;
    v33 = *(a1 + 48);
    [v28 setupWithCompletion:v32];
  }

  else
  {
    v30 = ne_log_obj();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = *(a1 + 32);
      *buf = 138412546;
      v35 = v31;
      v36 = 2080;
      v37 = "[NEAgentURLFilterExtension startWithConfiguration:completionHandler:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%@: %s - Failed to create NEURLFilterProviderHost", buf, 0x16u);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void sub_10000BE60(uint64_t a1, int a2)
{
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v43 = *(a1 + 32);
    *buf = 138412802;
    v56 = v43;
    v57 = 2080;
    v58 = "[NEAgentURLFilterExtension startWithConfiguration:completionHandler:]_block_invoke";
    v59 = 1024;
    v60 = a2;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%@: %s - setupWithCompletion result %d", buf, 0x1Cu);
  }

  if (a2)
  {
    v5 = *(a1 + 32);
    if (!v5)
    {
LABEL_30:
      v13 = ne_log_obj();
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_31;
      }

      v46 = *(a1 + 32);
      *buf = 138412546;
      v56 = v46;
      v57 = 2080;
      v58 = "[NEAgentURLFilterExtension startWithConfiguration:completionHandler:]_block_invoke";
      v15 = "%@: %s - Validation failed";
LABEL_43:
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, v15, buf, 0x16u);
      goto LABEL_31;
    }

    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *v49 = 138412290;
      v50 = v5;
      _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%@: Validating", v49, 0xCu);
    }

    v7 = @"com.apple.developer.networking.networkextension";
    v9 = [objc_getProperty(v5 v8];
    v10 = ne_log_obj();
    v11 = v10;
    if (v9)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *v49 = 138412546;
        v50 = v5;
        v51 = 2080;
        v52 = "[NEAgentURLFilterExtension copyValueForEntitlement:]";
        _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%@: %s - retrieve entitlement", v49, 0x16u);
      }

      v12 = [v9 valueForEntitlement:@"com.apple.developer.networking.networkextension"];
    }

    else
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *v49 = 138412546;
        v50 = v5;
        v51 = 2080;
        v52 = "[NEAgentURLFilterExtension copyValueForEntitlement:]";
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%@: %s - nil connection", v49, 0x16u);
      }

      v12 = 0;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v12 count])
    {
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v16 = v12;
      v17 = [v16 countByEnumeratingWithState:&v61 objects:buf count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v62;
LABEL_20:
        v20 = 0;
        while (1)
        {
          if (*v62 != v19)
          {
            objc_enumerationMutation(v16);
          }

          if ([*(*(&v61 + 1) + 8 * v20) isEqual:@"url-filter-provider"])
          {
            break;
          }

          if (v18 == ++v20)
          {
            v18 = [v16 countByEnumeratingWithState:&v61 objects:buf count:16];
            if (v18)
            {
              goto LABEL_20;
            }

            goto LABEL_26;
          }
        }

        v25 = ne_log_obj();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          *v49 = 138412802;
          v50 = v5;
          v51 = 2080;
          v52 = "[NEAgentURLFilterExtension validateExtension]";
          v53 = 2080;
          v54 = "url-filter-provider";
          _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "%@: %s - URL Filter Provider has %s entitlement", v49, 0x20u);
        }

        v27 = *(a1 + 32);
        if (!v27)
        {
          goto LABEL_46;
        }

        v28 = [objc_getProperty(*(a1 + 32) v26];
        if (v28)
        {
          v29 = [NEProcessIdentity alloc];
          v30 = [v28 processIdentifier];
          [v28 auditToken];
          v31 = [v29 initWithPID:v30 auditToken:buf];
          objc_setProperty_atomic(v27, v32, v31, 80);

          if (objc_getProperty(v27, v33, 80, 1))
          {
            v35 = [objc_getProperty(v27 v34];
            *&v61 = v35;
            v36 = [NSArray arrayWithObjects:&v61 count:1];
            v37 = v27[11];
            v27[11] = v36;

            Property = *(a1 + 32);
            v40 = *(a1 + 40);
            if (Property)
            {
              Property = objc_getProperty(Property, v38, 80, 1);
            }

            v48 = Property;
            v41 = Property;
            v42 = [NSArray arrayWithObjects:&v48 count:1];
            (*(v40 + 16))(v40, 1, v42);

            return;
          }

          v44 = ne_log_obj();
          if (!os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_45;
          }

          *buf = 138412290;
          v56 = v27;
          v45 = "%@: Failed to create a NEProcessIdentity object";
        }

        else
        {
          v44 = ne_log_obj();
          if (!os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
LABEL_45:

LABEL_46:
            v13 = ne_log_obj();
            if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_31;
            }

            v47 = *(a1 + 32);
            *buf = 138412546;
            v56 = v47;
            v57 = 2080;
            v58 = "[NEAgentURLFilterExtension startWithConfiguration:completionHandler:]_block_invoke";
            v15 = "%@: %s - Failed to get extension process identity";
            goto LABEL_43;
          }

          *buf = 138412290;
          v56 = v27;
          v45 = "%@: Failed to derive the process identity, no vendor connection available";
        }

        _os_log_error_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, v45, buf, 0xCu);
        goto LABEL_45;
      }

LABEL_26:

      v21 = ne_log_obj();
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_29;
      }

      *v49 = 138412546;
      v50 = v5;
      v51 = 2080;
      v52 = "[NEAgentURLFilterExtension validateExtension]";
      v22 = "%@: %s - URL Filter Provider is missing the required NetworkExtension entitlement";
      v23 = v21;
      v24 = 22;
    }

    else
    {
      v21 = ne_log_obj();
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
LABEL_29:

        goto LABEL_30;
      }

      *v49 = 138412290;
      v50 = v5;
      v22 = "%@: Rejecting un-entitled XPC client";
      v23 = v21;
      v24 = 12;
    }

    _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, v22, v49, v24);
    goto LABEL_29;
  }

  v13 = ne_log_obj();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = *(a1 + 32);
    *buf = 138412546;
    v56 = v14;
    v57 = 2080;
    v58 = "[NEAgentURLFilterExtension startWithConfiguration:completionHandler:]_block_invoke";
    v15 = "%@: %s - Failed to setup provider";
    goto LABEL_43;
  }

LABEL_31:

  (*(*(a1 + 40) + 16))();
}

void sub_10000C614(id a1)
{
  qword_10002B748 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NEURLFilterPluginDriver];

  _objc_release_x1();
}

void sub_10000C6B0(id a1)
{
  qword_10002B738 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NEURLFilterPluginManager];

  _objc_release_x1();
}

void sub_10000C7C0(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    if (*(v1 + 9))
    {
      v3 = *(v1 + 40);
      if (v3)
      {
        v4 = v3;
        v5 = *(a1 + 32);
        v6 = v5 ? *(v5 + 40) : 0;
        v7 = [*(a1 + 40) containsObject:v6];

        if (v7)
        {
          v8 = *(a1 + 32);
          if (v8)
          {
            *(v8 + 8) = 0;
            v9 = *(a1 + 32);
            if (v9)
            {
              *(v9 + 9) = 0;
            }
          }

          v10 = ne_log_obj();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v11 = *(a1 + 32);
            if (v11)
            {
              v11 = *(v11 + 40);
            }

            v12 = 138412290;
            v13 = v11;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Extensions %@ has been updated, idling", &v12, 0xCu);
          }

          sub_100008254(*(a1 + 32), 0, 0);
        }
      }
    }
  }
}

void sub_10000C9A4(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    if ((*(v1 + 8) & 1) != 0 && (*(v1 + 9) & 1) == 0)
    {
      v3 = *(v1 + 40);
      if (v3)
      {
        v4 = v3;
        v5 = *(a1 + 32);
        if (v5)
        {
          v6 = *(v5 + 40);
        }

        else
        {
          v6 = 0;
        }

        v7 = [*(a1 + 40) containsObject:v6];

        if (v7)
        {
          v8 = *(a1 + 32);
          if (v8)
          {
            *(v8 + 9) = 1;
          }
        }
      }
    }
  }
}

id *sub_10000CAEC(id *result)
{
  v1 = result;
  v2 = result[4];
  if (v2)
  {
    if (*(v2 + 8))
    {
      return result;
    }

    v3 = *(v2 + 4);
  }

  else
  {
    v3 = 0;
  }

  result = [result[5] containsObject:v3];
  if (result)
  {
    v5 = v1[4];
    if (v5)
    {
      v5[8] = 1;
      v6 = v1[4];
      if (v6)
      {
        if (objc_getProperty(v6, v4, 56, 1))
        {
          Property = v1[4];
          if (Property)
          {
            Property = objc_getProperty(Property, v7, 56, 1);
          }

          dispatch_source_cancel(Property);
          v10 = v1[4];
          if (v10)
          {
            objc_setProperty_atomic(v10, v9, 0, 56);
          }
        }
      }
    }

    v11 = ne_log_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v1[4];
      if (v12)
      {
        v12 = v12[5];
      }

      *buf = 138412290;
      v18 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Extensions %@ is being updated, stopping", buf, 0xCu);
    }

    sub_100008254(v1[4], 4, 0);
    v14 = v1[4];
    if (v14)
    {
      v14 = objc_getProperty(v14, v13, 104, 1);
      v15 = v1[4];
    }

    else
    {
      v15 = 0;
    }

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10000CC9C;
    v16[3] = &unk_100024640;
    v16[4] = v15;
    return [v14 stopWithReason:16 completion:v16];
  }

  return result;
}

void sub_10000CC9C(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = ne_log_obj();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = 138413058;
    v9 = v7;
    v10 = 2080;
    v11 = "[NEAgentURLFilterExtension handleAppsUpdateBegins:]_block_invoke";
    v12 = 1024;
    v13 = a2;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@: %s - stopWithReason result %d <%@>", &v8, 0x26u);
  }
}

id sub_10000CE48(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = *(v3 + 32);
  }

  else
  {
    v4 = 0;
  }

  result = [v2 containsObject:v4];
  if (result)
  {
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      if (v7)
      {
        v7 = *(v7 + 32);
      }

      *buf = 138412290;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "App for plugin type %@ has been uninstalled, stopping", buf, 0xCu);
    }

    Property = *(a1 + 40);
    if (Property)
    {
      Property = objc_getProperty(Property, v8, 104, 1);
      v10 = *(a1 + 40);
    }

    else
    {
      v10 = 0;
    }

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10000CF8C;
    v11[3] = &unk_100024640;
    v11[4] = v10;
    return [Property stopWithReason:5 completion:v11];
  }

  return result;
}

void sub_10000CF8C(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = ne_log_obj();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = 138413058;
    v9 = v7;
    v10 = 2080;
    v11 = "[NEAgentURLFilterExtension handleAppsUninstalled:]_block_invoke";
    v12 = 1024;
    v13 = a2;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@: %s - stopWithReason result %d <%@>", &v8, 0x26u);
  }
}

void sub_10000D11C(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = ne_log_obj();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v10 = 138413058;
    v11 = v7;
    v12 = 2080;
    v13 = "[NEAgentURLFilterExtension handleCancel]_block_invoke";
    v14 = 1024;
    v15 = a2;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@: %s - stopWithReason result %d <%@>", &v10, 0x26u);
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    objc_setProperty_atomic(v9, v8, 0, 104);
    v9 = *(a1 + 32);
  }

  sub_1000084D4(v9);
}

id sub_10000D374(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (v3 && objc_getProperty(v3, a2, 104, 1))
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      if (objc_getProperty(v5, v4, 56, 1))
      {
        Property = *(a1 + 32);
        if (Property)
        {
          Property = objc_getProperty(Property, v6, 56, 1);
        }

        dispatch_source_cancel(Property);
        v5 = *(a1 + 32);
        if (!v5)
        {
          goto LABEL_23;
        }

        objc_setProperty_atomic(v5, v8, 0, 56);
      }

      v5 = *(a1 + 32);
      if (v5)
      {
        v10 = objc_getProperty(v5, v6, 128, 1);
        v5 = *(a1 + 32);
        if (v10)
        {
          if (v5)
          {
            v5 = objc_getProperty(v5, v9, 128, 1);
          }

          dispatch_source_cancel(v5);
          v5 = *(a1 + 32);
          if (!v5)
          {
            goto LABEL_23;
          }

          objc_setProperty_atomic(v5, v11, 0, 128);
          v5 = *(a1 + 32);
        }

        if (v5)
        {
          v13 = objc_getProperty(v5, v9, 120, 1);
          v5 = *(a1 + 32);
          if (v13)
          {
            if (v5)
            {
              v5 = objc_getProperty(v5, v12, 120, 1);
            }

            dispatch_source_cancel(v5);
            v5 = *(a1 + 32);
            if (!v5)
            {
              goto LABEL_23;
            }

            objc_setProperty_atomic(v5, v14, 0, 120);
            v5 = *(a1 + 32);
          }

          if (v5)
          {
            v5 = objc_getProperty(v5, v12, 112, 1);
          }
        }
      }
    }

LABEL_23:
    [v5 stopFilter];
    v16 = *(a1 + 32);
    if (v16)
    {
      objc_setProperty_atomic_copy(v16, v15, *(a1 + 40), 64);
      v16 = *(a1 + 32);
    }

    return [v16 handleCancel];
  }

  result = *(a1 + 40);
  if (result)
  {
    v18 = *(result + 2);

    return v18();
  }

  return result;
}

void sub_10000E3AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose((v51 - 256), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000E3E4(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = v5;
  if (!a1)
  {
    goto LABEL_15;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = 0;
    v11 = *v18;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v6);
        }

        v13 = [*(a1 + 40) objectForKeyedSubscript:*(*(&v17 + 1) + 8 * i)];
        v14 = v13;
        if (v13)
        {
          ++v9;
          v10 |= [v13 BOOLValue];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
    LOBYTE(v10) = 0;
  }

  if (v9 == [v6 count])
  {
    *a3 = v10 & 1;
    v15 = 1;
  }

  else
  {
LABEL_15:
    v15 = 0;
  }

  return v15;
}

void sub_10000E54C(uint64_t a1)
{
  v23 = 0;
  if (sub_10000E3E4(*(a1 + 32), *(a1 + 40), &v23))
  {
    v2 = [*(a1 + 40) objectAtIndexedSubscript:0];
    v3 = v23;
    v4 = *(a1 + 64);
    v5 = ne_log_obj();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
    if (v3 == 1)
    {
      if (v4)
      {
        if (v6)
        {
          if ([v2 UTF8String])
          {
            v7 = strlen([v2 UTF8String]);
          }

          else
          {
            v7 = 0;
          }

          if ([v2 UTF8String])
          {
            v11 = [v2 UTF8String];
          }

          else
          {
            v11 = "<nil url>";
          }

          if ([*(a1 + 48) UTF8String])
          {
            v15 = [*(a1 + 48) UTF8String];
          }

          else
          {
            v15 = "nil";
          }

          *buf = 136316419;
          v25 = "[NEPIRChecker check:sourceAppBundleId:responseQueue:redactSensitiveLogs:completionHandler:]_block_invoke";
          v26 = 2160;
          *v27 = 1752392040;
          *&v27[8] = 1040;
          *&v27[10] = v7;
          v28 = 2101;
          v29 = v11;
          v30 = 2080;
          v31 = v15;
          v32 = 1024;
          v33 = 0;
          v19 = "%s: URLCHECK: FINAL RESULT: BATCH BLOCKED - %{sensitive, mask.hash, networkextension:string}.*P (app bundleid <%s> pid <%d>)";
LABEL_49:
          v20 = v5;
          v21 = 54;
LABEL_55:
          _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, v19, buf, v21);
          goto LABEL_18;
        }

        goto LABEL_18;
      }

      if (!v6)
      {
        goto LABEL_18;
      }

      if ([v2 UTF8String])
      {
        v9 = strlen([v2 UTF8String]);
      }

      else
      {
        v9 = 0;
      }

      if ([v2 UTF8String])
      {
        v13 = [v2 UTF8String];
      }

      else
      {
        v13 = "<nil url>";
      }

      if ([*(a1 + 48) UTF8String])
      {
        v17 = [*(a1 + 48) UTF8String];
      }

      else
      {
        v17 = "nil";
      }

      *buf = 136316163;
      v25 = "[NEPIRChecker check:sourceAppBundleId:responseQueue:redactSensitiveLogs:completionHandler:]_block_invoke";
      v26 = 1024;
      *v27 = v9;
      *&v27[4] = 2081;
      *&v27[6] = v13;
      v28 = 2080;
      v29 = v17;
      v30 = 1024;
      LODWORD(v31) = 0;
      v19 = "%s: URLCHECK: FINAL RESULT: BATCH BLOCKED - <%d : %{private}s> (app bundleid <%s> pid <%d>)";
    }

    else
    {
      if (v4)
      {
        if (v6)
        {
          if ([v2 UTF8String])
          {
            v8 = strlen([v2 UTF8String]);
          }

          else
          {
            v8 = 0;
          }

          if ([v2 UTF8String])
          {
            v12 = [v2 UTF8String];
          }

          else
          {
            v12 = "<nil url>";
          }

          if ([*(a1 + 48) UTF8String])
          {
            v16 = [*(a1 + 48) UTF8String];
          }

          else
          {
            v16 = "nil";
          }

          *buf = 136316419;
          v25 = "[NEPIRChecker check:sourceAppBundleId:responseQueue:redactSensitiveLogs:completionHandler:]_block_invoke";
          v26 = 2160;
          *v27 = 1752392040;
          *&v27[8] = 1040;
          *&v27[10] = v8;
          v28 = 2101;
          v29 = v12;
          v30 = 2080;
          v31 = v16;
          v32 = 1024;
          v33 = 0;
          v19 = "%s: URLCHECK: FINAL RESULT: BATCH ALLOWED - %{sensitive, mask.hash, networkextension:string}.*P (app bundleid <%s> pid <%d>)";
          goto LABEL_49;
        }

LABEL_18:

        (*(*(a1 + 56) + 16))();
        return;
      }

      if (!v6)
      {
        goto LABEL_18;
      }

      if ([v2 UTF8String])
      {
        v10 = strlen([v2 UTF8String]);
      }

      else
      {
        v10 = 0;
      }

      if ([v2 UTF8String])
      {
        v14 = [v2 UTF8String];
      }

      else
      {
        v14 = "<nil url>";
      }

      if ([*(a1 + 48) UTF8String])
      {
        v18 = [*(a1 + 48) UTF8String];
      }

      else
      {
        v18 = "nil";
      }

      *buf = 136316163;
      v25 = "[NEPIRChecker check:sourceAppBundleId:responseQueue:redactSensitiveLogs:completionHandler:]_block_invoke";
      v26 = 1024;
      *v27 = v10;
      *&v27[4] = 2081;
      *&v27[6] = v14;
      v28 = 2080;
      v29 = v18;
      v30 = 1024;
      LODWORD(v31) = 0;
      v19 = "%s: URLCHECK: FINAL RESULT: BATCH ALLOWED - <%d : %{private}s> (app bundleid <%s> pid <%d>)";
    }

    v20 = v5;
    v21 = 44;
    goto LABEL_55;
  }

  v22 = [[NSError alloc] initWithDomain:@"NEMembershipCheckerErrorDomain" code:1 userInfo:0];
  (*(*(a1 + 56) + 16))();
}

uint64_t sub_10000EA6C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000EA84(uint64_t *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v32 = a1[4];
      *buf = 138412802;
      v36 = v32;
      v37 = 2080;
      v38 = "[NEPIRChecker check:sourceAppBundleId:responseQueue:redactSensitiveLogs:completionHandler:]_block_invoke";
      v39 = 2112;
      v40 = v6;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%@: %s - request returned error: %@", buf, 0x20u);
    }

    v8 = *(a1[8] + 8);
    v9 = v6;
    v10 = *(v8 + 40);
    *(v8 + 40) = v9;
LABEL_23:

    goto LABEL_24;
  }

  v11 = [v5 count];
  if (v11 != [*(*(a1[9] + 8) + 40) count])
  {
    v24 = ne_log_obj();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v33 = a1[4];
      *buf = 138412802;
      v36 = v33;
      v37 = 2080;
      v38 = "[NEPIRChecker check:sourceAppBundleId:responseQueue:redactSensitiveLogs:completionHandler:]_block_invoke";
      v39 = 2112;
      v40 = v5;
      _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%@: %s - request returned with wrong number of results: %@", buf, 0x20u);
    }

    v25 = [[NSError alloc] initWithDomain:@"NEMembershipCheckerErrorDomain" code:1 userInfo:0];
    v26 = *(a1[8] + 8);
    v10 = *(v26 + 40);
    *(v26 + 40) = v25;
    goto LABEL_23;
  }

  if ([v5 count])
  {
    v13 = 0;
    *&v12 = 138412802;
    v34 = v12;
    do
    {
      v14 = [*(*(a1[9] + 8) + 40) objectAtIndexedSubscript:{v13, v34}];
      v15 = [v5 objectAtIndexedSubscript:v13];
      v16 = ne_log_obj();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v19 = a1[4];
        if (v19)
        {
          v20 = *(v19 + 32);
        }

        else
        {
          v20 = 0;
        }

        v21 = a1[5];
        *buf = 138413314;
        v36 = v19;
        v37 = 2080;
        v38 = "[NEPIRChecker check:sourceAppBundleId:responseQueue:redactSensitiveLogs:completionHandler:]_block_invoke";
        v39 = 2112;
        v40 = v20;
        v41 = 2112;
        v42 = v21;
        v43 = 2112;
        v44 = v15;
        _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%@: %s - Received response - useCase: %@ for <%@>: result %@", buf, 0x34u);
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = v15;
        v18 = ne_log_obj();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          v22 = a1[4];
          v23 = [v17 length];
          *buf = v34;
          v36 = v22;
          v37 = 2080;
          v38 = "[NEPIRChecker check:sourceAppBundleId:responseQueue:redactSensitiveLogs:completionHandler:]_block_invoke";
          v39 = 2048;
          v40 = v23;
          _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "%@: %s - valid response data <%lu bytes>", buf, 0x20u);
        }

        *(*(a1[10] + 8) + 24) = 1;
        sub_10000EEC8(a1[4], v14, 1);
      }

      else
      {
        sub_10000EEC8(a1[4], v14, 0);
      }

      ++v13;
    }

    while (v13 < [v5 count]);
  }

LABEL_24:
  if (!*(*(a1[8] + 8) + 40))
  {
    v27 = *(*(a1[10] + 8) + 24);
  }

  (*(a1[7] + 16))();
  v28 = a1[6];
  if (v28)
  {
    v29 = *(v28 + 16);
  }

  else
  {
    v29 = 0;
  }

  dispatch_group_leave(v29);
  v30 = a1[4];
  if (v30)
  {
    v31 = *(v30 + 48);
  }

  else
  {
    v31 = 0;
  }

  [v31 removeObject:a1[6]];
}

void sub_10000EEC8(uint64_t a1, void *a2, uint64_t a3)
{
  if (a1)
  {
    v5 = *(a1 + 40);
    v6 = a2;
    if ([v5 count] >= 0x65)
    {
      v7 = objc_alloc_init(NSMutableDictionary);
      v8 = *(a1 + 40);
      *(a1 + 40) = v7;
    }

    v9 = [NSNumber numberWithBool:a3];
    [*(a1 + 40) setObject:v9 forKeyedSubscript:v6];
  }
}

void sub_10000F088(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 40), a2);
  }
}

void sub_10000F098(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v18 = *(a1 + 32);
      v19 = 138412802;
      v20 = v18;
      v21 = 2080;
      v22 = "[NEPIRChecker resetPIRCache]_block_invoke";
      v23 = 2112;
      v24 = v6;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%@: %s - PIR cache reset failed <%@>", &v19, 0x20u);
    }

    v8 = *(a1 + 32);
    if (v8)
    {
      v9 = 0;
LABEL_17:
      *(v8 + 9) = v9;
      goto LABEL_18;
    }

    goto LABEL_18;
  }

  v10 = ne_log_obj();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (!v11)
    {
      goto LABEL_15;
    }

    v12 = *(a1 + 32);
    if ([v5 status] == 6)
    {
      v13 = "ACTIVE";
    }

    else
    {
      v13 = "INACTIVE";
    }

    v19 = 138413058;
    v20 = v12;
    v21 = 2080;
    v22 = "[NEPIRChecker resetPIRCache]_block_invoke";
    v23 = 2080;
    v24 = v13;
    v25 = 2048;
    v26 = [v5 status];
    v14 = "%@: %s - PIR cache reset completed <%s : %lu>";
    v15 = v10;
    v16 = 42;
  }

  else
  {
    if (!v11)
    {
      goto LABEL_15;
    }

    v17 = *(a1 + 32);
    v19 = 138412546;
    v20 = v17;
    v21 = 2080;
    v22 = "[NEPIRChecker resetPIRCache]_block_invoke";
    v14 = "%@: %s - PIR status returned nil status";
    v15 = v10;
    v16 = 22;
  }

  _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v14, &v19, v16);
LABEL_15:

  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = 1;
    goto LABEL_17;
  }

LABEL_18:
}

void sub_10000F398(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v18 = *(a1 + 32);
      v19 = 138412802;
      v20 = v18;
      v21 = 2080;
      v22 = "[NEPIRChecker fetchServerParameters]_block_invoke";
      v23 = 2112;
      v24 = v6;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%@: %s - PIR refetch params failed <%@>", &v19, 0x20u);
    }

    v8 = *(a1 + 32);
    if (v8)
    {
      v9 = 0;
LABEL_17:
      *(v8 + 9) = v9;
      goto LABEL_18;
    }

    goto LABEL_18;
  }

  v10 = ne_log_obj();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (!v11)
    {
      goto LABEL_15;
    }

    v12 = *(a1 + 32);
    if ([v5 status] == 6)
    {
      v13 = "ACTIVE";
    }

    else
    {
      v13 = "INACTIVE";
    }

    v19 = 138413058;
    v20 = v12;
    v21 = 2080;
    v22 = "[NEPIRChecker fetchServerParameters]_block_invoke";
    v23 = 2080;
    v24 = v13;
    v25 = 2048;
    v26 = [v5 status];
    v14 = "%@: %s - PIR refetch params completed <%s : %lu>";
    v15 = v10;
    v16 = 42;
  }

  else
  {
    if (!v11)
    {
      goto LABEL_15;
    }

    v17 = *(a1 + 32);
    v19 = 138412546;
    v20 = v17;
    v21 = 2080;
    v22 = "[NEPIRChecker fetchServerParameters]_block_invoke";
    v14 = "%@: %s - PIR status returned nil status";
    v15 = v10;
    v16 = 22;
  }

  _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v14, &v19, v16);
LABEL_15:

  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = 1;
    goto LABEL_17;
  }

LABEL_18:
}

void sub_10000F7F0(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 32), a2);
  }
}

void sub_100010164(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v19 = *(a1 + 32);
      v20 = 138412802;
      v21 = v19;
      v22 = 2080;
      v23 = "[NEPIRChecker start:responseQueue:completionHandler:]_block_invoke";
      v24 = 2112;
      v25 = v6;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%@: %s - PIR status returned error <%@>", &v20, 0x20u);
    }

    v8 = [[NSError alloc] initWithDomain:@"NEMembershipCheckerErrorDomain" code:3 userInfo:0];
    v9 = *(a1 + 32);
    if (v9)
    {
      v10 = 0;
LABEL_17:
      *(v9 + 9) = v10;
      goto LABEL_18;
    }

    goto LABEL_18;
  }

  v11 = ne_log_obj();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (!v12)
    {
      goto LABEL_15;
    }

    v13 = *(a1 + 32);
    if ([v5 status] == 6)
    {
      v14 = "ACTIVE";
    }

    else
    {
      v14 = "INACTIVE";
    }

    v20 = 138413058;
    v21 = v13;
    v22 = 2080;
    v23 = "[NEPIRChecker start:responseQueue:completionHandler:]_block_invoke";
    v24 = 2080;
    v25 = v14;
    v26 = 2048;
    v27 = [v5 status];
    v15 = "%@: %s - PIR status returned <%s : %lu>";
    v16 = v11;
    v17 = 42;
  }

  else
  {
    if (!v12)
    {
      goto LABEL_15;
    }

    v18 = *(a1 + 32);
    v20 = 138412546;
    v21 = v18;
    v22 = 2080;
    v23 = "[NEPIRChecker start:responseQueue:completionHandler:]_block_invoke";
    v15 = "%@: %s - PIR status returned nil status";
    v16 = v11;
    v17 = 22;
  }

  _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v15, &v20, v17);
LABEL_15:

  v8 = 0;
  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = 1;
    goto LABEL_17;
  }

LABEL_18:
  (*(*(a1 + 40) + 16))();
}

id sub_1000105A8(id a1)
{
  if (a1)
  {
    v2 = a1;
    objc_sync_enter(v2);
    if (!v2[1])
    {
      v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v4 = dispatch_queue_create("NEURLFilterEngine queue", v3);
      v5 = v2[1];
      v2[1] = v4;
    }

    objc_sync_exit(v2);

    a1 = v2[1];
    v1 = vars8;
  }

  return a1;
}

void sub_100010634(uint64_t a1)
{
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v19 = 138412802;
    v20 = v3;
    v21 = 2080;
    v22 = "[NEURLFilterEngine setConfiguration:completionHandler:]_block_invoke";
    v23 = 2112;
    v24 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@: %s - update configuration %@", &v19, 0x20u);
  }

  [*(a1 + 32) setUrlConfiguration:*(a1 + 40)];
  v5 = *(a1 + 32);
  if (v5)
  {
    *(v5 + 16) = 1;
  }

  v6 = objc_alloc_init(NSMutableArray);
  v7 = [*(a1 + 32) urlConfiguration];
  if (v7 && (v8 = v7, [*(a1 + 32) urlConfiguration], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "checkValidityAndCollectErrors:", v6), v9, v8, v10))
  {
    v11 = objc_alloc_init(NEPIRChecker);
    sub_1000108A4(*(a1 + 32), v11);

    v12 = *(a1 + 32);
    if (v12)
    {
      v13 = v12[10];
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;
    v15 = [v12 urlConfiguration];
    v16 = sub_1000105A8(*(a1 + 32));
    [v14 start:v15 responseQueue:v16 completionHandler:*(a1 + 48)];
  }

  else
  {
    v17 = ne_log_obj();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = *(a1 + 32);
      v19 = 138412802;
      v20 = v18;
      v21 = 2080;
      v22 = "[NEURLFilterEngine setConfiguration:completionHandler:]_block_invoke";
      v23 = 2112;
      v24 = v6;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%@: %s - URL filter configuration invalid <%@>", &v19, 0x20u);
    }

    v15 = [[NSError alloc] initWithDomain:@"NEMembershipCheckerErrorDomain" code:4 userInfo:0];
    (*(*(a1 + 48) + 16))();
  }
}

void sub_1000108A4(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 80), a2);
  }
}

id sub_100010954(uint64_t a1)
{
  v2 = [NSString alloc];
  v3 = [*(a1 + 32) urlConfiguration];
  v4 = [v3 appBundleIdentifier];
  v5 = [v2 initWithFormat:@"%@%@", @"/private/var/db/urlPrefilter/com.apple.networkextension.url-prefilter-data.", v4];
  v6 = *(a1 + 32);
  if (v6)
  {
    objc_storeStrong((v6 + 64), v5);
  }

  v7 = ne_log_obj();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    if (v8)
    {
      v9 = *(v8 + 64);
    }

    else
    {
      v9 = 0;
    }

    *buf = 138412802;
    v19 = v8;
    v20 = 2080;
    v21 = "[NEURLFilterEngine getPrefilter]_block_invoke";
    v22 = 2112;
    v23 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@: %s - getPrefilter using mmap file %@", buf, 0x20u);
  }

  v10 = [NEBloomFilterChecker alloc];
  v11 = *(a1 + 32);
  if (v11)
  {
    v11 = v11[8];
  }

  v12 = v11;
  v13 = [(NEBloomFilter *)v10 initFromFile:v12];
  v14 = *(a1 + 32);
  if (v14)
  {
    objc_storeStrong((v14 + 72), v13);
  }

  v15 = *(a1 + 32);
  if (v15)
  {
    v16 = *(v15 + 80);
  }

  else
  {
    v16 = 0;
  }

  return [v16 resetCache];
}

void sub_100010B90(uint64_t a1)
{
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412546;
    v7 = v3;
    v8 = 2080;
    v9 = "[NEURLFilterEngine resetCache]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@: %s", &v6, 0x16u);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 80);
    if (v5)
    {
      [v5 resetCache];
    }
  }
}

void sub_100010CE8(uint64_t a1)
{
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412546;
    v7 = v3;
    v8 = 2080;
    v9 = "[NEURLFilterEngine fetchFilterServerParameters]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@: %s", &v6, 0x16u);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 80);
    if (v5)
    {
      [v5 fetchServerParameters];
    }
  }
}

uint64_t sub_100010E6C(uint64_t a1)
{
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412546;
    v24 = v3;
    v25 = 2080;
    v26 = "[NEURLFilterEngine fetchConnectionWithCompletionHandler:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@: %s", buf, 0x16u);
  }

  v4 = *(a1 + 32);
  if (v4 && *(v4 + 32))
  {
    v5 = *(a1 + 40);
  }

  else
  {
    v6 = sub_1000105A8(*(a1 + 32));
    v7 = xpc_connection_create(0, v6);
    v8 = *(a1 + 32);
    if (v8)
    {
      objc_storeStrong((v8 + 32), v7);
    }

    v9 = *(a1 + 32);
    if (v9)
    {
      v10 = *(v9 + 32);
    }

    else
    {
      v10 = 0;
    }

    v11 = xpc_endpoint_create(v10);
    v12 = objc_alloc_init(NSXPCListenerEndpoint);
    v13 = *(a1 + 32);
    if (v13)
    {
      objc_storeStrong((v13 + 40), v12);
    }

    v14 = *(a1 + 32);
    if (v14)
    {
      v15 = *(v14 + 40);
    }

    else
    {
      v15 = 0;
    }

    [v15 _setEndpoint:v11];
    v16 = *(a1 + 32);
    if (v16)
    {
      v17 = *(v16 + 32);
    }

    else
    {
      v17 = 0;
    }

    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100011084;
    handler[3] = &unk_1000248B0;
    handler[4] = v16;
    xpc_connection_set_event_handler(v17, handler);
    v18 = *(a1 + 32);
    if (v18)
    {
      v19 = *(v18 + 32);
    }

    else
    {
      v19 = 0;
    }

    xpc_connection_resume(v19);

    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    if (!v4)
    {
      v20 = 0;
      return (*(v5 + 16))(v5, v20);
    }
  }

  v20 = *(v4 + 40);
  return (*(v5 + 16))(v5, v20);
}

void sub_100011084(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v10 = v3;
    v4 = xpc_get_type(v3) == &_xpc_type_connection;
    v3 = v10;
    if (v4)
    {
      v5 = *(a1 + 32);
      v6 = v10;
      if (v5)
      {
        v7 = ne_log_obj();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *&buf[4] = v5;
          *&buf[12] = 2080;
          *&buf[14] = "[NEURLFilterEngine acceptNewClientConnection:]";
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@: %s", buf, 0x16u);
        }

        if (([v5[6] containsObject:v6] & 1) == 0)
        {
          [v5[6] addObject:v6];
        }

        v8 = sub_1000105A8(v5);
        xpc_connection_set_target_queue(v6, v8);

        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3221225472;
        *&buf[16] = sub_100011238;
        v12 = &unk_1000248D8;
        v13 = v5;
        v9 = v6;
        v14 = v9;
        xpc_connection_set_event_handler(v9, buf);
        xpc_connection_resume(v9);
      }

      v3 = v10;
    }
  }
}

void sub_100011238(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!v3 || xpc_get_type(v3) != &_xpc_type_dictionary)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    if (v5)
    {
      if ([*(v5 + 48) containsObject:v6])
      {
        [*(v5 + 48) removeObject:v6];
      }

      xpc_connection_cancel(v6);
    }

    goto LABEL_136;
  }

  reply = xpc_dictionary_create_reply(v4);
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v133[0] = _NSConcreteStackBlock;
  v133[1] = 3221225472;
  v134 = sub_1000127B0;
  v135 = &unk_100024AC0;
  v136 = reply;
  v10 = v8;
  v137 = v10;
  v11 = reply;
  xdict = v4;
  v129 = v10;
  v132 = v11;
  v130 = v133;
  if (!v9 || xpc_dictionary_get_int64(xdict, "command") != 2)
  {
    goto LABEL_135;
  }

  if (!v132)
  {
    v20 = ne_log_obj();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *v162 = 0;
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Reply dictionary is NULL when handling a source new request", v162, 2u);
    }

    goto LABEL_135;
  }

  v12 = xdict;
  connection = v129;
  v124 = v132;
  v125 = v130;
  v128 = v12;
  __s = xpc_dictionary_get_string(v12, "URL");
  string = xpc_dictionary_get_string(v12, "bundleIdentifier");
  v14 = "nil";
  if (string)
  {
    v14 = string;
  }

  v123 = v14;
  int64 = xpc_dictionary_get_int64(v12, "PID");
  xarray = xpc_dictionary_get_array(v12, "URLPrefiltered");
  v15 = xpc_dictionary_get_BOOL(v12, "redactSensitiveLogs");
  v16 = ne_log_obj();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);
  if (v15)
  {
    if (v17)
    {
      v18 = __s;
      if (__s)
      {
        v19 = strlen(__s);
      }

      else
      {
        v19 = 0;
        v18 = "<nil url>";
      }

      *v162 = 136316419;
      *&v162[4] = "[NEURLFilterEngine handleNewRequest:connection:filloutReply:completionHandler:]";
      *&v162[12] = 2160;
      *&v162[14] = 1752392040;
      *&v162[22] = 1040;
      *&v162[24] = v19;
      *&v162[28] = 2101;
      *&v162[30] = v18;
      v163 = 2080;
      v164 = v123;
      v165 = 1024;
      v166 = int64;
      v104 = "%s: URLCHECK: HANDLING URL CHECK REQ - %{sensitive, mask.hash, networkextension:string}.*P (app bundleid <%s> pid <%d>)";
      v105 = v16;
      v106 = 54;
LABEL_120:
      _os_log_debug_impl(&_mh_execute_header, v105, OS_LOG_TYPE_DEBUG, v104, v162, v106);
    }
  }

  else if (v17)
  {
    v95 = __s;
    if (__s)
    {
      v96 = strlen(__s);
    }

    else
    {
      v96 = 0;
      v95 = "<nil url>";
    }

    *v162 = 136316163;
    *&v162[4] = "[NEURLFilterEngine handleNewRequest:connection:filloutReply:completionHandler:]";
    *&v162[12] = 1024;
    *&v162[14] = v96;
    *&v162[18] = 2081;
    *&v162[20] = v95;
    *&v162[28] = 2080;
    *&v162[30] = v123;
    v163 = 1024;
    LODWORD(v164) = int64;
    v104 = "%s: URLCHECK: HANDLING URL CHECK REQ - <%d : %{private}s> (app bundleid <%s> pid <%d>)";
    v105 = v16;
    v106 = 44;
    goto LABEL_120;
  }

  if (connection)
  {
    xpc_connection_get_pid(connection);
    memset(v162, 0, 32);
    xpc_connection_get_audit_token();
    v21 = NECopySigningIdentifierForPIDwithAuditToken();
    if ([v21 isEqual:@"com.apple.ciphermld"])
    {
      v22 = ne_log_obj();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        *&buf[4] = v9;
        _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "%@: handleNewRequest - Allow ciphermld requests", buf, 0xCu);
      }

      xpc_dictionary_set_int64(v124, "verdict", 1);
      v134(v125);

      goto LABEL_134;
    }
  }

  if (!__s)
  {
    v40 = ne_log_obj();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      *v162 = 138412290;
      *&v162[4] = v9;
      _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "%@: handleNewRequest - no url", v162, 0xCu);
    }

    xpc_dictionary_set_int64(v124, "error", 3);
    v134(v125);
    goto LABEL_134;
  }

  if (!v9[9])
  {
    v41 = [v9 urlConfiguration];
    v42 = [v41 shouldFailClosed];

    v43 = ne_log_obj();
    v44 = os_log_type_enabled(v43, OS_LOG_TYPE_ERROR);
    if (v42)
    {
      if (v44)
      {
        *v162 = 138412290;
        *&v162[4] = v9;
        _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "%@: handleNewRequest - FINAL RESULT <failClosed> - no prefilter setup yet", v162, 0xCu);
      }

      xpc_dictionary_set_int64(v124, "error", 6);
    }

    else
    {
      if (v44)
      {
        *v162 = 138412290;
        *&v162[4] = v9;
        _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "%@: handleNewRequest - FINAL RESULT <failOpened> - no prefilter setup yet", v162, 0xCu);
      }

      xpc_dictionary_set_int64(v124, "verdict", 1);
    }

    v134(v125);
    goto LABEL_134;
  }

  v146 = 0;
  v147 = &v146;
  v148 = 0x3032000000;
  v149 = sub_10000EA6C;
  v150 = sub_10000EA7C;
  v151 = objc_alloc_init(NSMutableSet);
  if (xarray)
  {
    if (xpc_array_get_count(xarray))
    {
      applier[0] = _NSConcreteStackBlock;
      applier[1] = 3221225472;
      applier[2] = sub_1000127C4;
      applier[3] = &unk_100024900;
      applier[4] = v9;
      applier[5] = &v146;
      if (!xpc_array_apply(xarray, applier) || ![v147[5] count])
      {
        xpc_dictionary_set_int64(v124, "error", 3);
        v134(v125);
        goto LABEL_133;
      }
    }
  }

  if ([v147[5] count])
  {
LABEL_34:
    v23 = v9[10];
    if (!v23 || (v24 = v23, v25 = v9[10], v26 = [v25 isActive], v25, v24, (v26 & 1) == 0))
    {
      v45 = [v9 urlConfiguration];
      v46 = [v45 shouldFailClosed];

      if (v46)
      {
        v47 = ne_log_obj();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v9;
          _os_log_error_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "%@: handleNewRequest - FINAL RESULT <failClosed> - filter is not up yet", buf, 0xCu);
        }

        v48 = "error";
        v49 = 6;
      }

      else
      {
        v47 = ne_log_obj();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v9;
          _os_log_error_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "%@: handleNewRequest - FINAL RESULT <failOpened> - filter is not up yet", buf, 0xCu);
        }

        v48 = "verdict";
        v49 = 1;
      }

      xpc_dictionary_set_int64(v124, v48, v49);
      v134(v125);
      goto LABEL_133;
    }

    v138[0] = _NSConcreteStackBlock;
    v138[1] = 3221225472;
    v138[2] = sub_1000128EC;
    v138[3] = &unk_1000249B8;
    v138[4] = v9;
    v27 = v124;
    v139 = v27;
    v126 = v125;
    v140 = v126;
    v28 = v27;
    v29 = v138;
    v30 = [NSNumber numberWithUnsignedLong:v28];
    v31 = v9[7];
    if (v31)
    {
      v32 = v31;
      v33 = [v9[7] objectForKeyedSubscript:v30];
      v34 = v33 == 0;

      if (v34)
      {
        v35 = sub_1000105A8(v9);
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3221225472;
        *&buf[16] = sub_100013110;
        *&buf[24] = &unk_100024950;
        *&buf[32] = v9;
        LODWORD(v155) = 3;
        v36 = v30;
        v153 = v36;
        v154 = v29;
        v37 = NECreateTimerSource();

        v38 = ne_log_obj();
        v39 = v38;
        if (v37)
        {
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
          {
            *v159 = 138413058;
            *&v159[4] = v9;
            *&v159[12] = 2080;
            *&v159[14] = "[NEURLFilterEngine setupConnectionTimer:timeoutHandler:]";
            *&v159[22] = 1024;
            LODWORD(v160) = 3;
            WORD2(v160) = 2112;
            *(&v160 + 6) = v36;
            _os_log_debug_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEBUG, "%@: %s - Connection time out scheduled <interval %d secs> for %@", v159, 0x26u);
          }

          [v9[7] setObject:v37 forKeyedSubscript:v36];
        }

        else
        {
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            *v159 = 138412546;
            *&v159[4] = v9;
            *&v159[12] = 2080;
            *&v159[14] = "[NEURLFilterEngine setupConnectionTimer:timeoutHandler:]";
            _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "%@: %s - Failed to start connection timer", v159, 0x16u);
          }
        }
      }
    }

    *v159 = 0;
    *&v159[8] = v159;
    *&v159[16] = 0x3032000000;
    *&v160 = sub_10000EA6C;
    *(&v160 + 1) = sub_10000EA7C;
    v161 = [NSString stringWithUTF8String:__s];
    if (v15)
    {
      v107 = ne_log_obj();
      if (os_log_type_enabled(v107, OS_LOG_TYPE_DEBUG))
      {
        v108 = strlen(__s);
        *buf = 136316419;
        *&buf[4] = "[NEURLFilterEngine handleNewRequest:connection:filloutReply:completionHandler:]";
        *&buf[12] = 2160;
        *&buf[14] = 1752392040;
        *&buf[22] = 1040;
        *&buf[24] = v108;
        *&buf[28] = 2101;
        *&buf[30] = __s;
        *&buf[38] = 2080;
        v153 = v123;
        LOWORD(v154) = 1024;
        *(&v154 + 2) = int64;
        v109 = "%s: URLCHECK: FILTER: SENDING REQ - %{sensitive, mask.hash, networkextension:string}.*P (app bundleid <%s> pid <%d>)";
        v110 = v107;
        v111 = 54;
LABEL_138:
        _os_log_debug_impl(&_mh_execute_header, v110, OS_LOG_TYPE_DEBUG, v109, buf, v111);
      }
    }

    else
    {
      v107 = ne_log_obj();
      if (os_log_type_enabled(v107, OS_LOG_TYPE_DEBUG))
      {
        v117 = strlen(__s);
        *buf = 136316163;
        *&buf[4] = "[NEURLFilterEngine handleNewRequest:connection:filloutReply:completionHandler:]";
        *&buf[12] = 1024;
        *&buf[14] = v117;
        *&buf[18] = 2081;
        *&buf[20] = __s;
        *&buf[28] = 2080;
        *&buf[30] = v123;
        *&buf[38] = 1024;
        LODWORD(v153) = int64;
        v109 = "%s: URLCHECK: FILTER: SENDING REQ - <%d : %{private}s> (app bundleid <%s> pid <%d>)";
        v110 = v107;
        v111 = 44;
        goto LABEL_138;
      }
    }

    v112 = v9[10];
    v113 = [v147[5] allObjects];
    v114 = [NSString stringWithUTF8String:v123];
    v115 = sub_1000105A8(v9);
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_100012A3C;
    *&buf[24] = &unk_100024928;
    *&buf[32] = v9;
    v116 = v28;
    v158 = v15;
    v153 = v116;
    v155 = v159;
    v156 = v123;
    v157 = int64;
    v154 = v126;
    [v112 check:v113 sourceAppBundleId:v114 responseQueue:v115 redactSensitiveLogs:v15 completionHandler:buf];

    _Block_object_dispose(v159, 8);
    goto LABEL_133;
  }

  v50 = [NEURLParser matchingStringsForURL:__s];
  v119 = v50;
  if (![v50 count])
  {
    v97 = ne_log_obj();
    if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
    {
      *v162 = 138412290;
      *&v162[4] = v9;
      _os_log_error_impl(&_mh_execute_header, v97, OS_LOG_TYPE_ERROR, "%@: handleNewRequest - failed to parse url", v162, 0xCu);
    }

    v98 = "error";
    v99 = 3;
    goto LABEL_123;
  }

  v143 = 0u;
  v144 = 0u;
  v141 = 0u;
  v142 = 0u;
  v51 = v50;
  v52 = [v51 countByEnumeratingWithState:&v141 objects:v162 count:16];
  if (!v52)
  {
    goto LABEL_101;
  }

  v53 = *v142;
  do
  {
    v54 = 0;
    do
    {
      if (*v142 != v53)
      {
        objc_enumerationMutation(v51);
      }

      v55 = *(*(&v141 + 1) + 8 * v54);
      v56 = v9[9];
      v57 = [v56 check:v55 redactSensitiveLogs:v15];

      if (v57)
      {
        if (v15)
        {
          v58 = ne_log_obj();
          if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
          {
            v59 = v55;
            if ([v55 UTF8String])
            {
              v68 = v55;
              v60 = strlen([v55 UTF8String]);
            }

            else
            {
              v60 = 0;
            }

            v69 = v55;
            v70 = [v55 UTF8String];
            v71 = "<nil url>";
            if (v70)
            {
              v72 = v55;
              v71 = [v55 UTF8String];
            }

            *buf = 136316419;
            *&buf[4] = "[NEURLFilterEngine handleNewRequest:connection:filloutReply:completionHandler:]";
            *&buf[12] = 2160;
            *&buf[14] = 1752392040;
            *&buf[22] = 1040;
            *&buf[24] = v60;
            *&buf[28] = 2101;
            *&buf[30] = v71;
            *&buf[38] = 2080;
            v153 = v123;
            LOWORD(v154) = 1024;
            *(&v154 + 2) = int64;
            v73 = v58;
            v74 = "%s: URLCHECK: PREFILTER SUBURL CHECK: BLOCKED - %{sensitive, mask.hash, networkextension:string}.*P (app bundleid <%s> pid <%d>)";
            v75 = 54;
            goto LABEL_94;
          }
        }

        else
        {
          v58 = ne_log_obj();
          if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
          {
            v64 = v55;
            if ([v55 UTF8String])
            {
              v84 = v55;
              v65 = strlen([v55 UTF8String]);
            }

            else
            {
              v65 = 0;
            }

            v85 = v55;
            v86 = [v55 UTF8String];
            v87 = "<nil url>";
            if (v86)
            {
              v88 = v55;
              v87 = [v55 UTF8String];
            }

            *buf = 136316163;
            *&buf[4] = "[NEURLFilterEngine handleNewRequest:connection:filloutReply:completionHandler:]";
            *&buf[12] = 1024;
            *&buf[14] = v65;
            *&buf[18] = 2081;
            *&buf[20] = v87;
            *&buf[28] = 2080;
            *&buf[30] = v123;
            *&buf[38] = 1024;
            LODWORD(v153) = int64;
            v73 = v58;
            v74 = "%s: URLCHECK: PREFILTER SUBURL CHECK: BLOCKED - <%d : %{private}s> (app bundleid <%s> pid <%d>)";
            v75 = 44;
LABEL_94:
            _os_log_debug_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEBUG, v74, buf, v75);
          }
        }

        [v147[5] addObject:v55];
        goto LABEL_76;
      }

      if (v15)
      {
        v61 = ne_log_obj();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
        {
          v62 = v55;
          if ([v55 UTF8String])
          {
            v76 = v55;
            v63 = strlen([v55 UTF8String]);
          }

          else
          {
            v63 = 0;
          }

          v77 = v55;
          v78 = [v55 UTF8String];
          v79 = "<nil url>";
          if (v78)
          {
            v80 = v55;
            v79 = [v55 UTF8String];
          }

          *buf = 136316419;
          *&buf[4] = "[NEURLFilterEngine handleNewRequest:connection:filloutReply:completionHandler:]";
          *&buf[12] = 2160;
          *&buf[14] = 1752392040;
          *&buf[22] = 1040;
          *&buf[24] = v63;
          *&buf[28] = 2101;
          *&buf[30] = v79;
          *&buf[38] = 2080;
          v153 = v123;
          LOWORD(v154) = 1024;
          *(&v154 + 2) = int64;
          v81 = v61;
          v82 = "%s: URLCHECK: PREFILTER SUBURL CHECK: ALLOWED - %{sensitive, mask.hash, networkextension:string}.*P (app bundleid <%s> pid <%d>)";
          v83 = 54;
LABEL_99:
          _os_log_debug_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEBUG, v82, buf, v83);
        }
      }

      else
      {
        v61 = ne_log_obj();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
        {
          v66 = v55;
          if ([v55 UTF8String])
          {
            v89 = v55;
            v67 = strlen([v55 UTF8String]);
          }

          else
          {
            v67 = 0;
          }

          v90 = v55;
          v91 = [v55 UTF8String];
          v92 = "<nil url>";
          if (v91)
          {
            v93 = v55;
            v92 = [v55 UTF8String];
          }

          *buf = 136316163;
          *&buf[4] = "[NEURLFilterEngine handleNewRequest:connection:filloutReply:completionHandler:]";
          *&buf[12] = 1024;
          *&buf[14] = v67;
          *&buf[18] = 2081;
          *&buf[20] = v92;
          *&buf[28] = 2080;
          *&buf[30] = v123;
          *&buf[38] = 1024;
          LODWORD(v153) = int64;
          v81 = v61;
          v82 = "%s: URLCHECK: PREFILTER SUBURL CHECK: ALLOWED - <%d : %{private}s> (app bundleid <%s> pid <%d>)";
          v83 = 44;
          goto LABEL_99;
        }
      }

LABEL_76:
      v54 = v54 + 1;
    }

    while (v52 != v54);
    v94 = [v51 countByEnumeratingWithState:&v141 objects:v162 count:16];
    v52 = v94;
  }

  while (v94);
LABEL_101:

  if ([v147[5] count])
  {

    goto LABEL_34;
  }

  if (v15)
  {
    v97 = ne_log_obj();
    if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
    {
      v100 = strlen(__s);
      *buf = 136316419;
      *&buf[4] = "[NEURLFilterEngine handleNewRequest:connection:filloutReply:completionHandler:]";
      *&buf[12] = 2160;
      *&buf[14] = 1752392040;
      *&buf[22] = 1040;
      *&buf[24] = v100;
      *&buf[28] = 2101;
      *&buf[30] = __s;
      *&buf[38] = 2080;
      v153 = v123;
      LOWORD(v154) = 1024;
      *(&v154 + 2) = int64;
      v101 = "%s: URLCHECK: FINAL RESULT: PREFILTER ALLOWED - %{sensitive, mask.hash, networkextension:string}.*P (app bundleid <%s> pid <%d>)";
      v102 = v97;
      v103 = 54;
      goto LABEL_140;
    }
  }

  else
  {
    v97 = ne_log_obj();
    if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
    {
      v118 = strlen(__s);
      *buf = 136316163;
      *&buf[4] = "[NEURLFilterEngine handleNewRequest:connection:filloutReply:completionHandler:]";
      *&buf[12] = 1024;
      *&buf[14] = v118;
      *&buf[18] = 2081;
      *&buf[20] = __s;
      *&buf[28] = 2080;
      *&buf[30] = v123;
      *&buf[38] = 1024;
      LODWORD(v153) = int64;
      v101 = "%s: URLCHECK: FINAL RESULT: PREFILTER ALLOWED - <%d : %{private}s> (app bundleid <%s> pid <%d>)";
      v102 = v97;
      v103 = 44;
LABEL_140:
      _os_log_debug_impl(&_mh_execute_header, v102, OS_LOG_TYPE_DEBUG, v101, buf, v103);
    }
  }

  v98 = "verdict";
  v99 = 1;
LABEL_123:

  xpc_dictionary_set_int64(v124, v98, v99);
  v134(v125);

LABEL_133:
  _Block_object_dispose(&v146, 8);

LABEL_134:
LABEL_135:

LABEL_136:
}

void sub_1000127B0(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    xpc_connection_send_message(*(a1 + 40), v1);
  }
}

uint64_t sub_1000127C4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (v4 && xpc_get_type(v4) == &_xpc_type_string)
  {
    v8 = [NSString stringWithUTF8String:xpc_string_get_string_ptr(v5)];
    [*(*(*(a1 + 40) + 8) + 40) addObject:v8];

    v7 = 1;
  }

  else
  {
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      v11 = 138412290;
      v12 = v10;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%@: handleNewRequest - NOT A STRING", &v11, 0xCu);
    }

    v7 = 0;
  }

  return v7;
}

uint64_t sub_1000128EC(uint64_t a1)
{
  v2 = [*(a1 + 32) urlConfiguration];
  v3 = [v2 shouldFailClosed];

  v4 = ne_log_obj();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
  if (v3)
  {
    if (v5)
    {
      v10 = *(a1 + 32);
      v12 = 138412290;
      v13 = v10;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%@: handleNewRequest - FINAL RESULT <failClosed> - request timed out", &v12, 0xCu);
    }

    v6 = *(a1 + 40);
    v7 = "error";
    v8 = 6;
  }

  else
  {
    if (v5)
    {
      v11 = *(a1 + 32);
      v12 = 138412290;
      v13 = v11;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%@: handleNewRequest - FINAL RESULT <failOpened> - request timed out", &v12, 0xCu);
    }

    v6 = *(a1 + 40);
    v7 = "verdict";
    v8 = 1;
  }

  xpc_dictionary_set_int64(v6, v7, v8);
  return (*(*(a1 + 48) + 16))();
}

void sub_100012A3C(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v10 = [NSNumber numberWithUnsignedLong:v7];
    v11 = [*(v6 + 56) objectForKeyedSubscript:v10];

    if (v11)
    {
      v12 = ne_log_obj();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v47 = 138412802;
        v48 = v6;
        v49 = 2080;
        *v50 = "[NEURLFilterEngine cancelConnectionTimer:]";
        *&v50[8] = 2112;
        *&v50[10] = v10;
        _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%@: %s - Connection timeout canceled for %@", &v47, 0x20u);
      }

      v13 = [*(v6 + 56) objectForKeyedSubscript:v10];
      dispatch_source_cancel(v13);

      [*(v6 + 56) setObject:0 forKeyedSubscript:v10];
      if (v5)
      {
        v14 = [*(a1 + 32) urlConfiguration];
        v15 = [v14 shouldFailClosed];

        v16 = ne_log_obj();
        v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
        if (v15)
        {
          if (v17)
          {
            v26 = *(a1 + 32);
            v47 = 138412546;
            v48 = v26;
            v49 = 2112;
            *v50 = v5;
            _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%@: handleNewRequest - FINAL RESULT <failClosed> - request returned error: %@", &v47, 0x16u);
          }

          v18 = *(a1 + 40);
          v19 = "error";
          v20 = 6;
          goto LABEL_30;
        }

        if (v17)
        {
          v24 = *(a1 + 32);
          v47 = 138412546;
          v48 = v24;
          v49 = 2112;
          *v50 = v5;
          _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%@: handleNewRequest - FINAL RESULT <failOpened> - request returned error: %@", &v47, 0x16u);
        }

        goto LABEL_29;
      }

      v21 = *(a1 + 80);
      v16 = ne_log_obj();
      v22 = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);
      if (a2)
      {
        if (v21 == 1)
        {
          if (v22)
          {
            if ([*(*(*(a1 + 56) + 8) + 40) UTF8String])
            {
              v23 = strlen([*(*(*(a1 + 56) + 8) + 40) UTF8String]);
            }

            else
            {
              v23 = 0;
            }

            if ([*(*(*(a1 + 56) + 8) + 40) UTF8String])
            {
              v29 = [*(*(*(a1 + 56) + 8) + 40) UTF8String];
            }

            else
            {
              v29 = "<nil url>";
            }

            v33 = "nil";
            v34 = *(a1 + 72);
            if (*(a1 + 64))
            {
              v33 = *(a1 + 64);
            }

            v47 = 136316419;
            v48 = "[NEURLFilterEngine handleNewRequest:connection:filloutReply:completionHandler:]_block_invoke";
            v49 = 2160;
            *v50 = 1752392040;
            *&v50[8] = 1040;
            *&v50[10] = v23;
            *&v50[14] = 2101;
            *&v50[16] = v29;
            v51 = 2080;
            v52 = v33;
            v53 = 1024;
            v54 = v34;
            v35 = "%s: URLCHECK: FINAL RESULT: FILTER BLOCKED - %{sensitive, mask.hash, networkextension:string}.*P (app bundleid <%s> pid <%d>)";
            v36 = v16;
            v37 = 54;
LABEL_60:
            _os_log_debug_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEBUG, v35, &v47, v37);
          }
        }

        else if (v22)
        {
          if ([*(*(*(a1 + 56) + 8) + 40) UTF8String])
          {
            v27 = strlen([*(*(*(a1 + 56) + 8) + 40) UTF8String]);
          }

          else
          {
            v27 = 0;
          }

          if ([*(*(*(a1 + 56) + 8) + 40) UTF8String])
          {
            v31 = [*(*(*(a1 + 56) + 8) + 40) UTF8String];
          }

          else
          {
            v31 = "<nil url>";
          }

          v43 = "nil";
          v44 = *(a1 + 72);
          if (*(a1 + 64))
          {
            v43 = *(a1 + 64);
          }

          v47 = 136316163;
          v48 = "[NEURLFilterEngine handleNewRequest:connection:filloutReply:completionHandler:]_block_invoke";
          v49 = 1024;
          *v50 = v27;
          *&v50[4] = 2081;
          *&v50[6] = v31;
          *&v50[14] = 2080;
          *&v50[16] = v43;
          v51 = 1024;
          LODWORD(v52) = v44;
          v35 = "%s: URLCHECK: FINAL RESULT: FILTER BLOCKED - <%d : %{private}s> (app bundleid <%s> pid <%d>)";
          v36 = v16;
          v37 = 44;
          goto LABEL_60;
        }

        v18 = *(a1 + 40);
        v19 = "verdict";
        v20 = 2;
LABEL_30:
        xpc_dictionary_set_int64(v18, v19, v20);
        (*(*(a1 + 48) + 16))();
        goto LABEL_31;
      }

      if (v21 == 1)
      {
        if (v22)
        {
          if ([*(*(*(a1 + 56) + 8) + 40) UTF8String])
          {
            v25 = strlen([*(*(*(a1 + 56) + 8) + 40) UTF8String]);
          }

          else
          {
            v25 = 0;
          }

          if ([*(*(*(a1 + 56) + 8) + 40) UTF8String])
          {
            v30 = [*(*(*(a1 + 56) + 8) + 40) UTF8String];
          }

          else
          {
            v30 = "<nil url>";
          }

          v38 = "nil";
          v39 = *(a1 + 72);
          if (*(a1 + 64))
          {
            v38 = *(a1 + 64);
          }

          v47 = 136316419;
          v48 = "[NEURLFilterEngine handleNewRequest:connection:filloutReply:completionHandler:]_block_invoke";
          v49 = 2160;
          *v50 = 1752392040;
          *&v50[8] = 1040;
          *&v50[10] = v25;
          *&v50[14] = 2101;
          *&v50[16] = v30;
          v51 = 2080;
          v52 = v38;
          v53 = 1024;
          v54 = v39;
          v40 = "%s: URLCHECK: FINAL RESULT: FILTER ALLOWED - %{sensitive, mask.hash, networkextension:string}.*P (app bundleid <%s> pid <%d>)";
          v41 = v16;
          v42 = 54;
LABEL_65:
          _os_log_debug_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEBUG, v40, &v47, v42);
        }
      }

      else if (v22)
      {
        if ([*(*(*(a1 + 56) + 8) + 40) UTF8String])
        {
          v28 = strlen([*(*(*(a1 + 56) + 8) + 40) UTF8String]);
        }

        else
        {
          v28 = 0;
        }

        if ([*(*(*(a1 + 56) + 8) + 40) UTF8String])
        {
          v32 = [*(*(*(a1 + 56) + 8) + 40) UTF8String];
        }

        else
        {
          v32 = "<nil url>";
        }

        v45 = "nil";
        v46 = *(a1 + 72);
        if (*(a1 + 64))
        {
          v45 = *(a1 + 64);
        }

        v47 = 136316163;
        v48 = "[NEURLFilterEngine handleNewRequest:connection:filloutReply:completionHandler:]_block_invoke";
        v49 = 1024;
        *v50 = v28;
        *&v50[4] = 2081;
        *&v50[6] = v32;
        *&v50[14] = 2080;
        *&v50[16] = v45;
        v51 = 1024;
        LODWORD(v52) = v46;
        v40 = "%s: URLCHECK: FINAL RESULT: FILTER ALLOWED - <%d : %{private}s> (app bundleid <%s> pid <%d>)";
        v41 = v16;
        v42 = 44;
        goto LABEL_65;
      }

LABEL_29:

      v18 = *(a1 + 40);
      v19 = "verdict";
      v20 = 1;
      goto LABEL_30;
    }
  }

LABEL_31:
}

void sub_100013110(uint64_t a1)
{
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v11 = *(a1 + 56);
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v14 = 138413058;
    v15 = v12;
    v16 = 2080;
    v17 = "[NEURLFilterEngine setupConnectionTimer:timeoutHandler:]_block_invoke";
    v18 = 1024;
    v19 = v11;
    v20 = 2112;
    v21 = v13;
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%@: %s - Connection timed out <interval %d secs> for %@", &v14, 0x26u);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(v3 + 56);
  }

  else
  {
    v4 = 0;
  }

  v5 = [v4 objectForKeyedSubscript:*(a1 + 40)];

  if (v5)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = *(v6 + 56);
    }

    else
    {
      v7 = 0;
    }

    v8 = [v7 objectForKeyedSubscript:*(a1 + 40)];
    dispatch_source_cancel(v8);

    v9 = *(a1 + 32);
    if (v9)
    {
      v10 = *(v9 + 56);
    }

    else
    {
      v10 = 0;
    }

    [v10 setObject:0 forKeyedSubscript:*(a1 + 40)];
    (*(*(a1 + 48) + 16))();
  }
}

id sub_1000132FC(uint64_t a1)
{
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412546;
    v14 = v3;
    v15 = 2080;
    v16 = "[NEURLFilterEngine stopFilter]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@: %s", buf, 0x16u);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    *(v4 + 16) = 0;
    v5 = *(a1 + 32);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1000105A8(v5);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100013464;
  block[3] = &unk_100024A20;
  block[4] = *(a1 + 32);
  dispatch_async(v6, block);

  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = *(v7 + 72);
  }

  else
  {
    v8 = 0;
  }

  [v8 stop];
  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = *(v9 + 80);
  }

  else
  {
    v10 = 0;
  }

  return [v10 stop];
}

void sub_100013464(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v2 = [*(v1 + 56) allValues];
    v3 = [v2 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v19;
      do
      {
        v6 = 0;
        do
        {
          if (*v19 != v5)
          {
            objc_enumerationMutation(v2);
          }

          dispatch_source_cancel(*(*(&v18 + 1) + 8 * v6));
          v6 = v6 + 1;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v4);
    }

    [*(v1 + 56) removeAllObjects];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = *(v1 + 48);
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        v11 = 0;
        do
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          xpc_connection_cancel(*(*(&v14 + 1) + 8 * v11));
          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v14 objects:v22 count:16];
      }

      while (v9);
    }

    [*(v1 + 48) removeAllObjects];
    v12 = *(v1 + 32);
    if (v12)
    {
      xpc_connection_cancel(v12);
      v13 = *(v1 + 32);
      *(v1 + 32) = 0;
    }
  }
}

void sub_1000136C4(uint64_t a1)
{
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v22 = 138412546;
    v23 = v3;
    v24 = 2080;
    v25 = "[NEURLFilterEngine startFilterWithCompletionHandler:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@: %s", &v22, 0x16u);
  }

  v4 = +[NSMutableArray array];
  v5 = *(a1 + 32);
  if (v5)
  {
    objc_storeStrong((v5 + 48), v4);
  }

  v6 = objc_alloc_init(NSMutableDictionary);
  v7 = *(a1 + 32);
  if (v7)
  {
    objc_storeStrong((v7 + 56), v6);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    *(v8 + 16) = 1;
  }

  v9 = objc_alloc_init(NSMutableArray);
  v10 = [*(a1 + 32) urlConfiguration];
  if (v10 && (v11 = v10, [*(a1 + 32) urlConfiguration], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "checkValidityAndCollectErrors:", v9), v12, v11, v13))
  {
    v14 = objc_alloc_init(NEPIRChecker);
    sub_1000108A4(*(a1 + 32), v14);

    v15 = *(a1 + 32);
    if (v15)
    {
      v16 = v15[10];
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;
    v18 = [v15 urlConfiguration];
    v19 = sub_1000105A8(*(a1 + 32));
    [v17 start:v18 responseQueue:v19 completionHandler:*(a1 + 40)];
  }

  else
  {
    v20 = ne_log_obj();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = *(a1 + 32);
      v22 = 138412802;
      v23 = v21;
      v24 = 2080;
      v25 = "[NEURLFilterEngine startFilterWithCompletionHandler:]_block_invoke";
      v26 = 2112;
      v27 = v9;
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%@: %s - URL filter configuration invalid <%@>", &v22, 0x20u);
    }

    v18 = [[NSError alloc] initWithDomain:@"NEMembershipCheckerErrorDomain" code:4 userInfo:0];
    (*(*(a1 + 40) + 16))();
  }
}

uint64_t sub_100013EFC(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  objc_opt_self();
  v16 = a3;
  if ((a3 & 0xFFFFFFFC) != 0)
  {
    v7 = 0;
    do
    {
      v8 = *(a2 + v7);
      objc_opt_self();
      objc_opt_self();
      HIDWORD(v9) = (461845907 * ((380141568 * v8) | ((-862048943 * v8) >> 17))) ^ a4;
      LODWORD(v9) = HIDWORD(v9);
      a4 = 5 * (v9 >> 19) - 430675100;
      v7 += 4;
    }

    while (v7 < (a3 & 0xFFFFFFFC));
  }

  v10 = 0;
  if ((a3 & 3) > 1)
  {
    v11 = a3 & 0xFFFFFFFC;
    v12 = a2 + v11;
    if ((a3 & 3) != 2)
    {
      v10 = *(v12 + 2) << 16;
    }

    v10 |= *(v12 + 1) << 8;
  }

  else
  {
    v11 = a3 & 0xFFFFFFFC;
    if ((a3 & 3) == 0)
    {
      goto LABEL_11;
    }
  }

  v13 = v10 ^ *(a2 + v11);
  objc_opt_self();
  a4 ^= 461845907 * ((380141568 * v13) | ((-862048943 * v13) >> 17));
LABEL_11:
  objc_opt_self();
  v14 = -1028477387 * ((-2048144789 * (a4 ^ v16 ^ ((a4 ^ v16) >> 16))) ^ ((-2048144789 * (a4 ^ v16 ^ ((a4 ^ v16) >> 16))) >> 13));
  return v14 ^ HIWORD(v14);
}

void sub_1000142D8(void *a1, const char *a2, uint64_t a3)
{
  if (a1 && objc_getProperty(a1, a2, 56, 1))
  {
    Property = objc_getProperty(a1, v6, 56, 1);
    Property[2](Property, a3, a2);

    objc_setProperty_atomic_copy(a1, v8, 0, 56);
  }
}

void sub_1000147A8(void *a1, const char *a2)
{
  Property = a1[4];
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 48, 1);
  }

  v5 = Property;
  v6 = SOAuthorizationOperationFetchNetworkCredentials;
  v7 = a1[4];
  if (v7)
  {
    v7 = objc_getProperty(v7, v4, 32, 1);
  }

  v8 = a1[5];
  v9 = v7;
  v10 = objc_opt_new();
  [v5 beginAuthorizationWithOperation:v6 url:v9 httpHeaders:v8 httpBody:v10];

  v12 = a1[4];
  if (v12)
  {
    v13 = a1[6];

    objc_setProperty_atomic_copy(v12, v11, v13, 56);
  }
}

void sub_1000149A4(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    objc_setProperty_atomic(v3, a2, *(a1 + 40), 40);
    v5 = *(a1 + 32);
    if (v5)
    {
      if (objc_getProperty(v5, v4, 40, 1))
      {
        Property = *(a1 + 32);
        if (Property)
        {
          Property = objc_getProperty(Property, v6, 40, 1);
        }

        v8 = [Property VPN];
        v9 = [v8 protocol];

        if (!v9)
        {
          v11 = *(a1 + 32);
          if (v11)
          {
            v11 = objc_getProperty(v11, v10, 40, 1);
          }

          v12 = [v11 appVPN];
          v9 = [v12 protocol];

          if (!v9)
          {
            v13 = ne_log_obj();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              *v21 = 0;
              _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Missing protocol configuration", v21, 2u);
            }

            (*(*(a1 + 48) + 16))();
            v9 = 0;
          }
        }

        if ([v9 type] == 5)
        {
          if ([v9 useExtendedAuthentication])
          {
            v14 = ne_log_obj();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              v19 = 0;
              v15 = "Extensible SSO is not supported for EAP authentication";
              v16 = &v19;
LABEL_27:
              _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, v15, v16, 2u);
            }
          }

          else
          {
            if ([v9 authenticationMethod] == 1)
            {
              goto LABEL_22;
            }

            v14 = ne_log_obj();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              v18 = 0;
              v15 = "Extensible SSO is supported only for certificate authentication";
              v16 = &v18;
              goto LABEL_27;
            }
          }
        }

        else
        {
          v14 = ne_log_obj();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *v20 = 0;
            v15 = "Extensible SSO is supported only for IKEv2";
            v16 = v20;
            goto LABEL_27;
          }
        }

LABEL_22:
        (*(*(a1 + 48) + 16))(*(a1 + 48));

        return;
      }
    }
  }

  v17 = ne_log_obj();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Bad init message, configuration is missing", buf, 2u);
  }

  (*(*(a1 + 48) + 16))();
}

void sub_100014C84(id a1)
{
  qword_10002B768 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NEVPNAuthenticationPluginDriver];

  _objc_release_x1();
}

void sub_100014D20(id a1)
{
  qword_10002B758 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NEVPNPluginManager];

  _objc_release_x1();
}

void sub_100015150(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    v6 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v5, "count")}];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v25 = v5;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v30 objects:v41 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v31;
      do
      {
        v11 = 0;
        do
        {
          if (*v31 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v30 + 1) + 8 * v11) bundleIdentifier];
          [v6 addObject:v12];

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v30 objects:v41 count:16];
      }

      while (v9);
    }

    os_unfair_lock_lock((a1 + 8));
    v13 = *(a1 + 24);
    os_unfair_lock_unlock((a1 + 8));
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v14 = v13;
    v15 = [v14 countByEnumeratingWithState:&v26 objects:v40 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v27;
      do
      {
        v18 = 0;
        do
        {
          if (*v27 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v26 + 1) + 8 * v18);
          if (a2 == 3)
          {
            v21 = v6;
            if (v19)
            {
              Property = objc_getProperty(v19, v24, 16, 1);
              block = _NSConcreteStackBlock;
              v35 = 3221225472;
              v23 = sub_100016A58;
              goto LABEL_20;
            }
          }

          else
          {
            if (a2)
            {
              goto LABEL_22;
            }

            v21 = v6;
            if (v19)
            {
              Property = objc_getProperty(v19, v20, 16, 1);
              block = _NSConcreteStackBlock;
              v35 = 3221225472;
              v23 = sub_100016AA0;
LABEL_20:
              v36 = v23;
              v37 = &unk_100024AC0;
              v38 = v19;
              v39 = v21;
              dispatch_async(Property, &block);
            }
          }

LABEL_22:
          v18 = v18 + 1;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v26 objects:v40 count:16];
      }

      while (v16);
    }

    v5 = v25;
  }
}

void sub_100015448(uint64_t a1, int a2, void *a3)
{
  v4 = a3;
  if (a1)
  {
    v5 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v4, "count")}];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v25 = v4;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v33;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v33 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v32 + 1) + 8 * i);
          v12 = [v11 pluginIdentifier];

          if (v12)
          {
            v13 = [v11 pluginIdentifier];
            [v5 addObject:v13];
          }

          else
          {
            v13 = ne_log_obj();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109120;
              *&buf[4] = a2;
              _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Got a LSPlugInKitProxy with a nil identifier with event %d", buf, 8u);
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v8);
    }

    os_unfair_lock_lock((a1 + 8));
    v14 = [*(a1 + 24) copy];
    os_unfair_lock_unlock((a1 + 8));
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = v14;
    v15 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v29;
      do
      {
        for (j = 0; j != v16; j = j + 1)
        {
          if (*v29 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v28 + 1) + 8 * j);
          if (a2 == 1)
          {
            v21 = v5;
            if (!v19)
            {
              goto LABEL_24;
            }

            Property = objc_getProperty(v19, v20, 16, 1);
            *buf = _NSConcreteStackBlock;
            v39 = 3221225472;
            v23 = sub_100016AE8;
          }

          else
          {
            v21 = v5;
            if (!v19)
            {
              goto LABEL_24;
            }

            Property = objc_getProperty(v19, v24, 16, 1);
            *buf = _NSConcreteStackBlock;
            v39 = 3221225472;
            v23 = sub_100016B30;
          }

          v40 = v23;
          v41 = &unk_100024AC0;
          v42 = v19;
          v43 = v21;
          dispatch_async(Property, buf);

LABEL_24:
        }

        v16 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
      }

      while (v16);
    }

    v4 = v25;
  }
}

id sub_100015AF4()
{
  objc_opt_self();
  if (qword_10002B780 != -1)
  {
    dispatch_once(&qword_10002B780, &stru_1000249F8);
  }

  v0 = qword_10002B778;

  return v0;
}

void sub_100015B4C(id a1)
{
  NEInitCFTypes();
  v1 = [NEAgentServer alloc];
  if (v1)
  {
    v8.receiver = v1;
    v8.super_class = NEAgentServer;
    v2 = objc_msgSendSuper2(&v8, "init");
    if (v2)
    {
      v3 = objc_alloc_init(NSMutableArray);
      v4 = v2[3];
      v2[3] = v3;

      v5 = objc_alloc_init(NSMutableArray);
      v6 = v2[4];
      v2[4] = v5;

      *(v2 + 2) = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  v7 = qword_10002B778;
  qword_10002B778 = v2;
}

void sub_100015D40(void *a1, const char *a2)
{
  if (a1)
  {
    Property = objc_getProperty(a1, a2, 16, 1);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100015DCC;
    block[3] = &unk_100024A20;
    block[4] = a1;
    dispatch_async(Property, block);
  }
}

void sub_100015DCC(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 24, 1);
  }

  [Property invalidate];
  v5 = *(a1 + 32);
  if (v5)
  {
    objc_setProperty_atomic(v5, v4, 0, 24);
    v5 = *(a1 + 32);
    if (v5)
    {
      v5 = objc_getProperty(v5, v6, 32, 1);
    }
  }

  [v5 invalidate];
  v8 = *(a1 + 32);
  if (v8)
  {
    objc_setProperty_atomic(v8, v7, 0, 32);
    v8 = *(a1 + 32);
    if (v8)
    {
      v8 = objc_getProperty(v8, v9, 8, 1);
    }
  }

  [v8 handleCancel];
  v11 = *(a1 + 32);
  if (v11)
  {
    objc_setProperty_atomic(v11, v10, 0, 8);
    v11 = *(a1 + 32);
    if (v11)
    {
      v11 = objc_getProperty(v11, v12, 40, 1);
    }
  }

  [v11 invalidate];
  v14 = *(a1 + 32);
  if (v14)
  {
    objc_setProperty_atomic(v14, v13, 0, 40);
  }

  v15 = sub_100015AF4();
  if (v15)
  {
    v16 = *(a1 + 32);
    os_unfair_lock_lock((v15 + 8));
    [*(v15 + 24) removeObject:v16];

    os_unfair_lock_unlock((v15 + 8));
  }

  v17 = *(a1 + 32);
  if (!v17 || !*(v17 + 48))
  {
    v18 = ne_log_obj();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "exiting", v19, 2u);
    }

    exit(0);
  }
}

void sub_1000160C8(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (v3 && objc_getProperty(v3, a2, 8, 1))
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      Property = objc_getProperty(v5, v4, 8, 1);
      v7 = *(a1 + 32);
    }

    else
    {
      v7 = 0;
      Property = 0;
    }

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000161F8;
    v10[3] = &unk_100024A98;
    v10[4] = v7;
    v11 = *(a1 + 40);
    [Property handleDisposeWithCompletionHandler:v10];
  }

  else
  {
    v8 = *(a1 + 40);
    v9 = [[NSError alloc] initWithDomain:@"NEAgentErrorDomain" code:1 userInfo:0];
    (*(v8 + 16))(v8, v9);
  }
}

uint64_t sub_1000161F8(uint64_t a1)
{
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Dispose complete", v6, 2u);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    objc_setProperty_atomic(v4, v3, 0, 8);
  }

  return (*(*(a1 + 40) + 16))();
}

void sub_1000163AC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    *(v2 + 48) = *(a1 + 64);
  }

  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Initializing the delegate", buf, 2u);
  }

  v4 = 0;
  v5 = *(a1 + 72);
  if (v5 > 5)
  {
    if (v5 > 7)
    {
      switch(v5)
      {
        case 8:
          v6 = off_100024418;
          break;
        case 9:
          v6 = &off_100024428;
          break;
        case 10:
          v6 = off_100024420;
          break;
        default:
          goto LABEL_28;
      }

      goto LABEL_27;
    }

    if (v5 != 6)
    {
      v6 = off_100024410;
      goto LABEL_27;
    }

    goto LABEL_20;
  }

  if (v5 > 2)
  {
    if (v5 == 3)
    {
      v6 = NEAgentDNSProxyExtension_ptr;
      goto LABEL_27;
    }

    if (v5 != 4)
    {
      v6 = NEAgentPacketTunnelExtension_ptr;
LABEL_27:
      v9 = *v6;
      v4 = objc_opt_class();
      goto LABEL_28;
    }

LABEL_20:
    v6 = NEAgentFilterExtension_ptr;
    goto LABEL_27;
  }

  if (v5 == 1)
  {
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Legacy plugins are not supported on iOS", buf, 2u);
    }

    v8 = [[NSError alloc] initWithDomain:@"NEAgentErrorDomain" code:2 userInfo:0];
    goto LABEL_40;
  }

  if (v5 == 2)
  {
    v6 = NEAgentAppProxyExtension_ptr;
    goto LABEL_27;
  }

LABEL_28:
  v11 = [v4 alloc];
  v12 = *(a1 + 72);
  v14 = *(a1 + 40);
  v13 = *(a1 + 48);
  v15 = *(a1 + 32);
  if (v15)
  {
    Property = objc_getProperty(v15, v10, 16, 1);
    v17 = *(a1 + 32);
  }

  else
  {
    v17 = 0;
    Property = 0;
  }

  v19 = [v11 initWithPluginType:v14 pluginClass:v12 pluginInfo:v13 queue:Property factory:v17];
  v20 = *(a1 + 32);
  if (v20)
  {
    objc_setProperty_atomic(v20, v18, v19, 8);
  }

  kdebug_trace();
  v22 = *(a1 + 32);
  if (!v22 || !objc_getProperty(v22, v21, 8, 1))
  {
    v8 = [[NSError alloc] initWithDomain:@"NEAgentErrorDomain" code:2 userInfo:0];
    v27 = ne_log_obj();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "NEAgentSession: failed to create the delegate", buf, 2u);
    }

LABEL_40:
    (*(*(a1 + 56) + 16))();
    goto LABEL_41;
  }

  v24 = *(a1 + 32);
  if (v24)
  {
    v25 = objc_getProperty(v24, v23, 8, 1);
  }

  else
  {
    v25 = 0;
  }

  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10001672C;
  v28[3] = &unk_100024A48;
  v26 = *(a1 + 56);
  v28[4] = *(a1 + 32);
  v29 = v26;
  [v25 handleInitWithCompletionHandler:v28];
  v8 = v29;
LABEL_41:
}

void sub_10001672C(uint64_t a1, char a2, int a3)
{
  if (a2)
  {
    v4 = 0;
  }

  else
  {
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v16[0] = 67109120;
      v16[1] = a3;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "NEAgentSession: failed to initialize the delegate, shouldDisable %d", v16, 8u);
    }

    v7 = [NSError alloc];
    if (a3)
    {
      v8 = 2;
    }

    else
    {
      v8 = 1;
    }

    v4 = [v7 initWithDomain:@"NEAgentErrorDomain" code:v8 userInfo:0];
  }

  kdebug_trace();
  Property = *(a1 + 32);
  v11 = *(a1 + 40);
  if (Property)
  {
    Property = objc_getProperty(Property, v9, 40, 1);
  }

  v13 = [Property endpoint];
  v14 = *(a1 + 32);
  if (v14)
  {
    v14 = objc_getProperty(v14, v12, 8, 1);
  }

  v15 = [v14 uuids];
  (*(v11 + 16))(v11, v4, v13, v15);
}

id sub_100016A58(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 8, 1);
  }

  v4 = *(a1 + 40);

  return [Property handleAppsUninstalled:v4];
}

id sub_100016AA0(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 8, 1);
  }

  v4 = *(a1 + 40);

  return [Property handleAppsUpdateBegins:v4];
}

id sub_100016AE8(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 8, 1);
  }

  v4 = *(a1 + 40);

  return [Property handleAppsUpdateEnding:v4];
}

id sub_100016B30(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 8, 1);
  }

  v4 = *(a1 + 40);

  return [Property handleAppsUpdateEnds:v4];
}