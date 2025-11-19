@interface MSDXattr
+ (BOOL)hasXattr:(id)a3 path:(id)a4;
+ (BOOL)isContentRoot:(id)a3;
+ (BOOL)removeXattr:(id)a3;
+ (BOOL)setXattr:(id)a3 value:(id)a4 path:(id)a5;
@end

@implementation MSDXattr

+ (BOOL)isContentRoot:(id)a3
{
  v3 = a3;
  if ([MSDXattr hasXattr:@"ContentRoot" path:v3])
  {
    v4 = 1;
  }

  else
  {
    v4 = [MSDXattr hasXattr:@"ContentRootToRemove" path:v3];
  }

  return v4;
}

+ (BOOL)removeXattr:(id)a3
{
  v3 = a3;
  v4 = removexattr([v3 fileSystemRepresentation], objc_msgSend(@"MSDAnnotation", "UTF8String"), 1);
  if (v4)
  {
    sub_100024B54();
  }

  return v4 == 0;
}

+ (BOOL)hasXattr:(id)a3 path:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v5;
  v8 = [@"MSDAnnotation" UTF8String];
  v9 = [v6 fileSystemRepresentation];
  v10 = getxattr(v9, v8, 0, 0, 0, 1);
  if (v10 < 0)
  {
    if (*__error() == 93)
    {
      v11 = 0;
      v13 = 0;
      goto LABEL_9;
    }

    v14 = sub_100021268();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100024C88(v6, v10, v14);
    }

    v11 = 0;
LABEL_13:
    v13 = 0;
    v15 = 0;
LABEL_14:

    goto LABEL_15;
  }

  v11 = [NSMutableData dataWithLength:v10];
  v12 = getxattr(v9, v8, [v11 mutableBytes], v10, 0, 1);
  if (v12 < 0)
  {
    v14 = sub_100021268();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100024BFC();
    }

    goto LABEL_13;
  }

  [v11 setLength:v12];
  v13 = [[NSString alloc] initWithData:v11 encoding:4];
  if ([v13 isEqualToString:v7])
  {
    v14 = sub_100021268();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412546;
      v18 = v6;
      v19 = 2114;
      v20 = v7;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%@: Has expected xattr %{public}@", &v17, 0x16u);
    }

    v15 = 1;
    goto LABEL_14;
  }

LABEL_9:
  v15 = 0;
LABEL_15:

  return v15;
}

+ (BOOL)setXattr:(id)a3 value:(id)a4 path:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [a4 dataUsingEncoding:4];
  v10 = setxattr([v8 fileSystemRepresentation], objc_msgSend(v7, "UTF8String"), objc_msgSend(v9, "bytes"), objc_msgSend(v9, "length"), 0, 1);
  if (v10)
  {
    sub_100024D10();
  }

  return v10 == 0;
}

@end