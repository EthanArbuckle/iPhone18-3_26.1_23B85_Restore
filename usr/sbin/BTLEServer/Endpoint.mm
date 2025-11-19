@interface Endpoint
- (BOOL)isConnected;
- (Endpoint)initWithIdentifier:(id)a3 supportedCommands:(id)a4;
- (void)addPipe:(id)a3;
- (void)pipe:(id)a3 didReceiveMessage:(id)a4;
- (void)removePipe:(id)a3;
@end

@implementation Endpoint

- (Endpoint)initWithIdentifier:(id)a3 supportedCommands:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = Endpoint;
  v9 = [(Endpoint *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, a3);
    *&v10->_type = vdupq_n_s64(2uLL);
    v11 = objc_opt_new();
    pipes = v10->_pipes;
    v10->_pipes = v11;

    objc_storeStrong(&v10->_supportedCommands, a4);
  }

  return v10;
}

- (void)addPipe:(id)a3
{
  v4 = a3;
  v6 = [(Endpoint *)self pipes];
  v5 = [[Pipe alloc] initWithDelegate:self pipe:v4];

  [v6 addObject:v5];
}

- (void)removePipe:(id)a3
{
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(Endpoint *)self pipes];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 pipe];

        if (v11 == v4)
        {
          v13 = [(Endpoint *)self pipes];
          [v13 removeObject:v10];

          goto LABEL_12;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v12 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
  {
    sub_100075B54(v4, v12);
  }

LABEL_12:
}

- (BOOL)isConnected
{
  v2 = [(Endpoint *)self pipes];
  v3 = [v2 count] != 0;

  return v3;
}

- (void)pipe:(id)a3 didReceiveMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = [(Endpoint *)self supportedCommands];
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        v14 = [v7 objectForKeyedSubscript:v13];
        if (v14)
        {
          v15 = [NSString stringWithFormat:@"handle%@Command:message:", v13];
          v16 = NSSelectorFromString(v15);

          [self v16];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }
}

@end