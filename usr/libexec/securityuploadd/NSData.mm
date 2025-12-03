@interface NSData
- (id)supd_gzipDeflate;
@end

@implementation NSData

- (id)supd_gzipDeflate
{
  if ([(NSData *)self length])
  {
    memset(&v9.total_out, 0, 72);
    v9.avail_in = [(NSData *)self length:[(NSData *)self bytes]];
    selfCopy = 0;
    if (!deflateInit2_(&v9, 9, 8, 31, 9, 0, "1.2.12", 112))
    {
      v4 = [NSMutableData dataWithLength:0x4000];
      do
      {
        total_out = v9.total_out;
        if (total_out >= [v4 length])
        {
          [v4 increaseLengthBy:0x4000];
        }

        mutableBytes = [v4 mutableBytes];
        v9.next_out = &mutableBytes[v9.total_out];
        v7 = [v4 length];
        v9.avail_out = v7 - LODWORD(v9.total_out);
        deflate(&v9, 4);
      }

      while (!v9.avail_out);
      deflateEnd(&v9);
      [v4 setLength:v9.total_out];
      if (v9.avail_in)
      {
        selfCopy = 0;
      }

      else
      {
        selfCopy = [NSData dataWithData:v4];
      }
    }
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

@end