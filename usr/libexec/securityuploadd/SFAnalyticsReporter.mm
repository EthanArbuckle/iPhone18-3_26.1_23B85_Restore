@interface SFAnalyticsReporter
- (BOOL)saveReportNamed:(id)named intoFileHandle:(id)handle;
- (BOOL)saveReportNamed:(id)named reportData:(id)data;
@end

@implementation SFAnalyticsReporter

- (BOOL)saveReportNamed:(id)named intoFileHandle:(id)handle
{
  namedCopy = named;
  handleCopy = handle;
  v5 = handleCopy;
  v6 = namedCopy;
  v7 = OSAWriteLogForSubmission();

  return v7;
}

- (BOOL)saveReportNamed:(id)named reportData:(id)data
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100007ACC;
  v8[3] = &unk_100020F70;
  dataCopy = data;
  v6 = dataCopy;
  LOBYTE(named) = [(SFAnalyticsReporter *)self saveReportNamed:named intoFileHandle:v8];

  return named;
}

@end