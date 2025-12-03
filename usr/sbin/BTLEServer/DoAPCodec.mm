@interface DoAPCodec
- (DoAPCodec)initWithID:(unsigned __int16)d;
- (void)setCodec:(id *)codec;
@end

@implementation DoAPCodec

- (DoAPCodec)initWithID:(unsigned __int16)d
{
  v5.receiver = self;
  v5.super_class = DoAPCodec;
  result = [(DoAPCodec *)&v5 init];
  if (result)
  {
    result->_streamid = d;
  }

  return result;
}

- (void)setCodec:(id *)codec
{
  v3 = *&codec->var0;
  *&self->_codec.objectType = *&codec->var9;
  *&self->_codec.type = v3;
}

@end