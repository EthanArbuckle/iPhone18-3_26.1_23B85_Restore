@interface NSError
- (BOOL)rem_isDiskFullSQLError;
@end

@implementation NSError

- (BOOL)rem_isDiskFullSQLError
{
  domain = [(NSError *)self domain];
  v4 = [domain isEqualToString:NSSQLiteErrorDomain];

  if (!v4)
  {
    domain2 = [(NSError *)self domain];
    if (![domain2 isEqualToString:NSCocoaErrorDomain])
    {
      v10 = 0;
      goto LABEL_10;
    }

    userInfo = [(NSError *)self userInfo];
    v7 = [userInfo objectForKeyedSubscript:NSSQLiteErrorDomain];

    if (!v7)
    {
      return 0;
    }

    userInfo2 = [(NSError *)self userInfo];
    v9 = [userInfo2 objectForKeyedSubscript:NSSQLiteErrorDomain];
    domain2 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v9 integerValue]);

    if (!domain2)
    {
      return 0;
    }

LABEL_7:
    v10 = [&off_1009057E8 containsObject:domain2];
LABEL_10:

    return v10;
  }

  domain2 = [NSNumber numberWithInteger:[(NSError *)self code]];
  if (domain2)
  {
    goto LABEL_7;
  }

  return 0;
}

@end