@interface CCDDeviceUploadRetrieveSoldToIdsRequest
- (id)requestBody;
@end

@implementation CCDDeviceUploadRetrieveSoldToIdsRequest

- (id)requestBody
{
  v6 = @"searchString";
  organization = [(CCDDeviceUploadRetrieveSoldToIdsRequest *)self organization];
  orgId = [organization orgId];
  v7 = orgId;
  v4 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];

  return v4;
}

@end