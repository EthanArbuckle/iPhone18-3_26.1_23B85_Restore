@interface CCDDeviceUploadRetrieveSoldToIdsRequest
- (id)requestBody;
@end

@implementation CCDDeviceUploadRetrieveSoldToIdsRequest

- (id)requestBody
{
  v6 = @"searchString";
  v2 = [(CCDDeviceUploadRetrieveSoldToIdsRequest *)self organization];
  v3 = [v2 orgId];
  v7 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];

  return v4;
}

@end