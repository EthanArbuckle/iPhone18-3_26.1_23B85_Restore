@interface OTAccountMetadataClassC
- (BOOL)isEqual:(id)equal;
- (BOOL)readFrom:(id)from;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsAttemptedJoin:(id)join;
- (int)StringAsCdpState:(id)state;
- (int)StringAsIcloudAccountState:(id)state;
- (int)StringAsSendingMetricsPermitted:(id)permitted;
- (int)StringAsTrustState:(id)state;
- (int)attemptedJoin;
- (int)cdpState;
- (int)icloudAccountState;
- (int)sendingMetricsPermitted;
- (int)trustState;
- (unint64_t)hash;
- (void)addTlkSharesForVouchedIdentity:(id)identity;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasAttemptedJoin:(BOOL)join;
- (void)setHasCdpState:(BOOL)state;
- (void)setHasEscrowRepairAttemptVersion:(BOOL)version;
- (void)setHasIcloudAccountState:(BOOL)state;
- (void)setHasIsInheritedAccount:(BOOL)account;
- (void)setHasLastEscrowRepairAttempted:(BOOL)attempted;
- (void)setHasLastEscrowRepairTriggered:(BOOL)triggered;
- (void)setHasLastHealthCheckup:(BOOL)checkup;
- (void)setHasSendingMetricsPermitted:(BOOL)permitted;
- (void)setHasTrustState:(BOOL)state;
- (void)setHasWarmedEscrowCache:(BOOL)cache;
- (void)setHasWarnedTooManyPeers:(BOOL)peers;
- (void)writeTo:(id)to;
@end

