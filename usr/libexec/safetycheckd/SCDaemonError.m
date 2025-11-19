@interface SCDaemonError
+ (id)errorWithCode:(int64_t)a3 underlyingErrors:(id)a4;
- (SCDaemonError)init;
- (id)toError;
@end

@implementation SCDaemonError

+ (id)errorWithCode:(int64_t)a3 underlyingErrors:(id)a4
{
  v5 = a4;
  v6 = +[NSMutableDictionary dictionary];
  if ([v5 count])
  {
    [v6 setObject:v5 forKeyedSubscript:NSMultipleUnderlyingErrorsKey];
  }

  v7 = [NSError errorWithDomain:SCDaemonErrorDomain code:a3 userInfo:v6];

  return v7;
}

- (SCDaemonError)init
{
  v6.receiver = self;
  v6.super_class = SCDaemonError;
  v2 = [(SCDaemonError *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(SCDaemonError *)v2 setCode:0];
    v4 = +[NSMutableArray array];
    [(SCDaemonError *)v3 setUnderlyingErrors:v4];
  }

  return v3;
}

- (id)toError
{
  if (-[SCDaemonError code](self, "code") || (-[SCDaemonError underlyingErrors](self, "underlyingErrors"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 count], v3, v4))
  {
    v5 = [(SCDaemonError *)self code];
    v6 = [(SCDaemonError *)self underlyingErrors];
    v7 = [SCDaemonError errorWithCode:v5 underlyingErrors:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end