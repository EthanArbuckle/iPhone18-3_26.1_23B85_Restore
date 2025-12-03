@interface NSKeyedUnarchiver
+ (BOOL)_magicIsValidOnVersion1XPCObject:(id)object;
+ (void)_unarchiveObjectFromVersion1XPCObject:(id)object allowedClasses:(id)classes completion:(id)completion;
+ (void)unarchiveObjectFromXPCObject:(id)object allowedClasses:(id)classes completion:(id)completion;
@end

@implementation NSKeyedUnarchiver

+ (void)unarchiveObjectFromXPCObject:(id)object allowedClasses:(id)classes completion:(id)completion
{
  objectCopy = object;
  classesCopy = classes;
  completionCopy = completion;
  if (completionCopy)
  {
    v11 = completionCopy;
  }

  else
  {
    v11 = &stru_100010438;
  }

  uint64 = xpc_dictionary_get_uint64(objectCopy, "Version");
  if (uint64 == 1)
  {
    [self _unarchiveObjectFromVersion1XPCObject:objectCopy allowedClasses:classesCopy completion:v11];
  }

  else
  {
    v13 = uint64;
    v14 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100006FE8(v13, v14);
    }

    v11->invoke(v11, 0);
  }
}

+ (void)_unarchiveObjectFromVersion1XPCObject:(id)object allowedClasses:(id)classes completion:(id)completion
{
  objectCopy = object;
  classesCopy = classes;
  completionCopy = completion;
  if ([self _magicIsValidOnVersion1XPCObject:objectCopy])
  {
    length = 0;
    data = xpc_dictionary_get_data(objectCopy, "Data", &length);
    v12 = [NSData dataWithBytes:data length:length];
    v13 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v12 error:0];
    [v13 setRequiresSecureCoding:1];
    v14 = [v13 decodeObjectOfClasses:classesCopy forKey:NSKeyedArchiveRootObjectKey];
  }

  else
  {
    v14 = 0;
  }

  completionCopy[2](completionCopy, v14);
}

+ (BOOL)_magicIsValidOnVersion1XPCObject:(id)object
{
  string = xpc_dictionary_get_string(object, "Magic");
  v4 = string;
  if (string)
  {
    if (!strncmp(string, "CBCo", 5uLL))
    {
      return 1;
    }
  }

  else
  {
    v6 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Magic missing while decoding message", v8, 2u);
    }
  }

  v7 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_100007060(v4, v7);
  }

  return 0;
}

@end