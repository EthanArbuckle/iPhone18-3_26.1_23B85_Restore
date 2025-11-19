@interface NSError
+ (id)_gkErrorForDatabase:(sqlite3 *)a3;
- (BOOL)isSQLiteFatalFileError;
- (NSError)serializableError;
- (id)withExpungedClientData;
@end

@implementation NSError

- (BOOL)isSQLiteFatalFileError
{
  v3 = [(NSError *)self domain];
  if ([v3 isEqualToString:NSCocoaErrorDomain] && -[NSError code](self, "code") == 256)
  {
    v4 = [(NSError *)self userInfo];
    v5 = [v4 objectForKeyedSubscript:NSSQLiteErrorDomain];
    v6 = [v5 intValue] == 14;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)_gkErrorForDatabase:(sqlite3 *)a3
{
  v4 = [NSString stringWithFormat:@"sqlite3 error: %s", sqlite3_errmsg(a3), NSLocalizedDescriptionKey];
  v9 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];

  v6 = [[NSError alloc] initWithDomain:@"GKDatabaseErrorDomain" code:sqlite3_errcode(a3) userInfo:v5];

  return v6;
}

- (NSError)serializableError
{
  v3 = [(NSError *)self userInfo];

  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = [(NSError *)self domain];
  if ([v4 isEqualToString:GKErrorDomain])
  {
    goto LABEL_5;
  }

  v5 = [(NSError *)self domain];
  if ([v5 isEqualToString:GKServerErrorDomain])
  {

LABEL_5:
LABEL_6:
    v6 = self;
    goto LABEL_7;
  }

  v8 = [(NSError *)self domain];
  v9 = [v8 isEqualToString:GKInternalErrorDomain];

  if (v9)
  {
    goto LABEL_6;
  }

  v10 = [(NSError *)self domain];
  v11 = [v10 isEqualToString:NSURLErrorDomain];

  if (!v11)
  {
    v12 = [(NSError *)self userInfo];
    v13 = [NSJSONSerialization isValidJSONObject:v12];

    if (v13)
    {
      goto LABEL_6;
    }
  }

  v6 = [(NSError *)self withExpungedClientData];
LABEL_7:

  return v6;
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
    v14 = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Making error serializable: %@", buf, 0xCu);
  }

  v5 = [(NSError *)self domain];
  v6 = [(NSError *)self code];
  v7 = [(NSError *)self userInfo];
  v12[0] = NSHelpAnchorErrorKey;
  v12[1] = NSLocalizedDescriptionKey;
  v12[2] = NSLocalizedFailureReasonErrorKey;
  v12[3] = NSLocalizedRecoveryOptionsErrorKey;
  v12[4] = NSLocalizedRecoverySuggestionErrorKey;
  v8 = [NSArray arrayWithObjects:v12 count:5];
  v9 = [v7 _gkSubDictionaryWithKeys:v8];
  v10 = [NSError errorWithDomain:v5 code:v6 userInfo:v9];

  return v10;
}

@end