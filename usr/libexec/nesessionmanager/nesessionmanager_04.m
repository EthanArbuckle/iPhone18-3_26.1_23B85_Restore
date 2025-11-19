uint64_t sub_10005FDDC(void *a1, unsigned int *a2, int a3, void *a4, void *a5)
{
  v7 = @"53";
  v36 = a4;
  v8 = a5;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v9 = [&off_1000EE210 countByEnumeratingWithState:&v37 objects:v44 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = 0;
    v13 = *v38;
    *&v10 = 138412290;
    v32 = v10;
    while (2)
    {
      v14 = 0;
      v15 = v12;
      do
      {
        if (*v38 != v13)
        {
          objc_enumerationMutation(&off_1000EE210);
        }

        v16 = *(*(&v37 + 1) + 8 * v14);
        v12 = +[NSMutableArray array];

        v17 = +[NEPolicyCondition allInterfaces];
        [v12 addObject:v17];

        v18 = [NWAddressEndpoint endpointWithHostname:v16 port:@"53"];
        if (a3)
        {
          [NEPolicyCondition localAddress:v18 prefix:0];
        }

        else
        {
          [NEPolicyCondition remoteAddress:v18 prefix:0];
        }
        v19 = ;
        [v12 addObject:v19];

        v20 = [NEPolicyCondition ipProtocol:17];
        [v12 addObject:v20];

        v21 = [[NEPolicy alloc] initWithOrder:*a2 result:v36 conditions:v12];
        v22 = [a1 addPolicy:v21];
        is_debug_logging_enabled = nelog_is_debug_logging_enabled();
        v24 = ne_log_obj();
        v25 = v24;
        if (!v22)
        {
          v28 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
          if (is_debug_logging_enabled)
          {
            if (v28)
            {
              *buf = v32;
              v43 = v21;
              _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Failed to add policy: %@", buf, 0xCu);
            }
          }

          else if (v28)
          {
            v31 = [v21 descriptionWithIndent:0 options:2];
            *buf = v32;
            v43 = v31;
            _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Failed to add policy: %@", buf, 0xCu);
          }

          v41 = 0;
          goto LABEL_28;
        }

        if (is_debug_logging_enabled)
        {
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            *buf = v32;
            v43 = v21;
            _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "Added policy: %@", buf, 0xCu);
          }
        }

        else if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v26 = [v21 descriptionWithIndent:0 options:2];
          *buf = v32;
          v43 = v26;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Added policy: %@", buf, 0xCu);
        }

        if (v8)
        {
          v27 = [NSNumber numberWithUnsignedInteger:v22];
          [v8 addObject:v27];
        }

        v14 = v14 + 1;
        v15 = v12;
      }

      while (v11 != v14);
      v11 = [&off_1000EE210 countByEnumeratingWithState:&v37 objects:v44 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v12 = 0;
  }

  v41 = 1;
LABEL_28:

  v29 = v41;
  return v29;
}

uint64_t sub_1000601E0(void *a1, unsigned int *a2, void *a3, void *a4, void *a5, int a6)
{
  v10 = a3;
  v11 = a4;
  v35 = a5;
  v34 = +[NEPolicyResult pass];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v12 = [&off_1000EE228 countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v37;
    if (v10)
    {
      v16 = v10;
    }

    else
    {
      v16 = v11;
    }

    v32 = v16;
    while (2)
    {
      v17 = 0;
      v18 = v14;
      do
      {
        if (*v37 != v15)
        {
          objc_enumerationMutation(&off_1000EE228);
        }

        v19 = *(*(&v36 + 1) + 8 * v17);
        v14 = +[NSMutableArray array];

        if (v11)
        {
          v20 = [NEPolicyCondition effectiveApplication:v32];
          [v14 addObject:v20];

          v21 = [NEPolicyCondition realApplication:v11];
          [v14 addObject:v21];
        }

        v22 = +[NEPolicyCondition allInterfaces];
        [v14 addObject:v22];

        v23 = [NWAddressEndpoint endpointWithHostname:v19 port:v35];
        if (a6)
        {
          [NEPolicyCondition localAddress:v23 prefix:0];
        }

        else
        {
          [NEPolicyCondition remoteAddress:v23 prefix:0];
        }
        v24 = ;
        [v14 addObject:v24];

        v25 = +[NEPolicyCondition entitlement];
        [v14 addObject:v25];

        v26 = [[NEPolicy alloc] initWithOrder:*a2 result:v34 conditions:v14];
        v27 = [a1 addPolicy:v26];

        v28 = ne_log_obj();
        v29 = v28;
        if (!v27)
        {
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315138;
            v41 = "[NEPolicySession(AlwaysOnVPN) addPortPoliciesWithOrder:eAppUUID:appUUID:port:local:]";
            _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%s: addPolicy failed", buf, 0xCu);
          }

          v30 = 0;
          goto LABEL_24;
        }

        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v41 = "[NEPolicySession(AlwaysOnVPN) addPortPoliciesWithOrder:eAppUUID:appUUID:port:local:]";
          v42 = 2112;
          v43 = v14;
          _os_log_debug_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "%s: Added Bonjour policy %@", buf, 0x16u);
        }

        ++*a2;
        v17 = v17 + 1;
        v18 = v14;
      }

      while (v13 != v17);
      v13 = [&off_1000EE228 countByEnumeratingWithState:&v36 objects:v44 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }

    v30 = 1;
  }

  else
  {
    v14 = 0;
    v30 = 1;
  }

LABEL_24:

  return v30;
}

uint64_t sub_10006058C(void *a1, unsigned int *a2)
{
  v4 = +[NEProcessInfo copyDNSUUIDs];
  v5 = v4;
  if (v4)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v30 objects:v39 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v31;
      v25 = v5;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v31 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v30 + 1) + 8 * i);
          if (!sub_1000601E0(a1, a2, 0, v11, @"5353", 1) || !sub_1000601E0(a1, a2, 0, v11, @"5353", 0))
          {
            v23 = 0;
            goto LABEL_40;
          }

          v12 = [[NSUUID alloc] initWithUUIDString:@"979C0A62-49FE-4739-BDCB-CAC584AC832D"];
          if (!sub_1000601E0(a1, a2, v12, v11, @"5353", 1) || !sub_1000601E0(a1, a2, v12, v11, @"5353", 0))
          {
            v23 = 0;
            goto LABEL_39;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v30 objects:v39 count:16];
        v5 = v25;
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    if (os_variant_has_internal_content())
    {
      v25 = v5;
      v13 = ne_log_obj();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v36 = "[NEPolicySession(AlwaysOnVPN) addBonjourWithOrder:]";
        v37 = 2112;
        v38 = @"/usr/local/bin/dnssdutil";
        _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%s: Adding pass policy Bonjour traffic for %@", buf, 0x16u);
      }

      v14 = [NEProcessInfo copyUUIDsForExecutable:@"/usr/local/bin/dnssdutil"];
      if (!v14)
      {
        v15 = ne_log_obj();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v36 = "[NEPolicySession(AlwaysOnVPN) addBonjourWithOrder:]";
          v37 = 2112;
          v38 = @"/usr/local/bin/dnssdutil";
          _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%s: failed to get UUIDs for %@", buf, 0x16u);
        }
      }

      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v12 = v14;
      v16 = [v12 countByEnumeratingWithState:&v26 objects:v34 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v27;
        do
        {
          for (j = 0; j != v17; j = j + 1)
          {
            if (*v27 != v18)
            {
              objc_enumerationMutation(v12);
            }

            v20 = *(*(&v26 + 1) + 8 * j);
            if ((sub_1000601E0(a1, a2, 0, v20, @"5353", 1) & 1) == 0)
            {
              v21 = ne_log_obj();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136315394;
                v36 = "[NEPolicySession(AlwaysOnVPN) addBonjourWithOrder:]";
                v37 = 2112;
                v38 = @"/usr/local/bin/dnssdutil";
                _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "%s: failed to add policy for local address for %@", buf, 0x16u);
              }
            }

            if ((sub_1000601E0(a1, a2, 0, v20, @"5353", 0) & 1) == 0)
            {
              v22 = ne_log_obj();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136315394;
                v36 = "[NEPolicySession(AlwaysOnVPN) addBonjourWithOrder:]";
                v37 = 2112;
                v38 = @"/usr/local/bin/dnssdutil";
                _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "%s: failed to add policy for remote address for %@", buf, 0x16u);
              }
            }
          }

          v17 = [v12 countByEnumeratingWithState:&v26 objects:v34 count:16];
        }

        while (v17);
      }

      v23 = 1;
      v6 = v12;
LABEL_39:

LABEL_40:
      v5 = v25;
    }

    else
    {
      v23 = 1;
    }
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

BOOL sub_100060A50(void *a1, unsigned int *a2, void *a3)
{
  v5 = a3;
  v6 = ne_log_obj();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v17 = "[NEPolicySession(AlwaysOnVPN) addListenerWithOrder:result:]";
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%s: adding policy for TCP listeners", buf, 0xCu);
  }

  v7 = +[NEPolicyCondition allInterfaces];
  v15[0] = v7;
  v8 = [NEPolicyCondition ipProtocol:6];
  v15[1] = v8;
  v9 = +[NEPolicyCondition isListener];
  v15[2] = v9;
  v10 = [NSArray arrayWithObjects:v15 count:3];

  v11 = [[NEPolicy alloc] initWithOrder:*a2 result:v5 conditions:v10];
  v12 = [a1 addPolicy:v11];
  if (v12)
  {
    ++*a2;
  }

  else
  {
    v13 = ne_log_obj();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v17 = "[NEPolicySession(AlwaysOnVPN) addListenerWithOrder:result:]";
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s: failed to add policy for TCP listeners", buf, 0xCu);
    }
  }

  return v12 != 0;
}

uint64_t sub_100060C48(void *a1, unsigned int *a2, uint64_t a3, int a4, int a5, void *a6)
{
  v11 = a6;
  if (!a1)
  {
LABEL_12:
    v13 = 0;
    goto LABEL_32;
  }

  if (a3)
  {
    if (a3 == 2)
    {
      v12 = +[NEPolicyResult drop];
      goto LABEL_16;
    }

    if (a3 == 1)
    {
      if (a4)
      {
        +[NEPolicyResult pass];
      }

      else
      {
        [NEPolicyResult skipWithOrder:0];
      }
      v12 = ;
      if (a5)
      {
        v15 = [[NSUUID alloc] initWithUUIDBytes:&unk_1000C2D20];
        v16 = [NEPolicyResult removeNetworkAgentUUID:v15];

        goto LABEL_17;
      }

LABEL_16:
      v16 = 0;
LABEL_17:
      v17 = [NEProcessInfo copyUUIDsForExecutable:@"/System/Library/PrivateFrameworks/VisualVoicemail.framework/vmd"];
      v18 = ne_log_obj();
      v19 = v18;
      if (v17)
      {
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v20 = "";
          *buf = 136315906;
          *v25 = "[NEPolicySession(AlwaysOnVPN) addVoiceMailExceptionWithOrder:action:isHighPriority:isAOVPN:policyIDList:]";
          if (a4)
          {
            v20 = " <at HIGH priority>";
          }

          *&v25[8] = 2112;
          *&v25[10] = v12;
          v26 = 2112;
          v27 = @"VoiceMail";
          v28 = 2080;
          v29 = v20;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s: Adding %@ Exceptions policy for %@%s", buf, 0x2Au);
        }

        if (sub_10005F304(a1, a2, 1, 0, v17, 1, 0, 0, 0, 0, 0, v12, v16, 0, 0))
        {
          v23 = 1;
LABEL_31:

          v13 = v23;
          goto LABEL_32;
        }

        v21 = ne_log_obj();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *v25 = "[NEPolicySession(AlwaysOnVPN) addVoiceMailExceptionWithOrder:action:isHighPriority:isAOVPN:policyIDList:]";
          *&v25[8] = 2112;
          *&v25[10] = v12;
          v26 = 2112;
          v27 = @"VoiceMail";
          _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s: Failed to add %@ policy for %@", buf, 0x20u);
        }
      }

      else
      {
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *v25 = "[NEPolicySession(AlwaysOnVPN) addVoiceMailExceptionWithOrder:action:isHighPriority:isAOVPN:policyIDList:]";
          *&v25[8] = 2112;
          *&v25[10] = @"VoiceMail";
          _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%s: failed to get UUIDs for %@ daemon", buf, 0x16u);
        }
      }

      v23 = 0;
      goto LABEL_31;
    }

    v14 = ne_log_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109378;
      *v25 = a3;
      *&v25[4] = 2112;
      *&v25[6] = @"VoiceMail";
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Invalid action %d for %@", buf, 0x12u);
    }

    goto LABEL_12;
  }

  v13 = 1;
LABEL_32:

  return v13;
}

BOOL sub_100060FDC(void *a1, unsigned int *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = objc_alloc_init(NSMutableArray);
  v10 = +[NEPolicyCondition allInterfaces];
  [v9 addObject:v10];

  v11 = [NEPolicyCondition customEntitlement:@"com.apple.private.application-service-browse"];
  [v9 addObject:v11];

  v12 = [[NEPolicy alloc] initWithOrder:*a2 result:v8 conditions:v9];
  v13 = [a1 addPolicy:v12];
  is_debug_logging_enabled = nelog_is_debug_logging_enabled();
  v15 = ne_log_obj();
  v16 = v15;
  if (v13)
  {
    if (is_debug_logging_enabled)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v22 = 138412290;
        v23 = v12;
        _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Added ApplicationServiceBrowse exception policy: %@", &v22, 0xCu);
      }
    }

    else if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v18 = [v12 descriptionWithIndent:0 options:2];
      v22 = 138412290;
      v23 = v18;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Added ApplicationServiceBrowse exceptionpolicy: %@", &v22, 0xCu);
    }

    if (v7)
    {
      v19 = [NSNumber numberWithUnsignedInteger:v13];
      [v7 addObject:v19];
    }

    ++*a2;
  }

  else
  {
    v17 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (is_debug_logging_enabled)
    {
      if (v17)
      {
        v22 = 138412290;
        v23 = v12;
        _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Failed to add policy for ApplicationServiceBrowse exception: %@", &v22, 0xCu);
      }
    }

    else if (v17)
    {
      v21 = [v12 descriptionWithIndent:0 options:2];
      v22 = 138412290;
      v23 = v21;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Failed to add policy for ApplicationServiceBrowse exception: %@", &v22, 0xCu);
    }
  }

  return v13 != 0;
}

uint64_t sub_1000612AC(void *a1, unsigned int *a2, void *a3, void *a4, uint64_t a5, int a6, void *a7)
{
  v10 = a3;
  v41 = a4;
  v11 = a7;
  if (a1)
  {
    if ([v10 count])
    {
      v43 = v11;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      obj = [v10 allKeys];
      v12 = [obj countByEnumeratingWithState:&v47 objects:v64 count:16];
      if (v12)
      {
        v13 = v12;
        v42 = a1;
        v45 = 0;
        v14 = 0;
        v15 = CTBundle_ptr;
        v16 = *v48;
        v36 = *v48;
        v37 = v10;
        while (2)
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v48 != v16)
            {
              objc_enumerationMutation(obj);
            }

            v18 = *(*(&v47 + 1) + 8 * i);
            v19 = [v15[49] copyUUIDsForBundleID:v18 uid:0];
            v20 = v19;
            if (v19 && [v19 count])
            {
              v21 = [v10 objectForKeyedSubscript:v18];
              v22 = *a2;
              v46 = *a2;
              v23 = [v21 isLimitedToUDP];
              if (v23)
              {
                *buf = v22 - 1;
                v24 = [NEPolicyResult skipWithOrder:v22 + 1];

                v11 = v43;
                if (!sub_10005FDDC(v42, buf, 1, v24, v43) || !sub_10005FDDC(v42, buf, 0, v24, v43))
                {
                  v51 = 0;
LABEL_47:

                  goto LABEL_48;
                }

                v25 = 17;
                v14 = v24;
              }

              else
              {
                v25 = 0;
              }

              if (a5 == 200)
              {
                [NEPolicyResult skipWithOrder:0];
              }

              else
              {
                +[NEPolicyResult pass];
              }
              v24 = ;

              if (a6)
              {
                v26 = [[NSUUID alloc] initWithUUIDBytes:&unk_1000C2D20];
                v27 = [NEPolicyResult removeNetworkAgentUUID:v26];

                v45 = v27;
              }

              else
              {
                v26 = v45;
                v45 = 0;
              }

              v28 = ne_log_obj();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
              {
                *buf = 136316162;
                v53 = "[NEPolicySession(AlwaysOnVPN) addApplicationExceptionWithOrder:applicationExceptions:delegateInterfaceName:priority:isAOVPN:policyIDList:]";
                v54 = 2112;
                v55 = v24;
                v56 = 2048;
                v57 = a5;
                v58 = 2112;
                v59 = v18;
                v60 = 2112;
                v61 = v20;
                _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "%s: Adding %@ Exceptions policy <priority %ld> for %@, UUIDs %@", buf, 0x34u);
              }

              v11 = v43;
              if ((sub_10005F660(v42, &v46, 0, v20, 0, v41, v18, v25, v23 ^ 1, v24, v45, v43) & 1) == 0)
              {
                v32 = ne_log_obj();
                if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315906;
                  v53 = "[NEPolicySession(AlwaysOnVPN) addApplicationExceptionWithOrder:applicationExceptions:delegateInterfaceName:priority:isAOVPN:policyIDList:]";
                  v54 = 2112;
                  v55 = v24;
                  v56 = 2048;
                  v57 = a5;
                  v58 = 2112;
                  v59 = v18;
                  _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%s: Failed to add %@ policy <priority %ld> for %@", buf, 0x2Au);
                }

                v51 = 0;
                v10 = v37;
                goto LABEL_47;
              }

              if (a5 == 200)
              {
                v29 = [NEPolicyResult scopeSocketToInterfaceName:v41];

                v30 = ne_log_obj();
                if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
                {
                  *buf = 136316418;
                  v31 = @"<Any>";
                  if (v23)
                  {
                    v31 = @"UDP";
                  }

                  v53 = "[NEPolicySession(AlwaysOnVPN) addApplicationExceptionWithOrder:applicationExceptions:delegateInterfaceName:priority:isAOVPN:policyIDList:]";
                  v54 = 2112;
                  v55 = v29;
                  v56 = 2048;
                  v57 = 200;
                  v58 = 2112;
                  v59 = v18;
                  v60 = 2112;
                  v61 = v20;
                  v62 = 2112;
                  v63 = v31;
                  _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "%s: Adding %@ Exceptions policy <priority %ld> for %@, UUIDs %@ - %@ protocol", buf, 0x3Eu);
                }

                if ((sub_10005F660(v42, &v46, 0, v20, 0, 0, v18, v25, v23 ^ 1, v29, v45, v43) & 1) == 0)
                {
                  v33 = ne_log_obj();
                  v10 = v37;
                  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136315906;
                    v53 = "[NEPolicySession(AlwaysOnVPN) addApplicationExceptionWithOrder:applicationExceptions:delegateInterfaceName:priority:isAOVPN:policyIDList:]";
                    v54 = 2112;
                    v55 = v29;
                    v56 = 2048;
                    v57 = 200;
                    v58 = 2112;
                    v59 = v18;
                    _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%s: Failed to add %@ policy <priority %ld> for %@", buf, 0x2Au);
                  }

                  v51 = 0;
                  v24 = v29;
                  v11 = v43;
                  goto LABEL_47;
                }

                v24 = v29;
              }

              v16 = v36;
              v10 = v37;
              v14 = v24;
              v15 = CTBundle_ptr;
            }

            else
            {
              v21 = ne_log_obj();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136315394;
                v53 = "[NEPolicySession(AlwaysOnVPN) addApplicationExceptionWithOrder:applicationExceptions:delegateInterfaceName:priority:isAOVPN:policyIDList:]";
                v54 = 2112;
                v55 = v18;
                _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "%s: Application %@ does not exist, may have been uninstalled", buf, 0x16u);
              }
            }
          }

          v13 = [obj countByEnumeratingWithState:&v47 objects:v64 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v45 = 0;
        v14 = 0;
      }

      v51 = 1;
      v11 = v43;
    }

    else
    {
      v51 = 0;
    }

LABEL_48:
    v34 = v51;
  }

  else
  {
    v34 = 0;
  }

  return v34;
}

uint64_t sub_10006197C(void *a1, unsigned int *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = a5;
  if (!a1)
  {
    v14 = 0;
    goto LABEL_35;
  }

  if (a4 == 400 || a4 == 100)
  {
    v10 = +[NEPolicyResult pass];
  }

  else
  {
    v10 = [NEPolicyResult skipWithOrder:a3];
  }

  v11 = v10;
  v12 = v10;
  if (a4 == 100 || a4 == 400)
  {

    if (a4 == 100)
    {
      v13 = ne_log_obj();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v35 = "[NEPolicySession(AlwaysOnVPN) addLocalNetworksExceptionWithOrder:skipOrder:priority:policyIDList:]";
        _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%s: Adding pass policy for Bonjour traffic", buf, 0xCu);
      }

      v14 = sub_10006058C(a1, a2);
      goto LABEL_21;
    }
  }

  else
  {
  }

  if (sub_100060A50(a1, a2, v12))
  {
    v15 = ne_log_obj();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v35 = "[NEPolicySession(AlwaysOnVPN) addLocalNetworksExceptionWithOrder:skipOrder:priority:policyIDList:]";
      v36 = 2112;
      v37 = v12;
      v38 = 1024;
      v39 = a4;
      _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%s: Adding policy %@ for local networks (priority %d)", buf, 0x1Cu);
    }

    v16 = [NEPolicyCondition localNetworksWithFlags:1];
    v17 = +[NEPolicyCondition allInterfaces];
    v33[1] = v17;
    v18 = [NSArray arrayWithObjects:v33 count:2];

    v19 = [[NEPolicy alloc] initWithOrder:*a2 result:v12 conditions:v18];
    v20 = [a1 addPolicy:v19];
    is_debug_logging_enabled = nelog_is_debug_logging_enabled();
    v22 = ne_log_obj();
    v23 = v22;
    if (v20)
    {
      if (is_debug_logging_enabled)
      {
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v35 = "[NEPolicySession(AlwaysOnVPN) addLocalNetworksExceptionWithOrder:skipOrder:priority:policyIDList:]";
          v36 = 2112;
          v37 = v19;
          _os_log_debug_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "%s: Added local networks policy: %@", buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v25 = [v19 descriptionWithIndent:0 options:2];
        *buf = 136315394;
        v35 = "[NEPolicySession(AlwaysOnVPN) addLocalNetworksExceptionWithOrder:skipOrder:priority:policyIDList:]";
        v36 = 2112;
        v37 = v25;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "%s: Added local networks policy: %@", buf, 0x16u);
      }

      if (v9)
      {
        v26 = [NSNumber numberWithUnsignedInteger:v20];
        [v9 addObject:v26];

        ++*a2;
        v27 = a1;
        v28 = a2;
        v29 = v12;
        v30 = v9;
      }

      else
      {
        ++*a2;
        v27 = a1;
        v28 = a2;
        v29 = v12;
        v30 = 0;
      }

      v14 = sub_100060FDC(v27, v28, v29, v30);
    }

    else
    {
      v24 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
      if (is_debug_logging_enabled)
      {
        if (v24)
        {
          *buf = 136315394;
          v35 = "[NEPolicySession(AlwaysOnVPN) addLocalNetworksExceptionWithOrder:skipOrder:priority:policyIDList:]";
          v36 = 2112;
          v37 = v19;
          _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%s: Failed to add policy for local networks: %@", buf, 0x16u);
        }
      }

      else if (v24)
      {
        v32 = [v19 descriptionWithIndent:0 options:2];
        *buf = 136315394;
        v35 = "[NEPolicySession(AlwaysOnVPN) addLocalNetworksExceptionWithOrder:skipOrder:priority:policyIDList:]";
        v36 = 2112;
        v37 = v32;
        _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%s: Failed to add policy for local networks: %@", buf, 0x16u);
      }

      v14 = 0;
    }

    goto LABEL_34;
  }

  v14 = 0;
LABEL_21:
  v19 = 0;
  v18 = 0;
LABEL_34:

LABEL_35:
  return v14;
}

