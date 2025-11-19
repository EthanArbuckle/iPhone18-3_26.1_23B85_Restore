@interface RPNWEndpoint
+ (BOOL)removeEndpointMapping:(id)a3 discoverySessionID:(id)a4 immediate:(BOOL)a5;
+ (BOOL)updateEndpointMapping:(id)a3 discoverySessionID:(id)a4;
+ (id)dduiEndpointsKey;
+ (id)findEndpoint:(id)a3;
+ (id)findEndpoint:(id)a3 discoverySessionID:(id)a4;
+ (id)findEndpoint:(id)a3 endpointArray:(id)a4;
+ (id)findEndpoint:(id)a3 isFromDDUI:(BOOL *)a4;
+ (id)getEndpointArray:(id)a3;
+ (id)globalEndpointsKey;
+ (id)listEndpointsForDiscoverySession:(id)a3;
+ (void)addDiscoverySessionID:(id)a3 forAgentClientID:(id)a4;
+ (void)addEndpoint:(id)a3 discoverySessionID:(id)a4;
+ (void)ageOutEndpointMapping:(id)a3 discoverySessionID:(id)a4;
+ (void)clearEndpointMappings:(id)a3;
+ (void)initialize;
+ (void)listEndpoints:(id)a3;
+ (void)pairWithEndpoint:(id)a3 pin:(id)a4 completionHandler:(id)a5;
+ (void)removeDiscoverySession:(id)a3;
+ (void)startEndpointTimer;
+ (void)updateClientBrowseResult:(id)a3 browseResponse:(id)a4 token:(id)a5 agentUUID:(id)a6 agentClientID:(id)a7 agentClientPID:(int)a8 applicationService:(id)a9 discoverySessionID:(id)a10 predicate:(id)a11;
- (RPNWEndpoint)init;
- (id)description;
- (void)addAlternativeRepresentationDevice:(id)a3;
- (void)dealloc;
- (void)startAgeOutTimer;
@end

@implementation RPNWEndpoint

- (id)description
{
  v3 = objc_alloc_init(NSMutableString);
  endpointUUID = self->_endpointUUID;
  [v3 appendFormat:@"RPNWEndpoint[%@:%@] '%@'", self->_applicationService, endpointUUID, self->_device];
  ageOutTimeout = self->_ageOutTimeout;
  if (ageOutTimeout)
  {
    v6 = +[NSDate now];
    [(NSDate *)ageOutTimeout timeIntervalSinceDate:v6];
    v8 = v7;

    if (v8 >= 0.0)
    {
      v13 = v8;
      v9 = @" ageOut=%.0fs ";
    }

    else
    {
      v9 = @" ageOut=stale ";
    }

    [v3 appendFormat:v9, *&v13];
  }

  alternativeDevice = self->_alternativeDevice;
  if (alternativeDevice)
  {
    v11 = [(RPCompanionLinkDevice *)alternativeDevice identifier];
    [v3 appendFormat:@" alternative=%@ ", v11];
  }

  return v3;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = RPNWEndpoint;
  [(RPNWEndpoint *)&v2 dealloc];
}

+ (id)dduiEndpointsKey
{
  v2 = qword_1001D6240;
  if (!qword_1001D6240)
  {
    v3 = [[NSUUID alloc] initWithUUIDString:@"00000000-0000-0000-0000-000000000001"];
    v4 = qword_1001D6240;
    qword_1001D6240 = v3;

    v2 = qword_1001D6240;
  }

  return v2;
}

+ (id)globalEndpointsKey
{
  v2 = qword_1001D6238;
  if (!qword_1001D6238)
  {
    v3 = [[NSUUID alloc] initWithUUIDString:@"00000000-0000-0000-0000-000000000000"];
    v4 = qword_1001D6238;
    qword_1001D6238 = v3;

    v2 = qword_1001D6238;
  }

  return v2;
}

