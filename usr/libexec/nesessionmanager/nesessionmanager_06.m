id sub_10009AE84(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 360, 1);
  }

  v4 = [Property objectAtIndexedSubscript:0];
  v6 = v4;
  if (v4)
  {
    v7 = objc_getProperty(v4, v5, 24, 1);
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 40);

  v10 = *(a1 + 48);
  v11 = *(a1 + 32);
  if (v7 == v8)
  {
    if (v11)
    {
      v11 = objc_getProperty(v11, v9, 360, 1);
    }

    v12 = 0;
  }

  else
  {
    if (v11)
    {
      v11 = objc_getProperty(v11, v9, 360, 1);
    }

    v12 = 1;
  }

  v13 = [v11 objectAtIndexedSubscript:v12];
  if (v13)
  {
    v13[2] = v10;
  }

  v14 = ne_log_obj();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = *(a1 + 32);
    v17 = *(a1 + 40);
    if (v15)
    {
      v18 = [objc_getProperty(v15 v16];
      v20 = v18;
      if (v18)
      {
        v21 = objc_getProperty(v18, v19, 24, 1);
      }

      else
      {
        v21 = 0;
      }

      if (v21 == v17)
      {
        v27 = @"Primary Tunnel";
      }

      else
      {
        v23 = [objc_getProperty(v15 v22];
        v25 = v23;
        if (v23)
        {
          v26 = objc_getProperty(v23, v24, 24, 1);
        }

        else
        {
          v26 = 0;
        }

        if (v26 == v17)
        {
          v27 = @"Fallback Tunnel";
        }

        else
        {
          v27 = &stru_1000EBA68;
        }
      }
    }

    else
    {
      v27 = 0;
    }

    v28 = v27;
    v29 = *(a1 + 48);
    v32 = 138412802;
    v33 = v15;
    v34 = 2112;
    v35 = v28;
    v36 = 2080;
    v37 = ne_session_status_to_string();
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%@[%@]: VPN Status to Parent: %s", &v32, 0x20u);
  }

  v30 = [*(a1 + 32) status];
  [*(a1 + 32) setStatus:*(a1 + 48)];
  result = [*(a1 + 32) status];
  if (result == v30)
  {
    return [*(a1 + 32) notifyChangedExtendedStatus];
  }

  return result;
}

void sub_10009B10C(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 360, 1);
  }

  v4 = [Property objectAtIndexedSubscript:0];
  v6 = v4;
  if (v4)
  {
    v7 = objc_getProperty(v4, v5, 24, 1);
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 40);

  if (v7 == v8)
  {
    v10 = *(a1 + 32);

    sub_100099FE8(v10, v9);
  }
}

void sub_10009B1B0(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 360, 1);
  }

  v4 = [Property objectAtIndexedSubscript:0];
  v6 = v4;
  if (v4)
  {
    v7 = objc_getProperty(v4, v5, 24, 1);
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 40);

  v10 = *(a1 + 32);
  if (v7 == v8)
  {
    if (v10)
    {
      v10 = objc_getProperty(v10, v9, 360, 1);
    }

    v11 = 1;
  }

  else
  {
    if (v10)
    {
      v10 = objc_getProperty(v10, v9, 360, 1);
    }

    v11 = 0;
  }

  v12 = [v10 objectAtIndexedSubscript:v11];
  if (!v12 || (v13 = v12[2], v12, v13 <= 5) && ((1 << v13) & 0x23) != 0)
  {
    v14 = *(a1 + 48);
    v15 = *(a1 + 32);

    [v15 setLastStopReason:v14];
  }
}

void sub_10009B2C8(void *a1, const char *a2)
{
  Property = a1[4];
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 360, 1);
  }

  v4 = [Property objectAtIndexedSubscript:0];
  v6 = v4;
  if (v4)
  {
    v7 = objc_getProperty(v4, v5, 24, 1);
  }

  else
  {
    v7 = 0;
  }

  v8 = a1[5];

  v10 = a1[4];
  if (v7 == v8)
  {
    if (v10)
    {
      v10 = objc_getProperty(v10, v9, 360, 1);
    }

    v11 = 1;
  }

  else
  {
    if (v10)
    {
      v10 = objc_getProperty(v10, v9, 360, 1);
    }

    v11 = 0;
  }

  v12 = [v10 objectAtIndexedSubscript:v11];
  if (!v12 || (v13 = v12[2], v12, v13 <= 5) && ((1 << v13) & 0x23) != 0)
  {
    v14 = a1[6];
    v15 = a1[4];

    [v15 setLastDisconnectError:v14];
  }
}

void sub_10009B3E0(uint64_t a1)
{
  v2 = objc_alloc_init(NEIKEv2FallbackConfigurationOperation);
  v4 = v2;
  if (v2)
  {
    v2->_requestState = 3;
    v2->_exclusive = *(a1 + 48);
  }

  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v3, 360, 1);
  }

  v6 = [Property objectAtIndexedSubscript:0];
  v8 = v6;
  if (v6)
  {
    v9 = objc_getProperty(v6, v7, 24, 1);
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a1 + 40);

  v12 = *(a1 + 32);
  if (v9 == v10)
  {
    if (v12)
    {
      v12 = objc_getProperty(v12, v11, 360, 1);
    }

    v13 = 0;
  }

  else
  {
    if (v12)
    {
      v12 = objc_getProperty(v12, v11, 360, 1);
    }

    v13 = 1;
  }

  v15 = [v12 objectAtIndexedSubscript:v13];
  if (v4)
  {
    objc_setProperty_atomic(v4, v14, v15, 24);
  }

  v17 = *(a1 + 32);
  if (v17)
  {
    v17 = objc_getProperty(v17, v16, 408, 1);
  }

  [v17 addObject:v4];
  v19 = *(a1 + 32);
  if (v19)
  {
    v19 = objc_getProperty(v19, v18, 408, 1);
  }

  if ([v19 count] == 1)
  {
    sub_100095324(*(a1 + 32), v20);
  }

  else
  {
    v21 = ne_log_obj();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v23 = *(a1 + 32);
      if (v23)
      {
        v23 = objc_getProperty(v23, v22, 408, 1);
      }

      v24 = 134217984;
      v25 = [v23 count];
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "queuing request to install, operations count - %lu", &v24, 0xCu);
    }
  }
}

void sub_10009B5CC(id *a1, char a2)
{
  v4 = [a1[4] queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009B6C4;
  block[3] = &unk_1000EAC40;
  v13 = a2;
  v9 = *(a1 + 2);
  v5 = *(&v9 + 1);
  v6 = a1[6];
  v7 = a1[7];
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v11 = v9;
  v12 = v8;
  dispatch_async(v4, block);
}

void sub_10009B6C4(uint64_t a1)
{
  if (*(a1 + 64))
  {
    kdebug_trace();
    v2 = ne_log_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      *buf = 138412290;
      v17 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@: Successfully registered", buf, 0xCu);
    }

    v4 = [*(a1 + 48) queue];
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_10009B8A8;
    v13 = &unk_1000EB198;
    v14 = *(a1 + 48);
    v15 = *(a1 + 56);
    dispatch_async(v4, &v10);
  }

  else
  {
    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      *buf = 138412546;
      v17 = v6;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@: Rejected start command from %@", buf, 0x16u);
    }

    sub_1000B3460(*(a1 + 40), v8);
    [*(a1 + 32) removeAllClients];
  }

  v9 = [*(a1 + 32) messageQueue];
  dispatch_resume(v9);
}

void sub_10009B8B4(uint64_t a1)
{
  v2 = objc_alloc_init(NEIKEv2FallbackConfigurationOperation);
  v4 = v2;
  if (v2)
  {
    v2->_requestState = 2;
  }

  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v3, 360, 1);
  }

  v6 = [Property objectAtIndexedSubscript:0];
  v8 = v6;
  if (v6)
  {
    v9 = objc_getProperty(v6, v7, 24, 1);
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a1 + 40);

  v12 = *(a1 + 32);
  if (v9 == v10)
  {
    if (v12)
    {
      v12 = objc_getProperty(v12, v11, 360, 1);
    }

    v13 = 0;
  }

  else
  {
    if (v12)
    {
      v12 = objc_getProperty(v12, v11, 360, 1);
    }

    v13 = 1;
  }

  v15 = [v12 objectAtIndexedSubscript:v13];
  if (v4)
  {
    objc_setProperty_atomic(v4, v14, v15, 24);
  }

  v17 = *(a1 + 32);
  if (v17)
  {
    v17 = objc_getProperty(v17, v16, 408, 1);
  }

  [v17 addObject:v4];
  v19 = *(a1 + 32);
  if (v19)
  {
    v19 = objc_getProperty(v19, v18, 408, 1);
  }

  if ([v19 count] == 1)
  {
    sub_100095850(*(a1 + 32), v20);
  }

  else
  {
    v21 = ne_log_obj();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v23 = *(a1 + 32);
      if (v23)
      {
        v23 = objc_getProperty(v23, v22, 408, 1);
      }

      v24 = 134217984;
      v25 = [v23 count];
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "queuing request to uninstall, operations count - %lu", &v24, 0xCu);
    }
  }
}

void sub_10009BA98(uint64_t a1)
{
  newValue = [[NWInterface alloc] initWithInterfaceName:*(a1 + 32)];
  Property = *(a1 + 40);
  if (Property)
  {
    Property = objc_getProperty(Property, v2, 360, 1);
  }

  v4 = [Property objectAtIndexedSubscript:0];
  v6 = v4;
  if (v4)
  {
    v7 = objc_getProperty(v4, v5, 24, 1);
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 48);

  v10 = *(a1 + 40);
  if (v7 == v8)
  {
    if (v10)
    {
      v10 = objc_getProperty(v10, v9, 360, 1);
    }

    v11 = 0;
  }

  else
  {
    if (v10)
    {
      v10 = objc_getProperty(v10, v9, 360, 1);
    }

    v11 = 1;
  }

  v12 = [v10 objectAtIndexedSubscript:v11];
  v14 = v12;
  if (v12)
  {
    objc_setProperty_atomic(v12, v13, newValue, 40);
  }

  sub_100099A58(*(a1 + 40));
}

void sub_10009BBB0(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (v3)
    {
      v5 = [a1 queue];
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_10009BCF8;
      v7[3] = &unk_1000EB198;
      v7[4] = a1;
      v8 = v4;
      dispatch_async(v5, v7);
    }

    else
    {
      v6 = ne_log_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v10 = "[NESMIKEv2VPNFallbackSession handleClearConfigurationResult:]";
        _os_log_fault_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "%s called with null session", buf, 0xCu);
      }
    }
  }
}

void sub_10009BCF8(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 360, 1);
  }

  v4 = [Property objectAtIndexedSubscript:0];
  v6 = v4;
  if (v4)
  {
    v4 = objc_getProperty(v4, v5, 24, 1);
  }

  v7 = v4;
  v9 = v7;
  if (v7 == *(a1 + 40))
  {
    v19 = *(a1 + 32);
    if (v19)
    {
      v19 = objc_getProperty(v19, v8, 360, 1);
    }

    v20 = [v19 objectAtIndexedSubscript:0];
    v22 = v20;
    if (v20)
    {
      v23 = objc_getProperty(v20, v21, 40, 1);
    }

    else
    {
      v23 = 0;
    }

    if (v23)
    {
      v17 = *(a1 + 32);
      if (v17)
      {
        v17 = objc_getProperty(v17, v10, 360, 1);
      }

      v18 = 0;
      goto LABEL_22;
    }
  }

  else
  {
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    v11 = objc_getProperty(v11, v10, 360, 1);
  }

  v12 = [v11 objectAtIndexedSubscript:1];
  v14 = v12;
  if (!v12)
  {
    goto LABEL_24;
  }

  v15 = objc_getProperty(v12, v13, 40, 1);

  if (!v15)
  {
    goto LABEL_25;
  }

  v17 = *(a1 + 32);
  if (v17)
  {
    v17 = objc_getProperty(v17, v16, 360, 1);
  }

  v18 = 1;