BOOL sub_100061E40(void *a1, unsigned int *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = a5;
  if (!a1)
  {
    v25 = 0;
    goto LABEL_21;
  }

  if (a4 == 400 || a4 == 100)
  {
    v10 = +[NEPolicyResult pass];
  }

  else
  {
    v10 = [NEPolicyResult skipWithOrder:a3];
  }

  v11 = v10;
  v12 = v10;
  if (a4 == 100 || a4 == 400)
  {

    if (a4 == 100)
    {
      v13 = ne_log_obj();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v44 = "[NEPolicySession(AlwaysOnVPN) addDeviceCommunicationExceptionWithOrder:skipOrder:priority:policyIDList:]";
        _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%s: Adding pass policy for Bonjour traffic", buf, 0xCu);
      }

      if (sub_10006058C(a1, a2))
      {
        v14 = ne_log_obj();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315906;
          v44 = "[NEPolicySession(AlwaysOnVPN) addDeviceCommunicationExceptionWithOrder:skipOrder:priority:policyIDList:]";
          v45 = 2112;
          v46 = v12;
          v47 = 2080;
          v48 = "com.apple.remotepairing.devicecommunication";
          v49 = 1024;
          v50 = 0;
          _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%s: Adding policy %@ for account id %s (priority %d)", buf, 0x26u);
        }

        v15 = +[NEPolicyCondition allInterfaces];
        v42[0] = v15;
        v16 = +[NEPolicyCondition entitlement];
        v42[1] = v16;
        v17 = [NEPolicyCondition accountIdentifier:@"com.apple.remotepairing.devicecommunication"];
        v42[2] = v17;
        v18 = [NSArray arrayWithObjects:v42 count:3];

        v19 = [[NEPolicy alloc] initWithOrder:*a2 result:v12 conditions:v18];
        v20 = [a1 addPolicy:v19];
        is_debug_logging_enabled = nelog_is_debug_logging_enabled();
        v22 = ne_log_obj();
        v23 = v22;
        if (v20)
        {
          if (is_debug_logging_enabled)
          {
            v24 = CTBundle_ptr;
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315394;
              v44 = "[NEPolicySession(AlwaysOnVPN) addDeviceCommunicationExceptionWithOrder:skipOrder:priority:policyIDList:]";
              v45 = 2112;
              v46 = v19;
              _os_log_debug_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "%s: Added DeviceCommunication account id policy: %@", buf, 0x16u);
            }
          }

          else
          {
            v24 = CTBundle_ptr;
            if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
            {
              v28 = [v19 descriptionWithIndent:0 options:2];
              *buf = 136315394;
              v44 = "[NEPolicySession(AlwaysOnVPN) addDeviceCommunicationExceptionWithOrder:skipOrder:priority:policyIDList:]";
              v45 = 2112;
              v46 = v28;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "%s: Added DeviceCommunication account id policy: %@", buf, 0x16u);
            }
          }

          ++*a2;
          v29 = ne_log_obj();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            v44 = "[NEPolicySession(AlwaysOnVPN) addDeviceCommunicationExceptionWithOrder:skipOrder:priority:policyIDList:]";
            v45 = 2112;
            v46 = v12;
            _os_log_debug_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "%s: Adding policy %@ for DeviceCommunication DIRECTLINK interfaces", buf, 0x16u);
          }

          v30 = [NEPolicyCondition scopedInterfaceFlags:0 eflags:0x20000000 xflags:0];
          v41 = v30;
          v31 = [v24[176] arrayWithObjects:&v41 count:1];

          v32 = [[NEPolicy alloc] initWithOrder:*a2 result:v12 conditions:v31];
          v33 = [a1 addPolicy:v32];
          v34 = nelog_is_debug_logging_enabled();
          v35 = ne_log_obj();
          v36 = v35;
          if (v33)
          {
            if (v34)
            {
              if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136315394;
                v44 = "[NEPolicySession(AlwaysOnVPN) addDeviceCommunicationExceptionWithOrder:skipOrder:priority:policyIDList:]";
                v45 = 2112;
                v46 = v32;
                _os_log_debug_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEBUG, "%s: Added DeviceCommunication DIRECTLINK policy: %@", buf, 0x16u);
              }
            }

            else if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
            {
              v38 = [v32 descriptionWithIndent:0 options:2];
              *buf = 136315394;
              v44 = "[NEPolicySession(AlwaysOnVPN) addDeviceCommunicationExceptionWithOrder:skipOrder:priority:policyIDList:]";
              v45 = 2112;
              v46 = v38;
              _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "%s: Added DeviceCommunication DIRECTLINK policy: %@", buf, 0x16u);
            }

            ++*a2;
            v25 = 1;
          }

          else
          {
            v37 = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);
            if (v34)
            {
              if (v37)
              {
                *buf = 136315394;
                v44 = "[NEPolicySession(AlwaysOnVPN) addDeviceCommunicationExceptionWithOrder:skipOrder:priority:policyIDList:]";
                v45 = 2112;
                v46 = v32;
                _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "%s: Failed to add policy for DeviceCommunication DIRECTLINK: %@", buf, 0x16u);
              }
            }

            else if (v37)
            {
              v40 = [v32 descriptionWithIndent:0 options:2];
              *buf = 136315394;
              v44 = "[NEPolicySession(AlwaysOnVPN) addDeviceCommunicationExceptionWithOrder:skipOrder:priority:policyIDList:]";
              v45 = 2112;
              v46 = v40;
              _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "%s: Failed to add policy for DeviceCommunication DIRECTLINK: %@", buf, 0x16u);
            }

            v25 = 0;
          }
        }

        else
        {
          v27 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
          if (is_debug_logging_enabled)
          {
            if (v27)
            {
              *buf = 136315394;
              v44 = "[NEPolicySession(AlwaysOnVPN) addDeviceCommunicationExceptionWithOrder:skipOrder:priority:policyIDList:]";
              v45 = 2112;
              v46 = v19;
              _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%s: Failed to add policy for DeviceCommunication account id: %@", buf, 0x16u);
            }
          }

          else if (v27)
          {
            v39 = [v19 descriptionWithIndent:0 options:2];
            *buf = 136315394;
            v44 = "[NEPolicySession(AlwaysOnVPN) addDeviceCommunicationExceptionWithOrder:skipOrder:priority:policyIDList:]";
            v45 = 2112;
            v46 = v39;
            _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%s: Failed to add policy for DeviceCommunication account id: %@", buf, 0x16u);
          }

          v25 = 0;
          v32 = v19;
          v31 = v18;
        }
      }

      else
      {
        v25 = 0;
      }

      goto LABEL_20;
    }
  }

  else
  {
  }

  v25 = sub_100060A50(a1, a2, v12);
LABEL_20:

LABEL_21:
  return v25;
}

uint64_t sub_10006257C(void *a1, unsigned int *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  if (v14)
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v19 = v14;
    v30 = [v19 countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v30)
    {
      v20 = *v40;
      v33 = v14;
      v34 = v13;
      v32 = v19;
      v29 = *v40;
      do
      {
        v21 = 0;
        do
        {
          if (*v40 != v20)
          {
            objc_enumerationMutation(v19);
          }

          v31 = v21;
          v22 = *(*(&v39 + 1) + 8 * v21);
          v35 = 0u;
          v36 = 0u;
          v37 = 0u;
          v38 = 0u;
          v23 = v13;
          v24 = [v23 countByEnumeratingWithState:&v35 objects:v43 count:16];
          if (v24)
          {
            v25 = v24;
            v26 = *v36;
            while (2)
            {
              for (i = 0; i != v25; i = i + 1)
              {
                if (*v36 != v26)
                {
                  objc_enumerationMutation(v23);
                }

                if ((sub_10005E650(a1, a2, *(*(&v35 + 1) + 8 * i), v22, 1, 0, 0, 0, 0, 0, 0, 0, 0, v15, v16, 0, v17, 1) & 1) == 0)
                {

                  v18 = 0;
                  v14 = v33;
                  v13 = v34;
                  v19 = v32;
                  goto LABEL_21;
                }
              }

              v25 = [v23 countByEnumeratingWithState:&v35 objects:v43 count:16];
              if (v25)
              {
                continue;
              }

              break;
            }
          }

          v21 = v31 + 1;
          v14 = v33;
          v13 = v34;
          v19 = v32;
          v20 = v29;
        }

        while ((v31 + 1) != v30);
        v18 = 1;
        v30 = [v32 countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v30);
    }

    else
    {
      v18 = 1;
    }

LABEL_21:
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

id sub_1000627E0(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = [v2 alwaysOnVPN];

  v4 = [v3 serviceExceptions];
  v5 = [v4 objectForKeyedSubscript:@"CellularServices"];

  if (v5)
  {
    v6 = [v5 action];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_100062878(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = [v2 alwaysOnVPN];

  v4 = [v3 serviceExceptions];
  v5 = [v4 objectForKeyedSubscript:@"VoiceMail"];

  if (v5)
  {
    v6 = [v5 action];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_100062910(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = [v2 alwaysOnVPN];

  v4 = [v3 serviceExceptions];
  v5 = [v4 objectForKeyedSubscript:@"DeviceCommunication"];

  if (v5)
  {
    v6 = [v5 action];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_1000629A8(void *a1, unsigned int *a2, uint64_t a3, uint64_t a4, void *a5, int a6, void *a7)
{
  v13 = a5;
  v14 = a7;
  if (a3)
  {
    if (a3 == 2)
    {
      v16 = +[NEPolicyResult drop];
      goto LABEL_15;
    }

    if (a3 == 1)
    {
      if (a4 == 400 || a4 == 100)
      {
        v15 = +[NEPolicyResult pass];
      }

      else
      {
        v15 = [NEPolicyResult skipWithOrder:0];
      }

      v19 = v15;
      v16 = v15;

      if (a6)
      {
        v20 = [[NSUUID alloc] initWithUUIDBytes:&unk_1000C2D20];
        v21 = [NEPolicyResult removeNetworkAgentUUID:v20];

        goto LABEL_16;
      }

LABEL_15:
      v21 = 0;
LABEL_16:
      v22 = [NEProcessInfo copyUUIDsForExecutable:@"/System/Library/Frameworks/CoreTelephony.framework/Support/CommCenter"];
      if (!v22)
      {
        v30 = ne_log_obj();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          *v54 = "/System/Library/Frameworks/CoreTelephony.framework/Support/CommCenter";
          _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Failed to get UUIDs for %s daemon", buf, 0xCu);
        }

        v52 = 0;
        goto LABEL_66;
      }

      v51 = [NEProcessInfo copyUUIDsForExecutable:@"/Applications/InCallService.app/InCallService"];
      if (!v51)
      {
        v31 = ne_log_obj();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          *v54 = "/Applications/InCallService.app/InCallService";
          _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "Failed to get UUIDs for %s daemon", buf, 0xCu);
        }

        v52 = 0;
        v27 = 0;
        goto LABEL_65;
      }

      v50 = [NEProcessInfo copyUUIDsForExecutable:@"/System/Library/Frameworks/CoreTelephony.framework/Support/CommCenterMobileHelper"];
      if (!v50)
      {
        v32 = ne_log_obj();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          *v54 = "/System/Library/Frameworks/CoreTelephony.framework/Support/CommCenterMobileHelper";
          _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "Failed to get UUIDs for %s daemon", buf, 0xCu);
        }

        v52 = 0;
        v28 = 0;
        v27 = v51;
        goto LABEL_64;
      }

      v49 = [NEProcessInfo copyUUIDsForExecutable:@"/System/Library/PrivateFrameworks/GeoServices.framework/geod"];
      if (!v49)
      {
        v33 = ne_log_obj();
        v28 = v50;
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          *v54 = "/System/Library/PrivateFrameworks/GeoServices.framework/geod";
          _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Failed to get UUIDs for %s daemon", buf, 0xCu);
        }

        v52 = 0;
        v27 = v51;
        v29 = 0;
        goto LABEL_63;
      }

      v46 = +[NEProcessInfo copyNEHelperUUIDs];
      v23 = [[NSUUID alloc] initWithUUIDString:@"67A03811-DB0A-594E-C2AE-8B0517EDF26F"];
      v60 = v23;
      v48 = [NSArray arrayWithObjects:&v60 count:1];

      v24 = [[NSUUID alloc] initWithUUIDString:@"569F2700-CAF9-483D-B19D-7AF406DCE15E"];
      v59 = v24;
      v47 = [NSArray arrayWithObjects:&v59 count:1];

      v25 = +[NEProcessInfo copyDNSUUIDs];
      if (!v25)
      {
        v52 = 0;
        v34 = v46;
        v28 = v50;
        v27 = v51;
        v29 = v49;
LABEL_62:

LABEL_63:
LABEL_64:

LABEL_65:
LABEL_66:

        v17 = v52;
        goto LABEL_67;
      }

      v45 = v25;
      v26 = ne_log_obj();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 136315906;
        *v54 = "[NEPolicySession(AlwaysOnVPN) addCellularServicesExceptionPoliciesWithOrder:action:useIPSec:priority:primaryPhysicalInterface:isAOVPN:policyIDList:]";
        *&v54[8] = 2112;
        *&v54[10] = v16;
        v55 = 2048;
        v56 = a4;
        v57 = 2112;
        v58 = @"CellularServices";
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "%s: Adding %@ <priority %ld> Exceptions policy for %@", buf, 0x2Au);
      }

      if (a4 == 100)
      {
        v27 = v51;
        if (sub_10005F304(a1, a2, 1, 0, v51, 1, 0, 0, 0, 0, 0, v16, v21, 0, v14))
        {
          v52 = 1;
          v29 = v49;
          v28 = v50;
LABEL_49:
          v34 = v46;
LABEL_61:
          v25 = v45;
          goto LABEL_62;
        }

        v39 = ne_log_obj();
        v29 = v49;
        v28 = v50;
        if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_48;
        }

        *buf = 138412546;
        *v54 = v16;
        *&v54[8] = 2112;
        *&v54[10] = @"CellularServices";
        v43 = "Failed to add %@ policy for %@ (InCallService/InCallService)";
        goto LABEL_69;
      }

      v34 = v46;
      if (sub_10005F304(a1, a2, 1, v48, v22, 1, 0, 0, 0, 0, 0, v16, v21, 0, v14))
      {
        if (sub_10005F304(a1, a2, 1, v47, v22, 1, 0, 0, 0, 0, 0, v16, v21, 0, v14))
        {
          if (sub_10006257C(a1, a2, v22, v46, v16, v21, v14))
          {
            if (sub_10005F660(a1, a2, 1, v48, 1, 0, 0, 0, 0, v16, v21, v14))
            {
              if (v13)
              {
                v35 = [NEPolicyResult tunnelIPToInterfaceName:v13 secondaryResultType:1];

                v36 = v50;
                v16 = v35;
                if (sub_10005F304(a1, a2, 1, 0, v50, 1, 0, 0, v13, 0, 0, v35, v21, 1, v14))
                {
LABEL_45:
                  v37 = a2;
                  v29 = v49;
                  v38 = sub_10005F304(a1, v37, 1, v36, v49, 1, 0, 0, v13, 0, @"com.apple.GeoServices.CountryCode", v16, v21, 1, v14);
                  v28 = v36;
                  if (v38)
                  {
                    v52 = 1;
                    v27 = v51;
                    goto LABEL_49;
                  }

                  v39 = ne_log_obj();
                  v27 = v51;
                  if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
                  {
LABEL_48:

                    v52 = 0;
                    goto LABEL_49;
                  }

                  *buf = 138412546;
                  *v54 = v16;
                  *&v54[8] = 2112;
                  *&v54[10] = @"CellularServices";
                  v43 = "Failed to add %@ policy for %@ (geod/CommCenterMobileHelper)";
LABEL_69:
                  _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, v43, buf, 0x16u);
                  goto LABEL_48;
                }
              }

              else
              {
                v36 = v50;
                if (sub_10005F304(a1, a2, 1, 0, v50, 1, 0, 0, 0, 0, 0, v16, v21, 1, v14))
                {
                  goto LABEL_45;
                }
              }

              v44 = ne_log_obj();
              v27 = v51;
              if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                *v54 = v16;
                *&v54[8] = 2112;
                *&v54[10] = @"CellularServices";
                _os_log_error_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "Failed to add %@ policy for %@ (CommCenterMobileHelper/IMS)", buf, 0x16u);
              }

              v52 = 0;
LABEL_60:
              v29 = v49;
              v28 = v50;
              goto LABEL_61;
            }

            v40 = ne_log_obj();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              *v54 = v16;
              *&v54[8] = 2112;
              *&v54[10] = @"CellularServices";
              v41 = "Failed to add %@ policy for %@ (IMSUUIDs as effective UUIDs)";
              goto LABEL_58;
            }

LABEL_59:

            v52 = 0;
            v27 = v51;
            goto LABEL_60;
          }

          v40 = ne_log_obj();
          if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_59;
          }

          *buf = 138412546;
          *v54 = v16;
          *&v54[8] = 2112;
          *&v54[10] = @"CellularServices";
          v41 = "Failed to add %@ policy for %@ (NEHelper/CommCenter)";
        }

        else
        {
          v40 = ne_log_obj();
          if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_59;
          }

          *buf = 138412546;
          *v54 = v16;
          *&v54[8] = 2112;
          *&v54[10] = @"CellularServices";
          v41 = "Failed to add %@ policy for %@ (CommCenter/MMS)";
        }
      }

      else
      {
        v40 = ne_log_obj();
        if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_59;
        }

        *buf = 138412546;
        *v54 = v16;
        *&v54[8] = 2112;
        *&v54[10] = @"CellularServices";
        v41 = "Failed to add %@ policy for %@ (CommCenter/IMS)";
      }

LABEL_58:
      _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, v41, buf, 0x16u);
      goto LABEL_59;
    }

    v18 = ne_log_obj();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109378;
      *v54 = a3;
      *&v54[4] = 2112;
      *&v54[6] = @"CellularServices";
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid action %d for %@", buf, 0x12u);
    }

    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

LABEL_67:

  return v17;
}

uint64_t sub_100063400(void *a1, unsigned int *a2, uint64_t a3, void *a4, int a5, void *a6)
{
  v11 = a4;
  v12 = a6;
  if (!a1)
  {
LABEL_7:
    v13 = 0;
    goto LABEL_8;
  }

  if ((sub_1000629A8(a1, a2, a3, 200, v11, a5, v12) & 1) == 0)
  {
    v14 = ne_log_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *v16 = 0;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to handle CellularServices exception - Data policies", v16, 2u);
    }

    goto LABEL_7;
  }

  v13 = 1;
LABEL_8:

  return v13;
}

void sub_1000634E0(void *a1, unsigned int *a2, void *a3, uint64_t *a4, int a5)
{
  v8 = a3;
  v9 = [v8 alwaysOnVPN];

  v154 = a5;
  v10 = 100;
  if (a5)
  {
    v10 = 400;
  }

  v152 = v9;
  v153 = v10;
  if (v9)
  {
    v11 = [v8 alwaysOnVPN];
    v12 = [v11 serviceExceptions];

    if (v12)
    {
      v13 = ne_log_obj();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = [v8 alwaysOnVPN];
        v15 = [v14 serviceExceptions];
        *buf = 138412290;
        v156 = v15;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Service Exceptions %@", buf, 0xCu);
      }

      v16 = v8;
      objc_opt_self();
      v17 = [v16 alwaysOnVPN];

      v18 = [v17 serviceExceptions];
      v19 = [v18 objectForKeyedSubscript:@"AirPrint"];

      if (v19)
      {
        v147 = [v19 action];
      }

      else
      {
        v147 = 0;
      }

      v29 = sub_1000627E0(NEPolicySession, v16);
      v149 = sub_100062878(NEPolicySession, v16);
      v28 = sub_100062910(NEPolicySession, v16);
      v42 = [v16 alwaysOnVPN];
      v27 = [v42 applicationExceptions];

      v43 = [v16 alwaysOnVPN];
      v44 = [v43 serviceExceptions];
      v45 = [v44 objectForKeyedSubscript:@"AirDrop"];
      if (v45)
      {

LABEL_21:
        v54 = ne_log_obj();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v156 = "[NEPolicySession(AlwaysOnVPN) addServiceExceptionsWithOrder:configuration:IMSUseIPSec:dropAllLevel:isHighPriority:]";
          _os_log_error_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "%s: AirDrop / AirPlay Service Exception not supported yet", buf, 0xCu);
        }

        goto LABEL_24;
      }

      v46 = [v16 alwaysOnVPN];
      [v46 serviceExceptions];
      v144 = v28;
      v47 = a2;
      v48 = a1;
      v49 = v8;
      v50 = v29;
      v52 = v51 = v27;
      v53 = [v52 objectForKeyedSubscript:@"AirPlay"];

      v27 = v51;
      v29 = v50;
      v8 = v49;
      a1 = v48;
      a2 = v47;
      v28 = v144;

      if (v53)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v27 = 0;
      v147 = 0;
      v149 = 0;
      v28 = 0;
      v29 = 0;
    }

LABEL_24:
    v41 = 1;
    v36 = 1;
    goto LABEL_25;
  }

  v20 = [v8 VPN];
  v21 = [v20 protocol];
  v22 = [v21 excludeLocalNetworks];

  if (v22)
  {
    v23 = [v8 VPN];
    v24 = [v23 protocol];
    v25 = [v24 excludeDeviceCommunication];

    v26 = v25 ^ 1;
    v147 = 1;
  }

  else
  {
    v26 = 0;
    v147 = 0;
  }

  v30 = v22 ^ 1;
  v31 = [v8 VPN];
  v32 = [v31 protocol];
  v33 = [v32 excludeCellularServices];

  v29 = v33;
  v34 = [v8 VPN];
  v35 = [v34 protocol];
  LOBYTE(v33) = [v35 excludeAPNs];

  v36 = v33 ^ 1;
  v37 = [v8 VPN];
  v38 = [v37 protocol];
  v39 = [v38 excludeDeviceCommunication];

  v40 = v39 == 0;
  v41 = v30;
  if (v40)
  {
    v28 = v26;
  }

  else
  {
    v28 = 1;
  }

  v27 = 0;
  v149 = v29;
LABEL_25:
  if ((v154 & 1) == 0)
  {
    v150 = v27;
    if (v36)
    {
      goto LABEL_66;
    }

    v73 = v41;
    v74 = v28;
    v75 = ne_log_obj();
    if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v156 = "Control";
      _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_INFO, "Installing VPN Service Exceptions <APNS> - priority %s", buf, 0xCu);
    }

    v76 = +[NEPolicyResult pass];
    v77 = [NEProcessInfo copyUUIDsForExecutable:@"/System/Library/PrivateFrameworks/ApplePushService.framework/apsd"];
    v78 = ne_log_obj();
    v79 = v78;
    if (v77)
    {
      if (os_log_type_enabled(v78, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v156 = "[NEPolicySession(AlwaysOnVPN) addAPSDExceptionWithOrder:action:]";
        v157 = 2112;
        v158 = v76;
        v159 = 2112;
        v160 = @"APSD";
        _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_INFO, "%s: Adding %@ Exceptions policy for %@", buf, 0x20u);
      }

      if (sub_10005F304(a1, a2, 1, 0, v77, 1, 0, 0, 0, 0, 0, v76, 0, 0, 0))
      {

LABEL_65:
        v28 = v74;

        v41 = v73;
LABEL_66:
        v83 = v147;
        if ((v41 & 1) == 0)
        {
          v142 = v41;
          v145 = v28;
          v84 = ne_log_obj();
          if (os_log_type_enabled(v84, OS_LOG_TYPE_INFO))
          {
            *buf = 136315138;
            v156 = "Control";
            _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_INFO, "Installing VPN Service Exceptions <Sharingd> - priority %s", buf, 0xCu);
          }

          v85 = +[NEPolicyResult pass];
          v86 = [NEProcessInfo copyUUIDsForExecutable:@"/usr/libexec/sharingd"];
          v87 = ne_log_obj();
          v88 = v87;
          if (v86)
          {
            v138 = v29;
            v140 = v8;
            if (os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
            {
              *v167 = 136315650;
              v168 = "[NEPolicySession(AlwaysOnVPN) addSharingdExceptionWithOrder:action:]";
              v169 = 2112;
              v170 = v85;
              v171 = 2112;
              v172 = @"sharingd";
              _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_INFO, "%s: Adding %@ Exceptions policy for %@", v167, 0x20u);
            }

            v165 = 0u;
            v166 = 0u;
            v163 = 0u;
            v164 = 0u;
            v88 = v86;
            v89 = [v88 countByEnumeratingWithState:&v163 objects:buf count:16];
            if (v89)
            {
              v90 = v89;
              v91 = *v164;
              while (2)
              {
                for (i = 0; i != v90; i = i + 1)
                {
                  if (*v164 != v91)
                  {
                    objc_enumerationMutation(v88);
                  }

                  v93 = *(*(&v163 + 1) + 8 * i);
                  if (!sub_1000601E0(a1, a2, 0, v93, @"8770", 1) || !sub_1000601E0(a1, a2, 0, v93, @"8770", 0))
                  {
                    v29 = v138;
                    v8 = v140;
                    goto LABEL_85;
                  }
                }

                v90 = [v88 countByEnumeratingWithState:&v163 objects:buf count:16];
                if (v90)
                {
                  continue;
                }

                break;
              }
            }

            v29 = v138;
            v8 = v140;
            v28 = v145;
            v83 = v147;
          }

          else
          {
            if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
            {
              *v167 = 136315394;
              v168 = "[NEPolicySession(AlwaysOnVPN) addSharingdExceptionWithOrder:action:]";
              v169 = 2112;
              v170 = @"sharingd";
              _os_log_error_impl(&_mh_execute_header, v88, OS_LOG_TYPE_ERROR, "%s: failed to get UUIDs for %@ daemon", v167, 0x16u);
            }

LABEL_85:

            v94 = ne_log_obj();
            v83 = v147;
            if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&_mh_execute_header, v94, OS_LOG_TYPE_ERROR, "Failed to handle sharingd-8770 exception", buf, 2u);
            }

            v28 = v145;
          }

          v41 = v142;
        }

        v27 = v150;
        if (!v83)
        {
          goto LABEL_131;
        }

        v95 = ne_log_obj();
        if (os_log_type_enabled(v95, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v156 = "Control";
          _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_INFO, "Installing VPN Service Exceptions <AirPrint> - priority %s", buf, 0xCu);
        }

        if (v83 == 2)
        {
          v143 = v41;
          v139 = v29;
          v141 = v8;
          v97 = +[NEPolicyResult drop];
        }

        else
        {
          if (v83 != 1)
          {
            goto LABEL_131;
          }

          v96 = ne_log_obj();
          if (os_log_type_enabled(v96, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315138;
            v156 = "[NEPolicySession(AlwaysOnVPN) addAirPrintExceptionWithOrder:action:isAOVPN:]";
            _os_log_debug_impl(&_mh_execute_header, v96, OS_LOG_TYPE_DEBUG, "%s: Adding pass policy for Bonjour traffic", buf, 0xCu);
          }

          if ((sub_10006058C(a1, a2) & 1) == 0)
          {
LABEL_129:
            v71 = ne_log_obj();
            if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              v72 = "Failed to handle AirPrint exception";
              goto LABEL_174;
            }

LABEL_130:

            goto LABEL_131;
          }

          v139 = v29;
          v141 = v8;
          v97 = +[NEPolicyResult pass];
          v143 = v41;
          if (v152)
          {
            v98 = [[NSUUID alloc] initWithUUIDBytes:&unk_1000C2D20];
            v148 = [NEPolicyResult removeNetworkAgentUUID:v98];

            goto LABEL_101;
          }
        }

        v148 = 0;
