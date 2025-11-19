@interface APPBAdEvent
+ (id)options;
- (BOOL)isEqual:(id)a3;
- (id)connectionTypeAsString:(int)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)deviceOrientationAsString:(int)a3;
- (id)dictionaryRepresentation;
- (id)originAsString:(int)a3;
- (int)StringAsConnectionType:(id)a3;
- (int)StringAsDeviceOrientation:(id)a3;
- (int)StringAsOrigin:(id)a3;
- (int)connectionType;
- (int)deviceOrientation;
- (int)origin;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasConnectionType:(BOOL)a3;
- (void)setHasDeviceOrientation:(BOOL)a3;
- (void)setHasOrigin:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation APPBAdEvent

+ (id)options
{
  if (qword_1004E6C90 != -1)
  {
    sub_100394574();
  }

  v3 = qword_1004E6C88;

  return v3;
}

- (int)deviceOrientation
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_deviceOrientation;
  }

  else
  {
    return 0;
  }
}

- (void)setHasDeviceOrientation:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (id)deviceOrientationAsString:(int)a3
{
  if (a3 >= 7)
  {
    v4 = [NSString stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    v4 = *(&off_10047DEE0 + a3);
  }

  return v4;
}

- (int)StringAsDeviceOrientation:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Portrait"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"PortraitUpsideDown"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"LandscapeLeft"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"LandscapeRight"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"FaceUp"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"FaceDown"])
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)connectionType
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_connectionType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasConnectionType:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)connectionTypeAsString:(int)a3
{
  if (a3 >= 0xB)
  {
    v4 = [NSString stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    v4 = *(&off_10047DF18 + a3);
  }

  return v4;
}

- (int)StringAsConnectionType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UnknownConnection"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"None"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"WiFi"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Cellular_2_G"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"Cellular_2_5G"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"Cellular_3_G"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"Cellular_3_5G"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"Cellular_3_75G"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"Cellular_H_Plus"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"Cellular_4G"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"Cellular_5G"])
  {
    v4 = 10;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)origin
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_origin;
  }

  else
  {
    return 1;
  }
}

- (void)setHasOrigin:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (id)originAsString:(int)a3
{
  if (a3 == 1)
  {
    v4 = @"Storyboard";
  }

  else if (a3 == 2)
  {
    v4 = @"Banner";
  }

  else
  {
    v4 = [NSString stringWithFormat:@"(unknown: %i)", *&a3];
  }

  return v4;
}

