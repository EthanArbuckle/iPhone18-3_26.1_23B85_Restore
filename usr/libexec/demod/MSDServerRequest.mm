@interface MSDServerRequest
- (NSString)getName;
- (id)copyWithZone:(_NSZone *)a3;
- (id)parseResponseForError:(id)a3 andPayload:(id)a4;
@end

@implementation MSDServerRequest

- (NSString)getName
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (id)parseResponseForError:(id)a3 andPayload:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(MSDServerRequest *)self getResponseClass];
  v8 = objc_opt_new();
  if (v6)
  {
    v9 = sub_100063A54();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5D38(self, v6, v9);
    }
  }

  else
  {
    v10 = [v7 objectForKey:@"data"];
    [v8 setData:v10];
  }

  [v8 setError:v6];

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setSavePath:self->_savePath];
  [v4 setCompletion:self->_completion];
  return v4;
}

@end