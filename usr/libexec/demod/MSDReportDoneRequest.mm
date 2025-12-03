@interface MSDReportDoneRequest
- (BOOL)isValid;
- (id)getPostData;
@end

@implementation MSDReportDoneRequest

- (BOOL)isValid
{
  v6.receiver = self;
  v6.super_class = MSDReportDoneRequest;
  if (![(MSDCommandServerRequest *)&v6 isValid])
  {
    return 0;
  }

  requestStr = [(MSDReportDoneRequest *)self requestStr];
  v4 = requestStr != 0;

  return v4;
}

- (id)getPostData
{
  v3 = objc_alloc_init(NSMutableDictionary);
  requestStr = [(MSDReportDoneRequest *)self requestStr];
  [v3 setObject:requestStr forKey:@"RequestOperation"];

  deviceUDID = [(MSDCommandServerRequest *)self deviceUDID];
  [v3 setObject:deviceUDID forKey:@"UniqueDeviceID"];

  error = [(MSDReportDoneRequest *)self error];

  if (error)
  {
    v7 = objc_alloc_init(NSMutableDictionary);
    error2 = [(MSDReportDoneRequest *)self error];
    v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"0x%08llX", [error2 code]);
    [v7 setObject:v9 forKey:@"ErrorCode"];

    error3 = [(MSDReportDoneRequest *)self error];
    domain = [error3 domain];
    [v7 setObject:domain forKey:@"ErrorDomain"];

    error4 = [(MSDReportDoneRequest *)self error];
    localizedDescription = [error4 localizedDescription];
    [v7 setObject:localizedDescription forKey:NSLocalizedDescriptionKey];

    [v3 setObject:v7 forKey:@"Error"];
  }

  convertToNSData = [v3 convertToNSData];

  return convertToNSData;
}

@end