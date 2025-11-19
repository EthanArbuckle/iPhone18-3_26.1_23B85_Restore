@interface SOSAccountConfiguration
- (BOOL)isEqual:(id)a3;
- (BOOL)readFrom:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addPendingBackupPeers:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SOSAccountConfiguration

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = *(v4 + 1);
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(SOSAccountConfiguration *)self addPendingBackupPeers:*(*(&v10 + 1) + 8 * v9), v10];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  if (*(v4 + 20))
  {
    self->_ringUpdateFlag = *(v4 + 16);
    *&self->_has |= 1u;
  }
}

- (unint64_t)hash
{
  v3 = [(NSMutableArray *)self->_pendingBackupPeers hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_ringUpdateFlag;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_6;
  }

  pendingBackupPeers = self->_pendingBackupPeers;
  if (pendingBackupPeers | *(v4 + 1))
  {
    if (![(NSMutableArray *)pendingBackupPeers isEqual:?])
    {
      goto LABEL_6;
    }
  }

  v6 = (*(v4 + 20) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 20) & 1) == 0)
    {
LABEL_6:
      v6 = 0;
      goto LABEL_7;
    }

    if (self->_ringUpdateFlag)
    {
      if ((*(v4 + 16) & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    else if (*(v4 + 16))
    {
      goto LABEL_6;
    }

    v6 = 1;
  }

LABEL_7:

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = self->_pendingBackupPeers;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v13 + 1) + 8 * v10) copyWithZone:{a3, v13}];
        [v5 addPendingBackupPeers:v11];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  if (*&self->_has)
  {
    v5[16] = self->_ringUpdateFlag;
    v5[20] |= 1u;
  }

  return v5;
}

- (void)copyTo:(id)a3
{
  v8 = a3;
  if ([(SOSAccountConfiguration *)self pendingBackupPeersCount])
  {
    [v8 clearPendingBackupPeers];
    v4 = [(SOSAccountConfiguration *)self pendingBackupPeersCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(SOSAccountConfiguration *)self pendingBackupPeersAtIndex:i];
        [v8 addPendingBackupPeers:v7];
      }
    }
  }

  if (*&self->_has)
  {
    v8[16] = self->_ringUpdateFlag;
    v8[20] |= 1u;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_pendingBackupPeers;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        PBDataWriterWriteStringField();
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  if (*&self->_has)
  {
    ringUpdateFlag = self->_ringUpdateFlag;
    PBDataWriterWriteBOOLField();
  }
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
        v25 = 0;
        v9 = [a3 position] + 1;
        if (v9 >= [a3 position] && (v10 = objc_msgSend(a3, "position") + 1, v10 <= objc_msgSend(a3, "length")))
        {
          v11 = [a3 data];
          [v11 getBytes:&v25 range:{objc_msgSend(a3, "position"), 1}];

          [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
        }

        else
        {
          [a3 _setError];
        }

        v8 |= (v25 & 0x7F) << v6;
        if ((v25 & 0x80) == 0)
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

      if ((v13 >> 3) == 2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *&self->_has |= 1u;
        while (1)
        {
          v26 = 0;
          v18 = [a3 position] + 1;
          if (v18 >= [a3 position] && (v19 = objc_msgSend(a3, "position") + 1, v19 <= objc_msgSend(a3, "length")))
          {
            v20 = [a3 data];
            [v20 getBytes:&v26 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
          }

          v17 |= (v26 & 0x7F) << v15;
          if ((v26 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v12 = v16++ >= 9;
          if (v12)
          {
            LOBYTE(v21) = 0;
            goto LABEL_34;
          }
        }

        v21 = (v17 != 0) & ~[a3 hasError];
LABEL_34:
        self->_ringUpdateFlag = v21;
      }

      else if ((v13 >> 3) == 1)
      {
        v14 = PBReaderReadString();
        if (v14)
        {
          [(SOSAccountConfiguration *)self addPendingBackupPeers:v14];
        }
      }

      else
      {
        v22 = PBReaderSkipValueWithTag();
        if (!v22)
        {
          return v22;
        }
      }

      v23 = [a3 position];
    }

    while (v23 < [a3 length]);
  }

  LOBYTE(v22) = [a3 hasError] ^ 1;
  return v22;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  pendingBackupPeers = self->_pendingBackupPeers;
  if (pendingBackupPeers)
  {
    [v3 setObject:pendingBackupPeers forKey:@"pendingBackupPeers"];
  }

  if (*&self->_has)
  {
    v6 = [NSNumber numberWithBool:self->_ringUpdateFlag];
    [v4 setObject:v6 forKey:@"ringUpdateFlag"];
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = SOSAccountConfiguration;
  v3 = [(SOSAccountConfiguration *)&v7 description];
  v4 = [(SOSAccountConfiguration *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (void)addPendingBackupPeers:(id)a3
{
  v4 = a3;
  pendingBackupPeers = self->_pendingBackupPeers;
  v8 = v4;
  if (!pendingBackupPeers)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_pendingBackupPeers;
    self->_pendingBackupPeers = v6;

    v4 = v8;
    pendingBackupPeers = self->_pendingBackupPeers;
  }

  [(NSMutableArray *)pendingBackupPeers addObject:v4];
}

@end