@interface FMFAccount
- (id)description;
- (void)copyInfoFromAccount:(id)a3;
@end

@implementation FMFAccount

- (void)copyInfoFromAccount:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = FMFAccount;
  [(FindBaseAccount *)&v13 copyInfoFromAccount:v4];
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    v6 = [v5 dsid];
    [(FMFAccount *)self setDsid:v6];

    v7 = [v5 appServerHost];
    [(FMFAccount *)self setAppServerHost:v7];

    v8 = [v5 appAuthToken];
    [(FMFAccount *)self setAppAuthToken:v8];

    v9 = [v5 internalAuthToken];

    if (v9)
    {
      v10 = [v5 internalAuthToken];
      [(FMFAccount *)self setInternalAuthToken:v10];
    }

    v11 = [v5 additionalInfo];
    [(FMFAccount *)self setAdditionalInfo:v11];

    -[FMFAccount setAppAuthTokenStatus:](self, "setAppAuthTokenStatus:", [v5 appAuthTokenStatus]);
    -[FMFAccount setInternalAuthTokenStatus:](self, "setInternalAuthTokenStatus:", [v5 internalAuthTokenStatus]);
    v12 = [v5 lastMessageDisplayedTimestamp];
    [(FMFAccount *)self setLastMessageDisplayedTimestamp:v12];
  }
}

- (id)description
{
  v17 = [(FMFAccount *)self dsid];
  v16 = [(FindBaseAccount *)self username];
  v18 = [(FMFAccount *)self appAuthToken];
  if (v18)
  {
    v3 = @"(not-nil)";
  }

  else
  {
    v3 = @"(nil)";
  }

  v15 = v3;
  v4 = [(FMFAccount *)self appAuthTokenStatus];
  v5 = [(FMFAccount *)self internalAuthToken];
  if (v5)
  {
    v6 = @"(not-nil)";
  }

  else
  {
    v6 = @"(nil)";
  }

  v7 = [(FMFAccount *)self internalAuthTokenStatus];
  v8 = [(FindBaseAccount *)self serverHost];
  v9 = [(FMFAccount *)self appServerHost];
  v10 = [(FindBaseAccount *)self serverProtocolScheme];
  v11 = [(FindBaseAccount *)self apsEnvironment];
  v12 = [(FMFAccount *)self additionalInfo];
  v13 = [NSString stringWithFormat:@"FMFAccount(0x%lx) %@, %@, %@, %ld, %@, %ld, %@, %@, %@, %@, %@", self, v17, v16, v15, v4, v6, v7, v8, v9, v10, v11, v12];

  return v13;
}

@end