@interface _DASActivityDependency
+ (id)dependencyFromDescriptor:(id)descriptor withUID:(unsigned int)d;
@end

@implementation _DASActivityDependency

+ (id)dependencyFromDescriptor:(id)descriptor withUID:(unsigned int)d
{
  descriptorCopy = descriptor;
  string = xpc_dictionary_get_string(descriptorCopy, "DependencyIdentifier");
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

  v8 = xpc_dictionary_get_string(descriptorCopy, "DependencyType");
  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = v8;
  if (!strncmp(v8, "DependencyTypeResult", 0x14uLL))
  {
    v11 = [[self alloc] initResultDependencyWithIdentifier:v7 batchSize:{xpc_dictionary_get_int64(descriptorCopy, "ResultDependencyBatchSize")}];
LABEL_10:
    v10 = v11;
    goto LABEL_11;
  }

  if (!strncmp(v9, "DependencyTypeCompletion", 0x18uLL))
  {
    v11 = [[self alloc] initActivityCompletionDependencyWithIdentifier:v7];
    goto LABEL_10;
  }

LABEL_6:
  v10 = 0;
LABEL_11:

LABEL_12:

  return v10;
}

@end