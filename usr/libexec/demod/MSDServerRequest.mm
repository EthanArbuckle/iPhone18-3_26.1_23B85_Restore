@interface MSDServerRequest
- (NSString)getName;
- (id)copyWithZone:(_NSZone *)zone;
- (id)parseResponseForError:(id)error andPayload:(id)payload;
@end

@implementation MSDServerRequest

- (NSString)getName
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (id)parseResponseForError:(id)error andPayload:(id)payload
{
  errorCopy = error;
  payloadCopy = payload;
  [(MSDServerRequest *)self getResponseClass];
  v8 = objc_opt_new();
  if (errorCopy)
  {
    v9 = sub_100063A54();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5D38(self, errorCopy, v9);
    }
  }

  else
  {
    v10 = [payloadCopy objectForKey:@"data"];
    [v8 setData:v10];
  }

  [v8 setError:errorCopy];

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setSavePath:self->_savePath];
  [v4 setCompletion:self->_completion];
  return v4;
}

@end