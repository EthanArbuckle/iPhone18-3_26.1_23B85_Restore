@interface NEKPBICSWrapper
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addMetadataKeys:(id)keys;
- (void)addMetadataValues:(id)values;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasCalendarItemCount:(BOOL)count;
- (void)setHasNekChangeType:(BOOL)type;
- (void)setHasNekStoreType:(BOOL)type;
- (void)setHasTaskCompletionDate:(BOOL)date;
- (void)writeTo:(id)to;
@end

@implementation NEKPBICSWrapper

- (void)setHasCalendarItemCount:(BOOL)count
{
  if (count)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)addMetadataKeys:(id)keys
{
  keysCopy = keys;
  metadataKeys = self->_metadataKeys;
  v8 = keysCopy;
  if (!metadataKeys)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_metadataKeys;
    self->_metadataKeys = v6;

    keysCopy = v8;
    metadataKeys = self->_metadataKeys;
  }

  [(NSMutableArray *)metadataKeys addObject:keysCopy];
}

- (void)addMetadataValues:(id)values
{
  valuesCopy = values;
  metadataValues = self->_metadataValues;
  v8 = valuesCopy;
  if (!metadataValues)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_metadataValues;
    self->_metadataValues = v6;

    valuesCopy = v8;
    metadataValues = self->_metadataValues;
  }

  [(NSMutableArray *)metadataValues addObject:valuesCopy];
}

