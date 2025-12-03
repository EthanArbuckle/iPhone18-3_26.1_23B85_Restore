@interface NSURLResponse
- (id)metadata;
- (id)responseValueForHeader:(id)header;
@end

@implementation NSURLResponse

- (id)metadata
{
  selfCopy = self;
  v3 = selfCopy;
  if (selfCopy)
  {
    allHeaderFields = [(NSURLResponse *)selfCopy allHeaderFields];
    v5 = [allHeaderFields mutableCopy];

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

- (id)responseValueForHeader:(id)header
{
  if (self)
  {
    self = [(NSURLResponse *)self valueForHTTPHeaderField:header];
    v3 = vars8;
  }

  return self;
}

@end