@interface TransparencyGPBFileDescriptor
- (BOOL)isEqual:(id)equal;
- (TransparencyGPBFileDescriptor)initWithPackage:(id)package objcPrefix:(id)prefix syntax:(unsigned __int8)syntax;
- (TransparencyGPBFileDescriptor)initWithPackage:(id)package syntax:(unsigned __int8)syntax;
- (void)dealloc;
@end

@implementation TransparencyGPBFileDescriptor

- (TransparencyGPBFileDescriptor)initWithPackage:(id)package objcPrefix:(id)prefix syntax:(unsigned __int8)syntax
{
  v10.receiver = self;
  v10.super_class = TransparencyGPBFileDescriptor;
  v8 = [(TransparencyGPBFileDescriptor *)&v10 init];
  if (v8)
  {
    v8->package_ = [package copy];
    v8->objcPrefix_ = [prefix copy];
    v8->syntax_ = syntax;
  }

  return v8;
}

- (TransparencyGPBFileDescriptor)initWithPackage:(id)package syntax:(unsigned __int8)syntax
{
  v8.receiver = self;
  v8.super_class = TransparencyGPBFileDescriptor;
  v6 = [(TransparencyGPBFileDescriptor *)&v8 init];
  if (v6)
  {
    v6->package_ = [package copy];
    v6->syntax_ = syntax;
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TransparencyGPBFileDescriptor;
  [(TransparencyGPBFileDescriptor *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || self->syntax_ != *(equal + 24))
  {
    goto LABEL_10;
  }

  v5 = [(NSString *)self->package_ isEqual:*(equal + 1)];
  if (!v5)
  {
    return v5;
  }

  objcPrefix = self->objcPrefix_;
  v7 = *(equal + 2);
  if (objcPrefix == v7)
  {
LABEL_11:
    LOBYTE(v5) = 1;
    return v5;
  }

  if (!v7)
  {
LABEL_10:
    LOBYTE(v5) = 0;
    return v5;
  }

  LOBYTE(v5) = [(NSString *)objcPrefix isEqual:?];
  return v5;
}

@end