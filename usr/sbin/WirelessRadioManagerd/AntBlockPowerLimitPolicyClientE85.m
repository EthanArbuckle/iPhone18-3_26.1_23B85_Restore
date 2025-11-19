@interface AntBlockPowerLimitPolicyClientE85
- (id)constructXpcMessage;
- (id)constructXpcMessagePolicyEntries;
- (void)extractPolicy:(id)a3;
- (void)extractPolicyEntries:(id)a3;
@end

@implementation AntBlockPowerLimitPolicyClientE85

- (void)extractPolicyEntries:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 3, @"Extracted %lu policies for client E85", [v4 count]);
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
          v12 = objc_alloc_init(AntBlockPowerLimitE85Policy);
          [(AntBlockPowerLimitE85Policy *)v12 extractPolicy:v11];
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
    [WCM_Logging logLevel:3 message:@"No policies found for client E85"];
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

- (void)extractPolicy:(id)a3
{
  v3.receiver = self;
  v3.super_class = AntBlockPowerLimitPolicyClientE85;
  [(AntBlockPowerLimitPolicyClient *)&v3 extractPolicy:a3];
}

- (id)constructXpcMessage
{
  v4.receiver = self;
  v4.super_class = AntBlockPowerLimitPolicyClientE85;
  v2 = [(AntBlockPowerLimitPolicyClient *)&v4 constructXpcMessage];

  return v2;
}

@end