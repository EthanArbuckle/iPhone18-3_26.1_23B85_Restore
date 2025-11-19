@interface TransparencyGPBCodedOutputStream
+ (id)streamWithData:(id)a3;
+ (id)streamWithOutputStream:(id)a3;
- (TransparencyGPBCodedOutputStream)initWithOutputStream:(id)a3;
- (TransparencyGPBCodedOutputStream)initWithOutputStream:(id)a3 data:(id)a4;
- (void)dealloc;
- (void)flush;
- (void)writeBool:(int)a3 value:(BOOL)a4;
- (void)writeBoolNoTag:(BOOL)a3;
- (void)writeBytes:(int)a3 value:(id)a4;
- (void)writeBytesNoTag:(id)a3;
- (void)writeDouble:(int)a3 value:(double)a4;
- (void)writeEnum:(int)a3 value:(int)a4;
- (void)writeFixed32:(int)a3 value:(unsigned int)a4;
- (void)writeFixed64:(int)a3 value:(unint64_t)a4;
- (void)writeFloat:(int)a3 value:(float)a4;
- (void)writeGroupNoTag:(int)a3 value:(id)a4;
- (void)writeInt32:(int)a3 value:(int)a4;
- (void)writeInt64:(int)a3 value:(int64_t)a4;
- (void)writeMessage:(int)a3 value:(id)a4;
- (void)writeMessageNoTag:(id)a3;
- (void)writeMessageSetExtension:(int)a3 value:(id)a4;
- (void)writeRawByte:(unsigned __int8)a3;
- (void)writeRawData:(id)a3;
- (void)writeRawMessageSetExtension:(int)a3 value:(id)a4;
- (void)writeRawPtr:(const void *)a3 offset:(unint64_t)a4 length:(unint64_t)a5;
- (void)writeSFixed32:(int)a3 value:(int)a4;
- (void)writeSFixed64:(int)a3 value:(int64_t)a4;
- (void)writeSInt32:(int)a3 value:(int)a4;
- (void)writeSInt64:(int)a3 value:(int64_t)a4;
- (void)writeString:(int)a3 value:(id)a4;
- (void)writeStringNoTag:(id)a3;
- (void)writeTag:(unsigned int)a3 format:(int)a4;
- (void)writeUInt64:(int)a3 value:(unint64_t)a4;
- (void)writeUnknownGroupNoTag:(int)a3 value:(id)a4;
@end

@implementation TransparencyGPBCodedOutputStream

- (void)dealloc
{
  [(TransparencyGPBCodedOutputStream *)self flush];
  [(NSOutputStream *)self->state_.output close];

  v3.receiver = self;
  v3.super_class = TransparencyGPBCodedOutputStream;
  [(TransparencyGPBCodedOutputStream *)&v3 dealloc];
}

- (TransparencyGPBCodedOutputStream)initWithOutputStream:(id)a3
{
  v5 = [NSMutableData dataWithLength:vm_page_size];

  return [(TransparencyGPBCodedOutputStream *)self initWithOutputStream:a3 data:v5];
}

- (TransparencyGPBCodedOutputStream)initWithOutputStream:(id)a3 data:(id)a4
{
  v9.receiver = self;
  v9.super_class = TransparencyGPBCodedOutputStream;
  v6 = [(TransparencyGPBCodedOutputStream *)&v9 init];
  if (v6)
  {
    v6->buffer_ = a4;
    v6->state_.bytes = [a4 mutableBytes];
    v6->state_.size = [a4 length];
    v7 = a3;
    v6->state_.output = v7;
    [(NSOutputStream *)v7 open];
  }

  return v6;
}

+ (id)streamWithOutputStream:(id)a3
{
  v3 = [[a1 alloc] initWithOutputStream:a3 data:{+[NSMutableData dataWithLength:](NSMutableData, "dataWithLength:", vm_page_size)}];

  return v3;
}

+ (id)streamWithData:(id)a3
{
  v3 = [[a1 alloc] initWithData:a3];

  return v3;
}

- (void)writeDouble:(int)a3 value:(double)a4
{
  v6 = sub_1001A18B4(a3, 1);
  sub_10016E938(&self->state_, v6);

  sub_10016E190(&self->state_, *&a4);
}

- (void)writeFloat:(int)a3 value:(float)a4
{
  v6 = sub_1001A18B4(a3, 5);
  sub_10016E938(&self->state_, v6);

  sub_10016E378(&self->state_, SLODWORD(a4));
}