LABEL_22:
  v24 = [v17 objectAtIndexedSubscript:v18];
  v14 = v24;
  if (v24)
  {
    objc_setProperty_atomic(v24, v25, 0, 40);
  }

LABEL_24:

LABEL_25:
  v26 = *(a1 + 32);

  sub_100099A58(v26);
}

void sub_10009BEDC(time_t *a1)
{
  if (a1)
  {
    v2 = ne_log_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = a1[5];
      if (v3 == -1)
      {
        v3 = 0;
      }

      v13 = 134217984;
      v14 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Ready to sleep, sleepDate %lld", &v13, 0xCu);
    }

    if (objc_getProperty(a1, v4, 56, 1))
    {
      Property = objc_getProperty(a1, v5, 56, 1);
      dispatch_source_cancel(Property);
      objc_setProperty_atomic(a1, v7, 0, 56);
    }

    if (objc_getProperty(a1, v5, 32, 1))
    {
      if (a1[5] == -1)
      {
        time(a1 + 5);
        v9 = ne_log_obj();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = a1[5];
          v13 = 134217984;
          v14 = v10;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Enter sleep state after full wake, %ld", &v13, 0xCu);
        }
      }

      v11 = objc_getProperty(a1, v8, 32, 1);
      v11[2]();
      objc_setProperty_atomic_copy(a1, v12, 0, 32);
    }
  }
}

void sub_10009C07C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    IOAllowPowerChange(WeakRetained[2], *(a1 + 40));
    WeakRetained = v3;
  }
}

void sub_10009C0D4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = *(a1 + 16);
    WeakRetained = objc_loadWeakRetained((a1 + 24));
    if (v4 != a2)
    {
      v6 = ne_log_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 67109376;
        LODWORD(v15[0]) = v4;
        WORD2(v15[0]) = 1024;
        *(v15 + 6) = a2;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Setting power state from %d to %d", buf, 0xEu);
      }

      *(a1 + 16) = a2;
      if (a2 == 1)
      {
        if ([WeakRetained handleSleep])
        {
          if (!objc_getProperty(a1, v7, 56, 1))
          {
            objc_getProperty(a1, v8, 48, 1);
            v9 = NECreateTimerSource();
            objc_setProperty_atomic(a1, v10, v9, 56);
          }
        }

        else
        {
          sub_10009BEDC(a1);
        }
      }

      else
      {
        if (*(a1 + 40) != -1)
        {
          v11 = time(0);
          v12 = difftime(v11, *(a1 + 40));
          v13 = ne_log_obj();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            *buf = 134217984;
            *v15 = v12;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "System slept for %f seconds (including dark wake time during sleep)", buf, 0xCu);
          }

          *(a1 + 40) = -1;
          [WeakRetained handleSleepTime:v12];
        }

        if (v4 == 1)
        {
          [WeakRetained handleWakeup];
        }
      }
    }
  }
}

void sub_10009C4E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 16));
    v7 = [WeakRetained managerObject];

    v6 = [[NSError alloc] initWithDomain:@"NEAgentURLFilterErrorDomain" code:a3 userInfo:0];
    [v7 setStatus:a2 error:v6];
  }
}

void sub_10009C718(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    objc_setProperty_atomic(v3, a2, 0, 104);
    v3 = *(a1 + 32);
  }

  sub_10009C760(v3);
}

void sub_10009C760(void *a1)
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

void sub_10009C85C(uint64_t a1, const char *a2)
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

void sub_10009C9DC(uint64_t a1, const char *a2)
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

  sub_10009C4E0(*(a1 + 32), 0, 1);
}

void sub_10009CBD0(uint64_t a1, const char *a2)
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

void sub_10009CD80(uint64_t a1, const char *a2)
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

void sub_10009CF64(uint64_t a1, const char *a2)
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
    v9[2] = sub_10009D0DC;
    v9[3] = &unk_1000EAE60;
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

void sub_10009D17C(uint64_t a1, const char *a2)
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
    v11[2] = sub_10009D2E4;
    v11[3] = &unk_1000EAE38;
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

    sub_10009C4E0(*(a1 + 32), 0, 1);
  }
}

void sub_10009D2E4(uint64_t a1, int a2, void *a3)
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
    v14[2] = sub_10009D4E8;
    v14[3] = &unk_1000EAE10;
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

    sub_10009C4E0(*(a1 + 32), 3, 1);
  }
}

void sub_10009D4E8(uint64_t a1, void *a2, void *a3, void *a4, void *a5, unsigned int a6, unsigned int a7, unsigned int a8, void *a9)
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

    if (sub_10009D8C8(*(a1 + 40), v15, v16, v17, a6, a7, a8, v18))
    {
      v47[0] = _NSConcreteStackBlock;
      v47[1] = 3221225472;
      v47[2] = sub_10009E364;
      v47[3] = &unk_1000EADE8;
      v40 = *(a1 + 40);
      v47[4] = *(a1 + 32);
      v48 = v40;
      sub_10009E5A0(v48, v47);

      goto LABEL_22;
    }

    v41 = ne_log_obj();
    if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
LABEL_21:

      sub_10009C4E0(*(a1 + 32), 3, 1);
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

BOOL sub_10009D8C8(void *a1, void *a2, void *a3, void *a4, unsigned int a5, unsigned int a6, unsigned int a7, void *a8)
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

void sub_10009E364(uint64_t a1, int a2)
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

    sub_10009E69C(v12, v8);
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
    v21[2] = sub_10009E808;
    v21[3] = &unk_1000EADC0;
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

    sub_10009C4E0(*(a1 + 32), 3, 1);
  }
}

void sub_10009E5A0(uint64_t a1, void *a2)
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

void sub_10009E69C(void *a1, const char *a2)
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

void sub_10009E808(uint64_t a1, void *a2)
{
  v3 = a2;
  sub_10009E978(*(a1 + 32), v4);
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

  sub_10009E9E8(*(a1 + 40), v5);
  v8 = *(a1 + 40);
  v9 = 2;
  v10 = 0;
LABEL_13:
  sub_10009C4E0(v8, v9, v10);
}

void sub_10009E978(void *a1, const char *a2)
{
  if (a1 && objc_getProperty(a1, a2, 120, 1))
  {
    Property = objc_getProperty(a1, v3, 120, 1);
    dispatch_source_cancel(Property);

    objc_setProperty_atomic(a1, v5, 0, 120);
  }
}

void sub_10009E9E8(void *a1, const char *a2)
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

void sub_10009EB14(uint64_t a1)
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
  v22[2] = sub_10009ED40;
  v22[3] = &unk_1000EAE10;
  v22[4] = *(a1 + 32);
  v21 = v9;
  v23 = v21;
  [v20 fetchPrefilterDataWithTag:v17 completion:v22];

  objc_destroyWeak(buf);
}

void sub_10009ED40(uint64_t a1, void *a2, void *a3, void *a4, void *a5, unsigned int a6, unsigned int a7, unsigned int a8, void *a9)
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
      if (sub_10009D8C8(v32, v16, v17, v18, a6, a7, a8, v19))
      {
        v39[0] = _NSConcreteStackBlock;
        v39[1] = 3221225472;
        v39[2] = sub_10009F0C0;
        v39[3] = &unk_1000EADE8;
        v33 = *(a1 + 40);
        v39[4] = *(a1 + 32);
        v40 = v33;
        sub_10009E5A0(v40, v39);
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

        sub_10009C4E0(*(a1 + 32), 3, 1);
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

void sub_10009F0C0(uint64_t a1, int a2)
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
    sub_10009E9E8(*(a1 + 40));
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

    sub_10009C4E0(*(a1 + 32), 3, 1);
  }
}

void sub_10009F238(uint64_t a1)
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

    sub_10009C4E0(*(a1 + 32), 3, 3);
  }
}

void sub_10009F4B4(uint64_t a1, const char *a2)
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

        sub_10009C4E0(*(a1 + 32), 3, 3);
        Property = *(a1 + 32);
        if (Property)
        {
          Property = objc_getProperty(Property, v7, 112, 1);
        }

        [Property stopFilter];
        v9 = *(a1 + 32);
        v10 = objc_initWeak(location, v9);
        sub_10009E69C(*(a1 + 32), v11);
        v13 = *(a1 + 32);
        if (v13)
        {
          v13 = objc_getProperty(v13, v12, 112, 1);
        }

        v14 = v13;
        v15 = [*(a1 + 40) urlFilter];
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_10009F6D8;
        v19[3] = &unk_1000EB068;
        v16 = v9;
        v20 = v16;
        [v14 setConfiguration:v15 completionHandler:v19];

        objc_destroyWeak(location);
      }
    }
  }
}

void sub_10009F6D8(uint64_t a1, void *a2)
{
  v3 = a2;
  sub_10009E978(*(a1 + 32), v4);
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
    sub_10009C4E0(*(a1 + 32), 3, v7);
  }
}

id sub_10009F8BC(uint64_t a1, const char *a2)
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
      v7[2] = sub_10009F96C;
      v7[3] = &unk_1000EAD98;
      v7[4] = v6;
      return [Property wakeWithCompletion:v7];
    }
  }

  return result;
}

void sub_10009F96C(uint64_t a1, int a2)
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

void sub_10009FB00(uint64_t a1, const char *a2)
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
  v8[2] = sub_10009FBE0;
  v8[3] = &unk_1000EAD70;
  v8[4] = v7;
  v9 = *(a1 + 40);
  [Property sleepWithCompletion:v8];
}

void sub_10009FBE0(uint64_t a1, int a2)
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

void sub_10009FE4C(uint64_t a1, const char *a2)
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
    v32[2] = sub_1000A00EC;
    v32[3] = &unk_1000EAD70;
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

void sub_1000A00EC(uint64_t a1, int a2)
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

void sub_1000A08A0(id a1)
{
  v1 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NEURLFilterPluginDriver];
  v2 = qword_1000FD5B0;
  qword_1000FD5B0 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000A093C(id a1)
{
  v1 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NEURLFilterPluginManager];
  v2 = qword_1000FD5A0;
  qword_1000FD5A0 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000A0A4C(uint64_t a1)
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

          sub_10009C4E0(*(a1 + 32), 0, 0);
        }
      }
    }
  }
}

void sub_1000A0C30(uint64_t a1)
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

id *sub_1000A0D78(id *result)
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

    sub_10009C4E0(v1[4], 4, 0);
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
    v16[2] = sub_1000A0F28;
    v16[3] = &unk_1000EAD08;
    v16[4] = v15;
    return [v14 stopWithReason:16 completion:v16];
  }

  return result;
}

void sub_1000A0F28(uint64_t a1, int a2, void *a3)
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

id sub_1000A10D4(uint64_t a1)
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
    v11[2] = sub_1000A1218;
    v11[3] = &unk_1000EAD08;
    v11[4] = v10;
    return [Property stopWithReason:5 completion:v11];
  }

  return result;
}

void sub_1000A1218(uint64_t a1, int a2, void *a3)
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

void sub_1000A13A8(uint64_t a1, int a2, void *a3)
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

  sub_10009C760(v9);
}

id sub_1000A1600(uint64_t a1, const char *a2)
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
    v17 = *(result + 2);

    return v17();
  }

  return result;
}

void sub_1000A2638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose((v51 - 256), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A2670(uint64_t a1, void *a2, _BYTE *a3)
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

void sub_1000A27D8(uint64_t a1)
{
  v23 = 0;
  if (sub_1000A2670(*(a1 + 32), *(a1 + 40), &v23))
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

uint64_t sub_1000A2CF8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000A2D10(uint64_t *a1, void *a2, void *a3)
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
        sub_1000A3154(a1[4], v14, 1);
      }

      else
      {
        sub_1000A3154(a1[4], v14, 0);
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

void sub_1000A3154(uint64_t a1, void *a2, uint64_t a3)
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

void sub_1000A3314(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 40), a2);
  }
}

