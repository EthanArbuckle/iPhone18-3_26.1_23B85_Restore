@interface RPNWUtils
+ (BOOL)checkPid:(int)pid hasEntitlement:(id)entitlement;
+ (BOOL)shouldBypassPrefixBundleIDFromParameters:(id)parameters;
+ (id)_quicProtocolOptionsFromParameters:(id)parameters;
+ (id)createTokenForClient:(id)client;
+ (id)publicKeyFromAgentClient:(id)client;
@end

@implementation RPNWUtils

+ (id)createTokenForClient:(id)client
{
  *uu = 0;
  v10 = 0;
  memset(out, 0, 37);
  clientCopy = client;
  nw_agent_client_get_uuid();
  uuid_unparse(uu, out);
  v4 = nw_agent_client_copy_parameters();

  if (v4)
  {
    pid = nw_parameters_get_pid();
  }

  else
  {
    pid = 0;
  }

  v6 = [NSString stringWithFormat:@"[pid:%d, id:%.8s]", pid, out];

  return v6;
}

+ (BOOL)checkPid:(int)pid hasEntitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  if (dword_1001D2F60 <= 30 && (dword_1001D2F60 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  memset(&task_info_out, 0, sizeof(task_info_out));
  task_info_outCnt = 8;
  tn = 0;
  if (task_name_for_pid(mach_task_self_, pid, &tn))
  {
    if (dword_1001D2F60 <= 90 && (dword_1001D2F60 != -1 || _LogCategory_Initialize()))
    {
      sub_10010DA28();
    }

    goto LABEL_14;
  }

  if (task_info(tn, 0xFu, &task_info_out, &task_info_outCnt))
  {
    if (dword_1001D2F60 <= 90 && (dword_1001D2F60 != -1 || _LogCategory_Initialize()))
    {
      sub_10010DA68();
    }

    goto LABEL_14;
  }

  token = task_info_out;
  v8 = SecTaskCreateWithAuditToken(0, &token);
  if (v8)
  {
    v9 = v8;
    *token.val = 0;
    v10 = SecTaskCopyValueForEntitlement(v8, entitlementCopy, &token);
    v11 = *token.val;
    if (*token.val)
    {
      if (dword_1001D2F60 <= 90)
      {
        if (dword_1001D2F60 != -1 || (v12 = _LogCategory_Initialize(), v11 = *token.val, v12))
        {
          LogPrintF();
          v11 = *token.val;
        }
      }

      CFRelease(v11);
    }

    if (v10)
    {
      v13 = CFGetTypeID(v10);
      v6 = v13 == CFBooleanGetTypeID() && CFBooleanGetValue(v10) != 0;
      CFRelease(v10);
    }

    else
    {
      v6 = 0;
    }

    CFRelease(v9);
  }

  else
  {
    if (dword_1001D2F60 > 90)
    {
LABEL_14:
      v6 = 0;
      goto LABEL_15;
    }

    if (dword_1001D2F60 != -1 || _LogCategory_Initialize())
    {
      sub_10010DAA8();
    }

    v6 = 0;
  }

  if (dword_1001D2F60 <= 30 && (dword_1001D2F60 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

LABEL_15:

  return v6;
}

+ (id)publicKeyFromAgentClient:(id)client
{
  clientCopy = client;
  v5 = nw_agent_client_copy_parameters();
  if (v5)
  {
    v6 = [self _quicProtocolOptionsFromParameters:v5];
    if (v6)
    {
      v7 = nw_quic_options_copy_local_public_key();
      v8 = v7;
      if (v7)
      {
        v9 = v7;
      }

      else if (dword_1001D2F60 <= 90 && (dword_1001D2F60 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }
    }

    else
    {
      if (dword_1001D2F60 <= 90 && (dword_1001D2F60 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v8 = 0;
    }
  }

  else
  {
    if (dword_1001D2F60 <= 90 && (dword_1001D2F60 != -1 || _LogCategory_Initialize()))
    {
      sub_10010DADC();
    }

    v8 = 0;
  }

  return v8;
}

+ (id)_quicProtocolOptionsFromParameters:(id)parameters
{
  parametersCopy = parameters;
  v4 = nw_parameters_copy_default_protocol_stack(parametersCopy);
  v5 = v4;
  if (v4)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = sub_1000029BC;
    v13 = sub_100003174;
    v14 = 0;
    iterate_block[0] = _NSConcreteStackBlock;
    iterate_block[1] = 3221225472;
    iterate_block[2] = sub_100014BD0;
    iterate_block[3] = &unk_1001AAA68;
    iterate_block[4] = &v9;
    nw_protocol_stack_iterate_application_protocols(v4, iterate_block);
    v6 = v10[5];
    _Block_object_dispose(&v9, 8);
  }

  else
  {
    if (dword_1001D2F60 <= 90 && (dword_1001D2F60 != -1 || _LogCategory_Initialize()))
    {
      sub_10010DB1C();
    }

    v6 = 0;
  }

  return v6;
}

+ (BOOL)shouldBypassPrefixBundleIDFromParameters:(id)parameters
{
  parametersCopy = parameters;
  v4 = nw_parameters_copy_custom_options();
  v5 = v4;
  if (!v4)
  {
    if (dword_1001D2F60 <= 90 && (dword_1001D2F60 != -1 || _LogCategory_Initialize()))
    {
      sub_10010DC14();
    }

    goto LABEL_20;
  }

  bytes_ptr = xpc_data_get_bytes_ptr(v4);
  if (!bytes_ptr)
  {
    if (dword_1001D2F60 <= 90 && (dword_1001D2F60 != -1 || _LogCategory_Initialize()))
    {
      sub_10010DBF8();
    }

    goto LABEL_20;
  }

  v7 = bytes_ptr;
  length = xpc_data_get_length(v5);
  if (!length)
  {
    if (dword_1001D2F60 <= 90 && (dword_1001D2F60 != -1 || _LogCategory_Initialize()))
    {
      sub_10010DBDC();
    }

LABEL_20:
    bOOLValue = 0;
    goto LABEL_26;
  }

  v9 = [[NSData alloc] initWithBytes:v7 length:length];
  v18[0] = objc_opt_class();
  v18[1] = objc_opt_class();
  v18[2] = objc_opt_class();
  v10 = [NSArray arrayWithObjects:v18 count:3];
  v11 = [NSSet setWithArray:v10];

  v17 = 0;
  v12 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v11 fromData:v9 error:&v17];
  v13 = v17;
  if (v13)
  {
    if (dword_1001D2F60 <= 90 && (dword_1001D2F60 != -1 || _LogCategory_Initialize()))
    {
      sub_10010DB5C();
    }

    bOOLValue = 0;
  }

  else
  {
    if (dword_1001D2F60 <= 50 && (dword_1001D2F60 != -1 || _LogCategory_Initialize()))
    {
      sub_10010DB9C();
    }

    v15 = [v12 objectForKeyedSubscript:@"shouldBypassPrefixBundleID"];
    bOOLValue = [v15 BOOLValue];
  }

LABEL_26:
  return bOOLValue;
}

@end