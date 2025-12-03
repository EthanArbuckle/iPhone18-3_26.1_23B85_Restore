@interface TransparencyGPBCodedInputStream
+ (id)streamWithData:(id)data;
- (BOOL)skipField:(int)field;
- (TransparencyGPBCodedInputStream)initWithData:(id)data;
- (double)readDouble;
- (float)readFloat;
- (id)readBytes;
- (id)readString;
- (int)readSFixed32;
- (int64_t)readSFixed64;
- (unint64_t)pushLimit:(unint64_t)limit;
- (unint64_t)readFixed64;
- (unsigned)readFixed32;
- (void)checkLastTagWas:(int)was;
- (void)dealloc;
- (void)readGroup:(int)group message:(id)message extensionRegistry:(id)registry;
- (void)readMapEntry:(id)entry extensionRegistry:(id)registry field:(id)field parentMessage:(id)message;
- (void)readMessage:(id)message extensionRegistry:(id)registry;
- (void)readUnknownGroup:(int)group message:(id)message;
- (void)skipMessage;
@end

@implementation TransparencyGPBCodedInputStream

+ (id)streamWithData:(id)data
{
  v3 = [[self alloc] initWithData:data];

  return v3;
}

- (TransparencyGPBCodedInputStream)initWithData:(id)data
{
  v7.receiver = self;
  v7.super_class = TransparencyGPBCodedInputStream;
  v4 = [(TransparencyGPBCodedInputStream *)&v7 init];
  if (v4)
  {
    v4->buffer_ = data;
    v4->state_.bytes = [data bytes];
    v5 = [data length];
    v4->state_.bufferSize = v5;
    v4->state_.currentLimit = v5;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TransparencyGPBCodedInputStream;
  [(TransparencyGPBCodedInputStream *)&v3 dealloc];
}

- (void)checkLastTagWas:(int)was
{
  if (self->state_.lastTag != was)
  {
    sub_10016D3EC(-103, @"Unexpected tag read");
  }
}

- (BOOL)skipField:(int)field
{
  v5 = sub_1001A18BC(field);
  result = 0;
  if (v5 <= 1)
  {
    if (!v5)
    {
      sub_10016D1B4(&self->state_);
      return 1;
    }

    if (v5 != 1)
    {
      return result;
    }

    sub_10016D578(&self->state_.bytes, 8);
    v7 = self->state_.bufferPos + 8;
  }

  else
  {
    switch(v5)
    {
      case 2:
        v8 = sub_10016D1B4(&self->state_);
        sub_10016D578(&self->state_.bytes, v8);
        v7 = self->state_.bufferPos + v8;
        break;
      case 3:
        [(TransparencyGPBCodedInputStream *)self skipMessage];
        v9 = sub_1001A18C4(field);
        if (self->state_.lastTag != sub_1001A18B4(v9, 4))
        {
          sub_10016D3EC(-103, @"Unexpected tag read");
        }

        return 1;
      case 5:
        sub_10016D578(&self->state_.bytes, 4);
        v7 = self->state_.bufferPos + 4;
        break;
      default:
        return result;
    }
  }

  self->state_.bufferPos = v7;
  return 1;
}

- (void)skipMessage
{
  do
  {
    v3 = sub_10016D334(&self->state_);
  }

  while (v3 && [(TransparencyGPBCodedInputStream *)self skipField:v3]);
}

- (unint64_t)pushLimit:(unint64_t)limit
{
  currentLimit = self->state_.currentLimit;
  v5 = self->state_.bufferPos + limit;
  if (v5 > currentLimit)
  {
    sub_10016D3EC(-102, 0);
  }

  self->state_.currentLimit = v5;
  return currentLimit;
}

- (double)readDouble
{
  sub_10016D578(&self->state_.bytes, 8);
  bufferPos = self->state_.bufferPos;
  result = *&self->state_.bytes[bufferPos];
  self->state_.bufferPos = bufferPos + 8;
  return result;
}

- (float)readFloat
{
  sub_10016D578(&self->state_.bytes, 4);
  bufferPos = self->state_.bufferPos;
  result = *&self->state_.bytes[bufferPos];
  self->state_.bufferPos = bufferPos + 4;
  return result;
}

- (unint64_t)readFixed64
{
  sub_10016D578(&self->state_.bytes, 8);
  bufferPos = self->state_.bufferPos;
  result = *&self->state_.bytes[bufferPos];
  self->state_.bufferPos = bufferPos + 8;
  return result;
}

- (unsigned)readFixed32
{
  sub_10016D578(&self->state_.bytes, 4);
  bufferPos = self->state_.bufferPos;
  result = *&self->state_.bytes[bufferPos];
  self->state_.bufferPos = bufferPos + 4;
  return result;
}

- (id)readString
{
  v2 = sub_10016D4E4(&self->state_);

  return v2;
}

- (void)readGroup:(int)group message:(id)message extensionRegistry:(id)registry
{
  recursionDepth = self->state_.recursionDepth;
  if (recursionDepth >= 0x64)
  {
    sub_10016D3EC(-106, 0);
    recursionDepth = self->state_.recursionDepth;
  }

  self->state_.recursionDepth = recursionDepth + 1;
  [message mergeFromCodedInputStream:self extensionRegistry:registry];
  if (self->state_.lastTag != sub_1001A18B4(group, 4))
  {
    sub_10016D3EC(-103, @"Unexpected tag read");
  }

  --self->state_.recursionDepth;
}

- (void)readUnknownGroup:(int)group message:(id)message
{
  recursionDepth = self->state_.recursionDepth;
  if (recursionDepth >= 0x64)
  {
    sub_10016D3EC(-106, 0);
    recursionDepth = self->state_.recursionDepth;
  }

  self->state_.recursionDepth = recursionDepth + 1;
  [message mergeFromCodedInputStream:self];
  if (self->state_.lastTag != sub_1001A18B4(group, 4))
  {
    sub_10016D3EC(-103, @"Unexpected tag read");
  }

  --self->state_.recursionDepth;
}

- (void)readMessage:(id)message extensionRegistry:(id)registry
{
  if (self->state_.recursionDepth >= 0x64)
  {
    sub_10016D3EC(-106, 0);
  }

  v7 = sub_10016D1B4(&self->state_);
  currentLimit = self->state_.currentLimit;
  v9 = self->state_.bufferPos + v7;
  if (v9 > currentLimit)
  {
    sub_10016D3EC(-102, 0);
  }

  self->state_.currentLimit = v9;
  ++self->state_.recursionDepth;
  [message mergeFromCodedInputStream:self extensionRegistry:registry];
  if (self->state_.lastTag)
  {
    sub_10016D3EC(-103, @"Unexpected tag read");
  }

  --self->state_.recursionDepth;
  self->state_.currentLimit = currentLimit;
}

- (void)readMapEntry:(id)entry extensionRegistry:(id)registry field:(id)field parentMessage:(id)message
{
  if (self->state_.recursionDepth >= 0x64)
  {
    sub_10016D3EC(-106, 0);
  }

  v11 = sub_10016D1B4(&self->state_);
  currentLimit = self->state_.currentLimit;
  v13 = self->state_.bufferPos + v11;
  if (v13 > currentLimit)
  {
    sub_10016D3EC(-102, 0);
  }

  self->state_.currentLimit = v13;
  ++self->state_.recursionDepth;
  sub_100174610(entry, self, registry, field, message);
  if (self->state_.lastTag)
  {
    sub_10016D3EC(-103, @"Unexpected tag read");
  }

  --self->state_.recursionDepth;
  self->state_.currentLimit = currentLimit;
}

- (id)readBytes
{
  v2 = sub_10016D5E8(&self->state_);

  return v2;
}

- (int)readSFixed32
{
  sub_10016D578(&self->state_.bytes, 4);
  bufferPos = self->state_.bufferPos;
  result = *&self->state_.bytes[bufferPos];
  self->state_.bufferPos = bufferPos + 4;
  return result;
}

- (int64_t)readSFixed64
{
  sub_10016D578(&self->state_.bytes, 8);
  bufferPos = self->state_.bufferPos;
  result = *&self->state_.bytes[bufferPos];
  self->state_.bufferPos = bufferPos + 8;
  return result;
}

@end