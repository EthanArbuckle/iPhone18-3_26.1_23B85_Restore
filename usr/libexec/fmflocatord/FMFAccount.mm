@interface FMFAccount
- (id)description;
- (void)copyInfoFromAccount:(id)account;
@end

@implementation FMFAccount

- (void)copyInfoFromAccount:(id)account
{
  accountCopy = account;
  v13.receiver = self;
  v13.super_class = FMFAccount;
  [(FindBaseAccount *)&v13 copyInfoFromAccount:accountCopy];
  if ([accountCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = accountCopy;
    dsid = [v5 dsid];
    [(FMFAccount *)self setDsid:dsid];

    appServerHost = [v5 appServerHost];
    [(FMFAccount *)self setAppServerHost:appServerHost];

    appAuthToken = [v5 appAuthToken];
    [(FMFAccount *)self setAppAuthToken:appAuthToken];

    internalAuthToken = [v5 internalAuthToken];

    if (internalAuthToken)
    {
      internalAuthToken2 = [v5 internalAuthToken];
      [(FMFAccount *)self setInternalAuthToken:internalAuthToken2];
    }

    additionalInfo = [v5 additionalInfo];
    [(FMFAccount *)self setAdditionalInfo:additionalInfo];

    -[FMFAccount setAppAuthTokenStatus:](self, "setAppAuthTokenStatus:", [v5 appAuthTokenStatus]);
    -[FMFAccount setInternalAuthTokenStatus:](self, "setInternalAuthTokenStatus:", [v5 internalAuthTokenStatus]);
    lastMessageDisplayedTimestamp = [v5 lastMessageDisplayedTimestamp];
    [(FMFAccount *)self setLastMessageDisplayedTimestamp:lastMessageDisplayedTimestamp];
  }
}

- (id)description
{
  dsid = [(FMFAccount *)self dsid];
  username = [(FindBaseAccount *)self username];
  appAuthToken = [(FMFAccount *)self appAuthToken];
  if (appAuthToken)
  {
    v3 = @"(not-nil)";
  }

  else
  {
    v3 = @"(nil)";
  }

  v15 = v3;
  appAuthTokenStatus = [(FMFAccount *)self appAuthTokenStatus];
  internalAuthToken = [(FMFAccount *)self internalAuthToken];
  if (internalAuthToken)
  {
    v6 = @"(not-nil)";
  }

  else
  {
    v6 = @"(nil)";
  }

  internalAuthTokenStatus = [(FMFAccount *)self internalAuthTokenStatus];
  serverHost = [(FindBaseAccount *)self serverHost];
  appServerHost = [(FMFAccount *)self appServerHost];
  serverProtocolScheme = [(FindBaseAccount *)self serverProtocolScheme];
  apsEnvironment = [(FindBaseAccount *)self apsEnvironment];
  additionalInfo = [(FMFAccount *)self additionalInfo];
  v13 = [NSString stringWithFormat:@"FMFAccount(0x%lx) %@, %@, %@, %ld, %@, %ld, %@, %@, %@, %@, %@", self, dsid, username, v15, appAuthTokenStatus, v6, internalAuthTokenStatus, serverHost, appServerHost, serverProtocolScheme, apsEnvironment, additionalInfo];

  return v13;
}

@end