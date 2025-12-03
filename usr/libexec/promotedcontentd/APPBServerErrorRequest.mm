@interface APPBServerErrorRequest
+ (id)options;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)errorCodeAsString:(int)string;
- (int)StringAsErrorCode:(id)code;
- (int)errorCode;
- (unint64_t)hash;
- (void)addFailingURLs:(id)ls;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation APPBServerErrorRequest

+ (id)options
{
  if (qword_1004E6C50 != -1)
  {
    sub_100394474();
  }

  v3 = qword_1004E6C48;

  return v3;
}

- (int)errorCode
{
  if (*&self->_has)
  {
    return self->_errorCode;
  }

  else
  {
    return 1;
  }
}

- (id)errorCodeAsString:(int)string
{
  if ((string - 1) >= 0xD)
  {
    v4 = [NSString stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = *(&off_10047DDA8 + (string - 1));
  }

  return v4;
}

- (int)StringAsErrorCode:(id)code
{
  codeCopy = code;
  if ([codeCopy isEqualToString:@"NoBannerContent"])
  {
    v4 = 1;
  }

  else if ([codeCopy isEqualToString:@"BannerURLSchemeInvalid"])
  {
    v4 = 2;
  }

  else if ([codeCopy isEqualToString:@"ActionURLSchemeInvalid"])
  {
    v4 = 3;
  }

  else if ([codeCopy isEqualToString:@"WebArchiveURLSchemeInvalid"])
  {
    v4 = 4;
  }

  else if ([codeCopy isEqualToString:@"AssetRetrieveFailure"])
  {
    v4 = 5;
  }

  else if ([codeCopy isEqualToString:@"AdSheetCrashDuringEngagement"])
  {
    v4 = 6;
  }

  else if ([codeCopy isEqualToString:@"MediaPlaybackFailure"])
  {
    v4 = 7;
  }

  else if ([codeCopy isEqualToString:@"RequiredFallbackURLNotProvided"])
  {
    v4 = 8;
  }

  else if ([codeCopy isEqualToString:@"RequiredWebArchiveNotProvided"])
  {
    v4 = 9;
  }

  else if ([codeCopy isEqualToString:@"ConfigurationInvalid"])
  {
    v4 = 10;
  }

  else if ([codeCopy isEqualToString:@"MatchTagsInvalid"])
  {
    v4 = 11;
  }

  else if ([codeCopy isEqualToString:@"InvalidActionIdentifiers"])
  {
    v4 = 12;
  }

  else if ([codeCopy isEqualToString:@"ProxyAuthHeaderExceedsMaxLength"])
  {
    v4 = 13;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)addFailingURLs:(id)ls
{
  lsCopy = ls;
  failingURLs = self->_failingURLs;
  v8 = lsCopy;
  if (!failingURLs)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_failingURLs;
    self->_failingURLs = v6;

    lsCopy = v8;
    failingURLs = self->_failingURLs;
  }

  [(NSMutableArray *)failingURLs addObject:lsCopy];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = APPBServerErrorRequest;
  v3 = [(APPBServerErrorRequest *)&v7 description];
  dictionaryRepresentation = [(APPBServerErrorRequest *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  metaData = self->_metaData;
  if (metaData)
  {
    dictionaryRepresentation = [(APPBLogMetaData *)metaData dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation forKey:@"metaData"];
  }

  if (*&self->_has)
  {
    v6 = self->_errorCode - 1;
    if (v6 >= 0xD)
    {
      v7 = [NSString stringWithFormat:@"(unknown: %i)", self->_errorCode];
    }

    else
    {
      v7 = *(&off_10047DDA8 + v6);
    }

    [v3 setObject:v7 forKey:@"errorCode"];
  }

  errorDetails = self->_errorDetails;
  if (errorDetails)
  {
    [v3 setObject:errorDetails forKey:@"errorDetails"];
  }

  badResponse = self->_badResponse;
  if (badResponse)
  {
    dictionaryRepresentation2 = [(APPBAdData *)badResponse dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation2 forKey:@"badResponse"];
  }

  failingURLs = self->_failingURLs;
  if (failingURLs)
  {
    [v3 setObject:failingURLs forKey:@"failingURLs"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_metaData)
  {
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_badResponse)
  {
    PBDataWriterWriteSubmessage();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_failingURLs;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  if (self->_errorDetails)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v9 = toCopy;
  if (self->_metaData)
  {
    [toCopy setMetaData:?];
    toCopy = v9;
  }

  if (*&self->_has)
  {
    *(toCopy + 4) = self->_errorCode;
    *(toCopy + 48) |= 1u;
  }

  if (self->_badResponse)
  {
    [v9 setBadResponse:?];
  }

  if ([(APPBServerErrorRequest *)self failingURLsCount])
  {
    [v9 clearFailingURLs];
    failingURLsCount = [(APPBServerErrorRequest *)self failingURLsCount];
    if (failingURLsCount)
    {
      v6 = failingURLsCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(APPBServerErrorRequest *)self failingURLsAtIndex:i];
        [v9 addFailingURLs:v8];
      }
    }
  }

  if (self->_errorDetails)
  {
    [v9 setErrorDetails:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(APPBLogMetaData *)self->_metaData copyWithZone:zone];
  v7 = v5[5];
  v5[5] = v6;

  if (*&self->_has)
  {
    *(v5 + 4) = self->_errorCode;
    *(v5 + 48) |= 1u;
  }

  v8 = [(APPBAdData *)self->_badResponse copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = self->_failingURLs;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      v14 = 0;
      do
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v19 + 1) + 8 * v14) copyWithZone:{zone, v19}];
        [v5 addFailingURLs:v15];

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  v16 = [(NSString *)self->_errorDetails copyWithZone:zone];
  v17 = v5[3];
  v5[3] = v16;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  metaData = self->_metaData;
  if (metaData | *(equalCopy + 5))
  {
    if (![(APPBLogMetaData *)metaData isEqual:?])
    {
      goto LABEL_15;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 48) & 1) == 0 || self->_errorCode != *(equalCopy + 4))
    {
      goto LABEL_15;
    }
  }

  else if (*(equalCopy + 48))
  {
LABEL_15:
    v9 = 0;
    goto LABEL_16;
  }

  badResponse = self->_badResponse;
  if (badResponse | *(equalCopy + 1) && ![(APPBAdData *)badResponse isEqual:?])
  {
    goto LABEL_15;
  }

  failingURLs = self->_failingURLs;
  if (failingURLs | *(equalCopy + 4))
  {
    if (![(NSMutableArray *)failingURLs isEqual:?])
    {
      goto LABEL_15;
    }
  }

  errorDetails = self->_errorDetails;
  if (errorDetails | *(equalCopy + 3))
  {
    v9 = [(NSString *)errorDetails isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_16:

  return v9;
}

- (unint64_t)hash
{
  v3 = [(APPBLogMetaData *)self->_metaData hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_errorCode;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ v3;
  v6 = [(APPBAdData *)self->_badResponse hash];
  v7 = v5 ^ v6 ^ [(NSMutableArray *)self->_failingURLs hash];
  return v7 ^ [(NSString *)self->_errorDetails hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  metaData = self->_metaData;
  v6 = *(fromCopy + 5);
  if (metaData)
  {
    if (v6)
    {
      [(APPBLogMetaData *)metaData mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(APPBServerErrorRequest *)self setMetaData:?];
  }

  if (*(fromCopy + 48))
  {
    self->_errorCode = *(fromCopy + 4);
    *&self->_has |= 1u;
  }

  badResponse = self->_badResponse;
  v8 = *(fromCopy + 1);
  if (badResponse)
  {
    if (v8)
    {
      [(APPBAdData *)badResponse mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(APPBServerErrorRequest *)self setBadResponse:?];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = *(fromCopy + 4);
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [(APPBServerErrorRequest *)self addFailingURLs:*(*(&v14 + 1) + 8 * i), v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }

  if (*(fromCopy + 3))
  {
    [(APPBServerErrorRequest *)self setErrorDetails:?];
  }
}

@end