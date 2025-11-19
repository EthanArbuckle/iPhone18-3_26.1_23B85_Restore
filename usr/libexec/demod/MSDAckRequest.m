@interface MSDAckRequest
- (id)getPostData;
@end

@implementation MSDAckRequest

- (id)getPostData
{
  v8[0] = @"UniqueDeviceID";
  v3 = [(MSDCommandServerRequest *)self deviceUDID];
  v8[1] = @"Result";
  v9[0] = v3;
  v4 = [NSNumber numberWithBool:[(MSDAckRequest *)self status]];
  v9[1] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = [v5 convertToNSData];

  return v6;
}

@end