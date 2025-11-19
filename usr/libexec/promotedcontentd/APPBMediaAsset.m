@interface APPBMediaAsset
- (BOOL)isEqual:(id)a3;
- (id)codecAsString:(int)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)deliveryProtocolAsString:(int)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)mIMETypeAsString:(int)a3;
- (int)StringAsCodec:(id)a3;
- (int)StringAsDeliveryProtocol:(id)a3;
- (int)StringAsMIMEType:(id)a3;
- (int)codec;
- (int)deliveryProtocol;
- (int)mIMEType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasCodec:(BOOL)a3;
- (void)setHasDeliveryProtocol:(BOOL)a3;
- (void)setHasHeight:(BOOL)a3;
- (void)setHasMIMEType:(BOOL)a3;
- (void)setHasMaintainAspectRatio:(BOOL)a3;
- (void)setHasMaxBitrate:(BOOL)a3;
- (void)setHasMinBitrate:(BOOL)a3;
- (void)setHasScalable:(BOOL)a3;
- (void)setHasWidth:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation APPBMediaAsset

- (int)deliveryProtocol
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_deliveryProtocol;
  }

  else
  {
    return 1;
  }
}

- (void)setHasDeliveryProtocol:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (id)deliveryProtocolAsString:(int)a3
{
  if (a3 == 1)
  {
    v4 = @"progressive";
  }

  else if (a3 == 2)
  {
    v4 = @"streaming";
  }

  else
  {
    v4 = [NSString stringWithFormat:@"(unknown: %i)", *&a3];
  }

  return v4;
}

