@interface RPNWNearbyInvitationEndpoint
+ (BOOL)addEndpointMapping:(id)mapping endpointID:(id)d applicationService:(id)service discoverySessionID:(id)iD;
+ (BOOL)removeEndpointMapping:(id)mapping discoverySessionID:(id)d;
+ (BOOL)updateEndpointMapping:(id)mapping discoverySessionID:(id)d;
+ (id)findEndpoint:(id)endpoint;
+ (id)listEndpointsForDiscoverySession:(id)session;
+ (void)clearEndpointMappings:(id)mappings;
+ (void)initialize;
+ (void)listEndpoints:(id)endpoints;
+ (void)removeDiscoverySessionFromAllEndpoints:(id)endpoints;
+ (void)updateClientBrowseResult:(id)result browseResponse:(id)response agentUUID:(id)d applicationService:(id)service discoverySessionID:(id)iD;
- (BOOL)removeDiscoverySession:(id)session;
- (BOOL)seenBySession:(id)session;
- (RPNWNearbyInvitationEndpoint)init;
- (RPNWNearbyInvitationEndpoint)initWithDevice:(id)device applicationService:(id)service endpointID:(id)d discoverySessionID:(id)iD;
- (id)description;
- (void)dealloc;
@end

@implementation RPNWNearbyInvitationEndpoint

+ (void)initialize
{
  v3 = objc_opt_self();

  if (v3 == self)
  {
    v4 = objc_alloc_init(NSMutableDictionary);
    v5 = qword_1001D61C0;
    qword_1001D61C0 = v4;
  }
}

