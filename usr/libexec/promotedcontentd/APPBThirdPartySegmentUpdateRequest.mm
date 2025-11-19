@interface APPBThirdPartySegmentUpdateRequest
+ (id)options;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)runStateAsString:(int)a3;
- (int)StringAsRunState:(id)a3;
- (int)runState;
- (unint64_t)hash;
- (void)addSegmentIdentifiers:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasPrivateSegment:(BOOL)a3;
- (void)setHasResetSegmentMembership:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation APPBThirdPartySegmentUpdateRequest

+ (id)options
{
  if (qword_1004E6C70 != -1)
  {
    sub_10039449C();
  }

  v3 = qword_1004E6C68;

  return v3;
}

- (int)runState
{
  if (*&self->_has)
  {
    return self->_runState;
  }

  else
  {
    return 0;
  }
}

- (id)runStateAsString:(int)a3
{
  if (a3 >= 3)
  {
    v4 = [NSString stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    v4 = *(&off_10047DE68 + a3);
  }

  return v4;
}

- (int)StringAsRunState:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Simulator"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"DevelopmentDevice"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"ConsumerDevice"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasResetSegmentMembership:(BOOL)a3
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

- (void)addSegmentIdentifiers:(id)a3
{
  v4 = a3;
  segmentIdentifiers = self->_segmentIdentifiers;
  v8 = v4;
  if (!segmentIdentifiers)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_segmentIdentifiers;
    self->_segmentIdentifiers = v6;

    v4 = v8;
    segmentIdentifiers = self->_segmentIdentifiers;
  }

  [(NSMutableArray *)segmentIdentifiers addObject:v4];
}

- (void)setHasPrivateSegment:(BOOL)a3
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

