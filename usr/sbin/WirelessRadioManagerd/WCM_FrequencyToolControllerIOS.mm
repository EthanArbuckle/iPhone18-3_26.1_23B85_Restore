@interface WCM_FrequencyToolControllerIOS
- (WCM_FrequencyToolControllerIOS)init;
- (void)dealloc;
- (void)handleFrequencyToolOperation:(id)operation;
- (void)handleFrequencyToolQuery:(id)query;
- (void)handleMessage:(id)message;
@end

@implementation WCM_FrequencyToolControllerIOS

- (WCM_FrequencyToolControllerIOS)init
{
  v7.receiver = self;
  v7.super_class = WCM_FrequencyToolControllerIOS;
  v2 = [(WCM_FrequencyToolController *)&v7 init];
  v3 = +[WCM_PolicyManager singleton];
  sacManager = [v3 sacManager];
  v5 = *(v2 + 20);
  *(v2 + 20) = sacManager;

  return v2;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = WCM_FrequencyToolControllerIOS;
  [(WCM_FrequencyToolController *)&v2 dealloc];
}

- (void)handleMessage:(id)message
{
  messageCopy = message;
  uint64 = xpc_dictionary_get_uint64(messageCopy, "kMessageId");
  [WCM_Logging logLevel:2 message:@"Frequency Tool Controller handleMessage messageId = %lld", uint64];
  if (uint64 == 2402)
  {
    [(WCM_FrequencyToolControllerIOS *)self handleFrequencyToolQuery:messageCopy];
  }

  else if (uint64 == 2401)
  {
    [(WCM_FrequencyToolControllerIOS *)self handleFrequencyToolOperation:messageCopy];
  }

  else
  {
    [WCM_Logging logLevel:0 message:@"Frequency Tool Controller dropping message-id %lld", uint64];
  }
}

- (void)handleFrequencyToolQuery:(id)query
{
  xdict = query;
  selfCopy = self;
  v4 = *(&self->super.super.mProcessId + 1);
  v5 = +[WCM_PolicyManager singleton];
  activeCoexFeatures = [v5 activeCoexFeatures];
  v7 = [activeCoexFeatures containsObject:@"SacPolicySupport"];

  v8 = xpc_dictionary_create(0, 0, 0);
  if (v7)
  {
    v9 = v4 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = 0;
    goto LABEL_21;
  }

  v11 = xpc_dictionary_get_value(xdict, "kMessageArgs");
  v12 = v11;
  if (!v11)
  {
    v10 = 1;
LABEL_11:
    v32 = v12;
    v33 = v8;
    v14 = objc_alloc_init(NSMutableArray);
    v15 = objc_alloc_init(NSMutableArray);
    value = xpc_array_create(0, 0);
    v16 = xpc_array_create(0, 0);
    v17 = 0;
    v35 = v16;
    do
    {
      v38 = v17;
      v18 = dword_1001AE2C4[v17];
      [*(&selfCopy->super.super.mProcessId + 1) frequencyToolGetJasperResult:v14 generalSacResult:v15 client:v18];
      if ([v14 count])
      {
        v19 = 0;
        v20 = 1;
        do
        {
          v21 = [v14 objectAtIndex:v19];
          centerFreq = [v21 centerFreq];
          v23 = [v21 bw] >> 1;
          v24 = xpc_dictionary_create(0, 0, 0);
          xpc_dictionary_set_uint64(v24, "KWCMFrequencyToolResponse_Client", v18);
          xpc_dictionary_set_uint64(v24, "KWCMFrequencyToolResponse_Frequency", centerFreq);
          xpc_dictionary_set_uint64(v24, "KWCMFrequencyToolResponse_Bandwidth", v23);
          xpc_array_append_value(value, v24);

          v19 = v20;
          v25 = [v14 count] > v20++;
        }

        while (v25);
      }

      if ([v15 count])
      {
        v26 = 0;
        v27 = 1;
        do
        {
          v28 = [v15 objectAtIndex:v26];
          centerFreq2 = [v28 centerFreq];
          v30 = [v28 bw] >> 1;
          v31 = xpc_dictionary_create(0, 0, 0);
          xpc_dictionary_set_uint64(v31, "KWCMFrequencyToolResponse_Client", v18);
          xpc_dictionary_set_uint64(v31, "KWCMFrequencyToolResponse_Frequency", centerFreq2);
          xpc_dictionary_set_uint64(v31, "KWCMFrequencyToolResponse_Bandwidth", v30);
          xpc_array_append_value(v35, v31);

          v26 = v27;
          v25 = [v15 count] > v27++;
        }

        while (v25);
      }

      v17 = v38 + 1;
    }

    while (v38 != 2);
    v8 = v33;
    xpc_dictionary_set_value(v33, "kWCMFrequencyToolResponse_ListOfFrequencies_Jasper", value);
    xpc_dictionary_set_value(v33, "kWCMFrequencyToolResponse_ListOfFrequencies_NonJasper", v35);

    v12 = v32;
    goto LABEL_20;
  }

  uint64 = xpc_dictionary_get_uint64(v11, "KWCMFrequencyToolOperation");
  v10 = uint64 != 6;
  if (uint64 == 1)
  {
    goto LABEL_11;
  }

LABEL_20:

LABEL_21:
  xpc_dictionary_set_BOOL(v8, "KWCMFrequencyToolResponse_Status", v10);
  [(WCM_Controller *)selfCopy sendMessage:2403 withArgs:v8];
}

