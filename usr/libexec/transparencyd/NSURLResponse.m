@interface NSURLResponse
- (id)metadata;
- (id)responseValueForHeader:(id)a3;
@end

@implementation NSURLResponse

- (id)metadata
{
  v2 = self;
  v3 = v2;
  if (v2)
  {
    v4 = [(NSURLResponse *)v2 allHeaderFields];
    v5 = [v4 mutableCopy];

    if (!v5)
    {
      v5 = objc_alloc_init(NSMutableDictionary);
    }

    v6 = [(NSURLResponse *)v3 valueForHTTPHeaderField:@"X-Apple-Server-Hint"];
    if (v6)
    {
      [v5 setObject:v6 forKeyedSubscript:kTransparencyResponseMetadataKeyServerHint];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)responseValueForHeader:(id)a3
{
  if (self)
  {
    self = [(NSURLResponse *)self valueForHTTPHeaderField:a3];
    v3 = vars8;
  }

  return self;
}

@end