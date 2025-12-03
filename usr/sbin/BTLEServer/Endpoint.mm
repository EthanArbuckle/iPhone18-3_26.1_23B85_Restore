@interface Endpoint
- (BOOL)isConnected;
- (Endpoint)initWithIdentifier:(id)identifier supportedCommands:(id)commands;
- (void)addPipe:(id)pipe;
- (void)pipe:(id)pipe didReceiveMessage:(id)message;
- (void)removePipe:(id)pipe;
@end

@implementation Endpoint

- (Endpoint)initWithIdentifier:(id)identifier supportedCommands:(id)commands
{
  identifierCopy = identifier;
  commandsCopy = commands;
  v14.receiver = self;
  v14.super_class = Endpoint;
  v9 = [(Endpoint *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, identifier);
    *&v10->_type = vdupq_n_s64(2uLL);
    v11 = objc_opt_new();
    pipes = v10->_pipes;
    v10->_pipes = v11;

    objc_storeStrong(&v10->_supportedCommands, commands);
  }

  return v10;
}

- (void)addPipe:(id)pipe
{
  pipeCopy = pipe;
  pipes = [(Endpoint *)self pipes];
  v5 = [[Pipe alloc] initWithDelegate:self pipe:pipeCopy];

  [pipes addObject:v5];
}

- (void)removePipe:(id)pipe
{
  pipeCopy = pipe;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  pipes = [(Endpoint *)self pipes];
  v6 = [pipes countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(pipes);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        pipe = [v10 pipe];

        if (pipe == pipeCopy)
        {
          pipes2 = [(Endpoint *)self pipes];
          [pipes2 removeObject:v10];

          goto LABEL_12;
        }
      }

      v7 = [pipes countByEnumeratingWithState:&v14 objects:v18 count:16];
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
    sub_100075B54(pipeCopy, v12);
  }

LABEL_12:
}

- (BOOL)isConnected
{
  pipes = [(Endpoint *)self pipes];
  v3 = [pipes count] != 0;

  return v3;
}

- (void)pipe:(id)pipe didReceiveMessage:(id)message
{
  pipeCopy = pipe;
  messageCopy = message;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  supportedCommands = [(Endpoint *)self supportedCommands];
  v9 = [supportedCommands countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(supportedCommands);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        v14 = [messageCopy objectForKeyedSubscript:v13];
        if (v14)
        {
          v15 = [NSString stringWithFormat:@"handle%@Command:message:", v13];
          v16 = NSSelectorFromString(v15);

          [self v16];
        }
      }

      v10 = [supportedCommands countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }
}

@end