- (void)setHasTaskCompletionDate:(BOOL)date
{
  if (date)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasNekChangeType:(BOOL)type
{
  if (type)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasNekStoreType:(BOOL)type
{
  if (type)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = NEKPBICSWrapper;
  v3 = [(NEKPBICSWrapper *)&v7 description];
  dictionaryRepresentation = [(NEKPBICSWrapper *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  iCSData = self->_iCSData;
  if (iCSData)
  {
    [v3 setObject:iCSData forKey:@"ICSData"];
  }

  calendarIdentifier = self->_calendarIdentifier;
  if (calendarIdentifier)
  {
    dictionaryRepresentation = [(NEKPBCalendarIdentifier *)calendarIdentifier dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"calendarIdentifier"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v8 = [NSNumber numberWithUnsignedInt:self->_calendarItemCount];
    [v4 setObject:v8 forKey:@"calendarItemCount"];
  }

  metadataKeys = self->_metadataKeys;
  if (metadataKeys)
  {
    [v4 setObject:metadataKeys forKey:@"metadataKeys"];
  }

  if ([(NSMutableArray *)self->_metadataValues count])
  {
    v10 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_metadataValues, "count")}];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v11 = self->_metadataValues;
    v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v29;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v29 != v14)
          {
            objc_enumerationMutation(v11);
          }

          dictionaryRepresentation2 = [*(*(&v28 + 1) + 8 * i) dictionaryRepresentation];
          [v10 addObject:dictionaryRepresentation2];
        }

        v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v13);
    }

    [v4 setObject:v10 forKey:@"metadataValues"];
  }

  syncID = self->_syncID;
  if (syncID)
  {
    [v4 setObject:syncID forKey:@"syncID"];
  }

  oldCalendarIdentifier = self->_oldCalendarIdentifier;
  if (oldCalendarIdentifier)
  {
    [v4 setObject:oldCalendarIdentifier forKey:@"oldCalendarIdentifier"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v19 = [NSNumber numberWithDouble:self->_taskCompletionDate];
    [v4 setObject:v19 forKey:@"taskCompletionDate"];
  }

  oldIdentifier = self->_oldIdentifier;
  if (oldIdentifier)
  {
    [v4 setObject:oldIdentifier forKey:@"oldIdentifier"];
  }

  nuevoIdentifier = self->_nuevoIdentifier;
  if (nuevoIdentifier)
  {
    [v4 setObject:nuevoIdentifier forKey:@"nuevoIdentifier"];
  }

  if (*&self->_has)
  {
    v22 = [NSNumber numberWithUnsignedLongLong:self->_displayOrder];
    [v4 setObject:v22 forKey:@"displayOrder"];
  }

  lzfseICSData = self->_lzfseICSData;
  if (lzfseICSData)
  {
    [v4 setObject:lzfseICSData forKey:@"lzfseICSData"];
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    v25 = [NSNumber numberWithUnsignedInt:self->_nekChangeType];
    [v4 setObject:v25 forKey:@"nekChangeType"];

    has = self->_has;
  }

  if ((has & 0x10) != 0)
  {
    v26 = [NSNumber numberWithUnsignedInt:self->_nekStoreType];
    [v4 setObject:v26 forKey:@"nekStoreType"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_iCSData)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_calendarIdentifier)
  {
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 4) != 0)
  {
    calendarItemCount = self->_calendarItemCount;
    PBDataWriterWriteUint32Field();
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = self->_metadataKeys;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v28;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        PBDataWriterWriteStringField();
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v8);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = self->_metadataValues;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v24;
    do
    {
      for (j = 0; j != v14; j = j + 1)
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v23 + 1) + 8 * j);
        PBDataWriterWriteSubmessage();
      }

      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v14);
  }

  if (self->_syncID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_oldCalendarIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 2) != 0)
  {
    taskCompletionDate = self->_taskCompletionDate;
    PBDataWriterWriteDoubleField();
  }

  if (self->_oldIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_nuevoIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    displayOrder = self->_displayOrder;
    PBDataWriterWriteFixed64Field();
  }

  if (self->_lzfseICSData)
  {
    PBDataWriterWriteDataField();
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    nekChangeType = self->_nekChangeType;
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  if ((has & 0x10) != 0)
  {
    nekStoreType = self->_nekStoreType;
    PBDataWriterWriteUint32Field();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v15 = toCopy;
  if (self->_iCSData)
  {
    [toCopy setICSData:?];
    toCopy = v15;
  }

  if (self->_calendarIdentifier)
  {
    [v15 setCalendarIdentifier:?];
    toCopy = v15;
  }

  if ((*&self->_has & 4) != 0)
  {
    *(toCopy + 8) = self->_calendarItemCount;
    *(toCopy + 112) |= 4u;
  }

  if ([(NEKPBICSWrapper *)self metadataKeysCount])
  {
    [v15 clearMetadataKeys];
    metadataKeysCount = [(NEKPBICSWrapper *)self metadataKeysCount];
    if (metadataKeysCount)
    {
      v6 = metadataKeysCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(NEKPBICSWrapper *)self metadataKeysAtIndex:i];
        [v15 addMetadataKeys:v8];
      }
    }
  }

  if ([(NEKPBICSWrapper *)self metadataValuesCount])
  {
    [v15 clearMetadataValues];
    metadataValuesCount = [(NEKPBICSWrapper *)self metadataValuesCount];
    if (metadataValuesCount)
    {
      v10 = metadataValuesCount;
      for (j = 0; j != v10; ++j)
      {
        v12 = [(NEKPBICSWrapper *)self metadataValuesAtIndex:j];
        [v15 addMetadataValues:v12];
      }
    }
  }

  if (self->_syncID)
  {
    [v15 setSyncID:?];
  }

  v13 = v15;
  if (self->_oldCalendarIdentifier)
  {
    [v15 setOldCalendarIdentifier:?];
    v13 = v15;
  }

  if ((*&self->_has & 2) != 0)
  {
    v13[2] = *&self->_taskCompletionDate;
    *(v13 + 112) |= 2u;
  }

  if (self->_oldIdentifier)
  {
    [v15 setOldIdentifier:?];
    v13 = v15;
  }

  if (self->_nuevoIdentifier)
  {
    [v15 setNuevoIdentifier:?];
    v13 = v15;
  }

  if (*&self->_has)
  {
    v13[1] = self->_displayOrder;
    *(v13 + 112) |= 1u;
  }

  if (self->_lzfseICSData)
  {
    [v15 setLzfseICSData:?];
    v13 = v15;
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v13 + 18) = self->_nekChangeType;
    *(v13 + 112) |= 8u;
    has = self->_has;
  }

  if ((has & 0x10) != 0)
  {
    *(v13 + 19) = self->_nekStoreType;
    *(v13 + 112) |= 0x10u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_iCSData copyWithZone:zone];
  v7 = v5[5];
  v5[5] = v6;

  v8 = [(NEKPBCalendarIdentifier *)self->_calendarIdentifier copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 8) = self->_calendarItemCount;
    *(v5 + 112) |= 4u;
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v10 = self->_metadataKeys;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v39;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v39 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v38 + 1) + 8 * i) copyWithZone:zone];
        [v5 addMetadataKeys:v15];
      }

      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v12);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v16 = self->_metadataValues;
  v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v35;
    do
    {
      for (j = 0; j != v18; j = j + 1)
      {
        if (*v35 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [*(*(&v34 + 1) + 8 * j) copyWithZone:{zone, v34}];
        [v5 addMetadataValues:v21];
      }

      v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v18);
  }

  v22 = [(NSString *)self->_syncID copyWithZone:zone];
  v23 = v5[13];
  v5[13] = v22;

  v24 = [(NSString *)self->_oldCalendarIdentifier copyWithZone:zone];
  v25 = v5[11];
  v5[11] = v24;

  if ((*&self->_has & 2) != 0)
  {
    v5[2] = *&self->_taskCompletionDate;
    *(v5 + 112) |= 2u;
  }

  v26 = [(NSString *)self->_oldIdentifier copyWithZone:zone, v34];
  v27 = v5[12];
  v5[12] = v26;

  v28 = [(NSString *)self->_nuevoIdentifier copyWithZone:zone];
  v29 = v5[10];
  v5[10] = v28;

  if (*&self->_has)
  {
    v5[1] = self->_displayOrder;
    *(v5 + 112) |= 1u;
  }

  v30 = [(NSData *)self->_lzfseICSData copyWithZone:zone];
  v31 = v5[6];
  v5[6] = v30;

  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v5 + 18) = self->_nekChangeType;
    *(v5 + 112) |= 8u;
    has = self->_has;
  }

  if ((has & 0x10) != 0)
  {
    *(v5 + 19) = self->_nekStoreType;
    *(v5 + 112) |= 0x10u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_45;
  }

  iCSData = self->_iCSData;
  if (iCSData | *(equalCopy + 5))
  {
    if (![(NSData *)iCSData isEqual:?])
    {
      goto LABEL_45;
    }
  }

  calendarIdentifier = self->_calendarIdentifier;
  if (calendarIdentifier | *(equalCopy + 3))
  {
    if (![(NEKPBCalendarIdentifier *)calendarIdentifier isEqual:?])
    {
      goto LABEL_45;
    }
  }

  v7 = *(equalCopy + 112);
  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 112) & 4) == 0 || self->_calendarItemCount != *(equalCopy + 8))
    {
      goto LABEL_45;
    }
  }

  else if ((*(equalCopy + 112) & 4) != 0)
  {
    goto LABEL_45;
  }

  metadataKeys = self->_metadataKeys;
  if (metadataKeys | *(equalCopy + 7) && ![(NSMutableArray *)metadataKeys isEqual:?])
  {
    goto LABEL_45;
  }

  metadataValues = self->_metadataValues;
  if (metadataValues | *(equalCopy + 8))
  {
    if (![(NSMutableArray *)metadataValues isEqual:?])
    {
      goto LABEL_45;
    }
  }

  syncID = self->_syncID;
  if (syncID | *(equalCopy + 13))
  {
    if (![(NSString *)syncID isEqual:?])
    {
      goto LABEL_45;
    }
  }

  oldCalendarIdentifier = self->_oldCalendarIdentifier;
  if (oldCalendarIdentifier | *(equalCopy + 11))
  {
    if (![(NSString *)oldCalendarIdentifier isEqual:?])
    {
      goto LABEL_45;
    }
  }

  v12 = *(equalCopy + 112);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 112) & 2) == 0 || self->_taskCompletionDate != *(equalCopy + 2))
    {
      goto LABEL_45;
    }
  }

  else if ((*(equalCopy + 112) & 2) != 0)
  {
    goto LABEL_45;
  }

  oldIdentifier = self->_oldIdentifier;
  if (oldIdentifier | *(equalCopy + 12) && ![(NSString *)oldIdentifier isEqual:?])
  {
    goto LABEL_45;
  }

  nuevoIdentifier = self->_nuevoIdentifier;
  if (nuevoIdentifier | *(equalCopy + 10))
  {
    if (![(NSString *)nuevoIdentifier isEqual:?])
    {
      goto LABEL_45;
    }
  }

  has = self->_has;
  v16 = *(equalCopy + 112);
  if (has)
  {
    if ((*(equalCopy + 112) & 1) == 0 || self->_displayOrder != *(equalCopy + 1))
    {
      goto LABEL_45;
    }
  }

  else if (*(equalCopy + 112))
  {
    goto LABEL_45;
  }

  lzfseICSData = self->_lzfseICSData;
  if (lzfseICSData | *(equalCopy + 6))
  {
    if (![(NSData *)lzfseICSData isEqual:?])
    {
LABEL_45:
      v18 = 0;
      goto LABEL_46;
    }

    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    if ((*(equalCopy + 112) & 8) == 0 || self->_nekChangeType != *(equalCopy + 18))
    {
      goto LABEL_45;
    }
  }

  else if ((*(equalCopy + 112) & 8) != 0)
  {
    goto LABEL_45;
  }

  v18 = (*(equalCopy + 112) & 0x10) == 0;
  if ((has & 0x10) != 0)
  {
    if ((*(equalCopy + 112) & 0x10) == 0 || self->_nekStoreType != *(equalCopy + 19))
    {
      goto LABEL_45;
    }

    v18 = 1;
  }