LABEL_101:
        v146 = v28;
        v99 = +[NEPolicyCondition allInterfaces];
        *&v163 = v99;
        v100 = +[NEPolicyCondition entitlement];
        *(&v163 + 1) = v100;
        v101 = [NEPolicyCondition accountIdentifier:@"com.apple.PrintKit.PrinterTool"];
        *&v164 = v101;
        v102 = [NSArray arrayWithObjects:&v163 count:3];

        v103 = [NEPolicy alloc];
        v104 = v97;
        v105 = v97;
        v106 = v102;
        v136 = [v103 initWithOrder:*a2 result:v105 conditions:v102];
        v107 = ne_log_obj();
        if (os_log_type_enabled(v107, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315906;
          v156 = "[NEPolicySession(AlwaysOnVPN) addAirPrintExceptionWithOrder:action:isAOVPN:]";
          v157 = 2112;
          v158 = v148;
          v159 = 2080;
          v160 = "com.apple.PrintKit.PrinterTool";
          v161 = 1024;
          v162 = 0;
          _os_log_debug_impl(&_mh_execute_header, v107, OS_LOG_TYPE_DEBUG, "%s: Adding policy %@ for account id %s (priority %d)", buf, 0x26u);
        }

        v108 = [[NEPolicy alloc] initWithOrder:*a2 result:v148 conditions:v102];
        v109 = [a1 addPolicy:v108];
        is_debug_logging_enabled = nelog_is_debug_logging_enabled();
        v111 = ne_log_obj();
        v112 = v111;
        v137 = v102;
        if (v109)
        {
          v8 = v141;
          if (is_debug_logging_enabled)
          {
            if (os_log_type_enabled(v111, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v156 = v108;
              _os_log_debug_impl(&_mh_execute_header, v112, OS_LOG_TYPE_DEBUG, "Added policy: %@", buf, 0xCu);
            }
          }

          else if (os_log_type_enabled(v111, OS_LOG_TYPE_INFO))
          {
            v114 = [v108 descriptionWithIndent:0 options:2];
            *buf = 138412290;
            v156 = v114;
            _os_log_impl(&_mh_execute_header, v112, OS_LOG_TYPE_INFO, "Added policy: %@", buf, 0xCu);
          }

          ++*a2;
          v115 = ne_log_obj();
          if (os_log_type_enabled(v115, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315906;
            v156 = "[NEPolicySession(AlwaysOnVPN) addAirPrintExceptionWithOrder:action:isAOVPN:]";
            v157 = 2112;
            v158 = v104;
            v159 = 2080;
            v160 = "com.apple.PrintKit.PrinterTool";
            v161 = 1024;
            v162 = 0;
            _os_log_debug_impl(&_mh_execute_header, v115, OS_LOG_TYPE_DEBUG, "%s: Adding policy %@ for account id %s (priority %d)", buf, 0x26u);
          }

          v108 = [[NEPolicy alloc] initWithOrder:*a2 result:v104 conditions:v106];
          v116 = [a1 addPolicy:v108];
          v117 = nelog_is_debug_logging_enabled();
          v118 = ne_log_obj();
          v112 = v118;
          if (v116)
          {
            v27 = v150;
            if (v117)
            {
              if (os_log_type_enabled(v118, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v156 = v108;
                _os_log_debug_impl(&_mh_execute_header, v112, OS_LOG_TYPE_DEBUG, "Added policy: %@", buf, 0xCu);
              }
            }

            else if (os_log_type_enabled(v118, OS_LOG_TYPE_INFO))
            {
              v120 = [v108 descriptionWithIndent:0 options:2];
              *buf = 138412290;
              v156 = v120;
              _os_log_impl(&_mh_execute_header, v112, OS_LOG_TYPE_INFO, "Added policy: %@", buf, 0xCu);
            }

            ++*a2;
            v29 = v139;
            v28 = v146;
            v41 = v143;
            goto LABEL_131;
          }

          v119 = os_log_type_enabled(v118, OS_LOG_TYPE_ERROR);
          v27 = v150;
          if (v117)
          {
            if (v119)
            {
              *buf = 138412290;
              v156 = v108;
              goto LABEL_121;
            }

            goto LABEL_128;
          }

          if (!v119)
          {
            goto LABEL_128;
          }
        }

        else
        {
          v113 = os_log_type_enabled(v111, OS_LOG_TYPE_ERROR);
          v8 = v141;
          if (is_debug_logging_enabled)
          {
            v27 = v150;
            if (v113)
            {
              *buf = 138412290;
              v156 = v108;
LABEL_121:
              _os_log_error_impl(&_mh_execute_header, v112, OS_LOG_TYPE_ERROR, "Failed to add policy: %@", buf, 0xCu);
            }

LABEL_128:

            v29 = v139;
            v28 = v146;
            v41 = v143;
            goto LABEL_129;
          }

          v27 = v150;
          if (!v113)
          {
            goto LABEL_128;
          }
        }

        v135 = [v108 descriptionWithIndent:0 options:2];
        *buf = 138412290;
        v156 = v135;
        _os_log_error_impl(&_mh_execute_header, v112, OS_LOG_TYPE_ERROR, "Failed to add policy: %@", buf, 0xCu);

        goto LABEL_128;
      }

      v79 = ne_log_obj();
      if (!os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
      {
LABEL_63:

        v76 = ne_log_obj();
        if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v76, OS_LOG_TYPE_ERROR, "Failed to handle APNS exception", buf, 2u);
        }

        goto LABEL_65;
      }

      *buf = 136315650;
      v156 = "[NEPolicySession(AlwaysOnVPN) addAPSDExceptionWithOrder:action:]";
      v157 = 2112;
      v158 = v76;
      v159 = 2112;
      v160 = @"APSD";
      v80 = "%s: Failed to add %@ policy for %@";
      v81 = v79;
      v82 = 32;
    }

    else
    {
      if (!os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_63;
      }

      *buf = 136315394;
      v156 = "[NEPolicySession(AlwaysOnVPN) addAPSDExceptionWithOrder:action:]";
      v157 = 2112;
      v158 = @"APSD";
      v80 = "%s: failed to get UUIDs for %@ daemon";
      v81 = v79;
      v82 = 22;
    }

    _os_log_error_impl(&_mh_execute_header, v81, OS_LOG_TYPE_ERROR, v80, buf, v82);
    goto LABEL_63;
  }

  v55 = ne_log_obj();
  if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_INFO, "Installing VPN icmpv6 Exceptions - policies at High Priority", buf, 2u);
  }

  v56 = +[NEPolicyResult pass];
  v57 = sub_10005F888(a1, a2, v56, 0);

  if (!v57)
  {
    v58 = ne_log_obj();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v58, OS_LOG_TYPE_ERROR, "Failed to add icmpv6 exception - policies at High Priority", buf, 2u);
    }
  }

  if (!v152)
  {
    v59 = v41;
    v60 = ne_log_obj();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v156 = "High";
      _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_INFO, "Installing VPN NonRankedInterfaces Exceptions - priority %s", buf, 0xCu);
    }

    v61 = [v8 VPN];
    v62 = [v61 protocol];
    v63 = [v62 excludeLocalNetworks];
    v64 = &off_1000EE508;
    if (v63)
    {
      v64 = 0;
    }

    v65 = v64;

    v66 = *a2;
    v67 = +[NEPolicyResult pass];
    sub_100064C40(a1, v66, v65, v67, 0);

    v41 = v59;
  }

  if (v149)
  {
    v68 = ne_log_obj();
    if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v156 = "High";
      _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_INFO, "Installing VPN Service Exceptions <VoiceMail> - priority %s", buf, 0xCu);
    }

    if ((sub_100060C48(a1, a2, v149, 1, v152 != 0, 0) & 1) == 0)
    {
      v69 = ne_log_obj();
      if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v69, OS_LOG_TYPE_ERROR, "Failed to handle VoiceMail exception - policies at High Priority", buf, 2u);
      }
    }
  }

  if (v27 && [v27 count])
  {
    v70 = ne_log_obj();
    if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v156 = "High";
      _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_INFO, "Installing VPN Service Exceptions <Application> - priority %s", buf, 0xCu);
    }

    if ((sub_1000612AC(a1, a2, v27, 0, 400, v152 != 0, 0) & 1) == 0)
    {
      v71 = ne_log_obj();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v72 = "Failed to add application exceptions";
LABEL_174:
        _os_log_error_impl(&_mh_execute_header, v71, OS_LOG_TYPE_ERROR, v72, buf, 2u);
        goto LABEL_130;
      }

      goto LABEL_130;
    }
  }

LABEL_131:
  if ((v41 & 1) == 0)
  {
    v121 = ne_log_obj();
    if (os_log_type_enabled(v121, OS_LOG_TYPE_INFO))
    {
      v122 = "Control";
      if (v154)
      {
        v122 = "High";
      }

      *buf = 136315138;
      v156 = v122;
      _os_log_impl(&_mh_execute_header, v121, OS_LOG_TYPE_INFO, "Installing VPN Service Exceptions <LocalNetworks> for %s priority", buf, 0xCu);
    }

    if ((sub_10006197C(a1, a2, 0, v153, 0) & 1) == 0)
    {
      v123 = ne_log_obj();
      if (os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
      {
        v134 = "Control";
        if (v154)
        {
          v134 = "High";
        }

        *buf = 136315138;
        v156 = v134;
        _os_log_error_impl(&_mh_execute_header, v123, OS_LOG_TYPE_ERROR, "Failed to handle local networks exception for %s priority", buf, 0xCu);
      }
    }

    *a4 = 3;
  }

  if (v28)
  {
    v124 = ne_log_obj();
    if (os_log_type_enabled(v124, OS_LOG_TYPE_INFO))
    {
      v125 = "Control";
      if (v154)
      {
        v125 = "High";
      }

      *buf = 136315138;
      v156 = v125;
      _os_log_impl(&_mh_execute_header, v124, OS_LOG_TYPE_INFO, "Installing VPN Service Exceptions <DeviceCommunication> for %s priority", buf, 0xCu);
    }

    if (!sub_100061E40(a1, a2, 0, v153, 0))
    {
      v126 = ne_log_obj();
      if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
      {
        v132 = "Control";
        if (v154)
        {
          v132 = "High";
        }

        *buf = 136315138;
        v156 = v132;
        _os_log_error_impl(&_mh_execute_header, v126, OS_LOG_TYPE_ERROR, "Failed to handle device communication exception for %s priority", buf, 0xCu);
      }
    }

    *a4 = 3;
  }

  if (v29)
  {
    v127 = ne_log_obj();
    if (os_log_type_enabled(v127, OS_LOG_TYPE_INFO))
    {
      v128 = "Control";
      if (v154)
      {
        v128 = "High";
      }

      *buf = 136315138;
      v156 = v128;
      _os_log_impl(&_mh_execute_header, v127, OS_LOG_TYPE_INFO, "Installing VPN Service Exceptions <CellularServices> for %s priority", buf, 0xCu);
    }

    if (sub_1000629A8(a1, a2, v29, v153, 0, v152 != 0, 0))
    {
      if (a4)
      {
        v129 = 2;
        if (v29 == 1)
        {
          v129 = 3;
        }

        *a4 = v129;
      }
    }

    else
    {
      v130 = ne_log_obj();
      if (os_log_type_enabled(v130, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v130, OS_LOG_TYPE_ERROR, "Failed to handle CellularServices exception - Control policies", buf, 2u);
      }

      v131 = ne_log_obj();
      if (os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
      {
        v133 = "Control";
        if (v154)
        {
          v133 = "High";
        }

        *buf = 136315138;
        v156 = v133;
        _os_log_error_impl(&_mh_execute_header, v131, OS_LOG_TYPE_ERROR, "Failed to handle CellularServices exception for %s priority", buf, 0xCu);
      }
    }
  }
}

void sub_100064C40(void *a1, unsigned int a2, void *a3, void *a4, void *a5)
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v52 = a1;
  if (!a1)
  {
    goto LABEL_18;
  }

  v53 = 0;
  v12 = nwi_state_copy();
  if (!v12)
  {
    v14 = 0;
    goto LABEL_8;
  }

  interface_names = nwi_state_get_interface_names();
  v14 = interface_names;
  if (!interface_names)
  {
LABEL_8:
    v15 = 0;
    goto LABEL_9;
  }

  v15 = malloc_type_calloc(interface_names, 8uLL, 0x50040EE9192B6uLL);
  if (v15)
  {
    v14 = nwi_state_get_interface_names();
    if (v14)
    {
      goto LABEL_9;
    }

    free(v15);
    goto LABEL_8;
  }

  v14 = 0;
LABEL_9:
  v16 = objc_alloc_init(NSMutableDictionary);
  if (v9 && [v9 count])
  {
    [v16 addEntriesFromDictionary:v9];
  }

  if (getifaddrs(&v53))
  {
    if (!v15)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v49 = a2;
  v18 = v53;
  if (!v53)
  {
    v42 = 0;
LABEL_51:
    freeifaddrs(v42);
    if (!v15)
    {
      goto LABEL_15;
    }

LABEL_14:
    free(v15);
LABEL_15:
    if (v12)
    {
      nwi_state_release();
    }

    goto LABEL_17;
  }

  v50 = v11;
  v46 = v9;
  if (v14)
  {
    v19 = v15 == 0;
  }

  else
  {
    v19 = 1;
  }

  v20 = !v19;
  v21 = v14;
  *&v17 = 138412290;
  v45 = v17;
  v47 = v14;
  v48 = v10;
  while (1)
  {
    ifa_name = v18->ifa_name;
    if (ifa_name && *ifa_name)
    {
      sa_family = v18->ifa_addr->sa_family;
      if (sa_family == 30 || sa_family == 2)
      {
        v25 = v21;
        v26 = v15;
        if (v20)
        {
          while (strcmp(ifa_name, *v26))
          {
            ++v26;
            if (!--v25)
            {
              goto LABEL_37;
            }
          }

          goto LABEL_47;
        }

LABEL_37:
        v27 = [NSString stringWithUTF8String:ifa_name, v45];
        v28 = [v16 objectForKeyedSubscript:v27];

        if (!v28)
        {
          break;
        }
      }
    }

LABEL_47:
    v18 = v18->ifa_next;
    if (!v18)
    {
      v42 = v53;
      v9 = v46;
      v11 = v50;
      goto LABEL_51;
    }
  }

  v29 = [NSString stringWithUTF8String:v18->ifa_name];
  v30 = [NEPolicyCondition scopedInterface:v29];

  v31 = objc_alloc_init(NSMutableArray);
  v51 = v30;
  v56 = v30;
  v32 = [NSArray arrayWithObjects:&v56 count:1];
  v33 = [v31 arrayByAddingObjectsFromArray:v32];

  v34 = [[NEPolicy alloc] initWithOrder:v49 result:v10 conditions:v33];
  v35 = [v52 addPolicy:v34];
  is_debug_logging_enabled = nelog_is_debug_logging_enabled();
  v37 = ne_log_obj();
  v38 = v37;
  if (v35)
  {
    if (is_debug_logging_enabled)
    {
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        *buf = v45;
        v55 = v34;
        _os_log_debug_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEBUG, "Added policy: %@", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      v39 = [v34 descriptionWithIndent:0 options:2];
      *buf = v45;
      v55 = v39;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "Added policy: %@", buf, 0xCu);
    }

    if (v50)
    {
      v40 = [NSNumber numberWithUnsignedInteger:v35];
      [v50 addObject:v40];
    }

    v41 = [NSString stringWithUTF8String:v18->ifa_name];
    [v16 setObject:&off_1000EE348 forKeyedSubscript:v41];

    v21 = v47;
    v10 = v48;
    goto LABEL_47;
  }

  v43 = os_log_type_enabled(v37, OS_LOG_TYPE_ERROR);
  if (is_debug_logging_enabled)
  {
    v11 = v50;
    if (v43)
    {
      *buf = v45;
      v55 = v34;
      _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "Failed to add policy: %@", buf, 0xCu);
    }
  }

  else
  {
    v11 = v50;
    if (v43)
    {
      v44 = [v34 descriptionWithIndent:0 options:2];
      *buf = v45;
      v55 = v44;
      _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "Failed to add policy: %@", buf, 0xCu);

      v11 = v50;
    }
  }

  v9 = v46;
  v10 = v48;
LABEL_17:

LABEL_18:
}

BOOL sub_100065148(void *a1, void *a2, unsigned int *a3, int a4, char a5, void *a6, void *a7, int a8, void *a9, unsigned __int8 a10, unsigned __int8 a11)
{
  v16 = a2;
  v17 = a6;
  v18 = a7;
  v19 = a9;
  v96 = a1;
  if (!a1)
  {
    v101 = 0;
    goto LABEL_96;
  }

  if (v18)
  {
    if (a8)
    {
LABEL_4:
      v20 = [[NSUUID alloc] initWithUUIDBytes:&unk_1000C2D20];
      v21 = [NEPolicyResult removeNetworkAgentUUID:v20];

      goto LABEL_7;
    }
  }

  else
  {
    v18 = +[NEPolicyResult pass];
    if (a8)
    {
      goto LABEL_4;
    }
  }

  v21 = 0;
LABEL_7:
  v22 = a10;
  if (!a4)
  {
    goto LABEL_51;
  }

  v23 = [NEProcessInfo copyUUIDsForBundleID:@"com.apple.WebSheet" uid:0];
  v24 = ne_log_obj();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    buf = 136315650;
    v114 = "[NEPolicySession(AlwaysOnVPN) addAllowedCaptiveNetworkPluginsWithResult:order:allowCaptiveWebSheet:allowAllCaptiveNetworkPlugins:allowedCaptiveNetworkPlugins:result:isAOVPN:policyIDList:incrementOrder:checkEntitlement:]";
    v115 = 2112;
    v116 = @"com.apple.WebSheet";
    v117 = 2112;
    v118 = v23;
    _os_log_debug_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "%s: UUIDs for %@ - %@", &buf, 0x20u);
  }

  v98 = v23;

  v25 = [NEProcessInfo copyUUIDsForBundleID:@"com.apple.WebKit.Networking" uid:0];
  v26 = ne_log_obj();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    buf = 136315650;
    v114 = "[NEPolicySession(AlwaysOnVPN) addAllowedCaptiveNetworkPluginsWithResult:order:allowCaptiveWebSheet:allowAllCaptiveNetworkPlugins:allowedCaptiveNetworkPlugins:result:isAOVPN:policyIDList:incrementOrder:checkEntitlement:]";
    v115 = 2112;
    v116 = @"com.apple.WebKit.Networking";
    v117 = 2112;
    v118 = v25;
    _os_log_debug_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "%s: UUIDs for %@ - %@", &buf, 0x20u);
  }

  v89 = v16;

  if (v25 && [(__CFString *)v25 count])
  {
    v27 = v25;
    v28 = v98;
    if (!v98)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v27 = [NEProcessInfo copyUUIDsForExecutable:@"/System/Library/Frameworks/WebKit.framework/XPCServices/com.apple.WebKit.Networking.xpc/com.apple.WebKit.Networking"];

    v29 = ne_log_obj();
    v28 = v98;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      buf = 136315650;
      v114 = "[NEPolicySession(AlwaysOnVPN) addAllowedCaptiveNetworkPluginsWithResult:order:allowCaptiveWebSheet:allowAllCaptiveNetworkPlugins:allowedCaptiveNetworkPlugins:result:isAOVPN:policyIDList:incrementOrder:checkEntitlement:]";
      v115 = 2112;
      v116 = @"/System/Library/Frameworks/WebKit.framework/XPCServices/com.apple.WebKit.Networking.xpc/com.apple.WebKit.Networking";
      v117 = 2112;
      v118 = v27;
      _os_log_debug_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "%s: UUIDs for %@ - %@", &buf, 0x20u);
    }

    if (!v98)
    {
      goto LABEL_40;
    }
  }

  if (v27)
  {
    v93 = v27;
    v30 = ne_log_obj();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      buf = 136315650;
      v114 = "[NEPolicySession(AlwaysOnVPN) addAllowedCaptiveNetworkPluginsWithResult:order:allowCaptiveWebSheet:allowAllCaptiveNetworkPlugins:allowedCaptiveNetworkPlugins:result:isAOVPN:policyIDList:incrementOrder:checkEntitlement:]";
      v115 = 2112;
      v116 = v18;
      v117 = 2112;
      v118 = @"com.apple.WebSheet";
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "%s: Adding %@ policy for %@", &buf, 0x20u);
    }

    v28 = v98;
    if ((sub_10005F304(v96, a3, a10, 0, v98, a11, 0, 0, 0, 1, 0, v18, v21, 0, v19) & 1) == 0)
    {
      v47 = ne_log_obj();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        buf = 136315650;
        v114 = "[NEPolicySession(AlwaysOnVPN) addAllowedCaptiveNetworkPluginsWithResult:order:allowCaptiveWebSheet:allowAllCaptiveNetworkPlugins:allowedCaptiveNetworkPlugins:result:isAOVPN:policyIDList:incrementOrder:checkEntitlement:]";
        v115 = 2112;
        v116 = v18;
        v117 = 2112;
        v118 = @"com.apple.WebSheet";
        _os_log_error_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "%s: Failed to add %@ policy for %@", &buf, 0x20u);
      }

      v101 = 0;
      goto LABEL_44;
    }

    v80 = v17;
    v78 = a8;
    v91 = v98;
    v31 = v27;
    v32 = v19;
    v33 = v18;
    v86 = v21;
    v34 = v21;
    v76 = v32;
    v35 = v32;
    v36 = +[NEProcessInfo copyDNSUUIDs];
    v88 = v31;
    if (v36)
    {
      v111 = 0u;
      v112 = 0u;
      memset(v110, 0, sizeof(v110));
      obj = v31;
      v74 = [(__CFString *)obj countByEnumeratingWithState:v110 objects:&buf count:16];
      if (v74)
      {
        v37 = *v110[2];
        v82 = v18;
        v73 = *v110[2];
        do
        {
          v38 = 0;
          do
          {
            if (*v110[2] != v37)
            {
              objc_enumerationMutation(obj);
            }

            v75 = v38;
            v39 = *(v110[1] + 8 * v38);
            v102 = 0u;
            v103 = 0u;
            v104 = 0u;
            v105 = 0u;
            v40 = v91;
            v41 = [(__CFString *)v40 countByEnumeratingWithState:&v102 objects:&v106 count:16];
            if (v41)
            {
              v42 = v41;
              v43 = *v103;
              while (2)
              {
                for (i = 0; i != v42; i = i + 1)
                {
                  if (*v103 != v43)
                  {
                    objc_enumerationMutation(v40);
                  }

                  if ((sub_10005E650(v96, a3, *(*(&v102 + 1) + 8 * i), v39, a11, 0, 0, v36, 0, 0, 0, 1, 0, v33, v34, 0, v35, a10) & 1) == 0)
                  {

                    v46 = 0;
                    v16 = v89;
                    v17 = v80;
                    v18 = v82;
                    goto LABEL_48;
                  }
                }

                v42 = [(__CFString *)v40 countByEnumeratingWithState:&v102 objects:&v106 count:16];
                if (v42)
                {
                  continue;
                }

                break;
              }
            }

            v38 = v75 + 1;
            v16 = v89;
            v17 = v80;
            v18 = v82;
            v37 = v73;
          }

          while ((v75 + 1) != v74);
          v45 = [(__CFString *)obj countByEnumeratingWithState:v110 objects:&buf count:16];
          v37 = v73;
          v46 = 1;
          v74 = v45;
        }

        while (v45);
      }

      else
      {
        v46 = 1;
        v17 = v80;
      }

LABEL_48:
    }

    else
    {
      v46 = 0;
      v17 = v80;
    }

    if ((v46 & 1) == 0)
    {
      v72 = ne_log_obj();
      v21 = v86;
      if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
      {
        buf = 136315650;
        v114 = "[NEPolicySession(AlwaysOnVPN) addAllowedCaptiveNetworkPluginsWithResult:order:allowCaptiveWebSheet:allowAllCaptiveNetworkPlugins:allowedCaptiveNetworkPlugins:result:isAOVPN:policyIDList:incrementOrder:checkEntitlement:]";
        v115 = 2112;
        v116 = v33;
        v117 = 2112;
        v118 = @"com.apple.WebSheet";
        _os_log_error_impl(&_mh_execute_header, v72, OS_LOG_TYPE_ERROR, "%s: Failed to add %@ com.apple.WebKit.Networking policy for %@", &buf, 0x20u);
      }

      v101 = 0;
      v19 = v76;
      v28 = v98;
      v27 = v93;
      goto LABEL_44;
    }

    v19 = v76;
    v21 = v86;
    v22 = a10;
    a8 = v78;
LABEL_51:
    if ((a5 & 1) != 0 || v17 && [v17 count])
    {
      if (v16)
      {
        v48 = v16;
        v49 = v17;
        v50 = v18;
        v79 = v19;
        obja = v50;
        if (!v50)
        {
          obja = +[NEPolicyResult pass];
        }

        v87 = v21;
        v83 = v18;
        v95 = v22;
        if (a8)
        {
          v51 = [[NSUUID alloc] initWithUUIDBytes:&unk_1000C2D20];
          v52 = [NEPolicyResult removeNetworkAgentUUID:v51];
        }

        else
        {
          v52 = 0;
        }

        v55 = v79;
        v108 = 0u;
        v109 = 0u;
        v106 = 0u;
        v107 = 0u;
        v56 = v48;
        v57 = [v56 countByEnumeratingWithState:&v106 objects:&buf count:16];
        v58 = obja;
        if (v57)
        {
          v59 = v57;
          v77 = v19;
          v81 = v17;
          v90 = v16;
          v60 = 0;
          v99 = *v107;
          v61 = v56;
          v92 = v49;
          v94 = v56;
          while (2)
          {
            for (j = 0; j != v59; j = j + 1)
            {
              v63 = v60;
              if (*v107 != v99)
              {
                objc_enumerationMutation(v61);
              }

              v60 = *(*(&v106 + 1) + 8 * j);

              if ((a5 & 1) == 0)
              {
                if (!v49)
                {
                  continue;
                }

                v64 = [v49 objectForKeyedSubscript:v60];

                if (!v64)
                {
                  continue;
                }
              }

              v65 = [NEProcessInfo copyUUIDsForBundleID:v60 uid:0];
              v66 = v65;
              if (v65 && [v65 count])
              {
                v67 = ne_log_obj();
                if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
                {
                  LODWORD(v110[0]) = 136315906;
                  *(v110 + 4) = "[NEPolicySession(AlwaysOnVPN) addRegisteredCNP:order:allowAllCaptiveNetworkPlugins:allowedCaptiveNetworkPlugins:result:isAOVPN:policyIDList:incrementOrder:]";
                  WORD2(v110[1]) = 2112;
                  *(&v110[1] + 6) = obja;
                  HIWORD(v110[2]) = 2112;
                  v110[3] = v60;
                  LOWORD(v111) = 2112;
                  *(&v111 + 2) = v66;
                  _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_INFO, "%s: Adding %@ policy for %@, UUIDs %@", v110, 0x2Au);
                }

                if ((sub_10005F304(v96, a3, v95, 0, v66, 1, 0, 0, 0, 0, 0, obja, v52, 0, v79) & 1) == 0)
                {
                  v69 = ne_log_obj();
                  if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
                  {
                    LODWORD(v110[0]) = 136315650;
                    *(v110 + 4) = "[NEPolicySession(AlwaysOnVPN) addRegisteredCNP:order:allowAllCaptiveNetworkPlugins:allowedCaptiveNetworkPlugins:result:isAOVPN:policyIDList:incrementOrder:]";
                    WORD2(v110[1]) = 2112;
                    v58 = obja;
                    *(&v110[1] + 6) = obja;
                    HIWORD(v110[2]) = 2112;
                    v110[3] = v60;
                    _os_log_error_impl(&_mh_execute_header, v69, OS_LOG_TYPE_ERROR, "%s: Failed to add %@ policy for %@", v110, 0x20u);
                    v16 = v90;
                    v19 = v77;
                    v21 = v87;
                  }

                  else
                  {
                    v16 = v90;
                    v19 = v77;
                    v58 = obja;
                    v21 = v87;
                  }

                  v49 = v92;
                  v55 = v79;
LABEL_93:

                  LOBYTE(v110[0]) = 0;
                  v56 = v94;

                  v17 = v81;
                  goto LABEL_94;
                }

                v49 = v92;
                v61 = v94;
                if ((sub_10005F304(v96, a3, v95, 0, v66, 0, @"com.apple.developer.networking.HotspotHelper", 0, 0, 0, 0, obja, v52, 0, v79) & 1) == 0)
                {
                  v69 = ne_log_obj();
                  if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
                  {
                    LODWORD(v110[0]) = 136315650;
                    *(v110 + 4) = "[NEPolicySession(AlwaysOnVPN) addRegisteredCNP:order:allowAllCaptiveNetworkPlugins:allowedCaptiveNetworkPlugins:result:isAOVPN:policyIDList:incrementOrder:]";
                    WORD2(v110[1]) = 2112;
                    *(&v110[1] + 6) = obja;
                    HIWORD(v110[2]) = 2112;
                    v110[3] = v60;
                    _os_log_error_impl(&_mh_execute_header, v69, OS_LOG_TYPE_ERROR, "%s: Failed to add %@ policy (custom captive entitlement) for %@", v110, 0x20u);
                  }

                  v16 = v90;
                  v19 = v77;
                  v21 = v87;
                  goto LABEL_93;
                }
              }

              else
              {
                v68 = ne_log_obj();
                if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
                {
                  LODWORD(v110[0]) = 136315394;
                  *(v110 + 4) = "[NEPolicySession(AlwaysOnVPN) addRegisteredCNP:order:allowAllCaptiveNetworkPlugins:allowedCaptiveNetworkPlugins:result:isAOVPN:policyIDList:incrementOrder:]";
                  WORD2(v110[1]) = 2112;
                  *(&v110[1] + 6) = v60;
                  _os_log_debug_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEBUG, "%s: Plugin %@ does not exist, may have been uninstalled", v110, 0x16u);
                }
              }
            }

            v59 = [v61 countByEnumeratingWithState:&v106 objects:&buf count:16];
            if (v59)
            {
              continue;
            }

            break;
          }

          v16 = v90;
          v56 = v61;
          v17 = v81;
          v19 = v77;
        }

        LOBYTE(v110[0]) = 1;
        v21 = v87;