- (void)handleFrequencyToolOperation:(id)operation
{
  xdict = operation;
  if (*(&self->super.super.mProcessId + 1) && (+[WCM_PolicyManager singleton](WCM_PolicyManager, "singleton"), v4 = objc_claimAutoreleasedReturnValue(), [v4 activeCoexFeatures], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "containsObject:", @"SacPolicySupport"), v5, v4, (v6 & 1) != 0))
  {
    v7 = xpc_dictionary_get_value(xdict, "kMessageArgs");
    v8 = v7;
    if (!v7)
    {
      goto LABEL_10;
    }

    uint64 = xpc_dictionary_get_uint64(v7, "KWCMFrequencyToolOperation");
    v10 = xpc_dictionary_get_uint64(v8, "kWCMFrequencyToolClient");
    v11 = xpc_dictionary_get_uint64(v8, "kWCMFrequencyToolFrequency");
    v12 = 2 * xpc_dictionary_get_uint64(v8, "kWCMFrequencyToolBandwidth");
    v13 = xpc_dictionary_get_uint64(v8, "kWCMFrequencyToolPriority");
    [WCM_Logging logLevel:2 message:@"Received from Frequency Tool Operation (%llu), Client = (%llu), Frequency = (%llu), Bandwidth = (%llu), Priority = (%llu) ", uint64, v10, v11, v12, v13];
    if (uint64 <= 2)
    {
      if (uint64)
      {
        if (uint64 == 2)
        {
          if (v13 < 3)
          {
            v16 = (v13 + 1);
          }

          else
          {
            v16 = 3;
          }

          [*(&self->super.super.mProcessId + 1) frequencyToolAddClientFreq:v10 centerFreq:v11 bandwidth:v12 celluarCarrierType:v16];
        }
      }

      else
      {
        [*(&self->super.super.mProcessId + 1) frequencyToolClearFreq:v10];
      }
    }

    else if (uint64 == 3)
    {
      [*(&self->super.super.mProcessId + 1) frequencyToolRemoveFreq:v10 centerFreq:v11 bandwidth:v12];
    }

    else
    {
      if (uint64 == 4)
      {
        v14 = *(&self->super.super.mProcessId + 1);
        v15 = 1;
      }

      else
      {
        if (uint64 != 5)
        {
          goto LABEL_10;
        }

        v14 = *(&self->super.super.mProcessId + 1);
        v15 = 0;
      }

      [v14 setBlockReporting:v15];
    }
  }

  else
  {
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_BOOL(v8, "KWCMFrequencyToolResponse_Status", 0);
    [(WCM_Controller *)self sendMessage:2403 withArgs:v8];
  }

LABEL_10:
}

@end