@interface APPBLogSubscriptionEventRequest
+ (id)options;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)eventAsString:(int)string;
- (int)StringAsEvent:(id)event;
- (int)event;
- (unint64_t)hash;
- (void)addInfo:(id)info;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasEvent:(BOOL)event;
- (void)writeTo:(id)to;
@end

@implementation APPBLogSubscriptionEventRequest

+ (id)options
{
  if (qword_1004E6D00 != -1)
  {
    sub_10039462C();
  }

  v3 = qword_1004E6CF8;

  return v3;
}

- (int)event
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_event;
  }

  else
  {
    return 0;
  }
}

- (void)setHasEvent:(BOOL)event
{
  if (event)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)eventAsString:(int)string
{
  if (string >= 5)
  {
    v4 = [NSString stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = *(&off_10047E138 + string);
  }

  return v4;
}

- (int)StringAsEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([eventCopy isEqualToString:@"AlreadySubscribed"])
  {
    v4 = 1;
  }

  else if ([eventCopy isEqualToString:@"PurchasedSubscription"])
  {
    v4 = 2;
  }

  else if ([eventCopy isEqualToString:@"AlreadySubscribedViaNativeAd"])
  {
    v4 = 3;
  }

  else if ([eventCopy isEqualToString:@"PurchasedSubscriptionViaNativeAd"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addInfo:(id)info
{
  infoCopy = info;
  infos = self->_infos;
  v8 = infoCopy;
  if (!infos)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_infos;
    self->_infos = v6;

    infoCopy = v8;
    infos = self->_infos;
  }

  [(NSMutableArray *)infos addObject:infoCopy];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = APPBLogSubscriptionEventRequest;
  v3 = [(APPBLogSubscriptionEventRequest *)&v7 description];
  dictionaryRepresentation = [(APPBLogSubscriptionEventRequest *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

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

  anonymousDemandiAdID = self->_anonymousDemandiAdID;
  if (anonymousDemandiAdID)
  {
    [v4 setObject:anonymousDemandiAdID forKey:@"anonymousDemandiAdID"];
  }

  contentiAdID = self->_contentiAdID;
  if (contentiAdID)
  {
    [v4 setObject:contentiAdID forKey:@"contentiAdID"];
  }

  subscriptionSourceID = self->_subscriptionSourceID;
  if (subscriptionSourceID)
  {
    [v4 setObject:subscriptionSourceID forKey:@"subscriptionSourceID"];
  }

  qToken = self->_qToken;
  if (qToken)
  {
    [v4 setObject:qToken forKey:@"qToken"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    event = self->_event;
    if (event >= 5)
    {
      v12 = [NSString stringWithFormat:@"(unknown: %i)", self->_event];
    }

    else
    {
      v12 = *(&off_10047E138 + event);
    }

    [v4 setObject:v12 forKey:@"event"];

    has = self->_has;
  }

  if (has)
  {
    v13 = [NSNumber numberWithDouble:self->_eventTime];
    [v4 setObject:v13 forKey:@"eventTime"];
  }

  if ([(NSMutableArray *)self->_infos count])
  {
    v14 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_infos, "count")}];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v15 = self->_infos;
    v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v23;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v23 != v18)
          {
            objc_enumerationMutation(v15);
          }

          dictionaryRepresentation = [*(*(&v22 + 1) + 8 * i) dictionaryRepresentation];
          [v14 addObject:dictionaryRepresentation];
        }

        v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v17);
    }

    [v4 setObject:v14 forKey:@"info"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_iAdID)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_anonymousDemandiAdID)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_contentiAdID)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_subscriptionSourceID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_qToken)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if (has)
  {
    PBDataWriterWriteDoubleField();
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_infos;
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

        PBDataWriterWriteSubmessage();
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v10 = toCopy;
  if (self->_iAdID)
  {
    [toCopy setIAdID:?];
    toCopy = v10;
  }

  if (self->_anonymousDemandiAdID)
  {
    [v10 setAnonymousDemandiAdID:?];
    toCopy = v10;
  }

  if (self->_contentiAdID)
  {
    [v10 setContentiAdID:?];
    toCopy = v10;
  }

  if (self->_subscriptionSourceID)
  {
    [v10 setSubscriptionSourceID:?];
    toCopy = v10;
  }

  if (self->_qToken)
  {
    [v10 setQToken:?];
    toCopy = v10;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(toCopy + 8) = self->_event;
    *(toCopy + 72) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(toCopy + 1) = *&self->_eventTime;
    *(toCopy + 72) |= 1u;
  }

  if ([(APPBLogSubscriptionEventRequest *)self infosCount])
  {
    [v10 clearInfos];
    infosCount = [(APPBLogSubscriptionEventRequest *)self infosCount];
    if (infosCount)
    {
      v7 = infosCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(APPBLogSubscriptionEventRequest *)self infoAtIndex:i];
        [v10 addInfo:v9];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_iAdID copyWithZone:zone];
  v7 = v5[5];
  v5[5] = v6;

  v8 = [(NSData *)self->_anonymousDemandiAdID copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSData *)self->_contentiAdID copyWithZone:zone];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(NSString *)self->_subscriptionSourceID copyWithZone:zone];
  v13 = v5[8];
  v5[8] = v12;

  v14 = [(NSString *)self->_qToken copyWithZone:zone];
  v15 = v5[7];
  v5[7] = v14;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 8) = self->_event;
    *(v5 + 72) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    v5[1] = *&self->_eventTime;
    *(v5 + 72) |= 1u;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v17 = self->_infos;
  v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v25;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v25 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = [*(*(&v24 + 1) + 8 * i) copyWithZone:{zone, v24}];
        [v5 addInfo:v22];
      }

      v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v19);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  iAdID = self->_iAdID;
  if (iAdID | *(equalCopy + 5))
  {
    if (![(NSData *)iAdID isEqual:?])
    {
      goto LABEL_24;
    }
  }

  anonymousDemandiAdID = self->_anonymousDemandiAdID;
  if (anonymousDemandiAdID | *(equalCopy + 2))
  {
    if (![(NSData *)anonymousDemandiAdID isEqual:?])
    {
      goto LABEL_24;
    }
  }

  contentiAdID = self->_contentiAdID;
  if (contentiAdID | *(equalCopy + 3))
  {
    if (![(NSData *)contentiAdID isEqual:?])
    {
      goto LABEL_24;
    }
  }

  subscriptionSourceID = self->_subscriptionSourceID;
  if (subscriptionSourceID | *(equalCopy + 8))
  {
    if (![(NSString *)subscriptionSourceID isEqual:?])
    {
      goto LABEL_24;
    }
  }

  qToken = self->_qToken;
  if (qToken | *(equalCopy + 7))
  {
    if (![(NSString *)qToken isEqual:?])
    {
      goto LABEL_24;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 72) & 2) == 0 || self->_event != *(equalCopy + 8))
    {
      goto LABEL_24;
    }
  }

  else if ((*(equalCopy + 72) & 2) != 0)
  {
LABEL_24:
    v11 = 0;
    goto LABEL_25;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 72) & 1) == 0 || self->_eventTime != *(equalCopy + 1))
    {
      goto LABEL_24;
    }
  }

  else if (*(equalCopy + 72))
  {
    goto LABEL_24;
  }

  infos = self->_infos;
  if (infos | *(equalCopy + 6))
  {
    v11 = [(NSMutableArray *)infos isEqual:?];
  }

  else
  {
    v11 = 1;
  }

