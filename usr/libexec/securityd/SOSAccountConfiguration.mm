@interface SOSAccountConfiguration
- (BOOL)isEqual:(id)equal;
- (BOOL)readFrom:(id)from;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addPendingBackupPeers:(id)peers;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SOSAccountConfiguration

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = *(fromCopy + 1);
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

  if (*(fromCopy + 20))
  {
    self->_ringUpdateFlag = *(fromCopy + 16);
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_6;
  }

  pendingBackupPeers = self->_pendingBackupPeers;
  if (pendingBackupPeers | *(equalCopy + 1))
  {
    if (![(NSMutableArray *)pendingBackupPeers isEqual:?])
    {
      goto LABEL_6;
    }
  }

  v6 = (*(equalCopy + 20) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 20) & 1) == 0)
    {
LABEL_6:
      v6 = 0;
      goto LABEL_7;
    }

    if (self->_ringUpdateFlag)
    {
      if ((*(equalCopy + 16) & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    else if (*(equalCopy + 16))
    {
      goto LABEL_6;
    }

    v6 = 1;
  }

LABEL_7:

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

        v11 = [*(*(&v13 + 1) + 8 * v10) copyWithZone:{zone, v13}];
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

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(SOSAccountConfiguration *)self pendingBackupPeersCount])
  {
    [toCopy clearPendingBackupPeers];
    pendingBackupPeersCount = [(SOSAccountConfiguration *)self pendingBackupPeersCount];
    if (pendingBackupPeersCount)
    {
      v5 = pendingBackupPeersCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(SOSAccountConfiguration *)self pendingBackupPeersAtIndex:i];
        [toCopy addPendingBackupPeers:v7];
      }
    }
  }

  if (*&self->_has)
  {
    toCopy[16] = self->_ringUpdateFlag;
    toCopy[20] |= 1u;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
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

- (BOOL)readFrom:(id)from
{
  position = [from position];
  if (position < [from length])
  {
    do
    {
      if ([from hasError])
      {
        break;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        v25 = 0;
        v9 = [from position] + 1;
        if (v9 >= [from position] && (v10 = objc_msgSend(from, "position") + 1, v10 <= objc_msgSend(from, "length")))
        {
          data = [from data];
          [data getBytes:&v25 range:{objc_msgSend(from, "position"), 1}];

          [from setPosition:{objc_msgSend(from, "position") + 1}];
        }

        else
        {
          [from _setError];
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

      v13 = [from hasError] ? 0 : v8;
LABEL_15:
      if (([from hasError] & 1) != 0 || (v13 & 7) == 4)
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
          v18 = [from position] + 1;
          if (v18 >= [from position] && (v19 = objc_msgSend(from, "position") + 1, v19 <= objc_msgSend(from, "length")))
          {
            data2 = [from data];
            [data2 getBytes:&v26 range:{objc_msgSend(from, "position"), 1}];

            [from setPosition:{objc_msgSend(from, "position") + 1}];
          }

          else
          {
            [from _setError];
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

        v21 = (v17 != 0) & ~[from hasError];
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

      position2 = [from position];
    }

    while (position2 < [from length]);
  }

  LOBYTE(v22) = [from hasError] ^ 1;
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
  dictionaryRepresentation = [(SOSAccountConfiguration *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (void)addPendingBackupPeers:(id)peers
{
  peersCopy = peers;
  pendingBackupPeers = self->_pendingBackupPeers;
  v8 = peersCopy;
  if (!pendingBackupPeers)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_pendingBackupPeers;
    self->_pendingBackupPeers = v6;

    peersCopy = v8;
    pendingBackupPeers = self->_pendingBackupPeers;
  }

  [(NSMutableArray *)pendingBackupPeers addObject:peersCopy];
}

@end