- (void)writeUInt64:(int)a3 value:(unint64_t)a4
{
  v6 = sub_1001A18B4(a3, 0);
  sub_10016E938(&self->state_, v6);

  sub_10016E4B0(&self->state_, a4);
}

- (void)writeInt64:(int)a3 value:(int64_t)a4
{
  v6 = sub_1001A18B4(a3, 0);
  sub_10016E938(&self->state_, v6);

  sub_10016E4B0(&self->state_, a4);
}

- (void)writeInt32:(int)a3 value:(int)a4
{
  v6 = sub_1001A18B4(a3, 0);
  sub_10016E938(&self->state_, v6);

  sub_10016E610(&self->state_, a4);
}

- (void)writeFixed64:(int)a3 value:(unint64_t)a4
{
  v6 = sub_1001A18B4(a3, 1);
  sub_10016E938(&self->state_, v6);

  sub_10016E190(&self->state_, a4);
}

- (void)writeFixed32:(int)a3 value:(unsigned int)a4
{
  v6 = sub_1001A18B4(a3, 5);
  sub_10016E938(&self->state_, v6);

  sub_10016E378(&self->state_, a4);
}

- (void)writeBoolNoTag:(BOOL)a3
{
  position = self->state_.position;
  if (position == self->state_.size)
  {
    sub_100171190(&self->state_.bytes);
    position = self->state_.position;
  }

  bytes = self->state_.bytes;
  self->state_.position = position + 1;
  bytes[position] = a3;
}

- (void)writeBool:(int)a3 value:(BOOL)a4
{
  v6 = sub_1001A18B4(a3, 0);
  sub_10016E938(&self->state_, v6);
  position = self->state_.position;
  if (position == self->state_.size)
  {
    sub_100171190(&self->state_.bytes);
    position = self->state_.position;
  }

  bytes = self->state_.bytes;
  self->state_.position = position + 1;
  bytes[position] = a4;
}

- (void)writeStringNoTag:(id)a3
{
  v5 = [a3 lengthOfBytesUsingEncoding:4];
  sub_10016E938(&self->state_, v5);
  if (v5)
  {
    CStringPtr = CFStringGetCStringPtr(a3, 0x8000100u);
    position = self->state_.position;
    v8 = self->state_.size - position;
    if (v8 >= v5)
    {
      v11 = 0;
      bytes = self->state_.bytes;
      if (CStringPtr)
      {
        memcpy(&bytes[position], CStringPtr, v5);
      }

      else
      {
        if (![a3 getBytes:&bytes[position] maxLength:v8 usedLength:&v11 encoding:4 options:0 range:0 remainingRange:{objc_msgSend(a3, "length"), 0}])
        {
          return;
        }

        v5 = v11;
      }

      self->state_.position += v5;
    }

    else if (CStringPtr)
    {

      [TransparencyGPBCodedOutputStream writeRawPtr:"writeRawPtr:offset:length:" offset:CStringPtr length:?];
    }

    else
    {
      v10 = [a3 dataUsingEncoding:4];

      [(TransparencyGPBCodedOutputStream *)self writeRawData:v10];
    }
  }
}

- (void)writeString:(int)a3 value:(id)a4
{
  v6 = sub_1001A18B4(a3, 2);
  sub_10016E938(&self->state_, v6);

  [(TransparencyGPBCodedOutputStream *)self writeStringNoTag:a4];
}

- (void)writeGroupNoTag:(int)a3 value:(id)a4
{
  [a4 writeToCodedOutputStream:self];
  v6 = sub_1001A18B4(a3, 4);

  sub_10016E938(&self->state_, v6);
}

- (void)writeUnknownGroupNoTag:(int)a3 value:(id)a4
{
  [a4 writeToCodedOutputStream:self];
  v6 = sub_1001A18B4(a3, 4);

  sub_10016E938(&self->state_, v6);
}

- (void)writeMessageNoTag:(id)a3
{
  sub_10016E938(&self->state_, [a3 serializedSize]);

  [a3 writeToCodedOutputStream:self];
}

- (void)writeMessage:(int)a3 value:(id)a4
{
  v6 = sub_1001A18B4(a3, 2);
  sub_10016E938(&self->state_, v6);

  [(TransparencyGPBCodedOutputStream *)self writeMessageNoTag:a4];
}

