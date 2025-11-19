@interface PCNativePrimitiveColor
- (id)initWithString:(id)a3;
@end

@implementation PCNativePrimitiveColor

- (id)initWithString:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && ([v4 length] == 6 || objc_msgSend(v5, "length") == 8))
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