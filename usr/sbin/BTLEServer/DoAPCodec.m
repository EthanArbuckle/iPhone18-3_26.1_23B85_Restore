@interface DoAPCodec
- (DoAPCodec)initWithID:(unsigned __int16)a3;
- (void)setCodec:(id *)a3;
@end

@implementation DoAPCodec

- (DoAPCodec)initWithID:(unsigned __int16)a3
{
  v5.receiver = self;
  v5.super_class = DoAPCodec;
  result = [(DoAPCodec *)&v5 init];
  if (result)
  {
    result->_streamid = a3;
  }

  return result;
}

- (void)setCodec:(id *)a3
{
  v3 = *&a3->var0;
  *&self->_codec.objectType = *&a3->var9;
  *&self->_codec.type = v3;
}

@end