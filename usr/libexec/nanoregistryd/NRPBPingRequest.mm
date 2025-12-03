@interface NRPBPingRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation NRPBPingRequest

- (id)description
{
  v7.receiver = self;
  v7.super_class = NRPBPingRequest;
  v3 = [(NRPBPingRequest *)&v7 description];
  dictionaryRepresentation = [(NRPBPingRequest *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [NSNumber numberWithInt:self->_responseIDSPriority];
  [v3 setObject:v4 forKey:@"responseIDSPriority"];

  v5 = [NSNumber numberWithDouble:self->_timeout];
  [v3 setObject:v5 forKey:@"timeout"];

  v6 = [NSNumber numberWithInt:self->_pingType];
  [v3 setObject:v6 forKey:@"pingType"];

  payload = self->_payload;
  if (payload)
  {
    [v3 setObject:payload forKey:@"payload"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  responseIDSPriority = self->_responseIDSPriority;
  PBDataWriterWriteInt32Field();
  timeout = self->_timeout;
  PBDataWriterWriteDoubleField();
  pingType = self->_pingType;
  PBDataWriterWriteInt32Field();
  if (self->_payload)
  {
    PBDataWriterWriteDataField();
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5[7] = self->_responseIDSPriority;
  *(v5 + 1) = *&self->_timeout;
  v5[6] = self->_pingType;
  v6 = [(NSData *)self->_payload copyWithZone:zone];
  v7 = *(v5 + 2);
  *(v5 + 2) = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && self->_responseIDSPriority == *(equalCopy + 7) && self->_timeout == *(equalCopy + 1) && self->_pingType == *(equalCopy + 6))
  {
    payload = self->_payload;
    if (payload | equalCopy[2])
    {
      v6 = [(NSData *)payload isEqual:?];
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

- (unint64_t)hash
{
  timeout = self->_timeout;
  if (timeout < 0.0)
  {
    timeout = -timeout;
  }

  *v2.i64 = floor(timeout + 0.5);
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v5.f64[0] = NAN;
  v5.f64[1] = NAN;
  v3.i64[0] = vbslq_s8(vnegq_f64(v5), v3, v2).i64[0];
  v6 = (timeout - *v2.i64) * 1.84467441e19;
  v7 = 2654435761u * *v3.i64;
  v8 = v7 + v6;
  if (v6 <= 0.0)
  {
    v8 = 2654435761u * *v3.i64;
  }

  v9 = v7 - fabs(v6);
  if (v6 < 0.0)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  v11 = (2654435761 * self->_responseIDSPriority) ^ (2654435761 * self->_pingType);
  return v10 ^ v11 ^ [(NSData *)self->_payload hash];
}

@end