void sub_1000A3324(uint64_t a1, void *a2, void *a3)
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

void sub_1000A3624(uint64_t a1, void *a2, void *a3)
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

void sub_1000A3A7C(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 32), a2);
  }
}

void sub_1000A43F0(uint64_t a1, void *a2, void *a3)
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

id sub_1000A4834(id a1)
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

void sub_1000A48C0(uint64_t a1)
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
    sub_1000A4B30(*(a1 + 32), v11);

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
    v16 = sub_1000A4834(*(a1 + 32));
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

void sub_1000A4B30(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 80), a2);
  }
}

id sub_1000A4BE0(uint64_t a1)
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
  v13 = [(NEBloomFilterChecker *)v10 initFromFile:v12];
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

void sub_1000A4E1C(uint64_t a1)
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

void sub_1000A4F74(uint64_t a1)
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

uint64_t sub_1000A50F8(uint64_t a1)
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
    v6 = sub_1000A4834(*(a1 + 32));
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
    handler[2] = sub_1000A5310;
    handler[3] = &unk_1000EAF28;
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

void sub_1000A5310(uint64_t a1, void *a2)
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

        v8 = sub_1000A4834(v5);
        xpc_connection_set_target_queue(v6, v8);

        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3221225472;
        *&buf[16] = sub_1000A54C4;
        v12 = &unk_1000EAF50;
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

void sub_1000A54C4(uint64_t a1, void *a2)
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
  v134 = sub_1000A6A3C;
  v135 = &unk_1000EB198;
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
  v149 = sub_1000A2CF8;
  v150 = sub_1000A2D08;
  v151 = objc_alloc_init(NSMutableSet);
  if (xarray)
  {
    if (xpc_array_get_count(xarray))
    {
      applier[0] = _NSConcreteStackBlock;
      applier[1] = 3221225472;
      applier[2] = sub_1000A6A50;
      applier[3] = &unk_1000EAF78;
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
    v138[2] = sub_1000A6B78;
    v138[3] = &unk_1000EB2E8;
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
        v35 = sub_1000A4834(v9);
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3221225472;
        *&buf[16] = sub_1000A739C;
        *&buf[24] = &unk_1000EAFC8;
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
    *&v160 = sub_1000A2CF8;
    *(&v160 + 1) = sub_1000A2D08;
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
    v115 = sub_1000A4834(v9);
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_1000A6CC8;
    *&buf[24] = &unk_1000EAFA0;
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

void sub_1000A6A3C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    xpc_connection_send_message(*(a1 + 40), v1);
  }
}

uint64_t sub_1000A6A50(uint64_t a1, uint64_t a2, void *a3)
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

uint64_t sub_1000A6B78(uint64_t a1)
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

void sub_1000A6CC8(uint64_t a1, int a2, void *a3)
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

void sub_1000A739C(uint64_t a1)
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

id sub_1000A7588(uint64_t a1)
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

  v6 = sub_1000A4834(v5);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A76F0;
  block[3] = &unk_1000EB1C0;
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

void sub_1000A76F0(uint64_t a1)
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

void sub_1000A7950(uint64_t a1)
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
    sub_1000A4B30(*(a1 + 32), v14);

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
    v19 = sub_1000A4834(*(a1 + 32));
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

id *sub_1000A7D7C(id *result, const char *a2)
{
  if (result)
  {
    v2 = result;
    if (objc_getProperty(result, a2, 16, 1))
    {
      [objc_getProperty(v2 v3];
      objc_setProperty_atomic(v2, v4, 0, 16);
    }

    if (objc_getProperty(v2, v3, 32, 1))
    {
      v5 = ne_log_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        *v7 = 0;
        _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "End SSID monitor transaction", v7, 2u);
      }

      objc_setProperty_atomic(v2, v6, 0, 32);
    }

    return objc_storeWeak(v2 + 5, 0);
  }

  return result;
}

