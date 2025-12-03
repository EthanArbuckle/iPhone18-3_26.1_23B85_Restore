@interface FMDNanoSupportProtoLostModeExitAuth
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation FMDNanoSupportProtoLostModeExitAuth

- (id)description
{
  v7.receiver = self;
  v7.super_class = FMDNanoSupportProtoLostModeExitAuth;
  v3 = [(FMDNanoSupportProtoLostModeExitAuth *)&v7 description];
  dictionaryRepresentation = [(FMDNanoSupportProtoLostModeExitAuth *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  errorOccurred = self->_errorOccurred;
  v6 = toCopy;
  PBDataWriterWriteBOOLField();
  if (self->_lostModeExitAuthToken)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)to
{
  *(to + 16) = self->_errorOccurred;
  lostModeExitAuthToken = self->_lostModeExitAuthToken;
  if (lostModeExitAuthToken)
  {
    [to setLostModeExitAuthToken:lostModeExitAuthToken];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5[16] = self->_errorOccurred;
  v6 = [(NSString *)self->_lostModeExitAuthToken copyWithZone:zone];
  v7 = *(v5 + 1);
  *(v5 + 1) = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_4;
  }

  v5 = *(equalCopy + 16);
  if (self->_errorOccurred)
  {
    if ((*(equalCopy + 16) & 1) == 0)
    {
LABEL_4:
      v6 = 0;
      goto LABEL_5;
    }
  }

  else if (*(equalCopy + 16))
  {
    goto LABEL_4;
  }

  lostModeExitAuthToken = self->_lostModeExitAuthToken;
  if (lostModeExitAuthToken | *(equalCopy + 1))
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

- (void)mergeFrom:(id)from
{
  self->_errorOccurred = *(from + 16);
  if (*(from + 1))
  {
    [(FMDNanoSupportProtoLostModeExitAuth *)self setLostModeExitAuthToken:?];
  }
}

@end