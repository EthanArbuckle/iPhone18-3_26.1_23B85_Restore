@interface APPBMescalSignSAPSetupRequest
+ (id)options;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation APPBMescalSignSAPSetupRequest

+ (id)options
{
  if (qword_1004E6AE0 != -1)
  {
    sub_10039408C();
  }

  v3 = qword_1004E6AD8;

  return v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = APPBMescalSignSAPSetupRequest;
  v3 = [(APPBMescalSignSAPSetupRequest *)&v7 description];
  v4 = [(APPBMescalSignSAPSetupRequest *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  buffer = self->_buffer;
  if (buffer)
  {
    [v3 setObject:buffer forKey:@"buffer"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  if (self->_buffer)
  {
    PBDataWriterWriteDataField();
  }
}

- (void)copyTo:(id)a3
{
  buffer = self->_buffer;
  if (buffer)
  {
    [a3 setBuffer:buffer];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_buffer copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    buffer = self->_buffer;
    if (buffer | v4[1])
    {
      v6 = [(NSData *)buffer isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 1))
  {
    [(APPBMescalSignSAPSetupRequest *)self setBuffer:?];
  }
}

@end