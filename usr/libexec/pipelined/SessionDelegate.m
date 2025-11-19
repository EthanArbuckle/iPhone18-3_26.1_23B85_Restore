@interface SessionDelegate
- (SessionDelegate)initWithUploadDb:(void *)a3;
- (void)URLSession:(id)a3 task:(id)a4 didSendBodyData:(int64_t)a5 totalBytesSent:(int64_t)a6 totalBytesExpectedToSend:(int64_t)a7;
- (void)URLSessionDidFinishEventsForBackgroundURLSession;
@end

@implementation SessionDelegate

- (SessionDelegate)initWithUploadDb:(void *)a3
{
  v5.receiver = self;
  v5.super_class = SessionDelegate;
  result = [(SessionDelegate *)&v5 init];
  if (result)
  {
    result->_uploadDb = a3;
  }

  return result;
}

- (void)URLSession:(id)a3 task:(id)a4 didSendBodyData:(int64_t)a5 totalBytesSent:(int64_t)a6 totalBytesExpectedToSend:(int64_t)a7
{
  v11 = a3;
  v12 = a4;
  uploadDb = self->_uploadDb;
  v14 = *(uploadDb + 96);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003100E0;
  block[3] = &unk_100449210;
  v18 = v11;
  v19 = v12;
  v20 = uploadDb;
  v21 = a6;
  v22 = a7;
  v15 = v12;
  v16 = v11;
  dispatch_async(v14, block);
}

- (void)URLSessionDidFinishEventsForBackgroundURLSession
{
  NSLog(@"Received notification that it finished events for background URL session", a2);
  if (qword_10045B050 == -1)
  {
    v2 = qword_10045B058;
    if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
    {
      return;
    }
  }

  else
  {
    sub_100387534();
    v2 = qword_10045B058;
    if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
    {
      return;
    }
  }

  *v3 = 0;
  _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Finish background event invoked", v3, 2u);
}

@end