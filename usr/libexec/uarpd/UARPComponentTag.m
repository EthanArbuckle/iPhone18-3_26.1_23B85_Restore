@interface UARPComponentTag
- (BOOL)isEqual:(id)a3;
- (UARPComponentTag)init;
- (UARPComponentTag)initWithChar1:(char)a3 char2:(char)a4 char3:(char)a5 char4:(char)a6;
- (UARPComponentTag)initWithCoder:(id)a3;
- (UARPComponentTag)initWithString:(id)a3;
- (const)decodeCharForKey:(id)a3 key:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)toLower;
- (void)toUpper;
@end

@implementation UARPComponentTag

- (UARPComponentTag)init
{
  [(UARPComponentTag *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (UARPComponentTag)initWithChar1:(char)a3 char2:(char)a4 char3:(char)a5 char4:(char)a6
{
  v16.receiver = self;
  v16.super_class = UARPComponentTag;
  v10 = [(UARPComponentTag *)&v16 init];
  v11 = v10;
  if (v10)
  {
    v10->_char1 = a3;
    v10->_char2 = a4;
    v10->_char3 = a5;
    v10->_char4 = a6;
    LOBYTE(v15) = a3;
    BYTE1(v15) = a4;
    BYTE2(v15) = a5;
    HIBYTE(v15) = a6;
    v10->_tag = uarpPayloadTagPack(&v15);
    v12 = [NSString stringWithFormat:@"%c%c%c%c", v11->_char1, v11->_char2, v11->_char3, v11->_char4];
    tagString = v11->_tagString;
    v11->_tagString = v12;
  }

  return v11;
}

- (UARPComponentTag)initWithString:(id)a3
{
  v4 = a3;
  if ([v4 length] == 4)
  {
    v5 = [v4 UTF8String];
    self = [(UARPComponentTag *)self initWithChar1:*v5 char2:v5[1] char3:v5[2] char4:v5[3]];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (const)decodeCharForKey:(id)a3 key:(id)a4
{
  v5 = 0;
  result = [a3 decodeBytesForKey:a4 returnedLength:&v5];
  if (!v5)
  {
    return 0;
  }

  return result;
}

- (UARPComponentTag)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(UARPComponentTag *)self decodeCharForKey:v4 key:@"char1"];
  if (v5)
  {
    v6 = [(UARPComponentTag *)self decodeCharForKey:v4 key:@"char2"];
    if (v6 && (v7 = v6, (v8 = [(UARPComponentTag *)self decodeCharForKey:v4 key:@"char3"]) != 0) && (v9 = v8, (v10 = [(UARPComponentTag *)self decodeCharForKey:v4 key:@"char4"]) != 0))
    {
      self = [(UARPComponentTag *)self initWithChar1:*v5 char2:*v7 char3:*v9 char4:*v10];
      v5 = self;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBytes:&self->_char1 length:1 forKey:@"char1"];
  [v4 encodeBytes:&self->_char2 length:1 forKey:@"char2"];
  [v4 encodeBytes:&self->_char3 length:1 forKey:@"char3"];
  [v4 encodeBytes:&self->_char4 length:1 forKey:@"char4"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [UARPComponentTag alloc];
  char1 = self->_char1;
  char2 = self->_char2;
  char3 = self->_char3;
  char4 = self->_char4;

  return [(UARPComponentTag *)v4 initWithChar1:char1 char2:char2 char3:char3 char4:char4];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self == v4)
    {
      v10 = 1;
    }

    else
    {
      v5 = v4;
      char1 = self->_char1;
      if (char1 == [(UARPComponentTag *)v5 char1]&& (char2 = self->_char2, char2 == [(UARPComponentTag *)v5 char2]) && (char3 = self->_char3, char3 == [(UARPComponentTag *)v5 char3]))
      {
        char4 = self->_char4;
        v10 = char4 == [(UARPComponentTag *)v5 char4];
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)toUpper
{
  self->_char1 = __toupper(self->_char1);
  self->_char2 = __toupper(self->_char2);
  self->_char3 = __toupper(self->_char3);
  self->_char4 = __toupper(self->_char4);
}

- (void)toLower
{
  self->_char1 = __tolower(self->_char1);
  self->_char2 = __tolower(self->_char2);
  self->_char3 = __tolower(self->_char3);
  self->_char4 = __tolower(self->_char4);
}

@end