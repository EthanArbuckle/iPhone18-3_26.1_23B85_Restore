@interface AntBlockPowerLimitPolicyClientUwb
- (AntBlockPowerLimitPolicyClientUwb)init;
- (id)constructXpcMessage;
- (id)constructXpcMessagePolicyEntries;
- (void)addPriorityClassPolicy:(id)a3;
- (void)extractPolicy:(id)a3;
- (void)extractPolicyEntries:(id)a3;
@end

@implementation AntBlockPowerLimitPolicyClientUwb

- (AntBlockPowerLimitPolicyClientUwb)init
{
  v6.receiver = self;
  v6.super_class = AntBlockPowerLimitPolicyClientUwb;
  v2 = [(AntBlockPowerLimitPolicyClient *)&v6 init];
  v3 = objc_alloc_init(NSMutableArray);
  mPriorityClassPolicy = v2->_mPriorityClassPolicy;
  v2->_mPriorityClassPolicy = v3;

  return v2;
}

- (void)extractPolicyEntries:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 3, @"Extracted %lu policies for client UWB", [v4 count]);
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          v12 = objc_alloc_init(AntBlockPowerLimitUwbBasePolicy);
          [(AntBlockPowerLimitUwbBasePolicy *)v12 extractPolicy:v11];
          v13 = [(AntBlockPowerLimitPolicyClient *)self mPolicy];

          if (v12)
          {
            v14 = v13 == 0;
          }

          else
          {
            v14 = 1;
          }

          if (!v14)
          {
            v15 = [(AntBlockPowerLimitPolicyClient *)self mPolicy];
            [v15 addObject:v12];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }
  }

  else
  {
    [WCM_Logging logLevel:3 message:@"No policies found for client UWB"];
  }
}

- (void)extractPolicy:(id)a3
{
  v4 = a3;
  [(AntBlockPowerLimitPolicyClient *)self extractPolicyGlobalParam:v4];
  [v4 objectForKey:@"Policy"];
  v16 = v20 = self;
  [(AntBlockPowerLimitPolicyClientUwb *)self extractPolicyEntries:?];
  v17 = v4;
  obj = [v4 objectForKey:@"Priority_Class_Policy"];
  if (obj)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v21)
    {
      v19 = *v24;
      do
      {
        v5 = 0;
        do
        {
          if (*v24 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v6 = *(*(&v23 + 1) + 8 * v5);
          v7 = objc_alloc_init(AntBlockPowerLimitUwbPriorityClassPolicy);
          v8 = [v6 objectForKey:@"Enable"];
          v22 = [v8 BOOLValue];
          v9 = [v6 objectForKey:@"Priority_Class"];
          v10 = [v9 integerValue];
          v11 = [v6 objectForKey:@"Mitigation_Required"];
          v12 = [v11 BOOLValue];
          v13 = [v6 objectForKey:@"Deny_Voice_Protect"];
          v14 = [v13 BOOLValue];
          v15 = [v6 objectForKey:@"Mitigation_Timer_ms"];
          -[AntBlockPowerLimitUwbPriorityClassPolicy setParameterEnable:PriorityClass:MitigationRequired:DenyVoiceProtect:MitigationTimer:](v7, "setParameterEnable:PriorityClass:MitigationRequired:DenyVoiceProtect:MitigationTimer:", v22, v10, v12, v14, [v15 integerValue]);

          [(AntBlockPowerLimitPolicyClientUwb *)v20 addPriorityClassPolicy:v7];
          v5 = v5 + 1;
        }

        while (v21 != v5);
        v21 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v21);
    }
  }
}

- (void)addPriorityClassPolicy:(id)a3
{
  if (a3)
  {
    mPriorityClassPolicy = self->_mPriorityClassPolicy;
    if (mPriorityClassPolicy)
    {
      [(NSMutableArray *)mPriorityClassPolicy addObject:?];
    }
  }
}

- (id)constructXpcMessagePolicyEntries
{
  v3 = xpc_array_create(0, 0);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(AntBlockPowerLimitPolicyClient *)self mPolicy];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) constructXpcMessage];
        xpc_array_append_value(v3, v9);
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)constructXpcMessage
{
  v19.receiver = self;
  v19.super_class = AntBlockPowerLimitPolicyClientUwb;
  v3 = [(AntBlockPowerLimitPolicyClient *)&v19 constructXpcMessage];
  v4 = v3;
  if (v3)
  {
    xdict = v3;
    v5 = xpc_array_create(0, 0);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    obj = self->_mPriorityClassPolicy;
    v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          v11 = xpc_dictionary_create(0, 0, 0);
          xpc_dictionary_set_BOOL(v11, "kWCMCellularSetAntBlocking_PriorityClassPolicy_Enable", [v10 mEnable]);
          xpc_dictionary_set_BOOL(v11, "kWCMCellularSetAntBlocking_PriorityClassPolicy_DenyProtectVoice", [v10 mDenyVoiceProtect]);
          xpc_dictionary_set_BOOL(v11, "kWCMCellularSetAntBlocking_PriorityClassPolicy_NeedMitigation", [v10 mMitigationRequired]);
          xpc_dictionary_set_uint64(v11, "kWCMCellularSetAntBlocking_PriorityClassPolicy_PriorityClass", [v10 mPriorityClass]);
          xpc_dictionary_set_uint64(v11, "kWCMCellularSetAntBlocking_PriorityClassPolicy_MitigationTimer", [v10 mMitigationTimer]);
          xpc_array_append_value(v5, v11);
        }

        v7 = [(NSMutableArray *)obj countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v7);
    }

    v4 = xdict;
    xpc_dictionary_set_value(xdict, "kWCMCellularSetAntBlocking_PriorityClassPolicy", v5);
  }

  return v4;
}

@end