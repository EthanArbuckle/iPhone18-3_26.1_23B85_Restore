@interface APPBNumericParameter
+ (id)options;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation APPBNumericParameter

+ (id)options
{
  if (qword_1004E6C80 != -1)
  {
    sub_100394534();
  }

  v3 = qword_1004E6C78;

  return v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = APPBNumericParameter;
  v3 = [(APPBNumericParameter *)&v7 description];
  v4 = [(APPBNumericParameter *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  key = self->_key;
  if (key)
  {
    [v3 setObject:key forKey:@"key"];
  }

  v6 = [NSNumber numberWithInt:self->_value];
  [v4 setObject:v6 forKey:@"value"];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_key)
  {
    sub_100394548();
  }

  v5 = v4;
  PBDataWriterWriteStringField();
  PBDataWriterWriteInt32Field();
}

- (void)copyTo:(id)a3
{
  key = self->_key;
  v5 = a3;
  [v5 setKey:key];
  v5[4] = self->_value;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  *(v5 + 4) = self->_value;
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v6 = [v4 isMemberOfClass:objc_opt_class()] && ((key = self->_key, !(key | *(v4 + 1))) || -[NSString isEqual:](key, "isEqual:")) && self->_value == *(v4 + 4);

  return v6;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 1))
  {
    v5 = v4;
    [(APPBNumericParameter *)self setKey:?];
    v4 = v5;
  }

  self->_value = v4[4];
}

@end