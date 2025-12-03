@interface PDURLSessionProxyCreateSession
- (BOOL)isEqual:(id)equal;
- (BOOL)readFrom:(id)from;
- (NSURLSessionConfiguration)_actualConfiguration;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)_setActualConfiguration:(id)configuration;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasDelegateImplementsSessionAuthChallenge:(BOOL)challenge;
- (void)setHasDelegateImplementsTaskAuthChallenge:(BOOL)challenge;
- (void)setHasDelegateImplementsWillPerformRedirection:(BOOL)redirection;
- (void)setHasDelegateImplementsWillSendRequest:(BOOL)request;
- (void)setHasSupportsRedirects:(BOOL)redirects;
- (void)writeTo:(id)to;
@end

@implementation PDURLSessionProxyCreateSession

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  session = self->_session;
  v6 = *(fromCopy + 2);
  v8 = fromCopy;
  if (session)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(PDURLSessionProxySessionMessage *)session mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(PDURLSessionProxyCreateSession *)self setSession:?];
  }

  fromCopy = v8;
LABEL_7:
  if (*(fromCopy + 1))
  {
    [(PDURLSessionProxyCreateSession *)self setConfiguration:?];
    fromCopy = v8;
  }

  v7 = *(fromCopy + 32);
  if ((v7 & 0x20) != 0)
  {
    self->_supportsRedirects = *(fromCopy + 29);
    *&self->_has |= 0x20u;
    v7 = *(fromCopy + 32);
    if ((v7 & 0x10) == 0)
    {
LABEL_11:
      if ((v7 & 2) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_21;
    }
  }

  else if ((*(fromCopy + 32) & 0x10) == 0)
  {
    goto LABEL_11;
  }

  self->_delegateImplementsWillSendRequest = *(fromCopy + 28);
  *&self->_has |= 0x10u;
  v7 = *(fromCopy + 32);
  if ((v7 & 2) == 0)
  {
LABEL_12:
    if ((v7 & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_22;
  }

LABEL_21:
  self->_delegateImplementsSessionAuthChallenge = *(fromCopy + 25);
  *&self->_has |= 2u;
  v7 = *(fromCopy + 32);
  if ((v7 & 4) == 0)
  {
LABEL_13:
    if ((v7 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_23;
  }

LABEL_22:
  self->_delegateImplementsTaskAuthChallenge = *(fromCopy + 26);
  *&self->_has |= 4u;
  v7 = *(fromCopy + 32);
  if ((v7 & 8) == 0)
  {
LABEL_14:
    if ((v7 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_23:
  self->_delegateImplementsWillPerformRedirection = *(fromCopy + 27);
  *&self->_has |= 8u;
  if (*(fromCopy + 32))
  {
LABEL_15:
    self->_delegateImplementsDidReceiveResponse = *(fromCopy + 24);
    *&self->_has |= 1u;
  }

LABEL_16:
}

- (unint64_t)hash
{
  v3 = [(PDURLSessionProxySessionMessage *)self->_session hash];
  v4 = [(NSData *)self->_configuration hash];
  if ((*&self->_has & 0x20) != 0)
  {
    v5 = 2654435761 * self->_supportsRedirects;
    if ((*&self->_has & 0x10) != 0)
    {
LABEL_3:
      v6 = 2654435761 * self->_delegateImplementsWillSendRequest;
      if ((*&self->_has & 2) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v5 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    v7 = 2654435761 * self->_delegateImplementsSessionAuthChallenge;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v7 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_5:
    v8 = 2654435761 * self->_delegateImplementsTaskAuthChallenge;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v9 = 0;
    if (*&self->_has)
    {
      goto LABEL_7;
    }

LABEL_13:
    v10 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
  }

LABEL_11:
  v8 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v9 = 2654435761 * self->_delegateImplementsWillPerformRedirection;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  v10 = 2654435761 * self->_delegateImplementsDidReceiveResponse;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_52;
  }

  session = self->_session;
  if (session | *(equalCopy + 2))
  {
    if (![(PDURLSessionProxySessionMessage *)session isEqual:?])
    {
      goto LABEL_52;
    }
  }

  configuration = self->_configuration;
  if (configuration | *(equalCopy + 1))
  {
    if (![(NSData *)configuration isEqual:?])
    {
      goto LABEL_52;
    }
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(equalCopy + 32) & 0x20) == 0)
    {
      goto LABEL_52;
    }

    v8 = *(equalCopy + 29);
    if (self->_supportsRedirects)
    {
      if ((*(equalCopy + 29) & 1) == 0)
      {
        goto LABEL_52;
      }
    }

    else if (*(equalCopy + 29))
    {
      goto LABEL_52;
    }
  }

  else if ((*(equalCopy + 32) & 0x20) != 0)
  {
    goto LABEL_52;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 32) & 0x10) == 0)
    {
      goto LABEL_52;
    }

    v9 = *(equalCopy + 28);
    if (self->_delegateImplementsWillSendRequest)
    {
      if ((*(equalCopy + 28) & 1) == 0)
      {
        goto LABEL_52;
      }
    }

    else if (*(equalCopy + 28))
    {
      goto LABEL_52;
    }
  }

  else if ((*(equalCopy + 32) & 0x10) != 0)
  {
    goto LABEL_52;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 32) & 2) == 0)
    {
      goto LABEL_52;
    }

    v10 = *(equalCopy + 25);
    if (self->_delegateImplementsSessionAuthChallenge)
    {
      if ((*(equalCopy + 25) & 1) == 0)
      {
        goto LABEL_52;
      }
    }

    else if (*(equalCopy + 25))
    {
      goto LABEL_52;
    }
  }

  else if ((*(equalCopy + 32) & 2) != 0)
  {
    goto LABEL_52;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 32) & 4) == 0)
    {
      goto LABEL_52;
    }

    v11 = *(equalCopy + 26);
    if (self->_delegateImplementsTaskAuthChallenge)
    {
      if ((*(equalCopy + 26) & 1) == 0)
      {
        goto LABEL_52;
      }
    }

    else if (*(equalCopy + 26))
    {
      goto LABEL_52;
    }
  }

  else if ((*(equalCopy + 32) & 4) != 0)
  {
    goto LABEL_52;
  }

  if ((*&self->_has & 8) == 0)
  {
    if ((*(equalCopy + 32) & 8) == 0)
    {
      goto LABEL_16;
    }

LABEL_52:
    v7 = 0;
    goto LABEL_53;
  }

  if ((*(equalCopy + 32) & 8) == 0)
  {
    goto LABEL_52;
  }

  v12 = *(equalCopy + 27);
  if (self->_delegateImplementsWillPerformRedirection)
  {
    if ((*(equalCopy + 27) & 1) == 0)
    {
      goto LABEL_52;
    }
  }

  else if (*(equalCopy + 27))
  {
    goto LABEL_52;
  }

