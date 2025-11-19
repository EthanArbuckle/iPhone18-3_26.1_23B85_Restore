@interface NSString
+ (id)ps_stringWithData:(id)a3 encoding:(unint64_t)a4;
+ (id)ps_stringWithSTL:(const void *)a3;
+ (id)ps_stringWithUTF8Data:(id)a3;
- (basic_string<char,)ps_STLString;
- (basic_string<char,)ps_STLStringOnNil:(std::allocator<char>> *__return_ptr)retstr;
- (id)ps_stringWithoutPrefix:(id)a3;
- (id)ps_urlEncode;
@end

@implementation NSString

- (basic_string<char,)ps_STLString
{
  v2 = v1;
  v4 = objc_autoreleasePoolPush();
  v5 = [v2 UTF8String];
  v6 = strlen(v5);
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
    memmove(retstr, v5, v6);
  }

  retstr->__rep_.__s.__data_[v7] = 0;

  objc_autoreleasePoolPop(v4);
  return result;
}

+ (id)ps_stringWithSTL:(const void *)a3
{
  v4 = objc_autoreleasePoolPush();
  if (*(a3 + 23) >= 0)
  {
    v5 = a3;
  }

  else
  {
    v5 = *a3;
  }

  v6 = [NSString stringWithUTF8String:v5];
  objc_autoreleasePoolPop(v4);

  return v6;
}

+ (id)ps_stringWithUTF8Data:(id)a3
{
  v3 = [NSString ps_stringWithData:a3 encoding:4];

  return v3;
}

+ (id)ps_stringWithData:(id)a3 encoding:(unint64_t)a4
{
  v5 = a3;
  v6 = [[NSString alloc] initWithData:v5 encoding:a4];

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

- (id)ps_stringWithoutPrefix:(id)a3
{
  v4 = a3;
  if ([(NSString *)self hasPrefix:v4])
  {
    v5 = -[NSString substringFromIndex:](self, "substringFromIndex:", [v4 length]);
  }

  else
  {
    v5 = self;
  }

  v6 = v5;

  return v6;
}

@end