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
  v5 = [(KTSetOptInResult *)self optInStatus];
  v6 = [(KTSetOptInResult *)self optInDate];
  v7 = [(KTSetOptInResult *)self error];
  v8 = [NSString stringWithFormat:@"<KTSetOptInResult: %@ uri: %@ status: %@ date: %@ error: %@>", v3, v4, v5, v6, v7];

  return v8;
}

@end