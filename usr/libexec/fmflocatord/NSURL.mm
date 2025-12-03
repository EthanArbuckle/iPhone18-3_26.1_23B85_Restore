@interface NSURL
- (id)URLByReplacingHost:(id)host;
@end

@implementation NSURL

- (id)URLByReplacingHost:(id)host
{
  hostCopy = host;
  host = [(NSURL *)self host];
  v6 = host;
  v7 = 0;
  if (hostCopy && host)
  {
    absoluteString = [(NSURL *)self absoluteString];
    v10 = [absoluteString rangeOfString:v6];
    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = 0;
    }

    else
    {
      v11 = [absoluteString stringByReplacingCharactersInRange:v10 withString:{v9, hostCopy}];
      v7 = [NSURL URLWithString:v11];
    }
  }

  return v7;
}

@end