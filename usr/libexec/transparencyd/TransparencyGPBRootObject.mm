@interface TransparencyGPBRootObject
+ (BOOL)resolveClassMethod:(SEL)a3;
+ (void)globallyRegisterExtension:(id)a3;
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

  v3 = [a1 superclass];
  if (v3 == objc_opt_class())
  {
    [a1 extensionRegistry];
  }
}

+ (void)globallyRegisterExtension:(id)a3
{
  v4 = [a3 singletonNameC];
  os_unfair_lock_lock(&unk_10039C620);
  CFDictionarySetValue(qword_10039C610, v4, a3);

  os_unfair_lock_unlock(&unk_10039C620);
}

+ (BOOL)resolveClassMethod:(SEL)a3
{
  if (sub_10019B094(a1, a3))
  {
    return 1;
  }

  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___TransparencyGPBRootObject;
  return objc_msgSendSuper2(&v6, "resolveClassMethod:", a3);
}

@end