+ (void)initialize
{
  v3 = objc_opt_self();

  if (v3 == a1)
  {
    v10[0] = 0;
    v10[1] = 0;
    v4 = [[NSUUID alloc] initWithUUIDBytes:v10];
    v5 = qword_1001D6238;
    qword_1001D6238 = v4;

    v6 = objc_alloc_init(NSMutableDictionary);
    v7 = qword_1001D6248;
    qword_1001D6248 = v6;

    v8 = objc_alloc_init(NSMutableDictionary);
    v9 = qword_1001D6250;
    qword_1001D6250 = v8;

    +[RPNWEndpoint startEndpointTimer];
  }
}

- (RPNWEndpoint)init
{
  v6.receiver = self;
  v6.super_class = RPNWEndpoint;
  v2 = [(RPNWEndpoint *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (void)startAgeOutTimer
{
  if (dword_1001D3EE0 <= 30 && (dword_1001D3EE0 != -1 || _LogCategory_Initialize()))
  {
    sub_10011A248();
  }

  v3 = [NSDate dateWithTimeIntervalSinceNow:180.0];
  ageOutTimeout = self->_ageOutTimeout;
  self->_ageOutTimeout = v3;
}

- (void)addAlternativeRepresentationDevice:(id)a3
{
  v5 = a3;
  v4 = [(RPNWEndpoint *)self alternativeDevice];

  if (v4 && dword_1001D3EE0 <= 30 && (dword_1001D3EE0 != -1 || _LogCategory_Initialize()))
  {
    sub_10011A288();
  }

  [(RPNWEndpoint *)self setAlternativeDevice:v5];
}

+ (id)getEndpointArray:(id)a3
{
  if (!a3)
  {
    a3 = qword_1001D6238;
  }

  v3 = [qword_1001D6250 objectForKeyedSubscript:a3];

  return v3;
}

+ (id)listEndpointsForDiscoverySession:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableString);
  v5 = [RPNWEndpoint getEndpointArray:v3];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v12 + 1) + 8 * i) description];
        [v4 appendFormat:@"  %@\n", v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (void)startEndpointTimer
{
  v2 = +[RPNWNetworkAgent sharedNetworkAgent];
  v3 = [v2 dispatchQueue];
  v4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v3);
  v5 = qword_1001D6258;
  qword_1001D6258 = v4;

  dispatch_source_set_event_handler(qword_1001D6258, &stru_1001ACD80);
  CUDispatchTimerSet();
  v6 = qword_1001D6258;

  dispatch_activate(v6);
}

+ (void)removeDiscoverySession:(id)a3
{
  v3 = a3;
  if (dword_1001D3EE0 <= 30 && (dword_1001D3EE0 != -1 || _LogCategory_Initialize()))
  {
    sub_10011A2A4();
  }

  v4 = [RPNWEndpoint getEndpointArray:v3];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v22 + 1) + 8 * i) startAgeOutTimer];
      }

      v6 = [v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v6);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = [qword_1001D6248 allKeys];
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    while (2)
    {
      for (j = 0; j != v11; j = j + 1)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * j);
        v15 = [qword_1001D6248 objectForKeyedSubscript:v14];
        v16 = [v15 containsObject:v3];

        if (v16)
        {
          v17 = [qword_1001D6248 objectForKeyedSubscript:v14];
          [v17 removeObject:v3];

          goto LABEL_21;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v26 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_21:
}

+ (void)addDiscoverySessionID:(id)a3 forAgentClientID:(id)a4
{
  v8 = a3;
  v5 = a4;
  v6 = [qword_1001D6248 objectForKeyedSubscript:v5];
  if (!v6)
  {
    v7 = objc_alloc_init(NSMutableSet);
    [qword_1001D6248 setObject:v7 forKeyedSubscript:v5];

    v6 = [qword_1001D6248 objectForKeyedSubscript:v5];
  }

  [v6 addObject:v8];
}

+ (void)addEndpoint:(id)a3 discoverySessionID:(id)a4
{
  v7 = a3;
  v5 = a4;
  v6 = [RPNWEndpoint getEndpointArray:v5];
  if (!v6)
  {
    v6 = objc_alloc_init(NSMutableArray);
    [qword_1001D6250 setObject:v6 forKeyedSubscript:v5];
  }

  [v6 addObject:v7];
}

