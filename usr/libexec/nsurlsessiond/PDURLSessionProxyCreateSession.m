@interface PDURLSessionProxyCreateSession
- (BOOL)isEqual:(id)a3;
- (BOOL)readFrom:(id)a3;
- (NSURLSessionConfiguration)_actualConfiguration;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)_setActualConfiguration:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasDelegateImplementsSessionAuthChallenge:(BOOL)a3;
- (void)setHasDelegateImplementsTaskAuthChallenge:(BOOL)a3;
- (void)setHasDelegateImplementsWillPerformRedirection:(BOOL)a3;
- (void)setHasDelegateImplementsWillSendRequest:(BOOL)a3;
- (void)setHasSupportsRedirects:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PDURLSessionProxyCreateSession

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  session = self->_session;
  v6 = *(v4 + 2);
  v8 = v4;
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

  v4 = v8;
LABEL_7:
  if (*(v4 + 1))
  {
    [(PDURLSessionProxyCreateSession *)self setConfiguration:?];
    v4 = v8;
  }

  v7 = *(v4 + 32);
  if ((v7 & 0x20) != 0)
  {
    self->_supportsRedirects = *(v4 + 29);
    *&self->_has |= 0x20u;
    v7 = *(v4 + 32);
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

  else if ((*(v4 + 32) & 0x10) == 0)
  {
    goto LABEL_11;
  }

  self->_delegateImplementsWillSendRequest = *(v4 + 28);
  *&self->_has |= 0x10u;
  v7 = *(v4 + 32);
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
  self->_delegateImplementsSessionAuthChallenge = *(v4 + 25);
  *&self->_has |= 2u;
  v7 = *(v4 + 32);
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
  self->_delegateImplementsTaskAuthChallenge = *(v4 + 26);
  *&self->_has |= 4u;
  v7 = *(v4 + 32);
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
  self->_delegateImplementsWillPerformRedirection = *(v4 + 27);
  *&self->_has |= 8u;
  if (*(v4 + 32))
  {
LABEL_15:
    self->_delegateImplementsDidReceiveResponse = *(v4 + 24);
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_52;
  }

  session = self->_session;
  if (session | *(v4 + 2))
  {
    if (![(PDURLSessionProxySessionMessage *)session isEqual:?])
    {
      goto LABEL_52;
    }
  }

  configuration = self->_configuration;
  if (configuration | *(v4 + 1))
  {
    if (![(NSData *)configuration isEqual:?])
    {
      goto LABEL_52;
    }
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(v4 + 32) & 0x20) == 0)
    {
      goto LABEL_52;
    }

    v8 = *(v4 + 29);
    if (self->_supportsRedirects)
    {
      if ((*(v4 + 29) & 1) == 0)
      {
        goto LABEL_52;
      }
    }

    else if (*(v4 + 29))
    {
      goto LABEL_52;
    }
  }

  else if ((*(v4 + 32) & 0x20) != 0)
  {
    goto LABEL_52;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 32) & 0x10) == 0)
    {
      goto LABEL_52;
    }

    v9 = *(v4 + 28);
    if (self->_delegateImplementsWillSendRequest)
    {
      if ((*(v4 + 28) & 1) == 0)
      {
        goto LABEL_52;
      }
    }

    else if (*(v4 + 28))
    {
      goto LABEL_52;
    }
  }

  else if ((*(v4 + 32) & 0x10) != 0)
  {
    goto LABEL_52;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 32) & 2) == 0)
    {
      goto LABEL_52;
    }

    v10 = *(v4 + 25);
    if (self->_delegateImplementsSessionAuthChallenge)
    {
      if ((*(v4 + 25) & 1) == 0)
      {
        goto LABEL_52;
      }
    }

    else if (*(v4 + 25))
    {
      goto LABEL_52;
    }
  }

  else if ((*(v4 + 32) & 2) != 0)
  {
    goto LABEL_52;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 32) & 4) == 0)
    {
      goto LABEL_52;
    }

    v11 = *(v4 + 26);
    if (self->_delegateImplementsTaskAuthChallenge)
    {
      if ((*(v4 + 26) & 1) == 0)
      {
        goto LABEL_52;
      }
    }

    else if (*(v4 + 26))
    {
      goto LABEL_52;
    }
  }

  else if ((*(v4 + 32) & 4) != 0)
  {
    goto LABEL_52;
  }

  if ((*&self->_has & 8) == 0)
  {
    if ((*(v4 + 32) & 8) == 0)
    {
      goto LABEL_16;
    }

LABEL_52:
    v7 = 0;
    goto LABEL_53;
  }

  if ((*(v4 + 32) & 8) == 0)
  {
    goto LABEL_52;
  }

  v12 = *(v4 + 27);
  if (self->_delegateImplementsWillPerformRedirection)
  {
    if ((*(v4 + 27) & 1) == 0)
    {
      goto LABEL_52;
    }
  }

  else if (*(v4 + 27))
  {
    goto LABEL_52;
  }

