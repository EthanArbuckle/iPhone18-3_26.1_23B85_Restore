@interface NSKeyedArchiver
+ (void)archiveObject:(id)a3 toXPCObject:(id)a4;
@end

@implementation NSKeyedArchiver

+ (void)archiveObject:(id)a3 toXPCObject:(id)a4
{
  v5 = a4;
  v6 = a3;
  v8 = objc_opt_new();
  [v8 setRequiresSecureCoding:1];
  [v8 encodeObject:v6 forKey:NSKeyedArchiveRootObjectKey];

  v7 = [v8 encodedData];
  xpc_dictionary_set_uint64(v5, "Version", 1uLL);
  xpc_dictionary_set_string(v5, "Magic", "CBCo");
  xpc_dictionary_set_data(v5, "Data", [v7 bytes], objc_msgSend(v7, "length"));
}

@end