- (int)StringAsDeliveryProtocol:(id)a3
{
  v3 = a3;
  v4 = 1;
  if (([v3 isEqualToString:@"progressive"] & 1) == 0)
  {
    if ([v3 isEqualToString:@"streaming"])
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

- (int)mIMEType
{
  if ((*&self->_has & 0x40) != 0)
  {
    return self->_mIMEType;
  }

  else
  {
    return 1;
  }
}

- (void)setHasMIMEType:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (id)mIMETypeAsString:(int)a3
{
  if ((a3 - 1) >= 4)
  {
    v4 = [NSString stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    v4 = *(&off_10047D0F8 + (a3 - 1));
  }

  return v4;
}

- (int)StringAsMIMEType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"mov"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"mp4"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"m4v"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"threeGP"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (int)codec
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_codec;
  }

  else
  {
    return 1;
  }
}

- (void)setHasCodec:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (id)codecAsString:(int)a3
{
  if ((a3 - 1) >= 3)
  {
    v4 = [NSString stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    v4 = *(&off_10047D118 + (a3 - 1));
  }

  return v4;
}

- (int)StringAsCodec:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"H264"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"MPEG4"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"AACLC"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasWidth:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasHeight:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasMinBitrate:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasMaxBitrate:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasScalable:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasMaintainAspectRatio:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = APPBMediaAsset;
  v3 = [(APPBMediaAsset *)&v7 description];
  v4 = [(APPBMediaAsset *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  mediaURL = self->_mediaURL;
  if (mediaURL)
  {
    [v3 setObject:mediaURL forKey:@"mediaURL"];
  }

  identifier = self->_identifier;
  if (identifier)
  {
    [v4 setObject:identifier forKey:@"identifier"];
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    deliveryProtocol = self->_deliveryProtocol;
    if (deliveryProtocol == 1)
    {
      v9 = @"progressive";
    }

    else if (deliveryProtocol == 2)
    {
      v9 = @"streaming";
    }

    else
    {
      v9 = [NSString stringWithFormat:@"(unknown: %i)", self->_deliveryProtocol];
    }

    [v4 setObject:v9 forKey:@"deliveryProtocol"];

    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_7:
      if ((has & 8) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_19;
    }
  }

  else if ((has & 0x40) == 0)
  {
    goto LABEL_7;
  }

  v10 = self->_mIMEType - 1;
  if (v10 >= 4)
  {
    v11 = [NSString stringWithFormat:@"(unknown: %i)", self->_mIMEType];
  }

  else
  {
    v11 = *(&off_10047D0F8 + v10);
  }

  [v4 setObject:v11 forKey:@"MIMEType"];

  has = self->_has;
  if ((has & 8) != 0)
  {
LABEL_19:
    v12 = self->_codec - 1;
    if (v12 >= 3)
    {
      v13 = [NSString stringWithFormat:@"(unknown: %i)", self->_codec];
    }

    else
    {
      v13 = *(&off_10047D118 + v12);
    }

    [v4 setObject:v13 forKey:@"codec"];

    has = self->_has;
  }

LABEL_23:
  if ((has & 0x80) != 0)
  {
    v17 = [NSNumber numberWithInt:self->_width];
    [v4 setObject:v17 forKey:@"width"];

    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_25:
      if ((has & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_38;
    }
  }

  else if ((has & 0x20) == 0)
  {
    goto LABEL_25;
  }

  v18 = [NSNumber numberWithInt:self->_height];
  [v4 setObject:v18 forKey:@"height"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_26:
    if ((has & 4) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_39;
  }

LABEL_38:
  v19 = [NSNumber numberWithDouble:self->_bitrate];
  [v4 setObject:v19 forKey:@"bitrate"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_27:
    if ((has & 2) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_40;
  }

LABEL_39:
  v20 = [NSNumber numberWithDouble:self->_minBitrate];
  [v4 setObject:v20 forKey:@"minBitrate"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_28:
    if ((has & 0x200) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_41;
  }

LABEL_40:
  v21 = [NSNumber numberWithDouble:self->_maxBitrate];
  [v4 setObject:v21 forKey:@"maxBitrate"];

  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_29:
    if ((has & 0x100) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_41:
  v22 = [NSNumber numberWithBool:self->_scalable];
  [v4 setObject:v22 forKey:@"scalable"];

  if ((*&self->_has & 0x100) != 0)
  {
LABEL_30:
    v14 = [NSNumber numberWithBool:self->_maintainAspectRatio];
    [v4 setObject:v14 forKey:@"maintainAspectRatio"];
  }

LABEL_31:
  apiFramework = self->_apiFramework;
  if (apiFramework)
  {
    [v4 setObject:apiFramework forKey:@"apiFramework"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_mediaURL)
  {
    sub_100393F3C();
  }

  v7 = v4;
  PBDataWriterWriteStringField();
  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  v6 = v7;
  if ((has & 0x40) != 0)
  {
    PBDataWriterWriteInt32Field();
    v6 = v7;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_8:
      if ((has & 0x80) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_23;
    }
  }

  else if ((has & 8) == 0)
  {
    goto LABEL_8;
  }

  PBDataWriterWriteInt32Field();
  v6 = v7;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_9:
    if ((has & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  PBDataWriterWriteInt32Field();
  v6 = v7;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_10:
    if ((has & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  PBDataWriterWriteInt32Field();
  v6 = v7;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_11:
    if ((has & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  PBDataWriterWriteDoubleField();
  v6 = v7;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_12:
    if ((has & 2) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  PBDataWriterWriteDoubleField();
  v6 = v7;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_13:
    if ((has & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_28;
  }

LABEL_27:
  PBDataWriterWriteDoubleField();
  v6 = v7;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_14:
    if ((has & 0x100) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_28:
  PBDataWriterWriteBOOLField();
  v6 = v7;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_15:
    PBDataWriterWriteBOOLField();
    v6 = v7;
  }

LABEL_16:
  if (self->_apiFramework)
  {
    PBDataWriterWriteStringField();
    v6 = v7;
  }
}

- (void)copyTo:(id)a3
{
  v6 = a3;
  [v6 setMediaURL:self->_mediaURL];
  if (self->_identifier)
  {
    [v6 setIdentifier:?];
  }

  has = self->_has;
  v5 = v6;
  if ((has & 0x10) != 0)
  {
    *(v6 + 11) = self->_deliveryProtocol;
    *(v6 + 44) |= 0x10u;
    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_5:
      if ((has & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_21;
    }
  }

  else if ((has & 0x40) == 0)
  {
    goto LABEL_5;
  }

  *(v6 + 16) = self->_mIMEType;
  *(v6 + 44) |= 0x40u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(v6 + 10) = self->_codec;
  *(v6 + 44) |= 8u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(v6 + 20) = self->_width;
  *(v6 + 44) |= 0x80u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(v6 + 12) = self->_height;
  *(v6 + 44) |= 0x20u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_9:
    if ((has & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(v6 + 1) = *&self->_bitrate;
  *(v6 + 44) |= 1u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_10:
    if ((has & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(v6 + 3) = *&self->_minBitrate;
  *(v6 + 44) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_11:
    if ((has & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(v6 + 2) = *&self->_maxBitrate;
  *(v6 + 44) |= 2u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_12:
    if ((has & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_27:
  *(v6 + 85) = self->_scalable;
  *(v6 + 44) |= 0x200u;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_13:
    *(v6 + 84) = self->_maintainAspectRatio;
    *(v6 + 44) |= 0x100u;
  }

LABEL_14:
  if (self->_apiFramework)
  {
    [v6 setApiFramework:?];
    v5 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_mediaURL copyWithZone:a3];
  v7 = v5[9];
  v5[9] = v6;

  v8 = [(NSString *)self->_identifier copyWithZone:a3];
  v9 = v5[7];
  v5[7] = v8;

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(v5 + 11) = self->_deliveryProtocol;
    *(v5 + 44) |= 0x10u;
    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((has & 0x40) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 16) = self->_mIMEType;
  *(v5 + 44) |= 0x40u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(v5 + 10) = self->_codec;
  *(v5 + 44) |= 8u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(v5 + 20) = self->_width;
  *(v5 + 44) |= 0x80u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(v5 + 12) = self->_height;
  *(v5 + 44) |= 0x20u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_7:
    if ((has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  v5[1] = *&self->_bitrate;
  *(v5 + 44) |= 1u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  v5[3] = *&self->_minBitrate;
  *(v5 + 44) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_9:
    if ((has & 0x200) == 0)
    {
      goto LABEL_10;
    }

LABEL_21:
    *(v5 + 85) = self->_scalable;
    *(v5 + 44) |= 0x200u;
    if ((*&self->_has & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_20:
  v5[2] = *&self->_maxBitrate;
  *(v5 + 44) |= 2u;
  has = self->_has;
  if ((has & 0x200) != 0)
  {
    goto LABEL_21;
  }

LABEL_10:
  if ((has & 0x100) != 0)
  {
LABEL_11:
    *(v5 + 84) = self->_maintainAspectRatio;
    *(v5 + 44) |= 0x100u;
  }

LABEL_12:
  v11 = [(NSString *)self->_apiFramework copyWithZone:a3];
  v12 = v5[4];
  v5[4] = v11;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_64;
  }

  mediaURL = self->_mediaURL;
  if (mediaURL | *(v4 + 9))
  {
    if (![(NSString *)mediaURL isEqual:?])
    {
      goto LABEL_64;
    }
  }

  identifier = self->_identifier;
  if (identifier | *(v4 + 7))
  {
    if (![(NSString *)identifier isEqual:?])
    {
      goto LABEL_64;
    }
  }

  has = self->_has;
  v8 = *(v4 + 44);
  if ((has & 0x10) != 0)
  {
    if ((v8 & 0x10) == 0 || self->_deliveryProtocol != *(v4 + 11))
    {
      goto LABEL_64;
    }
  }

  else if ((v8 & 0x10) != 0)
  {
    goto LABEL_64;
  }

  if ((has & 0x40) != 0)
  {
    if ((v8 & 0x40) == 0 || self->_mIMEType != *(v4 + 16))
    {
      goto LABEL_64;
    }
  }

  else if ((v8 & 0x40) != 0)
  {
    goto LABEL_64;
  }

  if ((has & 8) != 0)
  {
    if ((v8 & 8) == 0 || self->_codec != *(v4 + 10))
    {
      goto LABEL_64;
    }
  }

  else if ((v8 & 8) != 0)
  {
    goto LABEL_64;
  }

  if ((has & 0x80) != 0)
  {
    if ((v8 & 0x80) == 0 || self->_width != *(v4 + 20))
    {
      goto LABEL_64;
    }
  }

  else if ((v8 & 0x80) != 0)
  {
    goto LABEL_64;
  }

  if ((has & 0x20) != 0)
  {
    if ((v8 & 0x20) == 0 || self->_height != *(v4 + 12))
    {
      goto LABEL_64;
    }
  }

  else if ((v8 & 0x20) != 0)
  {
    goto LABEL_64;
  }

  if (has)
  {
    if ((v8 & 1) == 0 || self->_bitrate != *(v4 + 1))
    {
      goto LABEL_64;
    }
  }

  else if (v8)
  {
    goto LABEL_64;
  }

  if ((has & 4) != 0)
  {
    if ((v8 & 4) == 0 || self->_minBitrate != *(v4 + 3))
    {
      goto LABEL_64;
    }
  }

  else if ((v8 & 4) != 0)
  {
    goto LABEL_64;
  }

  if ((has & 2) != 0)
  {
    if ((v8 & 2) == 0 || self->_maxBitrate != *(v4 + 2))
    {
      goto LABEL_64;
    }
  }

  else if ((v8 & 2) != 0)
  {
    goto LABEL_64;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(v4 + 44) & 0x200) == 0)
    {
      goto LABEL_64;
    }

    if (self->_scalable)
    {
      if ((*(v4 + 85) & 1) == 0)
      {
        goto LABEL_64;
      }
    }

    else if (*(v4 + 85))
    {
      goto LABEL_64;
    }
  }

  else if ((*(v4 + 44) & 0x200) != 0)
  {
    goto LABEL_64;
  }

  if ((*&self->_has & 0x100) == 0)
  {
    if ((*(v4 + 44) & 0x100) == 0)
    {
      goto LABEL_50;
    }

LABEL_64:
    v10 = 0;
    goto LABEL_65;
  }

  if ((*(v4 + 44) & 0x100) == 0)
  {
    goto LABEL_64;
  }

  if (self->_maintainAspectRatio)
  {
    if ((*(v4 + 84) & 1) == 0)
    {
      goto LABEL_64;
    }
  }

  else if (*(v4 + 84))
  {
    goto LABEL_64;
  }

LABEL_50:
  apiFramework = self->_apiFramework;
  if (apiFramework | *(v4 + 4))
  {
    v10 = [(NSString *)apiFramework isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_65:

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_mediaURL hash];
  v4 = [(NSString *)self->_identifier hash];
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    v8 = 2654435761 * self->_deliveryProtocol;
    if ((has & 0x40) != 0)
    {
LABEL_3:
      v9 = 2654435761 * self->_mIMEType;
      if ((has & 8) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v8 = 0;
    if ((has & 0x40) != 0)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
  if ((has & 8) != 0)
  {
LABEL_4:
    v10 = 2654435761 * self->_codec;
    if ((has & 0x80) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  v10 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_5:
    v11 = 2654435761 * self->_width;
    if ((has & 0x20) != 0)
    {
      goto LABEL_6;
    }

LABEL_15:
    v12 = 0;
    if (has)
    {
      goto LABEL_7;
    }

LABEL_16:
    v16 = 0;
    goto LABEL_17;
  }

LABEL_14:
  v11 = 0;
  if ((has & 0x20) == 0)
  {
    goto LABEL_15;
  }

LABEL_6:
  v12 = 2654435761 * self->_height;
  if ((has & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_7:
  bitrate = self->_bitrate;
  if (bitrate < 0.0)
  {
    bitrate = -bitrate;
  }

  *v5.i64 = floor(bitrate + 0.5);
  v14 = (bitrate - *v5.i64) * 1.84467441e19;
  *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
  v15.f64[0] = NAN;
  v15.f64[1] = NAN;
  v5 = vbslq_s8(vnegq_f64(v15), v6, v5);
  v16 = 2654435761u * *v5.i64;
  if (v14 >= 0.0)
  {
    if (v14 > 0.0)
    {
      v16 += v14;
    }
  }

  else
  {
    v16 -= fabs(v14);
  }

LABEL_17:
  if ((has & 4) != 0)
  {
    minBitrate = self->_minBitrate;
    if (minBitrate < 0.0)
    {
      minBitrate = -minBitrate;
    }

    *v5.i64 = floor(minBitrate + 0.5);
    v19 = (minBitrate - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v20.f64[0] = NAN;
    v20.f64[1] = NAN;
    v5 = vbslq_s8(vnegq_f64(v20), v6, v5);
    v17 = 2654435761u * *v5.i64;
    if (v19 >= 0.0)
    {
      if (v19 > 0.0)
      {
        v17 += v19;
      }
    }

    else
    {
      v17 -= fabs(v19);
    }
  }

  else
  {
    v17 = 0;
  }

  if ((has & 2) != 0)
  {
    maxBitrate = self->_maxBitrate;
    if (maxBitrate < 0.0)
    {
      maxBitrate = -maxBitrate;
    }

    *v5.i64 = floor(maxBitrate + 0.5);
    v23 = (maxBitrate - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v24.f64[0] = NAN;
    v24.f64[1] = NAN;
    v21 = 2654435761u * *vbslq_s8(vnegq_f64(v24), v6, v5).i64;
    if (v23 >= 0.0)
    {
      if (v23 > 0.0)
      {
        v21 += v23;
      }
    }

    else
    {
      v21 -= fabs(v23);
    }
  }

  else
  {
    v21 = 0;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    v25 = 2654435761 * self->_scalable;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_37;
    }

LABEL_39:
    v26 = 0;
    return v4 ^ v3 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v16 ^ v17 ^ v21 ^ v25 ^ v26 ^ [(NSString *)self->_apiFramework hash];
  }

  v25 = 0;
  if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_39;
  }

LABEL_37:
  v26 = 2654435761 * self->_maintainAspectRatio;
  return v4 ^ v3 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v16 ^ v17 ^ v21 ^ v25 ^ v26 ^ [(NSString *)self->_apiFramework hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*(v4 + 9))
  {
    [(APPBMediaAsset *)self setMediaURL:?];
    v4 = v6;
  }

  if (*(v4 + 7))
  {
    [(APPBMediaAsset *)self setIdentifier:?];
    v4 = v6;
  }

  v5 = *(v4 + 44);
  if ((v5 & 0x10) != 0)
  {
    self->_deliveryProtocol = *(v4 + 11);
    *&self->_has |= 0x10u;
    v5 = *(v4 + 44);
    if ((v5 & 0x40) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_23;
    }
  }

  else if ((v5 & 0x40) == 0)
  {
    goto LABEL_7;
  }

  self->_mIMEType = *(v4 + 16);
  *&self->_has |= 0x40u;
  v5 = *(v4 + 44);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  self->_codec = *(v4 + 10);
  *&self->_has |= 8u;
  v5 = *(v4 + 44);
  if ((v5 & 0x80) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  self->_width = *(v4 + 20);
  *&self->_has |= 0x80u;
  v5 = *(v4 + 44);
  if ((v5 & 0x20) == 0)
  {
LABEL_10:
    if ((v5 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  self->_height = *(v4 + 12);
  *&self->_has |= 0x20u;
  v5 = *(v4 + 44);
  if ((v5 & 1) == 0)
  {
LABEL_11:
    if ((v5 & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  self->_bitrate = *(v4 + 1);
  *&self->_has |= 1u;
  v5 = *(v4 + 44);
  if ((v5 & 4) == 0)
  {
LABEL_12:
    if ((v5 & 2) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  self->_minBitrate = *(v4 + 3);
  *&self->_has |= 4u;
  v5 = *(v4 + 44);
  if ((v5 & 2) == 0)
  {
LABEL_13:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_28:
  self->_maxBitrate = *(v4 + 2);
  *&self->_has |= 2u;
  v5 = *(v4 + 44);
  if ((v5 & 0x200) == 0)
  {
LABEL_14:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_29:
  self->_scalable = *(v4 + 85);
  *&self->_has |= 0x200u;
  if ((*(v4 + 44) & 0x100) != 0)
  {
LABEL_15:
    self->_maintainAspectRatio = *(v4 + 84);
    *&self->_has |= 0x100u;
  }

LABEL_16:
  if (*(v4 + 4))
  {
    [(APPBMediaAsset *)self setApiFramework:?];
    v4 = v6;
  }
}

@end