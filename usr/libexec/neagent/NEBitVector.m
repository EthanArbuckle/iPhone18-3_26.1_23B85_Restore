@interface NEBitVector
+ (BOOL)getBitAtIndexWithBitmap:(char *)a3 bitCount:(unsigned int)a4 index:(int64_t)a5;
+ (void)setBitAtIndexWithBitmap:(char *)a3 bitCount:(unsigned int)a4 index:(int64_t)a5 toValue:(BOOL)a6;
- (NEBitVector)initWithBitMap:(char *)a3 bitmapSize:(unsigned int)a4 bitCount:(unsigned int)a5;
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

- (NEBitVector)initWithBitMap:(char *)a3 bitmapSize:(unsigned int)a4 bitCount:(unsigned int)a5
{
  v12.receiver = self;
  v12.super_class = NEBitVector;
  v8 = [(NEBitVector *)&v12 init];
  v9 = v8;
  if (v8)
  {
    if (a3 && a5 && a4 >= (a5 + 7) >> 3)
    {
      v8->_bitmap = a3;
      v8->_bitmapSize = a4;
      v8->_bitCount = a5;
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

+ (BOOL)getBitAtIndexWithBitmap:(char *)a3 bitCount:(unsigned int)a4 index:(int64_t)a5
{
  if (a4 <= a5)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    return (a3[a5 >> 3] >> (a5 & 7)) & 1;
  }

  return v5;
}

+ (void)setBitAtIndexWithBitmap:(char *)a3 bitCount:(unsigned int)a4 index:(int64_t)a5 toValue:(BOOL)a6
{
  if (a4 > a5)
  {
    v6 = a5 >> 3;
    v7 = 1 << (a5 & 7);
    if (a6)
    {
      v8 = a3[v6] | v7;
    }

    else
    {
      v8 = a3[v6] & ~v7;
    }

    a3[v6] = v8;
  }
}

@end