@interface FMDNanoSupportProtoSignedDataV3
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation FMDNanoSupportProtoSignedDataV3

- (id)description
{
  v7.receiver = self;
  v7.super_class = FMDNanoSupportProtoSignedDataV3;
  v3 = [(FMDNanoSupportProtoSignedDataV3 *)&v7 description];
  v4 = [(FMDNanoSupportProtoSignedDataV3 *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [NSNumber numberWithBool:self->_errorOccurred];
  [v3 setObject:v4 forKey:@"error_occurred"];

  signedData = self->_signedData;
  if (signedData)
  {
    [v3 setObject:signedData forKey:@"signed_data"];
  }

  skAuth = self->_skAuth;
  if (skAuth)
  {
    [v3 setObject:skAuth forKey:@"sk_auth"];
  }

  finalRequestJsonData = self->_finalRequestJsonData;
  if (finalRequestJsonData)
  {
    [v3 setObject:finalRequestJsonData forKey:@"final_request_json_data"];
  }

  signatureError = self->_signatureError;
  if (signatureError)
  {
    [v3 setObject:signatureError forKey:@"signature_error"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  errorOccurred = self->_errorOccurred;
  v7 = v4;
  PBDataWriterWriteBOOLField();
  if (self->_signedData)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_skAuth)
  {
    PBDataWriterWriteDataField();
  }

  v6 = v7;
  if (self->_finalRequestJsonData)
  {
    PBDataWriterWriteDataField();
    v6 = v7;
  }

  if (self->_signatureError)
  {
    PBDataWriterWriteStringField();
    v6 = v7;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v4[40] = self->_errorOccurred;
  v5 = v4;
  if (self->_signedData)
  {
    [v4 setSignedData:?];
    v4 = v5;
  }

  if (self->_skAuth)
  {
    [v5 setSkAuth:?];
    v4 = v5;
  }

  if (self->_finalRequestJsonData)
  {
    [v5 setFinalRequestJsonData:?];
    v4 = v5;
  }

  if (self->_signatureError)
  {
    [v5 setSignatureError:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5[40] = self->_errorOccurred;
  v6 = [(NSData *)self->_signedData copyWithZone:a3];
  v7 = *(v5 + 3);
  *(v5 + 3) = v6;

  v8 = [(NSData *)self->_skAuth copyWithZone:a3];
  v9 = *(v5 + 4);
  *(v5 + 4) = v8;

  v10 = [(NSData *)self->_finalRequestJsonData copyWithZone:a3];
  v11 = *(v5 + 1);
  *(v5 + 1) = v10;

  v12 = [(NSString *)self->_signatureError copyWithZone:a3];
  v13 = *(v5 + 2);
  *(v5 + 2) = v12;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  v5 = *(v4 + 40);
  if (self->_errorOccurred)
  {
    if ((*(v4 + 40) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (*(v4 + 40))
  {
LABEL_14:
    v10 = 0;
    goto LABEL_15;
  }

  signedData = self->_signedData;
  if (signedData | *(v4 + 3) && ![(NSData *)signedData isEqual:?])
  {
    goto LABEL_14;
  }

  skAuth = self->_skAuth;
  if (skAuth | *(v4 + 4))
  {
    if (![(NSData *)skAuth isEqual:?])
    {
      goto LABEL_14;
    }
  }

  finalRequestJsonData = self->_finalRequestJsonData;
  if (finalRequestJsonData | *(v4 + 1))
  {
    if (![(NSData *)finalRequestJsonData isEqual:?])
    {
      goto LABEL_14;
    }
  }

  signatureError = self->_signatureError;
  if (signatureError | *(v4 + 2))
  {
    v10 = [(NSString *)signatureError isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_15:

  return v10;
}

- (unint64_t)hash
{
  v3 = 2654435761 * self->_errorOccurred;
  v4 = [(NSData *)self->_signedData hash];
  v5 = v4 ^ [(NSData *)self->_skAuth hash];
  v6 = v5 ^ [(NSData *)self->_finalRequestJsonData hash];
  return v6 ^ [(NSString *)self->_signatureError hash]^ v3;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  self->_errorOccurred = v4[40];
  v5 = v4;
  if (*(v4 + 3))
  {
    [(FMDNanoSupportProtoSignedDataV3 *)self setSignedData:?];
  }

  if (v5[4])
  {
    [(FMDNanoSupportProtoSignedDataV3 *)self setSkAuth:?];
  }

  if (v5[1])
  {
    [(FMDNanoSupportProtoSignedDataV3 *)self setFinalRequestJsonData:?];
  }

  if (v5[2])
  {
    [(FMDNanoSupportProtoSignedDataV3 *)self setSignatureError:?];
  }
}

@end