LABEL_94:

        v101 = (v110[0] & 1) != 0;
        v18 = v83;
        goto LABEL_95;
      }

      v53 = ne_log_obj();
      if (!os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_62;
      }

      buf = 136315138;
      v114 = "[NEPolicySession(AlwaysOnVPN) addAllowedCaptiveNetworkPluginsWithResult:order:allowCaptiveWebSheet:allowAllCaptiveNetworkPlugins:allowedCaptiveNetworkPlugins:result:isAOVPN:policyIDList:incrementOrder:checkEntitlement:]";
      v54 = "%s: No registered Captive Network Plugins";
    }

    else
    {
      v53 = ne_log_obj();
      if (!os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
      {
LABEL_62:

        v101 = 1;
        goto LABEL_95;
      }

      buf = 136315138;
      v114 = "[NEPolicySession(AlwaysOnVPN) addAllowedCaptiveNetworkPluginsWithResult:order:allowCaptiveWebSheet:allowAllCaptiveNetworkPlugins:allowedCaptiveNetworkPlugins:result:isAOVPN:policyIDList:incrementOrder:checkEntitlement:]";
      v54 = "%s: No configuration for Captive Plugins";
    }

    _os_log_debug_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEBUG, v54, &buf, 0xCu);
    goto LABEL_62;
  }

LABEL_40:
  v101 = 0;
LABEL_44:

LABEL_95:
LABEL_96:

  return v101;
}

uint64_t sub_100065E5C(void *a1, void *a2, uint64_t *a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (!a1)
  {
LABEL_39:
    v35 = 0;
    goto LABEL_40;
  }

  v91 = 50;
  v9 = v7;
  v10 = [NEProcessInfo copyUUIDsForExecutable:@"/usr/libexec/nesessionmanager"];
  if (![v10 count])
  {
    goto LABEL_12;
  }

  v11 = ne_log_obj();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v99 = "[NEPolicySession(AlwaysOnVPN) addSessionManagerWithOrder:]";
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s: Adding PASS policy for nesessionmanager", buf, 0xCu);
  }

  v12 = +[NEPolicyResult pass];
  v13 = sub_10005F304(a1, &v91, 1, 0, v10, 1, 0, 1, 0, 0, 0, v12, 0, 0, 0);

  if ((v13 & 1) == 0)
  {
    v18 = ne_log_obj();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v99 = "[NEPolicySession(AlwaysOnVPN) addSessionManagerWithOrder:]";
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s: Failed to add PASS policy for nesessionmanager", buf, 0xCu);
    }

LABEL_12:
    v19 = ne_log_obj();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
LABEL_36:

      v34 = ne_log_obj();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v99 = "[NEPolicySession(AlwaysOnVPN) evaluateConfiguration:startOrder:IMSUseIPSec:dropAllLevel:captiveNetworkPlugins:]";
        _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "%s: evaluateConfigurationEssential failed", buf, 0xCu);
      }

      goto LABEL_39;
    }

    *buf = 136315138;
    v99 = "[NEPolicySession(AlwaysOnVPN) evaluateConfigurationEssentialwithOrder:order:]";
    v20 = "%s: addSessionManagerWithOrder failed";
LABEL_42:
    _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, v20, buf, 0xCu);
    goto LABEL_36;
  }

  v14 = v9;
  v15 = v14;
  if (v14)
  {
    v16 = [v14 alwaysOnVPN];

    if (v16)
    {
      v17 = [[NSUUID alloc] initWithUUIDBytes:&unk_1000C2D20];
      v16 = [NEPolicyResult removeNetworkAgentUUID:v17];
    }
  }

  else
  {
    v16 = 0;
  }

  v21 = [NEProcessInfo copyUUIDsForExecutable:@"/usr/libexec/configd"];
  if (![v21 count])
  {
    goto LABEL_35;
  }

  v85 = a3;
  v22 = ne_log_obj();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v99 = "[NEPolicySession(AlwaysOnVPN) addConfigdWithOrder:order:needConfigdPassAll:policyIDList:]";
    _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "%s: Adding PASS policy for configd", buf, 0xCu);
  }

  v23 = +[NEPolicyResult pass];
  v24 = sub_10005F304(a1, &v91, 1, 0, v21, 1, 0, 1, 0, 0, 0, v23, v16, 0, 0);

  v25 = ne_log_obj();
  v26 = v25;
  if ((v24 & 1) == 0)
  {
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v99 = "[NEPolicySession(AlwaysOnVPN) addConfigdWithOrder:order:needConfigdPassAll:policyIDList:]";
      _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%s: Failed to add PASS policy for configd", buf, 0xCu);
    }

    goto LABEL_34;
  }

  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v99 = "[NEPolicySession(AlwaysOnVPN) addConfigdWithOrder:order:needConfigdPassAll:policyIDList:]";
    _os_log_debug_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "%s: Adding PASS policy for captiveagent", buf, 0xCu);
  }

  v26 = [NEProcessInfo copyUUIDsForExecutable:@"/usr/libexec/captiveagent"];
  if (!v26)
  {
    v33 = ne_log_obj();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v99 = "[NEPolicySession(AlwaysOnVPN) addConfigdWithOrder:order:needConfigdPassAll:policyIDList:]";
      _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%s: Failed to get UUIDs for captiveagent", buf, 0xCu);
    }

    goto LABEL_33;
  }

  v84 = v8;
  v27 = +[NEPolicyResult pass];
  v28 = sub_10005F304(a1, &v91, 1, 0, v26, 1, 0, 0, 0, 0, 0, v27, v16, 0, 0);

  if ((v28 & 1) == 0)
  {
    v33 = ne_log_obj();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v99 = "[NEPolicySession(AlwaysOnVPN) addConfigdWithOrder:order:needConfigdPassAll:policyIDList:]";
      _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%s: Failed to add PASS policy for captiveagent", buf, 0xCu);
    }

    v8 = v84;
LABEL_33:

LABEL_34:
LABEL_35:

    v19 = ne_log_obj();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_36;
    }

    *buf = 136315138;
    v99 = "[NEPolicySession(AlwaysOnVPN) evaluateConfigurationEssentialwithOrder:order:]";
    v20 = "%s: addConfigdWithOrder failed";
    goto LABEL_42;
  }

  v29 = v15;
  v30 = [NEProcessInfo copyUUIDsForExecutable:@"/System/Library/Frameworks/CoreTelephony.framework/Support/CommCenter"];
  if (![v30 count])
  {

    v8 = v84;
LABEL_75:
    v19 = ne_log_obj();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_36;
    }

    *buf = 136315138;
    v99 = "[NEPolicySession(AlwaysOnVPN) evaluateConfigurationEssentialwithOrder:order:]";
    v20 = "%s: addCommCenterPathWithOrder failed";
    goto LABEL_42;
  }

  v31 = [v29 alwaysOnVPN];

  if (v31)
  {
    v32 = [[NSUUID alloc] initWithUUIDBytes:&unk_1000C2D20];
    v89 = [NEPolicyResult removeNetworkAgentUUID:v32];
  }

  else
  {
    v89 = 0;
  }

  v37 = v85;
  v38 = ne_log_obj();
  v8 = v84;
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
  {
    *v96 = 136315138;
    v97 = "[NEPolicySession(AlwaysOnVPN) addCommCenterPathPassWithOrder:order:]";
    _os_log_debug_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEBUG, "%s: Adding PASS policy for CommCenter Path", v96, 0xCu);
  }

  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v39 = v30;
  v87 = [v39 countByEnumeratingWithState:&v92 objects:buf count:16];
  if (!v87)
  {
    goto LABEL_59;
  }

  v81 = v29;
  v83 = v9;
  v86 = *v93;
  v40 = v91;
  v41 = v89;
  while (2)
  {
    for (i = 0; i != v87; i = i + 1)
    {
      if (*v93 != v86)
      {
        objc_enumerationMutation(v39);
      }

      v43 = *(*(&v92 + 1) + 8 * i);
      v44 = objc_alloc_init(NSMutableArray);
      v45 = [NEPolicyCondition effectiveApplication:v43];
      [v44 addObject:v45];

      v46 = [NEPolicyCondition realApplication:v43];
      [v44 addObject:v46];

      v47 = +[NEPolicyCondition allInterfaces];
      [v44 addObject:v47];

      v48 = +[NEPolicyCondition entitlement];
      [v44 addObject:v48];

      v49 = [NEPolicyCondition ipProtocol:0];
      [v44 addObject:v49];

      if (v41)
      {
        v50 = [[NEPolicy alloc] initWithOrder:v40 result:v41 conditions:v44];
        if (![a1 addPolicy:v50])
        {
          v91 = v40;
          v76 = ne_log_obj();
          if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
          {
            *v96 = 136315138;
            v97 = "[NEPolicySession(AlwaysOnVPN) addCommCenterPathPassWithOrder:order:]";
            v77 = "%s: Failed to add removeNetworkAgent policy for CommCenter path";
            goto LABEL_88;
          }

LABEL_74:
          v9 = v83;
          v8 = v84;

          goto LABEL_75;
        }

        v40 = (v40 + 1);
      }

      v51 = [NEPolicy alloc];
      v52 = +[NEPolicyResult pass];
      v50 = [v51 initWithOrder:v40 result:v52 conditions:v44];

      if (![a1 addPolicy:v50])
      {
        v91 = v40;
        v76 = ne_log_obj();
        v41 = v89;
        if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
        {
          *v96 = 136315138;
          v97 = "[NEPolicySession(AlwaysOnVPN) addCommCenterPathPassWithOrder:order:]";
          v77 = "%s: Failed to add Pass policy for CommCenter path";
LABEL_88:
          _os_log_error_impl(&_mh_execute_header, v76, OS_LOG_TYPE_ERROR, v77, v96, 0xCu);
          goto LABEL_74;
        }

        goto LABEL_74;
      }

      v40 = (v40 + 1);

      v41 = v89;
    }

    v87 = [v39 countByEnumeratingWithState:&v92 objects:buf count:16];
    if (v87)
    {
      continue;
    }

    break;
  }

  v91 = v40;
  v9 = v83;
  v8 = v84;
  v37 = v85;
  v29 = v81;
LABEL_59:

  v53 = +[NEProcessInfo copyDNSUUIDs];
  if (!v53)
  {
LABEL_78:
    v19 = ne_log_obj();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_36;
    }

    *buf = 136315138;
    v99 = "[NEPolicySession(AlwaysOnVPN) evaluateConfigurationEssentialwithOrder:order:]";
    v20 = "%s: addmDNSResponderWithOrder failed";
    goto LABEL_42;
  }

  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v54 = v53;
  v55 = [v54 countByEnumeratingWithState:&v92 objects:buf count:16];
  if (v55)
  {
    v56 = v55;
    v82 = v29;
    v88 = v54;
    v90 = *v93;
    v57 = v91;
    while (2)
    {
      for (j = 0; j != v56; j = j + 1)
      {
        if (*v93 != v90)
        {
          objc_enumerationMutation(v88);
        }

        v59 = *(*(&v92 + 1) + 8 * j);
        v60 = objc_alloc_init(NSMutableArray);
        v61 = [NEPolicyCondition effectiveApplication:v59];
        [v60 addObject:v61];

        v62 = [NEPolicyCondition realApplication:v59];
        [v60 addObject:v62];

        v63 = +[NEPolicyCondition allInterfaces];
        [v60 addObject:v63];

        v64 = +[NEPolicyCondition entitlement];
        [v60 addObject:v64];

        v65 = [NEPolicyCondition ipProtocol:0];
        [v60 addObject:v65];

        v66 = [NEPolicy alloc];
        v67 = +[NEPolicyResult pass];
        v68 = [v66 initWithOrder:v57 result:v67 conditions:v60];
        v69 = [a1 addPolicy:v68];

        if (!v69)
        {

          v8 = v84;
          goto LABEL_78;
        }

        v57 = (v57 + 1);
      }

      v54 = v88;
      v56 = [v88 countByEnumeratingWithState:&v92 objects:buf count:16];
      if (v56)
      {
        continue;
      }

      break;
    }

    v91 = v57;
    v37 = v85;
    v29 = v82;
  }

  sub_1000634E0(a1, &v91, v29, v37, 0);
  v70 = [v29 alwaysOnVPN];

  if (v70)
  {
    v71 = [v29 alwaysOnVPN];
    v72 = [v71 isAllowCaptiveWebSheet];

    v73 = [v29 alwaysOnVPN];
    v74 = [v73 isAllowAllCaptiveNetworkPlugins];

    v75 = [v29 alwaysOnVPN];
    v70 = [v75 allowedCaptiveNetworkPlugins];
  }

  else
  {
    v74 = 1;
    v72 = 1;
  }

  v78 = [v29 alwaysOnVPN];
  v79 = sub_100065148(a1, v84, &v91, v72, v74, v70, 0, v78 != 0, 0, 1u, 1u);

  if (v79)
  {

    v35 = 1;
  }

  else
  {
    v80 = ne_log_obj();
    if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v99 = "[NEPolicySession(AlwaysOnVPN) evaluateConfiguration:startOrder:IMSUseIPSec:dropAllLevel:captiveNetworkPlugins:]";
      _os_log_error_impl(&_mh_execute_header, v80, OS_LOG_TYPE_ERROR, "%s: addAllowedCaptiveNetworkPluginsToPolicySession failed", buf, 0xCu);
    }

    v35 = 0;
  }

  v8 = v84;
LABEL_40:

  return v35;
}

id sub_100067ED0(uint64_t a1, const char *a2)
{
  result = *(a1 + 32);
  if (result)
  {
    result = objc_getProperty(result, a2, 16, 1);
    if (result)
    {
      v4 = *(a1 + 32);

      return [v4 handleTimeout];
    }
  }

  return result;
}

void sub_100068750(void *a1, const char *a2)
{
  if (a1)
  {
    if ([objc_getProperty(a1 a2])
    {
      v4 = ne_log_obj();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = objc_opt_class();
        v6 = NSStringFromClass(v5);
        v17 = 138412546;
        v18 = a1;
        v19 = 2112;
        v20 = v6;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@ in state %@: restarting", &v17, 0x16u);
      }

      [objc_getProperty(a1 v7];
      Property = objc_getProperty(a1, v8, 16, 1);
      v11 = sub_100083C64(Property, v10);
      v13 = objc_getProperty(a1, v12, 16, 1);
      if (v11)
      {
        v14 = 2;
      }

      else
      {
        [v13 setLastStopReason:6];
        v13 = objc_getProperty(a1, v16, 16, 1);
        v14 = 1;
      }

      sub_100082FD8(v13, v14);
    }

    else
    {
      v15 = objc_getProperty(a1, v3, 16, 1);

      sub_100082FD8(v15, 1);
    }
  }
}

void sub_100068DD4(void *a1, const char *a2)
{
  if (!a1)
  {
    return;
  }

  v3 = [objc_getProperty(a1 a2];
  v4 = [v3 contentFilter];
  v5 = [v4 provider];
  if ([v5 filterPackets])
  {
    Property = objc_getProperty(a1, v6, 16, 1);
    if (Property)
    {
      Property = objc_getProperty(Property, v8, 408, 1);
    }

    v9 = Property;

    if (!v9)
    {
      v11 = ne_log_obj();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v38 = objc_getProperty(a1, v12, 16, 1);
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@ packet filtering is enabled but the packet filter provider is not running, starting the provider", buf, 0xCu);
      }

      v14 = objc_getProperty(a1, v13, 16, 1);
      sub_100083C64(v14, v15);
      v17 = objc_getProperty(a1, v16, 16, 1);
      if (v17)
      {
        v17 = objc_getProperty(v17, v18, 408, 1);
      }

      v19 = v17;

      if (v19)
      {
        v21 = objc_getProperty(a1, v20, 16, 1);
        v22 = 6;
LABEL_23:
        sub_100082FD8(v21, v22);
        return;
      }

      v33 = ne_log_obj();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v35 = objc_getProperty(a1, v34, 16, 1);
        *buf = 138412290;
        v38 = v35;
        _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%@: Failed to initialize the packet filter plugin", buf, 0xCu);
      }

      return;
    }
  }

  else
  {
  }

  v36 = [objc_getProperty(a1 v10];
  v23 = [v36 contentFilter];
  v24 = [v23 provider];
  if (([v24 filterPackets] & 1) == 0)
  {
    v26 = objc_getProperty(a1, v25, 16, 1);
    if (v26)
    {
      v28 = objc_getProperty(v26, v27, 408, 1);
      if (v28)
      {
        v29 = v28[8];

        if (v29 != 2)
        {
          return;
        }

        v30 = ne_log_obj();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v38 = objc_getProperty(a1, v31, 16, 1);
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%@ packet filtering is disabled and the packet filter provider is running, stopping the provider", buf, 0xCu);
        }

        v21 = objc_getProperty(a1, v32, 16, 1);
        v22 = 7;
        goto LABEL_23;
      }
    }
  }
}

id sub_10006A818(uint64_t a1, const char *a2)
{
  result = *(a1 + 32);
  if (result)
  {
    result = objc_getProperty(result, a2, 16, 1);
    if (result)
    {
      v4 = *(a1 + 32);

      return [v4 handleTimeout];
    }
  }

  return result;
}

void sub_10006AC30(void *a1, const char *a2)
{
  if (a1)
  {
    if ([objc_getProperty(a1 a2])
    {
      v4 = ne_log_obj();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = objc_opt_class();
        v6 = NSStringFromClass(v5);
        v17 = 138412546;
        v18 = a1;
        v19 = 2112;
        v20 = v6;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@ in state %@: restarting", &v17, 0x16u);
      }

      [objc_getProperty(a1 v7];
      Property = objc_getProperty(a1, v8, 16, 1);
      v11 = sub_10006E94C(Property, v10);
      v13 = objc_getProperty(a1, v12, 16, 1);
      if (v11)
      {
        v14 = 2;
      }

      else
      {
        [v13 setLastStopReason:6];
        v13 = objc_getProperty(a1, v16, 16, 1);
        v14 = 1;
      }

      sub_10006DE84(v13, v14);
    }

    else
    {
      v15 = objc_getProperty(a1, v3, 16, 1);

      sub_10006DE84(v15, 1);
    }
  }
}

void sub_10006C2BC(uint64_t a1)
{
  if (*(a1 + 56) == 1 && (v2 = *(a1 + 32)) != 0 && (*(v2 + 354) & 1) != 0)
  {
    pid = xpc_connection_get_pid(*(a1 + 40));
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *&buf[4] = pid;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Received a request for a new URL filter connection from client pid %d", buf, 8u);
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      Property = objc_getProperty(v6, v5, 408, 1);
    }

    else
    {
      Property = 0;
    }

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10006C550;
    v11[3] = &unk_1000EA750;
    v12 = *(a1 + 48);
    v8 = v11;
    if (Property)
    {
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10001AD64;
      v13[3] = &unk_1000EB068;
      v13[4] = Property;
      v9 = [Property remotePluginObjectWithErrorHandler:v13];
      *buf = _NSConcreteStackBlock;
      v15 = 3221225472;
      v16 = sub_10001AE1C;
      v17 = &unk_1000E9A50;
      v18 = Property;
      v19 = v8;
      [v9 getURLFilterClientConnectionWithCompletionHandler:pid completionHandler:buf];
    }
  }

  else
  {
    message = xpc_dictionary_create_reply(*(a1 + 48));
    xpc_dictionary_set_int64(message, "error", 2);
    xpc_connection_send_message(*(a1 + 40), message);
  }
}

void sub_10006C550(uint64_t a1, void *a2)
{
  v3 = a2;
  reply = xpc_dictionary_create_reply(*(a1 + 32));
  v5 = xpc_dictionary_get_remote_connection(*(a1 + 32));
  if (reply && (xpc_get_type(reply) == &_xpc_type_dictionary ? (v6 = v5 == 0) : (v6 = 1), !v6 && xpc_get_type(v5) == &_xpc_type_connection))
  {
    if (v3 && ([v3 _endpoint], (v8 = objc_claimAutoreleasedReturnValue()) != 0) && (v9 = v8, type = xpc_get_type(v8), v9, type == &_xpc_type_endpoint))
    {
      v12 = [v3 _endpoint];
      xpc_dictionary_set_value(reply, "new-connection", v12);
    }

    else
    {
      v11 = ne_log_obj();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v13) = 0;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to get a valid XPC endpoint from the URL filter plugin", &v13, 2u);
      }

      xpc_dictionary_set_int64(reply, "error", 2);
    }

    xpc_connection_send_message(v5, reply);
  }

  else
  {
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v13 = 134218240;
      v14 = reply;
      v15 = 2048;
      v16 = v5;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to create a reply (%p) or a connection to send it over (%p) when sending the URL filter connection to the client", &v13, 0x16u);
    }
  }
}

void sub_10006CF28(const char *a1)
{
  if (a1)
  {
    if (dword_1000FCDF0 != -1)
    {
      goto LABEL_9;
    }

    out_token = -1;
    if (notify_register_check("com.apple.private.restrict-post.nesessionmanager.url-prefilter-ready", &out_token))
    {
      v2 = ne_log_obj();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v12 = a1;
        v13 = 2080;
        v14 = "[NESMURLFilterSession postPrefilterChange]";
        v15 = 2080;
        v16 = "com.apple.private.restrict-post.nesessionmanager.url-prefilter-ready";
        _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%@: %s - Failed to register for the %s notification", buf, 0x20u);
      }

      v3 = dword_1000FCDF0;
    }

    else
    {
      v3 = out_token;
      dword_1000FCDF0 = out_token;
    }

    if (v3 != -1)
    {
LABEL_9:
      v4 = +[NSDate date];
      [v4 timeIntervalSinceReferenceDate];
      v6 = v5;

      v7 = notify_set_state(dword_1000FCDF0, v6);
      if (v7)
      {
        v8 = v7;
        v9 = ne_log_obj();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 138413058;
          v12 = a1;
          v13 = 2080;
          v14 = "[NESMURLFilterSession postPrefilterChange]";
          v15 = 2080;
          v16 = "com.apple.private.restrict-post.nesessionmanager.url-prefilter-ready";
          v17 = 1024;
          v18 = v8;
          _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%@: %s - Failed to set the state for the %s notification (status %d)", buf, 0x26u);
        }
      }

      else
      {
        notify_post("com.apple.private.restrict-post.nesessionmanager.url-prefilter-ready");
        v9 = ne_log_obj();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v12 = "com.apple.private.restrict-post.nesessionmanager.url-prefilter-ready";
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Posted to %s", buf, 0xCu);
        }
      }
    }
  }
}

void sub_10006D158(void *a1)
{
  if (a1)
  {
    v2 = ne_log_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v31 = a1;
      v32 = 2080;
      v33 = "[NESMURLFilterSession prefilterSetup]";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%@: %s - enter", buf, 0x16u);
    }

    v3 = [a1 configuration];
    v4 = [v3 urlFilter];
    v5 = [v4 appBundleIdentifier];

    if (v5)
    {
      if (mkdir("/private/var/db/urlPrefilter", 0x1EDu))
      {
        if (*__error() != 17)
        {
          v6 = ne_log_obj();
          if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
          {
            v23 = *__error();
            v24 = __error();
            v25 = strerror(*v24);
            *buf = 138413314;
            v31 = a1;
            v32 = 2080;
            v33 = "[NESMURLFilterSession prefilterSetup]";
            v34 = 2080;
            v35 = "/private/var/db/urlPrefilter";
            v36 = 1024;
            v37 = v23;
            v38 = 2080;
            v39 = v25;
            v10 = "%@: %s - Failed to create URL prefilter directory %s <errno %d - %s>";
            goto LABEL_18;
          }

LABEL_24:

          return;
        }

        if (chmod("/private/var/db/urlPrefilter", 0x1EDu))
        {
          v6 = ne_log_obj();
          if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
          {
            v7 = *__error();
            v8 = __error();
            v9 = strerror(*v8);
            *buf = 138413314;
            v31 = a1;
            v32 = 2080;
            v33 = "[NESMURLFilterSession prefilterSetup]";
            v34 = 2080;
            v35 = "/private/var/db/urlPrefilter";
            v36 = 1024;
            v37 = v7;
            v38 = 2080;
            v39 = v9;
            v10 = "%@: %s - Failed to change mode for URL prefilter directory %s <errno %d - %s>";
LABEL_18:
            _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, v10, buf, 0x30u);
            goto LABEL_24;
          }

          goto LABEL_24;
        }
      }

      v11 = [NSString alloc];
      v12 = [a1 configuration];
      v13 = [v12 urlFilter];
      v14 = [v13 appBundleIdentifier];
      v6 = [v11 initWithFormat:@"%@%@", @"/private/var/db/urlPrefilter/com.apple.networkextension.url-prefilter-data.temp.", v14];

      LODWORD(v13) = open([v6 UTF8String], 518, 438);
      v15 = ne_log_obj();
      v16 = v15;
      if ((v13 & 0x80000000) != 0)
      {
        if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
LABEL_20:

          goto LABEL_24;
        }

        v27 = *__error();
        v28 = __error();
        v29 = strerror(*v28);
        *buf = 138413314;
        v31 = a1;
        v32 = 2080;
        v33 = "[NESMURLFilterSession prefilterSetup]";
        v34 = 2112;
        v35 = v6;
        v36 = 1024;
        v37 = v27;
        v38 = 2080;
        v39 = v29;
        v22 = "%@: %s - Failed to create mmap file for URL prefilter %@ <errno %d - %s>";
      }

      else
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 138412802;
          v31 = a1;
          v32 = 2080;
          v33 = "[NESMURLFilterSession prefilterSetup]";
          v34 = 2112;
          v35 = v6;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%@: %s - Created temporary mmap file for bloom filter %@", buf, 0x20u);
        }

        v17 = chown([v6 UTF8String], 0x1F5u, 0x1F5u);
        v18 = ne_log_obj();
        v16 = v18;
        if (!v17)
        {
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            *buf = 138412802;
            v31 = a1;
            v32 = 2080;
            v33 = "[NESMURLFilterSession prefilterSetup]";
            v34 = 2112;
            v35 = v6;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%@: %s - Changed owner for mmap file for URL prefilter %@", buf, 0x20u);
          }

          objc_setProperty_atomic(a1, v26, v6, 376);
          goto LABEL_24;
        }

        if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_20;
        }

        v19 = *__error();
        v20 = __error();
        v21 = strerror(*v20);
        *buf = 138413314;
        v31 = a1;
        v32 = 2080;
        v33 = "[NESMURLFilterSession prefilterSetup]";
        v34 = 2112;
        v35 = v6;
        v36 = 1024;
        v37 = v19;
        v38 = 2080;
        v39 = v21;
        v22 = "%@: %s - Failed to chown mmap file for URL prefilter %@ <errno %d - %s>";
      }

      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, v22, buf, 0x30u);
      goto LABEL_20;
    }
  }
}

