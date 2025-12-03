@interface APPBMescalSignSAPSetupResponse
+ (id)options;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation APPBMescalSignSAPSetupResponse

+ (id)options
{
  if (qword_1004E69D8 != -1)
  {
    sub_100393E84();
  }

  v3 = qword_1004E69D0;

  return v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = APPBMescalSignSAPSetupResponse;
  v3 = [(APPBMescalSignSAPSetupResponse *)&v7 description];
  dictionaryRepresentation = [(APPBMescalSignSAPSetupResponse *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

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

- (void)writeTo:(id)to
{
  if (self->_buffer)
  {
    PBDataWriterWriteDataField();
  }
}

- (void)copyTo:(id)to
{
  buffer = self->_buffer;
  if (buffer)
  {
    [to setBuffer:buffer];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_buffer copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    buffer = self->_buffer;
    if (buffer | equalCopy[1])
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

- (void)mergeFrom:(id)from
{
  if (*(from + 1))
  {
    [(APPBMescalSignSAPSetupResponse *)self setBuffer:?];
  }
}

@end