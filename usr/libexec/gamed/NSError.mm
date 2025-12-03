@interface NSError
+ (id)_gkErrorForDatabase:(sqlite3 *)database;
- (BOOL)isSQLiteFatalFileError;
- (NSError)serializableError;
- (id)withExpungedClientData;
@end

@implementation NSError

- (BOOL)isSQLiteFatalFileError
{
  domain = [(NSError *)self domain];
  if ([domain isEqualToString:NSCocoaErrorDomain] && -[NSError code](self, "code") == 256)
  {
    userInfo = [(NSError *)self userInfo];
    v5 = [userInfo objectForKeyedSubscript:NSSQLiteErrorDomain];
    v6 = [v5 intValue] == 14;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)_gkErrorForDatabase:(sqlite3 *)database
{
  nSLocalizedDescriptionKey = [NSString stringWithFormat:@"sqlite3 error: %s", sqlite3_errmsg(database), NSLocalizedDescriptionKey];
  v9 = nSLocalizedDescriptionKey;
  v5 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];

  v6 = [[NSError alloc] initWithDomain:@"GKDatabaseErrorDomain" code:sqlite3_errcode(database) userInfo:v5];

  return v6;
}

- (NSError)serializableError
{
  userInfo = [(NSError *)self userInfo];

  if (!userInfo)
  {
    goto LABEL_6;
  }

  domain = [(NSError *)self domain];
  if ([domain isEqualToString:GKErrorDomain])
  {
    goto LABEL_5;
  }

  domain2 = [(NSError *)self domain];
  if ([domain2 isEqualToString:GKServerErrorDomain])
  {

LABEL_5:
LABEL_6:
    selfCopy = self;
    goto LABEL_7;
  }

  domain3 = [(NSError *)self domain];
  v9 = [domain3 isEqualToString:GKInternalErrorDomain];

  if (v9)
  {
    goto LABEL_6;
  }

  domain4 = [(NSError *)self domain];
  v11 = [domain4 isEqualToString:NSURLErrorDomain];

  if (!v11)
  {
    userInfo2 = [(NSError *)self userInfo];
    v13 = [NSJSONSerialization isValidJSONObject:userInfo2];

    if (v13)
    {
      goto LABEL_6;
    }
  }

  selfCopy = [(NSError *)self withExpungedClientData];
LABEL_7:

  return selfCopy;
}

- (id)withExpungedClientData
{
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Making error serializable: %@", buf, 0xCu);
  }

  domain = [(NSError *)self domain];
  code = [(NSError *)self code];
  userInfo = [(NSError *)self userInfo];
  v12[0] = NSHelpAnchorErrorKey;
  v12[1] = NSLocalizedDescriptionKey;
  v12[2] = NSLocalizedFailureReasonErrorKey;
  v12[3] = NSLocalizedRecoveryOptionsErrorKey;
  v12[4] = NSLocalizedRecoverySuggestionErrorKey;
  v8 = [NSArray arrayWithObjects:v12 count:5];
  v9 = [userInfo _gkSubDictionaryWithKeys:v8];
  v10 = [NSError errorWithDomain:domain code:code userInfo:v9];

  return v10;
}

@end