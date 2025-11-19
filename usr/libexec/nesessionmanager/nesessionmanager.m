void sub_1000015F0(uint64_t a1, int token)
{
  state64 = 0;
  notify_get_state(token, &state64);
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v22 = "Locked";
    if (!state64)
    {
      v22 = "Unlocked";
    }

    *buf = 134218242;
    v37 = state64;
    v38 = 2080;
    v39 = v22;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Got a SpringBoard lock state event with state = %llu (%s)", buf, 0x16u);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v4, 120, 1);
  }

  obj = Property;
  v6 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v6)
  {
    v8 = v6;
    v24 = *v30;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v30 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v29 + 1) + 8 * i);
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v11 = *(a1 + 32);
        if (v11)
        {
          v11 = objc_getProperty(v11, v7, 120, 1);
        }

        v12 = [v11 objectForKeyedSubscript:v10];
        v13 = [v12 countByEnumeratingWithState:&v25 objects:v34 count:16];
        if (v13)
        {
          v15 = v13;
          v16 = *v26;
          do
          {
            for (j = 0; j != v15; j = j + 1)
            {
              if (*v26 != v16)
              {
                objc_enumerationMutation(v12);
              }

              v18 = *(*(&v25 + 1) + 8 * j);
              v19 = *(a1 + 32);
              if (state64)
              {
                if (v19)
                {
                  v19 = objc_getProperty(v19, v14, 120, 1);
                }

                v20 = [v19 objectForKeyedSubscript:v10];
                v21 = [v20 objectForKeyedSubscript:v18];
                [v21 handleDeviceLock];
              }

              else
              {
                if (v19)
                {
                  v19 = objc_getProperty(v19, v14, 120, 1);
                }

                v20 = [v19 objectForKeyedSubscript:v10];
                v21 = [v20 objectForKeyedSubscript:v18];
                [v21 handleDeviceUnlock];
              }
            }

            v15 = [v12 countByEnumeratingWithState:&v25 objects:v34 count:16];
          }

          while (v15);
        }
      }

      v8 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v8);
  }
}

void sub_1000018C0(void *a1, uint64_t a2, int a3, void *a4)
{
  v6 = a1;
  v8 = v6;
  if (a3 > -536870145)
  {
    if (a3 == -536870144)
    {
      sub_10009C0D4(v6, 2);
    }

    else if (a3 == -536870112 && v6)
    {
      objc_setProperty_atomic_copy(v6, v7, 0, 32);
    }
  }

  else if (a3 == -536870288)
  {
    if (v6)
    {
      WeakRetained = objc_loadWeakRetained(v6 + 3);
    }

    else
    {
      WeakRetained = 0;
    }

    v11 = [WeakRetained canSleep];

    if (v11)
    {
      if (v8)
      {
        v12 = *(v8 + 2);
      }

      else
      {
        v12 = 0;
      }

      IOAllowPowerChange(v12, a4);
    }

    else
    {
      if (v8)
      {
        v13 = *(v8 + 2);
      }

      else
      {
        v13 = 0;
      }

      IOCancelPowerChange(v13, a4);
    }
  }

  else if (a3 == -536870272)
  {
    objc_initWeak(&location, v6);
    newValue[0] = _NSConcreteStackBlock;
    newValue[1] = 3221225472;
    newValue[2] = sub_10009C07C;
    newValue[3] = &unk_1000EACE0;
    objc_copyWeak(v15, &location);
    v15[1] = a4;
    if (v8)
    {
      objc_setProperty_atomic_copy(v8, v9, newValue, 32);
    }

    sub_10009C0D4(v8, 1);
    objc_destroyWeak(v15);
    objc_destroyWeak(&location);
  }
}

void sub_100001A6C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100002040(uint64_t a1)
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

void sub_100002284(uint64_t a1, int a2)
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

void sub_100002428(uint64_t a1, int a2)
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

id sub_100002658(uint64_t a1, const char *a2)
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
      v7[2] = sub_100002708;
      v7[3] = &unk_1000EAD98;
      v7[4] = v6;
      return [Property startWithCompletion:v7];
    }
  }

  return result;
}

void sub_100002708(uint64_t a1, int a2)
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

id sub_100002938(uint64_t a1, const char *a2)
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
      v7[2] = sub_1000029E8;
      v7[3] = &unk_1000EAD98;
      v7[4] = v6;
      return [Property startWithCompletion:v7];
    }
  }

  return result;
}

void sub_1000029E8(uint64_t a1, int a2)
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

void sub_100002CCC(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    objc_setProperty_atomic(v3, a2, *(a1 + 40), 56);
  }
}

id sub_100002DFC(uint64_t a1, const char *a2)
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
      v17 = sub_100002F34;
      v18 = &unk_1000EAD98;
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
        v12 = sub_100003010;
        v13 = &unk_1000EAD98;
        v14 = v9;
        v7 = &v10;
        return [result wakeWithCompletion:{v7, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19}];
      }
    }
  }

  return result;
}

void sub_100002F34(uint64_t a1, int a2)
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

void sub_100003010(uint64_t a1, int a2)
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

void sub_10000322C(uint64_t a1, const char *a2)
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
      v17[2] = sub_1000033D0;
      v17[3] = &unk_1000EAD70;
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
      v15[2] = sub_1000034BC;
      v15[3] = &unk_1000EAD70;
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

uint64_t sub_1000033D0(uint64_t a1, int a2)
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

uint64_t sub_1000034BC(uint64_t a1, int a2)
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

void sub_100003718(id *a1, const char *a2)
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
      v56 = sub_100003BF4;
      v57 = &unk_1000EAD70;
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
    v50 = sub_100003E9C;
    v51 = &unk_1000EAD70;
    v52 = v47;
    v41 = &v53;
    v53 = a1[6];
    v42 = &v48;
    goto LABEL_33;
  }
}

void sub_100003BF4(uint64_t a1, unsigned int a2)
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

  if ((sub_100004110(*(a1 + 32)) & 1) == 0)
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

  v7 = sub_100004488(*(a1 + 32), v6);
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

void sub_100003E9C(uint64_t a1, int a2)
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

  if ((sub_100004110(*(a1 + 32)) & 1) == 0)
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

  v7 = sub_100004488(*(a1 + 32), v6);
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

uint64_t sub_100004110(uint64_t a1)
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
  v5 = sub_10000464C(v1, v4);
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

uint64_t sub_100004488(uint64_t a1, const char *a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = sub_10000464C(a1, a2);
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

id sub_10000464C(_DWORD *self, const char *a2)
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

void sub_100004764(id a1)
{
  qword_1000FD4D8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NEHotspotPluginDriver];

  _objc_release_x1();
}

void sub_100004800(id a1)
{
  qword_1000FD4C8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NEHotspotPluginManager];

  _objc_release_x1();
}

void sub_100004990(uint64_t a1, const char *a2)
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

void sub_100004C08(uint64_t a1, const char *a2)
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

void sub_100004DE8(uint64_t a1, const char *a2)
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

void sub_10000502C(uint64_t a1, const char *a2)
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

void sub_1000052A8(uint64_t a1, int a2)
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

void sub_1000053A4(uint64_t a1, int a2)
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

uint64_t sub_1000055D8(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100006028(uint64_t a1, void *a2)
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

  sub_100006110(v5, v7, v6);
}

void sub_100006110(void *a1, void *a2, void *a3)
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

void sub_1000062A0(uint64_t a1)
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

void sub_100006420(uint64_t a1, void *a2)
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

  sub_100006508(v5, v6);
}

void sub_100006508(void *a1, void *a2)
{
  if (a1)
  {
    v3 = a2;
    v4 = [a1 managerObjectFactory];
    v5 = [v4 managerObject];

    [v5 handleProviderError:v3];
  }
}

void sub_10000699C(void *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = [a1 managerObjectFactory];
    v4 = [v3 managerObject];

    [v4 handleProviderInstallationStatus:a2];
  }
}

void sub_100006DE8(id a1)
{
  qword_1000FD4F8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NEAppPushPluginDriver];

  _objc_release_x1();
}

void sub_100006E84(id a1)
{
  qword_1000FD4E8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NEAppPushPluginManager];

  _objc_release_x1();
}

void sub_100007090(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v9 = a4;
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v8, 24, 1);
  }

  v11 = Property;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007198;
  block[3] = &unk_1000EAED8;
  v19 = a2;
  v12 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v17 = v7;
  v18 = v12;
  v16 = v9;
  v13 = v7;
  v14 = v9;
  dispatch_async(v11, block);
}

void sub_100007198(uint64_t a1)
{
  if (*(a1 + 64))
  {
    v2 = *(a1 + 32);
    v3 = [*(a1 + 40) pid];
    v4 = [NSArray alloc];
    v5 = [*(a1 + 40) uuid];
    v6 = [v4 initWithObjects:{v5, 0}];
    sub_100093CD4(v2, v3, v6);

    v7 = [[NSArray alloc] initWithObjects:{*(a1 + 40), 0}];
    sub_100093CC4(*(a1 + 32), v7);

    Property = *(a1 + 32);
    if (Property)
    {
      Property = objc_getProperty(Property, v8, 32, 1);
    }

    v10 = Property;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000073C4;
    block[3] = &unk_1000EB310;
    v19 = *(a1 + 56);
    v18 = *(a1 + 48);
    dispatch_async(v10, block);

    v11 = v19;
  }

  else
  {
    v13 = [[NSError alloc] initWithDomain:@"NEAgentErrorDomain" code:2 userInfo:0];
    v14 = *(a1 + 32);
    if (v14)
    {
      v14 = objc_getProperty(v14, v12, 32, 1);
    }

    v15 = v14;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000073AC;
    v20[3] = &unk_1000EB310;
    v16 = *(a1 + 56);
    v21 = v13;
    v22 = v16;
    v11 = v13;
    dispatch_async(v15, v20);
  }
}

void sub_1000075C4(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 384);
    if (v2)
    {
      v34 = 0;
      v3 = [v2 getSubscriptionInfoWithError:&v34];
      v4 = v34;
      if (v4)
      {
        v5 = v4;
        v6 = ne_log_obj();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v37 = v5;
          _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to getCarrierSubscriptionInfo - %@", buf, 0xCu);
        }
      }

      else
      {
        v6 = [[CTBundle alloc] initWithBundleType:1];
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        obj = [v3 subscriptions];
        v7 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
        if (v7)
        {
          v8 = v7;
          v26 = v3;
          v5 = 0;
          v9 = *v31;
          do
          {
            v10 = 0;
            do
            {
              v11 = v5;
              if (*v31 != v9)
              {
                objc_enumerationMutation(obj);
              }

              v12 = *(*(&v30 + 1) + 8 * v10);
              v13 = *(a1 + 384);
              v29 = v5;
              v14 = [v13 copyCarrierBundleValue:v12 keyHierarchy:&off_1000EE1C8 bundleType:v6 error:&v29];
              v5 = v29;

              if (v5)
              {
                v15 = ne_log_obj();
                if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v37 = v5;
                  _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to get Carrier Bundle UseIPSec setting - %@", buf, 0xCu);
                }
              }

              else if (v14)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v16 = v14;
                  v17 = ne_log_obj();
                  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412290;
                    v37 = v16;
                    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Retrieved Carrier Bundle UseIPSec setting: %@", buf, 0xCu);
                  }

                  v18 = [v16 BOOLValue];
                  if (v18)
                  {

                    v5 = 0;
                    v20 = 1;
                    goto LABEL_25;
                  }
                }
              }

              v10 = v10 + 1;
            }

            while (v8 != v10);
            v19 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
            v8 = v19;
          }

          while (v19);
          v20 = 0;
LABEL_25:
          v3 = v26;
        }

        else
        {
          v20 = 0;
          v5 = 0;
        }

        *(a1 + 352) = v20;
      }
    }

    v21 = [[CoreTelephonyClient alloc] initWithQueue:0];
    v22 = v21;
    if (v21)
    {
      v28 = 0;
      v23 = [v21 getNATTKeepAliveOverCellForPreferredDataContext:&v28];
      v24 = v28;
      if (v24)
      {
        v25 = ne_log_obj();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v37 = v24;
          _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Failed to query Cellular NATTKeepAlive: %@", buf, 0xCu);
        }

        v23 = 0;
      }

      *(a1 + 356) = v23;
    }
  }
}

void sub_100007A38(uint64_t a1, const char *a2)
{
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 400, 1);
  }

  v3 = [Property allValues];
  v4 = [v3 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v36;
    *&v5 = 138412802;
    v32 = v5;
    v33 = v3;
    do
    {
      v8 = 0;
      do
      {
        if (*v36 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v35 + 1) + 8 * v8);
        if (([v9 isSecondaryConnection] & 1) == 0 && objc_msgSend(v9, "status") == 3)
        {
          v10 = [v9 configuration];
          v11 = [v10 alwaysOnVPN];
          v12 = [v11 applicationExceptions];
          v13 = [v12 count];

          if (v13)
          {
            v14 = ne_log_obj();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
            {
              v15 = *(a1 + 32);
              v16 = [v9 interfaceName];
              *buf = v32;
              *&buf[4] = v15;
              *&buf[12] = 2112;
              *&buf[14] = v16;
              *&buf[22] = 2080;
              v41 = "[NESMAlwaysOnSession handleInstalledAppsChanged]_block_invoke";
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%@[%@]:%s: Installing Application Exception data policies", buf, 0x20u);
            }

            v17 = [*(a1 + 32) policySession];
            v18 = [v9 interfaceName];
            v19 = [*(a1 + 32) configuration];
            v20 = [v19 alwaysOnVPN];
            v21 = [v20 applicationExceptions];
            v22 = v18;
            v23 = v21;
            v24 = v23;
            if (v17)
            {
              *buf = _NSConcreteStackBlock;
              *&buf[8] = 3221225472;
              *&buf[16] = sub_10004A3F4;
              v41 = &unk_1000EA148;
              v42 = v17;
              v25 = v22;
              v43 = v25;
              v26 = v24;
              v44 = v26;
              v45 = 1;
              v27 = sub_100031500(NESMPolicyMasterSession, buf);

              v3 = v33;
              if (v27)
              {
                goto LABEL_18;
              }
            }

            else
            {

              v3 = v33;
            }

            v28 = ne_log_obj();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              v29 = *(a1 + 32);
              v30 = [v9 interfaceName];
              *buf = v32;
              *&buf[4] = v29;
              *&buf[12] = 2112;
              *&buf[14] = v30;
              *&buf[22] = 2080;
              v41 = "[NESMAlwaysOnSession handleInstalledAppsChanged]_block_invoke";
              _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%@[%@]:%s: Application Exception data policies install failed", buf, 0x20u);
            }
          }
        }

LABEL_18:
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v31 = [v3 countByEnumeratingWithState:&v35 objects:v39 count:16];
      v6 = v31;
    }

    while (v31);
  }
}

id sub_100007ED4(uint64_t a1)
{
  sub_100007F18(*(a1 + 32));
  v2 = *(a1 + 32);

  return [v2 startWithCommand:0 isOnDemand:0];
}

void sub_100007F18(void *a1)
{
  if (!a1)
  {
    return;
  }

  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Setting up Always-On VPN control policies", buf, 2u);
  }

  v3 = [a1 controlPolicySession];
  [v3 removeAllPolicies];

  v4 = [a1 highPolicySession];
  [v4 removeAllPolicies];

  [a1 setDefaultDropType:0];
  v5 = [a1 configuration];
  if (v5)
  {
    v6 = [a1 configuration];
    v7 = [v6 alwaysOnVPN];

    if (!v7)
    {
LABEL_27:
      LOBYTE(v5) = 0;
      goto LABEL_34;
    }

    v46 = 2;
    v8 = [a1 controlPolicySession];
    v9 = [a1 configuration];
    Property = [a1 server];
    v12 = Property;
    if (Property)
    {
      Property = objc_getProperty(Property, v11, 80, 1);
    }

    v13 = Property;
    v14 = sub_100065E5C(v8, v9, &v46, v13);

    if ((v14 & 1) == 0)
    {
      v15 = ne_log_obj();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "AlwaysOnVPN evaluateConfiguration failed", buf, 2u);
      }
    }

    if (v46)
    {
      [a1 setDefaultDropType:?];
    }

    v16 = [a1 highPolicySession];
    v17 = [a1 configuration];
    v18 = [a1 server];
    v20 = v18;
    if (v18)
    {
      v18 = objc_getProperty(v18, v19, 80, 1);
    }

    v21 = v18;
    v22 = v21;
    if (v16)
    {
      *buf = 50;
      sub_1000634E0(v16, buf, v17, &v46, 1);
    }

    else
    {

      v16 = ne_log_obj();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "AlwaysOnVPN evaluateConfiguration failed", buf, 2u);
      }
    }

    if (v46)
    {
      [a1 setDefaultDropType:?];
    }

    v23 = [a1 configuration];
    v24 = [v23 alwaysOnVPN];
    v25 = [v24 isEnabled];

    if (v25)
    {
LABEL_33:
      LOBYTE(v5) = 1;
      goto LABEL_34;
    }

    v26 = [a1 server];
    if (!v26)
    {
      goto LABEL_26;
    }

    v27 = v26;
    v28 = SCPreferencesCreate(kCFAllocatorDefault, @"NEHelper control settings", @"/Library/Preferences/com.apple.networkextension.control.plist");
    if (v28)
    {
      v29 = v28;
      Value = SCPreferencesGetValue(v28, @"AOVPNDropAll");
      TypeID = CFBooleanGetTypeID();
      if (Value && CFGetTypeID(Value) == TypeID)
      {
        v32 = CFBooleanGetValue(Value);
        CFRelease(v29);

        if (!v32)
        {
LABEL_26:
          [a1 setDefaultDropType:0];
          goto LABEL_27;
        }

        goto LABEL_30;
      }

      CFRelease(v29);
    }

LABEL_30:
    v33 = ne_log_obj();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = [a1 defaultDropType];
      *buf = 134218240;
      *v48 = v34;
      *&v48[8] = 1024;
      *&v48[10] = 1;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "AOVPNDropAll set, IP Drop-All enabled <%ld> persistFeature <%d>", buf, 0x12u);
    }

    goto LABEL_33;
  }

LABEL_34:
  [a1 setIsDropPersistent:1];
  v35 = [a1 controlPolicySession];
  v36 = [v35 apply];

  if ((v36 & 1) == 0)
  {
    v37 = ne_log_obj();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "AlwaysOnVPN Could not apply control policies", buf, 2u);
    }
  }

  v38 = [a1 highPolicySession];
  v39 = [v38 apply];

  if ((v39 & 1) == 0)
  {
    v40 = ne_log_obj();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "AlwaysOnVPN Could not apply High control policies", buf, 2u);
    }
  }

  v41 = ne_log_obj();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    v42 = [a1 defaultDropType];
    v43 = [a1 isDropPersistent];
    v44 = "Non-Persistent";
    if (v43)
    {
      v44 = "Persistent";
    }

    *buf = 67109378;
    *v48 = v42;
    *&v48[4] = 2080;
    *&v48[6] = v44;
    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "AlwaysOnVPN setting IP Drop-All to %d (%s)", buf, 0x12u);
  }

  v45 = [a1 server];
  sub_10005A708(v45, @"drop_all_feature_always_on_vpn", v5);
}

void sub_1000088D8(uint64_t a1, const char *a2)
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 400, 1);
  }

  v4 = Property;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        v11 = *(a1 + 32);
        if (v11)
        {
          v11 = objc_getProperty(v11, v6, 400, 1);
        }

        v12 = [v11 objectForKeyedSubscript:{v10, v13}];
        [v12 handleNetworkConfigurationChange:*(a1 + 40)];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