+ (BOOL)updateEndpointMapping:(id)a3 discoverySessionID:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (dword_1001D3EE0 <= 30 && (dword_1001D3EE0 != -1 || _LogCategory_Initialize()))
  {
    sub_10011A3E0();
  }

  v20 = v6;
  v7 = [RPNWEndpoint getEndpointArray:v6];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v22;
    do
    {
      v12 = 0;
      do
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v21 + 1) + 8 * v12);
        v14 = [v13 device];
        v15 = [v14 isEqualToDevice:v5];

        if (v15)
        {
          if (dword_1001D3EE0 <= 40 && (dword_1001D3EE0 != -1 || _LogCategory_Initialize()))
          {
            sub_10011A420();
          }

          [v13 setDevice:v5];
          v10 = 1;
        }

        v16 = [v13 alternativeDevice];
        v17 = [v16 isEqualToDevice:v5];

        if (v17)
        {
          if (dword_1001D3EE0 <= 40 && (dword_1001D3EE0 != -1 || _LogCategory_Initialize()))
          {
            sub_10011A460();
          }

          [v13 setAlternativeDevice:v5];
          v10 = 1;
        }

        v12 = v12 + 1;
      }

      while (v9 != v12);
      v18 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
      v9 = v18;
    }

    while (v18);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

+ (void)ageOutEndpointMapping:(id)a3 discoverySessionID:(id)a4
{
  v8 = a3;
  v5 = a4;
  v6 = [RPNWEndpoint findEndpoint:v8 discoverySessionID:v5];
  v7 = v6;
  if (v6)
  {
    [v6 startAgeOutTimer];
  }

  else if (dword_1001D3EE0 <= 30 && (dword_1001D3EE0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

+ (BOOL)removeEndpointMapping:(id)a3 discoverySessionID:(id)a4 immediate:(BOOL)a5
{
  v32 = a5;
  v7 = a3;
  v8 = a4;
  if (dword_1001D3EE0 <= 30 && (dword_1001D3EE0 != -1 || _LogCategory_Initialize()))
  {
    v28 = a1;
    v29 = v7;
    LogPrintF();
  }

  v30 = v8;
  v9 = [RPNWEndpoint getEndpointArray:v8, v28, v29];
  v31 = +[NSMutableArray array];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v9;
  v10 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (!v10)
  {
    v33 = 0;
    goto LABEL_31;
  }

  v11 = v10;
  v33 = 0;
  v12 = *v36;
  do
  {
    v13 = 0;
    do
    {
      if (*v36 != v12)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v35 + 1) + 8 * v13);
      v15 = [v14 device];
      v16 = [v15 identifier];
      v17 = [v7 identifier];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_16;
      }

      v19 = [v14 alternativeDevice];

      if (v19)
      {
        if (dword_1001D3EE0 <= 30 && (dword_1001D3EE0 != -1 || _LogCategory_Initialize()))
        {
          sub_10011A4A0();
        }

        v20 = [v14 alternativeDevice];
        [v14 setDevice:v20];

LABEL_16:
        v21 = 0;
        goto LABEL_17;
      }

      v21 = 1;
LABEL_17:
      v22 = [v14 alternativeDevice];
      v23 = [v22 identifier];
      v24 = [v7 identifier];
      v25 = [v23 isEqual:v24];

      if (v25)
      {
        [v14 setAlternativeDevice:0];
      }

      if (v21)
      {
        if (v32)
        {
          [v31 addObject:v14];
        }

        else
        {
          [v14 startAgeOutTimer];
        }

        v33 = 1;
      }

      v13 = v13 + 1;
    }

    while (v11 != v13);
    v26 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    v11 = v26;
  }

  while (v26);
LABEL_31:

  [obj removeObjectsInArray:v31];
  return v33 & 1;
}