LABEL_46:

  return v18;
}

- (unint64_t)hash
{
  v22 = [(NSData *)self->_iCSData hash];
  v21 = [(NEKPBCalendarIdentifier *)self->_calendarIdentifier hash];
  if ((*&self->_has & 4) != 0)
  {
    v20 = 2654435761 * self->_calendarItemCount;
  }

  else
  {
    v20 = 0;
  }

  v19 = [(NSMutableArray *)self->_metadataKeys hash];
  v3 = [(NSMutableArray *)self->_metadataValues hash];
  v4 = [(NSString *)self->_syncID hash];
  v5 = [(NSString *)self->_oldCalendarIdentifier hash];
  if ((*&self->_has & 2) != 0)
  {
    taskCompletionDate = self->_taskCompletionDate;
    if (taskCompletionDate < 0.0)
    {
      taskCompletionDate = -taskCompletionDate;
    }

    *v6.i64 = floor(taskCompletionDate + 0.5);
    v10 = (taskCompletionDate - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v11.f64[0] = NAN;
    v11.f64[1] = NAN;
    v8 = 2654435761u * *vbslq_s8(vnegq_f64(v11), v7, v6).i64;
    if (v10 >= 0.0)
    {
      if (v10 > 0.0)
      {
        v8 += v10;
      }
    }

    else
    {
      v8 -= fabs(v10);
    }
  }

  else
  {
    v8 = 0;
  }

  v12 = [(NSString *)self->_oldIdentifier hash];
  v13 = [(NSString *)self->_nuevoIdentifier hash];
  if (*&self->_has)
  {
    v14 = 2654435761u * self->_displayOrder;
  }

  else
  {
    v14 = 0;
  }

  v15 = [(NSData *)self->_lzfseICSData hash];
  if ((*&self->_has & 8) != 0)
  {
    v16 = 2654435761 * self->_nekChangeType;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_17;
    }

LABEL_19:
    v17 = 0;
    return v21 ^ v22 ^ v20 ^ v19 ^ v3 ^ v4 ^ v5 ^ v8 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17;
  }

  v16 = 0;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_19;
  }

