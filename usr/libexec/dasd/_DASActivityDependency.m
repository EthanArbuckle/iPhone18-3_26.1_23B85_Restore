@interface _DASActivityDependency
+ (id)dependencyFromDescriptor:(id)a3 withUID:(unsigned int)a4;
@end

@implementation _DASActivityDependency

+ (id)dependencyFromDescriptor:(id)a3 withUID:(unsigned int)a4
{
  v5 = a3;
  string = xpc_dictionary_get_string(v5, "DependencyIdentifier");
  if (!string)
  {
    v10 = 0;
    goto LABEL_12;
  }

  v7 = [NSString stringWithUTF8String:string];
  if (!v7)
  {
    goto LABEL_6;
  }

  v8 = xpc_dictionary_get_string(v5, "DependencyType");
  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = v8;
  if (!strncmp(v8, "DependencyTypeResult", 0x14uLL))
  {
    v11 = [[a1 alloc] initResultDependencyWithIdentifier:v7 batchSize:{xpc_dictionary_get_int64(v5, "ResultDependencyBatchSize")}];
LABEL_10:
    v10 = v11;
    goto LABEL_11;
  }

  if (!strncmp(v9, "DependencyTypeCompletion", 0x18uLL))
  {
    v11 = [[a1 alloc] initActivityCompletionDependencyWithIdentifier:v7];
    goto LABEL_10;
  }

LABEL_6:
  v10 = 0;
LABEL_11:

LABEL_12:

  return v10;
}

@end