@implementation OTAccountMetadataClassC

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 11))
  {
    [(OTAccountMetadataClassC *)self setPeerID:?];
  }

  v5 = *(fromCopy + 78);
  if ((v5 & 0x80) != 0)
  {
    self->_icloudAccountState = *(fromCopy + 16);
    *&self->_has |= 0x80u;
    v5 = *(fromCopy + 78);
  }

  if (v5)
  {
    self->_epoch = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 6))
  {
    [(OTAccountMetadataClassC *)self setAltDSID:?];
  }

  v6 = *(fromCopy + 78);
  if ((v6 & 0x200) != 0)
  {
    self->_trustState = *(fromCopy + 32);
    *&self->_has |= 0x200u;
    v6 = *(fromCopy + 78);
    if ((v6 & 0x10) == 0)
    {
LABEL_11:
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_47;
    }
  }

  else if ((v6 & 0x10) == 0)
  {
    goto LABEL_11;
  }

  self->_lastHealthCheckup = *(fromCopy + 5);
  *&self->_has |= 0x10u;
  v6 = *(fromCopy + 78);
  if ((v6 & 0x20) == 0)
  {
LABEL_12:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_47:
  self->_attemptedJoin = *(fromCopy + 14);
  *&self->_has |= 0x20u;
  if ((*(fromCopy + 78) & 0x40) != 0)
  {
LABEL_13:
    self->_cdpState = *(fromCopy + 15);
    *&self->_has |= 0x40u;
  }

LABEL_14:
  if (*(fromCopy + 14))
  {
    [(OTAccountMetadataClassC *)self setSyncingPolicy:?];
  }

  if (*(fromCopy + 17))
  {
    [(OTAccountMetadataClassC *)self setVoucher:?];
  }

  if (*(fromCopy + 18))
  {
    [(OTAccountMetadataClassC *)self setVoucherSignature:?];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = *(fromCopy + 15);
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(OTAccountMetadataClassC *)self addTlkSharesForVouchedIdentity:*(*(&v14 + 1) + 8 * i), v14];
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  if (*(fromCopy + 12))
  {
    [(OTAccountMetadataClassC *)self setSecureElementIdentity:?];
  }

  v12 = *(fromCopy + 78);
  if ((v12 & 0x400) != 0)
  {
    self->_isInheritedAccount = *(fromCopy + 152);
    *&self->_has |= 0x400u;
    v12 = *(fromCopy + 78);
    if ((v12 & 0x800) == 0)
    {
LABEL_31:
      if ((v12 & 0x1000) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_51;
    }
  }

  else if ((*(fromCopy + 78) & 0x800) == 0)
  {
    goto LABEL_31;
  }

  self->_warmedEscrowCache = *(fromCopy + 153);
  *&self->_has |= 0x800u;
  v12 = *(fromCopy + 78);
  if ((v12 & 0x1000) == 0)
  {
LABEL_32:
    if ((v12 & 0x100) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

LABEL_51:
  self->_warnedTooManyPeers = *(fromCopy + 154);
  *&self->_has |= 0x1000u;
  if ((*(fromCopy + 78) & 0x100) != 0)
  {
LABEL_33:
    self->_sendingMetricsPermitted = *(fromCopy + 26);
    *&self->_has |= 0x100u;
  }

LABEL_34:
  if (*(fromCopy + 10))
  {
    [(OTAccountMetadataClassC *)self setOldPeerID:?];
  }

  v13 = *(fromCopy + 78);
  if ((v13 & 8) != 0)
  {
    self->_lastEscrowRepairTriggered = *(fromCopy + 4);
    *&self->_has |= 8u;
    v13 = *(fromCopy + 78);
  }

  if ((v13 & 4) != 0)
  {
    self->_lastEscrowRepairAttempted = *(fromCopy + 3);
    *&self->_has |= 4u;
  }

  if (*(fromCopy + 9))
  {
    [(OTAccountMetadataClassC *)self setMachineID:?];
  }

  if ((*(fromCopy + 78) & 2) != 0)
  {
    self->_escrowRepairAttemptVersion = *(fromCopy + 2);
    *&self->_has |= 2u;
  }
}

- (unint64_t)hash
{
  v28 = [(NSString *)self->_peerID hash];
  has = self->_has;
  if ((has & 0x80) != 0)
  {
    v27 = 2654435761 * self->_icloudAccountState;
    if (has)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v27 = 0;
    if (has)
    {
LABEL_3:
      v26 = 2654435761 * self->_epoch;
      goto LABEL_6;
    }
  }

  v26 = 0;
LABEL_6:
  v25 = [(NSString *)self->_altDSID hash];
  v4 = self->_has;
  if ((v4 & 0x200) != 0)
  {
    v24 = 2654435761 * self->_trustState;
    if ((v4 & 0x10) != 0)
    {
LABEL_8:
      v23 = 2654435761u * self->_lastHealthCheckup;
      if ((v4 & 0x20) != 0)
      {
        goto LABEL_9;
      }

LABEL_13:
      v22 = 0;
      if ((v4 & 0x40) != 0)
      {
        goto LABEL_10;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v24 = 0;
    if ((v4 & 0x10) != 0)
    {
      goto LABEL_8;
    }
  }

  v23 = 0;
  if ((v4 & 0x20) == 0)
  {
    goto LABEL_13;
  }

LABEL_9:
  v22 = 2654435761 * self->_attemptedJoin;
  if ((v4 & 0x40) != 0)
  {
LABEL_10:
    v21 = 2654435761 * self->_cdpState;
    goto LABEL_15;
  }

LABEL_14:
  v21 = 0;
LABEL_15:
  v20 = [(NSData *)self->_syncingPolicy hash];
  v19 = [(NSData *)self->_voucher hash];
  v18 = [(NSData *)self->_voucherSignature hash];
  v17 = [(NSMutableArray *)self->_tlkSharesForVouchedIdentitys hash];
  v16 = [(NSData *)self->_secureElementIdentity hash];
  if ((*&self->_has & 0x400) != 0)
  {
    v5 = 2654435761 * self->_isInheritedAccount;
    if ((*&self->_has & 0x800) != 0)
    {
LABEL_17:
      v6 = 2654435761 * self->_warmedEscrowCache;
      if ((*&self->_has & 0x1000) != 0)
      {
        goto LABEL_18;
      }

LABEL_22:
      v7 = 0;
      if ((*&self->_has & 0x100) != 0)
      {
        goto LABEL_19;
      }

      goto LABEL_23;
    }
  }

  else
  {
    v5 = 0;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_17;
    }
  }

  v6 = 0;
  if ((*&self->_has & 0x1000) == 0)
  {
    goto LABEL_22;
  }

LABEL_18:
  v7 = 2654435761 * self->_warnedTooManyPeers;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_19:
    v8 = 2654435761 * self->_sendingMetricsPermitted;
    goto LABEL_24;
  }

LABEL_23:
  v8 = 0;
LABEL_24:
  v9 = [(NSString *)self->_oldPeerID hash];
  v10 = self->_has;
  if ((v10 & 8) != 0)
  {
    v11 = 2654435761u * self->_lastEscrowRepairTriggered;
    if ((v10 & 4) != 0)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v11 = 0;
    if ((v10 & 4) != 0)
    {
LABEL_26:
      v12 = 2654435761u * self->_lastEscrowRepairAttempted;
      goto LABEL_29;
    }
  }

  v12 = 0;
LABEL_29:
  v13 = [(NSString *)self->_machineID hash];
  if ((*&self->_has & 2) != 0)
  {
    v14 = 2654435761 * self->_escrowRepairAttemptVersion;
  }

  else
  {
    v14 = 0;
  }

  return v27 ^ v28 ^ v26 ^ v25 ^ v24 ^ v23 ^ v22 ^ v21 ^ v20 ^ v19 ^ v18 ^ v17 ^ v16 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v11 ^ v12 ^ v13 ^ v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_97;
  }

  peerID = self->_peerID;
  if (peerID | *(equalCopy + 11))
  {
    if (![(NSString *)peerID isEqual:?])
    {
      goto LABEL_97;
    }
  }

  has = self->_has;
  v7 = *(equalCopy + 78);
  if ((has & 0x80) != 0)
  {
    if ((v7 & 0x80) == 0 || self->_icloudAccountState != *(equalCopy + 16))
    {
      goto LABEL_97;
    }
  }

  else if ((v7 & 0x80) != 0)
  {
    goto LABEL_97;
  }

  if (has)
  {
    if ((v7 & 1) == 0 || self->_epoch != *(equalCopy + 1))
    {
      goto LABEL_97;
    }
  }

  else if (v7)
  {
    goto LABEL_97;
  }

  altDSID = self->_altDSID;
  if (altDSID | *(equalCopy + 6))
  {
    if (![(NSString *)altDSID isEqual:?])
    {
      goto LABEL_97;
    }

    has = self->_has;
    v7 = *(equalCopy + 78);
  }

  if ((has & 0x200) != 0)
  {
    if ((v7 & 0x200) == 0 || self->_trustState != *(equalCopy + 32))
    {
      goto LABEL_97;
    }
  }

  else if ((v7 & 0x200) != 0)
  {
    goto LABEL_97;
  }

  if ((has & 0x10) != 0)
  {
    if ((v7 & 0x10) == 0 || self->_lastHealthCheckup != *(equalCopy + 5))
    {
      goto LABEL_97;
    }
  }

  else if ((v7 & 0x10) != 0)
  {
    goto LABEL_97;
  }

  if ((has & 0x20) != 0)
  {
    if ((v7 & 0x20) == 0 || self->_attemptedJoin != *(equalCopy + 14))
    {
      goto LABEL_97;
    }
  }

  else if ((v7 & 0x20) != 0)
  {
    goto LABEL_97;
  }

  if ((has & 0x40) != 0)
  {
    if ((v7 & 0x40) == 0 || self->_cdpState != *(equalCopy + 15))
    {
      goto LABEL_97;
    }
  }

  else if ((v7 & 0x40) != 0)
  {
    goto LABEL_97;
  }

  syncingPolicy = self->_syncingPolicy;
  if (syncingPolicy | *(equalCopy + 14) && ![(NSData *)syncingPolicy isEqual:?])
  {
    goto LABEL_97;
  }

  voucher = self->_voucher;
  if (voucher | *(equalCopy + 17))
  {
    if (![(NSData *)voucher isEqual:?])
    {
      goto LABEL_97;
    }
  }

  voucherSignature = self->_voucherSignature;
  if (voucherSignature | *(equalCopy + 18))
  {
    if (![(NSData *)voucherSignature isEqual:?])
    {
      goto LABEL_97;
    }
  }

  tlkSharesForVouchedIdentitys = self->_tlkSharesForVouchedIdentitys;
  if (tlkSharesForVouchedIdentitys | *(equalCopy + 15))
  {
    if (![(NSMutableArray *)tlkSharesForVouchedIdentitys isEqual:?])
    {
      goto LABEL_97;
    }
  }

  secureElementIdentity = self->_secureElementIdentity;
  if (secureElementIdentity | *(equalCopy + 12))
  {
    if (![(NSData *)secureElementIdentity isEqual:?])
    {
      goto LABEL_97;
    }
  }

  v14 = self->_has;
  v15 = *(equalCopy + 78);
  if ((v14 & 0x400) != 0)
  {
    if ((*(equalCopy + 78) & 0x400) == 0)
    {
      goto LABEL_97;
    }

    v16 = *(equalCopy + 152);
    if (self->_isInheritedAccount)
    {
      if ((*(equalCopy + 152) & 1) == 0)
      {
        goto LABEL_97;
      }
    }

    else if (*(equalCopy + 152))
    {
      goto LABEL_97;
    }
  }

  else if ((*(equalCopy + 78) & 0x400) != 0)
  {
    goto LABEL_97;
  }

  if ((*&self->_has & 0x800) != 0)
  {
    if ((*(equalCopy + 78) & 0x800) == 0)
    {
      goto LABEL_97;
    }

    v17 = *(equalCopy + 153);
    if (self->_warmedEscrowCache)
    {
      if ((*(equalCopy + 153) & 1) == 0)
      {
        goto LABEL_97;
      }
    }

    else if (*(equalCopy + 153))
    {
      goto LABEL_97;
    }
  }

  else if ((*(equalCopy + 78) & 0x800) != 0)
  {
    goto LABEL_97;
  }

  if ((*&self->_has & 0x1000) != 0)
  {
    if ((*(equalCopy + 78) & 0x1000) == 0)
    {
      goto LABEL_97;
    }

    v18 = *(equalCopy + 154);
    if (self->_warnedTooManyPeers)
    {
      if ((*(equalCopy + 154) & 1) == 0)
      {
        goto LABEL_97;
      }
    }

    else if (*(equalCopy + 154))
    {
      goto LABEL_97;
    }
  }

  else if ((*(equalCopy + 78) & 0x1000) != 0)
  {
    goto LABEL_97;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(equalCopy + 78) & 0x100) == 0 || self->_sendingMetricsPermitted != *(equalCopy + 26))
    {
      goto LABEL_97;
    }
  }

  else if ((*(equalCopy + 78) & 0x100) != 0)
  {
    goto LABEL_97;
  }

  oldPeerID = self->_oldPeerID;
  if (oldPeerID | *(equalCopy + 10))
  {
    if (![(NSString *)oldPeerID isEqual:?])
    {
      goto LABEL_97;
    }

    v14 = self->_has;
    v15 = *(equalCopy + 78);
  }

  if ((v14 & 8) != 0)
  {
    if ((v15 & 8) == 0 || self->_lastEscrowRepairTriggered != *(equalCopy + 4))
    {
      goto LABEL_97;
    }
  }

  else if ((v15 & 8) != 0)
  {
    goto LABEL_97;
  }

  if ((v14 & 4) != 0)
  {
    if ((v15 & 4) == 0 || self->_lastEscrowRepairAttempted != *(equalCopy + 3))
    {
      goto LABEL_97;
    }
  }

  else if ((v15 & 4) != 0)
  {
    goto LABEL_97;
  }

  machineID = self->_machineID;
  if (machineID | *(equalCopy + 9))
  {
    if ([(NSString *)machineID isEqual:?])
    {
      v14 = self->_has;
      v15 = *(equalCopy + 78);
      goto LABEL_92;
    }

LABEL_97:
    v21 = 0;
    goto LABEL_98;
  }

LABEL_92:
  if ((v14 & 2) != 0)
  {
    if ((v15 & 2) == 0 || self->_escrowRepairAttemptVersion != *(equalCopy + 2))
    {
      goto LABEL_97;
    }

    v21 = 1;
  }

  else
  {
    v21 = (v15 & 2) == 0;
  }

LABEL_98:

  return v21;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_peerID copyWithZone:zone];
  v7 = v5[11];
  v5[11] = v6;

  has = self->_has;
  if ((has & 0x80) != 0)
  {
    *(v5 + 16) = self->_icloudAccountState;
    *(v5 + 78) |= 0x80u;
    has = self->_has;
  }

  if (has)
  {
    v5[1] = self->_epoch;
    *(v5 + 78) |= 1u;
  }

  v9 = [(NSString *)self->_altDSID copyWithZone:zone];
  v10 = v5[6];
  v5[6] = v9;

  v11 = self->_has;
  if ((v11 & 0x200) != 0)
  {
    *(v5 + 32) = self->_trustState;
    *(v5 + 78) |= 0x200u;
    v11 = self->_has;
    if ((v11 & 0x10) == 0)
    {
LABEL_7:
      if ((v11 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_31;
    }
  }

  else if ((v11 & 0x10) == 0)
  {
    goto LABEL_7;
  }

  v5[5] = self->_lastHealthCheckup;
  *(v5 + 78) |= 0x10u;
  v11 = self->_has;
  if ((v11 & 0x20) == 0)
  {
LABEL_8:
    if ((v11 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_31:
  *(v5 + 14) = self->_attemptedJoin;
  *(v5 + 78) |= 0x20u;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_9:
    *(v5 + 15) = self->_cdpState;
    *(v5 + 78) |= 0x40u;
  }

LABEL_10:
  v12 = [(NSData *)self->_syncingPolicy copyWithZone:zone];
  v13 = v5[14];
  v5[14] = v12;

  v14 = [(NSData *)self->_voucher copyWithZone:zone];
  v15 = v5[17];
  v5[17] = v14;

  v16 = [(NSData *)self->_voucherSignature copyWithZone:zone];
  v17 = v5[18];
  v5[18] = v16;

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v18 = self->_tlkSharesForVouchedIdentitys;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v34;
    do
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v34 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [*(*(&v33 + 1) + 8 * i) copyWithZone:{zone, v33}];
        [v5 addTlkSharesForVouchedIdentity:v23];
      }

      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v20);
  }

  v24 = [(NSData *)self->_secureElementIdentity copyWithZone:zone];
  v25 = v5[12];
  v5[12] = v24;

  v26 = self->_has;
  if ((v26 & 0x400) != 0)
  {
    *(v5 + 152) = self->_isInheritedAccount;
    *(v5 + 78) |= 0x400u;
    v26 = self->_has;
    if ((v26 & 0x800) == 0)
    {
LABEL_19:
      if ((v26 & 0x1000) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_35;
    }
  }

  else if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_19;
  }

  *(v5 + 153) = self->_warmedEscrowCache;
  *(v5 + 78) |= 0x800u;
  v26 = self->_has;
  if ((v26 & 0x1000) == 0)
  {
LABEL_20:
    if ((v26 & 0x100) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_35:
  *(v5 + 154) = self->_warnedTooManyPeers;
  *(v5 + 78) |= 0x1000u;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_21:
    *(v5 + 26) = self->_sendingMetricsPermitted;
    *(v5 + 78) |= 0x100u;
  }

LABEL_22:
  v27 = [(NSString *)self->_oldPeerID copyWithZone:zone, v33];
  v28 = v5[10];
  v5[10] = v27;

  v29 = self->_has;
  if ((v29 & 8) != 0)
  {
    v5[4] = self->_lastEscrowRepairTriggered;
    *(v5 + 78) |= 8u;
    v29 = self->_has;
  }

  if ((v29 & 4) != 0)
  {
    v5[3] = self->_lastEscrowRepairAttempted;
    *(v5 + 78) |= 4u;
  }

  v30 = [(NSString *)self->_machineID copyWithZone:zone];
  v31 = v5[9];
  v5[9] = v30;

  if ((*&self->_has & 2) != 0)
  {
    v5[2] = self->_escrowRepairAttemptVersion;
    *(v5 + 78) |= 2u;
  }

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v14 = toCopy;
  if (self->_peerID)
  {
    [toCopy setPeerID:?];
    toCopy = v14;
  }

  has = self->_has;
  if ((has & 0x80) != 0)
  {
    *(toCopy + 16) = self->_icloudAccountState;
    *(toCopy + 78) |= 0x80u;
    has = self->_has;
  }

  if (has)
  {
    *(toCopy + 1) = self->_epoch;
    *(toCopy + 78) |= 1u;
  }

  if (self->_altDSID)
  {
    [v14 setAltDSID:?];
    toCopy = v14;
  }

  v6 = self->_has;
  if ((v6 & 0x200) != 0)
  {
    *(toCopy + 32) = self->_trustState;
    *(toCopy + 78) |= 0x200u;
    v6 = self->_has;
    if ((v6 & 0x10) == 0)
    {
LABEL_11:
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_46;
    }
  }

  else if ((v6 & 0x10) == 0)
  {
    goto LABEL_11;
  }

  *(toCopy + 5) = self->_lastHealthCheckup;
  *(toCopy + 78) |= 0x10u;
  v6 = self->_has;
  if ((v6 & 0x20) == 0)
  {
LABEL_12:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_46:
  *(toCopy + 14) = self->_attemptedJoin;
  *(toCopy + 78) |= 0x20u;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_13:
    *(toCopy + 15) = self->_cdpState;
    *(toCopy + 78) |= 0x40u;
  }

LABEL_14:
  if (self->_syncingPolicy)
  {
    [v14 setSyncingPolicy:?];
  }

  if (self->_voucher)
  {
    [v14 setVoucher:?];
  }

  if (self->_voucherSignature)
  {
    [v14 setVoucherSignature:?];
  }

  if ([(OTAccountMetadataClassC *)self tlkSharesForVouchedIdentitysCount])
  {
    [v14 clearTlkSharesForVouchedIdentitys];
    tlkSharesForVouchedIdentitysCount = [(OTAccountMetadataClassC *)self tlkSharesForVouchedIdentitysCount];
    if (tlkSharesForVouchedIdentitysCount)
    {
      v8 = tlkSharesForVouchedIdentitysCount;
      for (i = 0; i != v8; ++i)
      {
        v10 = [(OTAccountMetadataClassC *)self tlkSharesForVouchedIdentityAtIndex:i];
        [v14 addTlkSharesForVouchedIdentity:v10];
      }
    }
  }

  if (self->_secureElementIdentity)
  {
    [v14 setSecureElementIdentity:?];
  }

  v11 = self->_has;
  v12 = v14;
  if ((v11 & 0x400) != 0)
  {
    *(v14 + 152) = self->_isInheritedAccount;
    *(v14 + 78) |= 0x400u;
    v11 = self->_has;
    if ((v11 & 0x800) == 0)
    {
LABEL_28:
      if ((v11 & 0x1000) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_50;
    }
  }

  else if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_28;
  }

  *(v14 + 153) = self->_warmedEscrowCache;
  *(v14 + 78) |= 0x800u;
  v11 = self->_has;
  if ((v11 & 0x1000) == 0)
  {
LABEL_29:
    if ((v11 & 0x100) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_50:
  *(v14 + 154) = self->_warnedTooManyPeers;
  *(v14 + 78) |= 0x1000u;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_30:
    *(v14 + 26) = self->_sendingMetricsPermitted;
    *(v14 + 78) |= 0x100u;
  }

LABEL_31:
  if (self->_oldPeerID)
  {
    [v14 setOldPeerID:?];
    v12 = v14;
  }

  v13 = self->_has;
  if ((v13 & 8) != 0)
  {
    v12[4] = self->_lastEscrowRepairTriggered;
    *(v12 + 78) |= 8u;
    v13 = self->_has;
  }

  if ((v13 & 4) != 0)
  {
    v12[3] = self->_lastEscrowRepairAttempted;
    *(v12 + 78) |= 4u;
  }

  if (self->_machineID)
  {
    [v14 setMachineID:?];
    v12 = v14;
  }

  if ((*&self->_has & 2) != 0)
  {
    v12[2] = self->_escrowRepairAttemptVersion;
    *(v12 + 78) |= 2u;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_peerID)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 0x80) != 0)
  {
    icloudAccountState = self->_icloudAccountState;
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if (has)
  {
    epoch = self->_epoch;
    PBDataWriterWriteInt64Field();
  }

  if (self->_altDSID)
  {
    PBDataWriterWriteStringField();
  }

  v8 = self->_has;
  if ((v8 & 0x200) != 0)
  {
    trustState = self->_trustState;
    PBDataWriterWriteInt32Field();
    v8 = self->_has;
    if ((v8 & 0x10) == 0)
    {
LABEL_11:
      if ((v8 & 0x20) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_47;
    }
  }

  else if ((v8 & 0x10) == 0)
  {
    goto LABEL_11;
  }

  lastHealthCheckup = self->_lastHealthCheckup;
  PBDataWriterWriteUint64Field();
  v8 = self->_has;
  if ((v8 & 0x20) == 0)
  {
LABEL_12:
    if ((v8 & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_47:
  attemptedJoin = self->_attemptedJoin;
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_13:
    cdpState = self->_cdpState;
    PBDataWriterWriteInt32Field();
  }

LABEL_14:
  if (self->_syncingPolicy)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_voucher)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_voucherSignature)
  {
    PBDataWriterWriteDataField();
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v10 = self->_tlkSharesForVouchedIdentitys;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v29;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v29 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v28 + 1) + 8 * i);
        PBDataWriterWriteDataField();
      }

      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v12);
  }

  if (self->_secureElementIdentity)
  {
    PBDataWriterWriteDataField();
  }

  v16 = self->_has;
  if ((v16 & 0x400) != 0)
  {
    isInheritedAccount = self->_isInheritedAccount;
    PBDataWriterWriteBOOLField();
    v16 = self->_has;
    if ((v16 & 0x800) == 0)
    {
LABEL_31:
      if ((v16 & 0x1000) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_51;
    }
  }

  else if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_31;
  }

  warmedEscrowCache = self->_warmedEscrowCache;
  PBDataWriterWriteBOOLField();
  v16 = self->_has;
  if ((v16 & 0x1000) == 0)
  {
LABEL_32:
    if ((v16 & 0x100) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

LABEL_51:
  warnedTooManyPeers = self->_warnedTooManyPeers;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_33:
    sendingMetricsPermitted = self->_sendingMetricsPermitted;
    PBDataWriterWriteInt32Field();
  }

LABEL_34:
  if (self->_oldPeerID)
  {
    PBDataWriterWriteStringField();
  }

  v18 = self->_has;
  if ((v18 & 8) != 0)
  {
    lastEscrowRepairTriggered = self->_lastEscrowRepairTriggered;
    PBDataWriterWriteUint64Field();
    v18 = self->_has;
  }

  if ((v18 & 4) != 0)
  {
    lastEscrowRepairAttempted = self->_lastEscrowRepairAttempted;
    PBDataWriterWriteUint64Field();
  }

  if (self->_machineID)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 2) != 0)
  {
    escrowRepairAttemptVersion = self->_escrowRepairAttemptVersion;
    PBDataWriterWriteInt64Field();
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
        v105 = 0;
        v9 = [from position] + 1;
        if (v9 >= [from position] && (v10 = objc_msgSend(from, "position") + 1, v10 <= objc_msgSend(from, "length")))
        {
          data = [from data];
          [data getBytes:&v105 range:{objc_msgSend(from, "position"), 1}];

          [from setPosition:{objc_msgSend(from, "position") + 1}];
        }

        else
        {
          [from _setError];
        }

        v8 |= (v105 & 0x7F) << v6;
        if ((v105 & 0x80) == 0)
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

      switch((v13 >> 3))
      {
        case 1u:
          v14 = PBReaderReadString();
          v15 = 88;
          goto LABEL_148;
        case 2u:
          v55 = 0;
          v56 = 0;
          v57 = 0;
          *&self->_has |= 0x80u;
          while (1)
          {
            v110 = 0;
            v58 = [from position] + 1;
            if (v58 >= [from position] && (v59 = objc_msgSend(from, "position") + 1, v59 <= objc_msgSend(from, "length")))
            {
              data2 = [from data];
              [data2 getBytes:&v110 range:{objc_msgSend(from, "position"), 1}];

              [from setPosition:{objc_msgSend(from, "position") + 1}];
            }

            else
            {
              [from _setError];
            }

            v57 |= (v110 & 0x7F) << v55;
            if ((v110 & 0x80) == 0)
            {
              break;
            }

            v55 += 7;
            v12 = v56++ >= 9;
            if (v12)
            {
              v61 = 0;
              goto LABEL_175;
            }
          }

          if ([from hasError])
          {
            v61 = 0;
          }

          else
          {
            v61 = v57;
          }

LABEL_175:
          v102 = 64;
          goto LABEL_197;
        case 3u:
          v42 = 0;
          v43 = 0;
          v44 = 0;
          *&self->_has |= 1u;
          while (1)
          {
            v112 = 0;
            v45 = [from position] + 1;
            if (v45 >= [from position] && (v46 = objc_msgSend(from, "position") + 1, v46 <= objc_msgSend(from, "length")))
            {
              data3 = [from data];
              [data3 getBytes:&v112 range:{objc_msgSend(from, "position"), 1}];

              [from setPosition:{objc_msgSend(from, "position") + 1}];
            }

            else
            {
              [from _setError];
            }

            v44 |= (v112 & 0x7F) << v42;
            if ((v112 & 0x80) == 0)
            {
              break;
            }

            v42 += 7;
            v12 = v43++ >= 9;
            if (v12)
            {
              v22 = 0;
              goto LABEL_166;
            }
          }

          if ([from hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v44;
          }

LABEL_166:
          v100 = 8;
          goto LABEL_171;
        case 4u:
          v14 = PBReaderReadString();
          v15 = 48;
          goto LABEL_148;
        case 5u:
          v87 = 0;
          v88 = 0;
          v89 = 0;
          *&self->_has |= 0x200u;
          while (1)
          {
            v109 = 0;
            v90 = [from position] + 1;
            if (v90 >= [from position] && (v91 = objc_msgSend(from, "position") + 1, v91 <= objc_msgSend(from, "length")))
            {
              data4 = [from data];
              [data4 getBytes:&v109 range:{objc_msgSend(from, "position"), 1}];

              [from setPosition:{objc_msgSend(from, "position") + 1}];
            }

            else
            {
              [from _setError];
            }

            v89 |= (v109 & 0x7F) << v87;
            if ((v109 & 0x80) == 0)
            {
              break;
            }

            v87 += 7;
            v12 = v88++ >= 9;
            if (v12)
            {
              v61 = 0;
              goto LABEL_192;
            }
          }

          if ([from hasError])
          {
            v61 = 0;
          }

          else
          {
            v61 = v89;
          }

LABEL_192:
          v102 = 128;
          goto LABEL_197;
        case 6u:
          v48 = 0;
          v49 = 0;
          v50 = 0;
          *&self->_has |= 0x10u;
          while (1)
          {
            v115 = 0;
            v51 = [from position] + 1;
            if (v51 >= [from position] && (v52 = objc_msgSend(from, "position") + 1, v52 <= objc_msgSend(from, "length")))
            {
              data5 = [from data];
              [data5 getBytes:&v115 range:{objc_msgSend(from, "position"), 1}];

              [from setPosition:{objc_msgSend(from, "position") + 1}];
            }

            else
            {
              [from _setError];
            }

            v50 |= (v115 & 0x7F) << v48;
            if ((v115 & 0x80) == 0)
            {
              break;
            }

            v48 += 7;
            v12 = v49++ >= 9;
            if (v12)
            {
              v22 = 0;
              goto LABEL_170;
            }
          }

          if ([from hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v50;
          }

LABEL_170:
          v100 = 40;
          goto LABEL_171;
        case 7u:
          v62 = 0;
          v63 = 0;
          v64 = 0;
          *&self->_has |= 0x20u;
          while (1)
          {
            v108 = 0;
            v65 = [from position] + 1;
            if (v65 >= [from position] && (v66 = objc_msgSend(from, "position") + 1, v66 <= objc_msgSend(from, "length")))
            {
              data6 = [from data];
              [data6 getBytes:&v108 range:{objc_msgSend(from, "position"), 1}];

              [from setPosition:{objc_msgSend(from, "position") + 1}];
            }

            else
            {
              [from _setError];
            }

            v64 |= (v108 & 0x7F) << v62;
            if ((v108 & 0x80) == 0)
            {
              break;
            }

            v62 += 7;
            v12 = v63++ >= 9;
            if (v12)
            {
              v61 = 0;
              goto LABEL_179;
            }
          }

          if ([from hasError])
          {
            v61 = 0;
          }

          else
          {
            v61 = v64;
          }

LABEL_179:
          v102 = 56;
          goto LABEL_197;
        case 8u:
          v68 = 0;
          v69 = 0;
          v70 = 0;
          *&self->_has |= 0x40u;
          while (1)
          {
            v107 = 0;
            v71 = [from position] + 1;
            if (v71 >= [from position] && (v72 = objc_msgSend(from, "position") + 1, v72 <= objc_msgSend(from, "length")))
            {
              data7 = [from data];
              [data7 getBytes:&v107 range:{objc_msgSend(from, "position"), 1}];

              [from setPosition:{objc_msgSend(from, "position") + 1}];
            }

            else
            {
              [from _setError];
            }

            v70 |= (v107 & 0x7F) << v68;
            if ((v107 & 0x80) == 0)
            {
              break;
            }

            v68 += 7;
            v12 = v69++ >= 9;
            if (v12)
            {
              v61 = 0;
              goto LABEL_183;
            }
          }

          if ([from hasError])
          {
            v61 = 0;
          }

          else
          {
            v61 = v70;
          }

LABEL_183:
          v102 = 60;
          goto LABEL_197;
        case 0xBu:
          v14 = PBReaderReadData();
          v15 = 112;
          goto LABEL_148;
        case 0xCu:
          v14 = PBReaderReadData();
          v15 = 136;
          goto LABEL_148;
        case 0xDu:
          v14 = PBReaderReadData();
          v15 = 144;
          goto LABEL_148;
        case 0xEu:
          v54 = PBReaderReadData();
          if (v54)
          {
            [(OTAccountMetadataClassC *)self addTlkSharesForVouchedIdentity:v54];
          }

          goto LABEL_198;
        case 0xFu:
          v14 = PBReaderReadData();
          v15 = 96;
          goto LABEL_148;
        case 0x12u:
          v29 = 0;
          v30 = 0;
          v31 = 0;
          *&self->_has |= 0x400u;
          while (1)
          {
            v118 = 0;
            v32 = [from position] + 1;
            if (v32 >= [from position] && (v33 = objc_msgSend(from, "position") + 1, v33 <= objc_msgSend(from, "length")))
            {
              data8 = [from data];
              [data8 getBytes:&v118 range:{objc_msgSend(from, "position"), 1}];

              [from setPosition:{objc_msgSend(from, "position") + 1}];
            }

            else
            {
              [from _setError];
            }

            v31 |= (v118 & 0x7F) << v29;
            if ((v118 & 0x80) == 0)
            {
              break;
            }

            v29 += 7;
            v12 = v30++ >= 9;
            if (v12)
            {
              LOBYTE(v35) = 0;
              goto LABEL_158;
            }
          }

          v35 = (v31 != 0) & ~[from hasError];
LABEL_158:
          v101 = 152;
          goto LABEL_188;
        case 0x13u:
          v74 = 0;
          v75 = 0;
          v76 = 0;
          *&self->_has |= 0x800u;
          while (1)
          {
            v117 = 0;
            v77 = [from position] + 1;
            if (v77 >= [from position] && (v78 = objc_msgSend(from, "position") + 1, v78 <= objc_msgSend(from, "length")))
            {
              data9 = [from data];
              [data9 getBytes:&v117 range:{objc_msgSend(from, "position"), 1}];

              [from setPosition:{objc_msgSend(from, "position") + 1}];
            }

            else
            {
              [from _setError];
            }

            v76 |= (v117 & 0x7F) << v74;
            if ((v117 & 0x80) == 0)
            {
              break;
            }

            v74 += 7;
            v12 = v75++ >= 9;
            if (v12)
            {
              LOBYTE(v35) = 0;
              goto LABEL_185;
            }
          }

          v35 = (v76 != 0) & ~[from hasError];
LABEL_185:
          v101 = 153;
          goto LABEL_188;
        case 0x14u:
          v80 = 0;
          v81 = 0;
          v82 = 0;
          *&self->_has |= 0x1000u;
          while (1)
          {
            v116 = 0;
            v83 = [from position] + 1;
            if (v83 >= [from position] && (v84 = objc_msgSend(from, "position") + 1, v84 <= objc_msgSend(from, "length")))
            {
              data10 = [from data];
              [data10 getBytes:&v116 range:{objc_msgSend(from, "position"), 1}];

              [from setPosition:{objc_msgSend(from, "position") + 1}];
            }

            else
            {
              [from _setError];
            }

            v82 |= (v116 & 0x7F) << v80;
            if ((v116 & 0x80) == 0)
            {
              break;
            }

            v80 += 7;
            v12 = v81++ >= 9;
            if (v12)
            {
              LOBYTE(v35) = 0;
              goto LABEL_187;
            }
          }

          v35 = (v82 != 0) & ~[from hasError];
LABEL_187:
          v101 = 154;
LABEL_188:
          self->PBCodable_opaque[v101] = v35;
          goto LABEL_198;
        case 0x16u:
          v93 = 0;
          v94 = 0;
          v95 = 0;
          *&self->_has |= 0x100u;
          while (1)
          {
            v106 = 0;
            v96 = [from position] + 1;
            if (v96 >= [from position] && (v97 = objc_msgSend(from, "position") + 1, v97 <= objc_msgSend(from, "length")))
            {
              data11 = [from data];
              [data11 getBytes:&v106 range:{objc_msgSend(from, "position"), 1}];

              [from setPosition:{objc_msgSend(from, "position") + 1}];
            }

            else
            {
              [from _setError];
            }

            v95 |= (v106 & 0x7F) << v93;
            if ((v106 & 0x80) == 0)
            {
              break;
            }

            v93 += 7;
            v12 = v94++ >= 9;
            if (v12)
            {
              v61 = 0;
              goto LABEL_196;
            }
          }

          if ([from hasError])
          {
            v61 = 0;
          }

          else
          {
            v61 = v95;
          }

LABEL_196:
          v102 = 104;
LABEL_197:
          *&self->PBCodable_opaque[v102] = v61;
          goto LABEL_198;
        case 0x17u:
          v14 = PBReaderReadString();
          v15 = 80;
          goto LABEL_148;
        case 0x18u:
          v16 = 0;
          v17 = 0;
          v18 = 0;
          *&self->_has |= 8u;
          while (1)
          {
            v114 = 0;
            v19 = [from position] + 1;
            if (v19 >= [from position] && (v20 = objc_msgSend(from, "position") + 1, v20 <= objc_msgSend(from, "length")))
            {
              data12 = [from data];
              [data12 getBytes:&v114 range:{objc_msgSend(from, "position"), 1}];

              [from setPosition:{objc_msgSend(from, "position") + 1}];
            }

            else
            {
              [from _setError];
            }

            v18 |= (v114 & 0x7F) << v16;
            if ((v114 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v12 = v17++ >= 9;
            if (v12)
            {
              v22 = 0;
              goto LABEL_152;
            }
          }

          if ([from hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v18;
          }

LABEL_152:
          v100 = 32;
          goto LABEL_171;
        case 0x19u:
          v36 = 0;
          v37 = 0;
          v38 = 0;
          *&self->_has |= 4u;
          while (1)
          {
            v113 = 0;
            v39 = [from position] + 1;
            if (v39 >= [from position] && (v40 = objc_msgSend(from, "position") + 1, v40 <= objc_msgSend(from, "length")))
            {
              data13 = [from data];
              [data13 getBytes:&v113 range:{objc_msgSend(from, "position"), 1}];

              [from setPosition:{objc_msgSend(from, "position") + 1}];
            }

            else
            {
              [from _setError];
            }

            v38 |= (v113 & 0x7F) << v36;
            if ((v113 & 0x80) == 0)
            {
              break;
            }

            v36 += 7;
            v12 = v37++ >= 9;
            if (v12)
            {
              v22 = 0;
              goto LABEL_162;
            }
          }

          if ([from hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v38;
          }

LABEL_162:
          v100 = 24;
          goto LABEL_171;
        case 0x1Au:
          v14 = PBReaderReadString();
          v15 = 72;
LABEL_148:
          v99 = *&self->PBCodable_opaque[v15];
          *&self->PBCodable_opaque[v15] = v14;

          goto LABEL_198;
        case 0x1Bu:
          v23 = 0;
          v24 = 0;
          v25 = 0;
          *&self->_has |= 2u;
          break;
        default:
          v86 = PBReaderSkipValueWithTag();
          if (!v86)
          {
            return v86;
          }

          goto LABEL_198;
      }

      while (1)
      {
        v111 = 0;
        v26 = [from position] + 1;
        if (v26 >= [from position] && (v27 = objc_msgSend(from, "position") + 1, v27 <= objc_msgSend(from, "length")))
        {
          data14 = [from data];
          [data14 getBytes:&v111 range:{objc_msgSend(from, "position"), 1}];

          [from setPosition:{objc_msgSend(from, "position") + 1}];
        }

        else
        {
          [from _setError];
        }

        v25 |= (v111 & 0x7F) << v23;
        if ((v111 & 0x80) == 0)
        {
          break;
        }

        v23 += 7;
        v12 = v24++ >= 9;
        if (v12)
        {
          v22 = 0;
          goto LABEL_156;
        }
      }

      v22 = [from hasError] ? 0 : v25;
LABEL_156:
      v100 = 16;
LABEL_171:
      *&self->PBCodable_opaque[v100] = v22;
LABEL_198:
      position2 = [from position];
    }

    while (position2 < [from length]);
  }

  LOBYTE(v86) = [from hasError] ^ 1;
  return v86;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  peerID = self->_peerID;
  if (peerID)
  {
    [v3 setObject:peerID forKey:@"peerID"];
  }

  has = self->_has;
  if ((has & 0x80) != 0)
  {
    icloudAccountState = self->_icloudAccountState;
    if (icloudAccountState >= 4)
    {
      v8 = [NSString stringWithFormat:@"(unknown: %i)", self->_icloudAccountState];
    }

    else
    {
      v8 = *(&off_100024830 + icloudAccountState);
    }

    [v4 setObject:v8 forKey:@"icloudAccountState"];

    has = self->_has;
  }

  if (has)
  {
    v9 = [NSNumber numberWithLongLong:self->_epoch];
    [v4 setObject:v9 forKey:@"epoch"];
  }

  altDSID = self->_altDSID;
  if (altDSID)
  {
    [v4 setObject:altDSID forKey:@"altDSID"];
  }

  v11 = self->_has;
  if ((v11 & 0x200) != 0)
  {
    trustState = self->_trustState;
    if (trustState >= 3)
    {
      v13 = [NSString stringWithFormat:@"(unknown: %i)", self->_trustState];
    }

    else
    {
      v13 = *(&off_100024850 + trustState);
    }

    [v4 setObject:v13 forKey:@"trustState"];

    v11 = self->_has;
    if ((v11 & 0x10) == 0)
    {
LABEL_14:
      if ((v11 & 0x20) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_22;
    }
  }

  else if ((v11 & 0x10) == 0)
  {
    goto LABEL_14;
  }

  v14 = [NSNumber numberWithUnsignedLongLong:self->_lastHealthCheckup];
  [v4 setObject:v14 forKey:@"lastHealthCheckup"];

  v11 = self->_has;
  if ((v11 & 0x20) == 0)
  {
LABEL_15:
    if ((v11 & 0x40) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_26;
  }

LABEL_22:
  attemptedJoin = self->_attemptedJoin;
  if (attemptedJoin >= 3)
  {
    v16 = [NSString stringWithFormat:@"(unknown: %i)", self->_attemptedJoin];
  }

  else
  {
    v16 = *(&off_100024868 + attemptedJoin);
  }

  [v4 setObject:v16 forKey:@"attemptedJoin"];

  if ((*&self->_has & 0x40) != 0)
  {
LABEL_26:
    cdpState = self->_cdpState;
    if (cdpState >= 3)
    {
      v18 = [NSString stringWithFormat:@"(unknown: %i)", self->_cdpState];
    }

    else
    {
      v18 = *(&off_100024880 + cdpState);
    }

    [v4 setObject:v18 forKey:@"cdpState"];
  }

LABEL_30:
  syncingPolicy = self->_syncingPolicy;
  if (syncingPolicy)
  {
    [v4 setObject:syncingPolicy forKey:@"syncingPolicy"];
  }

  voucher = self->_voucher;
  if (voucher)
  {
    [v4 setObject:voucher forKey:@"voucher"];
  }

  voucherSignature = self->_voucherSignature;
  if (voucherSignature)
  {
    [v4 setObject:voucherSignature forKey:@"voucherSignature"];
  }

  tlkSharesForVouchedIdentitys = self->_tlkSharesForVouchedIdentitys;
  if (tlkSharesForVouchedIdentitys)
  {
    [v4 setObject:tlkSharesForVouchedIdentitys forKey:@"tlkSharesForVouchedIdentity"];
  }

  secureElementIdentity = self->_secureElementIdentity;
  if (secureElementIdentity)
  {
    [v4 setObject:secureElementIdentity forKey:@"secureElementIdentity"];
  }

  v24 = self->_has;
  if ((v24 & 0x400) != 0)
  {
    v25 = [NSNumber numberWithBool:self->_isInheritedAccount];
    [v4 setObject:v25 forKey:@"isInheritedAccount"];

    v24 = self->_has;
    if ((v24 & 0x800) == 0)
    {
LABEL_42:
      if ((v24 & 0x1000) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_47;
    }
  }

  else if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_42;
  }

  v26 = [NSNumber numberWithBool:self->_warmedEscrowCache];
  [v4 setObject:v26 forKey:@"warmedEscrowCache"];

  v24 = self->_has;
  if ((v24 & 0x1000) == 0)
  {
LABEL_43:
    if ((v24 & 0x100) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_48;
  }

LABEL_47:
  v27 = [NSNumber numberWithBool:self->_warnedTooManyPeers];
  [v4 setObject:v27 forKey:@"warnedTooManyPeers"];

  if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_52;
  }

LABEL_48:
  sendingMetricsPermitted = self->_sendingMetricsPermitted;
  if (sendingMetricsPermitted >= 3)
  {
    v29 = [NSString stringWithFormat:@"(unknown: %i)", self->_sendingMetricsPermitted];
  }

  else
  {
    v29 = *(&off_100024898 + sendingMetricsPermitted);
  }

  [v4 setObject:v29 forKey:@"sendingMetricsPermitted"];

LABEL_52:
  oldPeerID = self->_oldPeerID;
  if (oldPeerID)
  {
    [v4 setObject:oldPeerID forKey:@"oldPeerID"];
  }

  v31 = self->_has;
  if ((v31 & 8) != 0)
  {
    v32 = [NSNumber numberWithUnsignedLongLong:self->_lastEscrowRepairTriggered];
    [v4 setObject:v32 forKey:@"lastEscrowRepairTriggered"];

    v31 = self->_has;
  }

  if ((v31 & 4) != 0)
  {
    v33 = [NSNumber numberWithUnsignedLongLong:self->_lastEscrowRepairAttempted];
    [v4 setObject:v33 forKey:@"lastEscrowRepairAttempted"];
  }

  machineID = self->_machineID;
  if (machineID)
  {
    [v4 setObject:machineID forKey:@"machineID"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v35 = [NSNumber numberWithLongLong:self->_escrowRepairAttemptVersion];
    [v4 setObject:v35 forKey:@"escrowRepairAttemptVersion"];
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = OTAccountMetadataClassC;
  v3 = [(OTAccountMetadataClassC *)&v7 description];
  dictionaryRepresentation = [(OTAccountMetadataClassC *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (void)setHasEscrowRepairAttemptVersion:(BOOL)version
{
  if (version)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasLastEscrowRepairAttempted:(BOOL)attempted
{
  if (attempted)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasLastEscrowRepairTriggered:(BOOL)triggered
{
  if (triggered)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (int)StringAsSendingMetricsPermitted:(id)permitted
{
  permittedCopy = permitted;
  if ([permittedCopy isEqualToString:@"UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([permittedCopy isEqualToString:@"PERMITTED"])
  {
    v4 = 1;
  }

  else if ([permittedCopy isEqualToString:@"NOTPERMITTED"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasSendingMetricsPermitted:(BOOL)permitted
{
  if (permitted)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (int)sendingMetricsPermitted
{
  if ((*&self->_has & 0x100) != 0)
  {
    return self->_sendingMetricsPermitted;
  }

  else
  {
    return 0;
  }
}

- (void)setHasWarnedTooManyPeers:(BOOL)peers
{
  if (peers)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (void)setHasWarmedEscrowCache:(BOOL)cache
{
  if (cache)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasIsInheritedAccount:(BOOL)account
{
  if (account)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)addTlkSharesForVouchedIdentity:(id)identity
{
  identityCopy = identity;
  tlkSharesForVouchedIdentitys = self->_tlkSharesForVouchedIdentitys;
  v8 = identityCopy;
  if (!tlkSharesForVouchedIdentitys)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_tlkSharesForVouchedIdentitys;
    self->_tlkSharesForVouchedIdentitys = v6;

    identityCopy = v8;
    tlkSharesForVouchedIdentitys = self->_tlkSharesForVouchedIdentitys;
  }

  [(NSMutableArray *)tlkSharesForVouchedIdentitys addObject:identityCopy];
}

- (int)StringAsCdpState:(id)state
{
  stateCopy = state;
  if ([stateCopy isEqualToString:@"UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([stateCopy isEqualToString:@"DISABLED"])
  {
    v4 = 1;
  }

  else if ([stateCopy isEqualToString:@"ENABLED"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasCdpState:(BOOL)state
{
  if (state)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (int)cdpState
{
  if ((*&self->_has & 0x40) != 0)
  {
    return self->_cdpState;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsAttemptedJoin:(id)join
{
  joinCopy = join;
  if ([joinCopy isEqualToString:@"UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([joinCopy isEqualToString:@"NOTATTEMPTED"])
  {
    v4 = 1;
  }

  else if ([joinCopy isEqualToString:@"ATTEMPTED"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasAttemptedJoin:(BOOL)join
{
  if (join)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (int)attemptedJoin
{
  if ((*&self->_has & 0x20) != 0)
  {
    return self->_attemptedJoin;
  }

  else
  {
    return 0;
  }
}

- (void)setHasLastHealthCheckup:(BOOL)checkup
{
  if (checkup)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (int)StringAsTrustState:(id)state
{
  stateCopy = state;
  if ([stateCopy isEqualToString:@"UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([stateCopy isEqualToString:@"UNTRUSTED"])
  {
    v4 = 1;
  }

  else if ([stateCopy isEqualToString:@"TRUSTED"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasTrustState:(BOOL)state
{
  if (state)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (int)trustState
{
  if ((*&self->_has & 0x200) != 0)
  {
    return self->_trustState;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsIcloudAccountState:(id)state
{
  stateCopy = state;
  if ([stateCopy isEqualToString:@"UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([stateCopy isEqualToString:@"NO_ACCOUNT"])
  {
    v4 = 1;
  }

  else if ([stateCopy isEqualToString:@"ACCOUNT_AVAILABLE"])
  {
    v4 = 2;
  }

  else if ([stateCopy isEqualToString:@"ACCOUNT_AVAILABLE_UNUSED"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasIcloudAccountState:(BOOL)state
{
  if (state)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (int)icloudAccountState
{
  if ((*&self->_has & 0x80) != 0)
  {
    return self->_icloudAccountState;
  }

  else
  {
    return 0;
  }
}

@end