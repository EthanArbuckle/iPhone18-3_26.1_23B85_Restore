@interface NSURL
- (id)wc_URLWithLastPathComponentAsDirectory;
@end

@implementation NSURL

- (id)wc_URLWithLastPathComponentAsDirectory
{
  selfCopy = self;
  absoluteString = [(NSURL *)selfCopy absoluteString];
  if (([absoluteString hasSuffix:@"/"] & 1) == 0)
  {
    v4 = [absoluteString stringByAppendingString:@"/"];

    v5 = [NSURL URLWithString:v4];

    selfCopy = v5;
    absoluteString = v4;
  }

  return selfCopy;
}

@end