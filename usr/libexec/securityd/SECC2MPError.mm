@interface SECC2MPError
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SECC2MPError

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v7 = fromCopy;
  if (fromCopy[3])
  {
    [(SECC2MPError *)self setErrorDomain:?];
    fromCopy = v7;
  }

  if (fromCopy[5])
  {
    self->_errorCode = fromCopy[1];
    *&self->_has |= 1u;
  }

  if (fromCopy[2])
  {
    [(SECC2MPError *)self setErrorDescription:?];
    fromCopy = v7;
  }

  underlyingError = self->_underlyingError;
  v6 = fromCopy[4];
  if (underlyingError)
  {
    if (v6)
    {
      [(SECC2MPError *)underlyingError mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(SECC2MPError *)self setUnderlyingError:?];
  }

  _objc_release_x1();
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_errorDomain hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_errorCode;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ v3;
  v6 = [(NSString *)self->_errorDescription hash];
  return v5 ^ v6 ^ [(SECC2MPError *)self->_underlyingError hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  errorDomain = self->_errorDomain;
  if (errorDomain | *(equalCopy + 3))
  {
    if (![(NSString *)errorDomain isEqual:?])
    {
      goto LABEL_13;
    }
  }

  v6 = *(equalCopy + 40);
  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_errorCode != *(equalCopy + 1))
    {
      goto LABEL_13;
    }
  }

  else if (*(equalCopy + 40))
  {
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  errorDescription = self->_errorDescription;
  if (errorDescription | *(equalCopy + 2) && ![(NSString *)errorDescription isEqual:?])
  {
    goto LABEL_13;
  }

  underlyingError = self->_underlyingError;
  if (underlyingError | *(equalCopy + 4))
  {
    v9 = [(SECC2MPError *)underlyingError isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_14:

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_errorDomain copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  if (*&self->_has)
  {
    v5[1] = self->_errorCode;
    *(v5 + 40) |= 1u;
  }

  v8 = [(NSString *)self->_errorDescription copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(SECC2MPError *)self->_underlyingError copyWithZone:zone];
  v11 = v5[4];
  v5[4] = v10;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_errorDomain)
  {
    [toCopy setErrorDomain:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = self->_errorCode;
    *(toCopy + 40) |= 1u;
  }

  if (self->_errorDescription)
  {
    [v5 setErrorDescription:?];
    toCopy = v5;
  }

  if (self->_underlyingError)
  {
    [v5 setUnderlyingError:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_errorDomain)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    errorCode = self->_errorCode;
    PBDataWriterWriteInt64Field();
    toCopy = v6;
  }

  if (self->_errorDescription)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_underlyingError)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  errorDomain = self->_errorDomain;
  if (errorDomain)
  {
    [v3 setObject:errorDomain forKey:@"error_domain"];
  }

  if (*&self->_has)
  {
    v6 = [NSNumber numberWithLongLong:self->_errorCode];
    [v4 setObject:v6 forKey:@"error_code"];
  }

  errorDescription = self->_errorDescription;
  if (errorDescription)
  {
    [v4 setObject:errorDescription forKey:@"error_description"];
  }

  underlyingError = self->_underlyingError;
  if (underlyingError)
  {
    dictionaryRepresentation = [(SECC2MPError *)underlyingError dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"underlying_error"];
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = SECC2MPError;
  v3 = [(SECC2MPError *)&v7 description];
  dictionaryRepresentation = [(SECC2MPError *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

@end