@interface KTSetOptInResult
- (id)description;
@end

@implementation KTSetOptInResult

- (id)description
{
  if ([(KTSetOptInResult *)self success])
  {
    v3 = @"success";
  }

  else
  {
    v3 = @"fail";
  }

  v4 = [(KTSetOptInResult *)self uri];
  optInStatus = [(KTSetOptInResult *)self optInStatus];
  optInDate = [(KTSetOptInResult *)self optInDate];
  error = [(KTSetOptInResult *)self error];
  v8 = [NSString stringWithFormat:@"<KTSetOptInResult: %@ uri: %@ status: %@ date: %@ error: %@>", v3, v4, optInStatus, optInDate, error];

  return v8;
}

@end