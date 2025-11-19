@interface MSDNotDemoRequest
- (BOOL)isValid;
- (MSDNotDemoRequest)init;
- (id)getPostData;
- (id)getUrl;
@end

@implementation MSDNotDemoRequest

- (MSDNotDemoRequest)init
{
  v5.receiver = self;
  v5.super_class = MSDNotDemoRequest;
  v2 = [(MSDDemoUnitServerRequest *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MSDDemoUnitServerRequest *)v2 setUseBAAAuthentication:1];
  }

  return v3;
}

- (BOOL)isValid
{
  v6.receiver = self;
  v6.super_class = MSDNotDemoRequest;
  if (![(MSDDemoUnitServerRequest *)&v6 isValid])
  {
    return 0;
  }

  v3 = [(MSDNotDemoRequest *)self serialNumber];
  v4 = v3 != 0;

  return v4;
}

- (id)getPostData
{
  v6 = @"serial_number";
  v2 = [(MSDNotDemoRequest *)self serialNumber];
  v7 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];

  v4 = [v3 convertToNSData];

  return v4;
}

- (id)getUrl
{
  v2 = [(MSDCommandServerRequest *)self deviceUDID];
  v3 = [NSString stringWithFormat:@"/api/device/1/%@/mark_as_not_demo", v2];

  return v3;
}

@end