@interface DIShadowNode
- (BOOL)isEqual:(id)equal;
- (DIShadowNode)initWithCoder:(id)coder;
- (DIShadowNode)initWithURL:(id)l isCache:(BOOL)cache;
- (id)description;
- (unint64_t)hash;
- (void)createBackendWithFlags:(int)flags;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DIShadowNode

- (DIShadowNode)initWithURL:(id)l isCache:(BOOL)cache
{
  lCopy = l;
  v12.receiver = self;
  v12.super_class = DIShadowNode;
  v7 = [(DIShadowNode *)&v12 init];
  if (v7)
  {
    v8 = [DIURL newDIURLWithNSURL:lCopy];
    URL = v7->_URL;
    v7->_URL = v8;

    v7->_isCache = cache;
    fileBackend = v7->_fileBackend;
    v7->_fileBackend = 0;
    v7->_numBlocks = 0;
  }

  return v7;
}

- (void)createBackendWithFlags:(int)flags
{
  fileBackend = self->_fileBackend;
  self->_fileBackend = 0;

  v5 = [FileLocalXPC alloc];
  v8 = [(DIShadowNode *)self URL];
  v6 = [FileLocalXPC initWithURL:v5 fileOpenFlags:"initWithURL:fileOpenFlags:"];
  v7 = self->_fileBackend;
  self->_fileBackend = v6;
}

- (DIShadowNode)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = DIShadowNode;
  v5 = [(DIShadowNode *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"URL"];
    URL = v5->_URL;
    v5->_URL = v6;

    v5->_isCache = [coderCopy decodeBoolForKey:@"isCache"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fileBackend"];
    fileBackend = v5->_fileBackend;
    v5->_fileBackend = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [(DIShadowNode *)self URL];
  [coderCopy encodeObject:v4 forKey:@"URL"];

  [coderCopy encodeBool:-[DIShadowNode isCache](self forKey:{"isCache"), @"isCache"}];
  fileBackend = [(DIShadowNode *)self fileBackend];
  [coderCopy encodeObject:fileBackend forKey:@"fileBackend"];
}

- (id)description
{
  v3 = [(DIShadowNode *)self URL];
  isCache = [(DIShadowNode *)self isCache];
  v5 = @"Shadow";
  if (isCache)
  {
    v5 = @"Cache";
  }

  v6 = [NSString stringWithFormat:@"%@: %@", v3, v5];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = [(DIShadowNode *)self URL];
    v7 = [v5 URL];
    if ([v6 isEqual:v7])
    {
      isCache = [(DIShadowNode *)self isCache];
      v9 = isCache ^ [v5 isCache] ^ 1;
    }

    else
    {
      LOBYTE(v9) = 0;
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(DIShadowNode *)self URL];
  v4 = [v3 hash];

  isCache = [(DIShadowNode *)self isCache];
  v6 = 2221;
  if (isCache)
  {
    v6 = 2207;
  }

  return v6 - v4 + 32 * v4 + 961;
}

@end