id sub_10006D760(uint64_t a1)
{
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@: Handling installed apps change", &v5, 0xCu);
  }

  return [*(a1 + 32) restartSession];
}

void sub_10006D9D8(void *self, const char *a2)
{
  if (self)
  {
    if (a2)
    {
      self[54] = 500;
      self[55] = 0;
    }

    if (objc_getProperty(self, a2, 424, 1))
    {
      Property = objc_getProperty(self, v3, 424, 1);
      dispatch_source_cancel(Property);

      objc_setProperty_atomic(self, v5, 0, 424);
    }
  }
}

void sub_10006DE84(id *self, const char *a2)
{
  if (self && self[50] != a2)
  {
    if (!objc_getProperty(self, a2, 392, 1) || (v5 = objc_getProperty(self, v4, 392, 1), +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", a2), v6 = objc_claimAutoreleasedReturnValue(), [v5 objectForKeyedSubscript:v6], v7 = objc_claimAutoreleasedReturnValue(), v5, v6, !v7))
    {
      v8 = [NESMURLFilterSessionState stateWithType:a2];
      if (!v8)
      {
        __assert_rtn("[NESMURLFilterSession setState:]", "NESMURLFilterSession.m", 192, "0");
      }

      v7 = v8;
      if (!objc_getProperty(self, v9, 392, 1))
      {
        v11 = objc_alloc_init(NSMutableDictionary);
        objc_setProperty_atomic(self, v12, v11, 392);
      }

      v13 = objc_getProperty(self, v10, 392, 1);
      v14 = [NSNumber numberWithInteger:a2];
      [v13 setObject:v7 forKeyedSubscript:v14];
    }

    v15 = self[50];
    [self[48] leave];
    self[50] = a2;
    v16 = self[48];
    self[48] = v7;
    v17 = v7;

    [self[48] enterWithSession:self];
    if (v15)
    {
      v18 = self[50];
      v19 = 1;
      if (v18 > 2)
      {
        if (v18 == 3)
        {
          sub_10006D9D8(self, 1);
          v19 = 3;
        }

        else if (v18 == 4)
        {
          v19 = 5;
        }
      }

      else if (v18 == 1)
      {
        if ((*(self + 355) & 1) != 0 || [self lastStopReason] == 6)
        {
          if ([self lastStopReason] == 6)
          {
            v21 = [self server];
            [v21 deregisterSession:self];
          }
        }

        else
        {
          sub_10006E5AC(self, v20);
        }

        v22 = ne_log_obj();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v57 = 138412546;
          v58 = self;
          v59 = 2080;
          v60 = "[NESMURLFilterSession prefilterCleanup]";
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%@: %s - enter", &v57, 0x16u);
        }

        if (objc_getProperty(self, v23, 368, 1))
        {
          v25 = ne_log_obj();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            Property = objc_getProperty(self, v26, 368, 1);
            v57 = 138412802;
            v58 = self;
            v59 = 2080;
            v60 = "[NESMURLFilterSession prefilterCleanup]";
            v61 = 2112;
            v62 = Property;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "%@: %s - removing mmap file for URL prefilter %@", &v57, 0x20u);
          }

          v29 = [objc_getProperty(self v28];
          v31 = remove(v29, v30);
          v32 = ne_log_obj();
          v33 = v32;
          if (v31)
          {
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              v35 = objc_getProperty(self, v34, 368, 1);
              v36 = *__error();
              v37 = __error();
              v38 = strerror(*v37);
              v57 = 138413314;
              v58 = self;
              v59 = 2080;
              v60 = "[NESMURLFilterSession prefilterCleanup]";
              v61 = 2112;
              v62 = v35;
              v63 = 1024;
              v64 = v36;
              v65 = 2080;
              v66 = v38;
              _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%@: %s - Failed to remove mmap file for URL prefilter %@ <errno %d - %s>", &v57, 0x30u);
            }
          }

          else if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            v40 = objc_getProperty(self, v39, 368, 1);
            v57 = 138412802;
            v58 = self;
            v59 = 2080;
            v60 = "[NESMURLFilterSession prefilterCleanup]";
            v61 = 2112;
            v62 = v40;
            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%@: %s - Removed mmap file for URL prefilter %@", &v57, 0x20u);
          }
        }

        if (objc_getProperty(self, v24, 376, 1))
        {
          v41 = ne_log_obj();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
          {
            v43 = objc_getProperty(self, v42, 376, 1);
            v57 = 138412802;
            v58 = self;
            v59 = 2080;
            v60 = "[NESMURLFilterSession prefilterCleanup]";
            v61 = 2112;
            v62 = v43;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "%@: %s - removing mmap file for URL prefilter %@", &v57, 0x20u);
          }

          v45 = [objc_getProperty(self v44];
          v47 = remove(v45, v46);
          v48 = ne_log_obj();
          v49 = v48;
          if (v47)
          {
            if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
            {
              v51 = objc_getProperty(self, v50, 376, 1);
              v52 = *__error();
              v53 = __error();
              v54 = strerror(*v53);
              v57 = 138413314;
              v58 = self;
              v59 = 2080;
              v60 = "[NESMURLFilterSession prefilterCleanup]";
              v61 = 2112;
              v62 = v51;
              v63 = 1024;
              v64 = v52;
              v65 = 2080;
              v66 = v54;
              _os_log_error_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "%@: %s - Failed to remove mmap file for URL prefilter %@ <errno %d - %s>", &v57, 0x30u);
            }
          }

          else if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
          {
            v56 = objc_getProperty(self, v55, 376, 1);
            v57 = 138412802;
            v58 = self;
            v59 = 2080;
            v60 = "[NESMURLFilterSession prefilterCleanup]";
            v61 = 2112;
            v62 = v56;
            _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "%@: %s - Removed mmap file for URL prefilter %@", &v57, 0x20u);
          }
        }

        sub_10006CF28(self);
        v19 = 1;
      }

      else if (v18 == 2)
      {
        sub_10006D158(self);
        v19 = 2;
      }

      [self setStatus:v19];
    }
  }
}

void sub_10006E5AC(void *a1, const char *a2)
{
  if (objc_getProperty(a1, a2, 424, 1))
  {
    Property = objc_getProperty(a1, v3, 424, 1);
    dispatch_source_cancel(Property);
    objc_setProperty_atomic(a1, v5, 0, 424);
  }

  v6 = a1[54];
  if (v6 >> 5 <= 0x752)
  {
    v7 = a1[55];
    if (v7 < 3)
    {
      v8 = v7 + 1;
    }

    else
    {
      v8 = 0;
      a1[54] = 4 * v6;
    }

    a1[55] = v8;
  }

  v9 = [a1 queue];
  v10 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v9);

  v11 = dispatch_time(0, 1000000 * a1[54]);
  dispatch_source_set_timer(v10, v11, 0xFFFFFFFFFFFFFFFFLL, 0x1388uLL);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10006E73C;
  v14[3] = &unk_1000EB198;
  v14[4] = a1;
  v15 = v10;
  v12 = v10;
  dispatch_source_set_event_handler(v12, v14);
  dispatch_resume(v12);
  objc_setProperty_atomic(a1, v13, v12, 424);
}

void sub_10006E73C(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (v3 && (v3[355] & 1) == 0 && objc_getProperty(v3, a2, 416, 1))
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@: Restarting", &v9, 0xCu);
    }

    v7 = *(a1 + 32);
    if (v7)
    {
      Property = objc_getProperty(*(a1 + 32), v6, 416, 1);
    }

    else
    {
      Property = 0;
    }

    [v7 handleStartMessage:Property];
  }

  dispatch_source_cancel(*(a1 + 40));
}

void *sub_10006E94C(void *result, const char *a2)
{
  if (result)
  {
    v2 = result;
    if (objc_getProperty(result, a2, 408, 1))
    {
      return (objc_getProperty(v2, v3, 408, 1) != 0);
    }

    v4 = [v2 configuration];
    v5 = [v4 pluginType];

    v6 = objc_opt_class();
    v7 = [v2 configuration];
    v8 = [v7 urlFilter];
    v9 = [v8 controlProviderBundleIdentifier];

    if (v9)
    {
      v26 = @"extension-identifier";
      v27 = v9;
      v10 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
      v11 = [v6 alloc];
      v12 = [v2 uid];
      v13 = [v11 initWithPluginType:v5 pluginVersion:1 pluginClass:9 pluginInfo:v10 userID:v12];

      if (v13)
      {
LABEL_11:

        if (v13)
        {
          v15 = ne_log_obj();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v20 = 138412546;
            v21 = v2;
            v22 = 2048;
            v23 = 9;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%@: Creating a url filter plugin with class %ld", &v20, 0x16u);
          }

          v16 = [NEURLFilterPlugin alloc];
          v17 = [v2 queue];
          v18 = [(NEPlugin *)v16 initWithAgent:v13 delegateQueue:v17 andDelegate:v2];
        }

        else
        {
          v18 = 0;
        }

        objc_setProperty_atomic(v2, v19, v18, 408);
        return (objc_getProperty(v2, v3, 408, 1) != 0);
      }

      v14 = ne_log_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v20 = 138412802;
        v21 = v2;
        v22 = 2112;
        v23 = v5;
        v24 = 2048;
        v25 = 9;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%@: Failed to create a neagent instance for plugin type %@, class %ld", &v20, 0x20u);
      }
    }

    else
    {
      v10 = ne_log_obj();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 138412546;
        v21 = v2;
        v22 = 2048;
        v23 = 9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@: Configuration does not have a provider bundle identifier for class %ld", &v20, 0x16u);
      }
    }

    v13 = 0;
    goto LABEL_11;
  }

  return result;
}

void sub_10006EEDC(uint64_t a1)
{
  if (qword_1000FD550 != -1)
  {
    dispatch_once(&qword_1000FD550, &stru_1000EA5C8);
  }

  v2 = *(qword_1000FD548 + 168);
  if (v2)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(v3 + 368);
    }

    else
    {
      v4 = 0;
    }

    v5 = *(a1 + 40);

    v2(v4, v5);
  }
}

void sub_10006EF70(uint64_t a1, void *a2)
{
  if (a1)
  {
    v2 = a2;
    Main = CFRunLoopGetMain();
    CFRunLoopPerformBlock(Main, kCFRunLoopDefaultMode, v2);

    v4 = CFRunLoopGetMain();

    CFRunLoopWakeUp(v4);
  }
}

void sub_10006EFCC(id a1)
{
  v1 = CFURLCreateFromFileSystemRepresentation(kCFAllocatorDefault, "/System/Library/SystemConfiguration/PPPController.bundle", 56, 0);
  v2 = CFBundleCreate(kCFAllocatorDefault, v1);
  qword_1000FD558 = v2;
  if (!v2)
  {
    v4 = ne_log_obj();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
LABEL_7:

      goto LABEL_8;
    }

    LOWORD(v6[0]) = 0;
    v5 = "Failed to create a CFBundle for PPPController.bundle";
LABEL_10:
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, v5, v6, 2u);
    goto LABEL_7;
  }

  DataPointerForName = CFBundleGetDataPointerForName(v2, @"ne_sm_bridge_copy_functions");
  if (!DataPointerForName)
  {
    v4 = ne_log_obj();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    LOWORD(v6[0]) = 0;
    v5 = "Failed to get the copy functions function pointer from PPPController.bundle";
    goto LABEL_10;
  }

  v6[2] = *off_1000EA608;
  v6[3] = *&off_1000EA618;
  v6[4] = *off_1000EA628;
  v6[5] = *off_1000EA638;
  v6[0] = *&off_1000EA5E8;
  v6[1] = *off_1000EA5F8;
  qword_1000FD548 = DataPointerForName(v6, qword_1000FD558);
LABEL_8:
  CFRelease(v1);
}

void sub_10006F0FC(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [v3 queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006F1AC;
  v6[3] = &unk_1000EB0D8;
  v7 = v3;
  v8 = a2;
  v5 = v3;
  dispatch_async(v4, v6);
}

void sub_10006F1AC(uint64_t a1)
{
  if (!CFEqual(*(a1 + 40), kSCPropNetIPSecXAuthPassword))
  {
    if (CFEqual(*(a1 + 40), kSCPropNetIPSecSharedSecret))
    {
      Property = *(a1 + 32);
      if (Property)
      {
        Property = objc_getProperty(Property, v5, 360, 1);
      }

      v8 = [Property type];
      v9 = *(a1 + 32);
      if (v8 == 1)
      {
        goto LABEL_13;
      }

      if (v9)
      {
        v9 = objc_getProperty(v9, v7, 360, 1);
      }

      if ([v9 type] == 2)
      {
        v9 = *(a1 + 32);
LABEL_13:
        if (v9)
        {
          v9 = objc_getProperty(v9, v7, 360, 1);
        }

        v4 = [v9 sharedSecretKeychainItem];
        goto LABEL_16;
      }
    }

    v10 = 0;
    goto LABEL_22;
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    v3 = objc_getProperty(v3, v2, 360, 1);
  }

  v4 = [v3 passwordKeychainItem];
LABEL_16:
  v10 = v4;
  if (v4)
  {
    v11 = [v4 identifier];

    if (v11)
    {
      v12 = ne_log_obj();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a1 + 32);
        v14 = *(a1 + 40);
        *buf = 138412546;
        v24 = v13;
        v25 = 2112;
        v26 = v14;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%@ throwing away saved %@", buf, 0x16u);
      }

      [v10 setIdentifier:0];
      v15 = +[NEConfigurationManager sharedManagerForAllUsers];
      v16 = [*(a1 + 32) configuration];
      v17 = [*(a1 + 32) queue];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_10006F418;
      v20[3] = &unk_1000EA650;
      v18 = *(a1 + 32);
      v19 = *(a1 + 40);
      v21 = v18;
      v22 = v19;
      [v15 saveConfiguration:v16 withCompletionQueue:v17 handler:v20];
    }
  }

LABEL_22:
}

void sub_10006F418(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v7 = 138412802;
      v8 = v5;
      v9 = 2112;
      v10 = v6;
      v11 = 2112;
      v12 = v3;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%@ failed to clear saved %@: %@", &v7, 0x20u);
    }
  }
}

void sub_10006F4F0(void *a1, const char *a2)
{
  v3 = a1;
  if (a2)
  {
    v4 = strlen(a2);
    if (v4)
    {
      v5 = v4;
      v6 = malloc_type_malloc(v4 + 73, 0xD7A8F572uLL);
      if (v6)
      {
        v7 = v6;
        strlcpy(v6, "prefs:root=General&path=ManagedConfigurationList/ProfileError&profileID=", v5 + 73);
        strlcat(v7, a2, v5 + 73);
        v8 = CFURLCreateWithBytes(0, v7, v5 + 72, 0x8000100u, 0);
        free(v7);
        v9 = [v3 queue];
        v11[0] = _NSConcreteStackBlock;
        v11[1] = 3221225472;
        v11[2] = sub_10006F62C;
        v11[3] = &unk_1000EB198;
        v12 = v8;
        v13 = v3;
        v10 = v8;
        dispatch_async(v9, v11);
      }
    }
  }
}

void sub_10006F62C(uint64_t a1)
{
  v2 = +[LSApplicationWorkspace defaultWorkspace];
  v3 = [v2 openSensitiveURL:*(a1 + 32) withOptions:0];

  v4 = ne_log_obj();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v5)
    {
      v7 = *(a1 + 32);
      v6 = *(a1 + 40);
      v11 = 138412546;
      v12 = v6;
      v13 = 2112;
      v14 = v7;
      v8 = "%@ launched profile janitor with URL %@";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, v8, &v11, 0x16u);
    }
  }

  else if (v5)
  {
    v10 = *(a1 + 32);
    v9 = *(a1 + 40);
    v11 = 138412546;
    v12 = v9;
    v13 = 2112;
    v14 = v10;
    v8 = "%@ failed to launch profile janitor with URL %@";
    goto LABEL_6;
  }
}

void sub_10006F74C(void *a1)
{
  v1 = a1;
  v2 = [v1 server];
  [v2 requestUninstallForSession:v1];
}

void sub_10006F7A4(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [v3 server];
  [v4 requestInstallForSession:v3 withParentSession:0 exclusive:a2];
}

id sub_10006F80C(void *a1, const void *a2)
{
  v3 = a1;
  if (!CFEqual(a2, kSCPropNetIPSecXAuthPassword))
  {
    if (!CFEqual(a2, kSCPropNetIPSecSharedSecret))
    {
LABEL_19:
      v12 = 0;
      goto LABEL_20;
    }

    if (v3)
    {
      Property = objc_getProperty(v3, v7, 360, 1);
    }

    else
    {
      Property = 0;
    }

    if ([Property type] == 1)
    {
      if (v3)
      {
LABEL_10:
        v10 = objc_getProperty(v3, v9, 360, 1);
LABEL_11:
        v6 = [v10 sharedSecretKeychainItem];
        goto LABEL_12;
      }
    }

    else
    {
      if (v3)
      {
        v13 = objc_getProperty(v3, v9, 360, 1);
      }

      else
      {
        v13 = 0;
      }

      if ([v13 type] != 2)
      {
        goto LABEL_19;
      }

      if (v3)
      {
        goto LABEL_10;
      }
    }

    v10 = 0;
    goto LABEL_11;
  }

  if (v3)
  {
    v5 = objc_getProperty(v3, v4, 360, 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 passwordKeychainItem];
LABEL_12:
  v11 = v6;
  if (!v6)
  {
    goto LABEL_19;
  }

  v12 = [v6 copyPassword];

LABEL_20:
  return v12;
}

void sub_10006F944(void *a1, const __CFArray *a2, __CFArray *a3)
{
  v5 = a1;
  v7 = v5;
  if (v5)
  {
    v8 = [objc_getProperty(v5 v6];
    v65 = v7[88] == 2;
  }

  else
  {
    v8 = [0 type];
    v65 = 0;
  }

  v67 = v7;
  theArray = a3;
  Count = CFArrayGetCount(a2);
  if (Count < 1)
  {
    v70 = -1;
    v71 = -1;
    idx = -1;
    v13 = -1;
  }

  else
  {
    v11 = Count;
    v12 = 0;
    v13 = -1;
    v71 = -1;
    idx = -1;
    v70 = -1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, v12);
      if (CFEqual(ValueAtIndex, kSCEntNetDNS))
      {
        v13 = v12;
      }

      else if (CFEqual(ValueAtIndex, kSCEntNetProxies))
      {
        idx = v12;
      }

      else if (CFEqual(ValueAtIndex, kSCEntNetIPv4))
      {
        v70 = v12;
      }

      else
      {
        v15 = CFEqual(ValueAtIndex, kSCEntNetIPv6);
        v16 = v71;
        if (v15)
        {
          v16 = v12;
        }

        v71 = v16;
      }

      ++v12;
    }

    while (v11 != v12);
  }

  if (v8 == 2)
  {
    v18 = v7;
    v17 = theArray;
    v19 = v71;
    v20 = idx;
    v21 = v70;
    if (v67)
    {
      goto LABEL_20;
    }

    goto LABEL_23;
  }

  v18 = v7;
  v17 = theArray;
  v19 = v71;
  v20 = idx;
  v21 = v70;
  if (v8 == 1)
  {
    if (v67)
    {
LABEL_20:
      Property = objc_getProperty(v18, v10, 360, 1);
LABEL_21:
      v23 = Property;
      v24 = [v23 DNSSettings];
      v69 = [v23 proxySettings];

      goto LABEL_25;
    }

LABEL_23:
    Property = 0;
    goto LABEL_21;
  }

  v69 = 0;
  v24 = 0;
LABEL_25:
  v66 = v24;
  if (v21 < 0)
  {
    v26 = 0;
    v27 = v69;
    if (v24)
    {
      goto LABEL_44;
    }

LABEL_29:
    v28 = 0;
    v29 = theArray;
    if (!v27)
    {
      goto LABEL_65;
    }

    goto LABEL_57;
  }

  v63 = CFArrayGetValueAtIndex(v17, v21);
  v25 = [v63 objectForKeyedSubscript:kSCPropNetOverridePrimary];
  if (isa_nsnumber())
  {
    v64 = [v25 intValue] != 0;
  }

  else
  {
    v64 = 0;
  }

  v30 = CFArrayGetValueAtIndex(v17, v21);
  v31 = [v18 configuration];
  v32 = [v31 identifier];
  v27 = v69;
  if (v30)
  {
    v33 = xpc_dictionary_create(0, 0, 0);
    if (NEGetIntFromDictionary())
    {
      v34 = xpc_dictionary_create(0, 0, 0);
      if ([NESMSession copyDefaultRouteCacheIsIPv6:0])
      {
        v35 = _CFXPCCreateXPCObjectFromCFObject();
        xpc_dictionary_set_value(v34, "ipv4-subnets", v35);

        v27 = v69;
      }

      myCFRelease();
      xpc_dictionary_set_value(v33, "included-routes", v34);
    }

    else
    {
      Value = CFDictionaryGetValue(v30, kSCPropNetIPv4AdditionalRoutes);
      v37 = CFDictionaryGetValue(v30, kSCPropNetIPv4ExcludedRoutes);
      *out = [NESMSession copyRouteCacheFromRoutes:Value isIPv6:0];
      v38 = [NESMSession copyRouteCacheFromRoutes:v37 isIPv6:0];
      *uu = v38;
      if (*out)
      {
        v39 = xpc_dictionary_create(0, 0, 0);
        v40 = _CFXPCCreateXPCObjectFromCFObject();
        xpc_dictionary_set_value(v39, "ipv4-subnets", v40);

        xpc_dictionary_set_value(v33, "included-routes", v39);
      }

      if (v38)
      {
        v41 = xpc_dictionary_create(0, 0, 0);
        v42 = _CFXPCCreateXPCObjectFromCFObject();
        xpc_dictionary_set_value(v41, "ipv4-subnets", v42);

        xpc_dictionary_set_value(v33, "excluded-routes", v41);
      }

      myCFRelease();
      myCFRelease();
      v27 = v69;
    }

    *uu = 0;
    v79 = 0;
    [v32 getUUIDBytes:uu];
    memset(out, 0, sizeof(out));
    uuid_unparse(uu, out);
    NEHelperCacheSetRoutes();
  }

  v18 = v67;
  v19 = v71;
  v20 = idx;
  v26 = v64;
  if (!v24)
  {
    goto LABEL_29;
  }

LABEL_44:
  v43 = [v24 copyLegacyDictionary];
  v29 = theArray;
  if (![v43 count])
  {
LABEL_47:
    v28 = 0;
    v24 = 0;
    goto LABEL_56;
  }

  if (v13 < 0)
  {
    CFArrayAppendValue(a2, kSCEntNetDNS);
    CFArrayAppendValue(theArray, v43);
    v13 = CFArrayGetCount(theArray) - 1;
    if (v26)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v44 = CFArrayGetValueAtIndex(theArray, v13);
    [v43 addEntriesFromDictionary:v44];
    CFArraySetValueAtIndex(theArray, v13, v43);

    v19 = v71;
    if (v26)
    {
      goto LABEL_47;
    }
  }

  v45 = [v43 objectForKeyedSubscript:kSCPropNetDNSSupplementalMatchDomains];
  v28 = [v43 objectForKeyedSubscript:kSCPropNetDNSSupplementalMatchOrders];
  if (isa_nsarray())
  {
    v24 = v45;
  }

  else
  {
    v24 = [v43 objectForKeyedSubscript:kSCPropNetDNSSearchDomains];

    if (isa_nsarray())
    {
      [v43 setObject:v24 forKeyedSubscript:kSCPropNetDNSSupplementalMatchDomains];
    }
  }

  v20 = idx;
  if (isa_nsarray())
  {
    *uu = 0;
    v79 = 0;
    v46 = [v18 configuration];
    v47 = [v46 identifier];
    [v47 getUUIDBytes:uu];

    v27 = v69;
    memset(out, 0, sizeof(out));
    uuid_unparse(uu, out);
    v48 = _CFXPCCreateXPCObjectFromCFObject();
    NEHelperCacheSetMatchDomains();
  }

  v19 = v71;
LABEL_56:

  if (!v27)
  {
    goto LABEL_65;
  }

LABEL_57:
  v49 = [v27 copyLegacyDictionary];
  v50 = kSCPropNetProxiesSupplementalMatchDomains;
  v51 = [v49 objectForKeyedSubscript:kSCPropNetProxiesSupplementalMatchDomains];
  if ((isa_nsarray() & 1) == 0)
  {
    if (isa_nsarray())
    {
      [v49 setObject:v24 forKeyedSubscript:v50];
      if (isa_nsarray())
      {
        [v49 setObject:v28 forKeyedSubscript:kSCPropNetProxiesSupplementalMatchOrders];
      }
    }
  }

  if (v20 < 0)
  {
    CFArrayAppendValue(a2, kSCEntNetProxies);
    CFArrayAppendValue(v29, v49);
    v20 = CFArrayGetCount(v29) - 1;
  }

  else
  {
    v52 = CFArrayGetValueAtIndex(v29, v20);
    [v49 addEntriesFromDictionary:v52];
    CFArraySetValueAtIndex(v29, v20, v49);
  }

  idx = v20;

  v19 = v71;
LABEL_65:
  if (v65)
  {
    if ((v70 & 0x8000000000000000) == 0)
    {
      v53 = [[NSMutableDictionary alloc] initWithDictionary:{CFArrayGetValueAtIndex(v29, v70)}];
      [v53 setObject:&off_1000EE378 forKeyedSubscript:kSCPropNetOverridePrimary];
      v76 = kSCPropNetIPv4AdditionalRoutes;
      v54 = [NSArray arrayWithObjects:&v76 count:1];
      [v53 removeObjectsForKeys:v54];

      v19 = v71;
      CFArraySetValueAtIndex(v29, v70, v53);
    }

    if ((v19 & 0x8000000000000000) == 0)
    {
      v55 = [[NSMutableDictionary alloc] initWithDictionary:{CFArrayGetValueAtIndex(v29, v19)}];
      [v55 setObject:&off_1000EE378 forKeyedSubscript:kSCPropNetOverridePrimary];
      v75 = kSCPropNetIPv6AdditionalRoutes;
      [NSArray arrayWithObjects:&v75 count:1];
      v57 = v56 = v19;
      [v55 removeObjectsForKeys:v57];

      CFArraySetValueAtIndex(v29, v56, v55);
    }

    if ((v13 & 0x8000000000000000) == 0)
    {
      v58 = [[NSMutableDictionary alloc] initWithDictionary:{CFArrayGetValueAtIndex(v29, v13)}];
      v74[0] = kSCPropNetDNSSupplementalMatchDomains;
      v74[1] = kSCPropNetDNSSupplementalMatchDomainsNoSearch;
      v59 = [NSArray arrayWithObjects:v74 count:2];
      [v58 removeObjectsForKeys:v59];

      CFArraySetValueAtIndex(v29, v13, v58);
    }

    if ((idx & 0x8000000000000000) == 0)
    {
      v60 = [[NSMutableDictionary alloc] initWithDictionary:{CFArrayGetValueAtIndex(v29, idx)}];
      v73 = kSCPropNetProxiesSupplementalMatchDomains;
      v61 = [NSArray arrayWithObjects:&v73 count:1];
      [v60 removeObjectsForKeys:v61];

      CFArraySetValueAtIndex(v29, idx, v60);
    }
  }

  if (nelog_is_extra_vpn_logging_enabled())
  {
    v62 = ne_log_large_obj();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
    {
      *out = 138412546;
      *&out[4] = a2;
      *&out[12] = 2112;
      *&out[14] = v29;
      _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_INFO, "names %@, dictionaries %@", out, 0x16u);
    }
  }
}

