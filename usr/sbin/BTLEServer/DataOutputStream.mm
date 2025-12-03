@interface DataOutputStream
+ (id)outputStream;
+ (id)outputStreamWithByteOrder:(int64_t)order;
- (DataOutputStream)initWithByteOrder:(int64_t)order;
- (void)writeBytes:(const void *)bytes length:(unint64_t)length;
- (void)writeData:(id)data;
- (void)writeString:(id)string;
- (void)writeUint16:(unsigned __int16)uint16;
- (void)writeUint24:(unsigned int)uint24;
- (void)writeUint32:(unsigned int)uint32;
- (void)writeUint40:(unint64_t)uint40;
- (void)writeUint8:(unsigned __int8)uint8;
@end

@implementation DataOutputStream

- (DataOutputStream)initWithByteOrder:(int64_t)order
{
  v8.receiver = self;
  v8.super_class = DataOutputStream;
  v4 = [(DataOutputStream *)&v8 init];
  if (v4)
  {
    v5 = objc_alloc_init(NSMutableData);
    stream = v4->_stream;
    v4->_stream = v5;

    v4->_byteOrder = order;
  }

  return v4;
}

+ (id)outputStream
{
  v2 = [[DataOutputStream alloc] initWithByteOrder:0];

  return v2;
}

+ (id)outputStreamWithByteOrder:(int64_t)order
{
  v3 = [[DataOutputStream alloc] initWithByteOrder:order];

  return v3;
}

- (void)writeUint8:(unsigned __int8)uint8
{
  uint8Copy = uint8;
  stream = [(DataOutputStream *)self stream];
  [stream appendBytes:&uint8Copy length:1];
}

- (void)writeUint16:(unsigned __int16)uint16
{
  uint16Copy = uint16;
  byteOrder = [(DataOutputStream *)self byteOrder];
  v6 = __rev16(uint16Copy);
  if (byteOrder == 1)
  {
    v6 = uint16Copy;
  }

  v8 = v6;
  stream = [(DataOutputStream *)self stream];
  [stream appendBytes:&v8 length:2];
}

- (void)writeUint32:(unsigned int)uint32
{
  byteOrder = [(DataOutputStream *)self byteOrder];
  uint32Copy = bswap32(uint32);
  if (byteOrder == 1)
  {
    uint32Copy = uint32;
  }

  v8 = uint32Copy;
  stream = [(DataOutputStream *)self stream];
  [stream appendBytes:&v8 length:4];
}

- (void)writeUint24:(unsigned int)uint24
{
  byteOrder = [(DataOutputStream *)self byteOrder];
  v6 = HIWORD(uint24);
  if (byteOrder == 1)
  {
    uint24Copy = uint24;
  }

  else
  {
    uint24Copy = BYTE2(uint24);
  }

  if (byteOrder != 1)
  {
    LOBYTE(v6) = uint24;
  }

  v9[0] = uint24Copy;
  v9[1] = BYTE1(uint24);
  v9[2] = v6;
  stream = [(DataOutputStream *)self stream];
  [stream appendBytes:v9 length:3];
}

- (void)writeUint40:(unint64_t)uint40
{
  byteOrder = [(DataOutputStream *)self byteOrder];
  v6 = uint40 >> 24;
  v7 = HIDWORD(uint40);
  if (byteOrder == 1)
  {
    LOBYTE(v8) = uint40;
  }

  else
  {
    v8 = HIDWORD(uint40);
  }

  v11[0] = v8;
  if (byteOrder == 1)
  {
    v9 = uint40 >> 8;
  }

  else
  {
    v9 = uint40 >> 24;
  }

  if (byteOrder != 1)
  {
    v6 = uint40 >> 8;
  }

  v11[1] = v9;
  v11[2] = BYTE2(uint40);
  if (byteOrder != 1)
  {
    LOBYTE(v7) = uint40;
  }

  v11[3] = v6;
  v11[4] = v7;
  stream = [(DataOutputStream *)self stream];
  [stream appendBytes:v11 length:5];
}

- (void)writeData:(id)data
{
  dataCopy = data;
  stream = [(DataOutputStream *)self stream];
  [stream appendData:dataCopy];
}

- (void)writeBytes:(const void *)bytes length:(unint64_t)length
{
  stream = [(DataOutputStream *)self stream];
  [stream appendBytes:bytes length:length];
}

- (void)writeString:(id)string
{
  stringCopy = string;
  uTF8String = [string UTF8String];
  stream = [(DataOutputStream *)self stream];
  [stream appendBytes:uTF8String length:strlen(uTF8String) + 1];
}

@end