- (RPNWNearbyInvitationEndpoint)init
{
  v6.receiver = self;
  v6.super_class = RPNWNearbyInvitationEndpoint;
  v2 = [(RPNWNearbyInvitationEndpoint *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (RPNWNearbyInvitationEndpoint)initWithDevice:(id)device applicationService:(id)service endpointID:(id)d discoverySessionID:(id)iD
{
  deviceCopy = device;
  serviceCopy = service;
  dCopy = d;
  iDCopy = iD;
  v19.receiver = self;
  v19.super_class = RPNWNearbyInvitationEndpoint;
  v14 = [(RPNWNearbyInvitationEndpoint *)&v19 init];
  v15 = v14;
  if (v14)
  {
    [(RPNWNearbyInvitationEndpoint *)v14 setDevice:deviceCopy];
    [(RPNWNearbyInvitationEndpoint *)v15 setApplicationService:serviceCopy];
    [(RPNWNearbyInvitationEndpoint *)v15 setEndpointUUID:dCopy];
    v16 = objc_alloc_init(NSMutableArray);
    [(RPNWNearbyInvitationEndpoint *)v15 setSessions:v16];

    if (iDCopy)
    {
      [(RPNWNearbyInvitationEndpoint *)v15 addSession:iDCopy];
      [(RPNWNearbyInvitationEndpoint *)v15 setBrowseSession:1];
    }

    v17 = v15;
  }

  return v15;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = RPNWNearbyInvitationEndpoint;
  [(RPNWNearbyInvitationEndpoint *)&v2 dealloc];
}

- (id)description
{
  v3 = objc_alloc_init(NSMutableString);
  endpointUUID = self->_endpointUUID;
  [v3 appendFormat:@"RPNWNearbyInvitationEndpoint[%@:%@] '%@'", self->_applicationService, endpointUUID, self->_device];

  return v3;
}

- (BOOL)seenBySession:(id)session
{
  sessionCopy = session;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_sessions;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v10 + 1) + 8 * i) isEqual:{sessionCopy, v10}])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (BOOL)removeDiscoverySession:(id)session
{
  sessionCopy = session;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_sessions;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 isEqual:{sessionCopy, v13}])
        {
          [(NSMutableArray *)self->_sessions removeObject:v10];

          [(NSMutableArray *)self->_sessions count];
          v11 = 1;
          goto LABEL_11;
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

+ (id)listEndpointsForDiscoverySession:(id)session
{
  sessionCopy = session;
  v4 = objc_alloc_init(NSMutableString);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = qword_1001D61C0;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [qword_1001D61C0 objectForKeyedSubscript:*(*(&v13 + 1) + 8 * i)];
        if ([v10 seenBySession:sessionCopy])
        {
          v11 = [v10 description];
          [v4 appendFormat:@"  %@\n", v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (void)removeDiscoverySessionFromAllEndpoints:(id)endpoints
{
  endpointsCopy = endpoints;
  if (dword_1001D3BE0 <= 30 && (dword_1001D3BE0 != -1 || _LogCategory_Initialize()))
  {
    sub_100118CCC();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  allKeys = [qword_1001D61C0 allKeys];
  v5 = [allKeys countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(allKeys);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [qword_1001D61C0 objectForKeyedSubscript:v9];
        if ([v10 removeDiscoverySession:endpointsCopy])
        {
          v11 = qword_1001D61C0;
          v17 = v9;
          v12 = [NSArray arrayWithObjects:&v17 count:1];
          [v11 removeObjectsForKeys:v12];
        }
      }

      v6 = [allKeys countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v6);
  }
}

+ (BOOL)addEndpointMapping:(id)mapping endpointID:(id)d applicationService:(id)service discoverySessionID:(id)iD
{
  mappingCopy = mapping;
  dCopy = d;
  serviceCopy = service;
  iDCopy = iD;
  if (dword_1001D3BE0 <= 30 && (dword_1001D3BE0 != -1 || _LogCategory_Initialize()))
  {
    v32 = mappingCopy;
    v33 = iDCopy;
    v30 = serviceCopy;
    v31 = dCopy;
    LogPrintF();
  }

  v34 = iDCopy;
  v35 = serviceCopy;
  v36 = dCopy;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v13 = &qword_1001D6000;
  v14 = qword_1001D61C0;
  v15 = [(RPNWNearbyInvitationEndpoint *)v14 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v38;
    while (2)
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v38 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [v13[56] objectForKeyedSubscript:{*(*(&v37 + 1) + 8 * i), v30, v31, v32, v33}];
        device = [v19 device];
        if ([device isEqualToDevice:mappingCopy])
        {
          [v19 endpointUUID];
          v21 = v13;
          v23 = v22 = v14;
          v24 = [v23 isEqual:v36];

          v14 = v22;
          v13 = v21;

          if (v24)
          {
            if (dword_1001D3BE0 <= 40 && (dword_1001D3BE0 != -1 || _LogCategory_Initialize()))
            {
              sub_100118D0C();
            }

            v25 = v35;
            v26 = v36;
            v27 = v34;
            if (v34 && ([v19 seenBySession:v34] & 1) == 0)
            {
              [v19 addSession:v34];
              v28 = 1;
            }

            else
            {
              v28 = 0;
            }

            goto LABEL_28;
          }
        }

        else
        {
        }
      }

      v16 = [(RPNWNearbyInvitationEndpoint *)v14 countByEnumeratingWithState:&v37 objects:v41 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  v25 = v35;
  v26 = v36;
  v27 = v34;
  v14 = [[RPNWNearbyInvitationEndpoint alloc] initWithDevice:mappingCopy applicationService:v35 endpointID:v36 discoverySessionID:v34];
  if (dword_1001D3BE0 <= 40 && (dword_1001D3BE0 != -1 || _LogCategory_Initialize()))
  {
    sub_100118D4C();
  }

  [v13[56] setObject:v14 forKeyedSubscript:{v36, v30, v31, v32, v33}];
  v28 = 1;
LABEL_28:

  return v28;
}

+ (BOOL)updateEndpointMapping:(id)mapping discoverySessionID:(id)d
{
  mappingCopy = mapping;
  dCopy = d;
  if (dword_1001D3BE0 <= 30 && (dword_1001D3BE0 != -1 || _LogCategory_Initialize()))
  {
    sub_100118D8C();
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = qword_1001D61C0;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v17 = 0;
    v10 = *v19;
    do
    {
      v11 = 0;
      do
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [qword_1001D61C0 objectForKeyedSubscript:*(*(&v18 + 1) + 8 * v11)];
        device = [v12 device];
        if ([device isEqualToDevice:mappingCopy])
        {
          v14 = [v12 seenBySession:dCopy];

          if (v14)
          {
            if (dword_1001D3BE0 <= 40 && (dword_1001D3BE0 != -1 || _LogCategory_Initialize()))
            {
              sub_100118DCC();
            }

            [v12 setDevice:mappingCopy];
            v17 = 1;
          }
        }

        else
        {
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v15 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      v9 = v15;
    }

    while (v15);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

+ (BOOL)removeEndpointMapping:(id)mapping discoverySessionID:(id)d
{
  mappingCopy = mapping;
  dCopy = d;
  if (dword_1001D3BE0 <= 30 && (dword_1001D3BE0 != -1 || _LogCategory_Initialize()))
  {
    selfCopy = self;
    v20 = mappingCopy;
    LogPrintF();
  }

  v21 = [NSMutableArray array:selfCopy];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = qword_1001D61C0;
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v22 = 0;
    v11 = *v24;
    do
    {
      v12 = 0;
      do
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v23 + 1) + 8 * v12);
        v14 = [qword_1001D61C0 objectForKeyedSubscript:v13];
        device = [v14 device];
        if ([device isEqualToDevice:mappingCopy])
        {
          v16 = [v14 seenBySession:dCopy];

          if (v16)
          {
            if ([v14 removeDiscoverySession:dCopy])
            {
              [v21 addObject:v13];
              v22 = 1;
            }

            else
            {
              v22 = 0;
            }
          }
        }

        else
        {
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v17 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
      v10 = v17;
    }

    while (v17);
  }

  else
  {
    v22 = 0;
  }

  [qword_1001D61C0 removeObjectsForKeys:v21];
  return v22 & 1;
}

+ (void)clearEndpointMappings:(id)mappings
{
  mappingsCopy = mappings;
  v13 = +[NSMutableArray array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = qword_1001D61C0;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [qword_1001D61C0 objectForKeyedSubscript:v9];
        device = [v10 device];
        v12 = [device isEqualToDevice:mappingsCopy];

        if (v12)
        {
          [v13 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  [qword_1001D61C0 removeObjectsForKeys:v13];
}

+ (void)updateClientBrowseResult:(id)result browseResponse:(id)response agentUUID:(id)d applicationService:(id)service discoverySessionID:(id)iD
{
  resultCopy = result;
  responseCopy = response;
  dCopy = d;
  serviceCopy = service;
  iDCopy = iD;
  v14 = serviceCopy;
  v15 = iDCopy;
  v28 = nw_array_create();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = qword_1001D61C0;
  v16 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  v27 = serviceCopy;
  if (v16)
  {
    v17 = v16;
    v18 = 0;
    v19 = *v31;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v31 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = [qword_1001D61C0 objectForKeyedSubscript:{*(*(&v30 + 1) + 8 * i), v23, v24}];
        if ([v21 seenBySession:v15])
        {
          v22 = [RPNWNearbyInvitationPeer createNWEndpointForEndpoint:v21 agentID:dCopy applicationService:v14];
          if (dword_1001D3BE0 <= 30 && (dword_1001D3BE0 != -1 || _LogCategory_Initialize()))
          {
            v23 = v18;
            v24 = v22;
            LogPrintF();
            ++v18;
            v14 = v27;
          }

          nw_array_append();
        }
      }

      v17 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v17);
  }

  if (dword_1001D3BE0 <= 30 && (dword_1001D3BE0 != -1 || _LogCategory_Initialize()))
  {
    sub_100118E0C(resultCopy);
  }

  responseCopy[2](responseCopy, v28);
}

+ (id)findEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  if (dword_1001D3BE0 <= 30 && (dword_1001D3BE0 != -1 || _LogCategory_Initialize()))
  {
    sub_100118E9C();
  }

  v4 = [qword_1001D61C0 objectForKeyedSubscript:endpointCopy];
  if (v4)
  {
    if (dword_1001D3BE0 <= 30 && (dword_1001D3BE0 != -1 || _LogCategory_Initialize()))
    {
      sub_100118EDC();
    }

    v5 = v4;
  }

  return v4;
}

+ (void)listEndpoints:(id)endpoints
{
  endpointsCopy = endpoints;
  [endpointsCopy appendString:@"Discovered Endpoints\n"];
  v4 = &qword_1001D6000;
  if ([qword_1001D61C0 count])
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    obj = qword_1001D61C0;
    v5 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v5)
    {
      v6 = v5;
      v17 = *v23;
      do
      {
        v7 = 0;
        do
        {
          if (*v23 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v8 = v4;
          v9 = [v4[56] objectForKeyedSubscript:*(*(&v22 + 1) + 8 * v7)];
          v10 = [v9 description];
          [endpointsCopy appendFormat:@"  %@\n", v10];

          v20 = 0u;
          v21 = 0u;
          v18 = 0u;
          v19 = 0u;
          sessions = [v9 sessions];
          v12 = [sessions countByEnumeratingWithState:&v18 objects:v26 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v19;
            do
            {
              v15 = 0;
              do
              {
                if (*v19 != v14)
                {
                  objc_enumerationMutation(sessions);
                }

                [endpointsCopy appendFormat:@"  + Discovered by session '%@'\n", *(*(&v18 + 1) + 8 * v15)];
                v15 = v15 + 1;
              }

              while (v13 != v15);
              v13 = [sessions countByEnumeratingWithState:&v18 objects:v26 count:16];
            }

            while (v13);
          }

          v7 = v7 + 1;
          v4 = v8;
        }

        while (v7 != v6);
        v6 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v6);
    }
  }

  else
  {
    [endpointsCopy appendString:@"  <empty>\n"];
  }
}

@end