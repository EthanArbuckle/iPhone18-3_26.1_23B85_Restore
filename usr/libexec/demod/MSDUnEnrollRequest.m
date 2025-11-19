@interface MSDUnEnrollRequest
- (MSDUnEnrollRequest)init;
- (id)getPostData;
@end

@implementation MSDUnEnrollRequest

- (MSDUnEnrollRequest)init
{
  v6.receiver = self;
  v6.super_class = MSDUnEnrollRequest;
  v2 = [(MSDUnEnrollRequest *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(MSDUnEnrollRequest *)v2 setObliterate:0];
    v4 = v3;
  }

  return v3;
}

- (id)getPostData
{
  v3 = [NSNumber numberWithBool:[(MSDUnEnrollRequest *)self obliterate]];
  v8[0] = @"UniqueDeviceID";
  v4 = [(MSDCommandServerRequest *)self deviceUDID];
  v8[1] = @"ObliterateDevice";
  v9[0] = v4;
  v9[1] = v3;
  v5 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = [v5 convertToNSData];

  return v6;
}

@end