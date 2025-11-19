@interface SFAnalyticsReporter
- (BOOL)saveReportNamed:(id)a3 intoFileHandle:(id)a4;
- (BOOL)saveReportNamed:(id)a3 reportData:(id)a4;
@end

@implementation SFAnalyticsReporter

- (BOOL)saveReportNamed:(id)a3 intoFileHandle:(id)a4
{
  v9 = a3;
  v10 = a4;
  v5 = v10;
  v6 = v9;
  v7 = OSAWriteLogForSubmission();

  return v7;
}

- (BOOL)saveReportNamed:(id)a3 reportData:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100007ACC;
  v8[3] = &unk_100020F70;
  v9 = a4;
  v6 = v9;
  LOBYTE(a3) = [(SFAnalyticsReporter *)self saveReportNamed:a3 intoFileHandle:v8];

  return a3;
}

@end