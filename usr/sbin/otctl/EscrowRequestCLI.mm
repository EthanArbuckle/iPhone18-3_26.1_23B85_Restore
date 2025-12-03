@interface EscrowRequestCLI
- (EscrowRequestCLI)initWithEscrowRequest:(id)request;
- (int)reset;
- (int)status;
- (int)storePrerecordsInEscrow;
- (int)trigger;
@end

@implementation EscrowRequestCLI

- (int)storePrerecordsInEscrow
{
  escrowRequest = [(EscrowRequestCLI *)self escrowRequest];
  v8 = 0;
  v3 = [escrowRequest storePrerecordsInEscrow:&v8];
  v4 = v8;

  if (v4)
  {
    v5 = [v4 description];
    printf("Errored: %s\n", [v5 UTF8String]);

    v6 = 1;
  }

  else
  {
    printf("Complete: %d records written.\n", v3);
    v6 = 0;
  }

  return v6;
}

- (int)reset
{
  escrowRequest = [(EscrowRequestCLI *)self escrowRequest];
  v7 = 0;
  [escrowRequest resetAllRequests:&v7];
  v3 = v7;

  if (v3)
  {
    v4 = [v3 description];
    printf("Errored: %s\n", [v4 UTF8String]);

    v5 = 1;
  }

  else
  {
    puts("Complete.");
    v5 = 0;
  }

  return v5;
}

- (int)status
{
  escrowRequest = [(EscrowRequestCLI *)self escrowRequest];
  v21 = 0;
  v3 = [escrowRequest fetchStatuses:&v21];
  v4 = v21;

  if (v4)
  {
    v5 = [v4 description];
    printf("Errored: %s\n", [v5 UTF8String]);

    v6 = 1;
  }

  else
  {
    if ([v3 count])
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      allKeys = [v3 allKeys];
      v8 = [allKeys countByEnumeratingWithState:&v17 objects:v22 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v18;
        do
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v18 != v10)
            {
              objc_enumerationMutation(allKeys);
            }

            v12 = *(*(&v17 + 1) + 8 * i);
            uTF8String = [v12 UTF8String];
            v14 = [v3 objectForKeyedSubscript:v12];
            v15 = [v14 description];
            printf("Request %s: %s\n", uTF8String, [v15 UTF8String]);
          }

          v9 = [allKeys countByEnumeratingWithState:&v17 objects:v22 count:16];
        }

        while (v9);
      }
    }

    else
    {
      puts("No requests are waiting for a passcode.");
    }

    v6 = 0;
  }

  return v6;
}

- (int)trigger
{
  escrowRequest = [(EscrowRequestCLI *)self escrowRequest];
  v7 = 0;
  [escrowRequest triggerEscrowUpdate:@"cli" error:&v7];
  v3 = v7;

  if (v3)
  {
    v4 = [v3 description];
    printf("Errored: %s", [v4 UTF8String]);

    v5 = 1;
  }

  else
  {
    puts("Complete.");
    v5 = 0;
  }

  return v5;
}

- (EscrowRequestCLI)initWithEscrowRequest:(id)request
{
  requestCopy = request;
  v9.receiver = self;
  v9.super_class = EscrowRequestCLI;
  v6 = [(EscrowRequestCLI *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_escrowRequest, request);
  }

  return v7;
}

@end