void sub_1000A80D8(void *a1, void *a2, int a3)
{
  v6 = a2;
  if (!a1)
  {
    goto LABEL_22;
  }

  Property = objc_getProperty(a1, v5, 408, 1);
  if (a3)
  {
    if (Property != v6 && ([objc_getProperty(a1 v8] & 1) == 0)
    {
      objc_setProperty_atomic(a1, v9, v6, 408);
      sub_1000A83A0(a1, 1, 0);
    }

    goto LABEL_22;
  }

  if (Property == v6 || [objc_getProperty(a1 v8])
  {
    objc_setProperty_atomic(a1, v8, 0, 408);
    sub_1000A83A0(a1, 1, 0);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = [a1 configuration];
  v11 = [v10 pathController];
  v12 = [v11 pathRules];

  v13 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (!v13)
  {
LABEL_21:

    goto LABEL_22;
  }

  v14 = v13;
  v15 = 0;
  v16 = *v25;
  do
  {
    for (i = 0; i != v14; i = i + 1)
    {
      if (*v25 != v16)
      {
        objc_enumerationMutation(v12);
      }

      v18 = *(*(&v24 + 1) + 8 * i);
      v19 = [v18 temporaryAllowMulticastNetworkName];
      v20 = [v19 isEqualToString:v6];

      if (v20)
      {
        [v18 setTemporaryAllowMulticastNetworkName:0];
        v15 = 1;
        if (([v18 multicastPreferenceSet] & 1) == 0)
        {
          [v18 setDenyMulticast:1];
        }
      }
    }

    v14 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
  }

  while (v14);

  if (v15)
  {
    v12 = +[NEConfigurationManager sharedManagerForAllUsers];
    v21 = [a1 configuration];
    v22 = [a1 queue];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1000A84C8;
    v23[3] = &unk_1000EB068;
    v23[4] = a1;
    [v12 saveConfiguration:v21 withCompletionQueue:v22 handler:v23];

    goto LABEL_21;
  }

LABEL_22:
}

void sub_1000A83A0(void *a1, char a2, char a3)
{
  if (a1)
  {
    v10[0] = 0;
    v10[1] = v10;
    v10[2] = 0x3032000000;
    v10[3] = sub_1000A85DC;
    v10[4] = sub_1000A85EC;
    v11 = os_transaction_create();
    v6 = [a1 queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000A85F4;
    block[3] = &unk_1000EB090;
    v8 = a3;
    v9 = a2;
    block[4] = a1;
    block[5] = v10;
    dispatch_async(v6, block);

    _Block_object_dispose(v10, 8);
  }
}

void sub_1000A84B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000A84C8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ne_log_obj();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v8 = 138412546;
      v9 = v6;
      v10 = 2112;
      v11 = v3;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%@ failed to save configuration to clear temporary SSID rules: %@", &v8, 0x16u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 32);
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%@ saved configuration to clear temporary SSID rules", &v8, 0xCu);
  }
}

uint64_t sub_1000A85DC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000A85F4(uint64_t a1, const char *a2)
{
  v2 = a1;
  if (*(a1 + 48) == 1)
  {
    sub_10008C510(*(a1 + 32));
  }

  if (*(v2 + 49) == 1)
  {
    v3 = [*(v2 + 32) configuration];
    v4 = [v3 pathController];
    v5 = v2;
    v6 = [v4 isEnabled];

    if (v6)
    {
      v121[0] = 0;
      v121[1] = 0;
      v8 = +[NSMutableDictionary dictionary];
      Property = *(v5 + 32);
      v10 = &selRef_temporaryAllowMulticastNetworkName;
      v11 = v5;
      if (Property)
      {
        Property = objc_getProperty(Property, v7, 368, 1);
      }

      v97 = v8;
      v98 = v5;
      if (([Property ignoreRouteRules] & 1) == 0)
      {
        v116 = 0u;
        v117 = 0u;
        v114 = 0u;
        v115 = 0u;
        v13 = *(v5 + 32);
        if (v13)
        {
          v13 = objc_getProperty(v13, v12, 368, 1);
        }

        v14 = [v13 pathRules];
        v15 = [v14 countByEnumeratingWithState:&v114 objects:v120 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v115;
          while (2)
          {
            for (i = 0; i != v16; i = i + 1)
            {
              if (*v115 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = *(*(&v114 + 1) + 8 * i);
              v20 = [v19 matchSigningIdentifier];
              v21 = [v20 isEqualToString:@"PathRuleDefaultIdentifier"];

              if (v21)
              {
                v100 = v19;
                goto LABEL_21;
              }
            }

            v16 = [v14 countByEnumeratingWithState:&v114 objects:v120 count:16];
            if (v16)
            {
              continue;
            }

            break;
          }

          v100 = 0;
LABEL_21:
          v11 = v98;
          v10 = &selRef_temporaryAllowMulticastNetworkName;
        }

        else
        {
          v100 = 0;
        }

        v112 = 0u;
        v113 = 0u;
        v110 = 0u;
        v111 = 0u;
        v24 = *(v11 + 32);
        if (v24)
        {
          v24 = objc_getProperty(v24, v23, *(v10 + 717), 1);
        }

        obj = [v24 pathRules];
        v25 = [obj countByEnumeratingWithState:&v110 objects:v119 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v111;
          v99 = *v111;
          do
          {
            v28 = 0;
            v101 = v26;
            do
            {
              if (*v111 != v27)
              {
                objc_enumerationMutation(obj);
              }

              v29 = *(*(&v110 + 1) + 8 * v28);
              if (([v29 denyAll] & 1) == 0)
              {
                v30 = *(v11 + 32);
                v31 = v29;
                v32 = v100;
                if (v30)
                {
                  v33 = +[NSMutableArray array];
                  if ([v31 cellularBehavior])
                  {
                    if ([v31 cellularBehavior] == 1)
                    {
                      v35 = 0;
                    }

                    else
                    {
                      [v31 cellularBehavior];
                      v35 = 1;
                    }
                  }

                  else
                  {
                    v35 = [objc_getProperty(v30 v34] != 1;
                  }

                  if (![v31 wifiBehavior] || objc_msgSend(v31, "wifiBehavior") == 2)
                  {
                    v36 = 1;
                    if (v35)
                    {
                      goto LABEL_40;
                    }

LABEL_44:
                    v39 = 2;
LABEL_47:
                    v37 = [NEPolicyRouteRule routeRuleWithAction:v39 forType:2];
                    [v33 addObject:v37];
LABEL_48:

                    goto LABEL_49;
                  }

                  v36 = [v31 wifiBehavior] != 1;
                  if (!v35)
                  {
                    goto LABEL_44;
                  }

LABEL_40:
                  v37 = [v30 configuration];
                  if ([v37 grade] != 2)
                  {

                    goto LABEL_46;
                  }

                  v38 = [v31 matchSigningIdentifier];
                  if ([v38 isEqualToString:@"PathRuleDefaultIdentifier"])
                  {

                    goto LABEL_48;
                  }

                  v44 = [v31 cellularBehavior];
                  v45 = [v32 cellularBehavior];

                  v46 = v44 == v45;
                  v8 = v97;
                  v11 = v98;
                  if (!v46)
                  {
LABEL_46:
                    v39 = 1;
                    goto LABEL_47;
                  }

LABEL_49:
                  if (!v36)
                  {
                    v40 = [NEPolicyRouteRule routeRuleWithAction:2 forType:3];
                    [v33 addObject:v40];
                    v27 = v99;
                    goto LABEL_56;
                  }

                  v40 = [v30 configuration];
                  if ([v40 grade] != 2)
                  {

                    v27 = v99;
                    goto LABEL_55;
                  }

                  v41 = [v31 matchSigningIdentifier];
                  v27 = v99;
                  if ([v41 isEqualToString:@"PathRuleDefaultIdentifier"])
                  {

                    goto LABEL_56;
                  }

                  v47 = [v31 wifiBehavior];
                  v48 = [v32 wifiBehavior];

                  v46 = v47 == v48;
                  v8 = v97;
                  v11 = v98;
                  if (!v46)
                  {
LABEL_55:
                    v40 = [NEPolicyRouteRule routeRuleWithAction:1 forType:3];
                    [v33 addObject:v40];
LABEL_56:
                  }

                  if ([v33 count])
                  {
                    v42 = v33;
                  }

                  else
                  {
                    v42 = 0;
                  }
                }

                else
                {
                  v42 = 0;
                }

                v43 = [v31 matchSigningIdentifier];
                [v8 setObject:v42 forKeyedSubscript:v43];

                v26 = v101;
              }

              v28 = v28 + 1;
            }

            while (v26 != v28);
            v49 = [obj countByEnumeratingWithState:&v110 objects:v119 count:16];
            v26 = v49;
          }

          while (v49);
        }
      }

      v108 = 0u;
      v109 = 0u;
      v106 = 0u;
      v107 = 0u;
      v50 = *(v11 + 32);
      if (v50)
      {
        v50 = objc_getProperty(v50, v12, 368, 1);
      }

      v51 = [v50 pathRules];
      v52 = [v51 countByEnumeratingWithState:&v106 objects:v118 count:16];
      if (v52)
      {
        v53 = v52;
        v54 = *v107;
        while (2)
        {
          for (j = 0; j != v53; j = j + 1)
          {
            if (*v107 != v54)
            {
              objc_enumerationMutation(v51);
            }

            v56 = *(*(&v106 + 1) + 8 * j);
            v57 = [v56 matchSigningIdentifier];
            v58 = [v57 isEqualToString:@"PathRuleDefaultIdentifier"];

            if ((v58 & 1) == 0)
            {
              v59 = [v56 matchSigningIdentifier];
              [v59 UTF8String];
              [v56 isIdentifierExternal];
              v60 = ne_copy_cached_uuids_for_bundle_identifier();

              if (!v60)
              {
                v61 = ne_log_obj();
                if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
                {
                  v62 = *(v98 + 32);
                  v63 = [v56 matchSigningIdentifier];
                  LODWORD(buf[0]) = 138412546;
                  *(buf + 4) = v62;
                  WORD2(buf[1]) = 2112;
                  *(&buf[1] + 6) = v63;
                  _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "%@: No UUIDs in the cache for %@, populating the cache from the path rules", buf, 0x16u);
                }

                v64 = [*(v98 + 32) configuration];
                v65 = [v64 identifier];
                [v65 getUUIDBytes:v121];

                v66 = [*(v98 + 32) uid];
                [v66 intValue];
                NEHelperCachePopulateUUIDsForConfiguration();

                goto LABEL_89;
              }
            }
          }

          v53 = [v51 countByEnumeratingWithState:&v106 objects:v118 count:16];
          if (v53)
          {
            continue;
          }

          break;
        }
      }

LABEL_89:

      v105 = 0;
      v68 = [*(v98 + 32) policySession];
      v69 = *(v98 + 32);
      if (v69)
      {
        v69 = objc_getProperty(v69, v67, 368, 1);
      }

      v71 = [v69 pathRules];
      v72 = *(v98 + 32);
      if (v72)
      {
        v72 = objc_getProperty(v72, v70, 496, 1);
      }

      obja = v68;
      v74 = v72;
      v75 = *(v98 + 32);
      if (v75)
      {
        v75 = objc_getProperty(v75, v73, 408, 1);
        v76 = *(v98 + 32);
      }

      else
      {
        v76 = 0;
      }

      v77 = v75;
      v79 = sub_1000A902C(v76, v78);
      v80 = sub_1000A91F8(*(v98 + 32), 0);
      v82 = sub_1000A9404(*(v98 + 32), v81);
      v83 = [*(v98 + 32) networkAgent];
      v84 = [v83 agentUUID];
      v102 = NEGetConsoleUserUID();
      v85 = v71;
      v86 = v74;
      v87 = v77;
      v88 = v97;
      v89 = v79;
      v90 = v80;
      v91 = v84;
      v92 = obja;
      if (obja && isa_nsarray() && isa_nsdictionary() && *(obja + 2) == 5)
      {
        buf[0] = _NSConcreteStackBlock;
        buf[1] = 3221225472;
        buf[2] = sub_1000446AC;
        buf[3] = &unk_1000EA030;
        buf[4] = obja;
        v123 = v85;
        v124 = v88;
        v131 = v102;
        v125 = v86;
        v126 = v91;
        v127 = v87;
        v130 = &v105;
        v128 = v89;
        v132 = (v82 & 0x10) != 0;
        v92 = obja;
        v129 = v90;
        sub_100031500(NESMPolicyMasterSession, buf);
      }

      v2 = v98;
      if ((v105 & 1) == 0)
      {
        v94 = *(v98 + 32);
        if (v94)
        {
          sub_1000A94A8(*(v98 + 32), v93);
          *(v94 + 364) = 0;
        }
      }
    }

    else
    {
      v22 = [*(v5 + 32) policySession];
      sub_100030CC4(v22);

      v2 = v5;
    }
  }

  sub_1000A958C(*(v2 + 32), a2);
  v95 = *(*(v2 + 40) + 8);
  v96 = *(v95 + 40);
  *(v95 + 40) = 0;
}

_UNKNOWN **sub_1000A902C(_BYTE *a1, const char *a2)
{
  if (!a1)
  {
    goto LABEL_6;
  }

  v3 = [objc_getProperty(a1 a2];
  if (!objc_getProperty(a1, v4, 432, 1))
  {
    goto LABEL_6;
  }

  v6 = 0;
  if ((a1[355] & 1) != 0 && v3 != 1)
  {
    if ((sub_1000A9404(a1, v5) & 2) == 0)
    {
LABEL_6:
      v6 = 0;
      goto LABEL_7;
    }

    if ((sub_1000A9404(a1, v7) & 8) != 0)
    {
      v6 = &off_1000EE2B8;
    }

    else
    {
      v10 = objc_getProperty(a1, v9, 472, 1);
      if ([v10 count])
      {
        v11 = sub_1000A91F8(a1, 1);
        v13 = [NSMutableSet setWithArray:objc_getProperty(a1, v12, 456, 1)];
        if ((sub_1000A9404(a1, v14) & 4) != 0 && [objc_getProperty(a1 v15])
        {
          [v13 addObjectsFromArray:{objc_getProperty(a1, v16, 464, 1)}];
        }

        if (v11)
        {
          v17 = [NSSet setWithArray:v11];
          [v13 minusSet:v17];
        }

        [v13 intersectSet:v10];
        v6 = [v13 allObjects];
      }

      else
      {
        v6 = 0;
      }
    }
  }

LABEL_7:

  return v6;
}

id sub_1000A91F8(_BYTE *a1, const char *a2)
{
  if (!a1)
  {
    goto LABEL_21;
  }

  v2 = a2;
  v4 = [objc_getProperty(a1 a2];
  if ((v2 & 1) == 0)
  {
    v15 = v4;
    if ((sub_1000A9404(a1, v5) & 2) != 0 && (sub_1000A9404(a1, v16) & 8) == 0)
    {
      v18 = objc_getProperty(a1, v17, 432, 1);
      if (v18)
      {
        v19 = a1[355];

        v14 = 0;
        if ((v19 & 1) == 0 || v15 == 1)
        {
          goto LABEL_24;
        }

        goto LABEL_3;
      }
    }

LABEL_21:
    v14 = 0;
    goto LABEL_24;
  }

LABEL_3:
  v6 = +[NSMutableArray array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = +[NEPathController copyAggregatePathRules];
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        if (([v12 denyCellularFallback] & 1) != 0 || objc_msgSend(v12, "cellularBehavior") == 1)
        {
          v13 = [v12 matchSigningIdentifier];
          [v6 addObject:v13];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  if ([v6 count])
  {
    v14 = v6;
  }

  else
  {
    v14 = 0;
  }

LABEL_24:

  return v14;
}

uint64_t sub_1000A9404(uint64_t result, const char *a2)
{
  if (result)
  {
    v2 = result;
    if ([objc_getProperty(result a2])
    {
      Property = objc_getProperty(v2, v3, 368, 1);

      return [Property cellularFallbackFlags];
    }

    else
    {
      v4 = [v2 configuration];
      v5 = [v4 grade];

      if (v5 == 2)
      {
        result = ne_session_fallback_default();
        if ((result & 1) == 0)
        {
          return 6;
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_1000A94A8(void *a1, const char *a2)
{
  if (objc_getProperty(a1, a2, 504, 1))
  {
    v3 = ne_log_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = a1;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@: Cancelling policy retry timer", &v7, 0xCu);
    }

    Property = objc_getProperty(a1, v4, 504, 1);
    dispatch_source_cancel(Property);
    objc_setProperty_atomic(a1, v6, 0, 504);
  }
}

void sub_1000A958C(uint64_t a1, const char *a2)
{
  if (a1)
  {
    if ([objc_getProperty(a1 a2])
    {
      v4 = sub_1000A902C(a1, v3);
      if ([v4 count])
      {
        v5 = v4;
        v6 = objc_alloc_init(NSMutableArray);
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v4 = v5;
        v7 = [v4 countByEnumeratingWithState:&v32 objects:v37 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = 0;
          v10 = *v33;
          do
          {
            for (i = 0; i != v8; i = i + 1)
            {
              v12 = v9;
              if (*v33 != v10)
              {
                objc_enumerationMutation(v4);
              }

              [*(*(&v32 + 1) + 8 * i) UTF8String];
              v9 = NEHelperCacheCopyAppUUIDMapping();

              if (v9 && xpc_get_type(v9) == &_xpc_type_array)
              {
                applier[0] = _NSConcreteStackBlock;
                applier[1] = 3221225472;
                applier[2] = sub_1000A9BC0;
                applier[3] = &unk_1000EB040;
                v31 = v6;
                xpc_array_apply(v9, applier);
              }
            }

            v8 = [v4 countByEnumeratingWithState:&v32 objects:v37 count:16];
          }

          while (v8);
        }

        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v14 = objc_getProperty(a1, v13, 480, 1);
        v15 = [v14 countByEnumeratingWithState:&v26 objects:v36 count:16];
        if (v15)
        {
          v17 = v15;
          v18 = *v27;
LABEL_17:
          v19 = 0;
          while (1)
          {
            if (*v27 != v18)
            {
              objc_enumerationMutation(v14);
            }

            v20 = [objc_getProperty(a1 v16];
            v21 = [v6 containsObject:v20];

            if (v21)
            {
              break;
            }

            if (v17 == ++v19)
            {
              v17 = [v14 countByEnumeratingWithState:&v26 objects:v36 count:16];
              if (v17)
              {
                goto LABEL_17;
              }

              goto LABEL_23;
            }
          }

          if (*(a1 + 357))
          {
            return;
          }

          v22 = 1;
          v23 = 500000000;
LABEL_29:
          *(a1 + 357) = v22;
          if (*(a1 + 360) == -1)
          {
            sub_1000A991C(a1);
          }

          else
          {
            v24 = objc_getProperty(a1, v3, 488, 1);
            v25 = dispatch_time(0, v23);
            dispatch_source_set_timer(v24, v25, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
          }

          return;
        }

LABEL_23:
      }
    }

    if ((*(a1 + 357) & 1) == 0)
    {
      return;
    }

    v22 = 0;
    v23 = 5000000000;
    goto LABEL_29;
  }
}

void sub_1000A991C(uint64_t a1)
{
  if (a1)
  {
    v2 = [a1 server];
    v4 = v2;
    if (v2)
    {
      v5 = *(a1 + 357) & 1;
      Property = objc_getProperty(v2, v3, 88, 1);
      *block = _NSConcreteStackBlock;
      *&block[8] = 3221225472;
      *&block[16] = sub_10005B82C;
      v15 = &unk_1000EB298;
      v16 = v4;
      v17 = v5;
      dispatch_async(Property, block);
    }

    if (*(a1 + 360) == -1 && notify_register_check("com.apple.networkextension.fallback_in_use", (a1 + 360)))
    {
      v7 = ne_log_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *block = 136315138;
        *&block[4] = "com.apple.networkextension.fallback_in_use";
        _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "notify_register_check for %s failed", block, 0xCu);
      }

      *(a1 + 360) = -1;
    }

    v8 = *(a1 + 360);
    if (v8 != -1)
    {
      state64 = 0;
      v9 = *(a1 + 357);
      if (!notify_get_state(v8, &state64))
      {
        if (state64 == (v9 & 1) || notify_set_state(*(a1 + 360), v9 & 1))
        {
          v10 = ne_log_obj();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
          {
            *block = 134218240;
            *&block[4] = state64;
            *&block[12] = 2048;
            *&block[14] = v9 & 1;
            _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Won't post notification (old state = %llu, new state = %llu)", block, 0x16u);
          }
        }

        else
        {
          v11 = ne_log_obj();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            v12 = " not";
            if (v9)
            {
              v12 = "";
            }

            *block = 136315138;
            *&block[4] = v12;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Posting notification that fallback is%s in use", block, 0xCu);
          }

          notify_post("com.apple.networkextension.fallback_in_use");
        }
      }
    }
  }
}

uint64_t sub_1000A9BC0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (v4 && xpc_get_type(v4) == &_xpc_type_uuid)
  {
    v6 = *(a1 + 32);
    v7 = [[NSUUID alloc] initWithUUIDBytes:xpc_uuid_get_bytes(v5)];
    [v6 addObject:v7];
  }

  return 1;
}

id sub_1000AB154(uint64_t a1)
{
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138412546;
    v7 = v3;
    v8 = 2080;
    v9 = ne_session_status_to_string();
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Session %@ status changing to %s after update", &v6, 0x16u);
  }

  return [*(a1 + 32) setStatus:*(a1 + 40)];
}

void sub_1000AB2D8(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = objc_getProperty(v3, a2, 448, 1);
    if (v4 && !*(a1 + 40))
    {
      goto LABEL_23;
    }

    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = objc_getProperty(v5, a2, 448, 1);
      if (v6)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  if (*(a1 + 40))
  {
    goto LABEL_23;
  }

  v6 = 0;
LABEL_6:
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 448, 1);
  }

  v8 = [Property count];
  v9 = [*(a1 + 40) count];

  if (v8 != v9)
  {
    goto LABEL_24;
  }

  v11 = *(a1 + 40);
  if (!v11)
  {
    return;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v4 = v11;
  v12 = [v4 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (!v12)
  {
LABEL_20:

    return;
  }

  v13 = v12;
  v14 = *v30;
LABEL_12:
  v15 = 0;
  while (1)
  {
    if (*v30 != v14)
    {
      objc_enumerationMutation(v4);
    }

    v16 = *(*(&v29 + 1) + 8 * v15);
    v18 = [*(a1 + 40) objectForKeyedSubscript:{v16, v29}];
    v19 = *(a1 + 32);
    if (v19)
    {
      v19 = objc_getProperty(v19, v17, 448, 1);
    }

    v20 = [v19 objectForKeyedSubscript:v16];
    v21 = [v18 unsignedIntegerValue];
    v22 = [v20 unsignedIntegerValue];

    if (v21 != v22)
    {
      break;
    }

    if (v13 == ++v15)
    {
      v13 = [v4 countByEnumeratingWithState:&v29 objects:v35 count:16];
      if (v13)
      {
        goto LABEL_12;
      }

      goto LABEL_20;
    }
  }

LABEL_23:

LABEL_24:
  if (*(a1 + 40))
  {
    v24 = [[NSDictionary alloc] initWithDictionary:*(a1 + 40) copyItems:1];
    v25 = *(a1 + 32);
    if (v25)
    {
      objc_setProperty_atomic(v25, v23, v24, 448);
    }
  }

  else
  {
    v26 = *(a1 + 32);
    if (v26)
    {
      objc_setProperty_atomic(v26, v10, 0, 448);
    }
  }

  v27 = ne_log_obj();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = *(a1 + 32);
    *buf = 138412290;
    v34 = v28;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%@: Updating agent on fallback interface change", buf, 0xCu);
  }

  sub_1000A83A0(*(a1 + 32), 0, 1);
}

void sub_1000AB668(void *a1, const char *a2)
{
  if (a1)
  {
    if (objc_getProperty(a1, a2, 392, 1))
    {
      [objc_getProperty(a1 v3];
      objc_setProperty_atomic(a1, v4, 0, 392);
    }

    if (objc_getProperty(a1, v3, 416, 1))
    {
      v5 = ne_log_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        *v7 = 0;
        _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "End roaming monitor transaction", v7, 2u);
      }

      objc_setProperty_atomic(a1, v6, 0, 416);
    }
  }
}

void sub_1000AB754(uint64_t a1, const char *a2)
{
  objc_setProperty_atomic(a1, a2, 0, 456);
  objc_setProperty_atomic(a1, v3, 0, 464);
  objc_setProperty_atomic(a1, v4, 0, 472);
  objc_setProperty_atomic(a1, v5, 0, 480);
  sub_1000A958C(a1, v6);
  sub_1000A991C(a1);
  v8 = *(a1 + 360);
  if (v8 != -1)
  {
    notify_cancel(v8);
    *(a1 + 360) = -1;
  }

  Property = objc_getProperty(a1, v7, 488, 1);
  dispatch_source_cancel(Property);
  objc_setProperty_atomic(a1, v10, 0, 488);
  if (objc_getProperty(a1, v11, 512, 1))
  {
    [a1 didStopTrackingNOI:{objc_getProperty(a1, v12, 520, 1)}];
    [objc_getProperty(a1 v13];
    [objc_getProperty(a1 v14];
    objc_setProperty_atomic(a1, v15, 0, 512);
  }

  v16 = [a1 server];
  [v16 removeObserver:a1 forKeyPath:@"primaryCellularInterface"];

  v17 = [a1 server];
  [v17 removeObserver:a1 forKeyPath:@"primaryPhysicalInterface"];

  *(a1 + 358) = 0;
}

uint64_t sub_1000ABF54(id self, const char *a2)
{
  v2 = self;
  if (self)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = sub_1000A85DC;
    v22 = sub_1000A85EC;
    v23 = 0;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v3 = [objc_getProperty(self a2];
    v4 = [v3 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v4)
    {
      v5 = *v25;
      while (2)
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v25 != v5)
          {
            objc_enumerationMutation(v3);
          }

          if ([*(*(&v24 + 1) + 8 * i) denyMulticast])
          {

            default_evaluator = nw_path_create_default_evaluator();
            v9 = nw_path_evaluator_copy_path();

            nw_path_enumerate_resolver_configs();
            goto LABEL_12;
          }
        }

        v4 = [v3 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
    v10 = v19[5];
    v11 = objc_getProperty(v2, v7, 496, 1);
    v13 = v11;
    if (v10 == v11)
    {
    }

    else
    {
      v14 = v19[5];
      v15 = objc_getProperty(v2, v12, 496, 1);
      LOBYTE(v14) = [v14 isEqual:v15];

      if ((v14 & 1) == 0)
      {
        objc_setProperty_atomic(v2, v16, v19[5], 496);
        v2 = 1;
LABEL_17:
        _Block_object_dispose(&v18, 8);

        return v2;
      }
    }

    v2 = 0;
    goto LABEL_17;
  }

  return v2;
}

void sub_1000AC1B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000AC1E4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!nw_resolver_config_get_protocol())
  {
    v5 = *(a1 + 32);
    nw_resolver_config_enumerate_name_servers();
  }

  return 1;
}

uint64_t sub_1000AC27C(uint64_t a1, uint64_t a2)
{
  v3 = [NSString stringWithUTF8String:a2];
  v4 = [NWAddressEndpoint endpointWithHostname:v3 port:@"0"];
  v5 = [v4 copyCEndpoint];
  evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint();

  v7 = nw_path_evaluator_copy_path();
  is_direct = nw_path_is_direct();

  if (is_direct)
  {
    v9 = *(*(*(a1 + 32) + 8) + 40);
    if (!v9)
    {
      v10 = objc_alloc_init(NSMutableArray);
      v11 = *(*(a1 + 32) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;

      v9 = *(*(*(a1 + 32) + 8) + 40);
    }

    [v9 addObject:v3];
  }

  return 1;
}

Class sub_1000AC36C()
{
  if (qword_1000FD5D0 != -1)
  {
    dispatch_once(&qword_1000FD5D0, &stru_1000EB0B0);
  }

  result = objc_getClass("NWNetworkOfInterestManager");
  qword_1000FD5C0 = result;
  off_1000FD220 = sub_1000AC3D0;
  return result;
}

void sub_1000AC3DC(id a1)
{
  qword_1000FD5C8 = dlopen("/System/Library/PrivateFrameworks/Symptoms.framework/Frameworks/SymptomPresentationFeed.framework/SymptomPresentationFeed", 2);
  if (!qword_1000FD5C8)
  {
    NSLog(@"### Failed to Soft Link: /System/Library/PrivateFrameworks/Symptoms.framework/Frameworks/SymptomPresentationFeed.framework/SymptomPresentationFeed");
  }
}

unint64_t sub_1000AC420(void *a1, const char *a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = a2;
  if ([objc_getProperty(a1 a2])
  {
    v5 = 0;
  }

  else
  {
    if (v2)
    {
      v5 = 0;
    }

    else
    {
      v5 = (sub_1000A9404(a1, v4) >> 1) & 1;
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [objc_getProperty(a1 v4];
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          if (![*(*(&v14 + 1) + 8 * i) cellularBehavior])
          {
            v5 = 1;
            goto LABEL_17;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v20 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_17:
  }

  v11 = ne_log_obj();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v13 = "No";
    if (v5)
    {
      v13 = "Yes";
    }

    *buf = 136315138;
    v19 = v13;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Path Controller needs roaming monitor: %s", buf, 0xCu);
  }

  return v5;
}

void sub_1000ACA30(uint64_t a1)
{
  v2 = [*(a1 + 32) configuration];
  v3 = [v2 pathController];
  if ([v3 hasNonDefaultRules])
  {
  }

  else
  {
    v4 = ne_session_fallback_advisory();

    if ((v4 & 1) == 0)
    {
      return;
    }
  }

  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@: Handling installed apps change, restarting", &v11, 0xCu);
  }

  v7 = xpc_dictionary_create(0, 0, 0);
  v8 = xpc_dictionary_create(0, 0, 0);
  v9 = v8;
  if (v8)
  {
    xpc_dictionary_set_BOOL(v8, "stop-current-session", 1);
  }

  else
  {
    v10 = ne_log_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v11) = 0;
      _os_log_fault_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, "xpc_dictionary_create failed", &v11, 2u);
    }
  }

  xpc_dictionary_set_value(v7, "SessionOptions", v9);
  [*(a1 + 32) startWithCommand:v7 isOnDemand:0];
}

void sub_1000ACC64(uint64_t a1, const char *a2)
{
  if (sub_1000ABF54(*(a1 + 32), a2))
  {
    v3 = *(a1 + 32);

    sub_1000A83A0(v3, 1, 0);
  }
}

void sub_1000ACD70(uint64_t a1)
{
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v8 = 138412546;
    v9 = v3;
    v10 = 2080;
    v11 = inputNotification2String();
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@: Handling %s notification, starting", &v8, 0x16u);
  }

  v5 = [*(a1 + 32) configuration];
  v6 = [v5 pathController];
  if ([v6 hasNonDefaultRules])
  {
  }

  else
  {
    v7 = ne_session_fallback_advisory();

    if ((v7 & 1) == 0)
    {
      return;
    }
  }

  [*(a1 + 32) startWithCommand:0 isOnDemand:0];
}

uint64_t sub_1000ACF88(id self, const char *a2)
{
  v2 = self;
  if (self)
  {
    v2 = ([objc_getProperty(self a2] & 1) == 0 && (sub_1000A9404(v2, v3) & 2) != 0;
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v6 = "No";
      if (v2)
      {
        v6 = "Yes";
      }

      v7 = 136315138;
      v8 = v6;
      _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Path Controller needs fallback notifications: %s", &v7, 0xCu);
    }
  }

  return v2;
}

void sub_1000AD084(void *a1, const char *a2)
{
  if (!a1)
  {
    return;
  }

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v3 = [objc_getProperty(a1 a2];
  v4 = [v3 countByEnumeratingWithState:&v74 objects:v83 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v75;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v75 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v74 + 1) + 8 * i);
        if (([v9 multicastPreferenceSet] & 1) == 0)
        {
          v10 = [v9 temporaryAllowMulticastNetworkName];

          if (v10)
          {
            if (!v6)
            {
              v6 = objc_alloc_init(NSMutableArray);
            }

            v11 = [v9 temporaryAllowMulticastNetworkName];
            v12 = [v6 containsObject:v11];

            if ((v12 & 1) == 0)
            {
              v13 = [v9 temporaryAllowMulticastNetworkName];
              [v6 addObject:v13];
            }
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v74 objects:v83 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v15 = objc_getProperty(a1, v14, 400, 1);
  v16 = [v15 countByEnumeratingWithState:&v70 objects:v82 count:16];
  if (!v16)
  {
    v19 = 0;
    goto LABEL_34;
  }

  v18 = v16;
  v19 = 0;
  v20 = *v71;
  do
  {
    for (j = 0; j != v18; j = j + 1)
    {
      if (*v71 != v20)
      {
        objc_enumerationMutation(v15);
      }

      v22 = *(*(&v70 + 1) + 8 * j);
      if (v22)
      {
        if ([v6 containsObject:{objc_getProperty(*(*(&v70 + 1) + 8 * j), v17, 24, 1)}])
        {
          Property = objc_getProperty(v22, v23, 24, 1);
LABEL_25:
          [v6 removeObject:Property];
          continue;
        }
      }

      else
      {
        v25 = [v6 containsObject:0];
        Property = 0;
        if (v25)
        {
          goto LABEL_25;
        }
      }

      sub_1000A7D7C(v22, v23);
      if (!v19)
      {
        v19 = objc_alloc_init(NSMutableArray);
      }

      [v19 addObject:v22];
    }

    v18 = [v15 countByEnumeratingWithState:&v70 objects:v82 count:16];
  }

  while (v18);
LABEL_34:

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  obj = v19;
  v26 = [obj countByEnumeratingWithState:&v66 objects:v81 count:16];
  v28 = &selRef_temporaryAllowMulticastNetworkName;
  if (v26)
  {
    v29 = v26;
    v30 = *v67;
    do
    {
      for (k = 0; k != v29; k = k + 1)
      {
        if (*v67 != v30)
        {
          objc_enumerationMutation(obj);
        }

        [objc_getProperty(a1 v27];
      }

      v29 = [obj countByEnumeratingWithState:&v66 objects:v81 count:16];
    }

    while (v29);
  }

  if ([v6 count])
  {
    if (!objc_getProperty(a1, v32, 400, 1))
    {
      v33 = objc_alloc_init(NSMutableArray);
      objc_setProperty_atomic(a1, v34, v33, 400);
    }

    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v58 = v6;
    v61 = [v58 countByEnumeratingWithState:&v62 objects:v80 count:16];
    if (v61)
    {
      v60 = *v63;
      do
      {
        v35 = 0;
        do
        {
          if (*v63 != v60)
          {
            objc_enumerationMutation(v58);
          }

          v36 = *(*(&v62 + 1) + 8 * v35);
          v37 = [NESMPathControllerSSIDWatcher alloc];
          v38 = v36;
          v39 = a1;
          if (v37 && v38)
          {
            v79.receiver = v37;
            v79.super_class = NESMPathControllerSSIDWatcher;
            v40 = objc_msgSendSuper2(&v79, "init");
            if (v40)
            {
              v37 = v40;
              objc_storeStrong(&v40->_ssid, v36);
              objc_storeWeak(&v37->_parentSession, v39);
              v41 = objc_alloc_init(NWNetworkDescription);
              *v84 = v38;
              v42 = [NSArray arrayWithObjects:v84 count:1];
              v43 = [NSSet setWithArray:v42];
              [v41 setSsidOptions:v43];

              v44 = objc_alloc_init(NWParameters);
              [v44 setRequiredInterfaceType:1];
              v45 = [NWMonitor monitorWithNetworkDescription:v41 endpoint:0 parameters:v44];
              objc_setProperty_atomic(v37, v46, v45, 16);

              if (objc_getProperty(v37, v47, 16, 1))
              {
                if (!objc_getProperty(v37, v48, 32, 1))
                {
                  v49 = ne_log_obj();
                  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 0;
                    _os_log_debug_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEBUG, "Begin SSID monitor transaction", buf, 2u);
                  }

                  v50 = [[NSString alloc] initWithFormat:@"com.apple.nesessionmanager.SSIDMonitor"];
                  [v50 UTF8String];
                  v51 = os_transaction_create();
                  objc_setProperty_atomic(v37, v52, v51, 32);

                  v28 = &selRef_temporaryAllowMulticastNetworkName;
                }

                v37->_hasBeenAssociated = 0;
                sub_1000A80D8(v39, v38, 1);
                [objc_getProperty(v37 v53];
                v54 = v37;
              }

              else
              {
                v55 = ne_log_obj();
                if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_error_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "SSID monitor creation failed", buf, 2u);
                }

                v54 = 0;
              }
            }

            else
            {
              v41 = ne_log_obj();
              if (os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
              {
                *v84 = 0;
                _os_log_fault_impl(&_mh_execute_header, v41, OS_LOG_TYPE_FAULT, "[super init] failed", v84, 2u);
              }

              v37 = 0;
              v54 = 0;
            }
          }

          else
          {
            v54 = 0;
          }

          if (v54)
          {
            [objc_getProperty(v39 v56];
          }

          v35 = v35 + 1;
        }

        while (v61 != v35);
        v57 = [v58 countByEnumeratingWithState:&v62 objects:v80 count:16];
        v61 = v57;
      }

      while (v57);
    }
  }
}

id sub_1000ADAC4(uint64_t a1)
{
  if (*(a1 + 355) == 1)
  {
    v2 = objc_alloc_init(NSMutableArray);
    v3 = v2;
    if (*(a1 + 440))
    {
      v4 = [NSNumber alloc];
      v6 = [v4 initWithUnsignedLong:{objc_msgSend(objc_getProperty(a1, v5, 440, 1), "interfaceIndex")}];
      [v3 addObject:v6];
    }

    else
    {
      [v2 addObject:&off_1000EE498];
    }

    if (objc_getProperty(a1, v7, 448, 1))
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v9 = objc_getProperty(a1, v8, 448, 1);
      v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v16;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v16 != v12)
            {
              objc_enumerationMutation(v9);
            }

            [v3 addObject:{*(*(&v15 + 1) + 8 * i), v15}];
          }

          v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v11);
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_1000ADDF4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v9 = [v6 state];
      if (v9 > 3)
      {
        v10 = @"Unknown";
      }

      else
      {
        v10 = off_1000EB120[v9];
      }

      *buf = 138412802;
      v15 = a1;
      v16 = 2112;
      v17 = v10;
      v18 = 2048;
      v19 = [v5 slotID];
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%@ cellular data connection became %@ for slot id %ld", buf, 0x20u);
    }

    v8 = *(a1 + 24);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000ADF90;
    v11[3] = &unk_1000EB100;
    v11[4] = a1;
    v12 = v6;
    v13 = v5;
    [v8 copyCellInfo:v13 completion:v11];
  }
}

void sub_1000ADF90(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = ne_log_obj();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v17 = *(a1 + 32);
    v18 = [v5 legacyInfo];
    *buf = 138412546;
    v101 = v17;
    v102 = 2112;
    v103 = v18;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%@ received cell info %@", buf, 0x16u);
  }

  if (v6)
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v31 = *(a1 + 32);
      *buf = 138412546;
      v101 = v31;
      v102 = 2112;
      v103 = v6;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%@ failed to copy cellular info, error: %@", buf, 0x16u);
    }

    goto LABEL_100;
  }

  if ([*(a1 + 40) state] == 2)
  {
    v9 = *(a1 + 32);
    if (v9)
    {
      if (v5 && !*(v9 + 48))
      {
        v87 = 0u;
        v88 = 0u;
        v89 = 0u;
        v90 = 0u;
        v10 = [v5 legacyInfo];
        v11 = [v10 countByEnumeratingWithState:&v87 objects:buf count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v88;
LABEL_13:
          v14 = 0;
          while (1)
          {
            if (*v88 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v87 + 1) + 8 * v14);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              break;
            }

            if (v12 == ++v14)
            {
              v12 = [v10 countByEnumeratingWithState:&v87 objects:buf count:16];
              if (v12)
              {
                goto LABEL_13;
              }

              goto LABEL_19;
            }
          }

          v16 = [v15 objectForKeyedSubscript:kCTCellMonitorMCC];
          if (!v16 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            v19 = 0;
LABEL_32:

            goto LABEL_33;
          }

          v19 = [v15 objectForKeyedSubscript:kCTCellMonitorMNC];
          if (!v19)
          {
            goto LABEL_32;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_32;
          }

          v20 = [v15 objectForKeyedSubscript:kCTCellMonitorBandInfo];
          if (v20)
          {
            v21 = v20;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              obj = v21;
              v75 = [v21 isEqualToNumber:&off_1000EE4B0];
              if (v75)
              {
                v22 = [v15 objectForKeyedSubscript:kCTCellMonitorTAC];
                if (!v22 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                {
                  v35 = v22;
                  v36 = ne_log_obj();
                  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
                  {
                    *v92 = 138412290;
                    v93 = v9;
                    _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "%@ failed to get TAC for CBRS network", v92, 0xCu);
                  }

LABEL_72:
                  v20 = obj;
                  goto LABEL_73;
                }

                v72 = v22;
                v23 = ne_log_obj();
                if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
                {
                  *v92 = 138413058;
                  v93 = v9;
                  v94 = 2112;
                  v95 = v16;
                  v96 = 2112;
                  v97 = v19;
                  v98 = 2112;
                  v99 = v72;
                  _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "%@ found CBRS(Band 48) network (MCC:%@ MNC:%@ TAC:%@)", v92, 0x2Au);
                }
              }

              else
              {
                v23 = ne_log_obj();
                if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
                {
                  *v92 = 138412290;
                  v93 = v9;
                  _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "%@ this is not a CBRS network", v92, 0xCu);
                }

                v72 = 0;
              }

              if (objc_opt_class() && (+[MCProfileConnection sharedConnection](MCProfileConnection, "sharedConnection"), v32 = objc_claimAutoreleasedReturnValue(), v33 = [v32 isSupervised], v32, v33))
              {
                v34 = ne_log_obj();
                if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
                {
                  *v92 = 138412290;
                  v93 = v9;
                  _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "%@ this is a supervised device", v92, 0xCu);
                }

                v74 = 1;
              }

              else
              {
                v74 = 0;
              }

              v79 = [v16 integerValue];
              v78 = [v19 integerValue];
              v10 = v72;
              if (v75)
              {
                v73 = [v72 integerValue];
              }

              else
              {
                v73 = -1;
              }

              v86 = 0u;
              v84 = 0u;
              v85 = 0u;
              v83 = 0u;
              obj = *(v9 + 32);
              v80 = [obj countByEnumeratingWithState:&v83 objects:v91 count:16];
              if (v80)
              {
                v71 = v16;
                v77 = *v84;
                while (2)
                {
                  for (i = 0; i != v80; i = i + 1)
                  {
                    if (*v84 != v77)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v38 = *(*(&v83 + 1) + 8 * i);
                    v39 = [v38 mobileCountryCode];
                    v40 = [v39 integerValue];

                    v41 = [v38 mobileNetworkCode];
                    v42 = [v41 integerValue];

                    if (v79 == v40 && v78 == v42)
                    {
                      if (v74)
                      {
                        goto LABEL_74;
                      }

                      if (v75)
                      {
                        v44 = [v38 trackingAreaCode];
                        if (v44)
                        {
                          v45 = v44;
                          v46 = [v38 trackingAreaCode];
                          v47 = [v46 integerValue];

                          if (v73 == v47)
                          {
LABEL_74:
                            v48 = ne_log_obj();
                            if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
                            {
                              *v92 = 138412290;
                              v93 = v9;
                              _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_INFO, "%@ found matching LTE network", v92, 0xCu);
                            }

                            objc_storeStrong((v9 + 56), v38);
                            v49 = ne_log_obj();
                            if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
                            {
                              v56 = *(a1 + 32);
                              v57 = [*(a1 + 40) interfaceName];
                              v58 = [*(a1 + 48) slotID];
                              *buf = 138412802;
                              v101 = v56;
                              v102 = 2112;
                              v103 = v57;
                              v104 = 2048;
                              v105 = v58;
                              _os_log_debug_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEBUG, "%@ found configured private LTE network match (interface:[%@] Slot ID:[%ld])", buf, 0x20u);
                            }

                            v51 = [*(a1 + 40) interfaceName];
                            v52 = *(a1 + 32);
                            if (v52)
                            {
                              objc_setProperty_atomic(v52, v50, v51, 16);
                            }

                            v53 = [*(a1 + 48) slotID];
                            v54 = *(a1 + 32);
                            if (v54)
                            {
                              *(v54 + 48) = v53;
                            }

                            v55 = ne_log_obj();
                            if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
                            {
                              v59 = *(a1 + 32);
                              if (v59)
                              {
                                v60 = *(v59 + 48);
                              }

                              else
                              {
                                v60 = 0;
                              }

                              *buf = 138412546;
                              v101 = v59;
                              v102 = 2048;
                              v103 = v60;
                              _os_log_debug_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEBUG, "%@ Slot ID [%ld] is active", buf, 0x16u);
                            }

                            v25 = 1;
                            goto LABEL_34;
                          }
                        }
                      }
                    }
                  }

                  v80 = [obj countByEnumeratingWithState:&v83 objects:v91 count:16];
                  if (v80)
                  {
                    continue;
                  }

                  break;
                }

                v16 = v71;
                v10 = v72;
              }

              goto LABEL_72;
            }

            v20 = v21;
          }