void sub_1000703A4(void *a1)
{
  v2 = [a1 server];
  sub_100059ED4(v2, v1);
}

void sub_1000703E4(void *a1, int a2)
{
  v3 = a1;
  v5 = v3;
  if (a2 || (!v3 ? (Property = 0) : (Property = objc_getProperty(v3, v4, 360, 1)), [Property type] != 1))
  {
    v11 = 0;
  }

  else
  {
    if (qword_1000FD550 != -1)
    {
      dispatch_once(&qword_1000FD550, &stru_1000EA5C8);
    }

    if (v5)
    {
      v7 = v5[46];
    }

    else
    {
      v7 = 0;
    }

    v8 = (*(qword_1000FD548 + 96))(v7);
    if (isa_nsdictionary())
    {
      v9 = [v8 objectForKeyedSubscript:kSCEntNetIPSec];
      v10 = [v9 objectForKeyedSubscript:@"LastCause"];

      if (isa_nsnumber())
      {
        v11 = +[NEVPNConnection createDisconnectErrorWithDomain:code:](NEVPNConnection, "createDisconnectErrorWithDomain:code:", @"NEVPNConnectionErrorDomainIPSec", [v10 unsignedIntValue]);
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  v12 = [v5 queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000705CC;
  block[3] = &unk_1000EB360;
  v16 = v5;
  v17 = v11;
  v18 = a2;
  v13 = v11;
  v14 = v5;
  dispatch_async(v12, block);
}

id sub_1000705CC(uint64_t a1)
{
  result = [*(a1 + 32) setLastDisconnectError:*(a1 + 40)];
  v3 = *(a1 + 48);
  if (v3 <= 3)
  {
    v4 = dword_1000C2D10[v3];
    v5 = *(a1 + 32);

    return [v5 setStatus:v4];
  }

  return result;
}

id sub_10007062C(void *a1)
{
  Property = a1;
  v4 = Property;
  if (Property)
  {
    Property = objc_getProperty(Property, v3, 360, 1);
  }

  v5 = Property;
  v6 = [v5 copyLegacyDictionary];
  if ([v5 type] != 2)
  {
    if ([v5 type] != 1)
    {
      goto LABEL_32;
    }

    v45[0] = kSCPropNetIPSecXAuthPassword;
    v45[1] = kSCPropNetIPSecXAuthPasswordEncryption;
    v45[2] = kSCPropNetIPSecSharedSecret;
    v24 = [NSArray arrayWithObjects:v45 count:3];
    [v6 removeObjectsForKeys:v24];

    if (v4 && v4[88] == 2)
    {
      v24 = [v4 configuration];
      v1 = [v24 appVPN];
      if ([v1 isOnDemandEnabled])
      {

        goto LABEL_29;
      }

      v25 = 1;
    }

    else
    {
      v25 = 0;
    }

    v26 = [v4 configuration];
    v27 = [v26 VPN];
    v28 = [v27 isOnDemandEnabled];

    if (v25)
    {

      if ((v28 & 1) == 0)
      {
LABEL_30:
        v29 = [v4 configuration];
        v30 = [v29 payloadInfo];
        v31 = [v30 profileIdentifier];

        if (v31)
        {
          v32 = [v4 configuration];
          v33 = [v32 payloadInfo];
          v34 = [v33 profileIdentifier];
          [v6 setObject:v34 forKeyedSubscript:@"ProfileIdentifier"];
        }

LABEL_32:
        v8 = v6;
        if (!v6)
        {
          goto LABEL_34;
        }

        goto LABEL_33;
      }
    }

    else if (!v28)
    {
      goto LABEL_30;
    }

LABEL_29:
    [v6 setObject:&off_1000EE360 forKeyedSubscript:kSCPropNetIPSecOnDemandEnabled];
    goto LABEL_30;
  }

  v7 = v5;
  v8 = objc_alloc_init(NSMutableDictionary);
  v9 = [v4 configuration];
  v10 = [v9 name];
  [v8 setObject:v10 forKeyedSubscript:kSCPropUserDefinedName];

  if (nelog_is_info_logging_enabled())
  {
    [v6 setObject:&off_1000EE360 forKeyedSubscript:kSCPropNetPPPVerboseLogging];
  }

  [v8 setObject:v6 forKeyedSubscript:kSCEntNetPPP];
  v11 = [v7 IPv4Settings];

  if (v11)
  {
    v12 = [v7 IPv4Settings];
    v13 = [v12 copyLegacyDictionary];
    [v8 setObject:v13 forKeyedSubscript:kSCEntNetIPv4];
  }

  v14 = [v7 IPv6Settings];

  if (v14)
  {
    v15 = [v7 IPv6Settings];
    v16 = [v15 copyLegacyDictionary];
    [v8 setObject:v16 forKeyedSubscript:kSCEntNetIPv6];
  }

  v17 = [v7 DNSSettings];

  if (v17)
  {
    v18 = [v7 DNSSettings];
    v19 = [v18 copyLegacyDictionary];
    [v8 setObject:v19 forKeyedSubscript:kSCEntNetDNS];
  }

  v20 = [v7 proxySettings];

  if (v20)
  {
    v21 = [v7 proxySettings];
    v22 = [v21 copyLegacyDictionary];
    [v8 setObject:v22 forKeyedSubscript:kSCEntNetProxies];
  }

  if ([v7 type] == 2)
  {
    v23 = [v7 copyLegacyIPSecDictionary];
    [v8 setObject:v23 forKeyedSubscript:kSCEntNetIPSec];
  }

  if (v8)
  {
LABEL_33:
    v43 = @"NetworkExtension";
    v35 = [v4 configuration];
    v36 = [v35 identifier];
    v37 = [v36 UUIDString];
    v44 = v37;
    v38 = [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
    [v8 setObject:v38 forKeyedSubscript:@"EnvironmentVariables"];
  }

LABEL_34:
  if (nelog_is_extra_vpn_logging_enabled())
  {
    v39 = ne_log_obj();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v41 = 138412290;
      v42 = v8;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "service configuration %@", &v41, 0xCu);
    }
  }

  return v8;
}

uint64_t sub_100070B78(int a1)
{
  if (a1 < 6)
  {
    return 1;
  }

  if (a1 == 6)
  {
    return nelog_is_info_logging_enabled();
  }

  if (a1 > 7)
  {
    return 0;
  }

  return nelog_is_debug_logging_enabled();
}

void sub_100070BA4(int a1, CFStringRef format, va_list arguments)
{
  v4 = CFStringCreateWithFormatAndArguments(kCFAllocatorDefault, 0, format, arguments);
  Length = CFStringGetLength(v4);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  v7 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x9917839uLL);
  if (v7)
  {
    v8 = v7;
    if (CFStringGetCString(v4, v7, MaximumSizeForEncoding + 1, 0x8000100u))
    {
      if (a1 <= 3)
      {
        v9 = ne_log_obj();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v12 = 136315138;
          v13 = v8;
          _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s", &v12, 0xCu);
        }

        goto LABEL_16;
      }

      if (a1 <= 5)
      {
        v9 = ne_log_obj();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v12 = 136315138;
          v13 = v8;
          v10 = v9;
          v11 = OS_LOG_TYPE_DEFAULT;
LABEL_12:
          _os_log_impl(&_mh_execute_header, v10, v11, "%s", &v12, 0xCu);
          goto LABEL_16;
        }

        goto LABEL_16;
      }

      if (a1 == 6)
      {
        v9 = ne_log_obj();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v12 = 136315138;
          v13 = v8;
          v10 = v9;
          v11 = OS_LOG_TYPE_INFO;
          goto LABEL_12;
        }

LABEL_16:

        goto LABEL_17;
      }

      if (a1 <= 7)
      {
        v9 = ne_log_obj();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v12 = 136315138;
          v13 = v8;
          _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%s", &v12, 0xCu);
        }

        goto LABEL_16;
      }
    }

LABEL_17:
    free(v8);
  }

  CFRelease(v4);
}

void sub_100070E40(uint64_t a1)
{
  if ([*(a1 + 32) type] == 2)
  {
    v21 = [*(a1 + 32) configuration];
    v2 = [v21 appVPN];
    v3 = [v2 appRules];
    if ([v3 count])
    {
      v4 = [*(a1 + 32) isActive];

      if (v4)
      {
        v5 = sub_100071110(*(a1 + 32));
        if (isa_nsstring())
        {
          v6 = ne_log_obj();
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
          {
            v7 = *(a1 + 32);
            *buf = 138412546;
            v23 = v7;
            v24 = 2112;
            v25 = v5;
            _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@: Re-setting policies because the installed apps changed for tunnel %@", buf, 0x16u);
          }

          v8 = [*(a1 + 32) policySession];
          v9 = [*(a1 + 32) configuration];
          v10 = [v9 appVPN];
          v11 = [v10 appRules];
          v12 = [*(a1 + 32) uid];
          [v12 intValue];
          sub_100040988(v8, v11);

          v13 = [*(a1 + 32) policySession];
          v14 = [*(a1 + 32) configuration];
          v15 = [v14 appVPN];
          v16 = [v15 appRules];
          LOBYTE(v12) = sub_1000713F8(*(a1 + 32));
          v17 = sub_1000714C4(*(a1 + 32));
          v18 = [*(a1 + 32) configuration];
          v19 = [v18 appVPN];
          v20 = [v19 excludedDomains];
          sub_100041F28(v13, v16, v5, 0, v12, v17, 0, 0, v20);
        }
      }
    }

    else
    {
    }
  }
}

__CFString *sub_100071110(void *a1)
{
  if (!a1)
  {
    NetworkServiceEntity = 0;
    goto LABEL_24;
  }

  *buf = 0;
  v2 = [a1 configuration];
  v3 = [v2 identifier];
  NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainState, [v3 UUIDString], kSCEntNetIPv4);

  if (NetworkServiceEntity)
  {
    v5 = SCDynamicStoreCopyValue(0, NetworkServiceEntity);
    *buf = v5;
    if (!v5)
    {
      goto LABEL_7;
    }

    NetworkServiceEntity = CFDictionaryGetValue(v5, kSCPropInterfaceName);
    TypeID = CFStringGetTypeID();
    if (NetworkServiceEntity)
    {
      if (CFGetTypeID(NetworkServiceEntity) == TypeID)
      {
        CFRetain(NetworkServiceEntity);
        goto LABEL_8;
      }

LABEL_7:
      NetworkServiceEntity = 0;
    }
  }

LABEL_8:
  myCFRelease();
  myCFRelease();
  if (NetworkServiceEntity && ![(__CFString *)NetworkServiceEntity isEqualToString:&stru_1000EBA68])
  {
    goto LABEL_17;
  }

  *buf = 0;
  v7 = [a1 configuration];
  v8 = [v7 identifier];
  v9 = SCDynamicStoreKeyCreateNetworkServiceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainState, [v8 UUIDString], kSCEntNetIPv6);

  if (!v9)
  {
    goto LABEL_15;
  }

  v10 = SCDynamicStoreCopyValue(0, v9);
  *buf = v10;
  if (v10 && (Value = CFDictionaryGetValue(v10, kSCPropInterfaceName), v12 = CFStringGetTypeID(), Value) && CFGetTypeID(Value) == v12)
  {
    CFRetain(Value);
  }

  else
  {
LABEL_15:
    Value = NetworkServiceEntity;
  }

  myCFRelease();
  myCFRelease();
  NetworkServiceEntity = Value;
  if (Value)
  {
LABEL_17:
    if (![(__CFString *)NetworkServiceEntity isEqualToString:&stru_1000EBA68])
    {
      goto LABEL_24;
    }

    v13 = ne_log_obj();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = a1;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%@: received empty interface name", buf, 0xCu);
    }
  }

  else
  {
    v13 = ne_log_obj();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = a1;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%@: failed to query interface name", buf, 0xCu);
    }

    NetworkServiceEntity = 0;
  }

LABEL_24:

  return NetworkServiceEntity;
}

const __CFString *sub_1000713F8(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = [a1 configuration];
  v2 = [v1 identifier];
  NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainState, [v2 UUIDString], kSCEntNetDNS);

  if (NetworkServiceEntity)
  {
    NetworkServiceEntity = (SCDynamicStoreCopyValue(0, NetworkServiceEntity) != 0);
  }

  myCFRelease();
  myCFRelease();
  return NetworkServiceEntity;
}

unint64_t sub_1000714C4(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = [a1 configuration];
  v2 = [v1 identifier];
  NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainState, [v2 UUIDString], kSCEntNetProxies);

  if (NetworkServiceEntity)
  {
    NetworkServiceEntity = SCDynamicStoreCopyValue(0, NetworkServiceEntity);
    if (NetworkServiceEntity)
    {
      NetworkServiceEntity = NEGetIntFromDictionary() || NEGetIntFromDictionary() || NEGetIntFromDictionary() != 0;
    }
  }

  myCFRelease();
  myCFRelease();
  return NetworkServiceEntity;
}

void sub_10007165C(uint64_t a1)
{
  if (qword_1000FD550 != -1)
  {
    dispatch_once(&qword_1000FD550, &stru_1000EA5C8);
  }

  v2 = *(qword_1000FD548 + 160);
  if (v2)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(v3 + 368);
    }

    else
    {
      v4 = 0;
    }

    v2(v4);
  }
}

void sub_100071758(uint64_t a1)
{
  if (qword_1000FD550 != -1)
  {
    dispatch_once(&qword_1000FD550, &stru_1000EA5C8);
  }

  v2 = *(qword_1000FD548 + 152);
  if (v2)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(v3 + 368);
    }

    else
    {
      v4 = 0;
    }

    v2(v4);
  }
}

void sub_100071854(uint64_t a1)
{
  if (qword_1000FD550 != -1)
  {
    dispatch_once(&qword_1000FD550, &stru_1000EA5C8);
  }

  v2 = *(qword_1000FD548 + 144);
  if (v2)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(v3 + 368);
    }

    else
    {
      v4 = 0;
    }

    v2(v4);
  }
}

void sub_100071950(uint64_t a1)
{
  if (qword_1000FD550 != -1)
  {
    dispatch_once(&qword_1000FD550, &stru_1000EA5C8);
  }

  v2 = *(qword_1000FD548 + 136);
  if (v2)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(v3 + 368);
    }

    else
    {
      v4 = 0;
    }

    v2(v4);
  }
}

void sub_100071BE0(uint64_t a1)
{
  if (qword_1000FD550 != -1)
  {
    dispatch_once(&qword_1000FD550, &stru_1000EA5C8);
  }

  v2 = *(qword_1000FD548 + 128);
  if (v2)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(v3 + 368);
    }

    else
    {
      v4 = 0;
    }

    v2(v4);
  }
}

void sub_100071CDC(uint64_t a1)
{
  if (qword_1000FD550 != -1)
  {
    dispatch_once(&qword_1000FD550, &stru_1000EA5C8);
  }

  v2 = qword_1000FD548;
  if (*(qword_1000FD548 + 120))
  {
    v3 = [*(a1 + 32) queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100071DD0;
    block[3] = &unk_1000EB1C0;
    block[4] = *(a1 + 32);
    dispatch_async(v3, block);

    v4 = *(a1 + 32);
    if (v4)
    {
      v5 = *(v4 + 368);
    }

    else
    {
      v5 = 0;
    }

    (*(v2 + 120))(v5);
  }
}

void sub_100071DD0(uint64_t a1)
{
  v2 = [*(a1 + 32) policySession];
  sub_100030D44(v2);

  v3 = [*(a1 + 32) policySession];
  sub_100030F60(v3);

  v4 = [*(a1 + 32) policySession];
  sub_100034060(v4);

  sub_10008FD50(*(a1 + 32));
  v6 = *(a1 + 32);
  if (v6)
  {

    objc_setProperty_atomic(v6, v5, 0, 376);
  }
}

void sub_100071EDC(uint64_t a1)
{
  if (qword_1000FD550 != -1)
  {
    dispatch_once(&qword_1000FD550, &stru_1000EA5C8);
  }

  v2 = *(qword_1000FD548 + 112);
  if (v2)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(v3 + 368);
    }

    else
    {
      v4 = 0;
    }

    v2(v4);
    v5 = sub_100071FF4(*(a1 + 32));
    v6 = [*(a1 + 32) queue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000721F0;
    v8[3] = &unk_1000EB198;
    v8[4] = *(a1 + 32);
    v9 = v5;
    v7 = v5;
    dispatch_async(v6, v8);
  }
}

id sub_100071FF4(void *a1)
{
  if (!a1)
  {
    goto LABEL_7;
  }

  if (qword_1000FD550 != -1)
  {
    dispatch_once(&qword_1000FD550, &stru_1000EA5C8);
  }

  v2 = *(qword_1000FD548 + 176);
  if (!v2)
  {
LABEL_7:
    v7 = 0;
    goto LABEL_15;
  }

  v2(a1[46], v16);
  if ([objc_getProperty(a1 v3] == 2)
  {
    v5 = [NSNumber numberWithInt:v16[0]];
    v15[0] = v5;
    v6 = [NSNumber numberWithInt:v16[1]];
    v15[1] = v6;
    v7 = [NSArray arrayWithObjects:v15 count:2];
  }

  else
  {
    if ([objc_getProperty(a1 v4] != 1)
    {
      v7 = 0;
      goto LABEL_12;
    }

    v5 = [NSNumber numberWithInt:v16[0]];
    v14 = v5;
    v7 = [NSArray arrayWithObjects:&v14 count:1];
  }

LABEL_12:
  v8 = ne_log_obj();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v10 = 138412546;
    v11 = a1;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%@: bridge_functions->get_agent_pids() returned PIDs %@", &v10, 0x16u);
  }

LABEL_15:

  return v7;
}

void sub_1000721F0(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    objc_setProperty_atomic(v3, a2, *(a1 + 40), 376);
    v3 = *(a1 + 32);
  }

  v4 = sub_100071110(v3);
  if (isa_nsstring())
  {
    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v7 = [v6 server];
      v8 = [v7 primaryPhysicalInterface];
      v9 = [v8 interfaceName];
      *buf = 138412802;
      *&buf[4] = v6;
      v61 = 2112;
      v62 = v4;
      v63 = 2112;
      v64 = v9;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%@: installing rules on tunnel %@ primary %@", buf, 0x20u);
    }

    [v4 UTF8String];
    IsVPN = NEVirtualInterfaceNameIsVPN();
    v11 = ne_log_obj();
    v12 = v11;
    if (IsVPN)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        *&buf[4] = v4;
        _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Marked the %@ interface as VPN", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = v4;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Failed to mark the %@ interface as VPN", buf, 0xCu);
    }

    v13 = *(a1 + 32);
    v14 = v4;
    if (v13)
    {
      if (v13[88] == 2)
      {
        v15 = 0;
        v16 = 0;
      }

      else
      {
        v17 = [v13 configuration];
        v18 = [v17 identifier];
        NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainState, [v18 UUIDString], kSCEntNetDNS);

        *buf = NetworkServiceEntity;
        if (NetworkServiceEntity)
        {
          v20 = SCDynamicStoreCopyValue(0, NetworkServiceEntity);
        }

        else
        {
          v20 = 0;
        }

        myCFRelease();
        v16 = [v20 objectForKeyedSubscript:kSCPropNetDNSSupplementalMatchDomains];
        if (v20)
        {
          v21 = sub_100073554(v13);
          v22 = [(__CFString *)v21 objectForKeyedSubscript:kSCPropNetOverridePrimary];
          v15 = [v22 BOOLValue];
        }

        else
        {
          v15 = 0;
        }
      }

      v23 = [v13 policySession];
      sub_10004C268(v23, v14, v16, v15);
    }

    sub_10008FBD4(*(a1 + 32), v14);
    v24 = *(a1 + 32);
    if (v24)
    {
      v25 = v24[88];
      if (v25 == 1)
      {
        v37 = [v24 configuration];
        v38 = [v37 VPN];
        v39 = [v38 protocol];
        v40 = [v39 enforceRoutes];

        if (v40)
        {
          v41 = [*(a1 + 32) configuration];
          v42 = [v41 VPN];
          v43 = [v42 protocol];
          v44 = [v43 includeAllNetworks];

          if (v44)
          {
            v45 = ne_log_obj();
            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
            {
              v46 = *(a1 + 32);
              *buf = 138412290;
              *&buf[4] = v46;
              _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "%@: Ignoring enforceRoutes because includeAllNetworks is set", buf, 0xCu);
            }
          }

          else
          {
            sub_100072858(*(a1 + 32), v14);
          }
        }
      }

      else if (v25 == 2)
      {
        v26 = [v24 policySession];
        v27 = [*(a1 + 32) configuration];
        v28 = [v27 appVPN];
        v29 = [v28 appRules];
        v30 = [*(a1 + 32) uid];
        [v30 intValue];
        sub_100040988(v26, v29);

        v31 = [*(a1 + 32) policySession];
        v59 = [*(a1 + 32) configuration];
        v58 = [v59 appVPN];
        v32 = [v58 appRules];
        LOBYTE(v30) = sub_1000713F8(*(a1 + 32));
        v33 = sub_1000714C4(*(a1 + 32));
        v34 = [*(a1 + 32) configuration];
        v35 = [v34 appVPN];
        v36 = [v35 excludedDomains];
        sub_100041F28(v31, v32, v14, 0, v30, v33, 0, 0, v36);
      }
    }
  }

  if ([*(a1 + 32) type] == 1)
  {
    v47 = [*(a1 + 32) configuration];
    v48 = [v47 VPN];
    v49 = [v48 exceptionApps];

    if (v49)
    {
      v50 = [*(a1 + 32) policySession];
      v51 = [*(a1 + 32) configuration];
      v52 = [v51 VPN];
      v53 = [v52 exceptionApps];
      v54 = [*(a1 + 32) server];
      v55 = [v54 primaryPhysicalInterface];
      v56 = [v55 interfaceName];
      v57 = [*(a1 + 32) uid];
      sub_100040B4C(v50, v53, v56, [v57 intValue]);
    }
  }
}

