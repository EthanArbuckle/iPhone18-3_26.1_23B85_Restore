@interface MSDDemoUnitServerRequest
- (BOOL)isValid;
- (MSDDemoUnitServerRequest)init;
@end

@implementation MSDDemoUnitServerRequest

- (MSDDemoUnitServerRequest)init
{
  v5.receiver = self;
  v5.super_class = MSDDemoUnitServerRequest;
  v2 = [(MSDDemoUnitServerRequest *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MSDCommandServerRequest *)v2 setServer:@"api.demounit.net"];
    [(MSDCommandServerRequest *)v3 setPort:@"443"];
  }

  return v3;
}

- (BOOL)isValid
{
  v3 = [(MSDCommandServerRequest *)self server];
  if (v3)
  {
    v4 = [(MSDCommandServerRequest *)self port];
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end