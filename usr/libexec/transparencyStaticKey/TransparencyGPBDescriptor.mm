@interface TransparencyGPBDescriptor
- (NSString)fullName;
- (TransparencyGPBDescriptor)containingType;
- (TransparencyGPBDescriptor)initWithClass:(Class)a3 messageName:(id)a4 fileDescription:(TransparencyGPBFileDescription *)a5 fields:(id)a6 storageSize:(unsigned int)a7 wireFormat:(BOOL)a8;
- (TransparencyGPBFileDescriptor)file;
- (id)fieldWithName:(id)a3;
- (id)fieldWithNumber:(unsigned int)a3;
- (id)oneofWithName:(id)a3;
- (void)dealloc;
- (void)setupContainingMessageClassName:(const char *)a3;
- (void)setupExtraTextInfo:(const char *)a3;
- (void)setupMessageClassNameSuffix:(id)a3;
- (void)setupOneofs:(const char *)a3 count:(unsigned int)a4 firstHasIndex:(int)a5;
@end

@implementation TransparencyGPBDescriptor

- (TransparencyGPBDescriptor)initWithClass:(Class)a3 messageName:(id)a4 fileDescription:(TransparencyGPBFileDescription *)a5 fields:(id)a6 storageSize:(unsigned int)a7 wireFormat:(BOOL)a8
{
  v17.receiver = self;
  v17.super_class = TransparencyGPBDescriptor;
  v14 = [(TransparencyGPBDescriptor *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->messageClass_ = a3;
    v14->messageName_ = [a4 copy];
    v15->fileDescription_ = a5;
    v15->fields_ = a6;
    v15->storageSize_ = a7;
    v15->wireFormat_ = a8;
  }

  return v15;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TransparencyGPBDescriptor;
  [(TransparencyGPBDescriptor *)&v3 dealloc];
}

- (void)setupOneofs:(const char *)a3 count:(unsigned int)a4 firstHasIndex:(int)a5
{
  v7 = a4;
  v8 = [[NSMutableArray alloc] initWithCapacity:a4];
  if (a4)
  {
    v9 = 0;
    do
    {
      v10 = a3[v9];
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

            if (*(*(*(*(&v20 + 1) + 8 * v16) + 8) + 20) == a5)
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
      --a5;
    }

    while (v9 != v7);
  }

  self->oneofs_ = v8;
}

- (void)setupExtraTextInfo:(const char *)a3
{
  if (a3)
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

- (void)setupContainingMessageClassName:(const char *)a3
{
  Class = objc_getClass(a3);

  [(TransparencyGPBDescriptor *)self setupContainingMessageClass:Class];
}

- (void)setupMessageClassNameSuffix:(id)a3
{
  if ([a3 length])
  {

    objc_setAssociatedObject(self, &unk_10008C0BB, a3, 1);
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
  v3 = [(TransparencyGPBDescriptor *)self containingType];
  v4 = v3;
  messageName = self->messageName_;
  if (messageName)
  {
    if (v3)
    {
      return [NSString stringWithFormat:@"%@.%@", [(TransparencyGPBDescriptor *)v3 fullName], self->messageName_];
    }

    if (self->fileDescription_->var0)
    {
      return [NSString stringWithFormat:@"%s.%@", self->fileDescription_->var0, messageName];
    }

    return messageName;
  }

  v7 = NSStringFromClass([(TransparencyGPBDescriptor *)self messageClass]);
  v8 = [(TransparencyGPBDescriptor *)self file];
  v9 = [(TransparencyGPBFileDescriptor *)v8 objcPrefix];
  if (v9 && ![(NSString *)v7 hasPrefix:v9])
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

    v9 = [(NSString *)v10 stringByAppendingString:@"_"];
    if (![(NSString *)v7 hasPrefix:v9])
    {
      return 0;
    }
  }

  messageName = [(NSString *)v7 substringFromIndex:[(NSString *)v9 length]];
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
    v15 = [(TransparencyGPBDescriptor *)v4 fullName];
  }

  else
  {
    v15 = [(TransparencyGPBFileDescriptor *)v8 package];
  }

  v16 = v15;
  if ([(NSString *)v15 length])
  {
    return [NSString stringWithFormat:@"%@.%@", v16, messageName];
  }

  return messageName;
}

- (id)fieldWithNumber:(unsigned int)a3
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
      if (*(*(result + 1) + 16) == a3)
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

- (id)fieldWithName:(id)a3
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

- (id)oneofWithName:(id)a3
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