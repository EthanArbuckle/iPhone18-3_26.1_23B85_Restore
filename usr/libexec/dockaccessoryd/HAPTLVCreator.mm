@interface HAPTLVCreator
+ (id)creator;
+ (id)creatorWithBufferSize:(unint64_t)size;
- (BOOL)addTLV:(unint64_t)v data:(id)data;
- (BOOL)addTLV:(unint64_t)v length:(unint64_t)length floatNumber:(id)number;
- (BOOL)addTLV:(unint64_t)v length:(unint64_t)length number:(id)number;
- (BOOL)addTLV:(unint64_t)v number:(id)number;
- (BOOL)addTLV:(unint64_t)v string:(id)string;
- (BOOL)addTLV:(unint64_t)v uuid:(id)uuid;
- (HAPTLVCreator)initWithBufferSize:(unint64_t)size;
- (id)serialize;
- (void)dealloc;
@end

@implementation HAPTLVCreator

+ (id)creator
{
  v2 = [[HAPTLVCreator alloc] initWithBufferSize:0x4000];

  return v2;
}

+ (id)creatorWithBufferSize:(unint64_t)size
{
  v3 = [[HAPTLVCreator alloc] initWithBufferSize:size];

  return v3;
}

- (HAPTLVCreator)initWithBufferSize:(unint64_t)size
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

- (BOOL)addTLV:(unint64_t)v data:(id)data
{
  dataCopy = data;
  v6 = dataCopy;
  if (!dataCopy)
  {
    goto LABEL_4;
  }

  [dataCopy bytes];
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

- (BOOL)addTLV:(unint64_t)v string:(id)string
{
  if (!string)
  {
    return 0;
  }

  v5 = [string dataUsingEncoding:4];
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

- (BOOL)addTLV:(unint64_t)v number:(id)number
{
  numberCopy = number;
  v6 = numberCopy;
  if (!numberCopy)
  {
    goto LABEL_4;
  }

  [numberCopy unsignedIntegerValue];
  v7 = 1;
  if (TLV8BufferAppendUInt64())
  {
    self->_addHasFailed = 1;
LABEL_4:
    v7 = 0;
  }

  return v7;
}

- (BOOL)addTLV:(unint64_t)v length:(unint64_t)length number:(id)number
{
  if (!number)
  {
    return 0;
  }

  unsignedIntegerValue = [number unsignedIntegerValue];
  v8 = [NSData dataWithBytes:&unsignedIntegerValue length:length];
  v9 = [(HAPTLVCreator *)self addTLV:v data:v8];

  return v9;
}

- (BOOL)addTLV:(unint64_t)v length:(unint64_t)length floatNumber:(id)number
{
  if (!number)
  {
    return 0;
  }

  [number floatValue];
  v12 = v8;
  v9 = [NSData dataWithBytes:&v12 length:length];
  v10 = [(HAPTLVCreator *)self addTLV:v data:v9];

  return v10;
}

- (BOOL)addTLV:(unint64_t)v uuid:(id)uuid
{
  if (!uuid)
  {
    return 0;
  }

  v7[0] = 0;
  v7[1] = 0;
  [uuid getUUIDBytes:v7];
  v5 = TLV8BufferAppend();
  result = v5 == 0;
  if (v5)
  {
    self->_addHasFailed = 1;
  }

  return result;
}

@end