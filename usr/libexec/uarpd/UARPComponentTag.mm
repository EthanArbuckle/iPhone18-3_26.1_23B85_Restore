@interface UARPComponentTag
- (BOOL)isEqual:(id)equal;
- (UARPComponentTag)init;
- (UARPComponentTag)initWithChar1:(char)char1 char2:(char)char2 char3:(char)char3 char4:(char)char4;
- (UARPComponentTag)initWithCoder:(id)coder;
- (UARPComponentTag)initWithString:(id)string;
- (const)decodeCharForKey:(id)key key:(id)a4;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)toLower;
- (void)toUpper;
@end

@implementation UARPComponentTag

- (UARPComponentTag)init
{
  [(UARPComponentTag *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (UARPComponentTag)initWithChar1:(char)char1 char2:(char)char2 char3:(char)char3 char4:(char)char4
{
  v16.receiver = self;
  v16.super_class = UARPComponentTag;
  v10 = [(UARPComponentTag *)&v16 init];
  v11 = v10;
  if (v10)
  {
    v10->_char1 = char1;
    v10->_char2 = char2;
    v10->_char3 = char3;
    v10->_char4 = char4;
    LOBYTE(v15) = char1;
    BYTE1(v15) = char2;
    BYTE2(v15) = char3;
    HIBYTE(v15) = char4;
    v10->_tag = uarpPayloadTagPack(&v15);
    v12 = [NSString stringWithFormat:@"%c%c%c%c", v11->_char1, v11->_char2, v11->_char3, v11->_char4];
    tagString = v11->_tagString;
    v11->_tagString = v12;
  }

  return v11;
}

- (UARPComponentTag)initWithString:(id)string
{
  stringCopy = string;
  if ([stringCopy length] == 4)
  {
    uTF8String = [stringCopy UTF8String];
    self = [(UARPComponentTag *)self initWithChar1:*uTF8String char2:uTF8String[1] char3:uTF8String[2] char4:uTF8String[3]];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (const)decodeCharForKey:(id)key key:(id)a4
{
  v5 = 0;
  result = [key decodeBytesForKey:a4 returnedLength:&v5];
  if (!v5)
  {
    return 0;
  }

  return result;
}

- (UARPComponentTag)initWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = [(UARPComponentTag *)self decodeCharForKey:coderCopy key:@"char1"];
  if (selfCopy)
  {
    v6 = [(UARPComponentTag *)self decodeCharForKey:coderCopy key:@"char2"];
    if (v6 && (v7 = v6, (v8 = [(UARPComponentTag *)self decodeCharForKey:coderCopy key:@"char3"]) != 0) && (v9 = v8, (v10 = [(UARPComponentTag *)self decodeCharForKey:coderCopy key:@"char4"]) != 0))
    {
      self = [(UARPComponentTag *)self initWithChar1:*selfCopy char2:*v7 char3:*v9 char4:*v10];
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBytes:&self->_char1 length:1 forKey:@"char1"];
  [coderCopy encodeBytes:&self->_char2 length:1 forKey:@"char2"];
  [coderCopy encodeBytes:&self->_char3 length:1 forKey:@"char3"];
  [coderCopy encodeBytes:&self->_char4 length:1 forKey:@"char4"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [UARPComponentTag alloc];
  char1 = self->_char1;
  char2 = self->_char2;
  char3 = self->_char3;
  char4 = self->_char4;

  return [(UARPComponentTag *)v4 initWithChar1:char1 char2:char2 char3:char3 char4:char4];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self == equalCopy)
    {
      v10 = 1;
    }

    else
    {
      v5 = equalCopy;
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