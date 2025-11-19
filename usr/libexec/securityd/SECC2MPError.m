@interface SECC2MPError
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SECC2MPError

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4[3])
  {
    [(SECC2MPError *)self setErrorDomain:?];
    v4 = v7;
  }

  if (v4[5])
  {
    self->_errorCode = v4[1];
    *&self->_has |= 1u;
  }

  if (v4[2])
  {
    [(SECC2MPError *)self setErrorDescription:?];
    v4 = v7;
  }

  underlyingError = self->_underlyingError;
  v6 = v4[4];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  errorDomain = self->_errorDomain;
  if (errorDomain | *(v4 + 3))
  {
    if (![(NSString *)errorDomain isEqual:?])
    {
      goto LABEL_13;
    }
  }

  v6 = *(v4 + 40);
  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_errorCode != *(v4 + 1))
    {
      goto LABEL_13;
    }
  }

  else if (*(v4 + 40))
  {
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  errorDescription = self->_errorDescription;
  if (errorDescription | *(v4 + 2) && ![(NSString *)errorDescription isEqual:?])
  {
    goto LABEL_13;
  }

  underlyingError = self->_underlyingError;
  if (underlyingError | *(v4 + 4))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_errorDomain copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  if (*&self->_has)
  {
    v5[1] = self->_errorCode;
    *(v5 + 40) |= 1u;
  }

  v8 = [(NSString *)self->_errorDescription copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(SECC2MPError *)self->_underlyingError copyWithZone:a3];
  v11 = v5[4];
  v5[4] = v10;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_errorDomain)
  {
    [v4 setErrorDomain:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = self->_errorCode;
    *(v4 + 40) |= 1u;
  }

  if (self->_errorDescription)
  {
    [v5 setErrorDescription:?];
    v4 = v5;
  }

  if (self->_underlyingError)
  {
    [v5 setUnderlyingError:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_errorDomain)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    errorCode = self->_errorCode;
    PBDataWriterWriteInt64Field();
    v4 = v6;
  }

  if (self->_errorDescription)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_underlyingError)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
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
    v9 = [(SECC2MPError *)underlyingError dictionaryRepresentation];
    [v4 setObject:v9 forKey:@"underlying_error"];
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = SECC2MPError;
  v3 = [(SECC2MPError *)&v7 description];
  v4 = [(SECC2MPError *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

@end