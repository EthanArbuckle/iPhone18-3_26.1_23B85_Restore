@interface DataInputStream
+ (id)inputStreamWithData:(id)data;
+ (id)inputStreamWithData:(id)data byteOrder:(int64_t)order;
- (BOOL)readIEEEFloat:(float *)float;
- (BOOL)readNumBytes:(unsigned int)bytes toData:(id)data;
- (BOOL)readString:(id)string;
- (BOOL)readUint16:(unsigned __int16 *)uint16;
- (BOOL)readUint24:(unsigned int *)uint24;
- (BOOL)readUint32:(unsigned int *)uint32;
- (BOOL)readUint40:(unint64_t *)uint40;
- (BOOL)readUint48:(unint64_t *)uint48;
- (BOOL)readUint8:(char *)uint8;
- (DataInputStream)initWithValue:(id)value byteOrder:(int64_t)order;
@end

@implementation DataInputStream

- (DataInputStream)initWithValue:(id)value byteOrder:(int64_t)order
{
  valueCopy = value;
  v13.receiver = self;
  v13.super_class = DataInputStream;
  v7 = [(DataInputStream *)&v13 init];
  v8 = v7;
  if (v7)
  {
    if (valueCopy)
    {
      v9 = [[NSInputStream alloc] initWithData:valueCopy];
      stream = v8->_stream;
      v8->_stream = v9;

      [(NSInputStream *)v8->_stream open];
    }

    else
    {
      v11 = v7->_stream;
      v7->_stream = 0;
    }

    v8->_byteOrder = order;
  }

  return v8;
}

+ (id)inputStreamWithData:(id)data
{
  dataCopy = data;
  v4 = [[DataInputStream alloc] initWithValue:dataCopy byteOrder:0];

  return v4;
}

+ (id)inputStreamWithData:(id)data byteOrder:(int64_t)order
{
  dataCopy = data;
  v6 = [[DataInputStream alloc] initWithValue:dataCopy byteOrder:order];

  return v6;
}

- (BOOL)readUint8:(char *)uint8
{
  stream = [(DataInputStream *)self stream];
  v5 = [stream read:uint8 maxLength:1];

  return v5 == 1;
}

- (BOOL)readUint16:(unsigned __int16 *)uint16
{
  stream = [(DataInputStream *)self stream];
  v6 = [stream read:uint16 maxLength:2];

  byteOrder = [(DataInputStream *)self byteOrder];
  v8 = *uint16;
  v9 = bswap32(v8) >> 16;
  if (byteOrder != 1)
  {
    LOWORD(v8) = v9;
  }

  *uint16 = v8;
  return v6 == 2;
}

- (BOOL)readUint32:(unsigned int *)uint32
{
  stream = [(DataInputStream *)self stream];
  v6 = [stream read:uint32 maxLength:4];

  byteOrder = [(DataInputStream *)self byteOrder];
  v8 = *uint32;
  v9 = bswap32(*uint32);
  if (byteOrder != 1)
  {
    v8 = v9;
  }

  *uint32 = v8;
  return v6 == 4;
}

- (BOOL)readIEEEFloat:(float *)float
{
  v19 = 0;
  stream = [(DataInputStream *)self stream];
  v6 = [stream read:&v19 maxLength:4];

  if (v6 != 4)
  {
    return v6 == 4;
  }

  if ([(DataInputStream *)self byteOrder]== 1)
  {
    v7 = HIBYTE(v19);
    v8 = BYTE2(v19);
    v9 = v19;
    if ((SBYTE2(v19) & 0x80000000) == 0)
    {
      v10 = BYTE1(v19);
LABEL_7:
      v11 = v9 | (v8 << 16) | (v10 << 8);
      goto LABEL_11;
    }

    v12 = v19 ^ 0xFF;
    v13 = BYTE1(v19);
  }

  else
  {
    v7 = v19;
    v8 = BYTE1(v19);
    v9 = HIBYTE(v19);
    if ((SBYTE1(v19) & 0x80000000) == 0)
    {
      v10 = BYTE2(v19);
      goto LABEL_7;
    }

    v12 = HIBYTE(v19) ^ 0xFF;
    v13 = BYTE2(v19);
  }

  v11 = ((v12 | ((v13 ^ 0xFF) << 8) | (v8 << 16)) ^ 0xFF00FFFF) + 2;
LABEL_11:
  v14 = v7;
  v15 = __exp10(v7) * v11;
  *float = v15;
  v16 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *float;
    *buf = 67109632;
    v21 = v14;
    v22 = 1024;
    v23 = v11;
    v24 = 2048;
    v25 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "exp : %d, mag : %d, number = %f ", buf, 0x18u);
  }

  return v6 == 4;
}

- (BOOL)readString:(id)string
{
  stringCopy = string;
  v11 = 0;
  stream = [(DataInputStream *)self stream];
  v6 = [stream read:&v11 maxLength:1];

  if (v6)
  {
    do
    {
      v7 = v11 == 0;
      if (!v11)
      {
        break;
      }

      [stringCopy appendFormat:@"%c", v11];
      stream2 = [(DataInputStream *)self stream];
      v9 = [stream2 read:&v11 maxLength:1];
    }

    while (v9);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)readUint24:(unsigned int *)uint24
{
  v10 = 0;
  v9 = 0;
  stream = [(DataInputStream *)self stream];
  v6 = [stream read:&v9 maxLength:3];

  if (v6 == 3)
  {
    if ([(DataInputStream *)self byteOrder]== 1)
    {
      v7 = (v10 << 16) | (HIBYTE(v9) << 8) | v9;
    }

    else
    {
      v7 = (v9 << 16) | (HIBYTE(v9) << 8) | v10;
    }

    *uint24 = v7;
  }

  return v6 == 3;
}

- (BOOL)readUint40:(unint64_t *)uint40
{
  v10 = 0;
  v9 = 0;
  stream = [(DataInputStream *)self stream];
  v6 = [stream read:&v9 maxLength:5];

  if (v6 == 5)
  {
    if ([(DataInputStream *)self byteOrder]== 1)
    {
      v7 = v9 | (v10 << 32);
    }

    else
    {
      v7 = (v9 << 32) | (BYTE1(v9) << 24) | (BYTE2(v9) << 16) | (HIBYTE(v9) << 8) | v10;
    }

    *uint40 = v7;
  }

  return v6 == 5;
}

- (BOOL)readUint48:(unint64_t *)uint48
{
  v10 = 0;
  v9 = 0;
  stream = [(DataInputStream *)self stream];
  v6 = [stream read:&v9 maxLength:6];

  if (v6 == 6)
  {
    if ([(DataInputStream *)self byteOrder]== 1)
    {
      v7 = v9 | (v10 << 32) | (HIBYTE(v10) << 40);
    }

    else
    {
      v7 = (v9 << 40) | (BYTE1(v9) << 32) | (BYTE2(v9) << 24) | (HIBYTE(v9) << 16) | (v10 << 8) | HIBYTE(v10);
    }

    *uint48 = v7;
  }

  return v6 == 6;
}

- (BOOL)readNumBytes:(unsigned int)bytes toData:(id)data
{
  dataCopy = data;
  bzero(&v10 - ((bytes + 15) & 0x1FFFFFFF0), bytes);
  stream = [(DataInputStream *)self stream];
  v8 = [stream read:&v10 - ((bytes + 15) & 0x1FFFFFFF0) maxLength:bytes];

  if (v8 == bytes)
  {
    [dataCopy appendBytes:&v10 - ((bytes + 15) & 0x1FFFFFFF0) length:bytes];
  }

  return v8 == bytes;
}

@end