LABEL_16:
  v7 = (*(v4 + 32) & 1) == 0;
  if (*&self->_has)
  {
    if (*(v4 + 32))
    {
      if (self->_delegateImplementsDidReceiveResponse)
      {
        if (*(v4 + 24))
        {
          goto LABEL_54;
        }
      }

      else if (!*(v4 + 24))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(PDURLSessionProxySessionMessage *)self->_session copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSData *)self->_configuration copyWithZone:a3];
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

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_session)
  {
    [v4 setSession:?];
    v4 = v6;
  }

  if (self->_configuration)
  {
    [v6 setConfiguration:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    v4[29] = self->_supportsRedirects;
    v4[32] |= 0x20u;
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

  v4[28] = self->_delegateImplementsWillSendRequest;
  v4[32] |= 0x10u;
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
  v4[25] = self->_delegateImplementsSessionAuthChallenge;
  v4[32] |= 2u;
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
  v4[26] = self->_delegateImplementsTaskAuthChallenge;
  v4[32] |= 4u;
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
  v4[27] = self->_delegateImplementsWillPerformRedirection;
  v4[32] |= 8u;
  if (*&self->_has)
  {
LABEL_11:
    v4[24] = self->_delegateImplementsDidReceiveResponse;
    v4[32] |= 1u;
  }

LABEL_12:
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v12 = v4;
  if (self->_session)
  {
    PBDataWriterWriteSubmessage();
    v4 = v12;
  }

  if (self->_configuration)
  {
    PBDataWriterWriteDataField();
    v4 = v12;
  }

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    supportsRedirects = self->_supportsRedirects;
    PBDataWriterWriteBOOLField();
    v4 = v12;
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
  v4 = v12;
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
  v4 = v12;
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
  v4 = v12;
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
  v4 = v12;
  if (*&self->_has)
  {
LABEL_11:
    delegateImplementsDidReceiveResponse = self->_delegateImplementsDidReceiveResponse;
    PBDataWriterWriteBOOLField();
    v4 = v12;
  }

LABEL_12:
}

- (BOOL)readFrom:(id)a3
{
  v5 = [a3 position];
  if (v5 < [a3 length])
  {
    while (1)
    {
      if ([a3 hasError])
      {
        return [a3 hasError] ^ 1;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        LOBYTE(v58[0]) = 0;
        v9 = [a3 position] + 1;
        if (v9 >= [a3 position] && (v10 = objc_msgSend(a3, "position") + 1, v10 <= objc_msgSend(a3, "length")))
        {
          v11 = [a3 data];
          [v11 getBytes:v58 range:{objc_msgSend(a3, "position"), 1}];

          [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
        }

        else
        {
          [a3 _setError];
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

      v13 = [a3 hasError] ? 0 : v8;
LABEL_15:
      if (([a3 hasError] & 1) != 0 || (v13 & 7) == 4)
      {
        return [a3 hasError] ^ 1;
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
            v46 = [a3 position] + 1;
            if (v46 >= [a3 position] && (v47 = objc_msgSend(a3, "position") + 1, v47 <= objc_msgSend(a3, "length")))
            {
              v48 = [a3 data];
              [v48 getBytes:v58 range:{objc_msgSend(a3, "position"), 1}];

              [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
            }

            else
            {
              [a3 _setError];
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

          v23 = (v45 != 0) & ~[a3 hasError];
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
            v27 = [a3 position] + 1;
            if (v27 >= [a3 position] && (v28 = objc_msgSend(a3, "position") + 1, v28 <= objc_msgSend(a3, "length")))
            {
              v29 = [a3 data];
              [v29 getBytes:v58 range:{objc_msgSend(a3, "position"), 1}];

              [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
            }

            else
            {
              [a3 _setError];
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

          v23 = (v26 != 0) & ~[a3 hasError];
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
      if (!PBReaderPlaceMark() || !sub_100077B9C(v36, a3))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_101:
      v56 = [a3 position];
      if (v56 >= [a3 length])
      {
        return [a3 hasError] ^ 1;
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
          v52 = [a3 position] + 1;
          if (v52 >= [a3 position] && (v53 = objc_msgSend(a3, "position") + 1, v53 <= objc_msgSend(a3, "length")))
          {
            v54 = [a3 data];
            [v54 getBytes:v58 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
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

        v23 = (v51 != 0) & ~[a3 hasError];
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
          v33 = [a3 position] + 1;
          if (v33 >= [a3 position] && (v34 = objc_msgSend(a3, "position") + 1, v34 <= objc_msgSend(a3, "length")))
          {
            v35 = [a3 data];
            [v35 getBytes:v58 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
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

        v23 = (v32 != 0) & ~[a3 hasError];
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
          v40 = [a3 position] + 1;
          if (v40 >= [a3 position] && (v41 = objc_msgSend(a3, "position") + 1, v41 <= objc_msgSend(a3, "length")))
          {
            v42 = [a3 data];
            [v42 getBytes:v58 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
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

        v23 = (v39 != 0) & ~[a3 hasError];
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
          v20 = [a3 position] + 1;
          if (v20 >= [a3 position] && (v21 = objc_msgSend(a3, "position") + 1, v21 <= objc_msgSend(a3, "length")))
          {
            v22 = [a3 data];
            [v22 getBytes:v58 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
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

        v23 = (v19 != 0) & ~[a3 hasError];
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

  return [a3 hasError] ^ 1;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  session = self->_session;
  if (session)
  {
    v5 = [(PDURLSessionProxySessionMessage *)session dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"session"];
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
  v4 = [(PDURLSessionProxyCreateSession *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (void)setHasDelegateImplementsWillPerformRedirection:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasDelegateImplementsTaskAuthChallenge:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasDelegateImplementsSessionAuthChallenge:(BOOL)a3
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

- (void)setHasDelegateImplementsWillSendRequest:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasSupportsRedirects:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)_setActualConfiguration:(id)a3
{
  v4 = [NSKeyedArchiver _nsurlsessionproxy_secureArchivedDataWithRootObject:a3];
  [(PDURLSessionProxyCreateSession *)self setConfiguration:?];
}

- (NSURLSessionConfiguration)_actualConfiguration
{
  v3 = objc_opt_class();
  v4 = [(PDURLSessionProxyCreateSession *)self configuration];
  v5 = [NSKeyedUnarchiver _nsurlsessionproxy_secureUnarchiveObjectOfClass:v3 withData:v4];

  return v5;
}

@end