+ (void)clearEndpointMappings:(id)a3
{
  v3 = a3;
  v23 = +[NSMutableArray array];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = qword_1001D6250;
  v26 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v26)
  {
    v25 = *v36;
    do
    {
      v4 = 0;
      do
      {
        if (*v36 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v27 = *(*(&v35 + 1) + 8 * v4);
        v28 = v4;
        v5 = [qword_1001D6250 objectForKeyedSubscript:v23];
        v6 = +[NSMutableArray array];
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v7 = v5;
        v8 = [v7 countByEnumeratingWithState:&v31 objects:v39 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v32;
          v29 = *v32;
          do
          {
            v11 = 0;
            v30 = v9;
            do
            {
              if (*v32 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v31 + 1) + 8 * v11);
              if (v3)
              {
                v13 = [v12 device];
                v14 = [v13 isEqualToDevice:v3];

                if (!v14)
                {
                  goto LABEL_25;
                }

                if (dword_1001D3EE0 <= 30 && (dword_1001D3EE0 != -1 || _LogCategory_Initialize()))
                {
LABEL_23:
                  sub_10011A4D4();
                }

LABEL_24:
                [v6 addObject:v12];
                goto LABEL_25;
              }

              v15 = [v12 ageOutTimeout];
              if (v15)
              {
                v16 = v15;
                v17 = +[NSDate now];
                [v12 ageOutTimeout];
                v19 = v18 = v6;
                v20 = [v17 earlierDate:v19];
                v21 = [v12 ageOutTimeout];

                v6 = v18;
                v3 = 0;
                v9 = v30;

                v22 = v20 == v21;
                v10 = v29;
                if (v22)
                {
                  if (dword_1001D3EE0 <= 30 && (dword_1001D3EE0 != -1 || _LogCategory_Initialize()))
                  {
                    goto LABEL_23;
                  }

                  goto LABEL_24;
                }
              }

LABEL_25:
              v11 = v11 + 1;
            }

            while (v9 != v11);
            v9 = [v7 countByEnumeratingWithState:&v31 objects:v39 count:16];
          }

          while (v9);
        }

        [v7 removeObjectsInArray:v6];
        if (![v7 count])
        {
          [v23 addObject:v27];
        }

        v4 = v28 + 1;
      }

      while ((v28 + 1) != v26);
      v26 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v26);
  }

  [qword_1001D6250 removeObjectsForKeys:v23];
}

+ (void)updateClientBrowseResult:(id)a3 browseResponse:(id)a4 token:(id)a5 agentUUID:(id)a6 agentClientID:(id)a7 agentClientPID:(int)a8 applicationService:(id)a9 discoverySessionID:(id)a10 predicate:(id)a11
{
  v45 = a4;
  v47 = a5;
  v46 = a6;
  v14 = a7;
  v48 = a9;
  v15 = a10;
  v16 = a11;
  v17 = nw_array_create();
  v18 = objc_alloc_init(NSMutableArray);
  v44 = v14;
  v19 = [qword_1001D6248 objectForKeyedSubscript:v14];
  v20 = [v19 copy];

  v43 = v15;
  v41 = v20;
  if (v20)
  {
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v21 = v20;
    v22 = [v21 countByEnumeratingWithState:&v53 objects:v58 count:16];
    v23 = v46;
    if (v22)
    {
      v24 = v22;
      v25 = *v54;
      do
      {
        for (i = 0; i != v24; i = i + 1)
        {
          if (*v54 != v25)
          {
            objc_enumerationMutation(v21);
          }

          v27 = [RPNWEndpoint getEndpointArray:*(*(&v53 + 1) + 8 * i)];
          [v18 addObjectsFromArray:v27];
        }

        v24 = [v21 countByEnumeratingWithState:&v53 objects:v58 count:16];
      }

      while (v24);
    }
  }

  else
  {
    v28 = [RPNWEndpoint getEndpointArray:v15];
    [v18 addObjectsFromArray:v28];

    v23 = v46;
  }

  v29 = +[_TtC8rapportd15RPNWBrowseAgent shared];
  v42 = v18;
  v30 = [v29 filterEndpoints:v18 serviceName:v48 predicate:v16];

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v31 = v30;
  v32 = [v31 countByEnumeratingWithState:&v49 objects:v57 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = 0;
    v35 = *v50;
    do
    {
      for (j = 0; j != v33; j = j + 1)
      {
        if (*v50 != v35)
        {
          objc_enumerationMutation(v31);
        }

        v37 = [RPNWPeer createNWEndpointForEndpoint:*(*(&v49 + 1) + 8 * j) agentID:v23 applicationService:v48, v38, v39, v40, v41];
        if (dword_1001D3EE0 <= 30 && (dword_1001D3EE0 != -1 || _LogCategory_Initialize()))
        {
          v38 = v47;
          v39 = v34;
          v40 = v37;
          LogPrintF();
          ++v34;
          v23 = v46;
        }

        nw_array_append();
      }

      v33 = [v31 countByEnumeratingWithState:&v49 objects:v57 count:16];
    }

    while (v33);
  }

  if (dword_1001D3EE0 <= 30 && (dword_1001D3EE0 != -1 || _LogCategory_Initialize()))
  {
    sub_10011A510();
  }

  v45[2](v45, v17);
}

