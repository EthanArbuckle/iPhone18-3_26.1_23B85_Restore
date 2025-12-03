@interface FMDNanoSupportProtoNeedSignatureV4
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation FMDNanoSupportProtoNeedSignatureV4

- (id)description
{
  v7.receiver = self;
  v7.super_class = FMDNanoSupportProtoNeedSignatureV4;
  v3 = [(FMDNanoSupportProtoNeedSignatureV4 *)&v7 description];
  dictionaryRepresentation = [(FMDNanoSupportProtoNeedSignatureV4 *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  requestJsonData = self->_requestJsonData;
  if (requestJsonData)
  {
    [v3 setObject:requestJsonData forKey:@"request_json_data"];
  }

  activationLockRequestUUIDString = self->_activationLockRequestUUIDString;
  if (activationLockRequestUUIDString)
  {
    [v4 setObject:activationLockRequestUUIDString forKey:@"activationLockRequestUUIDString"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_requestJsonData)
  {
    sub_1002302A8();
  }

  v5 = toCopy;
  PBDataWriterWriteDataField();
  if (self->_activationLockRequestUUIDString)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setRequestJsonData:self->_requestJsonData];
  if (self->_activationLockRequestUUIDString)
  {
    [toCopy setActivationLockRequestUUIDString:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_requestJsonData copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_activationLockRequestUUIDString copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((requestJsonData = self->_requestJsonData, !(requestJsonData | equalCopy[2])) || -[NSData isEqual:](requestJsonData, "isEqual:")))
  {
    activationLockRequestUUIDString = self->_activationLockRequestUUIDString;
    if (activationLockRequestUUIDString | equalCopy[1])
    {
      v7 = [(NSString *)activationLockRequestUUIDString isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[2])
  {
    [(FMDNanoSupportProtoNeedSignatureV4 *)self setRequestJsonData:?];
    fromCopy = v5;
  }

  if (fromCopy[1])
  {
    [(FMDNanoSupportProtoNeedSignatureV4 *)self setActivationLockRequestUUIDString:?];
    fromCopy = v5;
  }
}

@end