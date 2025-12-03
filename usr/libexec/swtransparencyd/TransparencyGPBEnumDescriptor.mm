@interface TransparencyGPBEnumDescriptor
- (BOOL)getValue:(int *)value forEnumName:(id)name;
- (BOOL)getValue:(int *)value forEnumTextFormatName:(id)name;
- (TransparencyGPBEnumDescriptor)initWithName:(id)name valueNames:(const char *)names values:(const int *)values count:(unsigned int)count enumVerifier:(void *)verifier flags:(unsigned int)flags;
- (id)enumNameForValue:(int)value;
- (id)getEnumNameForIndex:(unsigned int)index;
- (id)getEnumTextFormatNameForIndex:(unsigned int)index;
- (id)textFormatNameForValue:(int)value;
- (void)calcValueNameOffsets;
- (void)dealloc;
@end

@implementation TransparencyGPBEnumDescriptor

- (TransparencyGPBEnumDescriptor)initWithName:(id)name valueNames:(const char *)names values:(const int *)values count:(unsigned int)count enumVerifier:(void *)verifier flags:(unsigned int)flags
{
  v16.receiver = self;
  v16.super_class = TransparencyGPBEnumDescriptor;
  v14 = [(TransparencyGPBEnumDescriptor *)&v16 init];
  if (v14)
  {
    v14->name_ = [name copy];
    v14->valueNames_ = names;
    v14->values_ = values;
    v14->enumVerifier_ = verifier;
    v14->valueCount_ = count;
    v14->flags_ = flags;
  }

  return v14;
}

- (void)dealloc
{
  nameOffsets = self->nameOffsets_;
  if (nameOffsets)
  {
    free(nameOffsets);
  }

  v4.receiver = self;
  v4.super_class = TransparencyGPBEnumDescriptor;
  [(TransparencyGPBEnumDescriptor *)&v4 dealloc];
}

- (void)calcValueNameOffsets
{
  objc_sync_enter(self);
  if (!self->nameOffsets_)
  {
    v3 = malloc_type_malloc(4 * self->valueCount_, 0x100004052888210uLL);
    if (v3)
    {
      if (self->valueCount_)
      {
        v4 = 0;
        valueNames = self->valueNames_;
        v6 = valueNames;
        do
        {
          v3[v4] = v6 - valueNames;
            ;
          }

          ++v4;
        }

        while (v4 < self->valueCount_);
      }

      self->nameOffsets_ = v3;
    }
  }

  objc_sync_exit(self);
}

- (id)enumNameForValue:(int)value
{
  valueCount = self->valueCount_;
  if (!valueCount)
  {
    return 0;
  }

  v4 = 0;
  while (self->values_[v4] != value)
  {
    if (valueCount == ++v4)
    {
      return 0;
    }
  }

  return [(TransparencyGPBEnumDescriptor *)self getEnumNameForIndex:v4];
}

- (BOOL)getValue:(int *)value forEnumName:(id)name
{
  v7 = [(NSString *)self->name_ length];
  v8 = v7 + 1;
  if ([name length] <= v7 + 1)
  {
    goto LABEL_10;
  }

  v9 = [name hasPrefix:self->name_];
  if (!v9)
  {
    return v9;
  }

  if ([name characterAtIndex:v7] != 95 || (v10 = objc_msgSend(name, "UTF8String"), -[TransparencyGPBEnumDescriptor calcValueNameOffsets](self, "calcValueNameOffsets"), (nameOffsets = self->nameOffsets_) == 0) || (valueCount = self->valueCount_, !valueCount))
  {
LABEL_10:
    LOBYTE(v9) = 0;
    return v9;
  }

  v13 = 0;
  valueNames = self->valueNames_;
  v15 = 4 * valueCount;
  while (strcmp(&v10[v8], &valueNames[nameOffsets[v13 / 4]]))
  {
    LOBYTE(v9) = 0;
    v13 += 4;
    if (v15 == v13)
    {
      return v9;
    }
  }

  if (value)
  {
    *value = self->values_[v13 / 4];
  }

  LOBYTE(v9) = 1;
  return v9;
}

- (BOOL)getValue:(int *)value forEnumTextFormatName:(id)name
{
  [(TransparencyGPBEnumDescriptor *)self calcValueNameOffsets];
  if (!self->nameOffsets_ || !self->valueCount_)
  {
    return 0;
  }

  v7 = 0;
  while (![-[TransparencyGPBEnumDescriptor getEnumTextFormatNameForIndex:](self getEnumTextFormatNameForIndex:{v7), "isEqual:", name}])
  {
    if (++v7 >= self->valueCount_)
    {
      return 0;
    }
  }

  if (value)
  {
    *value = self->values_[v7];
  }

  return 1;
}

- (id)textFormatNameForValue:(int)value
{
  valueCount = self->valueCount_;
  if (!valueCount)
  {
    return 0;
  }

  v4 = 0;
  while (self->values_[v4] != value)
  {
    if (valueCount == ++v4)
    {
      return 0;
    }
  }

  return [(TransparencyGPBEnumDescriptor *)self getEnumTextFormatNameForIndex:v4];
}

- (id)getEnumNameForIndex:(unsigned int)index
{
  [(TransparencyGPBEnumDescriptor *)self calcValueNameOffsets];
  nameOffsets = self->nameOffsets_;
  if (nameOffsets && self->valueCount_ > index)
  {
    return [NSString stringWithFormat:@"%@_%s", self->name_, &self->valueNames_[nameOffsets[index]]];
  }

  else
  {
    return 0;
  }
}

- (id)getEnumTextFormatNameForIndex:(unsigned int)index
{
  [(TransparencyGPBEnumDescriptor *)self calcValueNameOffsets];
  nameOffsets = self->nameOffsets_;
  if (!nameOffsets || self->valueCount_ <= index)
  {
    return 0;
  }

  v6 = [NSString stringWithUTF8String:&self->valueNames_[nameOffsets[index]]];
  extraTextFormatInfo = self->extraTextFormatInfo_;
  if (!extraTextFormatInfo || (v8 = sub_1000F09D0(extraTextFormatInfo, index, v6)) == 0)
  {
    v9 = [(NSString *)v6 length];
    v8 = [NSMutableString stringWithCapacity:v9];
    if (v9)
    {
      for (i = 0; i != v9; ++i)
      {
        v11 = [(NSString *)v6 characterAtIndex:i];
        v12 = v11;
        if (i && v11 - 65 <= 0x19)
        {
          [(NSMutableString *)v8 appendString:@"_"];
        }

        [(NSMutableString *)v8 appendFormat:@"%c", __toupper(v12)];
      }
    }
  }

  return v8;
}

@end