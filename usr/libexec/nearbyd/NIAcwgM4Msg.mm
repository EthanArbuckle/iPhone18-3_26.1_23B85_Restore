@interface NIAcwgM4Msg
+ (id)fromStruct:(AcwgM4MsgStruct *)struct;
- (AcwgM4MsgStruct)toStruct;
- (NIAcwgM4Msg)initWithCoder:(id)coder;
- (NIAcwgM4Msg)initWithStsIndex0:(unsigned int)index0 uwbTime0:(unint64_t)time0 hopKey:(unsigned int)key selectedSyncCodeIndex:(unsigned __int8)index;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NIAcwgM4Msg

- (NIAcwgM4Msg)initWithStsIndex0:(unsigned int)index0 uwbTime0:(unint64_t)time0 hopKey:(unsigned int)key selectedSyncCodeIndex:(unsigned __int8)index
{
  v11.receiver = self;
  v11.super_class = NIAcwgM4Msg;
  result = [(NIAcwgM4Msg *)&v11 init];
  if (result)
  {
    result->_uwbTime0 = time0;
    result->_stsIndex0 = index0;
    result->_hopKey = key;
    result->_selectedSyncCodeIndex = index;
  }

  return result;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSMutableString stringWithFormat:@"<%@:\n", v4];

  [v5 appendFormat:@"stsIndex0:%u\n", self->_stsIndex0];
  [v5 appendFormat:@"uwbTime0:%llu\n", self->_uwbTime0];
  [v5 appendFormat:@"hopKey:%u\n", self->_hopKey];
  [v5 appendFormat:@"selectedSyncCodeIndex:%u>", self->_selectedSyncCodeIndex];

  return v5;
}

- (AcwgM4MsgStruct)toStruct
{
  v3 = *&self[1].var0;
  var2 = self->var2;
  var1 = self->var1;
  retstr->var0 = HIDWORD(self->var1);
  retstr->var1 = v3;
  retstr->var2 = var2;
  retstr->var3 = var1;
  return self;
}

+ (id)fromStruct:(AcwgM4MsgStruct *)struct
{
  v3 = [[self alloc] initWithStsIndex0:struct->var0 uwbTime0:struct->var1 hopKey:struct->var2 selectedSyncCodeIndex:struct->var3];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  uwbTime0 = self->_uwbTime0;
  stsIndex0 = self->_stsIndex0;
  hopKey = self->_hopKey;
  selectedSyncCodeIndex = self->_selectedSyncCodeIndex;

  return [v4 initWithStsIndex0:stsIndex0 uwbTime0:uwbTime0 hopKey:hopKey selectedSyncCodeIndex:selectedSyncCodeIndex];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt64:self->_stsIndex0 forKey:@"stsIndex0"];
  [coderCopy encodeInt64:self->_uwbTime0 forKey:@"uwbTime0"];
  [coderCopy encodeInt64:self->_hopKey forKey:@"hopKey"];
  [coderCopy encodeInt:self->_selectedSyncCodeIndex forKey:@"selectedSyncCodeIndex"];
}

- (NIAcwgM4Msg)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = coderCopy;
  if (self)
  {
    self->_stsIndex0 = [coderCopy decodeInt64ForKey:@"stsIndex0"];
    self->_uwbTime0 = [v5 decodeInt64ForKey:@"uwbTime0"];
    self->_hopKey = [v5 decodeInt64ForKey:@"hopKey"];
    self->_selectedSyncCodeIndex = [v5 decodeIntForKey:@"selectedSyncCodeIndex"];
  }

  return self;
}

@end