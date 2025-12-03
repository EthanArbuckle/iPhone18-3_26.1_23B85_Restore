@interface _NMRContentItemMetadata
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasIsAutoPlayItem:(BOOL)item;
- (void)writeTo:(id)to;
@end

@implementation _NMRContentItemMetadata

- (void)setHasIsAutoPlayItem:(BOOL)item
{
  if (item)
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
  v7.super_class = _NMRContentItemMetadata;
  v3 = [(_NMRContentItemMetadata *)&v7 description];
  dictionaryRepresentation = [(_NMRContentItemMetadata *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  title = self->_title;
  if (title)
  {
    [v3 setObject:title forKey:@"title"];
  }

  artist = self->_artist;
  if (artist)
  {
    [v4 setObject:artist forKey:@"artist"];
  }

  album = self->_album;
  if (album)
  {
    [v4 setObject:album forKey:@"album"];
  }

  has = self->_has;
  if (has)
  {
    v9 = [NSNumber numberWithDouble:self->_duration];
    [v4 setObject:v9 forKey:@"duration"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v10 = [NSNumber numberWithBool:self->_isAutoPlayItem];
    [v4 setObject:v10 forKey:@"isAutoPlayItem"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v8 = toCopy;
  if (self->_title)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  if (self->_artist)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  if (self->_album)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  has = self->_has;
  if (has)
  {
    duration = self->_duration;
    PBDataWriterWriteDoubleField();
    toCopy = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    isAutoPlayItem = self->_isAutoPlayItem;
    PBDataWriterWriteBOOLField();
    toCopy = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_title)
  {
    [toCopy setTitle:?];
    toCopy = v6;
  }

  if (self->_artist)
  {
    [v6 setArtist:?];
    toCopy = v6;
  }

  if (self->_album)
  {
    [v6 setAlbum:?];
    toCopy = v6;
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 1) = *&self->_duration;
    *(toCopy + 44) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(toCopy + 40) = self->_isAutoPlayItem;
    *(toCopy + 44) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_title copyWithZone:zone];
  v7 = v5[4];
  v5[4] = v6;

  v8 = [(NSString *)self->_artist copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSString *)self->_album copyWithZone:zone];
  v11 = v5[2];
  v5[2] = v10;

  has = self->_has;
  if (has)
  {
    v5[1] = *&self->_duration;
    *(v5 + 44) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 40) = self->_isAutoPlayItem;
    *(v5 + 44) |= 2u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  title = self->_title;
  if (title | *(equalCopy + 4))
  {
    if (![(NSString *)title isEqual:?])
    {
      goto LABEL_15;
    }
  }

  artist = self->_artist;
  if (artist | *(equalCopy + 3))
  {
    if (![(NSString *)artist isEqual:?])
    {
      goto LABEL_15;
    }
  }

  album = self->_album;
  if (album | *(equalCopy + 2))
  {
    if (![(NSString *)album isEqual:?])
    {
      goto LABEL_15;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 44) & 1) == 0 || self->_duration != *(equalCopy + 1))
    {
      goto LABEL_15;
    }
  }

  else if (*(equalCopy + 44))
  {
    goto LABEL_15;
  }

  v8 = (*(equalCopy + 44) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 44) & 2) == 0)
    {
LABEL_15:
      v8 = 0;
      goto LABEL_16;
    }

    if (self->_isAutoPlayItem)
    {
      if ((*(equalCopy + 40) & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    else if (*(equalCopy + 40))
    {
      goto LABEL_15;
    }

    v8 = 1;
  }

LABEL_16:

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_title hash];
  v4 = [(NSString *)self->_artist hash];
  v5 = [(NSString *)self->_album hash];
  if (*&self->_has)
  {
    duration = self->_duration;
    if (duration < 0.0)
    {
      duration = -duration;
    }

    *v6.i64 = floor(duration + 0.5);
    v10 = (duration - *v6.i64) * 1.84467441e19;
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

  if ((*&self->_has & 2) != 0)
  {
    v12 = 2654435761 * self->_isAutoPlayItem;
  }

  else
  {
    v12 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v8 ^ v12;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v6 = fromCopy;
  if (*(fromCopy + 4))
  {
    [(_NMRContentItemMetadata *)self setTitle:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 3))
  {
    [(_NMRContentItemMetadata *)self setArtist:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 2))
  {
    [(_NMRContentItemMetadata *)self setAlbum:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 44);
  if (v5)
  {
    self->_duration = *(fromCopy + 1);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 44);
  }

  if ((v5 & 2) != 0)
  {
    self->_isAutoPlayItem = *(fromCopy + 40);
    *&self->_has |= 2u;
  }
}

@end