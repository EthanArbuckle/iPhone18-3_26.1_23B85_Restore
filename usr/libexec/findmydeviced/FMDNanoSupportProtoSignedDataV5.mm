@interface FMDNanoSupportProtoSignedDataV5
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation FMDNanoSupportProtoSignedDataV5

- (id)description
{
  v7.receiver = self;
  v7.super_class = FMDNanoSupportProtoSignedDataV5;
  v3 = [(FMDNanoSupportProtoSignedDataV5 *)&v7 description];
  v4 = [(FMDNanoSupportProtoSignedDataV5 *)self dictionaryRepresentation];
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

  baaSignature = self->_baaSignature;
  if (baaSignature)
  {
    [v3 setObject:baaSignature forKey:@"baa_signature"];
  }

  baaAttestation = self->_baaAttestation;
  if (baaAttestation)
  {
    [v3 setObject:baaAttestation forKey:@"baa_attestation"];
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

  baaError = self->_baaError;
  if (baaError)
  {
    [v3 setObject:baaError forKey:@"baa_error"];
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

  if (self->_baaSignature)
  {
    PBDataWriterWriteDataField();
    v6 = v7;
  }

  if (self->_baaAttestation)
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

  if (self->_baaError)
  {
    PBDataWriterWriteStringField();
    v6 = v7;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v4[88] = self->_errorOccurred;
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

  if (self->_baaSignature)
  {
    [v5 setBaaSignature:?];
    v4 = v5;
  }

  if (self->_baaAttestation)
  {
    [v5 setBaaAttestation:?];
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

  if (self->_baaError)
  {
    [v5 setBaaError:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5[88] = self->_errorOccurred;
  v6 = [(NSData *)self->_signedData copyWithZone:a3];
  v7 = *(v5 + 9);
  *(v5 + 9) = v6;

  v8 = [(NSData *)self->_skAuth copyWithZone:a3];
  v9 = *(v5 + 10);
  *(v5 + 10) = v8;

  v10 = [(NSData *)self->_refKeySignature copyWithZone:a3];
  v11 = *(v5 + 7);
  *(v5 + 7) = v10;

  v12 = [(NSData *)self->_refKeyAttestation copyWithZone:a3];
  v13 = *(v5 + 5);
  *(v5 + 5) = v12;

  v14 = [(NSData *)self->_baaSignature copyWithZone:a3];
  v15 = *(v5 + 3);
  *(v5 + 3) = v14;

  v16 = [(NSData *)self->_baaAttestation copyWithZone:a3];
  v17 = *(v5 + 1);
  *(v5 + 1) = v16;

  v18 = [(NSData *)self->_finalRequestJsonData copyWithZone:a3];
  v19 = *(v5 + 4);
  *(v5 + 4) = v18;

  v20 = [(NSString *)self->_refKeyError copyWithZone:a3];
  v21 = *(v5 + 6);
  *(v5 + 6) = v20;

  v22 = [(NSString *)self->_signatureError copyWithZone:a3];
  v23 = *(v5 + 8);
  *(v5 + 8) = v22;

  v24 = [(NSString *)self->_baaError copyWithZone:a3];
  v25 = *(v5 + 2);
  *(v5 + 2) = v24;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  v5 = *(v4 + 88);
  if (self->_errorOccurred)
  {
    if ((*(v4 + 88) & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else if (*(v4 + 88))
  {
LABEL_26:
    v16 = 0;
    goto LABEL_27;
  }

  signedData = self->_signedData;
  if (signedData | *(v4 + 9) && ![(NSData *)signedData isEqual:?])
  {
    goto LABEL_26;
  }

  skAuth = self->_skAuth;
  if (skAuth | *(v4 + 10))
  {
    if (![(NSData *)skAuth isEqual:?])
    {
      goto LABEL_26;
    }
  }

  refKeySignature = self->_refKeySignature;
  if (refKeySignature | *(v4 + 7))
  {
    if (![(NSData *)refKeySignature isEqual:?])
    {
      goto LABEL_26;
    }
  }

  refKeyAttestation = self->_refKeyAttestation;
  if (refKeyAttestation | *(v4 + 5))
  {
    if (![(NSData *)refKeyAttestation isEqual:?])
    {
      goto LABEL_26;
    }
  }

  baaSignature = self->_baaSignature;
  if (baaSignature | *(v4 + 3))
  {
    if (![(NSData *)baaSignature isEqual:?])
    {
      goto LABEL_26;
    }
  }

  baaAttestation = self->_baaAttestation;
  if (baaAttestation | *(v4 + 1))
  {
    if (![(NSData *)baaAttestation isEqual:?])
    {
      goto LABEL_26;
    }
  }

  finalRequestJsonData = self->_finalRequestJsonData;
  if (finalRequestJsonData | *(v4 + 4))
  {
    if (![(NSData *)finalRequestJsonData isEqual:?])
    {
      goto LABEL_26;
    }
  }

  refKeyError = self->_refKeyError;
  if (refKeyError | *(v4 + 6))
  {
    if (![(NSString *)refKeyError isEqual:?])
    {
      goto LABEL_26;
    }
  }

  signatureError = self->_signatureError;
  if (signatureError | *(v4 + 8))
  {
    if (![(NSString *)signatureError isEqual:?])
    {
      goto LABEL_26;
    }
  }

  baaError = self->_baaError;
  if (baaError | *(v4 + 2))
  {
    v16 = [(NSString *)baaError isEqual:?];
  }

  else
  {
    v16 = 1;
  }

LABEL_27:

  return v16;
}

- (unint64_t)hash
{
  v3 = 2654435761 * self->_errorOccurred;
  v4 = [(NSData *)self->_signedData hash];
  v5 = v4 ^ [(NSData *)self->_skAuth hash];
  v6 = v5 ^ [(NSData *)self->_refKeySignature hash];
  v7 = v6 ^ [(NSData *)self->_refKeyAttestation hash]^ v3;
  v8 = [(NSData *)self->_baaSignature hash];
  v9 = v8 ^ [(NSData *)self->_baaAttestation hash];
  v10 = v9 ^ [(NSData *)self->_finalRequestJsonData hash];
  v11 = v10 ^ [(NSString *)self->_refKeyError hash];
  v12 = v7 ^ v11 ^ [(NSString *)self->_signatureError hash];
  return v12 ^ [(NSString *)self->_baaError hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  self->_errorOccurred = v4[88];
  v5 = v4;
  if (*(v4 + 9))
  {
    [(FMDNanoSupportProtoSignedDataV5 *)self setSignedData:?];
  }

  if (v5[10])
  {
    [(FMDNanoSupportProtoSignedDataV5 *)self setSkAuth:?];
  }

  if (v5[7])
  {
    [(FMDNanoSupportProtoSignedDataV5 *)self setRefKeySignature:?];
  }

  if (v5[5])
  {
    [(FMDNanoSupportProtoSignedDataV5 *)self setRefKeyAttestation:?];
  }

  if (v5[3])
  {
    [(FMDNanoSupportProtoSignedDataV5 *)self setBaaSignature:?];
  }

  if (v5[1])
  {
    [(FMDNanoSupportProtoSignedDataV5 *)self setBaaAttestation:?];
  }

  if (v5[4])
  {
    [(FMDNanoSupportProtoSignedDataV5 *)self setFinalRequestJsonData:?];
  }

  if (v5[6])
  {
    [(FMDNanoSupportProtoSignedDataV5 *)self setRefKeyError:?];
  }

  if (v5[8])
  {
    [(FMDNanoSupportProtoSignedDataV5 *)self setSignatureError:?];
  }

  if (v5[2])
  {
    [(FMDNanoSupportProtoSignedDataV5 *)self setBaaError:?];
  }
}

@end