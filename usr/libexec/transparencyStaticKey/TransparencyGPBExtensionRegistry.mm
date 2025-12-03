@interface TransparencyGPBExtensionRegistry
- (TransparencyGPBExtensionRegistry)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)extensionForDescriptor:(id)descriptor fieldNumber:(int64_t)number;
- (void)addExtension:(id)extension;
- (void)addExtensions:(id)extensions;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 addExtensions:self];
  return v4;
}

- (void)addExtension:(id)extension
{
  if (extension)
  {
    containingMessageClass = [extension containingMessageClass];
    Value = CFDictionaryGetValue(self->mutableClassMap_, containingMessageClass);
    if (!Value)
    {
      Value = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, 0, &kCFTypeDictionaryValueCallBacks);
      CFDictionarySetValue(self->mutableClassMap_, containingMessageClass, Value);
      CFRelease(Value);
    }

    fieldNumber = [extension fieldNumber];

    CFDictionarySetValue(Value, fieldNumber, extension);
  }
}

- (id)extensionForDescriptor:(id)descriptor fieldNumber:(int64_t)number
{
  result = CFDictionaryGetValue(self->mutableClassMap_, [descriptor messageClass]);
  if (result)
  {

    return CFDictionaryGetValue(result, number);
  }

  return result;
}

- (void)addExtensions:(id)extensions
{
  if (extensions)
  {
    CFDictionaryApplyFunction(*(extensions + 1), sub_100034718, self->mutableClassMap_);
  }
}

@end