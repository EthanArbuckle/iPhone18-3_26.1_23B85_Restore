@interface PCNativePrimitiveColor
- (id)initWithString:(id)string;
@end

@implementation PCNativePrimitiveColor

- (id)initWithString:(id)string
{
  stringCopy = string;
  v5 = stringCopy;
  if (stringCopy && ([stringCopy length] == 6 || objc_msgSend(v5, "length") == 8))
  {
    v6 = strtol([v5 cStringUsingEncoding:4], 0, 16);
    if ([v5 length] == 6)
    {
      v7 = (v6 << 8) | 0xFF;
    }

    else
    {
      v7 = v6;
    }
  }

  else
  {
    v8 = APLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = 138543362;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Invalid color string: %{public}@", &v11, 0xCu);
    }

    v7 = 0;
  }

  v9 = [(PCNativePrimitiveColor *)self initWithRGBA:v7];

  return v9;
}

@end