void sub_100072858(void *a1, void *a2)
{
  v70 = a2;
  if (!a1)
  {
    goto LABEL_98;
  }

  if ([objc_getProperty(a1 v3] == 2)
  {
    v5 = [v70 UTF8String];
    v6 = if_nametoindex(v5);
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      *&buf[4] = a1;
      *&buf[12] = 2080;
      *&buf[14] = v5;
      *&buf[22] = 1024;
      *&buf[24] = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%@: Getting routes for interface %s[%u]", buf, 0x1Cu);
    }

    v69 = v6;
    __s2 = v5;

    *v72 = xmmword_1000C2D30;
    v73 = 7;
    v8 = 3;
    while (1)
    {
      v71 = 0;
      if (sysctl(v72, 6u, 0, &v71, 0, 0) < 0)
      {
        __errnuma = *__error();
        if (strerror_r(__errnuma, buf, 0x80uLL))
        {
          buf[0] = 0;
        }

        loga = ne_log_obj();
        if (!os_log_type_enabled(loga, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_27;
        }

        *v90 = 67109378;
        *&v90[4] = __errnuma;
        *&v90[8] = 2080;
        *&v90[10] = buf;
        v11 = v90;
        v12 = loga;
        v13 = "Unable to get size estimate for routing table: [%d] %s";
        goto LABEL_25;
      }

      v9 = 5 * v71 >= 4 ? ((((5 * v71) >> 2) - 1) | 3) + 1 : 4;
      v71 = v9;
      v10 = malloc_type_malloc(v9, 0x100004077774924uLL);
      if (v10)
      {
        break;
      }

      loga = ne_log_obj();
      if (os_log_type_enabled(loga, OS_LOG_TYPE_FAULT))
      {
        *buf = 134217984;
        *&buf[4] = v71;
        v11 = buf;
        v12 = loga;
        v13 = "malloc(%zu) failed";
        v14 = 12;
        goto LABEL_26;
      }

LABEL_27:

      if (!--v8)
      {
        goto LABEL_98;
      }
    }

    log = v10;
    if ((sysctl(v72, 6u, v10, &v71, 0, 0) & 0x80000000) == 0)
    {
      v19 = objc_alloc_init(NSMutableArray);
      v26 = v6;
      if (v71 < 1)
      {
        goto LABEL_96;
      }

      v27 = log;
      v28 = log + v71;
      while (1)
      {
        v29 = (v27 + 46);
        if ((v27 + 46) > v28)
        {
          break;
        }

        v30 = *v27;
        if (v27 + v30 > v28)
        {
          v52 = ne_log_obj();
          if (!os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_95;
          }

          *buf = 0;
          v53 = "Not enough data to read routing table message";
          goto LABEL_110;
        }

        if (v26 != v27[2] || (*(v27 + 2) & 0x1800801) != 0x801 || (~*(v27 + 3) & 7) != 0)
        {
          goto LABEL_65;
        }

        objc_opt_self();
        v31 = ne_log_obj();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "Attempting to parse route", buf, 2u);
        }

        v32 = 0;
        v88 = 0u;
        v89 = 0u;
        v86 = 0u;
        v87 = 0u;
        v84 = 0u;
        v85 = 0u;
        v82 = 0u;
        v83 = 0u;
        memset(v81, 0, sizeof(v81));
        v79 = 0u;
        v80 = 0u;
        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        memset(buf, 0, sizeof(buf));
        do
        {
          v33 = *v29;
          if (v33 >= 0x81)
          {
            v37 = ne_log_obj();
            if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_63;
            }

            v41 = *v29;
            *v90 = 67109120;
            *&v90[4] = v41;
            v42 = v37;
            v43 = "sockaddr size %u is too large!";
LABEL_61:
            _os_log_error_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, v43, v90, 8u);
            goto LABEL_63;
          }

          memcpy(&buf[v32], v29, *v29);
          v34 = ((v33 - 1) & 0xFFFFFFFC) + 4;
          if (!v33)
          {
            v34 = 4;
          }

          v29 += v34;
          v32 += 128;
        }

        while (v32 != 384);
        if (v81[1] != 18)
        {
          v37 = ne_log_obj();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
          {
            *v90 = 67109120;
            *&v90[4] = v81[1];
            v38 = v37;
            v39 = "Gateway family %u is wrong!";
            v40 = 8;
LABEL_85:
            _os_log_debug_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEBUG, v39, v90, v40);
          }

LABEL_63:

          v44 = 0;
          goto LABEL_64;
        }

        v35 = link_ntoa(v81);
        v36 = ne_log_obj();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
        {
          v50 = "NULL";
          if (v35)
          {
            v50 = v35;
          }

          *v90 = 67110914;
          *&v90[4] = v81[0];
          *&v90[8] = 1024;
          *&v90[10] = v81[1];
          *&v90[14] = 1024;
          *&v90[16] = *&v81[2];
          *&v90[20] = 1024;
          *&v90[22] = v81[4];
          *&v90[26] = 1024;
          *&v90[28] = v81[5];
          *&v90[32] = 1024;
          *&v90[34] = v81[6];
          *&v90[38] = 1024;
          *&v90[40] = v81[7];
          *&v90[44] = 2080;
          *&v90[46] = v50;
          _os_log_debug_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEBUG, "Gateway: length %u, family %u, index %u, type %u, name length %u, address length %u, selector length %u, string %s", v90, 0x36u);
        }

        if (strcmp(v35, __s2))
        {
          v37 = ne_log_obj();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
          {
            *v90 = 136315394;
            *&v90[4] = v35;
            *&v90[12] = 2080;
            *&v90[14] = __s2;
            v38 = v37;
            v39 = "Gateway interface string %s doesn't match %s";
            v40 = 22;
            goto LABEL_85;
          }

          goto LABEL_63;
        }

        if (buf[1] != 2)
        {
          v37 = ne_log_obj();
          if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_63;
          }

          *v90 = 67109120;
          *&v90[4] = buf[1];
          v42 = v37;
          v43 = "Destination address family %u is wrong!";
          goto LABEL_61;
        }

        v45 = NECreateAddressString();
        v46 = ne_log_obj();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
        {
          *v90 = 67109634;
          *&v90[4] = buf[0];
          *&v90[8] = 1024;
          *&v90[10] = buf[1];
          *&v90[14] = 2112;
          *&v90[16] = v45;
          _os_log_debug_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEBUG, "Destination: length %u, family %u, string %@", v90, 0x18u);
        }

        v47 = ne_log_obj();
        v48 = v47;
        if (v45)
        {
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
          {
            *v90 = 67109376;
            *&v90[4] = v82;
            *&v90[8] = 1024;
            *&v90[10] = BYTE1(v82);
            _os_log_debug_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEBUG, "Netmask: length %u, family %u", v90, 0xEu);
          }

          LOWORD(v82) = 528;
          v48 = NECreateAddressString();
          v49 = ne_log_obj();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
          {
            *v90 = 138412290;
            *&v90[4] = v48;
            _os_log_debug_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEBUG, "Netmask: string %@", v90, 0xCu);
          }

          if (v48)
          {
            v44 = [[NEIPv4Route alloc] initWithDestinationAddress:v45 subnetMask:v48];
            goto LABEL_90;
          }

          v51 = ne_log_obj();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
          {
            *v90 = 0;
            _os_log_error_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "Netmask address string is nil!", v90, 2u);
          }

          v48 = 0;
        }

        else if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          *v90 = 0;
          _os_log_error_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "Destination address string is nil!", v90, 2u);
        }

        v44 = 0;
LABEL_90:

        if (v44)
        {
          [v19 addObject:v44];
        }

LABEL_64:
        v26 = v69;

        v30 = *v27;
LABEL_65:
        v27 = (v27 + v30);
        if (v27 >= v28)
        {
LABEL_96:
          free(log);
          if (v19)
          {
            goto LABEL_97;
          }

          goto LABEL_98;
        }
      }

      v52 = ne_log_obj();
      if (!os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
LABEL_95:

        goto LABEL_96;
      }

      *buf = 0;
      v53 = "Not enough data to read rtm";
LABEL_110:
      _os_log_error_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, v53, buf, 2u);
      goto LABEL_95;
    }

    __errnum = *__error();
    free(log);
    if (__errnum == 12)
    {
      loga = ne_log_obj();
      if (os_log_type_enabled(loga, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, loga, OS_LOG_TYPE_ERROR, "Unable to get routing table because allocated buffer was too small", buf, 2u);
      }

      goto LABEL_27;
    }

    if (strerror_r(__errnum, buf, 0x80uLL))
    {
      buf[0] = 0;
    }

    loga = ne_log_obj();
    if (!os_log_type_enabled(loga, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_27;
    }

    *v90 = 67109378;
    *&v90[4] = __errnum;
    *&v90[8] = 2080;
    *&v90[10] = buf;
    v11 = v90;
    v12 = loga;
    v13 = "Unable to get routing table: [%d] %s";
LABEL_25:
    v14 = 18;
LABEL_26:
    _os_log_fault_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, v13, v11, v14);
    goto LABEL_27;
  }

  if ([objc_getProperty(a1 v4] != 1)
  {
    goto LABEL_98;
  }

  v15 = sub_100073554(a1);
  v16 = v15;
  if (!v15)
  {
    v20 = ne_log_obj();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Unable to get IPv4 dictionary from dynamic store", buf, 2u);
    }

    goto LABEL_106;
  }

  v17 = [(__CFString *)v15 objectForKeyedSubscript:kSCPropNetIPv4AdditionalRoutes];
  if (!v17)
  {
    v63 = ne_log_obj();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v63, OS_LOG_TYPE_ERROR, "Failed to get included routes dictionary", buf, 2u);
    }

    v20 = 0;
LABEL_106:
    v19 = 0;
    goto LABEL_107;
  }

  v18 = v17;
  v19 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v17, "count")}];
  memset(v90, 0, 64);
  v20 = v18;
  v21 = [v20 countByEnumeratingWithState:v90 objects:buf count:16];
  if (v21)
  {
    v22 = v21;
    v23 = **&v90[16];
    do
    {
      for (i = 0; i != v22; i = i + 1)
      {
        if (**&v90[16] != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = [[NEIPv4Route alloc] initFromLegacyDictionary:*(*&v90[8] + 8 * i)];
        [v19 addObject:v25];
      }

      v22 = [v20 countByEnumeratingWithState:v90 objects:buf count:16];
    }

    while (v22);
  }

LABEL_107:
  if (v19)
  {
LABEL_97:
    v54 = [a1 policySession];
    v55 = [a1 server];
    v56 = [v55 primaryPhysicalInterface];
    v57 = [v56 interfaceName];
    v59 = objc_getProperty(a1, v58, 376, 1);
    v60 = [a1 configuration];
    v61 = [v60 VPN];
    v62 = [v61 protocol];
    sub_10003CECC(v54, v70, v57, v59, v19, 0, 0, 0, [v62 excludeLocalNetworks]);
  }

LABEL_98:
}

const __CFString *sub_100073554(void *a1)
{
  v1 = [a1 configuration];
  v2 = [v1 identifier];
  NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainState, [v2 UUIDString], kSCEntNetIPv4);

  if (NetworkServiceEntity)
  {
    NetworkServiceEntity = SCDynamicStoreCopyValue(0, NetworkServiceEntity);
  }

  myCFRelease();
  return NetworkServiceEntity;
}

void sub_10007369C(uint64_t a1)
{
  reply = xpc_dictionary_create_reply(*(a1 + 32));
  if (qword_1000FD550 != -1)
  {
    dispatch_once(&qword_1000FD550, &stru_1000EA5C8);
  }

  v3 = *(a1 + 48);
  if (v3 == 3)
  {
    v8 = *(a1 + 40);
    if (v8)
    {
      v9 = *(v8 + 368);
    }

    else
    {
      v9 = 0;
    }

    v7 = (*(qword_1000FD548 + 104))(v9, *(a1 + 32));
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(qword_1000FD548 + 96);
    }

    else
    {
      if (v3 != 1)
      {
        goto LABEL_35;
      }

      v4 = *(qword_1000FD548 + 88);
    }

    v5 = *(a1 + 40);
    if (v5)
    {
      v6 = *(v5 + 368);
    }

    else
    {
      v6 = 0;
    }

    v7 = v4(v6);
  }

  v10 = v7;
  if (v7)
  {
    v11 = _CFXPCCreateXPCObjectFromCFObject();
    v12 = v11;
    if (*(a1 + 48) == 2 && v11)
    {
      if ((sub_10008AA94(*(a1 + 40)) & 1) != 0 || sub_10008AB9C(*(a1 + 40)))
      {
        v13 = [*(a1 + 40) matchedRule];

        if (v13)
        {
          v14 = xpc_dictionary_get_dictionary(v12, "VPN");
          v15 = v14;
          if (v14 && xpc_get_type(v14) == &_xpc_type_dictionary || (v16 = xpc_dictionary_create(0, 0, 0), v15, xpc_dictionary_set_value(v12, "VPN", v16), (v15 = v16) != 0))
          {
            if (xpc_get_type(v15) == &_xpc_type_dictionary)
            {
              v17 = [*(a1 + 40) matchedRule];
              xpc_dictionary_set_int64(v15, "OnDemandAction", [v17 action]);
            }
          }
        }
      }

      v18 = [*(a1 + 40) lastDisconnectError];
      if (v18)
      {
        v23 = 0;
        v19 = [NSKeyedArchiver archivedDataWithRootObject:v18 requiringSecureCoding:1 error:&v23];
        v20 = v23;
        if (v19)
        {
          xpc_dictionary_set_data(v12, "LastDisconnectError", [v19 bytes], objc_msgSend(v19, "length"));
        }

        else
        {
          v21 = ne_log_obj();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v25 = v20;
            _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Failed to serialize the last disconnect error: %@", buf, 0xCu);
          }
        }
      }
    }

    xpc_dictionary_set_value(reply, "SessionInfo", v12);
  }

LABEL_35:
  v22 = xpc_dictionary_get_remote_connection(*(a1 + 32));
  xpc_connection_send_message(v22, reply);
}

void sub_100073A60(uint64_t a1)
{
  reply = xpc_dictionary_create_reply(*(a1 + 32));
  v6 = 0;
  if (qword_1000FD550 != -1)
  {
    dispatch_once(&qword_1000FD550, &stru_1000EA5C8);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = *(v3 + 368);
  }

  else
  {
    v4 = 0;
  }

  (*(qword_1000FD548 + 72))(v4, *(a1 + 32), &v6 + 4, &v6);
  if (bootstrap_port)
  {
    xpc_dictionary_set_mach_send();
  }

  if (v6)
  {
    xpc_dictionary_set_mach_send();
  }

  v5 = xpc_dictionary_get_remote_connection(*(a1 + 32));
  xpc_connection_send_message(v5, reply);
}

void sub_100073C28(uint64_t a1)
{
  v2 = sub_100071FF4(*(a1 + 32));
  v3 = [*(a1 + 32) queue];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_100073D58;
  v12 = &unk_1000EB198;
  v13 = *(a1 + 32);
  v4 = v2;
  v14 = v4;
  dispatch_async(v3, &v9);

  if (qword_1000FD550 != -1)
  {
    dispatch_once(&qword_1000FD550, &stru_1000EA5C8);
  }

  v5 = *(qword_1000FD548 + 16);
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = *(v6 + 368);
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 40);
  v5(v7, [v8 UTF8String], *(a1 + 48));
}

void sub_100073D58(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    objc_setProperty_atomic(v3, a2, *(a1 + 40), 376);
    v3 = *(a1 + 32);
  }

  if ([v3 type] == 1)
  {
    v4 = [*(a1 + 32) configuration];
    v5 = [v4 VPN];
    v6 = [v5 exceptionApps];

    if (v6)
    {
      v7 = [*(a1 + 32) policySession];
      v8 = [*(a1 + 32) configuration];
      v9 = [v8 VPN];
      v10 = [v9 exceptionApps];
      v11 = [*(a1 + 32) server];
      v12 = [v11 primaryPhysicalInterface];
      v13 = [v12 interfaceName];
      v14 = [*(a1 + 32) uid];
      sub_100040B4C(v7, v10, v13, [v14 intValue]);
    }

    v15 = [*(a1 + 32) configuration];
    v16 = [v15 VPN];
    v17 = [v16 protocol];
    v18 = [v17 enforceRoutes];

    if (v18)
    {
      v19 = [*(a1 + 32) configuration];
      v20 = [v19 VPN];
      v21 = [v20 protocol];
      v22 = [v21 includeAllNetworks];

      if (v22)
      {
        v23 = ne_log_obj();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = *(a1 + 32);
          v30 = 138412290;
          v31 = v24;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%@: Ignoring enforceRoutes because includeAllNetworks is set", &v30, 0xCu);
        }
      }

      else
      {
        v23 = sub_100071110(*(a1 + 32));
        if (isa_nsstring())
        {
          v25 = ne_log_obj();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v26 = *(a1 + 32);
            v27 = [v26 server];
            v28 = [v27 primaryPhysicalInterface];
            v29 = [v28 interfaceName];
            v30 = 138412802;
            v31 = v26;
            v32 = 2112;
            v33 = v23;
            v34 = 2112;
            v35 = v29;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%@: Re-setting route enforcement policies due to interface change event for tunnel %@ primary %@", &v30, 0x20u);
          }

          sub_100072858(*(a1 + 32), v23);
        }
      }
    }
  }
}

uint64_t sub_100074154(uint64_t a1)
{
  if (qword_1000FD550 != -1)
  {
    dispatch_once(&qword_1000FD550, &stru_1000EA5C8);
  }

  v2 = *(qword_1000FD548 + 48);
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(v3 + 368);
  }

  else
  {
    v4 = 0;
  }

  return v2(v4);
}

uint64_t sub_100074244(uint64_t a1, __n128 a2)
{
  if (qword_1000FD550 != -1)
  {
    dispatch_once(&qword_1000FD550, &stru_1000EA5C8);
  }

  v3 = *(qword_1000FD548 + 40);
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 368);
  }

  else
  {
    v5 = 0;
  }

  a2.n128_u64[0] = *(a1 + 40);

  return v3(v5, a2);
}

void sub_100074338(uint64_t a1)
{
  if (qword_1000FD550 != -1)
  {
    dispatch_once(&qword_1000FD550, &stru_1000EA5C8);
  }

  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 368);
  }

  else
  {
    v3 = 0;
  }

  if (((*(qword_1000FD548 + 24))(v3) & 1) == 0)
  {
    v5 = [*(a1 + 32) server];
    sub_100059ED4(v5, v4);
  }
}

id sub_100074488(uint64_t a1)
{
  result = [*(a1 + 32) status];
  if (result != 1)
  {
    if (qword_1000FD550 != -1)
    {
      dispatch_once(&qword_1000FD550, &stru_1000EA5C8);
    }

    v3 = *(qword_1000FD548 + 64);
    v4 = *(a1 + 32);
    if (v4)
    {
      v5 = *(v4 + 368);
    }

    else
    {
      v5 = 0;
    }

    return v3(v5);
  }

  return result;
}

void sub_100074CE4(uint64_t a1, const char *a2)
{
  v4 = a1 + 32;
  Property = *(a1 + 32);
  v5 = *(*(v4 + 8) + 56);
  if (Property)
  {
    v6 = Property[46];
    Property = objc_getProperty(Property, a2, 384, 1);
    v7 = *(a1 + 32);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = Property;
  v9 = [v7 uid];
  v10 = [v9 unsignedIntValue];
  v11 = [*(a1 + 32) gid];
  v12 = v5(v6, v8, v10, [v11 unsignedIntValue], *(a1 + 48), *(a1 + 52), objc_msgSend(*(a1 + 32), "isOnDemand"));

  if (v12)
  {
    v13 = *(a1 + 32);
    v14 = *(*(a1 + 40) + 80);
    if (v13)
    {
      v15 = *(v13 + 368);
    }

    else
    {
      v15 = 0;
    }

    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100074F98;
    v26[3] = &unk_1000EB1C0;
    v26[4] = v13;
    v14(v15, v26);
  }

  else
  {
    sub_1000703E4(*(a1 + 32), 0);
  }

  v16 = *(a1 + 48);
  if (v16 && mach_port_deallocate(mach_task_self_, v16))
  {
    v17 = ne_log_obj();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v20 = *(a1 + 32);
      v21 = __error();
      v22 = strerror(*v21);
      *buf = 138412546;
      v28 = v20;
      v29 = 2080;
      v30 = v22;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%@: Failed to deallocate the bootstrap mach port: %s", buf, 0x16u);
    }
  }

  v18 = *(a1 + 52);
  if (v18 && mach_port_deallocate(mach_task_self_, v18))
  {
    v19 = ne_log_obj();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v23 = *(a1 + 32);
      v24 = __error();
      v25 = strerror(*v24);
      *buf = 138412546;
      v28 = v23;
      v29 = 2080;
      v30 = v25;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%@: Failed to deallocate the audit session mach port: %s", buf, 0x16u);
    }
  }
}

void sub_100074F98(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = ne_log_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = 138412290;
      v4 = v1;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%@ is now disposable", &v3, 0xCu);
    }
  }
}

void *sub_1000750F4(void *a1, void *a2, void *a3, void *a4, int a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  if (!a1)
  {
    goto LABEL_25;
  }

  v27.receiver = a1;
  v27.super_class = NESMLegacySession;
  v12 = objc_msgSendSuper2(&v27, "initWithConfiguration:andServer:", v9, v10);
  a1 = v12;
  if (!v12)
  {
    goto LABEL_25;
  }

  *(v12 + 88) = a5;
  objc_storeStrong(v12 + 45, a4);
  if (!v11)
  {
    v15 = ne_log_obj();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *buf = 138412290;
    v29 = a1;
    v16 = "%@: Failed to create a legacy session because the given configuration is not a VPN configuration";
    goto LABEL_21;
  }

  v13 = [v11 type];
  if (v13 != 1)
  {
    if (v13 == 2)
    {
      v14 = 3;
      goto LABEL_10;
    }

    v15 = ne_log_obj();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *buf = 138412290;
    v29 = a1;
    v16 = "%@: Failed to create a legacy session because the given configuration is not a IKEv1 or L2TP configuration";
LABEL_21:
    v24 = v15;
    v25 = 12;
LABEL_22:
    _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, v16, buf, v25);
    goto LABEL_24;
  }

  v14 = 1;
LABEL_10:
  if (qword_1000FD550 != -1)
  {
    dispatch_once(&qword_1000FD550, &stru_1000EA5C8);
  }

  if (!qword_1000FD548)
  {
    v15 = ne_log_obj();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v29 = a1;
      v16 = "%@: Failed to get the legacy bridge functions";
      goto LABEL_21;
    }

LABEL_24:

    a1 = 0;
    goto LABEL_25;
  }

  v17 = *qword_1000FD548;
  v18 = [v9 identifier];
  v19 = v17(v14, [v18 UUIDString], a1);

  if (!v19)
  {
    v15 = ne_log_obj();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *buf = 138412546;
    v29 = a1;
    v30 = 1024;
    v31 = v14;
    v16 = "%@: Failed to create a legacy bridge with type %d for configuration";
    v24 = v15;
    v25 = 18;
    goto LABEL_22;
  }

  a1[46] = v19;
  v20 = [NESMPolicySession alloc];
  v21 = [v9 identifier];
  v22 = [v9 grade];
  if (v20)
  {
    v23 = sub_100033D18(&v20->super.isa, v21, a5, v22, 1, 1);
  }

  else
  {
    v23 = 0;
  }

  [a1 setPolicySession:v23];

  sub_10008E79C(a1);
LABEL_25:

  return a1;
}

void sub_10007550C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[13];
  }

  v3 = v2;
  v4 = *(a1 + 32);
  if (v4)
  {
    objc_storeStrong((v4 + 104), 0);
    Property = *(a1 + 32);
    if (Property)
    {
      Property = objc_getProperty(Property, v5, 32, 1);
    }
  }

  else
  {
    Property = 0;
  }

  v7 = Property;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100075610;
  v10[3] = &unk_1000EB310;
  v8 = *(a1 + 40);
  v11 = v3;
  v12 = v8;
  v9 = v3;
  dispatch_async(v7, v10);
}

