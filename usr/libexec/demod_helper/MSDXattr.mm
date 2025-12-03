@interface MSDXattr
+ (BOOL)hasXattr:(id)xattr path:(id)path;
+ (BOOL)isContentRoot:(id)root;
+ (BOOL)removeXattr:(id)xattr;
+ (BOOL)setXattr:(id)xattr value:(id)value path:(id)path;
@end

@implementation MSDXattr

+ (BOOL)isContentRoot:(id)root
{
  rootCopy = root;
  if ([MSDXattr hasXattr:@"ContentRoot" path:rootCopy])
  {
    v4 = 1;
  }

  else
  {
    v4 = [MSDXattr hasXattr:@"ContentRootToRemove" path:rootCopy];
  }

  return v4;
}

+ (BOOL)removeXattr:(id)xattr
{
  xattrCopy = xattr;
  v4 = removexattr([xattrCopy fileSystemRepresentation], objc_msgSend(@"MSDAnnotation", "UTF8String"), 1);
  if (v4)
  {
    sub_100024B54();
  }

  return v4 == 0;
}

+ (BOOL)hasXattr:(id)xattr path:(id)path
{
  xattrCopy = xattr;
  pathCopy = path;
  v7 = xattrCopy;
  uTF8String = [@"MSDAnnotation" UTF8String];
  fileSystemRepresentation = [pathCopy fileSystemRepresentation];
  v10 = getxattr(fileSystemRepresentation, uTF8String, 0, 0, 0, 1);
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
      sub_100024C88(pathCopy, v10, v14);
    }

    v11 = 0;
LABEL_13:
    v13 = 0;
    v15 = 0;
LABEL_14:

    goto LABEL_15;
  }

  v11 = [NSMutableData dataWithLength:v10];
  v12 = getxattr(fileSystemRepresentation, uTF8String, [v11 mutableBytes], v10, 0, 1);
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
      v18 = pathCopy;
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

+ (BOOL)setXattr:(id)xattr value:(id)value path:(id)path
{
  xattrCopy = xattr;
  pathCopy = path;
  v9 = [value dataUsingEncoding:4];
  v10 = setxattr([pathCopy fileSystemRepresentation], objc_msgSend(xattrCopy, "UTF8String"), objc_msgSend(v9, "bytes"), objc_msgSend(v9, "length"), 0, 1);
  if (v10)
  {
    sub_100024D10();
  }

  return v10 == 0;
}

@end