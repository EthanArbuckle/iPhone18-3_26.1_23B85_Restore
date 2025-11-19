@interface TransparencyGPBRootObject
+ (BOOL)resolveClassMethod:(SEL)a3;
+ (void)globallyRegisterExtension:(id)a3;
+ (void)initialize;
@end

@implementation TransparencyGPBRootObject

+ (void)initialize
{
  if (!qword_1000AED40)
  {
    v4 = off_100095658;
    qword_1000AED40 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &v4, &kCFTypeDictionaryValueCallBacks);
    qword_1000AED48 = objc_alloc_init(TransparencyGPBExtensionRegistry);
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
  os_unfair_lock_lock(&unk_1000AED50);
  CFDictionarySetValue(qword_1000AED40, v4, a3);

  os_unfair_lock_unlock(&unk_1000AED50);
}

+ (BOOL)resolveClassMethod:(SEL)a3
{
  if (sub_100017494(a1, a3))
  {
    return 1;
  }

  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___TransparencyGPBRootObject;
  return objc_msgSendSuper2(&v6, "resolveClassMethod:", a3);
}

@end