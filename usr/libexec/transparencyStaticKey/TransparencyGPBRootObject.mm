@interface TransparencyGPBRootObject
+ (BOOL)resolveClassMethod:(SEL)method;
+ (void)globallyRegisterExtension:(id)extension;
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

  v3 = [self superclass];
  if (v3 == objc_opt_class())
  {
    [self extensionRegistry];
  }
}

+ (void)globallyRegisterExtension:(id)extension
{
  singletonNameC = [extension singletonNameC];
  os_unfair_lock_lock(&unk_1000AED50);
  CFDictionarySetValue(qword_1000AED40, singletonNameC, extension);

  os_unfair_lock_unlock(&unk_1000AED50);
}

+ (BOOL)resolveClassMethod:(SEL)method
{
  if (sub_100017494(self, method))
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___TransparencyGPBRootObject;
  return objc_msgSendSuper2(&v6, "resolveClassMethod:", method);
}

@end