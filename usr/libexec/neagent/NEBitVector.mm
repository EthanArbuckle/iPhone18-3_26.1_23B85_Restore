@interface NEBitVector
+ (BOOL)getBitAtIndexWithBitmap:(char *)bitmap bitCount:(unsigned int)count index:(int64_t)index;
+ (void)setBitAtIndexWithBitmap:(char *)bitmap bitCount:(unsigned int)count index:(int64_t)index toValue:(BOOL)value;
- (NEBitVector)initWithBitMap:(char *)map bitmapSize:(unsigned int)size bitCount:(unsigned int)count;
- (void)printBits;
@end

@implementation NEBitVector

- (void)printBits
{
  bitmap = self->_bitmap;
  v6 = +[NSMutableString string];
  v4 = 0;
  if (!self)
  {
    goto LABEL_7;
  }

LABEL_2:
  for (i = self->_bitCount; v4 < i; i = 0)
  {
    [v6 appendFormat:@"%d", (bitmap[v4 >> 3] >> (v4 & 7)) & 1];
    if (((v4 + 1) & 7) == 0)
    {
      [v6 appendString:@" "];
    }

    ++v4;
    if (self)
    {
      goto LABEL_2;
    }

LABEL_7:
    ;
  }
}

- (NEBitVector)initWithBitMap:(char *)map bitmapSize:(unsigned int)size bitCount:(unsigned int)count
{
  v12.receiver = self;
  v12.super_class = NEBitVector;
  v8 = [(NEBitVector *)&v12 init];
  v9 = v8;
  if (v8)
  {
    if (map && count && size >= (count + 7) >> 3)
    {
      v8->_bitmap = map;
      v8->_bitmapSize = size;
      v8->_bitCount = count;
    }

    else
    {
      v10 = ne_log_obj();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v14 = v9;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%@ - initWithBitMap: Invalid params", buf, 0xCu);
      }
    }
  }

  return v9;
}

+ (BOOL)getBitAtIndexWithBitmap:(char *)bitmap bitCount:(unsigned int)count index:(int64_t)index
{
  if (count <= index)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    return (bitmap[index >> 3] >> (index & 7)) & 1;
  }

  return v5;
}

+ (void)setBitAtIndexWithBitmap:(char *)bitmap bitCount:(unsigned int)count index:(int64_t)index toValue:(BOOL)value
{
  if (count > index)
  {
    v6 = index >> 3;
    v7 = 1 << (index & 7);
    if (value)
    {
      v8 = bitmap[v6] | v7;
    }

    else
    {
      v8 = bitmap[v6] & ~v7;
    }

    bitmap[v6] = v8;
  }
}

@end