- (int)StringAsOrigin:(id)a3
{
  v3 = a3;
  v4 = 1;
  if (([v3 isEqualToString:@"Storyboard"] & 1) == 0)
  {
    if ([v3 isEqualToString:@"Banner"])
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = APPBAdEvent;
  v3 = [(APPBAdEvent *)&v7 description];
  v4 = [(APPBAdEvent *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if (*&self->_has)
  {
    v4 = [NSNumber numberWithDouble:self->_timestampEvent];
    [v3 setObject:v4 forKey:@"timestampEvent"];
  }

  context = self->_context;
  if (context)
  {
    [v3 setObject:context forKey:@"context"];
  }

  has = self->_has;
  if ((has & 4) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_7;
    }

LABEL_13:
    connectionType = self->_connectionType;
    if (connectionType >= 0xB)
    {
      v10 = [NSString stringWithFormat:@"(unknown: %i)", self->_connectionType];
    }

    else
    {
      v10 = *(&off_10047DF18 + connectionType);
    }

    [v3 setObject:v10 forKey:@"connectionType"];

    if ((*&self->_has & 8) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_17;
  }

  deviceOrientation = self->_deviceOrientation;
  if (deviceOrientation >= 7)
  {
    v8 = [NSString stringWithFormat:@"(unknown: %i)", self->_deviceOrientation];
  }

  else
  {
    v8 = *(&off_10047DEE0 + deviceOrientation);
  }

  [v3 setObject:v8 forKey:@"deviceOrientation"];

  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  if ((has & 8) != 0)
  {
LABEL_17:
    origin = self->_origin;
    if (origin == 1)
    {
      v12 = @"Storyboard";
    }

    else if (origin == 2)
    {
      v12 = @"Banner";
    }

    else
    {
      v12 = [NSString stringWithFormat:@"(unknown: %i)", self->_origin];
    }

    [v3 setObject:v12 forKey:@"origin"];
  }

LABEL_23:

  return v3;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  if (*&self->_has)
  {
    PBDataWriterWriteDoubleField();
  }

  if (self->_context)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 8) != 0)
  {
LABEL_8:
    PBDataWriterWriteInt32Field();
  }

LABEL_9:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[1] = *&self->_timestampEvent;
    *(v4 + 40) |= 1u;
  }

  if (self->_context)
  {
    v6 = v4;
    [v4 setContext:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v4 + 8) = self->_deviceOrientation;
    *(v4 + 40) |= 4u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

  *(v4 + 4) = self->_connectionType;
  *(v4 + 40) |= 2u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_8:
    *(v4 + 9) = self->_origin;
    *(v4 + 40) |= 8u;
  }

LABEL_9:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    v5[1] = *&self->_timestampEvent;
    *(v5 + 40) |= 1u;
  }

  v7 = [(NSString *)self->_context copyWithZone:a3];
  v8 = v6[3];
  v6[3] = v7;

  has = self->_has;
  if ((has & 4) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    *(v6 + 4) = self->_connectionType;
    *(v6 + 40) |= 2u;
    if ((*&self->_has & 8) == 0)
    {
      return v6;
    }

    goto LABEL_6;
  }

  *(v6 + 8) = self->_deviceOrientation;
  *(v6 + 40) |= 4u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  if ((has & 8) != 0)
  {
LABEL_6:
    *(v6 + 9) = self->_origin;
    *(v6 + 40) |= 8u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  has = self->_has;
  if (has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_timestampEvent != *(v4 + 1))
    {
      goto LABEL_24;
    }
  }

  else if (*(v4 + 40))
  {
    goto LABEL_24;
  }

  context = self->_context;
  if (context | *(v4 + 3))
  {
    if (![(NSString *)context isEqual:?])
    {
LABEL_24:
      v7 = 0;
      goto LABEL_25;
    }

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    if ((*(v4 + 40) & 4) == 0 || self->_deviceOrientation != *(v4 + 8))
    {
      goto LABEL_24;
    }
  }

  else if ((*(v4 + 40) & 4) != 0)
  {
    goto LABEL_24;
  }

  if ((has & 2) != 0)
  {
    if ((*(v4 + 40) & 2) == 0 || self->_connectionType != *(v4 + 4))
    {
      goto LABEL_24;
    }
  }

  else if ((*(v4 + 40) & 2) != 0)
  {
    goto LABEL_24;
  }

  v7 = (*(v4 + 40) & 8) == 0;
  if ((has & 8) != 0)
  {
    if ((*(v4 + 40) & 8) == 0 || self->_origin != *(v4 + 9))
    {
      goto LABEL_24;
    }

    v7 = 1;
  }

LABEL_25:

  return v7;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    timestampEvent = self->_timestampEvent;
    if (timestampEvent < 0.0)
    {
      timestampEvent = -timestampEvent;
    }

    *v2.i64 = floor(timestampEvent + 0.5);
    v7 = (timestampEvent - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v5 = 2654435761u * *vbslq_s8(vnegq_f64(v8), v3, v2).i64;
    if (v7 >= 0.0)
    {
      if (v7 > 0.0)
      {
        v5 += v7;
      }
    }

    else
    {
      v5 -= fabs(v7);
    }
  }

  else
  {
    v5 = 0;
  }

  v9 = [(NSString *)self->_context hash];
  if ((*&self->_has & 4) == 0)
  {
    v10 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_11;
    }

LABEL_14:
    v11 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_12;
    }

LABEL_15:
    v12 = 0;
    return v9 ^ v5 ^ v10 ^ v11 ^ v12;
  }

  v10 = 2654435761 * self->_deviceOrientation;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  v11 = 2654435761 * self->_connectionType;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_15;
  }

LABEL_12:
  v12 = 2654435761 * self->_origin;
  return v9 ^ v5 ^ v10 ^ v11 ^ v12;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 40))
  {
    self->_timestampEvent = *(v4 + 1);
    *&self->_has |= 1u;
  }

  if (*(v4 + 3))
  {
    v6 = v4;
    [(APPBAdEvent *)self setContext:?];
    v4 = v6;
  }

  v5 = *(v4 + 40);
  if ((v5 & 4) != 0)
  {
    self->_deviceOrientation = *(v4 + 8);
    *&self->_has |= 4u;
    v5 = *(v4 + 40);
    if ((v5 & 2) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*(v4 + 40) & 2) == 0)
  {
    goto LABEL_7;
  }

  self->_connectionType = *(v4 + 4);
  *&self->_has |= 2u;
  if ((*(v4 + 40) & 8) != 0)
  {
LABEL_8:
    self->_origin = *(v4 + 9);
    *&self->_has |= 8u;
  }

LABEL_9:
}

@end