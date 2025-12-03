@interface NSKeyedUnarchiver
+ (id)_unarchiveObjectFromVersion1XPCObject:(id)object allowedClasses:(id)classes;
+ (id)unarchiveDataToObject:(id)object allowedClasses:(id)classes;
+ (id)unarchiveXPCObject:(id)object allowedClasses:(id)classes;
@end

@implementation NSKeyedUnarchiver

+ (id)unarchiveDataToObject:(id)object allowedClasses:(id)classes
{
  classesCopy = classes;
  objectCopy = object;
  NSLog(@"%s: Data length : %lu", "+[NSKeyedUnarchiver(XPC) unarchiveDataToObject:allowedClasses:]", [objectCopy length]);
  v10 = 0;
  v7 = [[NSKeyedUnarchiver alloc] initForReadingFromData:objectCopy error:&v10];

  if (!v7)
  {
    NSLog(@"NSKeyedUnarchiver object - nil");
  }

  [v7 setDecodingFailurePolicy:0];
  NSLog(@"Allowed Classes : %@", classesCopy);
  v8 = [v7 decodeObjectOfClasses:classesCopy forKey:NSKeyedArchiveRootObjectKey];

  if (v8)
  {
    NSLog(@"%s: Successfully Unarchived Object", "+[NSKeyedUnarchiver(XPC) unarchiveDataToObject:allowedClasses:]");
  }

  else
  {
    NSLog(@"%s: Failed to Unarchived Object", "+[NSKeyedUnarchiver(XPC) unarchiveDataToObject:allowedClasses:]");
  }

  return v8;
}

+ (id)_unarchiveObjectFromVersion1XPCObject:(id)object allowedClasses:(id)classes
{
  length = 0;
  classesCopy = classes;
  data = xpc_dictionary_get_data(object, "SerializedObject", &length);
  v7 = [NSData dataWithBytes:data length:length];
  NSLog(@"%s: Data length : %lu", "+[NSKeyedUnarchiver(XPC) _unarchiveObjectFromVersion1XPCObject:allowedClasses:]", [v7 length]);
  v12 = 0;
  v8 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v7 error:&v12];
  v9 = v12;
  NSLog(@"archiveError :%@", v9);
  NSLog(@"%s: Successfully Unarchived Object", "+[NSKeyedUnarchiver(XPC) _unarchiveObjectFromVersion1XPCObject:allowedClasses:]");
  v10 = [v8 decodeObjectOfClasses:classesCopy forKey:NSKeyedArchiveRootObjectKey];

  if (!v10)
  {
    NSLog(@"Unable to unarchive data: %@", v9);
  }

  return v10;
}

+ (id)unarchiveXPCObject:(id)object allowedClasses:(id)classes
{
  objectCopy = object;
  classesCopy = classes;
  uint64 = xpc_dictionary_get_uint64(objectCopy, "Version");
  NSLog(@"Version : %llu", uint64);
  if (uint64 == 1)
  {
    v9 = [self _unarchiveObjectFromVersion1XPCObject:objectCopy allowedClasses:classesCopy];
  }

  else
  {
    NSLog(@"%s: Unhandled Version: Error", "+[NSKeyedUnarchiver(XPC) unarchiveXPCObject:allowedClasses:]");
    v9 = 0;
  }

  return v9;
}

@end