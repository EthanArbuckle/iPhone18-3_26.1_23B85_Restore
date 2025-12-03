@interface APPBUserTransparencyRequest
+ (id)options;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasLimitAdTracking:(BOOL)tracking;
- (void)writeTo:(id)to;
@end

@implementation APPBUserTransparencyRequest

+ (id)options
{
  if (qword_1004E69B8 != -1)
  {
    sub_100393E5C();
  }

  v3 = qword_1004E69B0;

  return v3;
}

- (void)setHasLimitAdTracking:(BOOL)tracking
{
  if (tracking)
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
  v7.super_class = APPBUserTransparencyRequest;
  v3 = [(APPBUserTransparencyRequest *)&v7 description];
  dictionaryRepresentation = [(APPBUserTransparencyRequest *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  dPID = self->_dPID;
  if (dPID)
  {
    [v3 setObject:dPID forKey:@"DPID"];
  }

  localeIdentifier = self->_localeIdentifier;
  if (localeIdentifier)
  {
    [v4 setObject:localeIdentifier forKey:@"localeIdentifier"];
  }

  iAdID = self->_iAdID;
  if (iAdID)
  {
    [v4 setObject:iAdID forKey:@"iAdID"];
  }

  contentiAdID = self->_contentiAdID;
  if (contentiAdID)
  {
    [v4 setObject:contentiAdID forKey:@"contentiAdID"];
  }

  iTunesStore = self->_iTunesStore;
  if (iTunesStore)
  {
    [v4 setObject:iTunesStore forKey:@"iTunesStore"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v11 = [NSNumber numberWithBool:self->_limitAdTracking];
    [v4 setObject:v11 forKey:@"limitAdTracking"];

    has = self->_has;
  }

  if (has)
  {
    v12 = [NSNumber numberWithBool:self->_isSignedInToiTunes];
    [v4 setObject:v12 forKey:@"isSignedInToiTunes"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_dPID)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }

  if (self->_localeIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_iAdID)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }

  if (self->_contentiAdID)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }

  if (self->_iTunesStore)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
    toCopy = v6;
    has = self->_has;
  }

  if (has)
  {
    PBDataWriterWriteBOOLField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_dPID)
  {
    [toCopy setDPID:?];
    toCopy = v6;
  }

  if (self->_localeIdentifier)
  {
    [v6 setLocaleIdentifier:?];
    toCopy = v6;
  }

  if (self->_iAdID)
  {
    [v6 setIAdID:?];
    toCopy = v6;
  }

  if (self->_contentiAdID)
  {
    [v6 setContentiAdID:?];
    toCopy = v6;
  }

  if (self->_iTunesStore)
  {
    [v6 setITunesStore:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    toCopy[49] = self->_limitAdTracking;
    toCopy[52] |= 2u;
    has = self->_has;
  }

  if (has)
  {
    toCopy[48] = self->_isSignedInToiTunes;
    toCopy[52] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_dPID copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_localeIdentifier copyWithZone:zone];
  v9 = v5[5];
  v5[5] = v8;

  v10 = [(NSData *)self->_iAdID copyWithZone:zone];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(NSData *)self->_contentiAdID copyWithZone:zone];
  v13 = v5[1];
  v5[1] = v12;

  v14 = [(NSString *)self->_iTunesStore copyWithZone:zone];
  v15 = v5[4];
  v5[4] = v14;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 49) = self->_limitAdTracking;
    *(v5 + 52) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 48) = self->_isSignedInToiTunes;
    *(v5 + 52) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  dPID = self->_dPID;
  if (dPID | *(equalCopy + 2))
  {
    if (![(NSData *)dPID isEqual:?])
    {
      goto LABEL_20;
    }
  }

  localeIdentifier = self->_localeIdentifier;
  if (localeIdentifier | *(equalCopy + 5))
  {
    if (![(NSString *)localeIdentifier isEqual:?])
    {
      goto LABEL_20;
    }
  }

  iAdID = self->_iAdID;
  if (iAdID | *(equalCopy + 3))
  {
    if (![(NSData *)iAdID isEqual:?])
    {
      goto LABEL_20;
    }
  }

  contentiAdID = self->_contentiAdID;
  if (contentiAdID | *(equalCopy + 1))
  {
    if (![(NSData *)contentiAdID isEqual:?])
    {
      goto LABEL_20;
    }
  }

  iTunesStore = self->_iTunesStore;
  if (iTunesStore | *(equalCopy + 4))
  {
    if (![(NSString *)iTunesStore isEqual:?])
    {
      goto LABEL_20;
    }
  }

  if ((*&self->_has & 2) == 0)
  {
    if ((*(equalCopy + 52) & 2) == 0)
    {
      goto LABEL_14;
    }

LABEL_20:
    v10 = 0;
    goto LABEL_21;
  }

  if ((*(equalCopy + 52) & 2) == 0)
  {
    goto LABEL_20;
  }

  if (self->_limitAdTracking)
  {
    if ((*(equalCopy + 49) & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else if (*(equalCopy + 49))
  {
    goto LABEL_20;
  }

LABEL_14:
  v10 = (*(equalCopy + 52) & 1) == 0;
  if (*&self->_has)
  {
    if (*(equalCopy + 52))
    {
      if (self->_isSignedInToiTunes)
      {
        if (*(equalCopy + 48))
        {
          goto LABEL_28;
        }
      }

      else if (!*(equalCopy + 48))
      {
LABEL_28:
        v10 = 1;
        goto LABEL_21;
      }
    }

    goto LABEL_20;
  }

LABEL_21:

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_dPID hash];
  v4 = [(NSString *)self->_localeIdentifier hash];
  v5 = [(NSData *)self->_iAdID hash];
  v6 = [(NSData *)self->_contentiAdID hash];
  v7 = [(NSString *)self->_iTunesStore hash];
  if ((*&self->_has & 2) != 0)
  {
    v8 = 2654435761 * self->_limitAdTracking;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
  }

  v8 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = 2654435761 * self->_isSignedInToiTunes;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v6 = fromCopy;
  if (*(fromCopy + 2))
  {
    [(APPBUserTransparencyRequest *)self setDPID:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 5))
  {
    [(APPBUserTransparencyRequest *)self setLocaleIdentifier:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 3))
  {
    [(APPBUserTransparencyRequest *)self setIAdID:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 1))
  {
    [(APPBUserTransparencyRequest *)self setContentiAdID:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 4))
  {
    [(APPBUserTransparencyRequest *)self setITunesStore:?];
    fromCopy = v6;
  }

  v5 = fromCopy[52];
  if ((v5 & 2) != 0)
  {
    self->_limitAdTracking = fromCopy[49];
    *&self->_has |= 2u;
    v5 = fromCopy[52];
  }

  if (v5)
  {
    self->_isSignedInToiTunes = fromCopy[48];
    *&self->_has |= 1u;
  }
}

@end