@interface BTUUID
+ (id)UUID128:(const char *)d128;
+ (id)UUID128WithString:(id)string;
+ (id)UUID16:(unsigned __int16)d16;
+ (id)UUIDWithBytes:(const char *)bytes length:(unint64_t)length;
+ (id)UUIDWithData:(id)data;
+ (id)UUIDWithLittleEndianBytes:(const char *)bytes length:(unint64_t)length;
+ (id)randomUUID;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToUUID16:(unsigned __int16)d16;
- (BTUUID)initWithBytes:(const void *)bytes length:(unint64_t)length;
- (BTUUID)initWithCoder:(id)coder;
- (NSData)swappedData;
- (id)UUID128;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BTUUID

- (BTUUID)initWithBytes:(const void *)bytes length:(unint64_t)length
{
  if (length == 16 || length == 2)
  {
    v10.receiver = self;
    v10.super_class = BTUUID;
    v6 = [(BTUUID *)&v10 init];
    if (v6)
    {
      v7 = [NSData dataWithBytes:bytes length:length];
      [(BTUUID *)v6 setData:v7];
    }

    self = v6;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[BTUUID allocWithZone:?]];
  data = [(BTUUID *)self data];
  [(BTUUID *)v4 setData:data];

  return v4;
}

+ (id)UUIDWithLittleEndianBytes:(const char *)bytes length:(unint64_t)length
{
  v7 = &v12 - ((length + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v7, length);
  if (length)
  {
    v8 = v7;
    lengthCopy = length;
    do
    {
      *v8++ = bytes[--lengthCopy];
    }

    while (lengthCopy);
  }

  v10 = [self UUIDWithBytes:v7 length:length];

  return v10;
}

+ (id)UUIDWithData:(id)data
{
  dataCopy = data;
  v5 = [self UUIDWithBytes:objc_msgSend(dataCopy length:{"bytes"), objc_msgSend(dataCopy, "length")}];

  return v5;
}

+ (id)UUIDWithBytes:(const char *)bytes length:(unint64_t)length
{
  if (bytes)
  {
    if (length == 16 || length == 2)
    {
      v5 = [[self alloc] initWithBytes:bytes length:length];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)UUID16:(unsigned __int16)d16
{
  v5 = __rev16(d16);
  v3 = [[self alloc] initWithBytes:&v5 length:2];

  return v3;
}

+ (id)UUID128:(const char *)d128
{
  v3 = [[self alloc] initWithBytes:d128 length:16];

  return v3;
}

+ (id)UUID128WithString:(id)string
{
  stringCopy = string;
  memset(uu, 0, sizeof(uu));
  if (uuid_parse([stringCopy UTF8String], uu))
  {
    v5 = 0;
  }

  else
  {
    v5 = [self UUID128:uu];
  }

  return v5;
}

+ (id)randomUUID
{
  memset(out, 0, sizeof(out));
  uuid_generate(out);
  v3 = [self UUID128:out];

  return v3;
}

- (id)UUID128
{
  data = [(BTUUID *)self data];
  v4 = [data length];

  if (v4 == 16)
  {
    selfCopy = self;
  }

  else
  {
    data2 = [(BTUUID *)self data];
    bytes = [data2 bytes];

    v9 = 0;
    v10 = bytes[1];
    v11 = *bytes;
    v12 = 0x8000008000100000;
    v13 = -80438433;
    selfCopy = [BTUUID UUID128:&v9];
  }

  return selfCopy;
}

- (NSData)swappedData
{
  data = [(BTUUID *)self data];
  v4 = [data length];

  v5 = [NSMutableData dataWithLength:v4];
  data2 = [(BTUUID *)self data];
  bytes = [data2 bytes];

  for (i = [v5 mutableBytes]; v4; --v4)
  {
    *i++ = v4[(bytes - 1)];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(BTUUID *)self data];
  [coderCopy encodeObject:data forKey:@"uuidBytes"];
}

- (BTUUID)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = BTUUID;
  v5 = [(BTUUID *)&v8 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"uuidBytes"];
    [(BTUUID *)v5 setData:v6];
  }

  return v5;
}

- (unint64_t)hash
{
  data = [(BTUUID *)self data];
  v3 = [data hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    data = [(BTUUID *)self data];
    v6 = [data length];
    data2 = [equalCopy data];
    v8 = [data2 length];

    if (v6 == v8)
    {
      data3 = [(BTUUID *)self data];
      data4 = [equalCopy data];
      v11 = [data3 isEqualToData:data4];
    }

    else
    {
      data3 = [(BTUUID *)self UUID128];
      data4 = [equalCopy UUID128];
      v11 = [data3 isEqual:data4];
    }

    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)isEqualToUUID16:(unsigned __int16)d16
{
  d16Copy = d16;
  data = [(BTUUID *)self data];
  v6 = [data length];

  if (v6 != 2)
  {
    return 0;
  }

  data2 = [(BTUUID *)self data];
  v8 = bswap32(*[data2 bytes]);

  return d16Copy == HIWORD(v8);
}

- (id)description
{
  data = [(BTUUID *)self data];
  bytes = [data bytes];

  data2 = [(BTUUID *)self data];
  v6 = [data2 length];

  if (v6 == 2)
  {
    v7 = [NSString stringWithFormat:@"0x%04X", bswap32(*bytes) >> 16];
  }

  else
  {
    data3 = [(BTUUID *)self data];
    v9 = [data3 length];

    if (v9 == 16)
    {
      memset(out, 0, 37);
      uuid_unparse_upper(bytes, out);
      v7 = [NSString stringWithUTF8String:out];
    }

    else
    {
      v7 = @"<>";
    }
  }

  return v7;
}

@end