- (id)description
{
  v7.receiver = self;
  v7.super_class = APPBThirdPartySegmentUpdateRequest;
  v3 = [(APPBThirdPartySegmentUpdateRequest *)&v7 description];
  v4 = [(APPBThirdPartySegmentUpdateRequest *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  iAdID = self->_iAdID;
  if (iAdID)
  {
    [v3 setObject:iAdID forKey:@"iAdID"];
  }

  appID = self->_appID;
  if (appID)
  {
    [v4 setObject:appID forKey:@"appID"];
  }

  appVersion = self->_appVersion;
  if (appVersion)
  {
    [v4 setObject:appVersion forKey:@"appVersion"];
  }

  has = self->_has;
  if (has)
  {
    runState = self->_runState;
    if (runState >= 3)
    {
      v10 = [NSString stringWithFormat:@"(unknown: %i)", self->_runState];
    }

    else
    {
      v10 = *(&off_10047DE68 + runState);
    }

    [v4 setObject:v10 forKey:@"runState"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v11 = [NSNumber numberWithBool:self->_resetSegmentMembership];
    [v4 setObject:v11 forKey:@"resetSegmentMembership"];
  }

  segmentIdentifiers = self->_segmentIdentifiers;
  if (segmentIdentifiers)
  {
    [v4 setObject:segmentIdentifiers forKey:@"segmentIdentifiers"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v13 = [NSNumber numberWithBool:self->_privateSegment];
    [v4 setObject:v13 forKey:@"privateSegment"];
  }

  toroID = self->_toroID;
  if (toroID)
  {
    [v4 setObject:toroID forKey:@"toroID"];
  }

  dPID = self->_dPID;
  if (dPID)
  {
    [v4 setObject:dPID forKey:@"DPID"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (self->_iAdID)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_appID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_appVersion)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_segmentIdentifiers;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        PBDataWriterWriteStringField();
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_toroID)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_dPID)
  {
    PBDataWriterWriteDataField();
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v11 = v4;
  if (self->_iAdID)
  {
    [v4 setIAdID:?];
    v4 = v11;
  }

  if (self->_appID)
  {
    [v11 setAppID:?];
    v4 = v11;
  }

  if (self->_appVersion)
  {
    [v11 setAppVersion:?];
    v4 = v11;
  }

  has = self->_has;
  if (has)
  {
    *(v4 + 10) = self->_runState;
    v4[68] |= 1u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v4[65] = self->_resetSegmentMembership;
    v4[68] |= 4u;
  }

  if ([(APPBThirdPartySegmentUpdateRequest *)self segmentIdentifiersCount])
  {
    [v11 clearSegmentIdentifiers];
    v6 = [(APPBThirdPartySegmentUpdateRequest *)self segmentIdentifiersCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(APPBThirdPartySegmentUpdateRequest *)self segmentIdentifiersAtIndex:i];
        [v11 addSegmentIdentifiers:v9];
      }
    }
  }

  v10 = v11;
  if ((*&self->_has & 2) != 0)
  {
    v11[64] = self->_privateSegment;
    v11[68] |= 2u;
  }

  if (self->_toroID)
  {
    [v11 setToroID:?];
    v10 = v11;
  }

  if (self->_dPID)
  {
    [v11 setDPID:?];
    v10 = v11;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_iAdID copyWithZone:a3];
  v7 = v5[4];
  v5[4] = v6;

  v8 = [(NSString *)self->_appID copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(NSString *)self->_appVersion copyWithZone:a3];
  v11 = v5[2];
  v5[2] = v10;

  has = self->_has;
  if (has)
  {
    *(v5 + 10) = self->_runState;
    *(v5 + 68) |= 1u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(v5 + 65) = self->_resetSegmentMembership;
    *(v5 + 68) |= 4u;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = self->_segmentIdentifiers;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v25;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v24 + 1) + 8 * i) copyWithZone:{a3, v24}];
        [v5 addSegmentIdentifiers:v18];
      }

      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v15);
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 64) = self->_privateSegment;
    *(v5 + 68) |= 2u;
  }

  v19 = [(NSData *)self->_toroID copyWithZone:a3, v24];
  v20 = v5[7];
  v5[7] = v19;

  v21 = [(NSData *)self->_dPID copyWithZone:a3];
  v22 = v5[3];
  v5[3] = v21;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_36;
  }

  iAdID = self->_iAdID;
  if (iAdID | *(v4 + 4))
  {
    if (![(NSData *)iAdID isEqual:?])
    {
      goto LABEL_36;
    }
  }

  appID = self->_appID;
  if (appID | *(v4 + 1))
  {
    if (![(NSString *)appID isEqual:?])
    {
      goto LABEL_36;
    }
  }

  appVersion = self->_appVersion;
  if (appVersion | *(v4 + 2))
  {
    if (![(NSString *)appVersion isEqual:?])
    {
      goto LABEL_36;
    }
  }

  has = self->_has;
  if (has)
  {
    if ((*(v4 + 68) & 1) == 0 || self->_runState != *(v4 + 10))
    {
      goto LABEL_36;
    }
  }

  else if (*(v4 + 68))
  {
    goto LABEL_36;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 68) & 4) == 0)
    {
      goto LABEL_36;
    }

    if (self->_resetSegmentMembership)
    {
      if ((*(v4 + 65) & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    else if (*(v4 + 65))
    {
      goto LABEL_36;
    }
  }

  else if ((*(v4 + 68) & 4) != 0)
  {
    goto LABEL_36;
  }

  segmentIdentifiers = self->_segmentIdentifiers;
  if (segmentIdentifiers | *(v4 + 6))
  {
    if (![(NSMutableArray *)segmentIdentifiers isEqual:?])
    {
      goto LABEL_36;
    }

    has = self->_has;
  }

  if ((has & 2) == 0)
  {
    if ((*(v4 + 68) & 2) == 0)
    {
      goto LABEL_20;
    }

LABEL_36:
    v12 = 0;
    goto LABEL_37;
  }

  if ((*(v4 + 68) & 2) == 0)
  {
    goto LABEL_36;
  }

  if (!self->_privateSegment)
  {
    if ((*(v4 + 64) & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_36;
  }

  if ((*(v4 + 64) & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_20:
  toroID = self->_toroID;
  if (toroID | *(v4 + 7) && ![(NSData *)toroID isEqual:?])
  {
    goto LABEL_36;
  }

  dPID = self->_dPID;
  if (dPID | *(v4 + 3))
  {
    v12 = [(NSData *)dPID isEqual:?];
  }

  else
  {
    v12 = 1;
  }

LABEL_37:

  return v12;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_iAdID hash];
  v4 = [(NSString *)self->_appID hash];
  v5 = [(NSString *)self->_appVersion hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_runState;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = 0;
    if ((*&self->_has & 4) != 0)
    {
LABEL_3:
      v7 = 2654435761 * self->_resetSegmentMembership;
      goto LABEL_6;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = [(NSMutableArray *)self->_segmentIdentifiers hash];
  if ((*&self->_has & 2) != 0)
  {
    v9 = 2654435761 * self->_privateSegment;
  }

  else
  {
    v9 = 0;
  }

  v10 = v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
  v11 = [(NSData *)self->_toroID hash];
  return v10 ^ v11 ^ [(NSData *)self->_dPID hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 4))
  {
    [(APPBThirdPartySegmentUpdateRequest *)self setIAdID:?];
  }

  if (*(v4 + 1))
  {
    [(APPBThirdPartySegmentUpdateRequest *)self setAppID:?];
  }

  if (*(v4 + 2))
  {
    [(APPBThirdPartySegmentUpdateRequest *)self setAppVersion:?];
  }

  v5 = *(v4 + 68);
  if (v5)
  {
    self->_runState = *(v4 + 10);
    *&self->_has |= 1u;
    v5 = *(v4 + 68);
  }

  if ((v5 & 4) != 0)
  {
    self->_resetSegmentMembership = *(v4 + 65);
    *&self->_has |= 4u;
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = *(v4 + 6);
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(APPBThirdPartySegmentUpdateRequest *)self addSegmentIdentifiers:*(*(&v11 + 1) + 8 * i), v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  if ((*(v4 + 68) & 2) != 0)
  {
    self->_privateSegment = *(v4 + 64);
    *&self->_has |= 2u;
  }

  if (*(v4 + 7))
  {
    [(APPBThirdPartySegmentUpdateRequest *)self setToroID:?];
  }

  if (*(v4 + 3))
  {
    [(APPBThirdPartySegmentUpdateRequest *)self setDPID:?];
  }
}

@end