@interface APPBNumericParameter
+ (id)options;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
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
  dictionaryRepresentation = [(APPBNumericParameter *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_key)
  {
    sub_100394548();
  }

  v5 = toCopy;
  PBDataWriterWriteStringField();
  PBDataWriterWriteInt32Field();
}

- (void)copyTo:(id)to
{
  key = self->_key;
  toCopy = to;
  [toCopy setKey:key];
  toCopy[4] = self->_value;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  *(v5 + 4) = self->_value;
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = [equalCopy isMemberOfClass:objc_opt_class()] && ((key = self->_key, !(key | *(equalCopy + 1))) || -[NSString isEqual:](key, "isEqual:")) && self->_value == *(equalCopy + 4);

  return v6;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 1))
  {
    v5 = fromCopy;
    [(APPBNumericParameter *)self setKey:?];
    fromCopy = v5;
  }

  self->_value = fromCopy[4];
}

@end