@interface APPBGeofence
+ (id)options;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation APPBGeofence

+ (id)options
{
  if (qword_1004E69A8 != -1)
  {
    sub_100393B34();
  }

  v3 = qword_1004E69A0;

  return v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = APPBGeofence;
  v3 = [(APPBGeofence *)&v7 description];
  v4 = [(APPBGeofence *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [NSNumber numberWithDouble:self->_latitude];
  [v3 setObject:v4 forKey:@"latitude"];

  v5 = [NSNumber numberWithDouble:self->_longitude];
  [v3 setObject:v5 forKey:@"longitude"];

  v6 = [NSNumber numberWithDouble:self->_radius];
  [v3 setObject:v6 forKey:@"radius"];

  return v3;
}

- (void)writeTo:(id)a3
{
  v3 = a3;
  PBDataWriterWriteDoubleField();
  PBDataWriterWriteDoubleField();
  PBDataWriterWriteDoubleField();
}

- (void)copyTo:(id)a3
{
  *(a3 + 1) = *&self->_latitude;
  *(a3 + 2) = *&self->_longitude;
  *(a3 + 3) = *&self->_radius;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(result + 1) = *&self->_latitude;
  *(result + 2) = *&self->_longitude;
  *(result + 3) = *&self->_radius;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [v4 isMemberOfClass:objc_opt_class()] && self->_latitude == v4[1] && self->_longitude == v4[2] && self->_radius == v4[3];

  return v5;
}

- (unint64_t)hash
{
  latitude = self->_latitude;
  v7 = -latitude;
  if (latitude >= 0.0)
  {
    v7 = self->_latitude;
  }

  *v3.i64 = floor(v7 + 0.5);
  v8 = (v7 - *v3.i64) * 1.84467441e19;
  *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
  v9.f64[0] = NAN;
  v9.f64[1] = NAN;
  v10 = vnegq_f64(v9);
  v11 = 2654435761u * *vbslq_s8(v10, v4, v3).i64;
  v12 = v11 + v8;
  v13 = fabs(v8);
  if (v8 <= 0.0)
  {
    v12 = v11;
  }

  v14 = v11 - v13;
  if (v8 >= 0.0)
  {
    v14 = v12;
  }

  longitude = self->_longitude;
  if (longitude < 0.0)
  {
    longitude = -longitude;
  }

  *v4.i64 = floor(longitude + 0.5);
  v16 = longitude - *v4.i64;
  *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
  v17 = vbslq_s8(v10, v5, v4);
  v18 = v16 * 1.84467441e19;
  v19 = 2654435761u * *v17.i64;
  v20 = v19 + v18;
  if (v18 <= 0.0)
  {
    v20 = 2654435761u * *v17.i64;
  }

  v21 = v19 - fabs(v18);
  if (v18 >= 0.0)
  {
    v21 = v20;
  }

  radius = self->_radius;
  if (radius < 0.0)
  {
    radius = -radius;
  }

  *v2.i64 = floor(radius + 0.5);
  v23 = (radius - *v2.i64) * 1.84467441e19;
  *v17.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v24 = 2654435761u * *vbslq_s8(v10, v17, v2).i64;
  v25 = v24 + v23;
  v26 = fabs(v23);
  if (v23 <= 0.0)
  {
    v25 = v24;
  }

  v27 = v24 - v26;
  if (v23 >= 0.0)
  {
    v27 = v25;
  }

  return v21 ^ v14 ^ v27;
}

- (void)mergeFrom:(id)a3
{
  self->_latitude = *(a3 + 1);
  self->_longitude = *(a3 + 2);
  self->_radius = *(a3 + 3);
}

@end