void sub_1000092C8(uint64_t a1)
{
  if (!nwi_state_copy())
  {
    v10 = 0;
    v37 = 0;
    v9 = 0;
    goto LABEL_54;
  }

  interface_names = nwi_state_get_interface_names();
  if (interface_names)
  {
    v4 = malloc_type_calloc(interface_names, 8uLL, 0x50040EE9192B6uLL);
    if (v4)
    {
      v5 = v4;
      v6 = nwi_state_get_interface_names();
      if (v6)
      {
        v8 = 0;
        v9 = 0;
        v69 = 0;
        v10 = 0;
        v72 = v6;
        *&v7 = 138412802;
        v66 = v7;
        v67 = v5;
        v68 = a1;
        do
        {
          if (v5[v8] && nwi_state_get_ifstate() && !nwi_ifstate_get_vpn_server() && (nwi_ifstate_get_flags() & 3) != 0 && (nwi_ifstate_get_flags() & 4) != 0)
          {
            v70 = v10;
            v71 = v9;
            v11 = [NSString stringWithUTF8String:nwi_ifstate_get_ifname()];
            v12 = *(a1 + 32);
            v14 = v11;
            if (v12)
            {
              v89 = 0;
              v85 = 0u;
              v86 = 0u;
              v87 = 0u;
              v88 = 0u;
              v15 = objc_getProperty(v12, v13, 400, 1);
              v16 = [v15 countByEnumeratingWithState:&v85 objects:v96 count:16];
              if (v16)
              {
                v18 = v16;
                v19 = 0;
                v20 = *v86;
                while (2)
                {
                  for (i = 0; i != v18; i = i + 1)
                  {
                    v22 = v19;
                    if (*v86 != v20)
                    {
                      objc_enumerationMutation(v15);
                    }

                    v19 = [objc_getProperty(v12 v17];

                    if (v19)
                    {
                      if ([v19 virtualInterface])
                      {
                        [v19 virtualInterface];
                        v23 = NEVirtualInterfaceCopyName();
                        v89 = v23;
                        if (v23)
                        {
                          if ([v14 isEqualToString:v23])
                          {
                            v24 = ne_log_obj();
                            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
                            {
                              *buf = v66;
                              v91 = v12;
                              v92 = 2080;
                              v93 = "[NESMAlwaysOnSession isVirtualInterface:]";
                              v94 = 2112;
                              v95 = v14;
                              _os_log_debug_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "%@:%s: ifName %@ is a virtual interface)", buf, 0x20u);
                            }

                            myCFRelease();
                            v25 = ne_log_obj();
                            a1 = v68;
                            v5 = v67;
                            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
                            {
                              v35 = *(v68 + 32);
                              *v96 = v66;
                              v97 = v35;
                              v98 = 2080;
                              v99 = "[NESMAlwaysOnSession handleChangeEventForInterface:newFlags:previousFlags:]_block_invoke";
                              v100 = 2112;
                              v101 = v14;
                              _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "%@:%s: ifName %@ is a virtual interface, SKIP!", v96, 0x20u);
                            }

                            v10 = v70;
                            v9 = v71;
                            goto LABEL_49;
                          }

                          myCFRelease();
                        }
                      }
                    }
                  }

                  v18 = [v15 countByEnumeratingWithState:&v85 objects:v96 count:16];
                  if (v18)
                  {
                    continue;
                  }

                  break;
                }
              }

              else
              {
                v19 = 0;
              }
            }

            a1 = v68;
            Property = *(v68 + 32);
            v9 = v71;
            if (Property)
            {
              Property = objc_getProperty(Property, v26, 400, 1);
            }

            v5 = v67;
            v28 = Property;
            v29 = [v28 objectForKeyedSubscript:v14];

            if (v29)
            {
              if (v71)
              {
                [v29 setIsSecondaryInterface:1];
                v10 = v29;
              }

              else
              {
                v10 = v29;
                [v10 setIsSecondaryInterface:0];
                v9 = v10;
              }
            }

            else
            {
              v30 = sub_100009DCC(*(v68 + 32), v14);

              if (v30)
              {
                v31 = v71;
                if (!v71)
                {
                  v31 = v30;
                }

                [v30 setIsSecondaryInterface:v71 != 0];
                v32 = ne_log_obj();
                if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
                {
                  v36 = *(v68 + 32);
                  *v96 = v66;
                  v97 = v36;
                  v98 = 2080;
                  v99 = "[NESMAlwaysOnSession handleChangeEventForInterface:newFlags:previousFlags:]_block_invoke";
                  v100 = 2112;
                  v101 = v14;
                  _os_log_debug_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "%@:%s: Set up VPN Session over %@", v96, 0x20u);
                }

                v34 = *(v68 + 32);
                if (v34)
                {
                  v34 = objc_getProperty(v34, v33, 400, 1);
                }

                [v34 setObject:v30 forKeyedSubscript:{v14, v66}];
                [v30 handleInitializeState];
                v69 = v30;
                v9 = v31;
                v10 = 0;
              }

              else
              {
                v10 = 0;
                v69 = 0;
              }
            }

LABEL_49:
          }

          ++v8;
        }

        while (v8 != v72);
        free(v5);
        v37 = v69;
        goto LABEL_53;
      }

      free(v5);
    }
  }

  v10 = 0;
  v37 = 0;
  v9 = 0;
LABEL_53:
  nwi_state_release();
LABEL_54:
  sub_10000A028(*(a1 + 32), v2);
  sub_10000A1D4(*(a1 + 32), v38);
  v40 = *(a1 + 32);
  if (v40)
  {
    v40 = objc_getProperty(v40, v39, 400, 1);
  }

  v41 = [v40 objectForKeyedSubscript:{*(a1 + 40), v66}];
  v42 = ne_log_obj();
  v43 = v42;
  if (v41)
  {
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
    {
      v57 = *(a1 + 32);
      v58 = [*(a1 + 40) UTF8String];
      v59 = [v41 state];
      *v96 = 138413058;
      v97 = v57;
      v98 = 2080;
      v99 = "[NESMAlwaysOnSession handleChangeEventForInterface:newFlags:previousFlags:]_block_invoke";
      v100 = 2080;
      v101 = v58;
      v102 = 1024;
      v103 = v59;
      _os_log_debug_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEBUG, "%@:%s: checking for %s (vpn_session state %d)", v96, 0x26u);
    }

    sub_10000A414(*(a1 + 32), v41);
    v44 = *(a1 + 48);
    if ((v44 & 3) == 0 || (v44 & 4) == 0)
    {
      v49 = [v41 queue];
      v73[0] = _NSConcreteStackBlock;
      v73[1] = 3221225472;
      v73[2] = sub_10000A72C;
      v73[3] = &unk_1000EB198;
      v74 = v41;
      v75 = *(a1 + 40);
      dispatch_async(v49, v73);

      v48 = v74;
LABEL_80:

      goto LABEL_81;
    }

    v45 = [v41 state];
    if (v45 > 3)
    {
      if (v45 == 6 || v45 == 4)
      {
        v50 = ne_log_obj();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
        {
          v62 = *(a1 + 32);
          *v96 = 138412546;
          v97 = v62;
          v98 = 2080;
          v99 = "[NESMAlwaysOnSession handleChangeEventForInterface:newFlags:previousFlags:]_block_invoke";
          _os_log_debug_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEBUG, "%@:%s: calling handleInterfaceAvailable", v96, 0x16u);
        }

        v51 = [v41 queue];
        v81[0] = _NSConcreteStackBlock;
        v81[1] = 3221225472;
        v81[2] = sub_10000A4E8;
        v81[3] = &unk_1000EAB78;
        v52 = *(a1 + 32);
        v84 = *(a1 + 56);
        v81[4] = v52;
        v82 = v41;
        v83 = *(a1 + 40);
        dispatch_async(v51, v81);

        v48 = v82;
        goto LABEL_80;
      }
    }

    else
    {
      if (v45 == 1)
      {
        v55 = ne_log_obj();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
        {
          v64 = *(a1 + 32);
          if (v64)
          {
            v65 = *(v64 + 353) & 1;
          }

          else
          {
            v65 = 0;
          }

          *v96 = 138412802;
          v97 = v64;
          v98 = 2080;
          v99 = "[NESMAlwaysOnSession handleChangeEventForInterface:newFlags:previousFlags:]_block_invoke_2";
          v100 = 1024;
          LODWORD(v101) = v65;
          _os_log_debug_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEBUG, "%@:%s: Starting VPN Session (stopped %d)", v96, 0x1Cu);
        }

        v56 = [v41 queue];
        v76[0] = _NSConcreteStackBlock;
        v76[1] = 3221225472;
        v76[2] = sub_10000A6B0;
        v76[3] = &unk_1000EB198;
        v76[4] = *(a1 + 32);
        v77 = v41;
        dispatch_async(v56, v76);

        v48 = v77;
        goto LABEL_80;
      }

      if (v45 == 2)
      {
        v46 = ne_log_obj();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
        {
          v63 = *(a1 + 32);
          *v96 = 138412546;
          v97 = v63;
          v98 = 2080;
          v99 = "[NESMAlwaysOnSession handleChangeEventForInterface:newFlags:previousFlags:]_block_invoke";
          _os_log_debug_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEBUG, "%@:%s: calling handleNetworkPrepareResult", v96, 0x16u);
        }

        v47 = [v41 queue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10000A6A4;
        block[3] = &unk_1000EB198;
        v79 = v41;
        v80 = *(a1 + 40);
        dispatch_async(v47, block);

        v48 = v79;
        goto LABEL_80;
      }
    }

    v43 = ne_log_obj();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
    {
      v53 = *(a1 + 32);
      v54 = [v41 state];
      *v96 = 138412802;
      v97 = v53;
      v98 = 2080;
      v99 = "[NESMAlwaysOnSession handleChangeEventForInterface:newFlags:previousFlags:]_block_invoke_2";
      v100 = 1024;
      LODWORD(v101) = v54;
      _os_log_debug_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEBUG, "%@:%s: no handling for state %d", v96, 0x1Cu);
    }
  }

  else if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
  {
    v60 = *(a1 + 32);
    v61 = *(a1 + 40);
    *v96 = 138412802;
    v97 = v60;
    v98 = 2080;
    v99 = "[NESMAlwaysOnSession handleChangeEventForInterface:newFlags:previousFlags:]_block_invoke";
    v100 = 2112;
    v101 = v61;
    _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "%@:%s: no vpn session for %@", v96, 0x20u);
  }

LABEL_81:
}

NESMIKEv2VPNSession *sub_100009DCC(NESMIKEv2VPNSession *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = sub_10000A780(a1, v3);
    if (!v4)
    {
      goto LABEL_9;
    }

    v5 = [(NESMSession *)a1 configuration];
    v6 = [v5 alwaysOnVPN];
    v7 = [v6 interfaceProtocolMapping];
    v8 = [v7 objectForKeyedSubscript:v4];

    if (v8)
    {
      v9 = [(NESMSession *)a1 configuration];
      v10 = [v9 copy];

      v11 = [NESMIKEv2VPNSession alloc];
      v12 = [(NESMSession *)a1 server];
      v13 = [v10 alwaysOnVPN];
      v14 = [v13 interfaceProtocolMapping];
      v15 = [v14 objectForKeyedSubscript:v4];
      if (v11)
      {
        *v18 = v11;
        *&v18[8] = NESMIKEv2VPNSession;
        v11 = objc_msgSendSuper2(v18, "initWithConfiguration:andServer:andProtocol:andPluginType:andSessionType:sessionQueue:messageQueue:tunnelKind:parent:", v10, v12, v15, @"com.apple.NetworkExtension.IKEv2Provider", 3, 0, 0, 1, a1);
      }

      [(NESMVPNSession *)v11 setInterfaceName:v3];
      v16 = ne_log_obj();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *v18 = 138412802;
        *&v18[4] = a1;
        *&v18[12] = 2080;
        *&v18[14] = "[NESMAlwaysOnSession createVPNSession:]";
        v19 = 2112;
        v20 = v3;
        _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%@:%s: Created VPN Session over %@", v18, 0x20u);
      }

      a1 = v11;
    }

    else
    {
LABEL_9:
      a1 = 0;
    }
  }

  return a1;
}

void sub_10000A028(void *a1, const char *a2)
{
  if (a1 && !objc_getProperty(a1, a2, 360, 1))
  {
    v3 = [a1 getIDSNetworkAgentDomain];
    objc_setProperty_atomic(a1, v4, v3, 376);

    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v12 = 138412546;
      Property = objc_getProperty(a1, v6, 376, 1);
      v14 = 2112;
      v15 = @"clientchannel";
      _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Watching <%@, %@> path", &v12, 0x16u);
    }

    v7 = objc_alloc_init(NWParameters);
    [v7 requireNetworkAgentWithDomain:objc_getProperty(a1 type:{v8, 376, 1), @"clientchannel"}];
    v9 = [[NWPathEvaluator alloc] initWithEndpoint:0 parameters:v7];
    objc_setProperty_atomic(a1, v10, v9, 360);

    [objc_getProperty(a1 v11];
  }
}

void sub_10000A1D4(void *a1, const char *a2)
{
  if (a1)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v3 = objc_getProperty(a1, a2, 400, 1);
    v4 = [v3 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v4)
    {
      v6 = v4;
      v7 = 0;
      v8 = *v28;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v28 != v8)
          {
            objc_enumerationMutation(v3);
          }

          v10 = [objc_getProperty(a1 v5];
          v11 = [v10 pluginConfigurationEntities];

          if (v11 && (!v7 || ([v10 isSecondaryInterface] & 1) == 0))
          {
            v12 = v10;

            v7 = v12;
          }
        }

        v6 = [v3 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v6);
    }

    else
    {
      v7 = 0;
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v14 = objc_getProperty(a1, v13, 400, 1);
    v15 = [v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v15)
    {
      v17 = v15;
      v18 = *v24;
      do
      {
        for (j = 0; j != v17; j = j + 1)
        {
          if (*v24 != v18)
          {
            objc_enumerationMutation(v14);
          }

          v20 = *(*(&v23 + 1) + 8 * j);
          Property = objc_getProperty(a1, v16, 400, 1);
          v22 = [Property objectForKeyedSubscript:{v20, v23}];
          [v22 setIsSecondaryConnection:v22 != v7];
        }

        v17 = [v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v17);
    }
  }
}

void sub_10000A414(void *a1, void *a2)
{
  v9 = a2;
  if (a1)
  {
    if (objc_getProperty(a1, v3, 408, 1))
    {
      v4 = [v9 interfaceName];

      if (v4)
      {
        v6 = objc_getProperty(a1, v5, 408, 1);
        v7 = [v9 interfaceName];
        v8 = [v6 objectForKeyedSubscript:v7];

        if (v8)
        {
          v8[1] = 0;
          v8[2] = 0;
        }
      }
    }
  }
}

void sub_10000A4E8(uint64_t a1)
{
  if ((*(a1 + 56) & 3) == 0 || (*(a1 + 56) & 4) == 0)
  {
    v3 = [*(a1 + 32) policySession];
    v4 = [*(a1 + 40) primaryTunnelPlugin];
    v5 = sub_10001A2D4(v4);
    v6 = [*(a1 + 40) primaryTunnelPlugin];
    v8 = sub_100019748(v6, v7);
    v9 = *(a1 + 48);
    v10 = [*(a1 + 40) protocol];
    LOBYTE(v5) = sub_10004898C(v3, v5, v8, v9, [v10 enableRevocationCheck]);

    if ((v5 & 1) == 0)
    {
      v11 = ne_log_obj();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v13 = *(a1 + 32);
        v14 = [*(a1 + 40) primaryTunnelPlugin];
        v15 = 138412802;
        v16 = v13;
        v17 = 2080;
        v18 = "[NESMAlwaysOnSession handleChangeEventForInterface:newFlags:previousFlags:]_block_invoke";
        v19 = 1024;
        v20 = sub_10001A2D4(v14);
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%@:%s: failed to add Tunnel Control Policies for pid %d", &v15, 0x1Cu);
      }
    }
  }

  v12 = [*(a1 + 40) stateHandler];
  [v12 handleInterfaceAvailable:*(a1 + 48) changed:0];
}

_BYTE *sub_10000A6B0(uint64_t a1, const char *a2)
{
  result = *(a1 + 32);
  if (result)
  {
    if (result[353])
    {
      return result;
    }

    v4 = *(a1 + 40);
    Property = objc_getProperty(result, a2, 392, 1);
  }

  else
  {
    Property = 0;
    v4 = *(a1 + 40);
  }

  return [v4 handleStartMessage:Property];
}

void sub_10000A72C(uint64_t a1)
{
  v2 = [*(a1 + 32) stateHandler];
  [v2 handleInterfaceUnavailable:*(a1 + 40)];
}

const __CFString *sub_10000A780(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!a1)
  {
    v9 = 0;
    goto LABEL_14;
  }

  if (v3)
  {
    [v3 UTF8String];
    if (NEGetInterfaceType())
    {
      v5 = ne_log_obj();
      v9 = @"AlwaysOnVPNInterfaceCellular";
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138413058;
        v12 = a1;
        v13 = 2080;
        v14 = "[NESMAlwaysOnSession getConfigurationIndex:]";
        v15 = 2112;
        v16 = v4;
        v17 = 2112;
        v18 = @"AlwaysOnVPNInterfaceCellular";
        _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%@:%s: ifName %@: cfg index %@", buf, 0x2Au);
      }

      goto LABEL_13;
    }

    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v12 = a1;
      v13 = 2080;
      v14 = "[NESMAlwaysOnSession getConfigurationIndex:]";
      v15 = 2112;
      v16 = v4;
      v6 = "%@:%s: Failed to get interface type for %@";
      v7 = v5;
      v8 = 32;
      goto LABEL_11;
    }
  }

  else
  {
    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v12 = a1;
      v13 = 2080;
      v14 = "[NESMAlwaysOnSession getConfigurationIndex:]";
      v6 = "%@:%s: null ifName";
      v7 = v5;
      v8 = 22;
LABEL_11:
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, v6, buf, v8);
    }
  }

  v9 = 0;
LABEL_13:

LABEL_14:
  return v9;
}

uint64_t sub_10000AC34(uint64_t a1)
{
  v2 = [*(a1 + 32) copyExtendedStatus];
  if (v2)
  {
    [*(a1 + 40) setObject:v2 forKeyedSubscript:*(a1 + 48)];
  }

  return _objc_release_x1();
}

void sub_10000B1A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(&a53, 8);
  _Block_object_dispose(&a57, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000B21C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000B234(uint64_t a1)
{
  v2 = [*(a1 + 32) copyStatistics];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(*(a1 + 40) + 8) + 40);
  if (v5)
  {
    v6 = [v5 objectForKeyedSubscript:@"BytesIn"];
    *(*(*(a1 + 48) + 8) + 24) += [v6 unsignedLongLongValue];

    v7 = [*(*(*(a1 + 40) + 8) + 40) objectForKeyedSubscript:@"BytesOut"];
    *(*(*(a1 + 56) + 8) + 24) += [v7 unsignedLongLongValue];

    v8 = [*(*(*(a1 + 40) + 8) + 40) objectForKeyedSubscript:@"PacketsIn"];
    *(*(*(a1 + 64) + 8) + 24) += [v8 unsignedLongLongValue];

    v9 = [*(*(*(a1 + 40) + 8) + 40) objectForKeyedSubscript:@"PacketsOut"];
    *(*(*(a1 + 72) + 8) + 24) += [v9 unsignedLongLongValue];

    v10 = [*(*(*(a1 + 40) + 8) + 40) objectForKeyedSubscript:@"ErrorsIn"];
    *(*(*(a1 + 80) + 8) + 24) += [v10 unsignedLongLongValue];

    v11 = [*(*(*(a1 + 40) + 8) + 40) objectForKeyedSubscript:@"ErrorsOut"];
    *(*(*(a1 + 88) + 8) + 24) += [v11 unsignedLongLongValue];
  }
}

void sub_10000B62C(uint64_t a1, const char *a2)
{
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 400, 1);
  }

  v4 = Property;
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v19 + 1) + 8 * v9);
        v11 = *(a1 + 32);
        if (v11)
        {
          v11 = objc_getProperty(v11, v6, 400, 1);
        }

        v12 = [v11 objectForKeyedSubscript:v10];
        v13 = sub_10000A780(*(a1 + 32), v10);
        if (v13)
        {
          v14 = [v12 queue];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10000B824;
          block[3] = &unk_1000EABC8;
          v16 = *(a1 + 40);
          v17 = v12;
          v18 = v13;
          dispatch_async(v14, block);
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }
}

void sub_10000B824(uint64_t a1)
{
  v2 = [*(a1 + 32) copy];
  v3 = *(a1 + 40);
  v4 = [v2 alwaysOnVPN];
  v5 = [v4 interfaceProtocolMapping];
  v6 = [v5 objectForKeyedSubscript:*(a1 + 48)];
  v11 = v2;
  v7 = v6;
  if (v3)
  {
    [v3 setConfiguration:v11];
    [v3 setProtocol:v7];
    v8 = [v11 VPN];
    v9 = [v8 isEnabled];

    if (v9)
    {
      v10 = [v3 stateHandler];
      [v10 handleUpdateConfiguration];
    }
  }
}