LABEL_17:
  v17 = 2654435761 * self->_nekStoreType;
  return v21 ^ v22 ^ v20 ^ v19 ^ v3 ^ v4 ^ v5 ^ v8 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 5))
  {
    [(NEKPBICSWrapper *)self setICSData:?];
  }

  calendarIdentifier = self->_calendarIdentifier;
  v6 = *(fromCopy + 3);
  if (calendarIdentifier)
  {
    if (v6)
    {
      [(NEKPBCalendarIdentifier *)calendarIdentifier mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(NEKPBICSWrapper *)self setCalendarIdentifier:?];
  }

  if ((*(fromCopy + 112) & 4) != 0)
  {
    self->_calendarItemCount = *(fromCopy + 8);
    *&self->_has |= 4u;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = *(fromCopy + 7);
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(NEKPBICSWrapper *)self addMetadataKeys:*(*(&v22 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v9);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = *(fromCopy + 8);
  v13 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      for (j = 0; j != v14; j = j + 1)
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(NEKPBICSWrapper *)self addMetadataValues:*(*(&v18 + 1) + 8 * j), v18];
      }

      v14 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v14);
  }

  if (*(fromCopy + 13))
  {
    [(NEKPBICSWrapper *)self setSyncID:?];
  }

  if (*(fromCopy + 11))
  {
    [(NEKPBICSWrapper *)self setOldCalendarIdentifier:?];
  }

  if ((*(fromCopy + 112) & 2) != 0)
  {
    self->_taskCompletionDate = *(fromCopy + 2);
    *&self->_has |= 2u;
  }

  if (*(fromCopy + 12))
  {
    [(NEKPBICSWrapper *)self setOldIdentifier:?];
  }

  if (*(fromCopy + 10))
  {
    [(NEKPBICSWrapper *)self setNuevoIdentifier:?];
  }

  if (*(fromCopy + 112))
  {
    self->_displayOrder = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 6))
  {
    [(NEKPBICSWrapper *)self setLzfseICSData:?];
  }

  v17 = *(fromCopy + 112);
  if ((v17 & 8) != 0)
  {
    self->_nekChangeType = *(fromCopy + 18);
    *&self->_has |= 8u;
    v17 = *(fromCopy + 112);
  }

  if ((v17 & 0x10) != 0)
  {
    self->_nekStoreType = *(fromCopy + 19);
    *&self->_has |= 0x10u;
  }
}

@end