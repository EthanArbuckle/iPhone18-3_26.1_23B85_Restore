@interface NEKPBDailyAnalytics
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NEKPBDailyAnalytics

- (id)description
{
  v7.receiver = self;
  v7.super_class = NEKPBDailyAnalytics;
  v3 = [(NEKPBDailyAnalytics *)&v7 description];
  dictionaryRepresentation = [(NEKPBDailyAnalytics *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  duplicateCheck = self->_duplicateCheck;
  if (duplicateCheck)
  {
    dictionaryRepresentation = [(NEKPBDuplicateCheck *)duplicateCheck dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation forKey:@"duplicateCheck"];
  }

  occurrenceCache = self->_occurrenceCache;
  if (occurrenceCache)
  {
    dictionaryRepresentation2 = [(NEKPBOccurrenceCache *)occurrenceCache dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation2 forKey:@"occurrenceCache"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_duplicateCheck)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_occurrenceCache)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_duplicateCheck)
  {
    [toCopy setDuplicateCheck:?];
    toCopy = v5;
  }

  if (self->_occurrenceCache)
  {
    [v5 setOccurrenceCache:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NEKPBDuplicateCheck *)self->_duplicateCheck copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NEKPBOccurrenceCache *)self->_occurrenceCache copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((duplicateCheck = self->_duplicateCheck, !(duplicateCheck | equalCopy[1])) || -[NEKPBDuplicateCheck isEqual:](duplicateCheck, "isEqual:")))
  {
    occurrenceCache = self->_occurrenceCache;
    if (occurrenceCache | equalCopy[2])
    {
      v7 = [(NEKPBOccurrenceCache *)occurrenceCache isEqual:?];
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  duplicateCheck = self->_duplicateCheck;
  v6 = fromCopy[1];
  v9 = fromCopy;
  if (duplicateCheck)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(NEKPBDuplicateCheck *)duplicateCheck mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(NEKPBDailyAnalytics *)self setDuplicateCheck:?];
  }

  fromCopy = v9;
LABEL_7:
  occurrenceCache = self->_occurrenceCache;
  v8 = fromCopy[2];
  if (occurrenceCache)
  {
    if (v8)
    {
      [(NEKPBOccurrenceCache *)occurrenceCache mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(NEKPBDailyAnalytics *)self setOccurrenceCache:?];
  }

  _objc_release_x1();
}

@end