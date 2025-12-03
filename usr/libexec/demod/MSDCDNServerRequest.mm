@interface MSDCDNServerRequest
- (BOOL)isValid;
@end

@implementation MSDCDNServerRequest

- (BOOL)isValid
{
  v6.receiver = self;
  v6.super_class = MSDCDNServerRequest;
  if (![(MSDServerRequest *)&v6 isValid])
  {
    return 0;
  }

  downloadCredentials = [(MSDCDNServerRequest *)self downloadCredentials];
  v4 = downloadCredentials != 0;

  return v4;
}

@end