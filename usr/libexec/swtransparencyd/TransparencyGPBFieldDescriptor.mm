@interface TransparencyGPBFieldDescriptor
- ($BAE6C72A7C2DD05A9166108BDE5A7672)defaultValue;
- (TransparencyGPBFieldDescriptor)initWithFieldDescription:(void *)description descriptorFlags:(unsigned int)flags;
- (id)textFormatName;
- (unsigned)fieldType;
- (unsigned)mapKeyDataType;
- (void)dealloc;
@end

@implementation TransparencyGPBFieldDescriptor

- (TransparencyGPBFieldDescriptor)initWithFieldDescription:(void *)description descriptorFlags:(unsigned int)flags
{
  flagsCopy = flags;
  v27.receiver = self;
  v27.super_class = TransparencyGPBFieldDescriptor;
  v6 = [(TransparencyGPBFieldDescriptor *)&v27 init];
  v7 = v6;
  if (!v6)
  {
    return v7;
  }

  v8 = flagsCopy & 1;
  v9 = (description + 8 * v8);
  v6->description_ = v9;
  Uid = sel_getUid(v9->var0);
  if (Uid)
  {
    v11 = Uid;
  }

  else
  {
    v11 = 0;
  }

  v7->getSel_ = v11;
  v12 = sub_1000C2B98("set", v9->var0, 0, 1);
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v7->setSel_ = v13;
  var6 = v9->var6;
  v15 = v7->description_->var5 & 0xF02;
  if ((v7->description_->var5 & 0xF02) != 0)
  {
    p_hasOrCountSel = &v7->hasOrCountSel_;
    var0 = v9->var0;
    v18 = "_Count";
    v19 = 0;
    v20 = 0;
  }

  else
  {
    if (v9->var3 < 0 || (v9->var5 & 0x20) != 0)
    {
      goto LABEL_18;
    }

    v23 = sub_1000C2B98("has", v9->var0, 0, 0);
    if (v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    v7->hasOrCountSel_ = v24;
    p_hasOrCountSel = &v7->setHasSel_;
    var0 = v9->var0;
    v19 = "setHas";
    v18 = 0;
    v20 = 1;
  }

  v21 = sub_1000C2B98(v19, var0, v18, v20);
  if (v21)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  *p_hasOrCountSel = v22;
LABEL_18:
  if ((var6 - 15) <= 1)
  {
    v7->msgClass_ = v9->var1.var1;
LABEL_24:
    if (v8)
    {
      if (!v15)
      {
        v25 = *description;
        v7->defaultValue_.valueInt64 = v25;
        if (var6 == 13)
        {
          if (v25)
          {
            v7->defaultValue_.valueInt64 = [[NSData alloc] initWithBytes:v25 + 1 length:bswap32(*v25)];
          }
        }
      }
    }

    return v7;
  }

  if (var6 != 17)
  {
    goto LABEL_24;
  }

  v7->enumDescriptor_ = (v9->var1.var0)();
  if (v8 && !v15)
  {
    v7->defaultValue_.valueInt64 = *description;
  }

  return v7;
}

- (void)dealloc
{
  description = self->description_;
  if (description->var6 == 13 && (description->var5 & 2) == 0)
  {
  }

  v4.receiver = self;
  v4.super_class = TransparencyGPBFieldDescriptor;
  [(TransparencyGPBFieldDescriptor *)&v4 dealloc];
}

- (unsigned)fieldType
{
  var5 = self->description_->var5;
  if ((var5 & 2) != 0)
  {
    return 1;
  }

  else
  {
    return 2 * ((var5 & 0xF00) != 0);
  }
}

- (unsigned)mapKeyDataType
{
  v2 = (((self->description_->var5 & 0xF00u) - 256) >> 8) - 1;
  if (v2 > 0xA)
  {
    return 7;
  }

  else
  {
    return byte_100108718[v2];
  }
}

- ($BAE6C72A7C2DD05A9166108BDE5A7672)defaultValue
{
  valueInt64 = self->defaultValue_.valueInt64;
  description = self->description_;
  if ((description->var5 & 2) == 0)
  {
    var6 = description->var6;
    if (var6 == 13 && valueInt64 == 0)
    {
      return sub_1000EE0C0();
    }

    else
    {
      if (valueInt64)
      {
        v7 = 0;
      }

      else
      {
        v7 = var6 == 14;
      }

      if (v7)
      {
        return &stru_100139EB0;
      }
    }
  }

  return valueInt64;
}

- (id)textFormatName
{
  if ((self->description_->var5 & 0x40) == 0)
  {
    name = [(TransparencyGPBFieldDescriptor *)self name];
    v4 = [(NSString *)name length];
    if ([(NSString *)name hasSuffix:@"_p"])
    {
      name = [(NSString *)name substringToIndex:v4 - 2];
      v4 = [(NSString *)name length];
    }

    if ((self->description_->var5 & 2) != 0 && [(NSString *)name hasSuffix:@"Array"])
    {
      name = [(NSString *)name substringToIndex:v4 - 5];
      v4 = [(NSString *)name length];
    }

    if (self->description_->var6 == 16)
    {
      v5 = [(NSString *)name characterAtIndex:0];
      if (v5 - 97 <= 0x19)
      {
        v6 = [NSString stringWithFormat:@"%C", (v5 - 32)];

        return [(NSString *)name stringByReplacingCharactersInRange:0 withString:1, v6];
      }

      return name;
    }

    else
    {
      v11 = [NSMutableString stringWithCapacity:v4];
      if (v4)
      {
        v12 = 0;
        v13 = 1;
        do
        {
          v14 = [(NSString *)name characterAtIndex:v12];
          if ((v14 - 65) > 0x19 || v13 == 1)
          {
            [(NSMutableString *)v11 appendFormat:@"%C", v14];
          }

          else
          {
            [(NSMutableString *)v11 appendFormat:@"_%C", v14 | 0x20];
          }

          v12 = v13;
        }

        while (v4 > v13++);
      }
    }

    return v11;
  }

  AssociatedObject = objc_getAssociatedObject(self, &unk_100108715);
  if (!AssociatedObject)
  {
    return 0;
  }

  pointerValue = [AssociatedObject pointerValue];
  var2 = self->description_->var2;
  name2 = [(TransparencyGPBFieldDescriptor *)self name];

  return sub_1000F09D0(pointerValue, var2, name2);
}

@end