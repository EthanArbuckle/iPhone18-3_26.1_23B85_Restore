@interface FMDNanoSupportProtoNeedSignatureV5
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation FMDNanoSupportProtoNeedSignatureV5

- (id)description
{
  v7.receiver = self;
  v7.super_class = FMDNanoSupportProtoNeedSignatureV5;
  v3 = [(FMDNanoSupportProtoNeedSignatureV5 *)&v7 description];
  v4 = [(FMDNanoSupportProtoNeedSignatureV5 *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_requestJsonData)
  {
    sub_1002302D4();
  }

  v5 = v4;
  PBDataWriterWriteDataField();
  if (self->_activationLockRequestUUIDString)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  [v4 setRequestJsonData:self->_requestJsonData];
  if (self->_activationLockRequestUUIDString)
  {
    [v4 setActivationLockRequestUUIDString:?];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_requestJsonData copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_activationLockRequestUUIDString copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((requestJsonData = self->_requestJsonData, !(requestJsonData | v4[2])) || -[NSData isEqual:](requestJsonData, "isEqual:")))
  {
    activationLockRequestUUIDString = self->_activationLockRequestUUIDString;
    if (activationLockRequestUUIDString | v4[1])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[2])
  {
    [(FMDNanoSupportProtoNeedSignatureV5 *)self setRequestJsonData:?];
    v4 = v5;
  }

  if (v4[1])
  {
    [(FMDNanoSupportProtoNeedSignatureV5 *)self setActivationLockRequestUUIDString:?];
    v4 = v5;
  }
}

@end