@interface TransparencyGPBFieldDescriptor
- ($592374059145371CE175D116F6F4BC44)defaultValue;
- (TransparencyGPBFieldDescriptor)initWithFieldDescription:(void *)a3 descriptorFlags:(unsigned int)a4;
- (id)textFormatName;
- (unsigned)fieldType;
- (unsigned)mapKeyDataType;
- (void)dealloc;
@end

@implementation TransparencyGPBFieldDescriptor

- (TransparencyGPBFieldDescriptor)initWithFieldDescription:(void *)a3 descriptorFlags:(unsigned int)a4
{
  v4 = a4;
  v27.receiver = self;
  v27.super_class = TransparencyGPBFieldDescriptor;
  v6 = [(TransparencyGPBFieldDescriptor *)&v27 init];
  v7 = v6;
  if (!v6)
  {
    return v7;
  }

  v8 = v4 & 1;
  v9 = (a3 + 8 * v8);
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
  v12 = sub_10001DC0C("set", v9->var0, 0, 1);
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

    v23 = sub_10001DC0C("has", v9->var0, 0, 0);
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

  v21 = sub_10001DC0C(v19, var0, v18, v20);
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
        v25 = *a3;
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
    v7->defaultValue_.valueInt64 = *a3;
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
    return byte_10008C0BC[v2];
  }
}

- ($592374059145371CE175D116F6F4BC44)defaultValue
{
  valueInt64 = self->defaultValue_.valueInt64;
  description = self->description_;
  if ((description->var5 & 2) == 0)
  {
    var6 = description->var6;
    if (var6 == 13 && valueInt64 == 0)
    {
      return sub_100011C5C();
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
        return &stru_100096EB8;
      }
    }
  }

  return valueInt64;
}

- (id)textFormatName
{
  if ((self->description_->var5 & 0x40) == 0)
  {
    v3 = [(TransparencyGPBFieldDescriptor *)self name];
    v4 = [(NSString *)v3 length];
    if ([(NSString *)v3 hasSuffix:@"_p"])
    {
      v3 = [(NSString *)v3 substringToIndex:v4 - 2];
      v4 = [(NSString *)v3 length];
    }

    if ((self->description_->var5 & 2) != 0 && [(NSString *)v3 hasSuffix:@"Array"])
    {
      v3 = [(NSString *)v3 substringToIndex:v4 - 5];
      v4 = [(NSString *)v3 length];
    }

    if (self->description_->var6 == 16)
    {
      v5 = [(NSString *)v3 characterAtIndex:0];
      if (v5 - 97 <= 0x19)
      {
        v6 = [NSString stringWithFormat:@"%C", (v5 - 32)];

        return [(NSString *)v3 stringByReplacingCharactersInRange:0 withString:1, v6];
      }

      return v3;
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
          v14 = [(NSString *)v3 characterAtIndex:v12];
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

  AssociatedObject = objc_getAssociatedObject(self, &unk_10008C0B9);
  if (!AssociatedObject)
  {
    return 0;
  }

  v8 = [AssociatedObject pointerValue];
  var2 = self->description_->var2;
  v10 = [(TransparencyGPBFieldDescriptor *)self name];

  return sub_10001456C(v8, var2, v10);
}

@end