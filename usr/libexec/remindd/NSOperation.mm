@interface NSOperation
- (id)ic_loggingValues;
- (id)ic_shortLoggingOperationName;
@end

@implementation NSOperation

- (id)ic_loggingValues
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [(NSOperation *)self name];

  if (v4)
  {
    v5 = [(NSOperation *)self name];
    [v3 setObject:v5 forKeyedSubscript:@"name"];
  }

  if ([(NSOperation *)self isExecuting])
  {
    v6 = [NSNumber numberWithBool:[(NSOperation *)self isExecuting]];
    [v3 setObject:v6 forKeyedSubscript:@"isExecuting"];
  }

  if ([(NSOperation *)self isFinished])
  {
    v7 = [NSNumber numberWithBool:[(NSOperation *)self isFinished]];
    [v3 setObject:v7 forKeyedSubscript:@"isFinished"];
  }

  return v3;
}

- (id)ic_shortLoggingOperationName
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = [NSString stringWithString:v3];

  return v4;
}

@end