LABEL_16:
  v7 = (*(equalCopy + 32) & 1) == 0;
  if (*&self->_has)
  {
    if (*(equalCopy + 32))
    {
      if (self->_delegateImplementsDidReceiveResponse)
      {
        if (*(equalCopy + 24))
        {
          goto LABEL_54;
        }
      }

      else if (!*(equalCopy + 24))
      {
LABEL_54:
        v7 = 1;
        goto LABEL_53;
      }
    }

    goto LABEL_52;
  }

LABEL_53:

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(PDURLSessionProxySessionMessage *)self->_session copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSData *)self->_configuration copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    *(v5 + 29) = self->_supportsRedirects;
    *(v5 + 32) |= 0x20u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 28) = self->_delegateImplementsWillSendRequest;
  *(v5 + 32) |= 0x10u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  *(v5 + 25) = self->_delegateImplementsSessionAuthChallenge;
  *(v5 + 32) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

LABEL_13:
    *(v5 + 27) = self->_delegateImplementsWillPerformRedirection;
    *(v5 + 32) |= 8u;
    if ((*&self->_has & 1) == 0)
    {
      return v5;
    }

    goto LABEL_7;
  }

LABEL_12:
  *(v5 + 26) = self->_delegateImplementsTaskAuthChallenge;
  *(v5 + 32) |= 4u;
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_13;
  }

