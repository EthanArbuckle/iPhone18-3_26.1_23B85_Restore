@interface BTUUID
+ (id)UUID128:(const char *)a3;
+ (id)UUID128WithString:(id)a3;
+ (id)UUID16:(unsigned __int16)a3;
+ (id)UUIDWithBytes:(const char *)a3 length:(unint64_t)a4;
+ (id)UUIDWithData:(id)a3;
+ (id)UUIDWithLittleEndianBytes:(const char *)a3 length:(unint64_t)a4;
+ (id)randomUUID;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToUUID16:(unsigned __int16)a3;
- (BTUUID)initWithBytes:(const void *)a3 length:(unint64_t)a4;
- (BTUUID)initWithCoder:(id)a3;
- (NSData)swappedData;
- (id)UUID128;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BTUUID

- (BTUUID)initWithBytes:(const void *)a3 length:(unint64_t)a4
{
  if (a4 == 16 || a4 == 2)
  {
    v10.receiver = self;
    v10.super_class = BTUUID;
    v6 = [(BTUUID *)&v10 init];
    if (v6)
    {
      v7 = [NSData dataWithBytes:a3 length:a4];
      [(BTUUID *)v6 setData:v7];
    }

    self = v6;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[BTUUID allocWithZone:?]];
  v5 = [(BTUUID *)self data];
  [(BTUUID *)v4 setData:v5];

  return v4;
}

+ (id)UUIDWithLittleEndianBytes:(const char *)a3 length:(unint64_t)a4
{
  v7 = &v12 - ((a4 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v7, a4);
  if (a4)
  {
    v8 = v7;
    v9 = a4;
    do
    {
      *v8++ = a3[--v9];
    }

    while (v9);
  }

  v10 = [a1 UUIDWithBytes:v7 length:a4];

  return v10;
}

+ (id)UUIDWithData:(id)a3
{
  v4 = a3;
  v5 = [a1 UUIDWithBytes:objc_msgSend(v4 length:{"bytes"), objc_msgSend(v4, "length")}];

  return v5;
}

+ (id)UUIDWithBytes:(const char *)a3 length:(unint64_t)a4
{
  if (a3)
  {
    if (a4 == 16 || a4 == 2)
    {
      v5 = [[a1 alloc] initWithBytes:a3 length:a4];
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

+ (id)UUID16:(unsigned __int16)a3
{
  v5 = __rev16(a3);
  v3 = [[a1 alloc] initWithBytes:&v5 length:2];

  return v3;
}

+ (id)UUID128:(const char *)a3
{
  v3 = [[a1 alloc] initWithBytes:a3 length:16];

  return v3;
}

+ (id)UUID128WithString:(id)a3
{
  v4 = a3;
  memset(uu, 0, sizeof(uu));
  if (uuid_parse([v4 UTF8String], uu))
  {
    v5 = 0;
  }

  else
  {
    v5 = [a1 UUID128:uu];
  }

  return v5;
}

+ (id)randomUUID
{
  memset(out, 0, sizeof(out));
  uuid_generate(out);
  v3 = [a1 UUID128:out];

  return v3;
}

- (id)UUID128
{
  v3 = [(BTUUID *)self data];
  v4 = [v3 length];

  if (v4 == 16)
  {
    v5 = self;
  }

  else
  {
    v6 = [(BTUUID *)self data];
    v7 = [v6 bytes];

    v9 = 0;
    v10 = v7[1];
    v11 = *v7;
    v12 = 0x8000008000100000;
    v13 = -80438433;
    v5 = [BTUUID UUID128:&v9];
  }

  return v5;
}

- (NSData)swappedData
{
  v3 = [(BTUUID *)self data];
  v4 = [v3 length];

  v5 = [NSMutableData dataWithLength:v4];
  v6 = [(BTUUID *)self data];
  v7 = [v6 bytes];

  for (i = [v5 mutableBytes]; v4; --v4)
  {
    *i++ = v4[(v7 - 1)];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(BTUUID *)self data];
  [v5 encodeObject:v4 forKey:@"uuidBytes"];
}

- (BTUUID)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = BTUUID;
  v5 = [(BTUUID *)&v8 init];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"uuidBytes"];
    [(BTUUID *)v5 setData:v6];
  }

  return v5;
}

- (unint64_t)hash
{
  v2 = [(BTUUID *)self data];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(BTUUID *)self data];
    v6 = [v5 length];
    v7 = [v4 data];
    v8 = [v7 length];

    if (v6 == v8)
    {
      v9 = [(BTUUID *)self data];
      v10 = [v4 data];
      v11 = [v9 isEqualToData:v10];
    }

    else
    {
      v9 = [(BTUUID *)self UUID128];
      v10 = [v4 UUID128];
      v11 = [v9 isEqual:v10];
    }

    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)isEqualToUUID16:(unsigned __int16)a3
{
  v3 = a3;
  v5 = [(BTUUID *)self data];
  v6 = [v5 length];

  if (v6 != 2)
  {
    return 0;
  }

  v7 = [(BTUUID *)self data];
  v8 = bswap32(*[v7 bytes]);

  return v3 == HIWORD(v8);
}

- (id)description
{
  v3 = [(BTUUID *)self data];
  v4 = [v3 bytes];

  v5 = [(BTUUID *)self data];
  v6 = [v5 length];

  if (v6 == 2)
  {
    v7 = [NSString stringWithFormat:@"0x%04X", bswap32(*v4) >> 16];
  }

  else
  {
    v8 = [(BTUUID *)self data];
    v9 = [v8 length];

    if (v9 == 16)
    {
      memset(out, 0, 37);
      uuid_unparse_upper(v4, out);
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