@interface _NMRContentItemMetadata
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasIsAutoPlayItem:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation _NMRContentItemMetadata

- (void)setHasIsAutoPlayItem:(BOOL)a3
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
  v7.super_class = _NMRContentItemMetadata;
  v3 = [(_NMRContentItemMetadata *)&v7 description];
  v4 = [(_NMRContentItemMetadata *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_title)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if (self->_artist)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if (self->_album)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  has = self->_has;
  if (has)
  {
    duration = self->_duration;
    PBDataWriterWriteDoubleField();
    v4 = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    isAutoPlayItem = self->_isAutoPlayItem;
    PBDataWriterWriteBOOLField();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_title)
  {
    [v4 setTitle:?];
    v4 = v6;
  }

  if (self->_artist)
  {
    [v6 setArtist:?];
    v4 = v6;
  }

  if (self->_album)
  {
    [v6 setAlbum:?];
    v4 = v6;
  }

  has = self->_has;
  if (has)
  {
    *(v4 + 1) = *&self->_duration;
    *(v4 + 44) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v4 + 40) = self->_isAutoPlayItem;
    *(v4 + 44) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_title copyWithZone:a3];
  v7 = v5[4];
  v5[4] = v6;

  v8 = [(NSString *)self->_artist copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSString *)self->_album copyWithZone:a3];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  title = self->_title;
  if (title | *(v4 + 4))
  {
    if (![(NSString *)title isEqual:?])
    {
      goto LABEL_15;
    }
  }

  artist = self->_artist;
  if (artist | *(v4 + 3))
  {
    if (![(NSString *)artist isEqual:?])
    {
      goto LABEL_15;
    }
  }

  album = self->_album;
  if (album | *(v4 + 2))
  {
    if (![(NSString *)album isEqual:?])
    {
      goto LABEL_15;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 44) & 1) == 0 || self->_duration != *(v4 + 1))
    {
      goto LABEL_15;
    }
  }

  else if (*(v4 + 44))
  {
    goto LABEL_15;
  }

  v8 = (*(v4 + 44) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 44) & 2) == 0)
    {
LABEL_15:
      v8 = 0;
      goto LABEL_16;
    }

    if (self->_isAutoPlayItem)
    {
      if ((*(v4 + 40) & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    else if (*(v4 + 40))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*(v4 + 4))
  {
    [(_NMRContentItemMetadata *)self setTitle:?];
    v4 = v6;
  }

  if (*(v4 + 3))
  {
    [(_NMRContentItemMetadata *)self setArtist:?];
    v4 = v6;
  }

  if (*(v4 + 2))
  {
    [(_NMRContentItemMetadata *)self setAlbum:?];
    v4 = v6;
  }

  v5 = *(v4 + 44);
  if (v5)
  {
    self->_duration = *(v4 + 1);
    *&self->_has |= 1u;
    v5 = *(v4 + 44);
  }

  if ((v5 & 2) != 0)
  {
    self->_isAutoPlayItem = *(v4 + 40);
    *&self->_has |= 2u;
  }
}

@end