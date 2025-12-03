@interface MSDReportErrorRequest
- (BOOL)isValid;
- (id)getPostData;
@end

@implementation MSDReportErrorRequest

- (BOOL)isValid
{
  v6.receiver = self;
  v6.super_class = MSDReportErrorRequest;
  if (![(MSDCommandServerRequest *)&v6 isValid])
  {
    return 0;
  }

  error = [(MSDReportErrorRequest *)self error];
  v4 = error != 0;

  return v4;
}

- (id)getPostData
{
  v13[0] = @"ErrorCode";
  error = [(MSDReportErrorRequest *)self error];
  v4 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [error code]);
  v14[0] = v4;
  v13[1] = @"ErrorDomain";
  error2 = [(MSDReportErrorRequest *)self error];
  domain = [error2 domain];
  v14[1] = domain;
  v13[2] = NSLocalizedDescriptionKey;
  error3 = [(MSDReportErrorRequest *)self error];
  localizedDescription = [error3 localizedDescription];
  v14[2] = localizedDescription;
  v13[3] = @"UniqueDeviceID";
  deviceUDID = [(MSDCommandServerRequest *)self deviceUDID];
  v14[3] = deviceUDID;
  v10 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:4];

  convertToNSData = [v10 convertToNSData];

  return convertToNSData;
}

@end