void sub_10000B9AC(uint64_t a1, const char *a2)
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 400, 1);
  }

  obj = Property;
  v4 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v18;
    do
    {
      v8 = 0;
      do
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v17 + 1) + 8 * v8);
        v10 = *(a1 + 32);
        if (v10)
        {
          v10 = objc_getProperty(v10, v5, 400, 1);
        }

        v11 = [v10 objectForKeyedSubscript:v9];
        v12 = [v11 queue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10000BB68;
        block[3] = &unk_1000EB1C0;
        v16 = v11;
        v13 = v11;
        dispatch_async(v12, block);

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }
}

void sub_10000BB68(uint64_t a1)
{
  v1 = [*(a1 + 32) stateHandler];
  [v1 handleWakeup];
}

void sub_10000CAE4(uint64_t a1)
{
  v2 = [*(a1 + 32) policySession];
  v3 = *(a1 + 64);
  v5 = sub_100019748(*(a1 + 40), v4);
  v6 = [*(a1 + 48) interfaceName];
  v7 = [*(a1 + 48) protocol];
  LOBYTE(v3) = sub_10004898C(v2, v3, v5, v6, [v7 enableRevocationCheck]);

  if ((v3 & 1) == 0)
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      v11 = *(a1 + 64);
      v12 = 138412802;
      v13 = v10;
      v14 = 2080;
      v15 = "[NESMAlwaysOnSession didStartWithPIDForSession:andVPNSession:andPID:error:]_block_invoke";
      v16 = 1024;
      v17 = v11;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%@:%s: failed to add Tunnel Control Policies for pid %d", &v12, 0x1Cu);
    }
  }

  v9 = [*(a1 + 48) stateHandler];
  [v9 handlePlugin:*(a1 + 40) didStartWithPID:*(a1 + 64) error:*(a1 + 56)];
}

void sub_10000CC60(uint64_t a1, const char *a2)
{
  sub_10000A1D4(*(a1 + 32), a2);
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = NEVirtualInterfaceCopyName();
  sub_10008FBD4(v3, v5);

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = v7;
  if (!v6)
  {
    goto LABEL_10;
  }

  if (![v7 virtualInterface])
  {
    v18 = ne_log_obj();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
LABEL_9:

LABEL_10:
LABEL_21:
      v28 = ne_log_obj();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = *(a1 + 32);
        v30 = [*(a1 + 40) interfaceName];
        *buf = 138412802;
        *&buf[4] = v29;
        *&buf[12] = 2112;
        *&buf[14] = v30;
        *&buf[22] = 2080;
        v43 = "[NESMAlwaysOnSession installForSession:]_block_invoke";
        _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%@[%@]:%s: applyTunnelDataPolicy failed", buf, 0x20u);
      }

      goto LABEL_24;
    }

    v19 = [v8 interfaceName];
    *buf = 138412802;
    *&buf[4] = v6;
    *&buf[12] = 2112;
    *&buf[14] = v19;
    *&buf[22] = 2080;
    v43 = "[NESMAlwaysOnSession applyTunnelDataPolicyForSession:]";
    v20 = "%@[%@]:%s: NULL virtual interface";
LABEL_26:
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, v20, buf, 0x20u);

    goto LABEL_9;
  }

  v9 = NEVirtualInterfaceCopyName();
  if (!v9)
  {
    v18 = ne_log_obj();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    v19 = [v8 interfaceName];
    *buf = 138412802;
    *&buf[4] = v6;
    *&buf[12] = 2112;
    *&buf[14] = v19;
    *&buf[22] = 2080;
    v43 = "[NESMAlwaysOnSession applyTunnelDataPolicyForSession:]";
    v20 = "%@[%@]:%s: NULL virtual interface name";
    goto LABEL_26;
  }

  v10 = v9;
  v11 = [v6 configuration];
  v37 = sub_100062878(NEPolicySession, v11);

  v12 = [v6 configuration];
  v36 = sub_1000627E0(NEPolicySession, v12);

  v13 = [v6 configuration];
  sub_100062910(NEPolicySession, v13);

  v41 = [v6 policySession];
  v14 = [v8 interfaceName];
  v35 = [v8 isSecondaryConnection];
  v40 = [v8 pluginConfigurationEntities];
  v15 = [v40 DNSSettings];
  v38 = [v8 pluginConfigurationEntities];
  v16 = [v38 proxySettings];
  v17 = [v16 enabled];
  if (v17)
  {
    v34 = 1;
  }

  else
  {
    v32 = [v8 protocol];
    v31 = [v32 proxySettings];
    v34 = [v31 enabled];
  }

  v39 = v15;
  v33 = v15 != 0;
  v21 = [v6 configuration];
  v22 = [v21 alwaysOnVPN];
  v23 = [v22 applicationExceptions];
  v24 = v10;
  v25 = v14;
  v26 = v23;
  v27 = v41;
  if (v41)
  {
    if (isa_nsstring() && isa_nsstring() && v41[2] == 3)
    {
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_100049384;
      v43 = &unk_1000EA120;
      v44 = v41;
      v50 = v35;
      v45 = v25;
      v48 = v37;
      v49 = v36;
      v46 = v26;
      v51 = v34;
      v47 = v24;
      v52 = v33;
      v27 = sub_100031500(NESMPolicyMasterSession, buf);
    }

    else
    {
      v27 = 0;
    }
  }

  if ((v17 & 1) == 0)
  {
  }

  myCFRelease();
  if ((v27 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_24:
  CFRelease(*(a1 + 48));
}

void sub_10000D168(uint64_t a1, const char *a2)
{
  sub_10000A1D4(*(a1 + 32), a2);
  v3 = [*(a1 + 32) policySession];
  sub_10003129C(v3, *(a1 + 40));

  v4 = [*(a1 + 32) policySession];
  sub_100031444(v4, *(a1 + 40));

  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v7 = NEVirtualInterfaceCopyName();
  if (v5)
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = @"[nil]";
      if (v7)
      {
        v9 = v7;
      }

      v14 = 138412546;
      v15 = v5;
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%@: Request to remove network agent from %@", &v14, 0x16u);
    }

    v10 = [v5 networkAgentInterfaces];
    v11 = isa_nsarray();

    if (v11)
    {
      v12 = [v5 networkAgentInterfaces];
      [v12 removeObject:v7];

      sub_10008C510(v5);
    }
  }

  v13 = *(a1 + 48);

  CFRelease(v13);
}

void sub_10000D2F4(uint64_t a1)
{
  v6 = [*(a1 + 32) policySession];
  v2 = [*(a1 + 40) interfaceName];
  v3 = *(a1 + 48);
  v4 = v2;
  v5 = v3;
  if (v6)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10004822C;
    v7[3] = &unk_1000EA0F8;
    v7[4] = v6;
    v8 = v4;
    v9 = v5;
    sub_100031500(NESMPolicyMasterSession, v7);
  }
}

void sub_10000D3FC(uint64_t a1)
{
  v2 = [*(a1 + 32) policySession];
  v3 = [*(a1 + 40) interfaceName];
  sub_1000311C8(v2, v3);

  v5 = [*(a1 + 32) policySession];
  v4 = [*(a1 + 40) interfaceName];
  sub_100031370(v5, v4);
}

_BYTE *sub_10000D4A4(uint64_t a1)
{
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 32);
    v8 = [*(a1 + 40) interfaceName];
    v9 = 138412802;
    v10 = v7;
    v11 = 2112;
    v12 = v8;
    v13 = 2080;
    v14 = "[NESMAlwaysOnSession alwaysOnRetry:]_block_invoke";
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%@[%@]:%s: Retrying now", &v9, 0x20u);
  }

  result = *(a1 + 32);
  if (result)
  {
    if (result[353])
    {
      return result;
    }

    v5 = *(a1 + 40);
    Property = objc_getProperty(result, v3, 392, 1);
  }

  else
  {
    Property = 0;
    v5 = *(a1 + 40);
  }

  return [v5 handleStartMessage:Property];
}

void sub_10000D5CC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && (*(v2 + 353) & 1) != 0 || (v3 = *(a1 + 40), [v3 interfaceName], v4 = objc_claimAutoreleasedReturnValue(), LODWORD(v3) = objc_msgSend(v3, "isInterfaceIPAvailable:", objc_msgSend(v4, "UTF8String")), v4, !v3))
  {
    v10 = ne_log_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = *(a1 + 32);
      v12 = [*(a1 + 40) interfaceName];
      v15 = 138412802;
      v16 = v11;
      v17 = 2112;
      v18 = v12;
      v19 = 2080;
      v20 = "[NESMAlwaysOnSession alwaysOnRetry:]_block_invoke";
      _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%@[%@]:%s: Session stopped or interface down, no retry", &v15, 0x20u);
    }
  }

  else
  {
    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v13 = *(a1 + 32);
      v14 = [*(a1 + 40) interfaceName];
      v15 = 138412802;
      v16 = v13;
      v17 = 2112;
      v18 = v14;
      v19 = 2080;
      v20 = "[NESMAlwaysOnSession alwaysOnRetry:]_block_invoke";
      _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%@[%@]:%s: Retrying now", &v15, 0x20u);
    }

    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    if (v7)
    {
      Property = objc_getProperty(v7, v6, 392, 1);
    }

    else
    {
      Property = 0;
    }

    [v8 handleStartMessage:Property];
  }
}

id sub_10000D7B4(uint64_t a1)
{
  v2 = [*(a1 + 32) status];
  [*(a1 + 32) setStatus:*(a1 + 40)];
  result = [*(a1 + 32) status];
  if (result == v2)
  {
    v4 = *(a1 + 32);

    return [v4 notifyChangedExtendedStatus];
  }

  return result;
}

id sub_10000DA38()
{
  objc_opt_self();
  if (qword_1000FD510 != -1)
  {
    dispatch_once(&qword_1000FD510, &stru_1000E9720);
  }

  v0 = qword_1000FD508;

  return v0;
}

void sub_10000DA90(id a1)
{
  qword_1000FD508 = objc_alloc_init(NESMProviderManager);

  _objc_release_x1();
}

void sub_10000DACC(uint64_t a1)
{
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x3032000000;
  v9[3] = sub_10000DC64;
  v9[4] = sub_10000DC90;
  v10 = objc_retainBlock(*(a1 + 40));
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[2];
  }

  v3 = v2;
  v8 = *(a1 + 32);
  xpc_event_publisher_set_handler();

  v4 = *(a1 + 32);
  if (v4)
  {
    v4 = v4[2];
  }

  v5 = v4;
  xpc_event_publisher_set_error_handler();

  v6 = *(a1 + 32);
  if (v6)
  {
    v6 = v6[2];
  }

  v7 = v6;
  xpc_event_publisher_activate();

  _Block_object_dispose(v9, 8);
}

void sub_10000DC4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10000DC64(uint64_t a1, uint64_t a2)
{
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_10000DC98(uint64_t a1, int a2, char *a3, void *a4)
{
  v6 = a4;
  switch(a2)
  {
    case 2:
      v27 = ne_log_obj();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Starting system extension listener", buf, 2u);
      }

      v28 = *(*(*(a1 + 40) + 8) + 40);
      if (v28)
      {
        (*(v28 + 16))();
        v29 = *(*(a1 + 40) + 8);
        v30 = *(v29 + 40);
        *(v29 + 40) = 0;
      }

      break;
    case 1:
      v13 = ne_log_obj();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v61 = a3;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "NESMProviderManager event publisher received a remove action with event subscription %llu", buf, 0xCu);
      }

      v32 = v6;

      v14 = *(a1 + 32);
      if (v14)
      {
        v15 = sub_10000E860([NESMProviderRegistration alloc], a3, 0);
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        obj = *(v14 + 24);
        v36 = [obj countByEnumeratingWithState:&v49 objects:buf count:16];
        if (v36)
        {
          v34 = *v50;
          v35 = v14;
          do
          {
            v16 = 0;
            do
            {
              if (*v50 != v34)
              {
                objc_enumerationMutation(obj);
              }

              v37 = v16;
              v39 = *(*(&v49 + 1) + 8 * v16);
              v17 = [*(v14 + 24) objectForKeyedSubscript:v32];
              v45 = 0u;
              v46 = 0u;
              v47 = 0u;
              v48 = 0u;
              v18 = [v17 countByEnumeratingWithState:&v45 objects:v59 count:16];
              if (v18)
              {
                v19 = v18;
                v20 = *v46;
                do
                {
                  for (i = 0; i != v19; i = i + 1)
                  {
                    if (*v46 != v20)
                    {
                      objc_enumerationMutation(v17);
                    }

                    v22 = *(*(&v45 + 1) + 8 * i);
                    v23 = [v17 objectForKeyedSubscript:v22];
                    v24 = [v23 indexOfObject:v15];
                    if (v24 != 0x7FFFFFFFFFFFFFFFLL)
                    {
                      v25 = v24;
                      v26 = ne_log_obj();
                      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
                      {
                        *v53 = 134218498;
                        v54 = a3;
                        v55 = 2112;
                        v56 = v39;
                        v57 = 2112;
                        v58 = v22;
                        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Removing event subscription %llu for plugin %@ with extension point %@", v53, 0x20u);
                      }

                      [v23 removeObjectAtIndex:v25];
                    }
                  }

                  v19 = [v17 countByEnumeratingWithState:&v45 objects:v59 count:16];
                }

                while (v19);
              }

              v16 = v37 + 1;
              v14 = v35;
            }

            while ((v37 + 1) != v36);
            v36 = [obj countByEnumeratingWithState:&v49 objects:buf count:16];
          }

          while (v36);
        }
      }

      v6 = v32;
      break;
    case 0:
      v7 = ne_log_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v61 = a3;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "NESMProviderManager event publisher received an add action with event subscription %llu", buf, 0xCu);
      }

      string = xpc_dictionary_get_string(v6, "NEProviderBundleIdentifier");
      v9 = xpc_dictionary_get_array(v6, "NEExtensionPoints");
      if (string && *string)
      {
        v10 = [[NSString alloc] initWithCString:string encoding:4];
        v11 = ne_log_obj();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v61 = v10;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Failed to find the expected code directory hashes for %@, it does not appear to be a registered system extension", buf, 0xCu);
        }

        if (v9 && xpc_get_type(v9) == &_xpc_type_array)
        {
          applier[0] = _NSConcreteStackBlock;
          applier[1] = 3221225472;
          applier[2] = sub_10000E370;
          applier[3] = &unk_1000E9748;
          applier[4] = *(a1 + 32);
          v43 = string;
          v44 = a3;
          v41 = v10;
          v42 = 0;
          xpc_array_apply(v9, applier);
        }

        else
        {
          v12 = ne_log_obj();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v61 = "com.apple.networkextension.provider.matching";
            v62 = 2080;
            v63 = string;
            _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Got a %s event subscription for provider %s without any extension points", buf, 0x16u);
          }
        }
      }

      else
      {
        v31 = ne_log_obj();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v61 = "com.apple.networkextension.provider.matching";
          _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "Got a %s event subscription with a NULL or empty provider bundle identifier", buf, 0xCu);
        }
      }

      break;
  }
}

void sub_10000E284(uint64_t a1)
{
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    v6 = 136315138;
    v7 = xpc_strerror();
    _os_log_fault_impl(&_mh_execute_header, v2, OS_LOG_TYPE_FAULT, "Event publisher encountered an error: %s", &v6, 0xCu);
  }

  v3 = *(*(*(a1 + 32) + 8) + 40);
  if (v3)
  {
    (*(v3 + 16))();
    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = 0;
  }
}

uint64_t sub_10000E370(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if ((!v5 || xpc_get_type(v5) != &_xpc_type_string) && xpc_string_get_length(v6))
  {
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v32 = a1[7];
      *buf = 136315650;
      *&buf[4] = "NEExtensionPoints";
      *&buf[12] = 2080;
      *&buf[14] = v32;
      *&buf[22] = 2048;
      v37 = a2;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Got a %s event subscription for provider %s with an invalid extension point at index %lu", buf, 0x20u);
    }

LABEL_6:
    v8 = 0;
    goto LABEL_26;
  }

  v9 = [[NSString alloc] initWithCString:xpc_string_get_string_ptr(v6) encoding:4];
  v10 = a1[4];
  v11 = v9;
  v7 = v11;
  if (!v10)
  {

    goto LABEL_28;
  }

  if (([v11 isEqualToString:@"com.apple.networkextension.filter-data"]& 1) == 0 && ([v7 isEqualToString:@"com.apple.networkextension.filter-packet"]& 1) == 0 && ([v7 isEqualToString:@"com.apple.networkextension.packet-tunnel"]& 1) == 0 && ![v7 isEqualToString:@"com.apple.networkextension.app-proxy"])
  {
    v30 = [v7 isEqualToString:@"com.apple.networkextension.dns-proxy"];

    if (v30)
    {
      goto LABEL_13;
    }

LABEL_28:
    v31 = ne_log_obj();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v33 = a1[7];
      *buf = 136315906;
      *&buf[4] = "NEExtensionPoints";
      *&buf[12] = 2080;
      *&buf[14] = v33;
      *&buf[22] = 2048;
      v37 = a2;
      LOWORD(v38) = 2112;
      *(&v38 + 2) = v7;
      _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "Got a %s event subscription for provider %s with an unknown extension point at index %lu: %@", buf, 0x2Au);
    }

    goto LABEL_6;
  }

LABEL_13:
  v12 = a1[8];
  v13 = a1[4];
  v14 = a1[5];
  v15 = [NSString stringWithUTF8String:xpc_string_get_string_ptr(v6)];
  v16 = a1[6];
  v17 = v14;
  v18 = v15;
  if (v13)
  {
    v19 = v16;
    v20 = ne_log_obj();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      *&buf[4] = v12;
      *&buf[12] = 2112;
      *&buf[14] = v17;
      *&buf[22] = 2112;
      v37 = v18;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Adding event subscription %llu for provider %@ with extension point %@", buf, 0x20u);
    }

    v21 = [*(v13 + 24) objectForKeyedSubscript:v17];
    if (!v21)
    {
      v21 = objc_alloc_init(NSMutableDictionary);
      [*(v13 + 24) setObject:v21 forKeyedSubscript:v17];
    }

    v22 = [v21 objectForKeyedSubscript:v18];
    if (!v22)
    {
      v22 = objc_alloc_init(NSMutableArray);
      [v21 setObject:v22 forKeyedSubscript:v18];
    }

    v34 = v7;
    v23 = sub_10000E860([NESMProviderRegistration alloc], v12, v19);

    if ([v22 indexOfObject:v23] == 0x7FFFFFFFFFFFFFFFLL)
    {
      [v22 addObject:v23];
    }

    v24 = sub_10005750C();
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_10000E8E0;
    v35[3] = &unk_1000E97C0;
    v35[4] = v13;
    v25 = v17;
    v27 = v35;
    if (v24)
    {
      Property = objc_getProperty(v24, v26, 88, 1);
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_10005B1C8;
      v37 = &unk_1000EB2E8;
      *&v38 = v24;
      *(&v38 + 1) = v25;
      v39 = v27;
      dispatch_async(Property, buf);
    }

    v7 = v34;
  }

  v8 = 1;
LABEL_26:

  return v8;
}

id *sub_10000E860(id *a1, void *a2, void *a3)
{
  v6 = a3;
  if (a1)
  {
    v9.receiver = a1;
    v9.super_class = NESMProviderRegistration;
    v7 = objc_msgSendSuper2(&v9, "init");
    a1 = v7;
    if (v7)
    {
      v7[1] = a2;
      objc_storeStrong(v7 + 2, a3);
    }
  }

  return a1;
}

void sub_10000E8E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 8);
  }

  else
  {
    v5 = 0;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000E988;
  block[3] = &unk_1000EB1C0;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, block);
}

void sub_10000E988(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    v2 = *(a1 + 32);
    v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v8;
      do
      {
        v6 = 0;
        do
        {
          if (*v8 != v5)
          {
            objc_enumerationMutation(v2);
          }

          [*(*(&v7 + 1) + 8 * v6) handleInstalledAppsChanged];
          v6 = v6 + 1;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      }

      while (v4);
    }
  }
}

