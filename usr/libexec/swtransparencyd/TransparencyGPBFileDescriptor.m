@interface TransparencyGPBFileDescriptor
- (BOOL)isEqual:(id)a3;
- (TransparencyGPBFileDescriptor)initWithPackage:(id)a3 objcPrefix:(id)a4 syntax:(unsigned __int8)a5;
- (TransparencyGPBFileDescriptor)initWithPackage:(id)a3 syntax:(unsigned __int8)a4;
- (void)dealloc;
@end

@implementation TransparencyGPBFileDescriptor

- (TransparencyGPBFileDescriptor)initWithPackage:(id)a3 objcPrefix:(id)a4 syntax:(unsigned __int8)a5
{
  v10.receiver = self;
  v10.super_class = TransparencyGPBFileDescriptor;
  v8 = [(TransparencyGPBFileDescriptor *)&v10 init];
  if (v8)
  {
    v8->package_ = [a3 copy];
    v8->objcPrefix_ = [a4 copy];
    v8->syntax_ = a5;
  }

  return v8;
}

- (TransparencyGPBFileDescriptor)initWithPackage:(id)a3 syntax:(unsigned __int8)a4
{
  v8.receiver = self;
  v8.super_class = TransparencyGPBFileDescriptor;
  v6 = [(TransparencyGPBFileDescriptor *)&v8 init];
  if (v6)
  {
    v6->package_ = [a3 copy];
    v6->syntax_ = a4;
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TransparencyGPBFileDescriptor;
  [(TransparencyGPBFileDescriptor *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || self->syntax_ != *(a3 + 24))
  {
    goto LABEL_10;
  }

  v5 = [(NSString *)self->package_ isEqual:*(a3 + 1)];
  if (!v5)
  {
    return v5;
  }

  objcPrefix = self->objcPrefix_;
  v7 = *(a3 + 2);
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