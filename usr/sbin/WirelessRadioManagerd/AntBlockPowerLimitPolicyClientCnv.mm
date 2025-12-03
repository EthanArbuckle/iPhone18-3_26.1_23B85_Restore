@interface AntBlockPowerLimitPolicyClientCnv
- (id)constructXpcMessage;
- (id)constructXpcMessagePolicyEntries;
- (void)extractPolicy:(id)policy;
- (void)extractPolicyEntries:(id)entries;
@end

@implementation AntBlockPowerLimitPolicyClientCnv

- (void)extractPolicyEntries:(id)entries
{
  entriesCopy = entries;
  v5 = entriesCopy;
  if (entriesCopy)
  {
    +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 3, @"Extracted %lu policies for client CNV", [entriesCopy count]);
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
          v12 = objc_alloc_init(AntBlockPowerLimitCnvPolicy);
          [(AntBlockPowerLimitCnvPolicy *)v12 extractPolicy:v11];
          mPolicy = [(AntBlockPowerLimitPolicyClient *)self mPolicy];

          if (v12)
          {
            v14 = mPolicy == 0;
          }

          else
          {
            v14 = 1;
          }

          if (!v14)
          {
            mPolicy2 = [(AntBlockPowerLimitPolicyClient *)self mPolicy];
            [mPolicy2 addObject:v12];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }
  }

  else
  {
    [WCM_Logging logLevel:3 message:@"No policies found for client CNV"];
  }
}

- (id)constructXpcMessagePolicyEntries
{
  v3 = xpc_array_create(0, 0);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  mPolicy = [(AntBlockPowerLimitPolicyClient *)self mPolicy];
  v5 = [mPolicy countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(mPolicy);
        }

        constructXpcMessage = [*(*(&v11 + 1) + 8 * i) constructXpcMessage];
        xpc_array_append_value(v3, constructXpcMessage);
      }

      v6 = [mPolicy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)extractPolicy:(id)policy
{
  v3.receiver = self;
  v3.super_class = AntBlockPowerLimitPolicyClientCnv;
  [(AntBlockPowerLimitPolicyClient *)&v3 extractPolicy:policy];
}

- (id)constructXpcMessage
{
  mPolicy = [(AntBlockPowerLimitPolicyClient *)self mPolicy];
  v4 = [mPolicy count];

  if (v4)
  {
    v5 = xpc_dictionary_create(0, 0, 0);
    if (v5)
    {
      xpc_dictionary_set_uint64(v5, "kWCMCellularSetAntBlocking_LQMThreshold", [(AntBlockPowerLimitPolicyClient *)self mLqmThreshold]);
      xpc_dictionary_set_uint64(v5, "kWCMCellularSetAntBlocking_DurationGranularity", [(AntBlockPowerLimitPolicyClient *)self mDurationGranularity]);
      xpc_dictionary_set_BOOL(v5, "kWCMCellularSetAntBlocking_DenyProtectVoice", [(AntBlockPowerLimitPolicyClient *)self mDenyVoiceProtect]);
      xpc_dictionary_set_uint64(v5, "kWCMCellularSetAntBlocking_MitigationTimer", [(AntBlockPowerLimitPolicyClient *)self mMitigationTimer]);
      constructXpcMessagePolicyEntries = [(AntBlockPowerLimitPolicyClientCnv *)self constructXpcMessagePolicyEntries];
      xpc_dictionary_set_value(v5, "kWCMCellularSetAntBlocking_PolicySet", constructXpcMessagePolicyEntries);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end