LABEL_6:
  if (has)
  {
LABEL_7:
    *(v5 + 24) = self->_delegateImplementsDidReceiveResponse;
    *(v5 + 32) |= 1u;
  }

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_session)
  {
    [toCopy setSession:?];
    toCopy = v6;
  }

  if (self->_configuration)
  {
    [v6 setConfiguration:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    toCopy[29] = self->_supportsRedirects;
    toCopy[32] |= 0x20u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_7:
      if ((has & 2) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_7;
  }

  toCopy[28] = self->_delegateImplementsWillSendRequest;
  toCopy[32] |= 0x10u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_8:
    if ((has & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:
  toCopy[25] = self->_delegateImplementsSessionAuthChallenge;
  toCopy[32] |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_9:
    if ((has & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_18:
  toCopy[26] = self->_delegateImplementsTaskAuthChallenge;
  toCopy[32] |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_10:
    if ((has & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_19:
  toCopy[27] = self->_delegateImplementsWillPerformRedirection;
  toCopy[32] |= 8u;
  if (*&self->_has)
  {
LABEL_11:
    toCopy[24] = self->_delegateImplementsDidReceiveResponse;
    toCopy[32] |= 1u;
  }

LABEL_12:
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v12 = toCopy;
  if (self->_session)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v12;
  }

  if (self->_configuration)
  {
    PBDataWriterWriteDataField();
    toCopy = v12;
  }

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    supportsRedirects = self->_supportsRedirects;
    PBDataWriterWriteBOOLField();
    toCopy = v12;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_7:
      if ((has & 2) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_7;
  }

  delegateImplementsWillSendRequest = self->_delegateImplementsWillSendRequest;
  PBDataWriterWriteBOOLField();
  toCopy = v12;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_8:
    if ((has & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:
  delegateImplementsSessionAuthChallenge = self->_delegateImplementsSessionAuthChallenge;
  PBDataWriterWriteBOOLField();
  toCopy = v12;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_9:
    if ((has & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_18:
  delegateImplementsTaskAuthChallenge = self->_delegateImplementsTaskAuthChallenge;
  PBDataWriterWriteBOOLField();
  toCopy = v12;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_10:
    if ((has & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_19:
  delegateImplementsWillPerformRedirection = self->_delegateImplementsWillPerformRedirection;
  PBDataWriterWriteBOOLField();
  toCopy = v12;
  if (*&self->_has)
  {
LABEL_11:
    delegateImplementsDidReceiveResponse = self->_delegateImplementsDidReceiveResponse;
    PBDataWriterWriteBOOLField();
    toCopy = v12;
  }

LABEL_12:
}

- (BOOL)readFrom:(id)from
{
  position = [from position];
  if (position < [from length])
  {
    while (1)
    {
      if ([from hasError])
      {
        return [from hasError] ^ 1;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        LOBYTE(v58[0]) = 0;
        v9 = [from position] + 1;
        if (v9 >= [from position] && (v10 = objc_msgSend(from, "position") + 1, v10 <= objc_msgSend(from, "length")))
        {
          data = [from data];
          [data getBytes:v58 range:{objc_msgSend(from, "position"), 1}];

          [from setPosition:{objc_msgSend(from, "position") + 1}];
        }

        else
        {
          [from _setError];
        }

        v8 |= (v58[0] & 0x7F) << v6;
        if ((v58[0] & 0x80) == 0)
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
        return [from hasError] ^ 1;
      }

      v14 = v13 >> 3;
      if ((v13 >> 3) > 4)
      {
        break;
      }

      if (v14 > 2)
      {
        if (v14 == 3)
        {
          v43 = 0;
          v44 = 0;
          v45 = 0;
          *&self->_has |= 0x20u;
          while (1)
          {
            LOBYTE(v58[0]) = 0;
            v46 = [from position] + 1;
            if (v46 >= [from position] && (v47 = objc_msgSend(from, "position") + 1, v47 <= objc_msgSend(from, "length")))
            {
              data2 = [from data];
              [data2 getBytes:v58 range:{objc_msgSend(from, "position"), 1}];

              [from setPosition:{objc_msgSend(from, "position") + 1}];
            }

            else
            {
              [from _setError];
            }

            v45 |= (v58[0] & 0x7F) << v43;
            if ((v58[0] & 0x80) == 0)
            {
              break;
            }

            v43 += 7;
            v12 = v44++ >= 9;
            if (v12)
            {
              LOBYTE(v23) = 0;
              goto LABEL_91;
            }
          }

          v23 = (v45 != 0) & ~[from hasError];
LABEL_91:
          v55 = 29;
          goto LABEL_100;
        }

        if (v14 == 4)
        {
          v24 = 0;
          v25 = 0;
          v26 = 0;
          *&self->_has |= 0x10u;
          while (1)
          {
            LOBYTE(v58[0]) = 0;
            v27 = [from position] + 1;
            if (v27 >= [from position] && (v28 = objc_msgSend(from, "position") + 1, v28 <= objc_msgSend(from, "length")))
            {
              data3 = [from data];
              [data3 getBytes:v58 range:{objc_msgSend(from, "position"), 1}];

              [from setPosition:{objc_msgSend(from, "position") + 1}];
            }

            else
            {
              [from _setError];
            }

            v26 |= (v58[0] & 0x7F) << v24;
            if ((v58[0] & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            v12 = v25++ >= 9;
            if (v12)
            {
              LOBYTE(v23) = 0;
              goto LABEL_97;
            }
          }

          v23 = (v26 != 0) & ~[from hasError];
LABEL_97:
          v55 = 28;
LABEL_100:
          self->PBCodable_opaque[v55] = v23;
          goto LABEL_101;
        }

        goto LABEL_86;
      }

      if (v14 != 1)
      {
        if (v14 == 2)
        {
          v15 = PBReaderReadData();
          configuration = self->_configuration;
          self->_configuration = v15;

          goto LABEL_101;
        }

        goto LABEL_86;
      }

      v36 = objc_alloc_init(PDURLSessionProxySessionMessage);
      objc_storeStrong(&self->_session, v36);
      v58[0] = 0;
      v58[1] = 0;
      if (!PBReaderPlaceMark() || !sub_100077B9C(v36, from))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_101:
      position2 = [from position];
      if (position2 >= [from length])
      {
        return [from hasError] ^ 1;
      }
    }

    if (v14 > 6)
    {
      if (v14 == 7)
      {
        v49 = 0;
        v50 = 0;
        v51 = 0;
        *&self->_has |= 8u;
        while (1)
        {
          LOBYTE(v58[0]) = 0;
          v52 = [from position] + 1;
          if (v52 >= [from position] && (v53 = objc_msgSend(from, "position") + 1, v53 <= objc_msgSend(from, "length")))
          {
            data4 = [from data];
            [data4 getBytes:v58 range:{objc_msgSend(from, "position"), 1}];

            [from setPosition:{objc_msgSend(from, "position") + 1}];
          }

          else
          {
            [from _setError];
          }

          v51 |= (v58[0] & 0x7F) << v49;
          if ((v58[0] & 0x80) == 0)
          {
            break;
          }

          v49 += 7;
          v12 = v50++ >= 9;
          if (v12)
          {
            LOBYTE(v23) = 0;
            goto LABEL_93;
          }
        }

        v23 = (v51 != 0) & ~[from hasError];
LABEL_93:
        v55 = 27;
        goto LABEL_100;
      }

      if (v14 == 8)
      {
        v30 = 0;
        v31 = 0;
        v32 = 0;
        *&self->_has |= 1u;
        while (1)
        {
          LOBYTE(v58[0]) = 0;
          v33 = [from position] + 1;
          if (v33 >= [from position] && (v34 = objc_msgSend(from, "position") + 1, v34 <= objc_msgSend(from, "length")))
          {
            data5 = [from data];
            [data5 getBytes:v58 range:{objc_msgSend(from, "position"), 1}];

            [from setPosition:{objc_msgSend(from, "position") + 1}];
          }

          else
          {
            [from _setError];
          }

          v32 |= (v58[0] & 0x7F) << v30;
          if ((v58[0] & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v12 = v31++ >= 9;
          if (v12)
          {
            LOBYTE(v23) = 0;
            goto LABEL_99;
          }
        }

        v23 = (v32 != 0) & ~[from hasError];
LABEL_99:
        v55 = 24;
        goto LABEL_100;
      }
    }

    else
    {
      if (v14 == 5)
      {
        v37 = 0;
        v38 = 0;
        v39 = 0;
        *&self->_has |= 2u;
        while (1)
        {
          LOBYTE(v58[0]) = 0;
          v40 = [from position] + 1;
          if (v40 >= [from position] && (v41 = objc_msgSend(from, "position") + 1, v41 <= objc_msgSend(from, "length")))
          {
            data6 = [from data];
            [data6 getBytes:v58 range:{objc_msgSend(from, "position"), 1}];

            [from setPosition:{objc_msgSend(from, "position") + 1}];
          }

          else
          {
            [from _setError];
          }

          v39 |= (v58[0] & 0x7F) << v37;
          if ((v58[0] & 0x80) == 0)
          {
            break;
          }

          v37 += 7;
          v12 = v38++ >= 9;
          if (v12)
          {
            LOBYTE(v23) = 0;
            goto LABEL_89;
          }
        }

        v23 = (v39 != 0) & ~[from hasError];
LABEL_89:
        v55 = 25;
        goto LABEL_100;
      }

      if (v14 == 6)
      {
        v17 = 0;
        v18 = 0;
        v19 = 0;
        *&self->_has |= 4u;
        while (1)
        {
          LOBYTE(v58[0]) = 0;
          v20 = [from position] + 1;
          if (v20 >= [from position] && (v21 = objc_msgSend(from, "position") + 1, v21 <= objc_msgSend(from, "length")))
          {
            data7 = [from data];
            [data7 getBytes:v58 range:{objc_msgSend(from, "position"), 1}];

            [from setPosition:{objc_msgSend(from, "position") + 1}];
          }

          else
          {
            [from _setError];
          }

          v19 |= (v58[0] & 0x7F) << v17;
          if ((v58[0] & 0x80) == 0)
          {
            break;
          }

          v17 += 7;
          v12 = v18++ >= 9;
          if (v12)
          {
            LOBYTE(v23) = 0;
            goto LABEL_95;
          }
        }

        v23 = (v19 != 0) & ~[from hasError];
LABEL_95:
        v55 = 26;
        goto LABEL_100;
      }
    }

LABEL_86:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_101;
  }

  return [from hasError] ^ 1;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  session = self->_session;
  if (session)
  {
    dictionaryRepresentation = [(PDURLSessionProxySessionMessage *)session dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation forKey:@"session"];
  }

  configuration = self->_configuration;
  if (configuration)
  {
    [v3 setObject:configuration forKey:@"configuration"];
  }

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    v10 = [NSNumber numberWithBool:self->_supportsRedirects];
    [v3 setObject:v10 forKey:@"supportsRedirects"];

    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_7:
      if ((has & 2) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_7;
  }

  v11 = [NSNumber numberWithBool:self->_delegateImplementsWillSendRequest];
  [v3 setObject:v11 forKey:@"delegateImplementsWillSendRequest"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_8:
    if ((has & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:
  v12 = [NSNumber numberWithBool:self->_delegateImplementsSessionAuthChallenge];
  [v3 setObject:v12 forKey:@"delegateImplementsSessionAuthChallenge"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_9:
    if ((has & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_18:
  v13 = [NSNumber numberWithBool:self->_delegateImplementsTaskAuthChallenge];
  [v3 setObject:v13 forKey:@"delegateImplementsTaskAuthChallenge"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_10:
    if ((has & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_19:
  v14 = [NSNumber numberWithBool:self->_delegateImplementsWillPerformRedirection];
  [v3 setObject:v14 forKey:@"delegateImplementsWillPerformRedirection"];

  if (*&self->_has)
  {
LABEL_11:
    v8 = [NSNumber numberWithBool:self->_delegateImplementsDidReceiveResponse];
    [v3 setObject:v8 forKey:@"delegateImplementsDidReceiveResponse"];
  }

LABEL_12:

  return v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDURLSessionProxyCreateSession;
  v3 = [(PDURLSessionProxyCreateSession *)&v7 description];
  dictionaryRepresentation = [(PDURLSessionProxyCreateSession *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (void)setHasDelegateImplementsWillPerformRedirection:(BOOL)redirection
{
  if (redirection)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasDelegateImplementsTaskAuthChallenge:(BOOL)challenge
{
  if (challenge)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasDelegateImplementsSessionAuthChallenge:(BOOL)challenge
{
  if (challenge)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasDelegateImplementsWillSendRequest:(BOOL)request
{
  if (request)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasSupportsRedirects:(BOOL)redirects
{
  if (redirects)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)_setActualConfiguration:(id)configuration
{
  v4 = [NSKeyedArchiver _nsurlsessionproxy_secureArchivedDataWithRootObject:configuration];
  [(PDURLSessionProxyCreateSession *)self setConfiguration:?];
}

- (NSURLSessionConfiguration)_actualConfiguration
{
  v3 = objc_opt_class();
  configuration = [(PDURLSessionProxyCreateSession *)self configuration];
  v5 = [NSKeyedUnarchiver _nsurlsessionproxy_secureUnarchiveObjectOfClass:v3 withData:configuration];

  return v5;
}

@end