LABEL_25:

  return v11;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_iAdID hash];
  v4 = [(NSData *)self->_anonymousDemandiAdID hash];
  v5 = [(NSData *)self->_contentiAdID hash];
  v6 = [(NSString *)self->_subscriptionSourceID hash];
  v7 = [(NSString *)self->_qToken hash];
  if ((*&self->_has & 2) != 0)
  {
    v10 = 2654435761 * self->_event;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_8:
    v14 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v10 ^ v14 ^ [(NSMutableArray *)self->_infos hash];
  }

  v10 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  eventTime = self->_eventTime;
  if (eventTime < 0.0)
  {
    eventTime = -eventTime;
  }

  *v8.i64 = floor(eventTime + 0.5);
  v12 = (eventTime - *v8.i64) * 1.84467441e19;
  *v9.i64 = *v8.i64 - trunc(*v8.i64 * 5.42101086e-20) * 1.84467441e19;
  v13.f64[0] = NAN;
  v13.f64[1] = NAN;
  v14 = 2654435761u * *vbslq_s8(vnegq_f64(v13), v9, v8).i64;
  if (v12 >= 0.0)
  {
    if (v12 > 0.0)
    {
      v14 += v12;
    }
  }

  else
  {
    v14 -= fabs(v12);
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v10 ^ v14 ^ [(NSMutableArray *)self->_infos hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 5))
  {
    [(APPBLogSubscriptionEventRequest *)self setIAdID:?];
  }

  if (*(fromCopy + 2))
  {
    [(APPBLogSubscriptionEventRequest *)self setAnonymousDemandiAdID:?];
  }

  if (*(fromCopy + 3))
  {
    [(APPBLogSubscriptionEventRequest *)self setContentiAdID:?];
  }

  if (*(fromCopy + 8))
  {
    [(APPBLogSubscriptionEventRequest *)self setSubscriptionSourceID:?];
  }

  if (*(fromCopy + 7))
  {
    [(APPBLogSubscriptionEventRequest *)self setQToken:?];
  }

  v5 = *(fromCopy + 72);
  if ((v5 & 2) != 0)
  {
    self->_event = *(fromCopy + 8);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 72);
  }

  if (v5)
  {
    self->_eventTime = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = *(fromCopy + 6);
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

        [(APPBLogSubscriptionEventRequest *)self addInfo:*(*(&v11 + 1) + 8 * i), v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

@end