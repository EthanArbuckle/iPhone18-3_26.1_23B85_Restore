@interface TransparencyGPBRootObject
+ (BOOL)resolveClassMethod:(SEL)method;
+ (void)globallyRegisterExtension:(id)extension;
+ (void)initialize;
@end

@implementation TransparencyGPBRootObject

+ (void)initialize
{
  if (!qword_10015D028)
  {
    v4 = off_100137B10;
    qword_10015D028 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &v4, &kCFTypeDictionaryValueCallBacks);
    qword_10015D030 = objc_alloc_init(TransparencyGPBExtensionRegistry);
  }

  v3 = [self superclass];
  if (v3 == objc_opt_class())
  {
    [self extensionRegistry];
  }
}

+ (void)globallyRegisterExtension:(id)extension
{
  singletonNameC = [extension singletonNameC];
  os_unfair_lock_lock(&unk_10015D038);
  CFDictionarySetValue(qword_10015D028, singletonNameC, extension);

  os_unfair_lock_unlock(&unk_10015D038);
}

+ (BOOL)resolveClassMethod:(SEL)method
{
  if (sub_1000EB424(self, method))
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___TransparencyGPBRootObject;
  return objc_msgSendSuper2(&v6, "resolveClassMethod:", method);
}

@end