void sub_10000EA84(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[3];
  }

  v3 = *(a1 + 40);
  v5 = v2;
  if (v3)
  {
    Property = objc_getProperty(v3, v4, 104, 1);
  }

  else
  {
    Property = 0;
  }

  v7 = Property;
  v8 = [v5 objectForKeyedSubscript:v7];
  v9 = [v8 objectForKeyedSubscript:*(a1 + 48)];

  if ([v9 count])
  {
    v10 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v10, "extension-point", [*(a1 + 48) UTF8String]);
    v11 = [v9 copy];
    sub_10000EC60(*(a1 + 32), v10, 0, v11, *(a1 + 40), *(a1 + 56));
  }

  else
  {
    v12 = ne_log_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 40);
      if (v13)
      {
        v13 = v13[6];
      }

      v14 = v13;
      v15 = *(a1 + 48);
      v16 = 138412546;
      v17 = v14;
      v18 = 2112;
      v19 = v15;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Cannot launch plugin type %@ for extension point %@, no provider is registered", &v16, 0x16u);
    }

    (*(*(a1 + 56) + 16))();
  }
}

void sub_10000EC60(uint64_t a1, void *a2, id a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (a1)
  {
    if ([v12 count] == a3)
    {
      v15 = ne_log_obj();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        if (v13)
        {
          v25 = v13[6];
        }

        else
        {
          v25 = 0;
        }

        v26 = v25;
        *buf = 138412290;
        v32 = v26;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to launch %@", buf, 0xCu);
      }

      (*(v14 + 2))(v14, 0, 0, 0);
    }

    else
    {
      v16 = [v12 objectAtIndexedSubscript:a3];
      if (v16)
      {
        v17 = v16[1];
      }

      Property = [v12 objectAtIndexedSubscript:a3];
      v20 = Property;
      if (Property)
      {
        Property = objc_getProperty(Property, v19, 16, 1);
      }

      v21 = Property;

      v22 = *(a1 + 8);
      v23 = *(a1 + 16);
      v27 = v11;
      v28 = v12;
      v29 = v13;
      v30 = v14;
      v24 = v21;
      xpc_event_publisher_fire_with_reply();
    }
  }
}

void sub_10000EED0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 && xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    v6 = [[NEProcessIdentity alloc] initFromXPCMessage:v4];
    if (v6)
    {
      [*(a1 + 64) count];
      v7 = *(a1 + 56);
      [v6 auditTokenData];

      if (v7)
      {
        v8 = xpc_dictionary_get_value(v4, "listener-endpoint");
        v9 = v8;
        if (v8 && xpc_get_type(v8) == &_xpc_type_endpoint)
        {
          v13 = objc_alloc_init(NSXPCListenerEndpoint);
          [v13 _setEndpoint:v9];
          (*(*(a1 + 72) + 16))();
        }

        else
        {
          v10 = ne_log_obj();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            v16 = 134217984;
            v17 = v9;
            _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Missing endpoint (%p), in launch event reply", &v16, 0xCu);
          }

          (*(*(a1 + 72) + 16))();
        }
      }

      else
      {
        v12 = ne_log_obj();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v14 = *(a1 + 56);
          if (v14)
          {
            v14 = v14[6];
          }

          v15 = v14;
          v16 = 138412290;
          v17 = v15;
          _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Rejecting agent %@ because it does not satisfy the code signature requirements", &v16, 0xCu);
        }

        sub_10000EC60(*(a1 + 32), *(a1 + 40), *(a1 + 80) + 1, *(a1 + 48), *(a1 + 56), *(a1 + 72));
      }
    }

    else
    {
      v11 = ne_log_obj();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v16) = 0;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to create the extension's process identity from the launch event reply", &v16, 2u);
      }

      (*(*(a1 + 72) + 16))();
    }
  }

  else
  {
    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v16) = 0;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Got an invalid event reply", &v16, 2u);
    }

    sub_10000EC60(*(a1 + 32), *(a1 + 40), *(a1 + 80) + 1, *(a1 + 48), *(a1 + 56), *(a1 + 72));
  }
}

uint64_t sub_10000F1CC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a1)
  {
    v6 = [NELaunchServices pluginClassToExtensionPoint:a3];
    if (v6)
    {
      v7 = ne_log_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *v28 = 138412546;
        *&v28[4] = v5;
        *&v28[12] = 2112;
        *&v28[14] = v6;
        _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Checking for %@ - %@", v28, 0x16u);
      }

      *v28 = 0;
      *&v28[8] = v28;
      *&v28[16] = 0x3032000000;
      v29 = sub_10000F450;
      v30 = sub_10000F460;
      v31 = 0;
      v8 = *(a1 + 8);
      v14 = _NSConcreteStackBlock;
      v15 = 3221225472;
      v16 = sub_10000F468;
      v17 = &unk_1000EA990;
      v21 = v28;
      v18 = a1;
      v9 = v5;
      v19 = v9;
      v10 = v6;
      v20 = v10;
      dispatch_sync(v8, &v14);
      v11 = ne_log_obj();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [*(*&v28[8] + 40) count];
        *buf = 134218498;
        v23 = v12;
        v24 = 2112;
        v25 = v9;
        v26 = 2112;
        v27 = v10;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Found %lu registrations for %@ (%@)", buf, 0x20u);
      }

      a1 = [*(*&v28[8] + 40) count] != 0;
      _Block_object_dispose(v28, 8);
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

void sub_10000F428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000F450(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000F468(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v2 = v2[3];
  }

  v3 = a1[5];
  v4 = v2;
  v8 = [v4 objectForKeyedSubscript:v3];
  v5 = [v8 objectForKeyedSubscript:a1[6]];
  v6 = *(a1[7] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_10000F4F8(uint64_t a1)
{
  v3 = dispatch_group_create();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v2, 40, 1);
  }

  obj = Property;
  v5 = [obj countByEnumeratingWithState:&v22 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v17 = *v23;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v22 + 1) + 8 * i);
        dispatch_group_enter(v3);
        v9 = *(a1 + 40);
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = sub_10000F7B0;
        v20[3] = &unk_1000EB1C0;
        v21 = v3;
        v10 = v9;
        v12 = v20;
        if (v8)
        {
          v13 = objc_getProperty(v8, v11, 24, 1);
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10000F7C8;
          block[3] = &unk_1000EB2E8;
          block[4] = v8;
          v28 = v12;
          v27 = v10;
          dispatch_async(v13, block);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v22 objects:v29 count:16];
    }

    while (v6);
  }

  v14 = *(a1 + 32);
  if (v14)
  {
    v15 = *(v14 + 8);
  }

  else
  {
    v15 = 0;
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10000F7B8;
  v18[3] = &unk_1000EAAE8;
  v19 = *(a1 + 48);
  dispatch_group_notify(v3, v15, v18);
}

uint64_t sub_10000F7C8(void *a1, const char *a2)
{
  Property = a1[4];
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 8, 1);
  }

  if ([Property count])
  {
    v5 = a1[4];
    if (v5)
    {
      v5 = objc_getProperty(v5, v4, 8, 1);
    }

    v6 = [v5 indexOfObject:a1[5]];
    if (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = v6;
      v9 = a1[4];
      if (v9)
      {
        v9 = objc_getProperty(v9, v7, 8, 1);
      }

      [v9 removeObjectAtIndex:v8];
      v11 = a1[4];
      if (v11)
      {
        v11 = objc_getProperty(v11, v10, 8, 1);
      }

      if (![v11 count])
      {
        v13 = a1[4];
        if (v13)
        {
          v13 = objc_getProperty(v13, v12, 16, 1);
        }

        v15 = v13;
        v16 = a1[4];
        if (v16)
        {
          objc_setProperty_atomic_copy(v16, v14, 0, 16);
        }

        v15[2](v15);
      }
    }
  }

  v17 = *(a1[6] + 16);

  return v17();
}

uint64_t sub_10000F964(uint64_t a1)
{
  v2 = [*(a1 + 32) configuration];
  v3 = [v2 appVPN];
  v4 = [*(a1 + 32) uid];
  [v3 updateAppRulesForUID:{objc_msgSend(v4, "unsignedIntValue")}];

  [*(a1 + 32) resetPerAppPolicy];
  v5 = *(a1 + 32);

  return sub_10008F168(v5, 1);
}

uint64_t sub_10000FA7C(uint64_t a1)
{
  v2 = [*(a1 + 32) configuration];
  v3 = [v2 appVPN];
  v4 = [*(a1 + 32) uid];
  [v3 updateAppRulesForUID:{objc_msgSend(v4, "unsignedIntValue")}];

  [*(a1 + 32) resetPerAppPolicy];
  v5 = *(a1 + 32);

  return sub_10008F168(v5, 1);
}

void sub_1000102B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000102DC(uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    if (a2)
    {
      v5 = 0;
      (*(v3 + 16))(v3, 0);
    }

    else
    {
      v5 = [NSError errorWithDomain:@"NEAgentErrorDomain" code:1 userInfo:0];
      WeakRetained = objc_loadWeakRetained((a1 + 40));
      [WeakRetained setPluginConfigurationEntities:0];

      (*(*(a1 + 32) + 16))(*(a1 + 32), v5);
    }
  }
}

void sub_100010990(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1000109AC(uint64_t a1, id a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (a2 && WeakRetained)
  {
    a2 = [WeakRetained resetPerAppPolicy];
    WeakRetained = v5;
  }

  v4 = [WeakRetained stateHandler];
  [v4 handleSetConfigurationResult:a2];
}

uint64_t sub_100010B54(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableDictionary);
  keysToRemove = objc_alloc_init(NSMutableArray);
  v3 = [*(a1 + 32) configuration];
  v4 = [v3 identifier];
  NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainState, [v4 UUIDString], kSCEntNetProxies);

  v6 = [*(a1 + 32) configuration];
  v7 = [v6 identifier];
  v8 = SCDynamicStoreKeyCreateNetworkServiceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainState, [v7 UUIDString], kSCEntNetDNS);

  v9 = *(a1 + 32);
  if (!v9 || !v9[85])
  {
    v10 = SCDynamicStoreCreate(kCFAllocatorDefault, @"NESMFlowDivertSession state", 0, 0);
    v11 = *(a1 + 32);
    if (v11)
    {
      *(v11 + 680) = v10;
      v9 = *(a1 + 32);
    }

    else
    {
      v9 = 0;
    }
  }

  v12 = [v9 pluginConfigurationEntities];
  v13 = [v12 proxySettings];

  v14 = *(a1 + 32);
  if (v13)
  {
    [v14 pluginConfigurationEntities];
  }

  else
  {
    [v14 protocol];
  }
  v15 = ;
  v16 = [v15 proxySettings];
  v17 = [v16 copyLegacyDictionary];

  if (isa_nsdictionary())
  {
    v19 = [v17 mutableCopy];
    Property = *(a1 + 32);
    if (Property)
    {
      Property = objc_getProperty(Property, v18, 688, 1);
    }

    v21 = [Property controlUnit];
    [v19 setObject:v21 forKeyedSubscript:kSCPropNetProxiesServiceSpecific];
  }

  else
  {
    v19 = v17;
  }

  if (isa_nsdictionary())
  {
    [v2 setObject:v19 forKeyedSubscript:NetworkServiceEntity];
  }

  else
  {
    [(__CFArray *)keysToRemove addObject:NetworkServiceEntity];
  }

  v22 = sub_100010FD4(*(a1 + 32), v19, NetworkServiceEntity);
  v23 = [*(a1 + 32) pluginConfigurationEntities];
  v24 = [v23 DNSSettings];

  if (v24)
  {
    v25 = [*(a1 + 32) pluginConfigurationEntities];
    v26 = [v25 DNSSettings];
    v27 = [v26 copyLegacyDictionary];
  }

  else
  {
    v44[0] = @"10.0.0.10";
    v44[1] = @"fe80::1";
    v45 = kSCPropNetDNSServerAddresses;
    v25 = [NSArray arrayWithObjects:v44 count:2];
    v46 = v25;
    v27 = [NSDictionary dictionaryWithObjects:&v46 forKeys:&v45 count:1];
  }

  v29 = [v27 mutableCopy];
  v30 = *(a1 + 32);
  if (v30)
  {
    v30 = objc_getProperty(v30, v28, 688, 1);
  }

  v31 = [v30 controlUnit];
  [v29 setObject:v31 forKeyedSubscript:kSCPropNetDNSServiceIdentifier];

  [v2 setObject:v29 forKeyedSubscript:v8];
  v32 = sub_100010FD4(*(a1 + 32), v29, v8);
  if (!v32 || !v22)
  {
    v33 = ne_log_large_obj();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v41 = v2;
      v42 = 2112;
      v43 = keysToRemove;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Setting %@, removing %@", buf, 0x16u);
    }

    v34 = *(a1 + 32);
    if (v34)
    {
      v35 = *(v34 + 680);
    }

    else
    {
      v35 = 0;
    }

    SCDynamicStoreSetMultiple(v35, v2, keysToRemove, 0);
  }

  v36 = 4;
  if (v22)
  {
    v36 = 0;
  }

  if (v32)
  {
    v37 = v36;
  }

  else
  {
    v37 = v36 | 2;
  }

  return v37;
}

BOOL sub_100010FD4(uint64_t a1, void *a2, const __CFString *a3)
{
  if (!a1)
  {
    return 0;
  }

  v4 = *(a1 + 680);
  v5 = a2;
  SCDynamicStoreCopyValue(v4, a3);
  LODWORD(a3) = myCFEqual();

  v6 = a3 != 0;
  myCFRelease();
  return v6;
}

uint64_t sub_1000111A8(const char *a1, int32_t a2, char *a3, int32_t a4)
{
  pErrorCode = U_ZERO_ERROR;
  v13 = xmmword_1000C2D00;
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

void sub_1000115D0(uint64_t a1)
{
  if (a1)
  {
    v2 = objc_alloc_init(CWFInterface);
    [v2 activate];
    v3 = [v2 networkName];
    [v2 invalidate];

    if (!v3)
    {
      goto LABEL_7;
    }

    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      *&buf[4] = a1;
      *&buf[12] = 2112;
      *&buf[14] = v3;
      _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%@ current Wi-Fi network [%@]", buf, 0x16u);
    }

    v5 = [a1 configuration];
    v6 = [v5 appPush];
    v7 = [v6 matchSSIDs];
    v8 = [v7 count];

    if (v8)
    {
      v9 = [a1 configuration];
      v10 = [v9 appPush];
      v11 = [v10 matchSSIDs];
      v12 = [v11 containsObject:v3];
    }

    else
    {
LABEL_7:
      v12 = 0;
    }

    if (objc_opt_class())
    {
      v13 = +[MCProfileConnection sharedConnection];
      v14 = [v13 isSupervised];
    }

    else
    {
      v14 = 0;
    }

    v15 = ne_log_obj();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = "is not";
      if (v14)
      {
        v16 = "is";
      }

      *buf = 138412546;
      *&buf[4] = a1;
      *&buf[12] = 2080;
      *&buf[14] = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%@ The device %s supervised", buf, 0x16u);
    }

    if (!v14)
    {
      goto LABEL_33;
    }

    if (*(a1 + 408) != 1)
    {
      goto LABEL_33;
    }

    if (!objc_getProperty(a1, v17, 384, 1))
    {
      goto LABEL_33;
    }

    Property = objc_getProperty(a1, v17, 384, 1);
    if (nw_interface_get_type(Property) != nw_interface_type_cellular)
    {
      goto LABEL_33;
    }

    v19 = objc_getProperty(a1, v17, 416, 1);
    if (!v19)
    {
      goto LABEL_33;
    }

    v20 = v19;
    v21 = [a1 configuration];
    v22 = [v21 appPush];
    v23 = [v22 matchPrivateLTENetworks];

    if (v23)
    {
      v24 = [objc_getProperty(a1 v17];
      v52 = [objc_getProperty(a1 v25];
      v27 = [objc_getProperty(a1 v26];
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      v28 = [a1 configuration];
      v29 = [v28 appPush];
      v30 = [v29 matchPrivateLTENetworks];

      obj = v30;
      v31 = [v30 countByEnumeratingWithState:&v54 objects:buf count:16];
      if (v31)
      {
        v51 = v27;
        v32 = *v55;
        while (2)
        {
          for (i = 0; i != v31; i = i + 1)
          {
            if (*v55 != v32)
            {
              objc_enumerationMutation(obj);
            }

            v34 = *(*(&v54 + 1) + 8 * i);
            v35 = [v34 mobileCountryCode];
            if ([v24 isEqualToString:v35])
            {
              v36 = [v34 mobileNetworkCode];
              v37 = [v52 isEqualToString:v36];

              if (v37)
              {
                v27 = v51;
                if (v51 && ([v34 trackingAreaCode], v49 = objc_claimAutoreleasedReturnValue(), v49, v49))
                {
                  v50 = [v34 trackingAreaCode];
                  LODWORD(v31) = [v51 isEqualToString:v50];
                }

                else
                {
                  LODWORD(v31) = 1;
                }

                goto LABEL_64;
              }
            }

            else
            {
            }
          }

          v31 = [obj countByEnumeratingWithState:&v54 objects:buf count:16];
          if (v31)
          {
            continue;
          }

          break;
        }

        v27 = v51;
      }

LABEL_64:
    }

    else
    {
LABEL_33:
      LODWORD(v31) = 0;
    }

    if (sub_100011CB4(a1, v17))
    {
      v38 = [a1 configuration];
      v39 = [v38 appPush];
      v40 = [v39 matchEthernet];
    }

    else
    {
      v40 = 0;
    }

    v41 = ne_log_obj();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      v42 = "FALSE";
      if (v12)
      {
        v43 = "TRUE";
      }

      else
      {
        v43 = "FALSE";
      }

      *buf = 138413058;
      *&buf[4] = a1;
      if (v31)
      {
        v44 = "TRUE";
      }

      else
      {
        v44 = "FALSE";
      }

      *&buf[14] = v43;
      *&buf[12] = 2080;
      *&buf[22] = 2080;
      if (v40)
      {
        v42 = "TRUE";
      }

      v59 = v44;
      LOWORD(v60[0]) = 2080;
      *(v60 + 2) = v42;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "%@ [wifiMatch: %s] [cellMatch: %s] [ethMatch: %s]", buf, 0x2Au);
    }

    if ((v12 | v31 | v40))
    {
      if ((*(a1 + 354) & 1) == 0)
      {
        *(a1 + 354) = 1;
        if (v12)
        {
          v45 = ne_log_obj();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            *&buf[4] = a1;
            _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "%@ enabling Wi-Fi WoW", buf, 0xCu);
          }

          v46 = sub_100094870();
          v47 = v46;
          if (v46)
          {
            *buf = _NSConcreteStackBlock;
            *&buf[8] = 3221225472;
            *&buf[16] = sub_100094904;
            v59 = &unk_1000EB1C0;
            v60[0] = v46;
            dispatch_async(&_dispatch_main_q, buf);
          }
        }

        v48 = ne_log_obj();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *&buf[4] = a1;
          _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_INFO, "%@ requesting install", buf, 0xCu);
        }

        sub_100011D04(a1, 0);
      }
    }

    else
    {
      sub_100011E44(a1);
    }
  }
}

id sub_100011CB4(void *a1, const char *a2)
{
  result = objc_getProperty(a1, a2, 384, 1);
  if (result)
  {
    Property = objc_getProperty(a1, v4, 384, 1);
    return (nw_interface_get_type(Property) == nw_interface_type_wired);
  }

  return result;
}

void sub_100011D04(_BYTE *a1, int a2)
{
  if (a1)
  {
    if ((a1[355] & 1) == 0)
    {
      v4 = ne_log_obj();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = 138412290;
        v6 = a1;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%@: unable to request install as provider is not installed", &v5, 0xCu);
      }

      goto LABEL_10;
    }

    if ((a1[354] & 1) != 0 || a2)
    {
      v3 = ne_log_obj();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v5 = 138412290;
        v6 = a1;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%@: requesting install", &v5, 0xCu);
      }

      v4 = [a1 server];
      [v4 requestInstallForSession:a1 withParentSession:0 exclusive:0];
LABEL_10:
    }
  }
}

void sub_100011E44(_BYTE *a1)
{
  if (a1 && a1[354] == 1)
  {
    v2 = ne_log_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = a1;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%@ exiting session", &v6, 0xCu);
    }

    a1[354] = 0;
    sub_100011F48(a1);
    [objc_getProperty(a1 v3];
    sub_10001201C(a1, v4);
    sub_1000120FC(a1, v5);
    sub_100012248(a1);
  }
}

