@interface NEKPBDailyAnalytics
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NEKPBDailyAnalytics

- (id)description
{
  v7.receiver = self;
  v7.super_class = NEKPBDailyAnalytics;
  v3 = [(NEKPBDailyAnalytics *)&v7 description];
  v4 = [(NEKPBDailyAnalytics *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  duplicateCheck = self->_duplicateCheck;
  if (duplicateCheck)
  {
    v5 = [(NEKPBDuplicateCheck *)duplicateCheck dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"duplicateCheck"];
  }

  occurrenceCache = self->_occurrenceCache;
  if (occurrenceCache)
  {
    v7 = [(NEKPBOccurrenceCache *)occurrenceCache dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"occurrenceCache"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_duplicateCheck)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_occurrenceCache)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_duplicateCheck)
  {
    [v4 setDuplicateCheck:?];
    v4 = v5;
  }

  if (self->_occurrenceCache)
  {
    [v5 setOccurrenceCache:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NEKPBDuplicateCheck *)self->_duplicateCheck copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NEKPBOccurrenceCache *)self->_occurrenceCache copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((duplicateCheck = self->_duplicateCheck, !(duplicateCheck | v4[1])) || -[NEKPBDuplicateCheck isEqual:](duplicateCheck, "isEqual:")))
  {
    occurrenceCache = self->_occurrenceCache;
    if (occurrenceCache | v4[2])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  duplicateCheck = self->_duplicateCheck;
  v6 = v4[1];
  v9 = v4;
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

  v4 = v9;
LABEL_7:
  occurrenceCache = self->_occurrenceCache;
  v8 = v4[2];
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