LABEL_73:

          goto LABEL_32;
        }

LABEL_19:
        v16 = v10;
LABEL_33:

        v25 = 2;
LABEL_34:
        v26 = *(a1 + 32);
        if (v26 && objc_getProperty(v26, v24, 8, 1))
        {
          Property = *(a1 + 32);
          if (Property)
          {
            Property = objc_getProperty(Property, v27, 40, 1);
            v29 = *(a1 + 32);
          }

          else
          {
            v29 = 0;
          }

          v82[0] = _NSConcreteStackBlock;
          v82[1] = 3221225472;
          v82[2] = sub_1000AE9CC;
          v82[3] = &unk_1000EB0D8;
          v82[4] = v29;
          v82[5] = v25;
          v30 = v82;
LABEL_99:
          dispatch_async(Property, v30);
          goto LABEL_100;
        }

        goto LABEL_100;
      }
    }

    else if (v5)
    {
      goto LABEL_100;
    }
  }

  if (![*(a1 + 40) state])
  {
    v61 = *(a1 + 32);
    v62 = v61 ? *(v61 + 48) : 0;
    if (v62 == [*(a1 + 48) slotID])
    {
      v63 = ne_log_obj();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
      {
        v69 = *(a1 + 32);
        if (v69)
        {
          v70 = *(v69 + 48);
        }

        else
        {
          v70 = 0;
        }

        *buf = 138412546;
        v101 = v69;
        v102 = 2048;
        v103 = v70;
        _os_log_debug_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEBUG, "%@ Slot ID [%ld] is inactive", buf, 0x16u);
      }

      v65 = *(a1 + 32);
      if (v65)
      {
        *(v65 + 48) = 0;
        v66 = *(a1 + 32);
        if (v66)
        {
          if (objc_getProperty(v66, v64, 8, 1))
          {
            Property = *(a1 + 32);
            if (Property)
            {
              Property = objc_getProperty(Property, v67, 40, 1);
              v68 = *(a1 + 32);
            }

            else
            {
              v68 = 0;
            }

            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_1000AEA30;
            block[3] = &unk_1000EB1C0;
            block[4] = v68;
            v30 = block;
            goto LABEL_99;
          }
        }
      }
    }
  }

