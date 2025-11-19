@interface NRPBPingResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation NRPBPingResponse

- (id)description
{
  v7.receiver = self;
  v7.super_class = NRPBPingResponse;
  v3 = [(NRPBPingResponse *)&v7 description];
  v4 = [(NRPBPingResponse *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [NSNumber numberWithDouble:self->_responseDate];
  [v3 setObject:v4 forKey:@"responseDate"];

  payload = self->_payload;
  if (payload)
  {
    [v3 setObject:payload forKey:@"payload"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  responseDate = self->_responseDate;
  v6 = v4;
  PBDataWriterWriteDoubleField();
  if (self->_payload)
  {
    PBDataWriterWriteDataField();
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5[1] = *&self->_responseDate;
  v6 = [(NSData *)self->_payload copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && self->_responseDate == *(v4 + 1))
  {
    payload = self->_payload;
    if (payload | v4[2])
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
  responseDate = self->_responseDate;
  if (responseDate < 0.0)
  {
    responseDate = -responseDate;
  }

  *v2.i64 = floor(responseDate + 0.5);
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v5.f64[0] = NAN;
  v5.f64[1] = NAN;
  v3.i64[0] = vbslq_s8(vnegq_f64(v5), v3, v2).i64[0];
  v6 = (responseDate - *v2.i64) * 1.84467441e19;
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

  return [(NSData *)self->_payload hash]^ v10;
}

@end