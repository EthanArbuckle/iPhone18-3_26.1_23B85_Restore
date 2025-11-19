@interface NSURL
- (id)URLByReplacingHost:(id)a3;
@end

@implementation NSURL

- (id)URLByReplacingHost:(id)a3
{
  v4 = a3;
  v5 = [(NSURL *)self host];
  v6 = v5;
  v7 = 0;
  if (v4 && v5)
  {
    v8 = [(NSURL *)self absoluteString];
    v10 = [v8 rangeOfString:v6];
    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = 0;
    }

    else
    {
      v11 = [v8 stringByReplacingCharactersInRange:v10 withString:{v9, v4}];
      v7 = [NSURL URLWithString:v11];
    }
  }

  return v7;
}

@end