LABEL_100:
}

id sub_1000AE9CC(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 8, 1);
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    if (v5)
    {
      v6 = *(v5 + 56);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
    v4 = *(a1 + 40);
  }

  return [Property didReceiveStatusChangeWithInterface:v4 matchedPrivateLTENetwork:v6];
}

id sub_1000AEA30(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 8, 1);
    v2 = vars8;
  }

  return [Property didReceiveStatusChangeWithInterface:2 matchedPrivateLTENetwork:0];
}

void sub_1000AEA70(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 24);
    v12 = 0;
    v3 = v2;
    v4 = [v3 getCurrentDataSubscriptionContextSync:&v12];
    v5 = v12;

    if (v4)
    {
      v6 = v5 == 0;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      v8 = *(a1 + 24);
      v11 = 0;
      v9 = v8;
      v7 = [v9 getConnectionState:v4 connectionType:0 error:&v11];
      v5 = v11;

      if (!v7 || v5)
      {
        if (v5)
        {
          v10 = ne_log_obj();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v14 = a1;
            v15 = 2112;
            v16 = v5;
            _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%@ failed to get current data connection status, error: %@", buf, 0x16u);
          }
        }
      }

      else
      {
        sub_1000ADDF4(a1, v4, v7);
      }
    }

    else
    {
      if (!v5)
      {
LABEL_17:

        return;
      }

      v7 = ne_log_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v14 = a1;
        v15 = 2112;
        v16 = v5;
        _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%@ failed to get current data subscription context, error: %@", buf, 0x16u);
      }
    }

    goto LABEL_17;
  }
}

