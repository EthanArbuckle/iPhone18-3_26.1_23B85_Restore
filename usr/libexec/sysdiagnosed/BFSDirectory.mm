@interface BFSDirectory
+ (id)BFSDirectoryWithURL:(id)a3 withDepth:(unint64_t)a4;
- (id)description;
@end

@implementation BFSDirectory

+ (id)BFSDirectoryWithURL:(id)a3 withDepth:(unint64_t)a4
{
  v5 = a3;
  v6 = objc_alloc_init(BFSDirectory);
  v7 = v6;
  if (v6)
  {
    [(BFSDirectory *)v6 setUrl:v5];
    v8 = +[NSFileManager defaultManager];
    v16 = 0;
    v9 = [v5 path];
    v10 = [v8 fileExistsAtPath:v9 isDirectory:&v16];
    v11 = v16;

    if (v10 && (v11 & 1) != 0)
    {
      v12 = [(BFSDirectory *)v7 url];
      v13 = [NSArray arrayWithObjects:NSURLIsDirectoryKey, NSURLNameKey, NSURLPathKey, 0];
      v14 = [v8 enumeratorAtURL:v12 includingPropertiesForKeys:v13 options:7 errorHandler:&stru_1000A10C0];
      [(BFSDirectory *)v7 setUrlEnumerator:v14];
    }

    [(BFSDirectory *)v7 setRemainingDepth:a4];
  }

  return v7;
}

- (id)description
{
  v3 = [(BFSDirectory *)self remainingDepth];
  v4 = [(BFSDirectory *)self urlEnumerator];
  v5 = [NSString stringWithFormat:@"%lu %@", v3, v4];

  return v5;
}

@end