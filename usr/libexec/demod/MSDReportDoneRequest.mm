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

  v3 = [(MSDReportDoneRequest *)self requestStr];
  v4 = v3 != 0;

  return v4;
}

- (id)getPostData
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(MSDReportDoneRequest *)self requestStr];
  [v3 setObject:v4 forKey:@"RequestOperation"];

  v5 = [(MSDCommandServerRequest *)self deviceUDID];
  [v3 setObject:v5 forKey:@"UniqueDeviceID"];

  v6 = [(MSDReportDoneRequest *)self error];

  if (v6)
  {
    v7 = objc_alloc_init(NSMutableDictionary);
    v8 = [(MSDReportDoneRequest *)self error];
    v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"0x%08llX", [v8 code]);
    [v7 setObject:v9 forKey:@"ErrorCode"];

    v10 = [(MSDReportDoneRequest *)self error];
    v11 = [v10 domain];
    [v7 setObject:v11 forKey:@"ErrorDomain"];

    v12 = [(MSDReportDoneRequest *)self error];
    v13 = [v12 localizedDescription];
    [v7 setObject:v13 forKey:NSLocalizedDescriptionKey];

    [v3 setObject:v7 forKey:@"Error"];
  }

  v14 = [v3 convertToNSData];

  return v14;
}

@end