void sub_1000AF670(uint64_t a1)
{
  if (*(a1 + 52) != 1 || sub_10008AA94(*(a1 + 32)))
  {
    v2 = [*(a1 + 32) queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000AF734;
    block[3] = &unk_1000EB360;
    v3 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v5 = v3;
    v6 = *(a1 + 48);
    dispatch_sync(v2, block);
  }
}

void sub_1000AF734(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [NESMSessionClient alloc];
  if (v4 && (v5 = *(a1 + 48), v14.receiver = v4, v14.super_class = NESMSessionClient, (v6 = objc_msgSendSuper2(&v14, "init")) != 0))
  {
    v12 = v6;
    if (proc_name(v5, buffer, 0x100u) < 1)
    {
      [NSString stringWithFormat:@"<unknown-name>[%d]", v5, v11];
    }

    else
    {
      [NSString stringWithFormat:@"%s[%d]", buffer, v5];
    }
    v8 = ;
    v9 = v12[1];
    v12[1] = v8;

    v10 = v12[2];
    v12[2] = 0;

    v7 = v12;
  }

  else
  {
    v7 = 0;
  }

  v13 = v7;
  [v2 handleCommand:v3 fromClient:v7];
}

void sub_1000AFA40(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = ne_log_obj();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2 <= 32)
  {
    if (v2 == 31)
    {
      if (v4)
      {
        v14 = *(a1 + 32);
        *buf = 138412290;
        v21 = v14;
        v6 = "%@: configuration is now disabled, stopping";
        goto LABEL_16;
      }

      goto LABEL_18;
    }

    if (v2 == 32)
    {
      if (v4)
      {
        v5 = *(a1 + 32);
        *buf = 138412290;
        v21 = v5;
        v6 = "%@: configuration has been removed, stopping";
LABEL_16:
        v12 = v3;
        v13 = 12;
        goto LABEL_17;
      }

      goto LABEL_18;
    }

LABEL_10:
    if (v4)
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v10 = ne_session_stop_reason_to_string();
      v11 = *(a1 + 40);
      *buf = 138412802;
      v21 = v8;
      v22 = 2080;
      v23 = v10;
      v24 = 2048;
      v25 = v11;
      v6 = "%@: %s (%lld), stopping";
      v12 = v3;
      v13 = 32;
LABEL_17:
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v6, buf, v13);
      goto LABEL_18;
    }

    goto LABEL_18;
  }

  if (v2 == 33)
  {
    if (v4)
    {
      v15 = *(a1 + 32);
      *buf = 138412290;
      v21 = v15;
      v6 = "%@ has been superceded, stopping";
      goto LABEL_16;
    }

    goto LABEL_18;
  }

  if (v2 != 37)
  {
    goto LABEL_10;
  }

  if (v4)
  {
    v7 = *(a1 + 32);
    *buf = 138412290;
    v21 = v7;
    v6 = "%@: configuration has changed, stopping";
    goto LABEL_16;
  }

LABEL_18:

  if ([*(a1 + 32) status] == 1 || !objc_msgSend(*(a1 + 32), "status"))
  {
    v16 = sub_10005750C();
    v17 = *(a1 + 32);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000AFCA0;
    v18[3] = &unk_1000EB338;
    v18[4] = v17;
    v19 = *(a1 + 40);
    sub_10005B410(v16, v17, v18);
  }

  else
  {
    [*(a1 + 32) handleStopMessageWithReason:*(a1 + 40)];
  }
}

