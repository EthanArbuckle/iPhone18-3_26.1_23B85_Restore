@interface NSError
- (BOOL)rem_isDiskFullSQLError;
@end

@implementation NSError

- (BOOL)rem_isDiskFullSQLError
{
  v3 = [(NSError *)self domain];
  v4 = [v3 isEqualToString:NSSQLiteErrorDomain];

  if (!v4)
  {
    v5 = [(NSError *)self domain];
    if (![v5 isEqualToString:NSCocoaErrorDomain])
    {
      v10 = 0;
      goto LABEL_10;
    }

    v6 = [(NSError *)self userInfo];
    v7 = [v6 objectForKeyedSubscript:NSSQLiteErrorDomain];

    if (!v7)
    {
      return 0;
    }

    v8 = [(NSError *)self userInfo];
    v9 = [v8 objectForKeyedSubscript:NSSQLiteErrorDomain];
    v5 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v9 integerValue]);

    if (!v5)
    {
      return 0;
    }

LABEL_7:
    v10 = [&off_1009057E8 containsObject:v5];
LABEL_10:

    return v10;
  }

  v5 = [NSNumber numberWithInteger:[(NSError *)self code]];
  if (v5)
  {
    goto LABEL_7;
  }

  return 0;
}

@end