id *sub_100075628(id *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  if (a1)
  {
    v8 = a4;
    v9 = [[NEProcessIdentity alloc] initFromXPCMessage:v8];
    v10 = xpc_dictionary_get_value(v8, "SessionOptions");

    if (v10 && xpc_get_type(v10) == &_xpc_type_dictionary)
    {
      v13 = xpc_dictionary_get_value(v10, "listener-endpoint");
      v11 = v13;
      if (v13 && xpc_get_type(v13) == &_xpc_type_endpoint)
      {
        v14 = objc_alloc_init(NSXPCListenerEndpoint);
        [v14 _setEndpoint:v11];
        v23.receiver = a1;
        v23.super_class = NETestAgent;
        v15 = objc_msgSendSuper2(&v23, "initWithPluginType:pluginVersion:pluginClass:pluginInfo:userID:", v7, 1, a3, 0, 0);
        v16 = v15;
        if (v15)
        {
          objc_storeStrong(v15 + 13, v14);
          v17 = [v9 pid];
          v18 = [NSArray alloc];
          v19 = [v9 uuid];
          v20 = [v18 initWithObjects:{v19, 0}];
          sub_100093CD4(v16, v17, v20);

          v21 = [[NSArray alloc] initWithObjects:{v9, 0}];
          objc_storeStrong(v16 + 9, v21);
        }

        a1 = v16;
        v12 = a1;
      }

      else
      {
        v14 = ne_log_obj();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          v25 = v11;
          _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Missing endpoint (%p) in start message", buf, 0xCu);
        }

        v12 = 0;
      }
    }

    else
    {
      v11 = ne_log_obj();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "No start options available", buf, 2u);
      }

      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t start()
{
  errorbuf = 0;
  if (sandbox_init("com.apple.nesessionmanager", 1uLL, &errorbuf) < 0)
  {
    v85 = ne_log_obj();
    if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "com.apple.nesessionmanager";
      *&buf[12] = 2080;
      *&buf[14] = errorbuf;
      _os_log_error_impl(&_mh_execute_header, v85, OS_LOG_TYPE_ERROR, "sandbox_init %s failed: %s", buf, 0x16u);
    }

    sandbox_free_error(errorbuf);
    exit(1);
  }

  context = objc_autoreleasePoolPush();
  v0 = sub_10005750C();
  v1 = v0;
  if (v0)
  {
    v2 = v0;
    objc_sync_enter(v2);
    v3 = ne_log_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "NESMServer starting", buf, 2u);
    }

    v4 = +[NEFileHandleMaintainer sharedMaintainer];
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_10005978C;
    v90 = &unk_1000EB1C0;
    v91 = v2;
    [v4 startOwnerModeWithEventName:@"com.apple.networkextension.file-descriptor-maintainer" handlesReceivedCallback:buf];

    objc_getProperty(v2, v5, 88, 1);
    *&v93 = _NSConcreteStackBlock;
    *(&v93 + 1) = 3221225472;
    v94 = sub_100059824;
    v95 = &unk_1000EB1C0;
    v96 = v2;
    v6 = NECreateTimerSource();
    v7 = v2[40];
    v2[40] = v6;

    v8 = xpc_dictionary_create(0, 0, 0);
    v9 = getpid();
    xpc_dictionary_set_int64(v8, "nesm-pid", v9);
    xpc_set_event();

    v11 = objc_getProperty(v2, v10, 96, 1);
    xpc_connection_resume(v11);

    v13 = objc_getProperty(v2, v12, 104, 1);
    xpc_connection_resume(v13);

    v15 = objc_getProperty(v2, v14, 112, 1);
    xpc_connection_resume(v15);

    v16 = sub_10000DA38();
    v88[0] = _NSConcreteStackBlock;
    v88[1] = 3221225472;
    v88[2] = sub_1000579F0;
    v88[3] = &unk_1000EB1C0;
    v88[4] = v2;
    v17 = v88;
    v18 = v17;
    if (v16)
    {
      v19 = *(v16 + 1);
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_10000DACC;
      v90 = &unk_1000EB310;
      v91 = v16;
      v92 = v17;
      dispatch_async(v19, buf);
    }

    v20 = v2;
    objc_sync_enter(v20);
    v21 = objc_alloc_init(NWParameters);
    sub_100059130(v21);
    v22 = [[NWPathEvaluator alloc] initWithEndpoint:0 parameters:v21];
    objc_setProperty_atomic(v20, v23, v22, 256);

    v25 = objc_getProperty(v20, v24, 256, 1);
    [v25 addObserver:v20 forKeyPath:@"path" options:5 context:0];

    v26 = objc_alloc_init(NWParameters);
    [v26 setRequiredInterfaceType:2];
    sub_100059130(v26);
    v27 = [[NWPathEvaluator alloc] initWithEndpoint:0 parameters:v26];
    objc_setProperty_atomic(v20, v28, v27, 264);

    v30 = objc_getProperty(v20, v29, 264, 1);
    [v30 addObserver:v20 forKeyPath:@"path" options:5 context:0];

    v31 = objc_alloc_init(NWParameters);
    [v31 setRequiredInterfaceType:1];
    sub_100059130(v31);
    v32 = [[NWPathEvaluator alloc] initWithEndpoint:0 parameters:v31];
    objc_setProperty_atomic(v20, v33, v32, 272);

    v35 = objc_getProperty(v20, v34, 272, 1);
    [v35 addObserver:v20 forKeyPath:@"path" options:5 context:0];

    if ((*(v20 + 11) & 1) == 0)
    {
      *(v20 + 11) = 1;
      v36 = nwi_state_copy();
      v37 = sub_100054470(v36);
      objc_setProperty_atomic(v20, v38, v37, 72);

      if (v36)
      {
        nwi_state_release();
      }

      notify_key = nwi_state_get_notify_key();
      v41 = objc_getProperty(v20, v40, 88, 1);
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_1000591B0;
      v90 = &unk_1000EA3E0;
      v91 = v20;
      v42 = notify_register_dispatch(notify_key, v20 + 5, v41, buf);

      if (v42)
      {
        v43 = ne_log_obj();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          LODWORD(v93) = 67109120;
          DWORD1(v93) = v42;
          _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "Failed to register for NWI notifications: %u", &v93, 8u);
        }
      }
    }

    objc_sync_exit(v20);
    v44 = v20;
    objc_sync_enter(v44);
    if ((v44[3] & 1) == 0)
    {
      *(v44 + 12) = 1;
      v45 = [NESMPowerManager alloc];
      Property = objc_getProperty(v44, v46, 88, 1);
      v48 = Property;
      v49 = v44;
      v50 = v48;
      if (v45)
      {
        *buf = v45;
        *&buf[8] = NESMPowerManager;
        v51 = objc_msgSendSuper2(buf, "init");
        v45 = v51;
        if (v51)
        {
          objc_storeWeak(&v51->_delegate, v49);
          objc_storeStrong(&v45->_queue, Property);
          v45->_powerState = 2;
          v45->_sleepDate = -1;
        }
      }

      objc_setProperty_atomic(v49, v52, v45, 136);
      v54 = objc_getProperty(v49, v53, 136, 1);
      v55 = v54;
      if (v54)
      {
        v56 = IORegisterForSystemPower(v54, v54 + 8, sub_1000018C0, v54 + 3);
        *(v55 + 2) = v56;
        if (v56)
        {
          v58 = *(v55 + 8);
          v59 = objc_getProperty(v55, v57, 48, 1);
          IONotificationPortSetDispatchQueue(v58, v59);
        }
      }
    }

    objc_sync_exit(v44);

    v60 = v44;
    objc_sync_enter(v60);
    if ((*(v60 + 13) & 1) == 0)
    {
      *(v60 + 13) = 1;
      if (dlopen("/System/Library/PrivateFrameworks/SpringBoardServices.framework/SpringBoardServices", 16))
      {
        v62 = objc_getProperty(v60, v61, 88, 1);
        v63 = kSBSLockStateNotifyKey;
        v64 = v62;
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3221225472;
        *&buf[16] = sub_1000015F0;
        v90 = &unk_1000EA3E0;
        v91 = v60;
        v65 = notify_register_dispatch(v63, v60 + 6, v64, buf);

        if (v65)
        {
          v66 = ne_log_obj();
          if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
          {
            LODWORD(v93) = 67109120;
            DWORD1(v93) = v65;
            _os_log_error_impl(&_mh_execute_header, v66, OS_LOG_TYPE_ERROR, "Failed to register for user state notifications: %u", &v93, 8u);
          }
        }
      }
    }

    objc_sync_exit(v60);

    v67 = v60;
    objc_sync_enter(v67);
    *&v93 = _NSConcreteStackBlock;
    *(&v93 + 1) = 3221225472;
    v94 = sub_100058D38;
    v95 = &unk_1000EA3E0;
    v96 = v67;
    v68 = objc_retainBlock(&v93);
    v70 = objc_getProperty(v67, v69, 88, 1);
    notify_register_dispatch("com.apple.system.config.network_change.nwi", v67 + 7, v70, v68);

    v72 = objc_getProperty(v67, v71, 88, 1);
    notify_register_dispatch("com.apple.system.config.network_change.dns", v67 + 8, v72, v68);

    v74 = objc_getProperty(v67, v73, 88, 1);
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_100059044;
    v90 = &unk_1000EA458;
    v91 = v67;
    v75 = v68;
    v92 = v75;
    notify_register_dispatch("com.apple.system.config.proxy_change", v67 + 9, v74, buf);

    objc_sync_exit(v67);
    sub_100057A88(v67);
    v77 = objc_getProperty(v67, v76, 88, 1);
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_100058148;
    v90 = &unk_1000EAF28;
    v91 = v67;
    xpc_set_event_stream_handler("com.apple.networkextension.network-detection", v77, buf);
    *(v67 + 8) = &_CNPluginMonitorStart != 0;
    if (&_CNPluginMonitorStart)
    {
      objc_getProperty(v67, v78, 88, 1);
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_100057E5C;
      v90 = &unk_1000EA4F8;
      v91 = v67;
      v79 = CNPluginMonitorStart();
      v80 = ne_log_obj();
      v81 = v80;
      if (v79)
      {
        if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(v93) = 136315138;
          *(&v93 + 4) = "[NESMServer registerForCaptiveNetworkPluginChanges]";
          _os_log_debug_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEBUG, "%s: Started CNPluginMonitor", &v93, 0xCu);
        }
      }

      else if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v93) = 136315138;
        *(&v93 + 4) = "[NESMServer registerForCaptiveNetworkPluginChanges]";
        _os_log_error_impl(&_mh_execute_header, v81, OS_LOG_TYPE_ERROR, "%s: Failed to start CNPluginMonitor", &v93, 0xCu);
      }
    }

    else
    {
      v81 = ne_log_obj();
      if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "Captive Plugin Monitor is not available", buf, 2u);
      }
    }

    v83 = objc_getProperty(v67, v82, 88, 1);
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_100057BF4;
    v90 = &unk_1000EAF28;
    v91 = v67;
    xpc_set_event_stream_handler("com.apple.notifyd.matching", v83, buf);
    signal(13, 1);
    objc_sync_exit(v67);
  }

  objc_autoreleasePoolPop(context);
  CFRunLoopRun();
  return 0;
}

void sub_100076554(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

id sub_100079930(uint64_t a1, const char *a2)
{
  result = *(a1 + 32);
  if (result)
  {
    result = objc_getProperty(result, a2, 32, 1);
    if (result)
    {
      v4 = ne_log_obj();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 32);
        v6 = *(a1 + 40);
        if (v5)
        {
          v7 = *(v5 + 24);
        }

        else
        {
          v7 = 0;
        }

        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        v14 = 138412802;
        v15 = v6;
        v16 = 2048;
        v17 = v7;
        v18 = 2112;
        v19 = v9;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@: State timer (%llu seconds) fired in state %@", &v14, 0x20u);
      }

      Property = *(a1 + 32);
      if (Property)
      {
        Property = objc_getProperty(Property, v10, 32, 1);
      }

      dispatch_source_cancel(Property);
      result = *(a1 + 32);
      if (result)
      {
        objc_setProperty_atomic(result, v12, 0, 32);
        result = *(a1 + 32);
        if (result)
        {
          result = objc_getProperty(result, v13, 16, 1);
          if (result)
          {
            return [*(a1 + 32) handleTimeout];
          }
        }
      }
    }
  }

  return result;
}

void sub_100079BCC(void *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    objc_setProperty_atomic(a1, v3, 0, 48);
    if (!v4)
    {
      v6 = ne_log_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        Property = objc_getProperty(a1, v7, 16, 1);
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v13 = 138412546;
        v14 = Property;
        v15 = 2112;
        v16 = v10;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ in state %@: no start message available", &v13, 0x16u);
      }
    }

    v11 = objc_getProperty(a1, v5, 16, 1);
    [v11 setState:1];
    if (v4)
    {
      v12 = [v11 stateHandler];
      [v12 handleStartMessage:v4];
    }
  }
}

void sub_10007B918(void *a1)
{
  if (a1)
  {
    v2 = ne_log_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      Property = objc_getProperty(a1, v3, 16, 1);
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      [objc_getProperty(a1 v7];
      v34 = 138412802;
      v35 = Property;
      v36 = 2112;
      v37 = v6;
      v38 = 2080;
      v39 = ne_session_type_to_string();
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@ in state %@: restart %s session", &v34, 0x20u);
    }

    v9 = [objc_getProperty(a1 v8];
    v10 = [v9 isEnabled];

    if ((v10 & 1) == 0)
    {
      v18 = ne_log_obj();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v23 = objc_getProperty(a1, v22, 16, 1);
        v34 = 138412290;
        v35 = v23;
        v21 = "%@: Ignore restart because the configuration is not enabled";
        goto LABEL_11;
      }

LABEL_12:

      return;
    }

    v12 = [objc_getProperty(a1 v11];
    v13 = [v12 externalIdentifier];
    if (v13)
    {
      v15 = v13;
      v16 = [objc_getProperty(a1 v14];

      if (v16)
      {
        v18 = ne_log_obj();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v20 = objc_getProperty(a1, v19, 16, 1);
          v34 = 138412290;
          v35 = v20;
          v21 = "%@: Ignore restart for perApp session - no appRule or app not installed";
LABEL_11:
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v21, &v34, 0xCu);
          goto LABEL_12;
        }

        goto LABEL_12;
      }
    }

    else
    {
    }

    v24 = [objc_getProperty(a1 v17];

    if (v24)
    {
      v26 = objc_getProperty(a1, v25, 16, 1);
      v28 = [objc_getProperty(a1 v27];
      [v26 handleStartMessage:v28];

      v30 = objc_getProperty(a1, v29, 16, 1);
      v32 = [objc_getProperty(a1 v31];
      [v30 createConnectParametersWithStartMessage:v32];
    }

    [objc_getProperty(a1 v25];
    [objc_getProperty(a1 v33];
  }
}

void sub_10007BEC4(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 16, 1);
  }

  v5 = [Property restartPending];
  v6 = *(a1 + 32);
  if (v5)
  {

    sub_10007B918(v6);
  }

  else
  {
    if (v6)
    {
      v6 = objc_getProperty(v6, v4, 16, 1);
    }

    [v6 setState:1];
  }
}

id sub_10007EBC4(uint64_t a1)
{
  v9[0] = *(a1 + 32);
  v8[0] = @"tunnelType";
  v8[1] = @"OnDemandConfiguration";
  v2 = [NSNumber numberWithBool:*(a1 + 64)];
  v9[1] = v2;
  v8[2] = @"OnDemandConnection";
  v3 = [NSNumber numberWithBool:*(a1 + 65)];
  v9[2] = v3;
  v8[3] = @"tunnelConnectDuration";
  v4 = [NSNumber numberWithUnsignedLongLong:*(a1 + 40)];
  v9[3] = v4;
  v8[4] = @"tunnelDataCount";
  v5 = [NSNumber numberWithUnsignedLongLong:*(a1 + 56) + *(a1 + 48)];
  v9[4] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:5];

  return v6;
}

void sub_10007ED14(id a1)
{
  info = 0;
  if (!mach_timebase_info(&info))
  {
    LODWORD(v1) = info.numer;
    LODWORD(v2) = info.denom;
    *&qword_1000FD568 = v1 / v2 / 1000.0 / 1000000.0;
  }
}

void sub_10007ED70(id a1, unint64_t a2, NSArray *a3)
{
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[NESMIKEv2VPNSession setStatus:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s: user acknowledged VPN notification", &v4, 0xCu);
  }
}

uint64_t sub_10007F948(_DWORD *a1)
{
  if (!a1)
  {
    return 0;
  }

  if (!sub_10007FE7C(a1))
  {
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v29 = [a1 configuration];
      v30 = [v29 name];
      v31 = [a1 configuration];
      v32 = [v31 externalIdentifier];
      v33 = [a1 configuration];
      v34 = [v33 contentFilter];
      v35 = [v34 perApp];
      v36 = [v35 copyCachedMachOUUIDs];
      *buf = 136315906;
      *&buf[4] = "[NESMFilterSession resetPolicies]";
      *&buf[12] = 2112;
      *&buf[14] = v30;
      *&buf[22] = 2112;
      v53 = v32;
      LOWORD(v54) = 2112;
      *(&v54 + 2) = v36;
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s: resetPolicies - <%@> <%@> UUIDs %@ <Skip - plugin not ready>", buf, 0x2Au);
    }

    v6 = 0;
    goto LABEL_28;
  }

  v2 = [a1 configuration];
  v3 = [v2 externalIdentifier];
  if (!v3)
  {

    goto LABEL_10;
  }

  v4 = v3;
  v5 = [a1 waitForPerApp];

  if ((v5 & 1) == 0)
  {
LABEL_10:
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v37 = [a1 configuration];
      v38 = [v37 name];
      v39 = [a1 configuration];
      v40 = [v39 externalIdentifier];
      v41 = [a1 configuration];
      v42 = [v41 contentFilter];
      v43 = [v42 perApp];
      v44 = [v43 copyCachedMachOUUIDs];
      *buf = 136315906;
      *&buf[4] = "[NESMFilterSession resetPolicies]";
      *&buf[12] = 2112;
      *&buf[14] = v38;
      *&buf[22] = 2112;
      v53 = v40;
      LOWORD(v54) = 2112;
      *(&v54 + 2) = v44;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s: resetPolicies - <%@> <%@> UUIDs %@", buf, 0x2Au);
    }

    v7 = [a1 policySession];
    v48 = a1[89];
    Property = objc_getProperty(a1, v9, 400, 1);
    v51 = sub_100019700(Property, v11);
    v12 = [v51 firstObject];
    v50 = [a1 uid];
    v47 = [v50 intValue];
    v14 = objc_getProperty(a1, v13, 360, 1);
    v16 = objc_getProperty(a1, v15, 368, 1);
    v49 = [a1 configuration];
    v17 = [v49 externalIdentifier];
    if (v17)
    {
      v46 = [a1 configuration];
      v45 = [v46 contentFilter];
      v18 = [v45 perApp];
    }

    else
    {
      v18 = 0;
    }

    v19 = [a1 configuration];
    v20 = [v19 contentFilter];
    [v20 disableEncryptedDNSSettings];
    v21 = v12;
    v22 = v14;
    v23 = v16;
    v24 = v18;
    v25 = v24;
    if (v7 && *(v7 + 8) == 4)
    {
      if (v23)
      {
        v26 = v24 == 0;
      }

      else
      {
        v26 = 1;
      }

      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_10003E688;
      v53 = &unk_1000E9F90;
      v27 = !v26;
      *&v54 = v7;
      v58 = v48;
      v60 = v27;
      *(&v54 + 1) = v23;
      v55 = v21;
      v59 = v47;
      v56 = v22;
      v57 = v25;
      v6 = sub_100031500(NESMPolicyMasterSession, buf);
    }

    else
    {
      v6 = 0;
    }

    if (v17)
    {
    }

LABEL_28:
    return v6;
  }

  return 0;
}

BOOL sub_10007FE7C(void *a1)
{
  v2 = [a1 configuration];
  v3 = [v2 pluginType];

  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412802;
    v21 = a1;
    v22 = 2112;
    v23 = v3;
    v24 = 1024;
    v25 = 1;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@: Check Filter Plugin installation for %@ (isIP %d)", &v20, 0x1Cu);
  }

  if (v3)
  {
    if (a1[49] == 5)
    {
      v5 = ne_log_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 138412290;
        v21 = a1;
        v6 = "%@: Filter Plugin is being updated";
LABEL_13:
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v6, &v20, 0xCu);
      }
    }

    else
    {
      v8 = [a1 configuration];
      v9 = [v8 contentFilter];
      v10 = [v9 isEnabled];

      if (v10)
      {
        v11 = [a1 configuration];
        v12 = [v11 contentFilter];
        v13 = [v12 provider];
        if ([v13 filterSockets])
        {
        }

        else
        {
          v15 = [a1 configuration];
          v16 = [v15 contentFilter];
          v17 = [v16 provider];
          v18 = [v17 filterBrowsers];

          if ((v18 & 1) == 0)
          {
            v5 = ne_log_obj();
            if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_14;
            }

            v20 = 138412290;
            v21 = a1;
            v6 = "%@: filterSockets (and filterBrowsers) is not enabled";
            goto LABEL_13;
          }
        }

        v5 = [NELaunchServices pluginProxyWithIdentifier:0 type:v3 pluginClass:4 extensionPoint:0];
        if (!v5)
        {
          v19 = ne_log_obj();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v20 = 138412290;
            v21 = a1;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%@: Filter Plugin is not available in launch services", &v20, 0xCu);
          }
        }

        v7 = v5 != 0;
        goto LABEL_15;
      }

      v5 = ne_log_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 138412290;
        v21 = a1;
        v6 = "%@: Configuration is not enabled";
        goto LABEL_13;
      }
    }

LABEL_14:
    v7 = 0;
LABEL_15:

    goto LABEL_16;
  }

  v7 = 0;
LABEL_16:

  return v7;
}

id sub_100080234(uint64_t a1)
{
  sub_10007F948(*(a1 + 32));
  v2 = *(a1 + 32);

  return [v2 startWithCommand:0 isOnDemand:0];
}

void sub_1000806FC(_BYTE *a1, char a2)
{
  v4 = [a1 configuration];
  v5 = [v4 contentFilter];
  v6 = [v5 provider];
  if ([v6 disableDefaultDrop] & 1) != 0 || (a2)
  {

    goto LABEL_11;
  }

  v7 = sub_10007FE7C(a1);

  if (!v7)
  {
LABEL_11:
    [a1 setDefaultDropType:0];
    v19 = ne_log_obj();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v42) = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Filter removing perApp Drop policies", &v42, 2u);
    }

    v20 = [a1 policySession];
    sub_10003FF38(v20, v21);

    a1[353] = 0;
    goto LABEL_14;
  }

  v8 = [a1 configuration];
  v9 = [v8 externalIdentifier];
  if (v9)
  {
    v10 = v9;
    v11 = [a1 configuration];
    v12 = [v11 contentFilter];
    v13 = [v12 perApp];

    if (v13)
    {
      v14 = [a1 waitForPerApp];
      v15 = ne_log_obj();
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
      if (v14)
      {
        if (v16)
        {
          LOWORD(v42) = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Filter removing perApp Drop policies", &v42, 2u);
        }

        v17 = [a1 policySession];
        sub_10003FF38(v17, v18);

        a1[353] = 0;
      }

      else
      {
        if (v16)
        {
          LOWORD(v42) = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Filter installing perApp Drop policies", &v42, 2u);
        }

        v30 = [a1 policySession];
        v31 = [a1 configuration];
        v32 = [v31 contentFilter];
        v33 = [v32 perApp];
        v34 = v33;
        if (v30)
        {
          if (v33)
          {
            v35 = [v33 appRules];
            if (v35)
            {
              v36 = v35;
              v37 = [v34 appRules];
              v38 = [v37 count];

              if (v38)
              {
                v42 = _NSConcreteStackBlock;
                *&v43 = 3221225472;
                *(&v43 + 1) = sub_10003FBC0;
                v44 = &unk_1000E9CC0;
                v45 = v30;
                v46 = v34;
                sub_100031500(NESMPolicyMasterSession, &v42);
              }
            }
          }
        }

        a1[353] = 1;
      }
    }
  }

  else
  {
  }

  v39 = [a1 configuration];
  v40 = [v39 externalIdentifier];
  if (v40)
  {
    v41 = a1[353];

    if ((v41 & 1) == 0)
    {
      [a1 setDefaultDropType:0];
LABEL_14:
      v22 = [a1 policySession];
      sub_10004060C(v22, v23);
      v24 = 0;
      goto LABEL_15;
    }
  }

  else
  {
  }

  [a1 setDefaultDropType:5];
  v22 = [a1 policySession];
  if (v22)
  {
    v42 = _NSConcreteStackBlock;
    *&v43 = 3221225472;
    *(&v43 + 1) = sub_1000400E4;
    v44 = &unk_1000E9C98;
    v45 = v22;
    sub_100031500(NESMPolicyMasterSession, &v42);
  }

  v24 = 1;
LABEL_15:

  [a1 setIsDropPersistent:1];
  v25 = ne_log_obj();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = [a1 defaultDropType];
    v27 = [a1 isDropPersistent];
    v28 = "Non-Persistent";
    if (v27)
    {
      v28 = "Persistent";
    }

    LODWORD(v42) = 67109378;
    HIDWORD(v42) = v26;
    LOWORD(v43) = 2080;
    *(&v43 + 2) = v28;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Filter setting IP Drop-All to %d (%s)", &v42, 0x12u);
  }

  v29 = [a1 server];
  sub_10005A708(v29, @"drop_all_feature_content_filter", v24);
}

uint64_t sub_100080BF4(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  objc_sync_enter(v1);
  v2 = [v1 configuration];
  v3 = [v2 externalIdentifier];
  if (v3)
  {
    v4 = [v1 configuration];
    v5 = [v4 contentFilter];
    v6 = [v5 perApp];
    v7 = [v6 appRules];
    v8 = [v7 count];

    if (!v8)
    {
      v9 = ne_log_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [v1 configuration];
        v11 = [v10 name];
        v41 = 138412290;
        v42 = v11;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Fail to allocate control unit - perApp Content Filter missing appRules for %@", &v41, 0xCu);
      }

      goto LABEL_29;
    }
  }

  else
  {
  }

  v12 = [v1 configuration];
  v13 = [v12 contentFilter];
  v14 = [v13 provider];
  if ([v14 filterSockets])
  {
    v15 = v1[89];

    if (!v15)
    {
LABEL_13:
      v20 = [v1 configuration];
      objc_opt_self();
      v21 = [v20 contentFilter];
      v22 = [v21 provider];
      v23 = sub_1000811CC(NESMFilterSession, v22);

      v24 = [v20 contentFilter];
      if ([v24 grade] <= 0)
      {
      }

      else
      {
        v25 = [v20 contentFilter];
        v26 = [v25 grade];

        if (v26 < 3)
        {
          os_unfair_lock_lock(&stru_1000FD570);
          v27 = [v20 externalIdentifier];

          if (v27)
          {
            v28 = 0;
            while (((dword_1000FD574 >> v28) & 1) != 0)
            {
              if (++v28 == 7)
              {
                v29 = ne_log_obj();
                if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                {
                  v40 = [v20 name];
                  v41 = 138412290;
                  v42 = v40;
                  _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "allocateFilterControlUnitForConfiguration: <%@> no more slot", &v41, 0xCu);
                }

                v28 = 8;
                break;
              }
            }
          }

          else
          {
            v28 = 7;
          }

          v33 = ne_log_obj();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v34 = [v20 name];
            v41 = 138412546;
            v42 = v34;
            v43 = 1024;
            v44 = v28;
            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "allocateFilterControlUnitForConfiguration: <%@> slot %d", &v41, 0x12u);
          }

          if (v28 < 8)
          {
            dword_1000FD574 |= 1 << v28;
            os_unfair_lock_unlock(&stru_1000FD570);

            v35 = ne_log_obj();
            v36 = (1 << v28) | v23;
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              v41 = 67109120;
              LODWORD(v42) = v36;
              _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Allocated control unit %u", &v41, 8u);
            }

            v1[89] = v36;
            goto LABEL_23;
          }

          v37 = ne_log_obj();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            v39 = [v20 name];
            v41 = 138412546;
            v42 = v39;
            v43 = 1024;
            v44 = dword_1000FD574;
            _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "allocateFilterControlUnitForConfiguration: <%@> Failed to allocate a control unit, unitMap = %x", &v41, 0x12u);
          }

          os_unfair_lock_unlock(&stru_1000FD570);
LABEL_28:

LABEL_29:
          v30 = 0;
          goto LABEL_30;
        }
      }

      v31 = ne_log_obj();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v38 = [v20 contentFilter];
        v41 = 134217984;
        v42 = [v38 grade];
        _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "Failed to allocate a control unit, configuration has an invalid filter grade: %ld", &v41, 0xCu);
      }

      goto LABEL_28;
    }
  }

  else
  {
    v16 = [v1 configuration];
    v17 = [v16 contentFilter];
    v18 = [v17 provider];
    if ([v18 filterBrowsers])
    {
      v19 = v1[89];

      if (!v19)
      {
        goto LABEL_13;
      }
    }

    else
    {
    }
  }

LABEL_23:
  v30 = 1;
LABEL_30:
  objc_sync_exit(v1);

  return v30;
}

uint64_t sub_1000811CC(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  if ([v2 filterBrowsers] && !objc_msgSend(v2, "filterSockets"))
  {
    LODWORD(v3) = 0x80000000;
  }

  else if (([v2 filterBrowsers] & 1) != 0 || (objc_msgSend(v2, "filterSockets") & 1) == 0)
  {
    if ([v2 filterBrowsers])
    {
      LODWORD(v3) = 0;
    }

    else if ([v2 filterSockets])
    {
      LODWORD(v3) = 0;
    }

    else
    {
      LODWORD(v3) = -1073741824;
    }
  }

  else
  {
    LODWORD(v3) = 0x40000000;
  }

  if ([v2 preserveExistingConnections])
  {
    v3 = v3 | 0x20000000;
  }

  else
  {
    v3 = v3;
  }

  return v3;
}

void sub_1000818F8(uint64_t a1)
{
  if (*(a1 + 56) == 1 && (v2 = *(a1 + 32)) != 0 && (*(v2 + 354) & 1) != 0)
  {
    pid = xpc_connection_get_pid(*(a1 + 40));
    v5 = *(a1 + 32);
    if (v5)
    {
      Property = objc_getProperty(v5, v3, 400, 1);
    }

    else
    {
      Property = 0;
    }

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100081AF8;
    v10[3] = &unk_1000EA750;
    v11 = *(a1 + 48);
    v7 = v10;
    if (Property)
    {
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_10001AAD0;
      v14[3] = &unk_1000EB068;
      v14[4] = Property;
      v8 = [Property remotePluginObjectWithErrorHandler:v14];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10001AB88;
      v12[3] = &unk_1000E9A50;
      v12[4] = Property;
      v13 = v7;
      [v8 getFilterClientConnectionWithCompletionHandler:pid completionHandler:v12];
    }
  }

  else
  {
    message = xpc_dictionary_create_reply(*(a1 + 48));
    xpc_dictionary_set_int64(message, "error", 3);
    xpc_connection_send_message(*(a1 + 40), message);
  }
}