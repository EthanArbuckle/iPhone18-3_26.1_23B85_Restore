@interface NSKeyedArchiver
+ (id)archiveObject:(id)a3;
+ (id)archiveObjectToData:(id)a3;
+ (id)archiveObjectToDict:(id)a3;
+ (void)archiveObject:(id)a3 to:(id)a4;
@end

@implementation NSKeyedArchiver

+ (id)archiveObjectToData:(id)a3
{
  v3 = a3;
  v4 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
  [v4 encodeObject:v3 forKey:NSKeyedArchiveRootObjectKey];
  v5 = [v4 encodedData];
  v6 = [v3 description];

  NSLog(@"Successfully archived Object : %@", v6);
  NSLog(@"%s: Data length : %lu", "+[NSKeyedArchiver(XPC) archiveObjectToData:]", [v5 length]);

  return v5;
}

+ (id)archiveObjectToDict:(id)a3
{
  v3 = [NSKeyedArchiver archiveObjectToData:a3];
  v4 = [NSMutableDictionary dictionaryWithObjectsAndKeys:&off_100011F50, @"Version", v3, @"SerializedObject", 0];

  return v4;
}

+ (id)archiveObject:(id)a3
{
  v3 = a3;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
  [v5 encodeObject:v3 forKey:NSKeyedArchiveRootObjectKey];
  v6 = [v5 encodedData];
  xpc_dictionary_set_uint64(v4, "Version", 1uLL);
  xpc_dictionary_set_data(v4, "SerializedObject", [v6 bytes], objc_msgSend(v6, "length"));
  v7 = [v3 description];

  NSLog(@"Successfully archived Object : %@", v7);
  NSLog(@"%s: Data length : %lu", "+[NSKeyedArchiver(XPC) archiveObject:]", [v6 length]);

  return v4;
}

+ (void)archiveObject:(id)a3 to:(id)a4
{
  v5 = a4;
  v6 = a3;
  v9 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
  [v9 encodeObject:v6 forKey:NSKeyedArchiveRootObjectKey];
  v7 = [v9 encodedData];
  xpc_dictionary_set_uint64(v5, "Version", 1uLL);
  xpc_dictionary_set_data(v5, "SerializedObject", [v7 bytes], objc_msgSend(v7, "length"));

  v8 = [v6 description];

  NSLog(@"Successfully archived Object : %@", v8);
  NSLog(@"%s: Data length : %lu", "+[NSKeyedArchiver(XPC) archiveObject:to:]", [v7 length]);
}

@end