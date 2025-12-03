@interface TransparencyGPBDescriptor
- (NSString)fullName;
- (TransparencyGPBDescriptor)containingType;
- (TransparencyGPBDescriptor)initWithClass:(Class)class messageName:(id)name fileDescription:(TransparencyGPBFileDescription *)description fields:(id)fields storageSize:(unsigned int)size wireFormat:(BOOL)format;
- (TransparencyGPBFileDescriptor)file;
- (id)fieldWithName:(id)name;
- (id)fieldWithNumber:(unsigned int)number;
- (id)oneofWithName:(id)name;
- (void)dealloc;
- (void)setupContainingMessageClassName:(const char *)name;
- (void)setupExtraTextInfo:(const char *)info;
- (void)setupMessageClassNameSuffix:(id)suffix;
- (void)setupOneofs:(const char *)oneofs count:(unsigned int)count firstHasIndex:(int)index;
@end

@implementation TransparencyGPBDescriptor

- (TransparencyGPBDescriptor)initWithClass:(Class)class messageName:(id)name fileDescription:(TransparencyGPBFileDescription *)description fields:(id)fields storageSize:(unsigned int)size wireFormat:(BOOL)format
{
  v17.receiver = self;
  v17.super_class = TransparencyGPBDescriptor;
  v14 = [(TransparencyGPBDescriptor *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->messageClass_ = class;
    v14->messageName_ = [name copy];
    v15->fileDescription_ = description;
    v15->fields_ = fields;
    v15->storageSize_ = size;
    v15->wireFormat_ = format;
  }

  return v15;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TransparencyGPBDescriptor;
  [(TransparencyGPBDescriptor *)&v3 dealloc];
}

- (void)setupOneofs:(const char *)oneofs count:(unsigned int)count firstHasIndex:(int)index
{
  countCopy = count;
  v8 = [[NSMutableArray alloc] initWithCapacity:count];
  if (count)
  {
    v9 = 0;
    do
    {
      v10 = oneofs[v9];
      fields = self->fields_;
      v12 = objc_alloc_init(NSMutableArray);
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v13 = [(NSArray *)fields countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v21;
        do
        {
          v16 = 0;
          do
          {
            if (*v21 != v15)
            {
              objc_enumerationMutation(fields);
            }

            if (*(*(*(*(&v20 + 1) + 8 * v16) + 8) + 20) == index)
            {
              [v12 addObject:?];
            }

            v16 = v16 + 1;
          }

          while (v14 != v16);
          v14 = [(NSArray *)fields countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v14);
      }

      v17 = [[TransparencyGPBOneofDescriptor alloc] initWithName:v10 fields:v12];
      [(NSArray *)v8 addObject:v17];

      ++v9;
      --index;
    }

    while (v9 != countCopy);
  }

  self->oneofs_ = v8;
}

- (void)setupExtraTextInfo:(const char *)info
{
  if (info)
  {
    v4 = [NSValue valueWithPointer:?];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    fields = self->fields_;
    v6 = [(NSArray *)fields countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(fields);
          }

          v10 = *(*(&v11 + 1) + 8 * v9);
          if ((*(v10[1] + 28) & 0x40) != 0)
          {
            objc_setAssociatedObject(v10, &unk_10008C0B9, v4, 1);
          }

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [(NSArray *)fields countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }
}

- (void)setupContainingMessageClassName:(const char *)name
{
  Class = objc_getClass(name);

  [(TransparencyGPBDescriptor *)self setupContainingMessageClass:Class];
}

- (void)setupMessageClassNameSuffix:(id)suffix
{
  if ([suffix length])
  {

    objc_setAssociatedObject(self, &unk_10008C0BB, suffix, 1);
  }
}

- (TransparencyGPBFileDescriptor)file
{
  objc_sync_enter(self);
  AssociatedObject = objc_getAssociatedObject(self, &unk_10008C0B8);
  if (!AssociatedObject)
  {
    fileDescription = self->fileDescription_;
    if (fileDescription->var0)
    {
      v5 = [NSString stringWithUTF8String:?];
      fileDescription = self->fileDescription_;
    }

    else
    {
      v5 = &stru_100096EB8;
    }

    if (fileDescription->var1)
    {
      v6 = [[TransparencyGPBFileDescriptor alloc] initWithPackage:v5 objcPrefix:[NSString syntax:"stringWithUTF8String:" stringWithUTF8String:?], self->fileDescription_->var2];
    }

    else
    {
      v6 = [[TransparencyGPBFileDescriptor alloc] initWithPackage:v5 syntax:self->fileDescription_->var2];
    }

    AssociatedObject = v6;
    objc_setAssociatedObject(v6, &unk_10008C0B8, v6, 1);
  }

  objc_sync_exit(self);
  return AssociatedObject;
}

- (TransparencyGPBDescriptor)containingType
{
  AssociatedObject = objc_getAssociatedObject(self, &unk_10008C0BA);

  return [AssociatedObject descriptor];
}

- (NSString)fullName
{
  containingType = [(TransparencyGPBDescriptor *)self containingType];
  v4 = containingType;
  messageName = self->messageName_;
  if (messageName)
  {
    if (containingType)
    {
      return [NSString stringWithFormat:@"%@.%@", [(TransparencyGPBDescriptor *)containingType fullName], self->messageName_];
    }

    if (self->fileDescription_->var0)
    {
      return [NSString stringWithFormat:@"%s.%@", self->fileDescription_->var0, messageName];
    }

    return messageName;
  }

  v7 = NSStringFromClass([(TransparencyGPBDescriptor *)self messageClass]);
  file = [(TransparencyGPBDescriptor *)self file];
  objcPrefix = [(TransparencyGPBFileDescriptor *)file objcPrefix];
  if (objcPrefix && ![(NSString *)v7 hasPrefix:objcPrefix])
  {
    return 0;
  }

  if (v4)
  {
    v10 = NSStringFromClass([(TransparencyGPBDescriptor *)v4 messageClass]);
    AssociatedObject = objc_getAssociatedObject(v4, &unk_10008C0BB);
    if (AssociatedObject)
    {
      v12 = AssociatedObject;
      if (![(NSString *)v10 hasSuffix:AssociatedObject])
      {
        return 0;
      }

      v10 = -[NSString substringToIndex:](v10, "substringToIndex:", -[NSString length](v10, "length") - [v12 length]);
    }

    objcPrefix = [(NSString *)v10 stringByAppendingString:@"_"];
    if (![(NSString *)v7 hasPrefix:objcPrefix])
    {
      return 0;
    }
  }

  messageName = [(NSString *)v7 substringFromIndex:[(NSString *)objcPrefix length]];
  v13 = objc_getAssociatedObject(self, &unk_10008C0BB);
  if (!v13)
  {
    goto LABEL_14;
  }

  v14 = v13;
  if (![(NSString *)messageName hasSuffix:v13])
  {
    return 0;
  }

  messageName = -[NSString substringToIndex:](messageName, "substringToIndex:", -[NSString length](messageName, "length") - [v14 length]);
LABEL_14:
  if (v4)
  {
    fullName = [(TransparencyGPBDescriptor *)v4 fullName];
  }

  else
  {
    fullName = [(TransparencyGPBFileDescriptor *)file package];
  }

  v16 = fullName;
  if ([(NSString *)fullName length])
  {
    return [NSString stringWithFormat:@"%@.%@", v16, messageName];
  }

  return messageName;
}

- (id)fieldWithNumber:(unsigned int)number
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  fields = self->fields_;
  result = [(NSArray *)fields countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v10;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v10 != v7)
      {
        objc_enumerationMutation(fields);
      }

      result = *(*(&v9 + 1) + 8 * v8);
      if (*(*(result + 1) + 16) == number)
      {
        break;
      }

      if (v6 == ++v8)
      {
        result = [(NSArray *)fields countByEnumeratingWithState:&v9 objects:v13 count:16];
        v6 = result;
        if (result)
        {
          goto LABEL_3;
        }

        return result;
      }
    }
  }

  return result;
}

- (id)fieldWithName:(id)name
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  fields = self->fields_;
  v5 = [(NSArray *)fields countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v12;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v12 != v7)
    {
      objc_enumerationMutation(fields);
    }

    v9 = *(*(&v11 + 1) + 8 * v8);
    if ([objc_msgSend(v9 "name")])
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [(NSArray *)fields countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (id)oneofWithName:(id)name
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  oneofs = self->oneofs_;
  v5 = [(NSArray *)oneofs countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v12;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v12 != v7)
    {
      objc_enumerationMutation(oneofs);
    }

    v9 = *(*(&v11 + 1) + 8 * v8);
    if ([objc_msgSend(v9 "name")])
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [(NSArray *)oneofs countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

@end