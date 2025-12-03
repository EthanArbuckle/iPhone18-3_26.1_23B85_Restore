@interface SWTBridge
+ (BOOL)writeIssueReport:(id)report filename:(id)filename;
@end

@implementation SWTBridge

+ (BOOL)writeIssueReport:(id)report filename:(id)filename
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100011B9C;
  v7[3] = &unk_100132AD0;
  reportCopy = report;
  v4 = reportCopy;
  v5 = [OSALog createForSubmission:@"226" metadata:0 options:0 error:0 writing:v7];

  return 1;
}

@end