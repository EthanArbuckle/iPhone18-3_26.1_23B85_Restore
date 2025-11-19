@interface RPNWNearbyInvitationEndpoint
+ (BOOL)addEndpointMapping:(id)a3 endpointID:(id)a4 applicationService:(id)a5 discoverySessionID:(id)a6;
+ (BOOL)removeEndpointMapping:(id)a3 discoverySessionID:(id)a4;
+ (BOOL)updateEndpointMapping:(id)a3 discoverySessionID:(id)a4;
+ (id)findEndpoint:(id)a3;
+ (id)listEndpointsForDiscoverySession:(id)a3;
+ (void)clearEndpointMappings:(id)a3;
+ (void)initialize;
+ (void)listEndpoints:(id)a3;
+ (void)removeDiscoverySessionFromAllEndpoints:(id)a3;
+ (void)updateClientBrowseResult:(id)a3 browseResponse:(id)a4 agentUUID:(id)a5 applicationService:(id)a6 discoverySessionID:(id)a7;
- (BOOL)removeDiscoverySession:(id)a3;
- (BOOL)seenBySession:(id)a3;
- (RPNWNearbyInvitationEndpoint)init;
- (RPNWNearbyInvitationEndpoint)initWithDevice:(id)a3 applicationService:(id)a4 endpointID:(id)a5 discoverySessionID:(id)a6;
- (id)description;
- (void)dealloc;
@end

@implementation RPNWNearbyInvitationEndpoint

+ (void)initialize
{
  v3 = objc_opt_self();

  if (v3 == a1)
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

- (RPNWNearbyInvitationEndpoint)initWithDevice:(id)a3 applicationService:(id)a4 endpointID:(id)a5 discoverySessionID:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = RPNWNearbyInvitationEndpoint;
  v14 = [(RPNWNearbyInvitationEndpoint *)&v19 init];
  v15 = v14;
  if (v14)
  {
    [(RPNWNearbyInvitationEndpoint *)v14 setDevice:v10];
    [(RPNWNearbyInvitationEndpoint *)v15 setApplicationService:v11];
    [(RPNWNearbyInvitationEndpoint *)v15 setEndpointUUID:v12];
    v16 = objc_alloc_init(NSMutableArray);
    [(RPNWNearbyInvitationEndpoint *)v15 setSessions:v16];

    if (v13)
    {
      [(RPNWNearbyInvitationEndpoint *)v15 addSession:v13];
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

- (BOOL)seenBySession:(id)a3
{
  v4 = a3;
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

        if ([*(*(&v10 + 1) + 8 * i) isEqual:{v4, v10}])
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

- (BOOL)removeDiscoverySession:(id)a3
{
  v4 = a3;
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
        if ([v10 isEqual:{v4, v13}])
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

+ (id)listEndpointsForDiscoverySession:(id)a3
{
  v3 = a3;
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
        if ([v10 seenBySession:v3])
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

+ (void)removeDiscoverySessionFromAllEndpoints:(id)a3
{
  v3 = a3;
  if (dword_1001D3BE0 <= 30 && (dword_1001D3BE0 != -1 || _LogCategory_Initialize()))
  {
    sub_100118CCC();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [qword_1001D61C0 allKeys];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v18 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [qword_1001D61C0 objectForKeyedSubscript:v9];
        if ([v10 removeDiscoverySession:v3])
        {
          v11 = qword_1001D61C0;
          v17 = v9;
          v12 = [NSArray arrayWithObjects:&v17 count:1];
          [v11 removeObjectsForKeys:v12];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v6);
  }
}

+ (BOOL)addEndpointMapping:(id)a3 endpointID:(id)a4 applicationService:(id)a5 discoverySessionID:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (dword_1001D3BE0 <= 30 && (dword_1001D3BE0 != -1 || _LogCategory_Initialize()))
  {
    v32 = v9;
    v33 = v12;
    v30 = v11;
    v31 = v10;
    LogPrintF();
  }

  v34 = v12;
  v35 = v11;
  v36 = v10;
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
        v20 = [v19 device];
        if ([v20 isEqualToDevice:v9])
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
  v14 = [[RPNWNearbyInvitationEndpoint alloc] initWithDevice:v9 applicationService:v35 endpointID:v36 discoverySessionID:v34];
  if (dword_1001D3BE0 <= 40 && (dword_1001D3BE0 != -1 || _LogCategory_Initialize()))
  {
    sub_100118D4C();
  }

  [v13[56] setObject:v14 forKeyedSubscript:{v36, v30, v31, v32, v33}];
  v28 = 1;
LABEL_28:

  return v28;
}

+ (BOOL)updateEndpointMapping:(id)a3 discoverySessionID:(id)a4
{
  v5 = a3;
  v6 = a4;
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
        v13 = [v12 device];
        if ([v13 isEqualToDevice:v5])
        {
          v14 = [v12 seenBySession:v6];

          if (v14)
          {
            if (dword_1001D3BE0 <= 40 && (dword_1001D3BE0 != -1 || _LogCategory_Initialize()))
            {
              sub_100118DCC();
            }

            [v12 setDevice:v5];
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

+ (BOOL)removeEndpointMapping:(id)a3 discoverySessionID:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (dword_1001D3BE0 <= 30 && (dword_1001D3BE0 != -1 || _LogCategory_Initialize()))
  {
    v19 = a1;
    v20 = v6;
    LogPrintF();
  }

  v21 = [NSMutableArray array:v19];
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
        v15 = [v14 device];
        if ([v15 isEqualToDevice:v6])
        {
          v16 = [v14 seenBySession:v7];

          if (v16)
          {
            if ([v14 removeDiscoverySession:v7])
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

+ (void)clearEndpointMappings:(id)a3
{
  v3 = a3;
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
        v11 = [v10 device];
        v12 = [v11 isEqualToDevice:v3];

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

+ (void)updateClientBrowseResult:(id)a3 browseResponse:(id)a4 agentUUID:(id)a5 applicationService:(id)a6 discoverySessionID:(id)a7
{
  v26 = a3;
  v25 = a4;
  v11 = a5;
  v12 = a6;
  v13 = a7;
  v14 = v12;
  v15 = v13;
  v28 = nw_array_create();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = qword_1001D61C0;
  v16 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  v27 = v12;
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
          v22 = [RPNWNearbyInvitationPeer createNWEndpointForEndpoint:v21 agentID:v11 applicationService:v14];
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
    sub_100118E0C(v26);
  }

  v25[2](v25, v28);
}

+ (id)findEndpoint:(id)a3
{
  v3 = a3;
  if (dword_1001D3BE0 <= 30 && (dword_1001D3BE0 != -1 || _LogCategory_Initialize()))
  {
    sub_100118E9C();
  }

  v4 = [qword_1001D61C0 objectForKeyedSubscript:v3];
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

+ (void)listEndpoints:(id)a3
{
  v3 = a3;
  [v3 appendString:@"Discovered Endpoints\n"];
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
          [v3 appendFormat:@"  %@\n", v10];

          v20 = 0u;
          v21 = 0u;
          v18 = 0u;
          v19 = 0u;
          v11 = [v9 sessions];
          v12 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
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
                  objc_enumerationMutation(v11);
                }

                [v3 appendFormat:@"  + Discovered by session '%@'\n", *(*(&v18 + 1) + 8 * v15)];
                v15 = v15 + 1;
              }

              while (v13 != v15);
              v13 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
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
    [v3 appendString:@"  <empty>\n"];
  }
}

@end