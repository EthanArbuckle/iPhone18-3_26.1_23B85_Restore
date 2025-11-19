@interface TransparencyGPBExtensionRegistry
- (TransparencyGPBExtensionRegistry)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)extensionForDescriptor:(id)a3 fieldNumber:(int64_t)a4;
- (void)addExtension:(id)a3;
- (void)addExtensions:(id)a3;
- (void)dealloc;
@end

@implementation TransparencyGPBExtensionRegistry

- (TransparencyGPBExtensionRegistry)init
{
  v4.receiver = self;
  v4.super_class = TransparencyGPBExtensionRegistry;
  v2 = [(TransparencyGPBExtensionRegistry *)&v4 init];
  if (v2)
  {
    v2->mutableClassMap_ = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, 0, &kCFTypeDictionaryValueCallBacks);
  }

  return v2;
}

- (void)dealloc
{
  CFRelease(self->mutableClassMap_);
  v3.receiver = self;
  v3.super_class = TransparencyGPBExtensionRegistry;
  [(TransparencyGPBExtensionRegistry *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 addExtensions:self];
  return v4;
}

- (void)addExtension:(id)a3
{
  if (a3)
  {
    v5 = [a3 containingMessageClass];
    Value = CFDictionaryGetValue(self->mutableClassMap_, v5);
    if (!Value)
    {
      Value = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, 0, &kCFTypeDictionaryValueCallBacks);
      CFDictionarySetValue(self->mutableClassMap_, v5, Value);
      CFRelease(Value);
    }

    v7 = [a3 fieldNumber];

    CFDictionarySetValue(Value, v7, a3);
  }
}

- (id)extensionForDescriptor:(id)a3 fieldNumber:(int64_t)a4
{
  result = CFDictionaryGetValue(self->mutableClassMap_, [a3 messageClass]);
  if (result)
  {

    return CFDictionaryGetValue(result, a4);
  }

  return result;
}

- (void)addExtensions:(id)a3
{
  if (a3)
  {
    CFDictionaryApplyFunction(*(a3 + 1), sub_1000E2944, self->mutableClassMap_);
  }
}

@end