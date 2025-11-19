@interface DataOutputStream
+ (id)outputStream;
+ (id)outputStreamWithByteOrder:(int64_t)a3;
- (DataOutputStream)initWithByteOrder:(int64_t)a3;
- (void)writeBytes:(const void *)a3 length:(unint64_t)a4;
- (void)writeData:(id)a3;
- (void)writeString:(id)a3;
- (void)writeUint16:(unsigned __int16)a3;
- (void)writeUint24:(unsigned int)a3;
- (void)writeUint32:(unsigned int)a3;
- (void)writeUint40:(unint64_t)a3;
- (void)writeUint8:(unsigned __int8)a3;
@end

@implementation DataOutputStream

- (DataOutputStream)initWithByteOrder:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = DataOutputStream;
  v4 = [(DataOutputStream *)&v8 init];
  if (v4)
  {
    v5 = objc_alloc_init(NSMutableData);
    stream = v4->_stream;
    v4->_stream = v5;

    v4->_byteOrder = a3;
  }

  return v4;
}

+ (id)outputStream
{
  v2 = [[DataOutputStream alloc] initWithByteOrder:0];

  return v2;
}

+ (id)outputStreamWithByteOrder:(int64_t)a3
{
  v3 = [[DataOutputStream alloc] initWithByteOrder:a3];

  return v3;
}

- (void)writeUint8:(unsigned __int8)a3
{
  v4 = a3;
  v3 = [(DataOutputStream *)self stream];
  [v3 appendBytes:&v4 length:1];
}

- (void)writeUint16:(unsigned __int16)a3
{
  v3 = a3;
  v5 = [(DataOutputStream *)self byteOrder];
  v6 = __rev16(v3);
  if (v5 == 1)
  {
    v6 = v3;
  }

  v8 = v6;
  v7 = [(DataOutputStream *)self stream];
  [v7 appendBytes:&v8 length:2];
}

- (void)writeUint32:(unsigned int)a3
{
  v5 = [(DataOutputStream *)self byteOrder];
  v6 = bswap32(a3);
  if (v5 == 1)
  {
    v6 = a3;
  }

  v8 = v6;
  v7 = [(DataOutputStream *)self stream];
  [v7 appendBytes:&v8 length:4];
}

- (void)writeUint24:(unsigned int)a3
{
  v5 = [(DataOutputStream *)self byteOrder];
  v6 = HIWORD(a3);
  if (v5 == 1)
  {
    v7 = a3;
  }

  else
  {
    v7 = BYTE2(a3);
  }

  if (v5 != 1)
  {
    LOBYTE(v6) = a3;
  }

  v9[0] = v7;
  v9[1] = BYTE1(a3);
  v9[2] = v6;
  v8 = [(DataOutputStream *)self stream];
  [v8 appendBytes:v9 length:3];
}

- (void)writeUint40:(unint64_t)a3
{
  v5 = [(DataOutputStream *)self byteOrder];
  v6 = a3 >> 24;
  v7 = HIDWORD(a3);
  if (v5 == 1)
  {
    LOBYTE(v8) = a3;
  }

  else
  {
    v8 = HIDWORD(a3);
  }

  v11[0] = v8;
  if (v5 == 1)
  {
    v9 = a3 >> 8;
  }

  else
  {
    v9 = a3 >> 24;
  }

  if (v5 != 1)
  {
    v6 = a3 >> 8;
  }

  v11[1] = v9;
  v11[2] = BYTE2(a3);
  if (v5 != 1)
  {
    LOBYTE(v7) = a3;
  }

  v11[3] = v6;
  v11[4] = v7;
  v10 = [(DataOutputStream *)self stream];
  [v10 appendBytes:v11 length:5];
}

- (void)writeData:(id)a3
{
  v4 = a3;
  v5 = [(DataOutputStream *)self stream];
  [v5 appendData:v4];
}

- (void)writeBytes:(const void *)a3 length:(unint64_t)a4
{
  v6 = [(DataOutputStream *)self stream];
  [v6 appendBytes:a3 length:a4];
}

- (void)writeString:(id)a3
{
  v5 = a3;
  v6 = [a3 UTF8String];
  v7 = [(DataOutputStream *)self stream];
  [v7 appendBytes:v6 length:strlen(v6) + 1];
}

@end