void sub_100011F48(_BYTE *a1)
{
  if (a1 && (a1[353] & 1) != 0)
  {
    v2 = ne_log_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v4 = 138412290;
      v5 = a1;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%@: requesting uninstall", &v4, 0xCu);
    }

    v3 = [a1 server];
    [v3 requestUninstallForSession:a1];
  }
}

void sub_10001201C(void *a1, const char *a2)
{
  if (a1 && objc_getProperty(a1, a2, 360, 1))
  {
    [objc_getProperty(a1 v3];
    objc_setProperty_atomic(a1, v4, 0, 360);
    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = a1;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%@: invalidated provider wake timer", &v6, 0xCu);
    }
  }
}

void sub_1000120FC(void *a1, const char *a2)
{
  if (a1 && objc_getProperty(a1, a2, 392, 1))
  {
    Property = objc_getProperty(a1, v3, 392, 1);
    if (Property)
    {
      v5 = [Property remotePluginObject];
      [v5 stopWithReason:4];
    }

    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [a1 configuration];
      v8 = [v7 appPush];
      v9 = [v8 providerBundleIdentifier];
      v10 = 138412802;
      v11 = a1;
      v12 = 2112;
      v13 = v9;
      v14 = 2080;
      v15 = ne_session_stop_reason_to_string();
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ stopping app push provider [%@] with reason [%s]", &v10, 0x20u);
    }
  }
}

void sub_100012248(uint64_t a1)
{
  if (a1)
  {
    v2 = ne_log_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      LODWORD(v5) = 138412290;
      *(&v5 + 4) = a1;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%@ disabling Wi-Fi WoW", &v5, 0xCu);
    }

    v3 = sub_100094870();
    v4 = v3;
    if (v3)
    {
      *&v5 = _NSConcreteStackBlock;
      *(&v5 + 1) = 3221225472;
      v6 = sub_100094A70;
      v7 = &unk_1000EB1C0;
      v8 = v3;
      dispatch_async(&_dispatch_main_q, &v5);
    }
  }
}

void sub_100012544(void *a1, const char *a2)
{
  if (a1 && objc_getProperty(a1, a2, 392, 1))
  {
    Property = objc_getProperty(a1, v3, 392, 1);
    sub_1000198A8(Property, v5);
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = [a1 configuration];
      v8 = [v7 appPush];
      v9 = [v8 providerBundleIdentifier];
      v10 = 138412546;
      v11 = a1;
      v12 = 2112;
      v13 = v9;
      _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%@ disposing app push provider [%@]", &v10, 0x16u);
    }
  }
}

void sub_1000129F4(uint64_t a1)
{
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = [v3 configuration];
    v5 = [v4 application];
    *buf = 138412546;
    v12 = v3;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%@ reporting PushToTalk Message for app [%@]", buf, 0x16u);
  }

  v6 = objc_alloc_init(CXNetworkExtensionMessageController);
  v7 = *(a1 + 40);
  v8 = [*(a1 + 32) configuration];
  v9 = [v8 application];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100012B74;
  v10[3] = &unk_1000EAD08;
  v10[4] = *(a1 + 32);
  [v6 sendNetworkExtensionPushToTalkMessage:v7 forBundleIdentifier:v9 completion:v10];
}

void sub_100012B74(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = ne_log_obj();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%@ reported PushToTalk message to CallKit", &v10, 0xCu);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v9 = *(a1 + 32);
    v10 = 138412546;
    v11 = v9;
    v12 = 2112;
    v13 = v5;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%@ reported PushToTalk message to CallKit with error: %@", &v10, 0x16u);
  }
}

void sub_100012E5C(uint64_t a1)
{
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = [v3 configuration];
    v5 = [v4 application];
    *buf = 138412546;
    v15 = v3;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%@ reporting incoming call for app [%@]", buf, 0x16u);
  }

  v6 = [NSMutableDictionary dictionaryWithDictionary:*(a1 + 40)];
  v7 = [*(a1 + 32) configuration];
  v8 = [v7 identifier];
  v9 = [v8 UUIDString];
  [v6 setObject:v9 forKeyedSubscript:@"ap-push-config-uuid"];

  v10 = objc_alloc_init(CXNetworkExtensionMessageController);
  v11 = [*(a1 + 32) configuration];
  v12 = [v11 application];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100013040;
  v13[3] = &unk_1000EAD08;
  v13[4] = *(a1 + 32);
  [v10 sendNetworkExtensionMessage:v6 forBundleIdentifier:v12 completion:v13];
}

void sub_100013040(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = ne_log_obj();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%@ reported incoming call to CallKit", &v10, 0xCu);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v9 = *(a1 + 32);
    v10 = 138412546;
    v11 = v9;
    v12 = 2112;
    v13 = v5;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%@ failed to report incoming call to CallKit, error: %@", &v10, 0x16u);
  }
}

void sub_1000132C0(void *a1)
{
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v12 = a1[4];
    v13 = a1[5];
    v16 = 138412546;
    v17 = v12;
    v18 = 2112;
    v19 = v13;
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%@ searching completion handler for message ID: [%@]", &v16, 0x16u);
  }

  Property = a1[4];
  if (Property)
  {
    Property = objc_getProperty(Property, v3, 400, 1);
  }

  v5 = [Property objectForKeyedSubscript:a1[5]];
  v6 = ne_log_obj();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = a1[4];
      v9 = a1[5];
      v16 = 138412546;
      v17 = v8;
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%@ delivering error to the app for message ID: [%@]", &v16, 0x16u);
    }

    v5[2](v5, a1[6]);
    v11 = a1[4];
    if (v11)
    {
      v11 = objc_getProperty(v11, v10, 400, 1);
    }

    [v11 removeObjectForKey:a1[5]];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v14 = a1[4];
      v15 = a1[5];
      v16 = 138412546;
      v17 = v14;
      v18 = 2112;
      v19 = v15;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%@ failed to find completion handler for message ID [%@]", &v16, 0x16u);
    }
  }
}

void sub_1000135E4(void *a1, const char *a2)
{
  if (a1)
  {
    if (objc_getProperty(a1, a2, 360, 1))
    {
      [objc_getProperty(a1 v3];
    }

    else
    {
      v4 = [NSString stringWithFormat:@"com.apple.networkextension[NEAppPushSession-ProviderWakeTimer-%@]", a1];
      v5 = [[SWWakingTimer alloc] initWithIdentifier:v4];
      objc_setProperty_atomic(a1, v6, v5, 360);
    }

    objc_initWeak(&location, a1);
    v8 = objc_getProperty(a1, v7, 360, 1);
    v9 = [a1 queue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100013804;
    v11[3] = &unk_1000E98D8;
    objc_copyWeak(&v12, &location);
    [v8 scheduleWithFireInterval:v9 leewayInterval:v11 queue:60.0 handler:5.0];

    v10 = ne_log_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v15 = a1;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%@: started provider wake timer", buf, 0xCu);
    }

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void sub_1000137C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100013804(uint64_t a1)
{
  self = objc_loadWeakRetained((a1 + 32));
  if (self)
  {
    v1 = ne_log_obj();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v7 = self;
      _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "%@: waking provider", buf, 0xCu);
    }

    Property = objc_getProperty(self, v2, 392, 1);
    if (Property)
    {
      v4 = [Property remotePluginObject];
      [v4 sendTimerEvent];
    }

    sub_1000135E4(self);
  }
}

void sub_100013A2C(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    objc_setProperty_atomic(v3, a2, 0, 392);
    v4 = *(a1 + 32);
    if (v4)
    {
      if (v4[354])
      {

        sub_100011D04(v4, 1);
      }
    }
  }
}

void sub_100013D18(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 && (*(v1 + 354) & 1) != 0)
  {
    v3 = ne_log_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      v5 = 138412290;
      v6 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%@: re-trying to start the provider", &v5, 0xCu);
    }

    sub_100013DE0(*(a1 + 32));
  }
}

void sub_100013DE0(_BYTE *a1)
{
  if (a1 && (a1[353] & 1) != 0)
  {
    v2 = ne_log_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      *&buf[4] = a1;
      _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%@: startProvider", buf, 0xCu);
    }

    if (!objc_getProperty(a1, v3, 392, 1))
    {
      v5 = objc_opt_class();
      v6 = [a1 configuration];
      v7 = [v6 appPush];
      v8 = [v7 pluginType];

      v9 = [a1 configuration];
      v10 = [v9 appPush];
      v11 = [v10 providerBundleIdentifier];

      if (v11)
      {
        v12 = [NELaunchServices pluginProxyWithIdentifier:v11 type:v8 pluginClass:7 extensionPoint:0];
        if (v12)
        {
          v13 = [v5 alloc];
          v28 = @"extension-identifier";
          *buf = v11;
          v14 = [NSDictionary dictionaryWithObjects:buf forKeys:&v28 count:1];
          v15 = [a1 uid];
          v16 = [v13 initWithPluginType:v8 pluginVersion:1 pluginClass:7 pluginInfo:v14 userID:v15];

          if (v16)
          {
            v17 = [NEAppPushPlugin alloc];
            v18 = [a1 queue];
            v19 = [(NEPlugin *)v17 initWithAgent:v16 delegateQueue:v18 andDelegate:a1];
            objc_setProperty_atomic(a1, v20, v19, 392);
          }
        }

        else
        {
          v16 = ne_log_obj();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            *&buf[4] = a1;
            v30 = 2112;
            v31 = v11;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%@: Plugin %@ is not available in launch services", buf, 0x16u);
          }
        }
      }

      else
      {
        v12 = ne_log_obj();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *&buf[4] = a1;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%@: Failed to find the provider bundle identifier", buf, 0xCu);
        }
      }
    }

    if (objc_getProperty(a1, v4, 392, 1))
    {
      v22 = objc_getProperty(a1, v21, 392, 1);
      v23 = [a1 configuration];
      sub_1000187A4(v22, v23);

      v24 = ne_log_obj();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = [a1 configuration];
        v26 = [v25 appPush];
        v27 = [v26 providerBundleIdentifier];
        *buf = 138412546;
        *&buf[4] = a1;
        v30 = 2112;
        v31 = v27;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%@: starting app push provider [%@]", buf, 0x16u);
      }
    }

    else
    {
      v24 = ne_log_obj();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = a1;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%@: failed to initilaize the plugin", buf, 0xCu);
      }
    }
  }
}

void sub_100014594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000145C0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000145D8(uint64_t a1, void *a2)
{
  v3 = a2;
  reply = xpc_dictionary_create_reply(*(a1 + 32));
  if (v3)
  {
    v15 = @"AppPushSendCallInfoErrorCode";
    v5 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 code]);
    v16 = v5;
    v6 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else
  {
    v13 = @"AppPushSendCallInfoErrorCode";
    v14 = &off_1000EE2E8;
    v9 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v10 = *(*(a1 + 40) + 8);
    v5 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v11 = _CFXPCCreateXPCObjectFromCFObject();
    xpc_dictionary_set_value(reply, "SessionAppPushSendMessageResult", v11);
  }

  v12 = xpc_dictionary_get_remote_connection(*(a1 + 32));
  xpc_connection_send_message(v12, reply);
}

void sub_100014748(uint64_t a1)
{
  v2 = +[NSUUID UUID];
  v4 = objc_retainBlock(*(a1 + 48));
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v3, 400, 1);
  }

  [Property setObject:v4 forKeyedSubscript:v2];

  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = objc_getProperty(v7, v6, 392, 1);
    if (v8)
    {
      v9 = v8;
      v10 = *(a1 + 40);
      v11 = v2;
      v12 = v10;
      v13 = [v9 remotePluginObject];
      [v13 sendOutgoingCallMessage:v12 andMessageID:v11];
    }
  }

  v14 = ne_log_obj();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v15 = *(a1 + 32);
    v16 = 138412546;
    v17 = v15;
    v18 = 2112;
    v19 = v2;
    _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%@ added completion handler for message ID: [%@]", &v16, 0x16u);
  }
}

void sub_1000152D8(void *a1, const char *a2)
{
  if (a1 && objc_getProperty(a1, a2, 368, 1))
  {
    Property = objc_getProperty(a1, v3, 368, 1);
    if (Property)
    {
      v6 = Property;
      [*(Property + 3) setDelegate:0];
      v7 = v6[3];
      v6[3] = 0;

      v8 = v6[4];
      v6[4] = 0;

      objc_setProperty_atomic(v6, v9, 0, 8);
      objc_setProperty_atomic(v6, v10, 0, 16);
    }

    a1[51] = 0;

    objc_setProperty_atomic(a1, v5, 0, 368);
  }
}

void sub_1000153AC(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 376);
    if (v2)
    {
      nw_path_monitor_cancel(v2);
      v3 = *(a1 + 376);
      *(a1 + 376) = 0;
    }
  }
}

void sub_10001540C(nw_path_monitor_t *a1)
{
  if (a1)
  {
    if (!a1[47])
    {
      v2 = nw_path_monitor_create();
      v3 = a1[47];
      a1[47] = v2;

      v4 = a1[47];
      v5 = [(nw_path_monitor_t *)a1 queue];
      nw_path_monitor_set_queue(v4, v5);

      nw_path_monitor_prohibit_interface_type(a1[47], nw_interface_type_other);
      v6 = a1[47];
      update_handler[0] = _NSConcreteStackBlock;
      update_handler[1] = 3221225472;
      update_handler[2] = sub_10001579C;
      update_handler[3] = &unk_1000E98B0;
      update_handler[4] = a1;
      nw_path_monitor_set_update_handler(v6, update_handler);
      nw_path_monitor_start(a1[47]);
    }
  }
}

void sub_100015504(void *a1, const char *a2)
{
  if (!a1 || objc_getProperty(a1, a2, 368, 1))
  {
    return;
  }

  v3 = [a1 configuration];
  v4 = [v3 appPush];
  v5 = [v4 matchPrivateLTENetworks];
  if (v5)
  {
    v6 = v5;
    v7 = [a1 configuration];
    v8 = [v7 appPush];
    v9 = [v8 matchPrivateLTENetworks];
    v10 = [v9 count];

    if (v10)
    {
      v11 = [NEPrivateLTEMonitor alloc];
      v12 = [a1 configuration];
      v13 = [v12 appPush];
      v14 = [v13 matchPrivateLTENetworks];
      v15 = [a1 queue];
      v16 = v14;
      v17 = v15;
      if (v11)
      {
        v27.receiver = v11;
        v27.super_class = NEPrivateLTEMonitor;
        v11 = objc_msgSendSuper2(&v27, "init");
        if (v11)
        {
          v18 = [[CoreTelephonyClient alloc] initWithQueue:v17];
          coreTelephonyClient = v11->_coreTelephonyClient;
          v11->_coreTelephonyClient = v18;

          objc_storeStrong(&v11->_privateLTENetworks, v14);
          [(CoreTelephonyClient *)v11->_coreTelephonyClient setDelegate:v11];
          objc_setProperty_atomic(v11, v20, v17, 40);
          objc_setProperty_atomic(v11, v21, 0, 16);
          v11->_activeSlotID = 0;
        }
      }

      objc_setProperty_atomic(a1, v22, v11, 368);
      Property = objc_getProperty(a1, v23, 368, 1);
      if (Property)
      {
        objc_setProperty_atomic(Property, v25, a1, 8);
      }

      v26 = objc_getProperty(a1, v25, 368, 1);

      sub_1000AEA70(v26);
      return;
    }
  }

  else
  {
  }

  if (a1[51] == 1)
  {

    [a1 didReceiveStatusChangeWithInterface:2 matchedPrivateLTENetwork:0];
  }
}

void sub_10001579C(uint64_t a1, void *a2)
{
  v3 = a2;
  status = nw_path_get_status(v3);
  v5 = nw_path_copy_interface();

  v6 = ne_log_obj();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v39 = *(a1 + 32);
    if (v5)
    {
      name = nw_interface_get_name(v5);
    }

    else
    {
      name = "none";
    }

    v41 = *(a1 + 32);
    if (v41)
    {
      if (status > nw_path_status_satisfiable)
      {
        v41 = @"unknown";
      }

      else
      {
        v41 = off_1000E9920[status];
      }
    }

    v43 = 138412802;
    v44 = v39;
    v45 = 2080;
    v46 = name;
    v47 = 2112;
    v48 = v41;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%@ network path monitor update handler received path status over [%s] is [%@]", &v43, 0x20u);
  }

  if (v5)
  {
    v8 = *(a1 + 32);
    if (status == nw_path_status_satisfied)
    {
      if (v8)
      {
        if (!objc_getProperty(v8, v7, 384, 1))
        {
          goto LABEL_9;
        }

        v10 = *(a1 + 32);
        if (v10)
        {
          objc_getProperty(v10, v9, 384, 1);
        }

        if ((nw_interface_shallow_compare() & 1) == 0)
        {
LABEL_9:
          v11 = *(a1 + 32);
          if (v11)
          {
            objc_setProperty_atomic(v11, v9, v5, 384);
          }
        }
      }

      v12 = ne_log_obj();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        goto LABEL_27;
      }

      v13 = *(a1 + 32);
      v14 = nw_interface_get_name(v5);
      v43 = 138412546;
      v44 = v13;
      v45 = 2080;
      v46 = v14;
      v15 = "%@ network path over [%s] is satisfied";
    }

    else
    {
      if (!v8)
      {
        goto LABEL_53;
      }

      v19 = objc_getProperty(v8, v7, 384, 1);
      if (!v19)
      {
        goto LABEL_53;
      }

      v21 = v19;
      v22 = *(a1 + 32);
      if (v22)
      {
        objc_getProperty(v22, v20, 384, 1);
      }

      v23 = nw_interface_shallow_compare();

      if (!v23)
      {
LABEL_53:
        if (nw_interface_get_type(v5))
        {
          goto LABEL_29;
        }

        v28 = ne_log_obj();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          v29 = *(a1 + 32);
          v30 = nw_interface_get_name(v5);
          v43 = 138412546;
          v44 = v29;
          v45 = 2080;
          v46 = v30;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "%@ network path over [%s] is not satisfied", &v43, 0x16u);
        }

        v12 = nw_interface_copy_delegate_interface();
        if (v12)
        {
          v32 = *(a1 + 32);
          if (v32)
          {
            if (!objc_getProperty(v32, v31, 384, 1))
            {
              goto LABEL_38;
            }

            v34 = *(a1 + 32);
            if (v34)
            {
              objc_getProperty(v34, v33, 384, 1);
            }

            if ((nw_interface_shallow_compare() & 1) == 0)
            {
LABEL_38:
              v35 = *(a1 + 32);
              if (v35)
              {
                objc_setProperty_atomic(v35, v33, v12, 384);
              }
            }
          }

          v36 = ne_log_obj();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
          {
            v37 = *(a1 + 32);
            v38 = nw_interface_get_name(v12);
            v43 = 138412546;
            v44 = v37;
            v45 = 2080;
            v46 = v38;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "%@ network path over effective interface [%s] is satisfied", &v43, 0x16u);
          }
        }

        goto LABEL_27;
      }

      v25 = *(a1 + 32);
      if (v25)
      {
        objc_setProperty_atomic(v25, v24, 0, 384);
      }

      v12 = ne_log_obj();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
LABEL_27:

        goto LABEL_29;
      }

      v26 = *(a1 + 32);
      v27 = nw_interface_get_name(v5);
      v43 = 138412546;
      v44 = v26;
      v45 = 2080;
      v46 = v27;
      v15 = "%@ network path over [%s] is not satisfied";
    }

    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, v15, &v43, 0x16u);
    goto LABEL_27;
  }

  v16 = ne_log_obj();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v42 = *(a1 + 32);
    v43 = 138412290;
    v44 = v42;
    _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%@ network path monitor update handler received nil interface", &v43, 0xCu);
  }

  v18 = *(a1 + 32);
  if (v18)
  {
    objc_setProperty_atomic(v18, v17, 0, 384);
  }

LABEL_29:
  sub_1000115D0(*(a1 + 32));
}

void sub_100015FF8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 && (*(v1 + 354) & 1) != 0 && (*(v1 + 353) & 1) == 0)
  {
    v3 = ne_log_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      v5 = 138412290;
      v6 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%@: requesting install", &v5, 0xCu);
    }

    sub_100011D04(*(a1 + 32), 1);
  }
}

