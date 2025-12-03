@interface NSKeyedArchiver
+ (void)archiveObject:(id)object toXPCObject:(id)cObject;
@end

@implementation NSKeyedArchiver

+ (void)archiveObject:(id)object toXPCObject:(id)cObject
{
  cObjectCopy = cObject;
  objectCopy = object;
  v8 = objc_opt_new();
  [v8 setRequiresSecureCoding:1];
  [v8 encodeObject:objectCopy forKey:NSKeyedArchiveRootObjectKey];

  encodedData = [v8 encodedData];
  xpc_dictionary_set_uint64(cObjectCopy, "Version", 1uLL);
  xpc_dictionary_set_string(cObjectCopy, "Magic", "CBCo");
  xpc_dictionary_set_data(cObjectCopy, "Data", [encodedData bytes], objc_msgSend(encodedData, "length"));
}

@end