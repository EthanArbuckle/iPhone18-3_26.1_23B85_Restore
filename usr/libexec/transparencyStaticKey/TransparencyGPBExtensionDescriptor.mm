@interface TransparencyGPBExtensionDescriptor
- (TransparencyGPBEnumDescriptor)enumDescriptor;
- (TransparencyGPBExtensionDescriptor)initWithExtensionDescription:(TransparencyGPBExtensionDescription *)description;
- (TransparencyGPBExtensionDescriptor)initWithExtensionDescription:(TransparencyGPBExtensionDescription *)description usesClassRefs:(BOOL)refs;
- (id)defaultValue;
- (int64_t)compareByFieldNumber:(id)number;
- (void)dealloc;
@end

@implementation TransparencyGPBExtensionDescriptor

- (TransparencyGPBExtensionDescriptor)initWithExtensionDescription:(TransparencyGPBExtensionDescription *)description usesClassRefs:(BOOL)refs
{
  if (description->var7 >= 8u)
  {
    sub_100012358();
  }

  v11.receiver = self;
  v11.super_class = TransparencyGPBExtensionDescriptor;
  v6 = [(TransparencyGPBExtensionDescriptor *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->description_ = description;
    var6 = description->var6;
    if (var6 == 13)
    {
      var2 = description->var0.var2;
      if (var2)
      {
        v6->defaultValue_.valueInt64 = [[NSData alloc] initWithBytes:var2 + 1 length:bswap32(*var2)];
      }
    }

    else if ((var6 - 15) >= 2)
    {
      v6->defaultValue_.valueInt64 = description->var0.var2;
    }
  }

  return v7;
}

- (TransparencyGPBExtensionDescriptor)initWithExtensionDescription:(TransparencyGPBExtensionDescription *)description
{
  var0 = description->var3.var0;
  if (var0)
  {
    description->var3.var0 = objc_lookUpClass(var0);
  }

  v6 = description->var2.var0;
  if (v6)
  {
    description->var2.var0 = objc_lookUpClass(v6);
  }

  return [(TransparencyGPBExtensionDescriptor *)self initWithExtensionDescription:description usesClassRefs:1];
}

- (void)dealloc
{
  description = self->description_;
  if (description->var6 == 13 && (description->var7 & 1) == 0)
  {
  }

  v4.receiver = self;
  v4.super_class = TransparencyGPBExtensionDescriptor;
  [(TransparencyGPBExtensionDescriptor *)&v4 dealloc];
}

- (TransparencyGPBEnumDescriptor)enumDescriptor
{
  description = self->description_;
  if (description->var6 == 17)
  {
    return (description->var4)();
  }

  else
  {
    return 0;
  }
}

- (id)defaultValue
{
  description = self->description_;
  if (description->var7)
  {
    return 0;
  }

  else
  {
    valueData = 0;
    switch(description->var6)
    {
      case 0u:
        result = [NSNumber numberWithBool:self->defaultValue_.valueBool];
        break;
      case 1u:
      case 0xBu:
        result = [NSNumber numberWithUnsignedInt:self->defaultValue_.valueUInt32];
        break;
      case 2u:
      case 7u:
      case 9u:
      case 0x11u:
        result = [NSNumber numberWithInt:self->defaultValue_.valueUInt32];
        break;
      case 3u:
        LODWORD(v2) = self->defaultValue_.valueInt32;
        result = [NSNumber numberWithFloat:v2];
        break;
      case 4u:
      case 0xCu:
        result = [NSNumber numberWithUnsignedLongLong:self->defaultValue_.valueInt64];
        break;
      case 5u:
      case 8u:
      case 0xAu:
        result = [NSNumber numberWithLongLong:self->defaultValue_.valueInt64];
        break;
      case 6u:
        result = [NSNumber numberWithDouble:self->defaultValue_.valueDouble];
        break;
      case 0xDu:
        valueData = self->defaultValue_.valueData;
        if (valueData)
        {
          return valueData;
        }

        result = sub_100011C5C();
        break;
      case 0xEu:
        valueData = self->defaultValue_.valueData;
        if (!valueData)
        {
          return &stru_100096EB8;
        }

        return valueData;
      default:
        return valueData;
    }
  }

  return result;
}

- (int64_t)compareByFieldNumber:(id)number
{
  var5 = self->description_->var5;
  v4 = *(*(number + 1) + 40);
  v5 = var5 < v4;
  v6 = var5 != v4;
  if (v5)
  {
    return -1;
  }

  else
  {
    return v6;
  }
}

@end