uint64_t sub_1000AFE90(uint64_t a1)
{
  [*(a1 + 32) install];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t sub_1000B029C(uint64_t a1)
{
  if (*(a1 + 32))
  {
    if ([*(a1 + 40) type] == 1)
    {
      v2 = [*(a1 + 32) VPN];

      if (v2)
      {
        v3 = [*(a1 + 40) configuration];
        v4 = [v3 VPN];
        v5 = [v4 protocol];
        v6 = [v5 type];
        v7 = [*(a1 + 32) VPN];
        v8 = [v7 protocol];
        v9 = [v8 type];

        if (v6 == v9)
        {
          v10 = [*(a1 + 40) configuration];
          v11 = [v10 VPN];
          v12 = [v11 protocol];
          if ([v12 type] == 5)
          {
            v13 = [*(a1 + 40) configuration];
            v14 = [v13 VPN];
            v15 = [v14 protocol];
            v51 = [v15 enableFallback];
            v16 = [*(a1 + 32) VPN];
            v17 = [v16 protocol];
            v18 = [v17 enableFallback];

            if (v51 != v18)
            {
              v19 = 32;
              v20 = 1;
              v21 = 1;
              goto LABEL_37;
            }
          }

          else
          {
          }

LABEL_33:
          v32 = [*(a1 + 40) configuration];
          if ([v32 isEnabled])
          {
            v33 = [*(a1 + 32) isEnabled];

            if (!v33)
            {
              v20 = 0;
              v21 = 0;
              v19 = 31;
              goto LABEL_37;
            }
          }

          else
          {
          }

          [*(a1 + 40) handleUpdateConfiguration:*(a1 + 32)];
          goto LABEL_48;
        }
      }
    }

    else if ([*(a1 + 40) type] == 2)
    {
      v22 = [*(a1 + 32) appVPN];

      if (v22)
      {
        v23 = [*(a1 + 40) configuration];
        v24 = [v23 appVPN];
        v25 = [v24 protocol];
        v26 = [v25 type];
        v27 = [*(a1 + 32) appVPN];
        v28 = [v27 protocol];
        v29 = [v28 type];

        if (v26 == v29)
        {
          goto LABEL_33;
        }
      }
    }

    else
    {
      if ([*(a1 + 40) type] == 3)
      {
        v30 = [*(a1 + 32) alwaysOnVPN];
      }

      else if ([*(a1 + 40) type] == 4)
      {
        v30 = [*(a1 + 32) contentFilter];
      }

      else if ([*(a1 + 40) type] == 5)
      {
        v30 = [*(a1 + 32) pathController];
      }

      else if ([*(a1 + 40) type] == 6)
      {
        v30 = [*(a1 + 32) dnsProxy];
      }

      else if ([*(a1 + 40) type] == 7)
      {
        v30 = [*(a1 + 32) dnsSettings];
      }

      else if ([*(a1 + 40) type] == 8)
      {
        v30 = [*(a1 + 32) appPush];
      }

      else if ([*(a1 + 40) type] == 9)
      {
        v30 = [*(a1 + 32) relay];
      }

      else if ([*(a1 + 40) type] == 10)
      {
        v30 = [*(a1 + 32) urlFilter];
      }

      else
      {
        if ([*(a1 + 40) type] != 11 && objc_msgSend(*(a1 + 40), "type") != 12)
        {
          goto LABEL_33;
        }

        v30 = [*(a1 + 32) hotspot];
      }

      v31 = v30;

      if (v31)
      {
        goto LABEL_33;
      }
    }
  }

  v21 = 0;
  v19 = 32;
  v20 = 1;
LABEL_37:
  v34 = [*(a1 + 40) server];
  [v34 deregisterSession:*(a1 + 40)];

  [*(a1 + 40) stopIfNecessaryWithReason:v19];
  v35 = *(a1 + 40);
  if (!v20)
  {
    [v35 handleUpdateConfiguration:*(a1 + 32)];
    if (!v21)
    {
      goto LABEL_48;
    }

    goto LABEL_43;
  }

  v36 = [v35 server];
  v37 = [*(a1 + 40) type];
  v38 = [*(a1 + 40) configuration];
  v40 = [v38 identifier];
  if (v36)
  {
    Property = objc_getProperty(v36, v39, 88, 1);
    block = _NSConcreteStackBlock;
    v56 = 3221225472;
    v57 = sub_100059CEC;
    v58 = &unk_1000EB360;
    v59 = v36;
    v60 = v40;
    LODWORD(v61) = v37;
    dispatch_async(Property, &block);
  }

  [*(a1 + 40) handleUpdateConfiguration:0];
  sub_10008F9DC(*(a1 + 40));
  sub_10008FAD0(*(a1 + 40));
  sub_10008FA5C(*(a1 + 40));
  if (v21)
  {
LABEL_43:
    v42 = [*(a1 + 40) configuration];
    v43 = [v42 identifier];

    v44 = [*(a1 + 40) type];
    v45 = [*(a1 + 40) server];
    v52[0] = _NSConcreteStackBlock;
    v52[1] = 3221225472;
    v52[2] = sub_1000B090C;
    v52[3] = &unk_1000EB2C0;
    v53 = v43;
    v54 = v44;
    v46 = v43;
    v48 = v52;
    if (v45)
    {
      v49 = objc_getProperty(v45, v47, 88, 1);
      block = _NSConcreteStackBlock;
      v56 = 3221225472;
      v57 = sub_100059EC0;
      v58 = &unk_1000EAFC8;
      v59 = v45;
      v60 = v46;
      v62 = v44;
      v61 = v48;
      dispatch_async(v49, &block);
    }
  }

LABEL_48:
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1000B090C(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v3 = ne_log_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v6 = 138412546;
      v7 = v4;
      v8 = 1024;
      v9 = v5;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failed to add a pending session request or failed to load session for %@ (%d)", &v6, 0x12u);
    }
  }
}

id *sub_1000B1980(id *result)
{
  if (*(result + 40) == 1)
  {
    return [result[4] invalidate];
  }

  return result;
}

uint64_t sub_1000B1998(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = PLShouldLogRegisteredEvent();
  if (result)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    return _PLLogRegisteredEvent(145, v4, v5, 0);
  }

  return result;
}

void sub_1000B19F0(id a1)
{
  v1 = dispatch_queue_create("com.apple.networkextension.powerlog", 0);
  v2 = qword_1000FD5D8;
  qword_1000FD5D8 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000B1A30(id a1)
{
  info = 0;
  if (!mach_timebase_info(&info))
  {
    LODWORD(v1) = info.numer;
    LODWORD(v2) = info.denom;
    *&qword_1000FD5E8 = v1 / v2 / 1000.0 / 1000000.0;
  }
}

void sub_1000B22EC(uint64_t a1)
{
  if ([*(a1 + 32) type] != 2)
  {
    sub_10008FE40(*(a1 + 32), 0);
  }

  v2 = [*(a1 + 32) type];
  v3 = *(a1 + 32);
  if (v2 != 1)
  {
    v7 = *(a1 + 32);
LABEL_9:
    v4 = [v7 lastPrimaryInterface];
    v5 = [*(a1 + 32) server];
    v6 = [v5 primaryPhysicalInterface];
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || [*(a1 + 32) tunnelKind] != 2)
  {
    v7 = *(a1 + 32);
    goto LABEL_9;
  }

  v4 = [*(a1 + 32) lastPrimaryInterface];
  v5 = [*(a1 + 32) server];
  v6 = [v5 primaryCellularInterface];
LABEL_10:
  v8 = v6;
  v9 = [v6 interfaceName];
  v10 = [v4 isEqualToString:v9];

  if ((v10 & 1) == 0)
  {
    v11 = *(a1 + 32);
    if (v11)
    {

      sub_10008AD10(v11);
    }
  }
}

void sub_1000B3460(void *a1, const char *a2)
{
  if (a1 && objc_getProperty(a1, a2, 16, 1))
  {
    message = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(message, "SessionNotificationType", 1);
    Property = objc_getProperty(a1, v3, 16, 1);
    xpc_connection_send_message(Property, message);
  }
}

BOOL sub_1000B34FC(uint64_t a1, xpc_object_t xdict)
{
  if (!a1)
  {
    return 0;
  }

  v2 = xpc_dictionary_get_value(xdict, "SessionOptions");
  v3 = v2;
  v4 = v2 && xpc_get_type(v2) == &_xpc_type_dictionary && xpc_dictionary_get_BOOL(v3, "is-on-demand");

  return v4;
}

void sub_1000B3664(uint64_t a1, char a2)
{
  v4 = [*(a1 + 32) queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000B372C;
  v6[3] = &unk_1000EB1E8;
  v9 = a2;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v5;
  v8 = *(a1 + 48);
  dispatch_async(v4, v6);
}

void sub_1000B372C(uint64_t a1)
{
  if (*(a1 + 56))
  {
    kdebug_trace();
    v2 = ne_log_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@: Successfully registered", &v9, 0xCu);
    }

    [*(a1 + 32) handleStartMessage:*(a1 + 48)];
  }

  else
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v9 = 138412546;
      v10 = v5;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@: Rejected start command from %@", &v9, 0x16u);
    }

    sub_1000B3460(*(a1 + 40), v7);
    [*(a1 + 32) removeAllClients];
  }

  v8 = [*(a1 + 32) messageQueue];
  dispatch_resume(v8);
}

id sub_1000B391C(uint64_t a1)
{
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v20 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@: Removing all clients", buf, 0xCu);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v4, 48, 1);
  }

  v6 = Property;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        sub_1000B3A88(*(*(&v14 + 1) + 8 * v10));
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *(a1 + 32);
  if (v12)
  {
    v12 = objc_getProperty(v12, v11, 48, 1);
  }

  return [v12 removeAllObjects];
}

void sub_1000B3A88(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      xpc_connection_cancel(v2);
      v2 = *(a1 + 16);
    }

    *(a1 + 16) = 0;
  }
}

void sub_1000B3B88(uint64_t a1)
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_1000B3EB8;
  v23 = sub_1000B3EC8;
  v2 = [NESMSessionClient alloc];
  v3 = *(a1 + 32);
  v4 = v3;
  if (v2)
  {
    v25.receiver = v2;
    v25.super_class = NESMSessionClient;
    v2 = objc_msgSendSuper2(&v25, "init");
    if (v2)
    {
      pid = xpc_connection_get_pid(v4);
      context = xpc_connection_get_context(v4);
      if (proc_name(pid, &buffer, 0x100u) < 1)
      {
        [NSString stringWithFormat:@"<unknown-name>[%d]", pid];
      }

      else
      {
        [NSString stringWithFormat:@"%s[%d]", &buffer, pid];
      }
      v7 = ;
      description = v2->_description;
      v2->_description = v7;

      objc_storeStrong(&v2->_connection, v3);
      v2->_permissions = 0;
      if (context && !strcmp(context, "com.apple.nesessionmanager.flow-divert-token"))
      {
        v2->_permissions = 1;
      }

      v9 = xpc_connection_copy_entitlement_value();
      v10 = v9;
      if (v9 && xpc_get_type(v9) == &_xpc_type_BOOL && xpc_BOOL_get_value(v10))
      {
        v2->_permissions |= 2uLL;
      }
    }
  }

  v24 = v2;
  v11 = ne_log_obj();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 40);
    v13 = v20[5];
    buffer = 138412546;
    v27 = v12;
    v28 = 2112;
    v29 = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@: Adding a connection for client %@", &buffer, 0x16u);
  }

  kdebug_trace();
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000B3ED0;
  handler[3] = &unk_1000EB170;
  v14 = *(a1 + 32);
  handler[4] = *(a1 + 40);
  handler[5] = &v19;
  xpc_connection_set_event_handler(v14, handler);
  Property = *(a1 + 40);
  if (Property)
  {
    Property = objc_getProperty(Property, v15, 48, 1);
  }

  v17 = Property;
  [v17 addObject:v20[5]];

  xpc_connection_resume(*(a1 + 32));
  _Block_object_dispose(&v19, 8);
}

void sub_1000B3E94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000B3EB8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000B3ED0(uint64_t a1, void *a2)
{
  v3 = a2;
  kdebug_trace();
  v4 = [*(a1 + 32) messageQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B3FA8;
  block[3] = &unk_1000EB148;
  v5 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, block);
}

void sub_1000B3FA8(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B4054;
  block[3] = &unk_1000EB148;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  v8 = *(a1 + 48);
  dispatch_sync(v2, block);
}

void sub_1000B4054(void *a1)
{
  v2 = a1[4];
  if (!v2)
  {
    v3 = 0;
    goto LABEL_5;
  }

  if (xpc_get_type(v2) != &_xpc_type_error)
  {
    v3 = a1[4];
LABEL_5:
    v4 = a1[5];
    v5 = *(*(a1[6] + 8) + 40);

    [v4 handleCommand:v3 fromClient:v5];
    return;
  }

  v6 = ne_log_obj();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = a1[5];
    v8 = *(*(a1[6] + 8) + 40);
    v13 = 138412546;
    v14 = v7;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@: Removing a connection for client %@", &v13, 0x16u);
  }

  kdebug_trace();
  sub_1000B3A88(*(*(a1[6] + 8) + 40));
  Property = a1[5];
  if (Property)
  {
    Property = objc_getProperty(Property, v9, 48, 1);
  }

  [Property removeObject:*(*(a1[6] + 8) + 40)];
  v11 = *(a1[6] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = 0;
}