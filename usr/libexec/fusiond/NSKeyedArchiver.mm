@interface NSKeyedArchiver
+ (id)archiveObject:(id)object;
+ (id)archiveObjectToData:(id)data;
+ (id)archiveObjectToDict:(id)dict;
+ (void)archiveObject:(id)object to:(id)to;
@end

@implementation NSKeyedArchiver

+ (id)archiveObjectToData:(id)data
{
  dataCopy = data;
  v4 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
  [v4 encodeObject:dataCopy forKey:NSKeyedArchiveRootObjectKey];
  encodedData = [v4 encodedData];
  v6 = [dataCopy description];

  NSLog(@"Successfully archived Object : %@", v6);
  NSLog(@"%s: Data length : %lu", "+[NSKeyedArchiver(XPC) archiveObjectToData:]", [encodedData length]);

  return encodedData;
}

+ (id)archiveObjectToDict:(id)dict
{
  v3 = [NSKeyedArchiver archiveObjectToData:dict];
  v4 = [NSMutableDictionary dictionaryWithObjectsAndKeys:&off_100011F50, @"Version", v3, @"SerializedObject", 0];

  return v4;
}

+ (id)archiveObject:(id)object
{
  objectCopy = object;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
  [v5 encodeObject:objectCopy forKey:NSKeyedArchiveRootObjectKey];
  encodedData = [v5 encodedData];
  xpc_dictionary_set_uint64(v4, "Version", 1uLL);
  xpc_dictionary_set_data(v4, "SerializedObject", [encodedData bytes], objc_msgSend(encodedData, "length"));
  v7 = [objectCopy description];

  NSLog(@"Successfully archived Object : %@", v7);
  NSLog(@"%s: Data length : %lu", "+[NSKeyedArchiver(XPC) archiveObject:]", [encodedData length]);

  return v4;
}

+ (void)archiveObject:(id)object to:(id)to
{
  toCopy = to;
  objectCopy = object;
  v9 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
  [v9 encodeObject:objectCopy forKey:NSKeyedArchiveRootObjectKey];
  encodedData = [v9 encodedData];
  xpc_dictionary_set_uint64(toCopy, "Version", 1uLL);
  xpc_dictionary_set_data(toCopy, "SerializedObject", [encodedData bytes], objc_msgSend(encodedData, "length"));

  v8 = [objectCopy description];

  NSLog(@"Successfully archived Object : %@", v8);
  NSLog(@"%s: Data length : %lu", "+[NSKeyedArchiver(XPC) archiveObject:to:]", [encodedData length]);
}

@end