- (void)writeBytesNoTag:(id)a3
{
  sub_10016E938(&self->state_, [a3 length]);

  [(TransparencyGPBCodedOutputStream *)self writeRawData:a3];
}

- (void)writeBytes:(int)a3 value:(id)a4
{
  v6 = sub_1001A18B4(a3, 2);
  sub_10016E938(&self->state_, v6);

  [(TransparencyGPBCodedOutputStream *)self writeBytesNoTag:a4];
}

- (void)writeEnum:(int)a3 value:(int)a4
{
  v6 = sub_1001A18B4(a3, 0);
  sub_10016E938(&self->state_, v6);

  sub_10016E610(&self->state_, a4);
}

- (void)writeSFixed32:(int)a3 value:(int)a4
{
  v6 = sub_1001A18B4(a3, 5);
  sub_10016E938(&self->state_, v6);

  sub_10016E378(&self->state_, a4);
}

- (void)writeSFixed64:(int)a3 value:(int64_t)a4
{
  v6 = sub_1001A18B4(a3, 1);
  sub_10016E938(&self->state_, v6);

  sub_10016E190(&self->state_, a4);
}

- (void)writeSInt32:(int)a3 value:(int)a4
{
  v6 = sub_1001A18B4(a3, 0);
  sub_10016E938(&self->state_, v6);

  sub_10016E938(&self->state_, (2 * a4) ^ (a4 >> 31));
}

- (void)writeSInt64:(int)a3 value:(int64_t)a4
{
  v6 = sub_1001A18B4(a3, 0);
  sub_10016E938(&self->state_, v6);

  sub_10016E4B0(&self->state_, (2 * a4) ^ (a4 >> 63));
}

- (void)writeMessageSetExtension:(int)a3 value:(id)a4
{
  v7 = sub_1001A18B4(1, 3);
  sub_10016E938(&self->state_, v7);
  sub_10016ED00(&self->state_, 2, a3);
  [(TransparencyGPBCodedOutputStream *)self writeMessage:3 value:a4];
  v8 = sub_1001A18B4(1, 4);

  sub_10016E938(&self->state_, v8);
}

- (void)writeRawMessageSetExtension:(int)a3 value:(id)a4
{
  v7 = sub_1001A18B4(1, 3);
  sub_10016E938(&self->state_, v7);
  sub_10016ED00(&self->state_, 2, a3);
  [(TransparencyGPBCodedOutputStream *)self writeBytes:3 value:a4];
  v8 = sub_1001A18B4(1, 4);

  sub_10016E938(&self->state_, v8);
}

- (void)flush
{
  if (self->state_.output)
  {
    sub_100171190(&self->state_.bytes);
  }
}

- (void)writeRawByte:(unsigned __int8)a3
{
  position = self->state_.position;
  if (position == self->state_.size)
  {
    sub_100171190(&self->state_.bytes);
    position = self->state_.position;
  }

  bytes = self->state_.bytes;
  self->state_.position = position + 1;
  bytes[position] = a3;
}

- (void)writeRawData:(id)a3
{
  v5 = [a3 bytes];
  v6 = [a3 length];

  [(TransparencyGPBCodedOutputStream *)self writeRawPtr:v5 offset:0 length:v6];
}

- (void)writeRawPtr:(const void *)a3 offset:(unint64_t)a4 length:(unint64_t)a5
{
  if (a3 && a5)
  {
    size = self->state_.size;
    p_state = &self->state_;
    position = self->state_.position;
    v12 = size - position;
    v13 = &self->state_.bytes[position];
    v14 = (a5 - (size - position));
    if (a5 <= size - position)
    {
      memcpy(v13, a3 + a4, a5);
      self->state_.position += a5;
    }

    else
    {
      memcpy(v13, a3 + a4, size - position);
      v15 = v12 + a4;
      self->state_.position = size;
      sub_100171190(p_state);
      if (v14 <= self->state_.size)
      {
        memcpy(self->state_.bytes, a3 + v15, v14);
        self->state_.position = v14;
      }

      else if ([(NSOutputStream *)self->state_.output write:a3 + v15 maxLength:v14]!= v14)
      {

        [NSException raise:@"WriteFailed" format:&stru_10032E8E8];
      }
    }
  }
}

- (void)writeTag:(unsigned int)a3 format:(int)a4
{
  v5 = sub_1001A18B4(a3, a4);

  sub_10016E938(&self->state_, v5);
}

@end