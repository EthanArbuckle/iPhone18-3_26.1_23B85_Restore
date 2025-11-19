@interface FMDNanoSupportProtoLostModeExitAuth
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation FMDNanoSupportProtoLostModeExitAuth

- (id)description
{
  v7.receiver = self;
  v7.super_class = FMDNanoSupportProtoLostModeExitAuth;
  v3 = [(FMDNanoSupportProtoLostModeExitAuth *)&v7 description];
  v4 = [(FMDNanoSupportProtoLostModeExitAuth *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [NSNumber numberWithBool:self->_errorOccurred];
  [v3 setObject:v4 forKey:@"error_occurred"];

  lostModeExitAuthToken = self->_lostModeExitAuthToken;
  if (lostModeExitAuthToken)
  {
    [v3 setObject:lostModeExitAuthToken forKey:@"lostModeExitAuthToken"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  errorOccurred = self->_errorOccurred;
  v6 = v4;
  PBDataWriterWriteBOOLField();
  if (self->_lostModeExitAuthToken)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)a3
{
  *(a3 + 16) = self->_errorOccurred;
  lostModeExitAuthToken = self->_lostModeExitAuthToken;
  if (lostModeExitAuthToken)
  {
    [a3 setLostModeExitAuthToken:lostModeExitAuthToken];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5[16] = self->_errorOccurred;
  v6 = [(NSString *)self->_lostModeExitAuthToken copyWithZone:a3];
  v7 = *(v5 + 1);
  *(v5 + 1) = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_4;
  }

  v5 = *(v4 + 16);
  if (self->_errorOccurred)
  {
    if ((*(v4 + 16) & 1) == 0)
    {
LABEL_4:
      v6 = 0;
      goto LABEL_5;
    }
  }

  else if (*(v4 + 16))
  {
    goto LABEL_4;
  }

  lostModeExitAuthToken = self->_lostModeExitAuthToken;
  if (lostModeExitAuthToken | *(v4 + 1))
  {
    v6 = [(NSString *)lostModeExitAuthToken isEqual:?];
  }

  else
  {
    v6 = 1;
  }

LABEL_5:

  return v6;
}

- (void)mergeFrom:(id)a3
{
  self->_errorOccurred = *(a3 + 16);
  if (*(a3 + 1))
  {
    [(FMDNanoSupportProtoLostModeExitAuth *)self setLostModeExitAuthToken:?];
  }
}

@end