void sub_100016380(uint64_t a1, const char *a2)
{
  sub_100015504(*(a1 + 32), a2);
  v3 = *(a1 + 32);

  sub_10001540C(v3);
}

void sub_100016830(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v4)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10001695C;
    v8[3] = &unk_1000E9A28;
    v5 = &v9;
    v9 = *(a1 + 48);
    [v2 plugin:v3 didSetConfiguration:v4 completionHandler:v8];
  }

  else
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10001696C;
    v6[3] = &unk_1000E9A28;
    v5 = &v7;
    v7 = *(a1 + 48);
    [v2 pluginDidClearConfiguration:v3 completionHandler:v6];
  }
}

void sub_100016A38(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(v3 + 64);
  }

  else
  {
    v4 = 0;
  }

  if (v2 != v4)
  {
    *(v3 + 64) = v2;
    v5 = [*(a1 + 32) delegate];
    [v5 plugin:*(a1 + 32) didSetStatus:*(a1 + 48) andDisconnectError:*(a1 + 40)];
  }
}

void sub_100016B58(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 pluginDidDetachIPC:*(a1 + 32)];
}

void sub_100016C84(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100016D38;
  v5[3] = &unk_1000E9A00;
  v6 = *(a1 + 48);
  [v2 plugin:v3 didRequestVirtualInterfaceWithParameters:v4 completionHandler:v5];
}

void sub_100016D38(uint64_t a1, id a2)
{
  if (a2)
  {
    a2 = [[NEVirtualInterfaceParameters alloc] initWithVirtualInterface:a2];
  }

  v3 = a2;
  (*(*(a1 + 32) + 16))();
}

void sub_100016F40(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v4 = v2;
  if (v2)
  {
    v3 = [v2 pluginDidRequestFlowDivertControlSocket:*(a1 + 32)];
  }

  else
  {
    v3 = 0;
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100017150(uint64_t a1)
{
  v3 = [*(a1 + 32) delegate];
  v2 = [v3 plugin:*(a1 + 32) didApplySettings:*(a1 + 40)];
  (*(*(a1 + 48) + 16))();
}

void sub_100017274(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 pluginDidRequestAgentClientServer:*(a1 + 32)];
}

void sub_100017384(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(v3 + 64);
  }

  else
  {
    v4 = 0;
  }

  if (v2 != v4)
  {
    *(v3 + 64) = v2;
    v9 = [*(a1 + 32) delegate];
    v5 = *(a1 + 40);
    if (v5)
    {
      v6 = [v5 domain];
      v7 = [v6 isEqualToString:NEFilterErrorDomain];

      if (v7)
      {
        v8 = [*(a1 + 40) code];
      }

      else
      {
        v8 = 1;
      }
    }

    else
    {
      v8 = 0;
    }

    [v9 plugin:*(a1 + 32) didSetStatus:*(a1 + 48) andError:v8];
  }
}

void sub_100017590(uint64_t a1)
{
  v3 = [*(a1 + 32) delegate];
  v2 = [v3 pluginDidRequestPacketFilterChannel:*(a1 + 32)];
  (*(*(a1 + 40) + 16))();
}

void sub_1000176B8(uint64_t a1)
{
  v3 = [*(a1 + 32) delegate];
  v2 = [v3 pluginDidRequestContentFilterSocket:*(a1 + 32)];
  (*(*(a1 + 40) + 16))();
}

void sub_100017898(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 pluginDidRequestUpdatePrefilter:*(a1 + 32)];
  (*(*(a1 + 40) + 16))();
}

void sub_100017A1C(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 pluginDidRequestAgentClientServer:*(a1 + 32)];
}

void sub_100017BC8(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(v3 + 64);
  }

  else
  {
    v4 = 0;
  }

  if (v2 != v4)
  {
    *(v3 + 64) = v2;
    v9 = [*(a1 + 32) delegate];
    v5 = *(a1 + 40);
    if (v5)
    {
      v6 = [v5 domain];
      v7 = [v6 isEqualToString:@"NEAgentURLFilterErrorDomain"];

      if (v7)
      {
        v8 = [*(a1 + 40) code];
      }

      else
      {
        v8 = 1;
      }
    }

    else
    {
      v8 = 0;
    }

    [v9 plugin:*(a1 + 32) didSetStatus:*(a1 + 48) andError:v8];
  }
}

void sub_100017DB0(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 handleProviderInstallationStatus:*(a1 + 32) status:*(a1 + 40)];
}

void sub_100017E8C(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 handleProviderStopped:*(a1 + 32)];
}

void sub_100017F68(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 didExtensionExit:*(a1 + 32)];
}

void sub_100018044(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 didReceiveUnmatchEthernet:*(a1 + 32)];
}

void sub_10001814C(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 plugin:*(a1 + 32) didReceivePushToTalkMessageWithUserInfo:*(a1 + 40)];
}

void sub_100018254(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 plugin:*(a1 + 32) didReceiveIncomingCallWithUserInfo:*(a1 + 40)];
}

void sub_100018380(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 plugin:*(a1 + 32) didReceiveProviderError:*(a1 + 40) forMessageID:*(a1 + 48)];
}

void sub_10001848C(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 plugin:*(a1 + 32) didReceiveProviderError:*(a1 + 40)];
}

void sub_100018594(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 didProviderExit:*(a1 + 32)];
}

void sub_10001869C(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 plugin:*(a1 + 32) didReceiveProviderError:*(a1 + 40)];
}

_BYTE *sub_100018718(uint64_t a1)
{
  v2 = [*(a1 + 32) pluginConnection];

  if (v2)
  {
    v3 = [*(a1 + 32) pluginConnection];
    [v3 invalidate];

    [*(a1 + 32) setPluginConnection:0];
  }

  result = *(a1 + 32);
  if (result && (result[16] & 1) != 0)
  {

    return [result handlePluginFailedWithError:0];
  }

  return result;
}

BOOL sub_1000187A4(_BYTE *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = [a1 delegate];
    objc_initWeak(&location, v4);

    if (a1[16])
    {
      if ([a1 extension_pid] >= 1)
      {
        v5 = [a1 delegateQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000189F0;
        block[3] = &unk_1000EA918;
        block[4] = a1;
        objc_copyWeak(&v14, &location);
        dispatch_async(v5, block);

        objc_destroyWeak(&v14);
      }
    }

    else
    {
      v6 = ne_log_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v17 = a1;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@: Sending start command", buf, 0xCu);
      }

      v8 = objc_getProperty(a1, v7, 24, 1);
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100018B0C;
      v10[3] = &unk_1000E9988;
      objc_copyWeak(&v12, &location);
      v10[4] = a1;
      v11 = v3;
      [v8 startWithCompletionHandler:v10];

      objc_destroyWeak(&v12);
    }

    objc_destroyWeak(&location);
  }

  return a1 != 0;
}

void sub_1000189C0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1000189F0(uint64_t a1)
{
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v8 = 138412546;
    v9 = v3;
    v10 = 1024;
    v11 = [v3 extension_pid];
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@: startWithConfiguration already has a non-zero PID (%d), calling didStartWithPid", &v8, 0x12u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = *(a1 + 32);
  v7 = sub_100019748(v5, v6);
  [WeakRetained plugin:v5 didInitializeWithUUIDs:v7];

  [WeakRetained plugin:*(a1 + 32) didStartWithPID:objc_msgSend(*(a1 + 32) error:{"extension_pid"), 0}];
}

void sub_100018B0C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v9 = WeakRetained;
  v10 = *(a1 + 32);
  if (!v5 && v6)
  {
    if (v10)
    {
      Property = objc_getProperty(*(a1 + 32), v8, 24, 1);
    }

    else
    {
      Property = 0;
    }

    v12 = [Property isLocal];
    v13 = *(a1 + 32);
    v60 = v9;
    if (v12)
    {
      v15 = v6;
      if (v13 && (v16 = objc_getProperty(v13, v14, 24, 1)) != 0 && (v17 = v16[7] - 2, v17 <= 8) && ((0x1BFu >> v17) & 1) != 0)
      {
        v18 = *off_1000E9A70[v17];
        v19 = objc_alloc(objc_opt_class());
        v21 = objc_getProperty(v13, v20, 24, 1);
        v58 = v15;
        if (v21)
        {
          v22 = v21[6];
        }

        else
        {
          v22 = 0;
        }

        v23 = v22;
        v25 = objc_getProperty(v13, v24, 24, 1);
        if (v25)
        {
          v27 = v25[7];
        }

        else
        {
          v27 = 0;
        }

        v28 = objc_getProperty(v13, v26, 24, 1);
        v29 = v19;
        if (v28)
        {
          v30 = v28[9];
        }

        else
        {
          v30 = 0;
        }

        v31 = v30;
        v32 = [v31 firstObject];
        v33 = [v13 delegateQueue];
        v34 = [v29 initWithPluginType:v23 pluginClass:v27 pluginEndpoint:v58 pluginProcessIdentity:v32 queue:v33 factory:v13];

        if (v34)
        {
          if ([objc_opt_class() conformsToProtocol:&OBJC_PROTOCOL___NEPluginDriver])
          {
            objc_storeStrong((v13 + 8), v34);

LABEL_24:
            v42 = *(a1 + 32);
            v63[0] = _NSConcreteStackBlock;
            v63[1] = 3221225472;
            v63[2] = sub_1000191BC;
            v63[3] = &unk_1000EADC0;
            v63[4] = v42;
            v43 = v60;
            v64 = v43;
            v44 = [v42 remotePluginObjectWithErrorHandler:v63];
            v45 = *(a1 + 40);
            v61[0] = _NSConcreteStackBlock;
            v61[1] = 3221225472;
            v61[2] = sub_100019298;
            v61[3] = &unk_1000E9960;
            v61[4] = *(a1 + 32);
            v62 = v43;
            [v44 startWithConfiguration:v45 completionHandler:v61];

LABEL_29:
            v9 = v60;
            goto LABEL_30;
          }

          v47 = ne_log_obj();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            v55 = objc_opt_class();
            v56 = NSStringFromClass(v55);
            v57 = NSStringFromProtocol(&OBJC_PROTOCOL___NEPluginDriver);
            *buf = 138412546;
            *&buf[4] = v56;
            *&buf[12] = 2112;
            *&buf[14] = v57;
            _os_log_error_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "Driver class (%@) does not conform to protocol %@", buf, 0x16u);
          }
        }

        else
        {
          v47 = ne_log_obj();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            v49 = objc_getProperty(v13, v48, 24, 1);
            if (v49)
            {
              v50 = v49[6];
            }

            else
            {
              v50 = 0;
            }

            v51 = v50;
            v53 = objc_getProperty(v13, v52, 24, 1);
            if (v53)
            {
              v54 = v53[7];
            }

            else
            {
              v54 = 0;
            }

            *buf = 138412802;
            *&buf[4] = v51;
            *&buf[12] = 2048;
            *&buf[14] = v54;
            *&buf[22] = 2048;
            v67 = v58;
            _os_log_error_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "Failed to create a plugin driver, type = %@, class = %ld, endpoint = %p", buf, 0x20u);
          }
        }
      }

      else
      {
      }
    }

    else
    {
      v59 = v6;
      if (v13)
      {
        objc_initWeak(&location, v13);
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3221225472;
        *&buf[16] = sub_100019790;
        v67 = &unk_1000E9C50;
        objc_copyWeak(v68, &location);
        v35 = objc_retainBlock(buf);
        v36 = [[NSXPCConnection alloc] initWithListenerEndpoint:v59];
        v37 = [v13 managerInterface];
        if (v37)
        {
          [v36 setExportedInterface:v37];
          [v36 setExportedObject:v13];
        }

        v38 = [v13 remotePluginInterface];
        v39 = objc_opt_class();
        v40 = [NSSet setWithObjects:v39, objc_opt_class(), 0];
        [v38 setClasses:v40 forSelector:"startWithConfiguration:completionHandler:" argumentIndex:1 ofReply:1];
        [v36 setRemoteObjectInterface:v38];
        [v36 setInterruptionHandler:v35];
        [v36 setInvalidationHandler:v35];
        [v36 resume];
        v41 = *(v13 + 48);
        *(v13 + 48) = v36;

        objc_destroyWeak(v68);
        objc_destroyWeak(&location);

        goto LABEL_24;
      }
    }

    v46 = ne_log_obj();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "Failed to create the plugin driver", buf, 2u);
    }

    [v60 plugin:*(a1 + 32) didStartWithPID:0 error:0];
    goto LABEL_29;
  }

  [WeakRetained plugin:v10 didStartWithPID:0 error:v5];
LABEL_30:
}

void sub_100019188(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location, char a27, uint64_t a28, uint64_t a29, uint64_t a30, id a31)
{
  objc_destroyWeak(&a31);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000191BC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = v3;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%@: Got an XPC connection error while starting the plugin: %@", &v6, 0x16u);
  }

  [*(a1 + 40) plugin:*(a1 + 32) didStartWithPID:0 error:v3];
}

void sub_100019298(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) delegateQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100019368;
  v10[3] = &unk_1000EB1E8;
  v14 = a2;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v11 = v5;
  v12 = v7;
  v13 = v8;
  v9 = v5;
  dispatch_async(v6, v10);
}

void sub_100019368(uint64_t a1)
{
  if (*(a1 + 56) != 1)
  {
    goto LABEL_23;
  }

  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v32 = *(a1 + 32);
    if (v32)
    {
      v32 = [v32 count];
    }

    LODWORD(block) = 134217984;
    *(&block + 4) = v32;
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "extension started successfully with %zu number of process identities", &block, 0xCu);
  }

  if ([*(a1 + 32) count])
  {
    v5 = *(a1 + 32);
    Property = *(a1 + 40);
    if (Property)
    {
      Property = objc_getProperty(Property, v3, 24, 1);
    }

    sub_100093CC4(Property, v5);
  }

  v6 = sub_100019700(*(a1 + 40), v3);
  v7 = [v6 count];

  if (v7)
  {
    v9 = sub_100019700(*(a1 + 40), v8);
    v10 = [v9 firstObject];
    [*(a1 + 40) setExtension_pid:{objc_msgSend(v10, "pid")}];

    v11 = objc_alloc_init(NSMutableArray);
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v13 = sub_100019700(*(a1 + 40), v12);
    v14 = [v13 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v35;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v35 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v34 + 1) + 8 * i);
          v19 = [v18 uuid];

          if (v19)
          {
            v20 = [v18 uuid];
            [v11 addObject:v20];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v15);
    }

    if ([v11 count])
    {
      v22 = *(a1 + 40);
      if (v22)
      {
        v23 = objc_getProperty(v22, v21, 24, 1);
        v24 = v11;
        if (v23)
        {
          v26 = v24;
          v27 = objc_getProperty(v23, v25, 24, 1);
          *&block = _NSConcreteStackBlock;
          *(&block + 1) = 3221225472;
          v40 = sub_100094600;
          v41 = &unk_1000EB198;
          v42 = v23;
          v43 = v26;
          dispatch_sync(v27, &block);
        }
      }

      else
      {
        v33 = v11;
      }
    }

    v29 = *(a1 + 40);
    v28 = *(a1 + 48);
    v30 = sub_100019748(v29, v21);
    [v28 plugin:v29 didInitializeWithUUIDs:v30];

    [*(a1 + 48) plugin:*(a1 + 40) didStartWithPID:objc_msgSend(*(a1 + 40) error:{"extension_pid"), 0}];
    [*(a1 + 40) setStarted:1];
  }

  else
  {
LABEL_23:
    v31 = ne_log_obj();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      LOWORD(block) = 0;
      _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "failed to start the extension", &block, 2u);
    }

    [*(a1 + 48) plugin:*(a1 + 40) didStartWithPID:0 error:0];
  }
}

id sub_100019700(id a1, const char *a2)
{
  if (a1)
  {
    Property = objc_getProperty(a1, a2, 24, 1);
    if (Property)
    {
      v4 = Property[9];
    }

    else
    {
      v4 = 0;
    }

    a1 = v4;
    v2 = vars8;
  }

  return a1;
}

id sub_100019748(id a1, const char *a2)
{
  if (a1)
  {
    Property = objc_getProperty(a1, a2, 24, 1);
    if (Property)
    {
      v4 = Property[8];
    }

    else
    {
      v4 = 0;
    }

    a1 = v4;
    v2 = vars8;
  }

  return a1;
}

void sub_100019790(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = ne_log_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v4) = 138412290;
      *(&v4 + 4) = WeakRetained;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@: Tearing down plugin connection", &v4, 0xCu);
    }

    v3 = [WeakRetained delegateQueue];
    *&v4 = _NSConcreteStackBlock;
    *(&v4 + 1) = 3221225472;
    v5 = sub_100018718;
    v6 = &unk_1000EB1C0;
    v7 = WeakRetained;
    dispatch_async(v3, &v4);
  }
}

void sub_1000198A8(_BYTE *self, const char *a2)
{
  if (self)
  {
    self[16] = 0;
    v3 = *(self + 1);
    if (v3)
    {
      v4 = v3;
      if ([v4 conformsToProtocol:&OBJC_PROTOCOL___NEAgentSessionDelegate])
      {
        v10[0] = _NSConcreteStackBlock;
        v10[1] = 3221225472;
        v10[2] = sub_100019A48;
        v10[3] = &unk_1000EB1C0;
        v10[4] = self;
        [v4 handleDisposeWithCompletionHandler:v10];

        return;
      }
    }

    Property = objc_getProperty(self, a2, 24, 1);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100019AD8;
    v9[3] = &unk_1000EB068;
    v9[4] = self;
    v7 = v9;
    if (Property)
    {
      v8 = objc_getProperty(Property, v6, 24, 1);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100093FDC;
      block[3] = &unk_1000EB310;
      block[4] = Property;
      v12 = v7;
      dispatch_sync(v8, block);
    }
  }
}

void sub_100019A48(uint64_t a1)
{
  v2 = [*(a1 + 32) delegateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100019E4C;
  block[3] = &unk_1000EB1C0;
  block[4] = *(a1 + 32);
  dispatch_async(v2, block);
}

void sub_100019AD8(uint64_t a1)
{
  v2 = [*(a1 + 32) pluginConnection];

  if (v2)
  {
    v4 = [*(a1 + 32) pluginConnection];
    [v4 invalidate];

    [*(a1 + 32) setPluginConnection:0];
  }

  v5 = *(a1 + 32);
  if (v5 && (Property = objc_getProperty(v5, v3, 24, 1)) != 0 && Property[5] == 1 && ((v7 = Property[7], v7 != 5) ? (v8 = v7 == 2) : (v8 = 1), v8 && [*(a1 + 32) extension_pid]))
  {
    v9 = [*(a1 + 32) extension_pid];
    v10 = ne_log_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v21 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Killing extension, pid %d", buf, 8u);
    }

    v11 = [*(a1 + 32) delegateQueue];
    v12 = dispatch_source_create(&_dispatch_source_type_proc, v9, 0x80000000uLL, v11);

    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100019D2C;
    handler[3] = &unk_1000EB360;
    v19 = v9;
    v13 = *(a1 + 32);
    v17 = v12;
    v18 = v13;
    v14 = v12;
    dispatch_source_set_event_handler(v14, handler);
    dispatch_resume(v14);
    kill([*(a1 + 32) extension_pid], 9);
  }

  else
  {
    v14 = [*(a1 + 32) delegateQueue];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100019DF8;
    v15[3] = &unk_1000EB1C0;
    v15[4] = *(a1 + 32);
    dispatch_async(v14, v15);
  }
}

void sub_100019D2C(uint64_t a1)
{
  dispatch_source_cancel(*(a1 + 32));
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Process %d exited", v5, 8u);
  }

  v4 = [*(a1 + 40) delegate];
  [v4 pluginDidDispose:*(a1 + 40)];
}

void sub_100019DF8(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 pluginDidDispose:*(a1 + 32)];
}

void sub_100019E4C(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 pluginDidDispose:*(a1 + 32)];
}

void sub_100019EA0(void *a1, void *a2)
{
  if (a1)
  {
    v3 = a2;
    v4 = [a1 remotePluginObject];
    [v4 updateConfiguration:v3];
  }
}

void sub_100019F08(void *a1)
{
  if (a1)
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100019FE4;
    v4[3] = &unk_1000EB068;
    v4[4] = a1;
    v2 = [a1 remotePluginObjectWithErrorHandler:v4];
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10001A09C;
    v3[3] = &unk_1000EB1C0;
    v3[4] = a1;
    [v2 sleepWithCompletionHandler:v3];
  }
}

