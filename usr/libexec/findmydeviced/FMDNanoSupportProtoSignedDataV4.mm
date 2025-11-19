@interface FMDNanoSupportProtoSignedDataV4
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation FMDNanoSupportProtoSignedDataV4

- (id)description
{
  v7.receiver = self;
  v7.super_class = FMDNanoSupportProtoSignedDataV4;
  v3 = [(FMDNanoSupportProtoSignedDataV4 *)&v7 description];
  v4 = [(FMDNanoSupportProtoSignedDataV4 *)self dictionaryRepresentation];
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

  refKeySignature = self->_refKeySignature;
  if (refKeySignature)
  {
    [v3 setObject:refKeySignature forKey:@"ref_key_signature"];
  }

  refKeyAttestation = self->_refKeyAttestation;
  if (refKeyAttestation)
  {
    [v3 setObject:refKeyAttestation forKey:@"ref_key_attestation"];
  }

  finalRequestJsonData = self->_finalRequestJsonData;
  if (finalRequestJsonData)
  {
    [v3 setObject:finalRequestJsonData forKey:@"final_request_json_data"];
  }

  refKeyError = self->_refKeyError;
  if (refKeyError)
  {
    [v3 setObject:refKeyError forKey:@"ref_key_error"];
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
  if (self->_refKeySignature)
  {
    PBDataWriterWriteDataField();
    v6 = v7;
  }

  if (self->_refKeyAttestation)
  {
    PBDataWriterWriteDataField();
    v6 = v7;
  }

  if (self->_finalRequestJsonData)
  {
    PBDataWriterWriteDataField();
    v6 = v7;
  }

  if (self->_refKeyError)
  {
    PBDataWriterWriteStringField();
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
  v4[64] = self->_errorOccurred;
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

  if (self->_refKeySignature)
  {
    [v5 setRefKeySignature:?];
    v4 = v5;
  }

  if (self->_refKeyAttestation)
  {
    [v5 setRefKeyAttestation:?];
    v4 = v5;
  }

  if (self->_finalRequestJsonData)
  {
    [v5 setFinalRequestJsonData:?];
    v4 = v5;
  }

  if (self->_refKeyError)
  {
    [v5 setRefKeyError:?];
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
  v5[64] = self->_errorOccurred;
  v6 = [(NSData *)self->_signedData copyWithZone:a3];
  v7 = *(v5 + 6);
  *(v5 + 6) = v6;

  v8 = [(NSData *)self->_skAuth copyWithZone:a3];
  v9 = *(v5 + 7);
  *(v5 + 7) = v8;

  v10 = [(NSData *)self->_refKeySignature copyWithZone:a3];
  v11 = *(v5 + 4);
  *(v5 + 4) = v10;

  v12 = [(NSData *)self->_refKeyAttestation copyWithZone:a3];
  v13 = *(v5 + 2);
  *(v5 + 2) = v12;

  v14 = [(NSData *)self->_finalRequestJsonData copyWithZone:a3];
  v15 = *(v5 + 1);
  *(v5 + 1) = v14;

  v16 = [(NSString *)self->_refKeyError copyWithZone:a3];
  v17 = *(v5 + 3);
  *(v5 + 3) = v16;

  v18 = [(NSString *)self->_signatureError copyWithZone:a3];
  v19 = *(v5 + 5);
  *(v5 + 5) = v18;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  v5 = *(v4 + 64);
  if (self->_errorOccurred)
  {
    if ((*(v4 + 64) & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else if (*(v4 + 64))
  {
LABEL_20:
    v13 = 0;
    goto LABEL_21;
  }

  signedData = self->_signedData;
  if (signedData | *(v4 + 6) && ![(NSData *)signedData isEqual:?])
  {
    goto LABEL_20;
  }

  skAuth = self->_skAuth;
  if (skAuth | *(v4 + 7))
  {
    if (![(NSData *)skAuth isEqual:?])
    {
      goto LABEL_20;
    }
  }

  refKeySignature = self->_refKeySignature;
  if (refKeySignature | *(v4 + 4))
  {
    if (![(NSData *)refKeySignature isEqual:?])
    {
      goto LABEL_20;
    }
  }

  refKeyAttestation = self->_refKeyAttestation;
  if (refKeyAttestation | *(v4 + 2))
  {
    if (![(NSData *)refKeyAttestation isEqual:?])
    {
      goto LABEL_20;
    }
  }

  finalRequestJsonData = self->_finalRequestJsonData;
  if (finalRequestJsonData | *(v4 + 1))
  {
    if (![(NSData *)finalRequestJsonData isEqual:?])
    {
      goto LABEL_20;
    }
  }

  refKeyError = self->_refKeyError;
  if (refKeyError | *(v4 + 3))
  {
    if (![(NSString *)refKeyError isEqual:?])
    {
      goto LABEL_20;
    }
  }

  signatureError = self->_signatureError;
  if (signatureError | *(v4 + 5))
  {
    v13 = [(NSString *)signatureError isEqual:?];
  }

  else
  {
    v13 = 1;
  }

LABEL_21:

  return v13;
}

- (unint64_t)hash
{
  v3 = 2654435761 * self->_errorOccurred;
  v4 = [(NSData *)self->_signedData hash];
  v5 = v4 ^ [(NSData *)self->_skAuth hash];
  v6 = v5 ^ [(NSData *)self->_refKeySignature hash];
  v7 = v6 ^ [(NSData *)self->_refKeyAttestation hash]^ v3;
  v8 = [(NSData *)self->_finalRequestJsonData hash];
  v9 = v8 ^ [(NSString *)self->_refKeyError hash];
  return v7 ^ v9 ^ [(NSString *)self->_signatureError hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  self->_errorOccurred = v4[64];
  v5 = v4;
  if (*(v4 + 6))
  {
    [(FMDNanoSupportProtoSignedDataV4 *)self setSignedData:?];
  }

  if (v5[7])
  {
    [(FMDNanoSupportProtoSignedDataV4 *)self setSkAuth:?];
  }

  if (v5[4])
  {
    [(FMDNanoSupportProtoSignedDataV4 *)self setRefKeySignature:?];
  }

  if (v5[2])
  {
    [(FMDNanoSupportProtoSignedDataV4 *)self setRefKeyAttestation:?];
  }

  if (v5[1])
  {
    [(FMDNanoSupportProtoSignedDataV4 *)self setFinalRequestJsonData:?];
  }

  if (v5[3])
  {
    [(FMDNanoSupportProtoSignedDataV4 *)self setRefKeyError:?];
  }

  if (v5[5])
  {
    [(FMDNanoSupportProtoSignedDataV4 *)self setSignatureError:?];
  }
}

@end