@interface TransparencyGPBRootObject
+ (BOOL)resolveClassMethod:(SEL)method;
+ (void)globallyRegisterExtension:(id)extension;
+ (void)initialize;
@end

@implementation TransparencyGPBRootObject

+ (void)initialize
{
  if (!qword_10039C610)
  {
    v4 = off_100325918;
    qword_10039C610 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &v4, &kCFTypeDictionaryValueCallBacks);
    qword_10039C618 = objc_alloc_init(TransparencyGPBExtensionRegistry);
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
  os_unfair_lock_lock(&unk_10039C620);
  CFDictionarySetValue(qword_10039C610, singletonNameC, extension);

  os_unfair_lock_unlock(&unk_10039C620);
}

+ (BOOL)resolveClassMethod:(SEL)method
{
  if (sub_10019B094(self, method))
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___TransparencyGPBRootObject;
  return objc_msgSendSuper2(&v6, "resolveClassMethod:", method);
}

@end