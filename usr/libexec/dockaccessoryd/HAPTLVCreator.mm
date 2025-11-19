@interface HAPTLVCreator
+ (id)creator;
+ (id)creatorWithBufferSize:(unint64_t)a3;
- (BOOL)addTLV:(unint64_t)a3 data:(id)a4;
- (BOOL)addTLV:(unint64_t)a3 length:(unint64_t)a4 floatNumber:(id)a5;
- (BOOL)addTLV:(unint64_t)a3 length:(unint64_t)a4 number:(id)a5;
- (BOOL)addTLV:(unint64_t)a3 number:(id)a4;
- (BOOL)addTLV:(unint64_t)a3 string:(id)a4;
- (BOOL)addTLV:(unint64_t)a3 uuid:(id)a4;
- (HAPTLVCreator)initWithBufferSize:(unint64_t)a3;
- (id)serialize;
- (void)dealloc;
@end

@implementation HAPTLVCreator

+ (id)creator
{
  v2 = [[HAPTLVCreator alloc] initWithBufferSize:0x4000];

  return v2;
}

+ (id)creatorWithBufferSize:(unint64_t)a3
{
  v3 = [[HAPTLVCreator alloc] initWithBufferSize:a3];

  return v3;
}

- (HAPTLVCreator)initWithBufferSize:(unint64_t)a3
{
  v6.receiver = self;
  v6.super_class = HAPTLVCreator;
  v3 = [(HAPTLVCreator *)&v6 init];
  v4 = v3;
  if (v3)
  {
    v3->_addHasFailed = 0;
    TLV8BufferInit();
  }

  return v4;
}

- (void)dealloc
{
  TLV8BufferFree();
  v3.receiver = self;
  v3.super_class = HAPTLVCreator;
  [(HAPTLVCreator *)&v3 dealloc];
}

- (id)serialize
{
  if (self->_addHasFailed)
  {
    v4 = 0;
  }

  else
  {
    v4 = [NSData dataWithBytes:self->_tlv.ptr length:self->_tlv.len, v2];
  }

  return v4;
}

- (BOOL)addTLV:(unint64_t)a3 data:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (!v5)
  {
    goto LABEL_4;
  }

  [v5 bytes];
  [v6 length];
  v7 = 1;
  if (TLV8BufferAppend())
  {
    self->_addHasFailed = 1;
LABEL_4:
    v7 = 0;
  }

  return v7;
}

- (BOOL)addTLV:(unint64_t)a3 string:(id)a4
{
  if (!a4)
  {
    return 0;
  }

  v5 = [a4 dataUsingEncoding:4];
  [v5 bytes];
  [v5 length];
  v6 = TLV8BufferAppend();
  v7 = v6 == 0;
  if (v6)
  {
    self->_addHasFailed = 1;
  }

  return v7;
}

- (BOOL)addTLV:(unint64_t)a3 number:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (!v5)
  {
    goto LABEL_4;
  }

  [v5 unsignedIntegerValue];
  v7 = 1;
  if (TLV8BufferAppendUInt64())
  {
    self->_addHasFailed = 1;
LABEL_4:
    v7 = 0;
  }

  return v7;
}

- (BOOL)addTLV:(unint64_t)a3 length:(unint64_t)a4 number:(id)a5
{
  if (!a5)
  {
    return 0;
  }

  v11 = [a5 unsignedIntegerValue];
  v8 = [NSData dataWithBytes:&v11 length:a4];
  v9 = [(HAPTLVCreator *)self addTLV:a3 data:v8];

  return v9;
}

- (BOOL)addTLV:(unint64_t)a3 length:(unint64_t)a4 floatNumber:(id)a5
{
  if (!a5)
  {
    return 0;
  }

  [a5 floatValue];
  v12 = v8;
  v9 = [NSData dataWithBytes:&v12 length:a4];
  v10 = [(HAPTLVCreator *)self addTLV:a3 data:v9];

  return v10;
}

- (BOOL)addTLV:(unint64_t)a3 uuid:(id)a4
{
  if (!a4)
  {
    return 0;
  }

  v7[0] = 0;
  v7[1] = 0;
  [a4 getUUIDBytes:v7];
  v5 = TLV8BufferAppend();
  result = v5 == 0;
  if (v5)
  {
    self->_addHasFailed = 1;
  }

  return result;
}

@end