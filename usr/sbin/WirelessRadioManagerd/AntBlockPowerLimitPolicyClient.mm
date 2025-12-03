@interface AntBlockPowerLimitPolicyClient
- (AntBlockPowerLimitPolicyClient)init;
- (AntBlockPowerLimitPolicyClient)initWithClient:(unsigned int)client;
- (id)constructXpcMessage;
- (id)constructXpcMessagePolicyEntries;
- (void)extractPolicy:(id)policy;
- (void)extractPolicyEntries:(id)entries;
- (void)extractPolicyGlobalParam:(id)param;
- (void)setParameterDenyVoiceProtect:(BOOL)protect MitigationTimer:(unsigned int)timer DurationGranularity:(unsigned int)granularity LQMThreshold:(unsigned int)threshold;
@end

@implementation AntBlockPowerLimitPolicyClient

- (AntBlockPowerLimitPolicyClient)init
{
  v6.receiver = self;
  v6.super_class = AntBlockPowerLimitPolicyClient;
  v2 = [(AntBlockPowerLimitPolicyClient *)&v6 init];
  v2->_mClient = 100;
  v3 = objc_alloc_init(NSMutableArray);
  mPolicy = v2->_mPolicy;
  v2->_mPolicy = v3;

  return v2;
}

- (AntBlockPowerLimitPolicyClient)initWithClient:(unsigned int)client
{
  v8.receiver = self;
  v8.super_class = AntBlockPowerLimitPolicyClient;
  v4 = [(AntBlockPowerLimitPolicyClient *)&v8 init];
  v4->_mClient = client;
  v5 = objc_alloc_init(NSMutableArray);
  mPolicy = v4->_mPolicy;
  v4->_mPolicy = v5;

  return v4;
}

- (void)setParameterDenyVoiceProtect:(BOOL)protect MitigationTimer:(unsigned int)timer DurationGranularity:(unsigned int)granularity LQMThreshold:(unsigned int)threshold
{
  self->_mDenyVoiceProtect = protect;
  self->_mDurationGranularity = granularity;
  self->_mMitigationTimer = timer;
  self->_mLqmThreshold = threshold;
}

- (void)extractPolicyEntries:(id)entries
{
  entriesCopy = entries;
  v5 = entriesCopy;
  if (entriesCopy)
  {
    +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 3, @"Extracted %lu policies for client %u", [entriesCopy count], self->_mClient);
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          v12 = objc_alloc_init(AntBlockPowerLimitBasePolicy);
          [(AntBlockPowerLimitBasePolicy *)v12 extractPolicy:v11];
          mPolicy = self->_mPolicy;
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
            [(NSMutableArray *)mPolicy addObject:v12];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }
  }

  else
  {
    [WCM_Logging logLevel:3 message:@"No policies found for client %u", self->_mClient];
  }
}

- (void)extractPolicyGlobalParam:(id)param
{
  paramCopy = param;
  [WCM_Logging logLevel:3 message:@"Extract antenna blocking/Power limiting policy for client %u", self->_mClient];
  bOOLValue = [paramCopy objectForKey:@"Deny_Voice_Protect"];

  if (bOOLValue)
  {
    v5 = [paramCopy objectForKey:@"Deny_Voice_Protect"];
    bOOLValue = [v5 BOOLValue];
  }

  integerValue = [paramCopy objectForKey:@"Mitigation_Timer_ms"];

  if (integerValue)
  {
    v7 = [paramCopy objectForKey:@"Mitigation_Timer_ms"];
    integerValue = [v7 integerValue];
  }

  integerValue2 = [paramCopy objectForKey:@"Duration_Granularity"];

  if (integerValue2)
  {
    v9 = [paramCopy objectForKey:@"Duration_Granularity"];
    integerValue2 = [v9 integerValue];
  }

  integerValue3 = [paramCopy objectForKey:@"LQM_Threshold"];

  if (integerValue3)
  {
    v11 = [paramCopy objectForKey:@"LQM_Threshold"];
    integerValue3 = [v11 integerValue];
  }

  [(AntBlockPowerLimitPolicyClient *)self setParameterDenyVoiceProtect:bOOLValue MitigationTimer:integerValue DurationGranularity:integerValue2 LQMThreshold:integerValue3];
}

- (void)extractPolicy:(id)policy
{
  policyCopy = policy;
  [(AntBlockPowerLimitPolicyClient *)self extractPolicyGlobalParam:policyCopy];
  v5 = [policyCopy objectForKey:@"Policy"];

  [(AntBlockPowerLimitPolicyClient *)self extractPolicyEntries:v5];
}

- (id)constructXpcMessagePolicyEntries
{
  v3 = xpc_array_create(0, 0);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_mPolicy;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

        constructXpcMessage = [*(*(&v11 + 1) + 8 * i) constructXpcMessage];
        xpc_array_append_value(v3, constructXpcMessage);
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)constructXpcMessage
{
  if ([(NSMutableArray *)self->_mPolicy count])
  {
    v3 = xpc_dictionary_create(0, 0, 0);
    v4 = v3;
    if (v3)
    {
      xpc_dictionary_set_uint64(v3, "kWCMCellularSetAntBlocking_LQMThreshold", self->_mLqmThreshold);
      xpc_dictionary_set_uint64(v4, "kWCMCellularSetAntBlocking_DurationGranularity", self->_mDurationGranularity);
      xpc_dictionary_set_BOOL(v4, "kWCMCellularSetAntBlocking_DenyProtectVoice", self->_mDenyVoiceProtect);
      xpc_dictionary_set_uint64(v4, "kWCMCellularSetAntBlocking_MitigationTimer", self->_mMitigationTimer);
      constructXpcMessagePolicyEntries = [(AntBlockPowerLimitPolicyClient *)self constructXpcMessagePolicyEntries];
      xpc_dictionary_set_value(v4, "kWCMCellularSetAntBlocking_PolicySet", constructXpcMessagePolicyEntries);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end