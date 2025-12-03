@interface NSString
+ (id)ps_stringWithData:(id)data encoding:(unint64_t)encoding;
+ (id)ps_stringWithSTL:(const void *)l;
+ (id)ps_stringWithUTF8Data:(id)data;
- (basic_string<char,)ps_STLString;
- (basic_string<char,)ps_STLStringOnNil:(std::allocator<char>> *__return_ptr)retstr;
- (id)ps_stringWithoutPrefix:(id)prefix;
- (id)ps_urlEncode;
@end

@implementation NSString

- (basic_string<char,)ps_STLString
{
  v2 = v1;
  v4 = objc_autoreleasePoolPush();
  uTF8String = [v2 UTF8String];
  v6 = strlen(uTF8String);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_10000D39C();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  *(&retstr->__rep_.__l + 23) = v6;
  if (v6)
  {
    memmove(retstr, uTF8String, v6);
  }

  retstr->__rep_.__s.__data_[v7] = 0;

  objc_autoreleasePoolPop(v4);
  return result;
}

+ (id)ps_stringWithSTL:(const void *)l
{
  v4 = objc_autoreleasePoolPush();
  if (*(l + 23) >= 0)
  {
    lCopy = l;
  }

  else
  {
    lCopy = *l;
  }

  v6 = [NSString stringWithUTF8String:lCopy];
  objc_autoreleasePoolPop(v4);

  return v6;
}

+ (id)ps_stringWithUTF8Data:(id)data
{
  v3 = [NSString ps_stringWithData:data encoding:4];

  return v3;
}

+ (id)ps_stringWithData:(id)data encoding:(unint64_t)encoding
{
  dataCopy = data;
  v6 = [[NSString alloc] initWithData:dataCopy encoding:encoding];

  return v6;
}

- (basic_string<char,)ps_STLStringOnNil:(std::allocator<char>> *__return_ptr)retstr
{
  v3 = v1;
  v7 = v2;
  if (v3 || (v3 = v7) != 0)
  {
    [v3 ps_STLString];
    v5 = v7;
  }

  else
  {
    retstr->__rep_.__l.__data_ = 0;
    retstr->__rep_.__l.__size_ = 0;
    *(&retstr->__rep_.__l + 2) = 0;
    v5 = 0;
  }

  return result;
}

- (id)ps_urlEncode
{
  v2 = CFURLCreateStringByAddingPercentEscapes(kCFAllocatorDefault, self, 0, @"!*'();:@&=+$,/?%#[]% ", 0x8000100u);

  return v2;
}

- (id)ps_stringWithoutPrefix:(id)prefix
{
  prefixCopy = prefix;
  if ([(NSString *)self hasPrefix:prefixCopy])
  {
    selfCopy = -[NSString substringFromIndex:](self, "substringFromIndex:", [prefixCopy length]);
  }

  else
  {
    selfCopy = self;
  }

  v6 = selfCopy;

  return v6;
}

@end