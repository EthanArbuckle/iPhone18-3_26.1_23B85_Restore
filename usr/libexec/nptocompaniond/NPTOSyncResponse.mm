@interface NPTOSyncResponse
- (BOOL)isEqual:(id)a3;
- (BOOL)readFrom:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)statusAsString:(int)a3;
- (int)StringAsStatus:(id)a3;
- (int)status;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasHasExternalPowerSourceConnected:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPTOSyncResponse

- (int)status
{
  if (*&self->_has)
  {
    return self->_status;
  }

  else
  {
    return 0;
  }
}

- (id)statusAsString:(int)a3
{
  if (a3 >= 3)
  {
    v4 = [NSString stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    v4 = off_10008B6B8[a3];
  }

  return v4;
}

- (int)StringAsStatus:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"ClientReady"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"NotEnoughSpaceAvailable"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"LowPowerModeEnabled"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasHasExternalPowerSourceConnected:(BOOL)a3
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
  v7.super_class = NPTOSyncResponse;
  v3 = [(NPTOSyncResponse *)&v7 description];
  v4 = [(NPTOSyncResponse *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  library = self->_library;
  if (library)
  {
    v5 = [(NPTOLibrary *)library dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"library"];
  }

  has = self->_has;
  if (has)
  {
    status = self->_status;
    if (status >= 3)
    {
      v8 = [NSString stringWithFormat:@"(unknown: %i)", self->_status];
    }

    else
    {
      v8 = off_10008B6B8[status];
    }

    [v3 setObject:v8 forKey:@"status"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v9 = [NSNumber numberWithBool:self->_hasExternalPowerSourceConnected];
    [v3 setObject:v9 forKey:@"hasExternalPowerSourceConnected"];
  }

  return v3;
}

- (BOOL)readFrom:(id)a3
{
  v5 = [a3 position];
  if (v5 < [a3 length])
  {
    do
    {
      if ([a3 hasError])
      {
        break;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        LOBYTE(v32[0]) = 0;
        v9 = [a3 position] + 1;
        if (v9 >= [a3 position] && (v10 = objc_msgSend(a3, "position") + 1, v10 <= objc_msgSend(a3, "length")))
        {
          v11 = [a3 data];
          [v11 getBytes:v32 range:{objc_msgSend(a3, "position"), 1}];

          [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
        }

        else
        {
          [a3 _setError];
        }

        v8 |= (v32[0] & 0x7F) << v6;
        if ((v32[0] & 0x80) == 0)
        {
          break;
        }

        v6 += 7;
        v12 = v7++ >= 9;
        if (v12)
        {
          v13 = 0;
          goto LABEL_15;
        }
      }

      v13 = [a3 hasError] ? 0 : v8;
LABEL_15:
      if (([a3 hasError] & 1) != 0 || (v13 & 7) == 4)
      {
        break;
      }

      v14 = v13 >> 3;
      if ((v13 >> 3) == 3)
      {
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *&self->_has |= 2u;
        while (1)
        {
          LOBYTE(v32[0]) = 0;
          v26 = [a3 position] + 1;
          if (v26 >= [a3 position] && (v27 = objc_msgSend(a3, "position") + 1, v27 <= objc_msgSend(a3, "length")))
          {
            v28 = [a3 data];
            [v28 getBytes:v32 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
          }

          v25 |= (v32[0] & 0x7F) << v23;
          if ((v32[0] & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v12 = v24++ >= 9;
          if (v12)
          {
            LOBYTE(v29) = 0;
            goto LABEL_48;
          }
        }

        v29 = (v25 != 0) & ~[a3 hasError];
LABEL_48:
        self->_hasExternalPowerSourceConnected = v29;
      }

      else if (v14 == 2)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        *&self->_has |= 1u;
        while (1)
        {
          LOBYTE(v32[0]) = 0;
          v19 = [a3 position] + 1;
          if (v19 >= [a3 position] && (v20 = objc_msgSend(a3, "position") + 1, v20 <= objc_msgSend(a3, "length")))
          {
            v21 = [a3 data];
            [v21 getBytes:v32 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
          }

          v18 |= (v32[0] & 0x7F) << v16;
          if ((v32[0] & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v12 = v17++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_46;
          }
        }

        if ([a3 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v18;
        }

LABEL_46:
        self->_status = v22;
      }

      else if (v14 == 1)
      {
        v15 = objc_alloc_init(NPTOLibrary);
        objc_storeStrong(&self->_library, v15);
        v32[0] = 0;
        v32[1] = 0;
        if (!PBReaderPlaceMark() || !NPTOLibraryReadFrom(v15, a3))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v30 = [a3 position];
    }

    while (v30 < [a3 length]);
  }

  return [a3 hasError] ^ 1;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_library)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    v4 = v6;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (self->_library)
  {
    v6 = v4;
    [v4 setLibrary:?];
    v4 = v6;
  }

  has = self->_has;
  if (has)
  {
    *(v4 + 4) = self->_status;
    *(v4 + 24) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v4 + 20) = self->_hasExternalPowerSourceConnected;
    *(v4 + 24) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NPTOLibrary *)self->_library copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  has = self->_has;
  if (has)
  {
    *(v5 + 4) = self->_status;
    *(v5 + 24) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 20) = self->_hasExternalPowerSourceConnected;
    *(v5 + 24) |= 2u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  library = self->_library;
  if (library | *(v4 + 1))
  {
    if (![(NPTOLibrary *)library isEqual:?])
    {
      goto LABEL_11;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 24) & 1) == 0 || self->_status != *(v4 + 4))
    {
      goto LABEL_11;
    }
  }

  else if (*(v4 + 24))
  {
    goto LABEL_11;
  }

  v6 = (*(v4 + 24) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 24) & 2) == 0)
    {
LABEL_11:
      v6 = 0;
      goto LABEL_12;
    }

    if (self->_hasExternalPowerSourceConnected)
    {
      if ((*(v4 + 20) & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    else if (*(v4 + 20))
    {
      goto LABEL_11;
    }

    v6 = 1;
  }

LABEL_12:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NPTOLibrary *)self->_library hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_status;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    return v4 ^ v3 ^ v5;
  }

  v4 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 2654435761 * self->_hasExternalPowerSourceConnected;
  return v4 ^ v3 ^ v5;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  library = self->_library;
  v6 = *(v4 + 1);
  if (library)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v8 = v4;
    [(NPTOLibrary *)library mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v8 = v4;
    [(NPTOSyncResponse *)self setLibrary:?];
  }

  v4 = v8;
LABEL_7:
  v7 = *(v4 + 24);
  if (v7)
  {
    self->_status = *(v4 + 4);
    *&self->_has |= 1u;
    v7 = *(v4 + 24);
  }

  if ((v7 & 2) != 0)
  {
    self->_hasExternalPowerSourceConnected = *(v4 + 20);
    *&self->_has |= 2u;
  }

  _objc_release_x1();
}

@end