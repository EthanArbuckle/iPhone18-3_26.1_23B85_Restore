@interface BFSDirectory
+ (id)BFSDirectoryWithURL:(id)l withDepth:(unint64_t)depth;
- (id)description;
@end

@implementation BFSDirectory

+ (id)BFSDirectoryWithURL:(id)l withDepth:(unint64_t)depth
{
  lCopy = l;
  v6 = objc_alloc_init(BFSDirectory);
  v7 = v6;
  if (v6)
  {
    [(BFSDirectory *)v6 setUrl:lCopy];
    v8 = +[NSFileManager defaultManager];
    v16 = 0;
    path = [lCopy path];
    v10 = [v8 fileExistsAtPath:path isDirectory:&v16];
    v11 = v16;

    if (v10 && (v11 & 1) != 0)
    {
      v12 = [(BFSDirectory *)v7 url];
      v13 = [NSArray arrayWithObjects:NSURLIsDirectoryKey, NSURLNameKey, NSURLPathKey, 0];
      v14 = [v8 enumeratorAtURL:v12 includingPropertiesForKeys:v13 options:7 errorHandler:&stru_1000A10C0];
      [(BFSDirectory *)v7 setUrlEnumerator:v14];
    }

    [(BFSDirectory *)v7 setRemainingDepth:depth];
  }

  return v7;
}

- (id)description
{
  remainingDepth = [(BFSDirectory *)self remainingDepth];
  urlEnumerator = [(BFSDirectory *)self urlEnumerator];
  v5 = [NSString stringWithFormat:@"%lu %@", remainingDepth, urlEnumerator];

  return v5;
}

@end