+ (id)findEndpoint:(id)a3 endpointArray:(id)a4
{
  v5 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = a4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 endpointUUID];
        v12 = [v11 isEqual:v5];

        if (v12)
        {
          if (dword_1001D3EE0 <= 30 && (dword_1001D3EE0 != -1 || _LogCategory_Initialize()))
          {
            sub_10011A560();
          }

          v7 = v10;
          goto LABEL_14;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  return v7;
}

+ (id)findEndpoint:(id)a3 discoverySessionID:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (dword_1001D3EE0 <= 30 && (dword_1001D3EE0 != -1 || _LogCategory_Initialize()))
  {
    sub_10011A5A0();
  }

  v7 = [RPNWEndpoint getEndpointArray:v6];
  v8 = [RPNWEndpoint findEndpoint:v5 endpointArray:v7];

  return v8;
}

+ (id)findEndpoint:(id)a3
{
  v5 = 0;
  v3 = [RPNWEndpoint findEndpoint:a3 isFromDDUI:&v5];

  return v3;
}

+ (id)findEndpoint:(id)a3 isFromDDUI:(BOOL *)a4
{
  v5 = a3;
  if (dword_1001D3EE0 <= 30 && (dword_1001D3EE0 != -1 || _LogCategory_Initialize()))
  {
    sub_10011A5E0();
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = qword_1001D6250;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v17 = a4;
    v9 = *v19;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [qword_1001D6250 objectForKeyedSubscript:v11];
        v13 = [RPNWEndpoint findEndpoint:v5 endpointArray:v12];
        if (v13)
        {
          v14 = v13;
          v15 = +[RPNWEndpoint dduiEndpointsKey];
          *v17 = v11 == v15;

          goto LABEL_14;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_14:

  return v14;
}

+ (void)listEndpoints:(id)a3
{
  v3 = a3;
  [v3 appendString:@"Discovered Endpoints\n"];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = qword_1001D6250;
  v4 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v22 + 1) + 8 * i);
        if ([v8 isEqual:qword_1001D6238])
        {
          v9 = v3;
          v10 = @" + Global endpoints\n";
        }

        else if ([v8 isEqual:qword_1001D6240])
        {
          v9 = v3;
          v10 = @" + DDUI mapped endpoints\n";
        }

        else
        {
          v16 = v8;
          v9 = v3;
          v10 = @" + Endpoints discovered by session '%@'\n";
        }

        [v9 appendFormat:v10, v16];
        v11 = [qword_1001D6250 objectForKeyedSubscript:v8];
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v12 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v19;
          do
          {
            for (j = 0; j != v13; j = j + 1)
            {
              if (*v19 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = [*(*(&v18 + 1) + 8 * j) description];
              [v3 appendFormat:@"  %@\n"];
            }

            v13 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v13);
        }

        if (![v11 count])
        {
          [v3 appendString:@"  <empty>\n"];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v5);
  }
}

+ (void)pairWithEndpoint:(id)a3 pin:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (dword_1001D3EE0 <= 30 && (dword_1001D3EE0 != -1 || _LogCategory_Initialize()))
  {
    sub_10011A620();
  }

  v10 = +[_TtC8rapportd16RPPairingSession pairingEndpoints];
  v11 = [v10 objectForKeyedSubscript:v7];

  if (v11)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100066FD0;
    v13[3] = &unk_1001ACDA8;
    v14 = v9;
    [v11 pairWithPin:v8 completionHandler:v13];
  }

  else
  {
    v12 = RPErrorF();
    (*(v9 + 2))(v9, 0, v12);
  }
}

@end