void sub_100019FE4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) delegateQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001A180;
  v6[3] = &unk_1000EB198;
  v6[4] = *(a1 + 32);
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

void sub_10001A09C(uint64_t a1)
{
  v2 = [*(a1 + 32) delegateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001A12C;
  block[3] = &unk_1000EB1C0;
  block[4] = *(a1 + 32);
  dispatch_async(v2, block);
}

void sub_10001A12C(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 pluginDidAcknowledgeSleep:*(a1 + 32)];
}

void sub_10001A180(uint64_t a1)
{
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = 138412546;
    v7 = v4;
    v8 = 2112;
    v9 = v5;
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%@: Got an XPC error while sending sleep event: %@", &v6, 0x16u);
  }

  v3 = [*(a1 + 32) delegate];
  [v3 pluginDidAcknowledgeSleep:*(a1 + 32)];
}

void sub_10001A254(void *a1)
{
  if (a1)
  {
    v1 = [a1 remotePluginObject];
    [v1 wakeup];
  }
}

void sub_10001A29C(void *a1, const char *a2)
{
  if (a1)
  {
    Property = objc_getProperty(a1, a2, 24, 1);

    sub_100093DB0(Property, v3);
  }
}

unsigned int *sub_10001A2D4(unsigned int *result)
{
  if (result)
  {
    v1 = result;
    if ([result extension_pid])
    {

      return [v1 extension_pid];
    }

    else
    {
      result = objc_getProperty(v1, v2, 24, 1);
      if (result)
      {
        return result[4];
      }
    }
  }

  return result;
}

void sub_10001A338(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) delegateQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001A50C;
  v6[3] = &unk_1000EB198;
  v6[4] = *(a1 + 32);
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

void sub_10001A3F0(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) delegateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001A4B0;
  block[3] = &unk_1000EB360;
  block[4] = *(a1 + 32);
  v9 = v5;
  v10 = a3;
  v7 = v5;
  dispatch_async(v6, block);
}

void sub_10001A4B0(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 plugin:*(a1 + 32) didFinishAuthenticationWithResults:*(a1 + 40) status:*(a1 + 48) andError:0];
}

void sub_10001A50C(uint64_t a1)
{
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = 138412546;
    v7 = v4;
    v8 = 2112;
    v9 = v5;
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%@: Got an error on the XPC connection while authenticating: %@", &v6, 0x16u);
  }

  v3 = [*(a1 + 32) delegate];
  [v3 plugin:*(a1 + 32) didFinishAuthenticationWithResults:0 status:0 andError:*(a1 + 40)];
}

void sub_10001A5E8(void *a1)
{
  if (a1)
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10001A6C4;
    v4[3] = &unk_1000EB068;
    v4[4] = a1;
    v2 = [a1 remotePluginObjectWithErrorHandler:v4];
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10001A77C;
    v3[3] = &unk_1000E99D8;
    v3[4] = a1;
    [v2 attachIPCWithCompletionHandler:v3];
  }
}

void sub_10001A6C4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) delegateQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001A8A4;
  v6[3] = &unk_1000EB198;
  v6[4] = *(a1 + 32);
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

void sub_10001A77C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) delegateQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001A834;
  v6[3] = &unk_1000EB198;
  v6[4] = *(a1 + 32);
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

void sub_10001A834(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) _endpoint];
  [v4 plugin:v2 didAttachIPCWithEndpoint:v3];
}

void sub_10001A8A4(uint64_t a1)
{
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = 138412546;
    v7 = v4;
    v8 = 2112;
    v9 = v5;
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%@: Got an XPC connection error while attaching IPC: %@", &v6, 0x16u);
  }

  v3 = [*(a1 + 32) delegate];
  [v3 plugin:*(a1 + 32) didAttachIPCWithEndpoint:0];
}

void sub_10001A97C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = v3;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%@: Got an XPC connection error while setting the App UUID map: %@", &v6, 0x16u);
  }
}

void sub_10001AA48(void *a1, void *a2)
{
  if (a1 && a2)
  {
    v3 = a2;
    v5 = [a1 remotePluginObject];
    v4 = [v3 UTF8String];

    [v5 setDelegateInterface:if_nametoindex(v4)];
  }
}

void sub_10001AAD0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) delegateQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001AC88;
  v6[3] = &unk_1000EB198;
  v6[4] = *(a1 + 32);
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

void sub_10001AB88(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) delegateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001AC70;
  block[3] = &unk_1000EB2E8;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

void sub_10001AC88(uint64_t a1)
{
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = 138412546;
    v7 = v4;
    v8 = 2112;
    v9 = v5;
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%@: Got an XPC connection error while getting a client connection: %@", &v6, 0x16u);
  }

  v3 = [*(a1 + 32) delegate];
  [v3 plugin:*(a1 + 32) didSetStatus:0 andError:1];
}

void sub_10001AD64(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) delegateQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001AFA4;
  v6[3] = &unk_1000EB198;
  v6[4] = *(a1 + 32);
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

void sub_10001AE1C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 32);
      *buf = 138412290;
      v18 = v12;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%@: getURLFilterClientConnection returns nil endpoint", buf, 0xCu);
    }
  }

  v8 = [*(a1 + 32) delegateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001AF8C;
  block[3] = &unk_1000EB2E8;
  v9 = *(a1 + 40);
  v15 = v6;
  v16 = v9;
  v14 = v5;
  v10 = v6;
  v11 = v5;
  dispatch_async(v8, block);
}

void sub_10001AFA4(uint64_t a1)
{
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = 138412546;
    v7 = v4;
    v8 = 2112;
    v9 = v5;
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%@: Got an XPC connection error while getting a client connection: %@", &v6, 0x16u);
  }

  v3 = [*(a1 + 32) delegate];
  [v3 plugin:*(a1 + 32) didSetStatus:0 andError:1];
}

void sub_10001B080(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) delegateQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001B138;
  v6[3] = &unk_1000EB198;
  v6[4] = *(a1 + 32);
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

void sub_10001B138(uint64_t a1)
{
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = 138412546;
    v7 = v4;
    v8 = 2112;
    v9 = v5;
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%@: Got an XPC connection error while getting a client connection: %@", &v6, 0x16u);
  }

  v3 = [*(a1 + 32) delegate];
  [v3 plugin:*(a1 + 32) didSetStatus:0 andError:1];
}

void sub_10001B214(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) delegateQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001B2CC;
  v6[3] = &unk_1000EB198;
  v6[4] = *(a1 + 32);
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

void sub_10001B2CC(uint64_t a1)
{
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = 138412546;
    v7 = v4;
    v8 = 2112;
    v9 = v5;
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%@: Got an XPC connection error while getting a client connection: %@", &v6, 0x16u);
  }

  v3 = [*(a1 + 32) delegate];
  [v3 plugin:*(a1 + 32) didSetStatus:0 andError:1];
}

void sub_10001BF94(void *a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a5;
  if (a1)
  {
    v11 = a4;
    v12 = ne_log_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *v28 = 138412802;
      *&v28[4] = a1;
      *&v28[12] = 2080;
      *&v28[14] = "[NESMVPNSession handlePluginStart:pid:error:physicalInterface:interfaceRanked:]";
      *&v28[22] = 2112;
      v29 = v10;
      _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%@: %s - Starting on physicalInterface %@", v28, 0x20u);
    }

    if (!v10)
    {
      goto LABEL_21;
    }

    v13 = [a1 proxyEnabled:v10];
    Property = [a1 server];
    v16 = Property;
    if (Property)
    {
      Property = objc_getProperty(Property, v15, 72, 1);
    }

    v17 = Property;
    v18 = [v17 objectForKeyedSubscript:v10];

    if (v18)
    {
      v19 = [a1 server];
      v21 = v19;
      if (v19)
      {
        v19 = objc_getProperty(v19, v20, 72, 1);
      }

      v22 = v19;
      v23 = [v22 objectForKeyedSubscript:v10];
      flags = [v23 unsignedLongLongValue];

      v25 = ne_log_obj();
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_19;
      }

      *v28 = 138413058;
      *&v28[4] = a1;
      *&v28[12] = 2080;
      *&v28[14] = "[NESMVPNSession handlePluginStart:pid:error:physicalInterface:interfaceRanked:]";
      *&v28[22] = 2112;
      v29 = v10;
      LOWORD(v30) = 2048;
      *(&v30 + 2) = flags;
      v26 = "%@: %s - physicalInterface %@ - ranked interface flags %llX";
    }

    else
    {
      if (nwi_state_copy())
      {
        [v10 UTF8String];
        if (nwi_state_get_ifstate())
        {
          flags = nwi_ifstate_get_flags();
        }

        else
        {
          flags = 0;
        }

        nwi_state_release();
      }

      else
      {
        flags = 0;
      }

      v25 = ne_log_obj();
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_19;
      }

      *v28 = 138413058;
      *&v28[4] = a1;
      *&v28[12] = 2080;
      *&v28[14] = "[NESMVPNSession handlePluginStart:pid:error:physicalInterface:interfaceRanked:]";
      *&v28[22] = 2112;
      v29 = v10;
      LOWORD(v30) = 2048;
      *(&v30 + 2) = flags;
      v26 = "%@: %s - physicalInterface %@ - non-ranked interface flags %llX";
    }

    _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, v26, v28, 0x2Au);
LABEL_19:

    sub_10001C2F0(a1, (flags & 4) != 0, v13, v10);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      sub_10001AA48(v9, v10);
    }

LABEL_21:
    v27 = [a1 stateHandler];
    [v27 handlePlugin:v9 didStartWithPID:a3 error:v11];
  }
}

void sub_10001C2F0(void *a1, char a2, char a3, void *a4)
{
  v51 = a4;
  if (!a1)
  {
    goto LABEL_29;
  }

  v7 = [a1 configuration];
  v8 = [v7 VPN];
  v9 = [v8 protocol];
  v10 = [v9 includeAllNetworks];

  if (!v10)
  {
    v23 = [a1 policySession];
    v24 = [a1 pluginPIDArray];
    v33 = v51;
    v34 = v33;
    if (v23)
    {
      v35 = *(v23 + 8);
      if (v35 == 2 || v35 == 1 && *(v23 + 32) != 2)
      {
        v52 = _NSConcreteStackBlock;
        v53 = 3221225472;
        v54 = sub_100039578;
        v55 = &unk_1000E9E78;
        v56 = v23;
        v57 = v33;
        v58 = v24;
        LOBYTE(v59) = a2;
        BYTE1(v59) = a3;
        sub_100031500(NESMPolicyMasterSession, &v52);
      }
    }

    goto LABEL_18;
  }

  v11 = [a1 primaryTunnelPlugin];
  if (v11)
  {
    v12 = v11;
    v13 = [a1 primaryTunnelPlugin];
    if (sub_10001A2D4(v13))
    {
      v14 = [a1 primaryTunnelPlugin];
      v16 = sub_100019748(v14, v15);
      v17 = [v16 count];

      if (!v17)
      {
        goto LABEL_8;
      }

      v12 = [a1 policySession];
      v13 = [a1 primaryTunnelPlugin];
      v18 = sub_10001A2D4(v13);
      v19 = [a1 server];
      v20 = [v19 primaryPhysicalInterface];
      v21 = [v20 interfaceName];
      sub_100039EE0(v12, v18, v21, a2, a3);
    }
  }

LABEL_8:
  v22 = [a1 authenticationPlugin];
  if (v22)
  {
    v23 = v22;
    v24 = [a1 authenticationPlugin];
    if (!sub_10001A2D4(v24))
    {
LABEL_18:

      goto LABEL_19;
    }

    v25 = [a1 authenticationPlugin];
    v27 = sub_100019748(v25, v26);
    v28 = [v27 count];

    if (v28)
    {
      v23 = [a1 policySession];
      v24 = [a1 authenticationPlugin];
      v29 = sub_10001A2D4(v24);
      v30 = [a1 server];
      v31 = [v30 primaryPhysicalInterface];
      v32 = [v31 interfaceName];
      sub_100039EE0(v23, v29, v32, a2, a3);

      goto LABEL_18;
    }
  }

LABEL_19:
  if ([a1 type] == 1)
  {
    v36 = [a1 configuration];
    v37 = [v36 VPN];
    v38 = [v37 exceptionApps];

    if (v38)
    {
      v39 = [a1 tunnelKind];
      v40 = [a1 policySession];
      v41 = [a1 configuration];
      v42 = [v41 VPN];
      v43 = [v42 exceptionApps];
      if (v39 == 1)
      {
        v44 = [a1 server];
        v45 = [v44 primaryPhysicalInterface];
        v46 = [v45 interfaceName];
        v47 = [a1 uid];
        sub_100040B4C(v40, v43, v46, [v47 intValue]);
      }

      else
      {
        v44 = [a1 uid];
        v48 = [v44 intValue];
        v49 = v43;
        v50 = v51;
        if (v40 && isa_nsarray() && v40[2] == 1)
        {
          v52 = _NSConcreteStackBlock;
          v53 = 3221225472;
          v54 = sub_100041508;
          v55 = &unk_1000E9FB8;
          v56 = v40;
          v57 = v50;
          v58 = v49;
          v59 = v48;
          sub_100031500(NESMPolicyMasterSession, &v52);
        }
      }
    }
  }

LABEL_29:
}

uint64_t sub_10001CE70(uint64_t a1)
{
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@: Re-setting policies because the installed apps changed", &v5, 0xCu);
  }

  [*(a1 + 32) resetPerAppPolicy];
  return sub_10008F168(*(a1 + 32), 1);
}

void sub_10001DC34(void *a1)
{
  if (a1)
  {
    if ([a1 stopped])
    {
      goto LABEL_34;
    }

    v2 = [a1 configuration];
    v3 = [v2 VPN];
    v4 = [v3 protocol];
    v5 = [v4 includeAllNetworks];

    if (!v5)
    {
LABEL_34:

      sub_10001E1D8(a1);
    }

    else
    {
      [a1 setDefaultDropType:3];
      v42 = 3;
      if (!objc_getProperty(a1, v6, 424, 1))
      {
        v7 = [a1 getIDSNetworkAgentDomain];
        objc_setProperty_atomic(a1, v8, v7, 440);

        v9 = ne_log_obj();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          Property = objc_getProperty(a1, v10, 440, 1);
          v45 = 2112;
          v46[0] = @"clientchannel";
          _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Watching Nexus <%@, %@> path", buf, 0x16u);
        }

        v11 = objc_alloc_init(NWParameters);
        [v11 requireNetworkAgentWithDomain:objc_getProperty(a1 type:{v12, 440, 1), @"clientchannel"}];
        v13 = [[NWPathEvaluator alloc] initWithEndpoint:0 parameters:v11];
        objc_setProperty_atomic(a1, v14, v13, 424);

        [objc_getProperty(a1 v15];
      }

      v16 = [a1 controlPolicySession];
      [v16 removeAllPolicies];

      v17 = [a1 highPolicySession];
      [v17 removeAllPolicies];

      v18 = [a1 controlPolicySession];
      v19 = [a1 configuration];
      v20 = [a1 server];
      v22 = v20;
      if (v20)
      {
        v20 = objc_getProperty(v20, v21, 80, 1);
      }

      v23 = v20;
      v24 = sub_100065E5C(v18, v19, &v42, v23);

      if ((v24 & 1) == 0)
      {
        v25 = ne_log_obj();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "VPN-includeAllNetworks evaluateConfiguration failed", buf, 2u);
        }
      }

      v26 = [a1 defaultDropType];
      if (v26 < v42)
      {
        [a1 setDefaultDropType:?];
      }

      v27 = [a1 highPolicySession];
      v28 = [a1 configuration];
      v29 = v28;
      if (v27)
      {
        *buf = 50;
        sub_1000634E0(v27, buf, v28, &v42, 1);
      }

      else
      {

        v27 = ne_log_obj();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "VPN-includeAllNetworks evaluateConfiguration (High) failed", buf, 2u);
        }
      }

      v30 = [a1 defaultDropType];
      if (v30 < v42)
      {
        [a1 setDefaultDropType:?];
      }

      v31 = [a1 controlPolicySession];
      v32 = [v31 apply];

      if ((v32 & 1) == 0)
      {
        v33 = ne_log_obj();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "VPN Could not apply control policies", buf, 2u);
        }
      }

      v34 = [a1 highPolicySession];
      v35 = [v34 apply];

      if ((v35 & 1) == 0)
      {
        v36 = ne_log_obj();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "VPN Could not apply High control policies", buf, 2u);
        }
      }

      [a1 setIsDropPersistent:0];
      v37 = ne_log_obj();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v38 = [a1 defaultDropType];
        v39 = [a1 isDropPersistent];
        v40 = "Non-Persistent";
        Property = "[NESMVPNSession setDefaultDropAll]";
        *buf = 136315650;
        if (v39)
        {
          v40 = "Persistent";
        }

        v45 = 1024;
        LODWORD(v46[0]) = v38;
        WORD2(v46[0]) = 2080;
        *(v46 + 6) = v40;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "%s: VPN setting IP Drop-All to %d (%s)", buf, 0x1Cu);
      }

      v41 = [a1 server];
      sub_10005A708(v41, 0, 0);
    }
  }
}

void sub_10001E1D8(void *a1)
{
  if (a1)
  {
    [a1 setDefaultDropType:0];
    [a1 setIsDropPersistent:0];
    v2 = ne_log_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [a1 defaultDropType];
      v4 = [a1 isDropPersistent];
      v5 = "Non-Persistent";
      *&v16[4] = "[NESMVPNSession unsetDefaultDropAll]";
      *v16 = 136315650;
      if (v4)
      {
        v5 = "Persistent";
      }

      *&v16[12] = 1024;
      *&v16[14] = v3;
      v17 = 2080;
      v18 = v5;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s: VPN setting IP Drop-All to %d (%s)", v16, 0x1Cu);
    }

    v6 = [a1 server];
    sub_10005A708(v6, 0, 0);

    v7 = [a1 controlPolicySession];
    [v7 removeAllPolicies];

    v8 = [a1 controlPolicySession];
    v9 = [v8 apply];

    if ((v9 & 1) == 0)
    {
      v10 = ne_log_obj();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *v16 = 0;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "VPN Could not apply control policies cleanup", v16, 2u);
      }
    }

    v11 = [a1 highPolicySession];
    [v11 removeAllPolicies];

    v12 = [a1 highPolicySession];
    v13 = [v12 apply];

    if ((v13 & 1) == 0)
    {
      v15 = ne_log_obj();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *v16 = 0;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "VPN Could not apply high policies cleanup", v16, 2u);
      }
    }

    sub_10001E410(a1, v14);
  }
}

void sub_10001E410(void *a1, const char *a2)
{
  if (a1)
  {
    if (objc_getProperty(a1, a2, 424, 1))
    {
      [objc_getProperty(a1 v3];
      objc_setProperty_atomic(a1, v4, 0, 424);
    }

    a1[54] = 0;
    v5 = [a1 policySession];
    v7 = sub_100034538(v5, v6);

    if ((v7 & 1) == 0)
    {
      v9 = ne_log_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *v10 = 0;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to clear Nexus policy", v10, 2u);
      }
    }

    objc_setProperty_atomic(a1, v8, 0, 440);
  }
}

void *sub_10001F398(void *result, const char *a2)
{
  if (result)
  {
    v2 = result;
    result = objc_getProperty(result, a2, 456, 1);
    if (result)
    {
      Property = objc_getProperty(v2, v3, 456, 1);
      if (Property)
      {
        Property[1] = 0;
      }

      result = objc_getProperty(v2, v5, 456, 1);
      if (result)
      {
        result[2] = 0;
      }
    }
  }

  return result;
}

