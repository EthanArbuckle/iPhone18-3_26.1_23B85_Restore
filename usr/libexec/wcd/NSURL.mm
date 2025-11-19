@interface NSURL
- (id)wc_URLWithLastPathComponentAsDirectory;
@end

@implementation NSURL

- (id)wc_URLWithLastPathComponentAsDirectory
{
  v2 = self;
  v3 = [(NSURL *)v2 absoluteString];
  if (([v3 hasSuffix:@"/"] & 1) == 0)
  {
    v4 = [v3 stringByAppendingString:@"/"];

    v5 = [NSURL URLWithString:v4];

    v2 = v5;
    v3 = v4;
  }

  return v2;
}

@end