void sub_10001F404(void *a1, const char *a2)
{
  if (a1)
  {
    v3 = objc_getProperty(a1, a2, 448, 1);
    if (v3)
    {
    }

    else if ((sub_10001F778(a1) & 1) == 0)
    {
      if (objc_getProperty(a1, v4, 456, 1))
      {
        v6 = objc_getProperty(a1, v5, 456, 1);
        if (v6 && (v8 = v6[1], v6, v8))
        {
          v9 = objc_getProperty(a1, v7, 456, 1);
          if (v9)
          {
            v11 = v9[2];
            v9[2] = v11 + 1;

            if (v11 >= 3)
            {
              Property = objc_getProperty(a1, v10, 456, 1);
              if (Property)
              {
                Property[1] *= 2;
              }

              v14 = objc_getProperty(a1, v13, 456, 1);
              if (v14)
              {
                v16 = v14[1];

                if (v16 >= 601)
                {
                  v17 = objc_getProperty(a1, v15, 456, 1);
                  if (v17)
                  {
                    v17[1] = 600;
                  }
                }
              }

              v18 = objc_getProperty(a1, v15, 456, 1);
              if (v18)
              {
                v18[2] = 0;
              }
            }
          }

          v19 = objc_getProperty(a1, v10, 456, 1);
          if (v19)
          {
            v20 = v19[1];
          }

          else
          {
            v20 = 0;
          }
        }

        else
        {
          v21 = objc_getProperty(a1, v7, 456, 1);
          if (v21)
          {
            v21[1] = 1;
          }

          v20 = 1;
          v23 = objc_getProperty(a1, v22, 456, 1);
          if (v23)
          {
            v23[2] = 0;
            v20 = 1;
          }
        }
      }

      else
      {
        v20 = -1;
      }

      v24 = ne_log_obj();
      v25 = v24;
      if (v20 < 0)
      {
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v29 = a1;
          v30 = 2080;
          v31 = "[NESMVPNSession retry]";
          _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%@:%s: failed to get retry interval", buf, 0x16u);
        }
      }

      else
      {
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          *buf = 138412802;
          v29 = a1;
          v30 = 2080;
          v31 = "[NESMVPNSession retry]";
          v32 = 2048;
          v33 = v20;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "%@:%s: Retrying in %ld Secs", buf, 0x20u);
        }

        v25 = [a1 queue];
        v26 = NECreateTimerSource();
        objc_setProperty_atomic(a1, v27, v26, 448);
      }
    }
  }
}

uint64_t sub_10001F778(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (([result stopped] & 1) == 0 && objc_msgSend(v1, "status") == 1)
    {
      v2 = [v1 server];
      v3 = [v2 primaryPhysicalInterface];
      v4 = [v3 interfaceName];
      if (v4)
      {
        v5 = v4;
        v6 = [v1 server];
        v7 = [v6 primaryPhysicalInterface];
        v8 = [v7 interfaceName];
        v9 = [v1 isInterfaceIPAvailable:{objc_msgSend(v8, "UTF8String")}];

        if (v9)
        {
          return 0;
        }
      }

      else
      {
      }
    }

    v10 = ne_log_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = [v1 server];
      v12 = [v11 primaryPhysicalInterface];
      v13 = [v12 interfaceName];
      v14 = 138412802;
      v15 = v1;
      v16 = 2080;
      v17 = "[NESMVPNSession skipRetry]";
      v18 = 2112;
      v19 = v13;
      _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%@:%s: Skip retry, session already running, stopped or no network - primary interface %@", &v14, 0x20u);
    }

    return 1;
  }

  return result;
}

void sub_10001F944(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    Property = objc_getProperty(v3, a2, 448, 1);
    v3 = *(a1 + 32);
    if (Property)
    {
      if (v3)
      {
        v3 = objc_getProperty(v3, v4, 448, 1);
      }

      dispatch_source_cancel(v3);
      v3 = *(a1 + 32);
      if (v3)
      {
        objc_setProperty_atomic(v3, v6, 0, 448);
        v3 = *(a1 + 32);
      }
    }
  }

  if (sub_10001F778(v3))
  {
    v8 = *(a1 + 32);

    sub_10001F398(v8, v7);
  }

  else
  {
    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 32);
      v13 = 138412546;
      v14 = v10;
      v15 = 2080;
      v16 = "[NESMVPNSession retry]_block_invoke";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%@:%s: Retrying now", &v13, 0x16u);
    }

    v11 = *(a1 + 32);
    v12 = [v11 lastStartMessage];
    [v11 handleStartMessage:v12];
  }
}

id sub_100020390(uint64_t a1)
{
  result = [*(a1 + 32) virtualInterface];
  if (result)
  {
    [*(a1 + 32) virtualInterface];
    NEVirtualInterfaceRemoveAllAddresses();
    [*(a1 + 32) virtualInterface];
    NEVirtualInterfaceRemoveAllRoutes();
    [*(a1 + 32) virtualInterface];
    NEVirtualInterfaceSetIPv4Router();
    [*(a1 + 32) virtualInterface];
    NEVirtualInterfaceSetIPv6Router();
    [*(a1 + 32) virtualInterface];
    NEVirtualInterfaceSetAsPrimary();
    [*(a1 + 32) virtualInterface];
    NEVirtualInterfaceSetVPNServerAddress();
    [*(a1 + 32) virtualInterface];
    NEVirtualInterfaceSetDNSDomain();
    [*(a1 + 32) virtualInterface];
    NEVirtualInterfaceSetDNSServers();
    [*(a1 + 32) virtualInterface];
    NEVirtualInterfaceSetDNSSearchDomains();
    [*(a1 + 32) virtualInterface];
    NEVirtualInterfaceSetDNSSupplementalMatchDomains();
    [*(a1 + 32) virtualInterface];
    NEVirtualInterfaceSetDNSSupplementalMatchDomainsNoSearch();
    [*(a1 + 32) virtualInterface];
    NEVirtualInterfaceSetProxies();
    [*(a1 + 32) virtualInterface];
    v3 = *(a1 + 40);
    if (NEVirtualInterfaceUpdateAdHocServiceReturnChanges())
    {
      return 0;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_1000204A8(uint64_t a1, uint64_t a2)
{
  if ((a2 & 1) == 0)
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      v11 = 138412290;
      v12 = v10;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%@: failed to update the service in the dynamic store while clearing the configuration", &v11, 0xCu);
    }
  }

  if ([*(a1 + 32) parentType] == 2)
  {
    v5 = [*(a1 + 32) parent];
    sub_10009BBB0(v5, *(a1 + 32));
  }

  v6 = [*(a1 + 32) stateHandler];
  [v6 handleClearConfigurationResult:a2];

  sub_100020644(*(a1 + 32));
  sub_10008FD50(*(a1 + 32));
  if ((*(a1 + 40) & 1) == 0)
  {
    v7 = [*(a1 + 32) policySession];
    sub_100030D44(v7);

    if (![*(a1 + 32) virtualInterface])
    {
      v9 = [*(a1 + 32) policySession];
      sub_100030F60(v9);

      if (a2)
      {
        goto LABEL_10;
      }

LABEL_12:
      v8 = [NSError errorWithDomain:@"NEAgentErrorDomain" code:1 userInfo:0];
      goto LABEL_13;
    }
  }

  if ((a2 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_10:
  v8 = 0;
LABEL_13:
  sub_100020758(*(a1 + 32), v8);
}

void sub_100020644(void *a1)
{
  if (a1)
  {
    v2 = [a1 dnsAgentRegistration];
    v3 = [v2 isRegistered];

    if (v3)
    {
      v4 = [a1 dnsAgentRegistration];
      [v4 unregisterNetworkAgent];

      v5 = ne_log_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 138412290;
        v9 = a1;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@: Unregistered DNS network agent", &v8, 0xCu);
      }
    }

    [a1 setDnsAgentRegistration:0];
    [a1 setDnsAgent:0];
    v6 = [a1 policySession];
    sub_100030FE0(v6, v7);
  }
}

void sub_100020758(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = [a1 setConfigurationCompletionHandlerArray];

    if (v4)
    {
      v5 = [a1 setConfigurationCompletionHandlerArray];
      v6 = [v5 count];

      if (v6)
      {
        v7 = [a1 setConfigurationCompletionHandlerArray];
        v8 = [v7 objectAtIndexedSubscript:0];

        v9 = ne_log_obj();
        v10 = v9;
        if (v8)
        {
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v11 = [a1 interfaceName];
            Property = objc_getProperty(v8, v12, 8, 1);
            v14 = objc_retainBlock(Property);
            v24 = 138412802;
            v25 = a1;
            v26 = 2112;
            v27 = v11;
            v28 = 2112;
            v29 = v14;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@: config request: popping handler [%@] %@", &v24, 0x20u);
          }

          if (objc_getProperty(v8, v15, 8, 1))
          {
            v16 = ne_log_obj();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              v18 = objc_getProperty(v8, v17, 8, 1);
              v19 = objc_retainBlock(v18);
              v24 = 138412546;
              v25 = a1;
              v26 = 2112;
              v27 = v19;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%@: config request: calling completionHandler %@", &v24, 0x16u);
            }

            v21 = objc_getProperty(v8, v20, 8, 1);
            v21[2](v21, v3);
          }

          v10 = [a1 setConfigurationCompletionHandlerArray];
          [v10 removeObject:v8];
        }

        else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v23 = [a1 interfaceName];
          v24 = 138412546;
          v25 = a1;
          v26 = 2112;
          v27 = v23;
          _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%@: No config request completion handler [%@]", &v24, 0x16u);
        }

        goto LABEL_19;
      }

      v8 = ne_log_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v10 = [a1 interfaceName];
        v24 = 138412546;
        v25 = a1;
        v26 = 2112;
        v27 = v10;
        v22 = "%@: config request handler array empty [%@]";
        goto LABEL_16;
      }
    }

    else
    {
      v8 = ne_log_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v10 = [a1 interfaceName];
        v24 = 138412546;
        v25 = a1;
        v26 = 2112;
        v27 = v10;
        v22 = "%@: config request (pop) handler array nil [%@]";
LABEL_16:
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, v22, &v24, 0x16u);
LABEL_19:
      }
    }
  }
}

void sub_100020B4C(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    return;
  }

  *(v2 + 400) &= ~*(a1 + 40);
  v4 = *(a1 + 32);
  if (!v4 || v4[50] || !objc_getProperty(v4, a2, 408, 1))
  {
    return;
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    if (objc_getProperty(v6, v5, 416, 1))
    {
      Property = *(a1 + 32);
      if (Property)
      {
        Property = objc_getProperty(Property, v7, 416, 1);
      }

      dispatch_source_cancel(Property);
      v6 = *(a1 + 32);
      if (!v6)
      {
        goto LABEL_14;
      }

      objc_setProperty_atomic(v6, v9, 0, 416);
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      v6 = objc_getProperty(v6, v7, 408, 1);
    }
  }

LABEL_14:
  (*(v6 + 2))(v6, 1);
  v11 = *(a1 + 32);
  if (v11)
  {
    objc_setProperty_atomic_copy(v11, v10, 0, 408);
    v11 = *(a1 + 32);
    if (v11)
    {
      v11 = objc_getProperty(v11, v12, 376, 1);
    }
  }

  dispatch_resume(v11);
}

void sub_100020D98(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    Property = objc_getProperty(WeakRetained, v3, 376, 1);
    dispatch_suspend(Property);
    v6 = [v4 queue];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100020EA4;
    v7[3] = &unk_1000E9B30;
    objc_copyWeak(&v11, a1 + 6);
    v9 = a1[4];
    v8 = v4;
    v10 = a1[5];
    dispatch_sync(v6, v7);

    objc_destroyWeak(&v11);
  }
}

void sub_100020EA4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = (*(*(a1 + 40) + 16))();
  if (!v3)
  {
    (*(*(a1 + 48) + 16))();
    if (WeakRetained)
    {
      Property = objc_getProperty(WeakRetained, v10, 376, 1);
    }

    else
    {
      Property = 0;
    }

    dispatch_resume(Property);
    goto LABEL_28;
  }

  v4 = v3;
  v5 = objc_loadWeakRetained((a1 + 56));
  v7 = v5;
  if (v5)
  {
    v5[50] = 0;
  }

  if ((v4 & 2) != 0)
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      *buf = 138412290;
      v21 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%@: waiting for DNS to change", buf, 0xCu);
    }

    if (v7)
    {
      v7[50] |= 2uLL;
    }
  }

  if ((v4 & 1) == 0)
  {
    if ((v4 & 4) == 0)
    {
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    goto LABEL_20;
  }

  v12 = ne_log_obj();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = *(a1 + 32);
    *buf = 138412290;
    v21 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%@: waiting for NWI to change", buf, 0xCu);
  }

  if (!v7)
  {
    if ((v4 & 4) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_20;
  }

  v7[50] |= 1uLL;
  if ((v4 & 4) != 0)
  {
LABEL_20:
    v14 = ne_log_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = *(a1 + 32);
      *buf = 138412290;
      v21 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%@: waiting for proxies to change", buf, 0xCu);
    }

    if (!v7)
    {
      goto LABEL_25;
    }

    v7[50] |= 4uLL;
  }

LABEL_24:
  objc_setProperty_atomic_copy(v7, v6, *(a1 + 48), 408);
LABEL_25:
  v16 = [v7 queue];
  objc_copyWeak(&v19, (a1 + 56));
  v18 = NECreateTimerSource();
  if (v7)
  {
    objc_setProperty_atomic(v7, v17, v18, 416);
  }

  objc_destroyWeak(&v19);
LABEL_28:
}

void sub_1000211D4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 32));
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      if (v3)
      {
        v5 = v3[50];
      }

      else
      {
        LODWORD(v5) = 0;
      }

      v14 = 138412546;
      v15 = v3;
      v16 = 1024;
      v17 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%@: timed out while waiting for network configuration to change (pending flags = 0x%x)", &v14, 0x12u);
    }

    if (v3)
    {
      v3[50] = 0;
      if (objc_getProperty(v3, v6, 408, 1))
      {
        Property = objc_getProperty(v3, v7, 408, 1);
        Property[2](Property, 1);
        objc_setProperty_atomic_copy(v3, v9, 0, 408);
      }

      v10 = objc_getProperty(v3, v7, 416, 1);
      dispatch_source_cancel(v10);
      objc_setProperty_atomic(v3, v11, 0, 416);
      v13 = objc_getProperty(v3, v12, 376, 1);
    }

    else
    {
      dispatch_source_cancel(0);
      v13 = 0;
    }

    dispatch_resume(v13);
  }
}

void sub_1000213D8(void *a1, int a2)
{
  if (!a1)
  {
    return;
  }

  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v56 = 138412546;
    *&v56[4] = a1;
    *&v56[12] = 1024;
    *&v56[14] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@: handleSetConfigurationResult - result %d", v56, 0x12u);
  }

  if ([a1 virtualInterface] && (objc_msgSend(a1, "sessionType") == 1 || objc_msgSend(a1, "sessionType") == 2))
  {
    [a1 virtualInterface];
    v5 = NEVirtualInterfaceCopyName();
    sub_10008FBD4(a1, v5);
  }

  if (a2 && [a1 resetPerAppPolicy])
  {
    if ([a1 type] == 1)
    {
      if ([a1 tunnelKind] == 2)
      {
        if ([a1 virtualInterface])
        {
          v6 = NEVirtualInterfaceCopyName();
          if (!v6)
          {
            v33 = ne_log_obj();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              v55 = [a1 interfaceName];
              *v56 = 138412802;
              *&v56[4] = a1;
              *&v56[12] = 2112;
              *&v56[14] = v55;
              *&v56[22] = 2080;
              v57 = "[NESMVPNSession applyFallbackTunnelDataPolicies]";
              _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%@[%@]:%s: NULL virtual interface name", v56, 0x20u);
            }

            v7 = 0;
            goto LABEL_62;
          }

          v7 = v6;
          [a1 virtualInterface];
          v8 = NEVirtualInterfaceCopyDelegateInterfaceName();
          if (v8)
          {
            v9 = v8;
LABEL_45:
            v36 = [a1 pluginConfigurationEntities];
            v37 = [v36 DNSSettings];
            v38 = [v37 matchDomains];

            if (v38)
            {
              v39 = [v36 DNSSettings];
              v40 = [v39 matchDomains];
            }

            else
            {
              v39 = [a1 protocol];
              v41 = [v39 DNSSettings];
              v40 = [v41 matchDomains];
            }

            v42 = [v36 IPv4Settings];

            if (!v42)
            {
              goto LABEL_53;
            }

            v43 = [v36 IPv4Settings];
            v44 = [v43 hasDefaultRoute];

            if (v44)
            {
              v45 = 1;
              goto LABEL_54;
            }

            v46 = [v36 IPv6Settings];

            if (v46)
            {
              v47 = [v36 IPv6Settings];
              v45 = [v47 hasDefaultRoute];
            }

            else
            {
LABEL_53:
              v45 = 0;
            }

LABEL_54:
            v48 = NEVirtualInterfaceCopyRoutes();
            v49 = NEVirtualInterfaceCopyRoutes();
            v50 = [a1 policySession];
            v7 = v7;
            v51 = v9;
            v52 = v48;
            v53 = v49;
            v54 = v40;
            if (v50 && isa_nsstring() && LODWORD(v50[1].isa) == 1)
            {
              *v56 = _NSConcreteStackBlock;
              *&v56[8] = 3221225472;
              *&v56[16] = sub_10003C500;
              v57 = &unk_1000E9F18;
              v58 = v50;
              v59 = v7;
              v60 = v53;
              v61 = v51;
              v64 = v45;
              v62 = v52;
              v63 = v54;
              v10 = sub_100031500(NESMPolicyMasterSession, v56);
            }

            else
            {
              v10 = 0;
            }

            goto LABEL_63;
          }

          v34 = [a1 server];
          v35 = [v34 primaryCellularInterface];
          v9 = [v35 interfaceName];

          if (v9)
          {
            goto LABEL_45;
          }

          v29 = ne_log_obj();
          if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_61;
          }

          *v56 = 138412546;
          *&v56[4] = a1;
          *&v56[12] = 2080;
          *&v56[14] = "[NESMVPNSession applyFallbackTunnelDataPolicies]";
          v30 = "%@:%s: NULL delegate interface name";
          v31 = v29;
          v32 = 22;
        }

        else
        {
          v7 = ne_log_obj();
          if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
          {
LABEL_62:
            v10 = 0;
LABEL_63:

            goto LABEL_17;
          }

          v29 = [a1 interfaceName];
          *v56 = 138412802;
          *&v56[4] = a1;
          *&v56[12] = 2112;
          *&v56[14] = v29;
          *&v56[22] = 2080;
          v57 = "[NESMVPNSession applyFallbackTunnelDataPolicies]";
          v30 = "%@[%@]:%s: NULL virtual interface";
          v31 = v7;
          v32 = 32;
        }

        _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, v30, v56, v32);
LABEL_61:

        goto LABEL_62;
      }

      v20 = [a1 configuration];
      v21 = [v20 VPN];
      v22 = [v21 protocol];
      v23 = [v22 enforceRoutes];

      if (v23)
      {
        v24 = [a1 configuration];
        v25 = [v24 VPN];
        v26 = [v25 protocol];
        v27 = [v26 includeAllNetworks];

        if ((v27 & 1) == 0)
        {
          v10 = sub_100021C04(a1);
          goto LABEL_17;
        }

        v28 = ne_log_obj();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *v56 = 138412290;
          *&v56[4] = a1;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%@: Ignoring enforceRoutes because includeAllNetworks is set", v56, 0xCu);
        }
      }
    }

    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

LABEL_17:
  if ([a1 parentType] == 2)
  {
    v11 = [a1 parent];
    if (v10 && [a1 type] == 1)
    {
      [a1 virtualInterface];
      v12 = NEVirtualInterfaceCopyName();
      v13 = a1;
      v14 = v12;
      v15 = v14;
      if (v11)
      {
        if (v14)
        {
          v16 = [v11 queue];
          *v56 = _NSConcreteStackBlock;
          *&v56[8] = 3221225472;
          *&v56[16] = sub_10009BA98;
          v57 = &unk_1000EABC8;
          v58 = v15;
          v59 = v11;
          v60 = v13;
          dispatch_async(v16, v56);

          v17 = v58;
        }

        else
        {
          v17 = ne_log_obj();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
          {
            *v56 = 136315138;
            *&v56[4] = "[NESMIKEv2VPNFallbackSession handleSetConfigurationResult:tunnelInterfaceName:]";
            _os_log_fault_impl(&_mh_execute_header, v17, OS_LOG_TYPE_FAULT, "%s called with null tunnelInterfaceName", v56, 0xCu);
          }
        }
      }
    }
  }

  v18 = [a1 stateHandler];
  [v18 handleSetConfigurationResult:v10];

  if (v10)
  {
    v19 = 0;
  }

  else
  {
    v19 = [NSError errorWithDomain:@"NEAgentErrorDomain" code:1 userInfo:0];
  }

  sub_100020758(a1, v19);
}