@interface KCSharingPBPrivateKeyCredential
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)mergeFrom:(id)from;
- (void)setHasCanDecrypt:(BOOL)decrypt;
- (void)setHasCanDerive:(BOOL)derive;
- (void)setHasCanEncrypt:(BOOL)encrypt;
- (void)setHasCanSign:(BOOL)sign;
- (void)setHasCanSignRecover:(BOOL)recover;
- (void)setHasCanUnwrap:(BOOL)unwrap;
- (void)setHasCanVerify:(BOOL)verify;
- (void)setHasCanVerifyRecover:(BOOL)recover;
- (void)setHasCanWrap:(BOOL)wrap;
- (void)setHasCreator:(BOOL)creator;
- (void)setHasEffectiveKeySize:(BOOL)size;
- (void)setHasEndDate:(BOOL)date;
- (void)setHasIsExtractable:(BOOL)extractable;
- (void)setHasIsModifiable:(BOOL)modifiable;
- (void)setHasIsPermanent:(BOOL)permanent;
- (void)setHasIsPrivate:(BOOL)private;
- (void)setHasIsSensitive:(BOOL)sensitive;
- (void)setHasKeyClass:(BOOL)class;
- (void)setHasKeySizeInBits:(BOOL)bits;
- (void)setHasKeyType:(BOOL)type;
- (void)setHasModificationDate:(BOOL)date;
- (void)setHasStartDate:(BOOL)date;
- (void)setHasWasAlwaysSensitive:(BOOL)sensitive;
- (void)setHasWasNeverExtractable:(BOOL)extractable;
- (void)writeTo:(id)to;
@end

@implementation KCSharingPBPrivateKeyCredential

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v7 = fromCopy;
  if (*(fromCopy + 9))
  {
    [(KCSharingPBPrivateKeyCredential *)self setAccessGroup:?];
    fromCopy = v7;
  }

  if ((*(fromCopy + 200) & 0x10) != 0)
  {
    self->_keyType = *(fromCopy + 6);
    *&self->_has |= 0x10u;
  }

  if (*(fromCopy + 12))
  {
    [(KCSharingPBPrivateKeyCredential *)self setApplicationTag:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 22))
  {
    [(KCSharingPBPrivateKeyCredential *)self setLabel:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 11))
  {
    [(KCSharingPBPrivateKeyCredential *)self setApplicationLabel:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 21))
  {
    [(KCSharingPBPrivateKeyCredential *)self setKeyMaterial:?];
    fromCopy = v7;
  }

  v5 = *(fromCopy + 50);
  if ((v5 & 8) != 0)
  {
    self->_keySizeInBits = *(fromCopy + 5);
    *&self->_has |= 8u;
    v5 = *(fromCopy + 50);
    if ((v5 & 2) == 0)
    {
LABEL_15:
      if ((v5 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_48;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_15;
  }

  self->_effectiveKeySize = *(fromCopy + 3);
  *&self->_has |= 2u;
  v5 = *(fromCopy + 50);
  if ((v5 & 1) == 0)
  {
LABEL_16:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_49;
  }

LABEL_48:
  self->_creationDate = *(fromCopy + 2);
  *&self->_has |= 1u;
  v5 = *(fromCopy + 50);
  if ((v5 & 0x20) == 0)
  {
LABEL_17:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_50;
  }

LABEL_49:
  self->_modificationDate = *(fromCopy + 7);
  *&self->_has |= 0x20u;
  v5 = *(fromCopy + 50);
  if ((v5 & 0x10000) == 0)
  {
LABEL_18:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_51;
  }

LABEL_50:
  self->_creator = *(fromCopy + 35);
  *&self->_has |= 0x10000u;
  v5 = *(fromCopy + 50);
  if ((v5 & 0x40) == 0)
  {
LABEL_19:
    if ((v5 & 4) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_51:
  self->_startDate = *(fromCopy + 8);
  *&self->_has |= 0x40u;
  if ((*(fromCopy + 50) & 4) != 0)
  {
LABEL_20:
    self->_endDate = *(fromCopy + 4);
    *&self->_has |= 4u;
  }

LABEL_21:
  if (*(fromCopy + 23))
  {
    [(KCSharingPBPrivateKeyCredential *)self setViewHint:?];
    fromCopy = v7;
  }

  v6 = *(fromCopy + 50);
  if ((v6 & 0x400000) != 0)
  {
    self->_keyClass = *(fromCopy + 41);
    *&self->_has |= 0x400000u;
    v6 = *(fromCopy + 50);
    if ((v6 & 0x80000) == 0)
    {
LABEL_25:
      if ((v6 & 0x100000) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_55;
    }
  }

  else if ((v6 & 0x80000) == 0)
  {
    goto LABEL_25;
  }

  self->_isPermanent = *(fromCopy + 38);
  *&self->_has |= 0x80000u;
  v6 = *(fromCopy + 50);
  if ((v6 & 0x100000) == 0)
  {
LABEL_26:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_56;
  }

LABEL_55:
  self->_isPrivate = *(fromCopy + 39);
  *&self->_has |= 0x100000u;
  v6 = *(fromCopy + 50);
  if ((v6 & 0x40000) == 0)
  {
LABEL_27:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_57;
  }

LABEL_56:
  self->_isModifiable = *(fromCopy + 37);
  *&self->_has |= 0x40000u;
  v6 = *(fromCopy + 50);
  if ((v6 & 0x200000) == 0)
  {
LABEL_28:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_58;
  }

LABEL_57:
  self->_isSensitive = *(fromCopy + 40);
  *&self->_has |= 0x200000u;
  v6 = *(fromCopy + 50);
  if ((v6 & 0x800000) == 0)
  {
LABEL_29:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_59;
  }

LABEL_58:
  self->_wasAlwaysSensitive = *(fromCopy + 48);
  *&self->_has |= 0x800000u;
  v6 = *(fromCopy + 50);
  if ((v6 & 0x20000) == 0)
  {
LABEL_30:
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_60;
  }

LABEL_59:
  self->_isExtractable = *(fromCopy + 36);
  *&self->_has |= 0x20000u;
  v6 = *(fromCopy + 50);
  if ((v6 & 0x1000000) == 0)
  {
LABEL_31:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_61;
  }

LABEL_60:
  self->_wasNeverExtractable = *(fromCopy + 49);
  *&self->_has |= 0x1000000u;
  v6 = *(fromCopy + 50);
  if ((v6 & 0x200) == 0)
  {
LABEL_32:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_62;
  }

LABEL_61:
  self->_canEncrypt = *(fromCopy + 28);
  *&self->_has |= 0x200u;
  v6 = *(fromCopy + 50);
  if ((v6 & 0x80) == 0)
  {
LABEL_33:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_63;
  }

LABEL_62:
  self->_canDecrypt = *(fromCopy + 26);
  *&self->_has |= 0x80u;
  v6 = *(fromCopy + 50);
  if ((v6 & 0x100) == 0)
  {
LABEL_34:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_64;
  }

LABEL_63:
  self->_canDerive = *(fromCopy + 27);
  *&self->_has |= 0x100u;
  v6 = *(fromCopy + 50);
  if ((v6 & 0x400) == 0)
  {
LABEL_35:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_65;
  }

LABEL_64:
  self->_canSign = *(fromCopy + 29);
  *&self->_has |= 0x400u;
  v6 = *(fromCopy + 50);
  if ((v6 & 0x2000) == 0)
  {
LABEL_36:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_66;
  }

LABEL_65:
  self->_canVerify = *(fromCopy + 32);
  *&self->_has |= 0x2000u;
  v6 = *(fromCopy + 50);
  if ((v6 & 0x800) == 0)
  {
LABEL_37:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_67;
  }

LABEL_66:
  self->_canSignRecover = *(fromCopy + 30);
  *&self->_has |= 0x800u;
  v6 = *(fromCopy + 50);
  if ((v6 & 0x4000) == 0)
  {
LABEL_38:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_68;
  }

LABEL_67:
  self->_canVerifyRecover = *(fromCopy + 33);
  *&self->_has |= 0x4000u;
  v6 = *(fromCopy + 50);
  if ((v6 & 0x8000) == 0)
  {
LABEL_39:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

LABEL_68:
  self->_canWrap = *(fromCopy + 34);
  *&self->_has |= 0x8000u;
  if ((*(fromCopy + 50) & 0x1000) != 0)
  {
LABEL_40:
    self->_canUnwrap = *(fromCopy + 31);
    *&self->_has |= 0x1000u;
  }

LABEL_41:
  if (*(fromCopy + 10))
  {
    [(KCSharingPBPrivateKeyCredential *)self setAlias:?];
    fromCopy = v7;
  }
}

- (unint64_t)hash
{
  v51 = [(NSString *)self->_accessGroup hash];
  if ((*&self->_has & 0x10) != 0)
  {
    v50 = 2654435761 * self->_keyType;
  }

  else
  {
    v50 = 0;
  }

  v49 = [(NSData *)self->_applicationTag hash];
  v48 = [(NSString *)self->_label hash];
  v47 = [(NSData *)self->_applicationLabel hash];
  v45 = [(NSData *)self->_keyMaterial hash];
  has = self->_has;
  if ((*&has & 8) == 0)
  {
    v6 = 0;
    if ((*&has & 2) != 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v7 = 0;
    if (*&has)
    {
      goto LABEL_7;
    }

LABEL_13:
    v11 = 0;
    goto LABEL_14;
  }

  v6 = 2654435761 * self->_keySizeInBits;
  if ((*&has & 2) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v7 = 2654435761 * self->_effectiveKeySize;
  if ((*&has & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  creationDate = self->_creationDate;
  if (creationDate < 0.0)
  {
    creationDate = -creationDate;
  }

  *v3.i64 = floor(creationDate + 0.5);
  v9 = (creationDate - *v3.i64) * 1.84467441e19;
  *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
  v10.f64[0] = NAN;
  v10.f64[1] = NAN;
  v3 = vbslq_s8(vnegq_f64(v10), v4, v3);
  v11 = 2654435761u * *v3.i64;
  if (v9 >= 0.0)
  {
    if (v9 > 0.0)
    {
      v11 += v9;
    }
  }

  else
  {
    v11 -= fabs(v9);
  }

LABEL_14:
  if ((*&has & 0x20) != 0)
  {
    modificationDate = self->_modificationDate;
    if (modificationDate < 0.0)
    {
      modificationDate = -modificationDate;
    }

    *v3.i64 = floor(modificationDate + 0.5);
    v14 = (modificationDate - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v15.f64[0] = NAN;
    v15.f64[1] = NAN;
    v3 = vbslq_s8(vnegq_f64(v15), v4, v3);
    v12 = 2654435761u * *v3.i64;
    if (v14 >= 0.0)
    {
      if (v14 > 0.0)
      {
        v12 += v14;
      }
    }

    else
    {
      v12 -= fabs(v14);
    }
  }

  else
  {
    v12 = 0;
  }

  if ((*&has & 0x10000) != 0)
  {
    v16 = 2654435761 * self->_creator;
    if ((*&has & 0x40) != 0)
    {
      goto LABEL_26;
    }

LABEL_31:
    v20 = 0;
    goto LABEL_32;
  }

  v16 = 0;
  if ((*&has & 0x40) == 0)
  {
    goto LABEL_31;
  }

LABEL_26:
  startDate = self->_startDate;
  if (startDate < 0.0)
  {
    startDate = -startDate;
  }

  *v3.i64 = floor(startDate + 0.5);
  v18 = (startDate - *v3.i64) * 1.84467441e19;
  *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
  v19.f64[0] = NAN;
  v19.f64[1] = NAN;
  v3 = vbslq_s8(vnegq_f64(v19), v4, v3);
  v20 = 2654435761u * *v3.i64;
  if (v18 >= 0.0)
  {
    if (v18 > 0.0)
    {
      v20 += v18;
    }
  }

  else
  {
    v20 -= fabs(v18);
  }

LABEL_32:
  if ((*&has & 4) != 0)
  {
    endDate = self->_endDate;
    if (endDate < 0.0)
    {
      endDate = -endDate;
    }

    *v3.i64 = floor(endDate + 0.5);
    v23 = (endDate - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v24.f64[0] = NAN;
    v24.f64[1] = NAN;
    v21 = 2654435761u * *vbslq_s8(vnegq_f64(v24), v4, v3).i64;
    if (v23 >= 0.0)
    {
      if (v23 > 0.0)
      {
        v21 += v23;
      }
    }

    else
    {
      v21 -= fabs(v23);
    }
  }

  else
  {
    v21 = 0;
  }

  v25 = [(NSString *)self->_viewHint hash];
  v26 = self->_has;
  if ((*&v26 & 0x400000) != 0)
  {
    v27 = 2654435761 * self->_keyClass;
    if ((*&v26 & 0x80000) != 0)
    {
LABEL_44:
      v28 = 2654435761 * self->_isPermanent;
      if ((*&v26 & 0x100000) != 0)
      {
        goto LABEL_45;
      }

      goto LABEL_62;
    }
  }

  else
  {
    v27 = 0;
    if ((*&v26 & 0x80000) != 0)
    {
      goto LABEL_44;
    }
  }

  v28 = 0;
  if ((*&v26 & 0x100000) != 0)
  {
LABEL_45:
    v29 = 2654435761 * self->_isPrivate;
    if ((*&v26 & 0x40000) != 0)
    {
      goto LABEL_46;
    }

    goto LABEL_63;
  }

LABEL_62:
  v29 = 0;
  if ((*&v26 & 0x40000) != 0)
  {
LABEL_46:
    v30 = 2654435761 * self->_isModifiable;
    if ((*&v26 & 0x200000) != 0)
    {
      goto LABEL_47;
    }

    goto LABEL_64;
  }

LABEL_63:
  v30 = 0;
  if ((*&v26 & 0x200000) != 0)
  {
LABEL_47:
    v31 = 2654435761 * self->_isSensitive;
    if ((*&v26 & 0x800000) != 0)
    {
      goto LABEL_48;
    }

    goto LABEL_65;
  }

LABEL_64:
  v31 = 0;
  if ((*&v26 & 0x800000) != 0)
  {
LABEL_48:
    v32 = 2654435761 * self->_wasAlwaysSensitive;
    if ((*&v26 & 0x20000) != 0)
    {
      goto LABEL_49;
    }

    goto LABEL_66;
  }

LABEL_65:
  v32 = 0;
  if ((*&v26 & 0x20000) != 0)
  {
LABEL_49:
    v33 = 2654435761 * self->_isExtractable;
    if ((*&v26 & 0x1000000) != 0)
    {
      goto LABEL_50;
    }

    goto LABEL_67;
  }

LABEL_66:
  v33 = 0;
  if ((*&v26 & 0x1000000) != 0)
  {
LABEL_50:
    v34 = 2654435761 * self->_wasNeverExtractable;
    if ((*&v26 & 0x200) != 0)
    {
      goto LABEL_51;
    }

    goto LABEL_68;
  }

LABEL_67:
  v34 = 0;
  if ((*&v26 & 0x200) != 0)
  {
LABEL_51:
    v35 = 2654435761 * self->_canEncrypt;
    if ((*&v26 & 0x80) != 0)
    {
      goto LABEL_52;
    }

    goto LABEL_69;
  }

LABEL_68:
  v35 = 0;
  if ((*&v26 & 0x80) != 0)
  {
LABEL_52:
    v36 = 2654435761 * self->_canDecrypt;
    if ((*&v26 & 0x100) != 0)
    {
      goto LABEL_53;
    }

    goto LABEL_70;
  }

LABEL_69:
  v36 = 0;
  if ((*&v26 & 0x100) != 0)
  {
LABEL_53:
    v37 = 2654435761 * self->_canDerive;
    if ((*&v26 & 0x400) != 0)
    {
      goto LABEL_54;
    }

    goto LABEL_71;
  }

LABEL_70:
  v37 = 0;
  if ((*&v26 & 0x400) != 0)
  {
LABEL_54:
    v38 = 2654435761 * self->_canSign;
    if ((*&v26 & 0x2000) != 0)
    {
      goto LABEL_55;
    }

    goto LABEL_72;
  }

LABEL_71:
  v38 = 0;
  if ((*&v26 & 0x2000) != 0)
  {
LABEL_55:
    v39 = 2654435761 * self->_canVerify;
    if ((*&v26 & 0x800) != 0)
    {
      goto LABEL_56;
    }

    goto LABEL_73;
  }

LABEL_72:
  v39 = 0;
  if ((*&v26 & 0x800) != 0)
  {
LABEL_56:
    v40 = 2654435761 * self->_canSignRecover;
    if ((*&v26 & 0x4000) != 0)
    {
      goto LABEL_57;
    }

    goto LABEL_74;
  }

LABEL_73:
  v40 = 0;
  if ((*&v26 & 0x4000) != 0)
  {
LABEL_57:
    v41 = 2654435761 * self->_canVerifyRecover;
    if ((*&v26 & 0x8000) != 0)
    {
      goto LABEL_58;
    }

LABEL_75:
    v42 = 0;
    if ((*&v26 & 0x1000) != 0)
    {
      goto LABEL_59;
    }

LABEL_76:
    v43 = 0;
    return v50 ^ v51 ^ v49 ^ v48 ^ v47 ^ v46 ^ v6 ^ v7 ^ v11 ^ v12 ^ v16 ^ v20 ^ v21 ^ v25 ^ v27 ^ v28 ^ v29 ^ v30 ^ v31 ^ v32 ^ v33 ^ v34 ^ v35 ^ v36 ^ v37 ^ v38 ^ v39 ^ v40 ^ v41 ^ v42 ^ v43 ^ [(NSData *)self->_alias hash];
  }

LABEL_74:
  v41 = 0;
  if ((*&v26 & 0x8000) == 0)
  {
    goto LABEL_75;
  }

LABEL_58:
  v42 = 2654435761 * self->_canWrap;
  if ((*&v26 & 0x1000) == 0)
  {
    goto LABEL_76;
  }

LABEL_59:
  v43 = 2654435761 * self->_canUnwrap;
  return v50 ^ v51 ^ v49 ^ v48 ^ v47 ^ v46 ^ v6 ^ v7 ^ v11 ^ v12 ^ v16 ^ v20 ^ v21 ^ v25 ^ v27 ^ v28 ^ v29 ^ v30 ^ v31 ^ v32 ^ v33 ^ v34 ^ v35 ^ v36 ^ v37 ^ v38 ^ v39 ^ v40 ^ v41 ^ v42 ^ v43 ^ [(NSData *)self->_alias hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_142;
  }

  accessGroup = self->_accessGroup;
  if (accessGroup | *(equalCopy + 9))
  {
    if (![(NSString *)accessGroup isEqual:?])
    {
      goto LABEL_142;
    }
  }

  v6 = *(equalCopy + 50);
  if ((*&self->_has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_keyType != *(equalCopy + 6))
    {
      goto LABEL_142;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_142;
  }

  applicationTag = self->_applicationTag;
  if (applicationTag | *(equalCopy + 12) && ![(NSData *)applicationTag isEqual:?])
  {
    goto LABEL_142;
  }

  label = self->_label;
  if (label | *(equalCopy + 22))
  {
    if (![(NSString *)label isEqual:?])
    {
      goto LABEL_142;
    }
  }

  applicationLabel = self->_applicationLabel;
  if (applicationLabel | *(equalCopy + 11))
  {
    if (![(NSData *)applicationLabel isEqual:?])
    {
      goto LABEL_142;
    }
  }

  keyMaterial = self->_keyMaterial;
  if (keyMaterial | *(equalCopy + 21))
  {
    if (![(NSData *)keyMaterial isEqual:?])
    {
      goto LABEL_142;
    }
  }

  has = self->_has;
  v12 = *(equalCopy + 50);
  if ((*&has & 8) != 0)
  {
    if ((v12 & 8) == 0 || self->_keySizeInBits != *(equalCopy + 5))
    {
      goto LABEL_142;
    }
  }

  else if ((v12 & 8) != 0)
  {
    goto LABEL_142;
  }

  if ((*&has & 2) != 0)
  {
    if ((v12 & 2) == 0 || self->_effectiveKeySize != *(equalCopy + 3))
    {
      goto LABEL_142;
    }
  }

  else if ((v12 & 2) != 0)
  {
    goto LABEL_142;
  }

  if (*&has)
  {
    if ((v12 & 1) == 0 || self->_creationDate != *(equalCopy + 2))
    {
      goto LABEL_142;
    }
  }

  else if (v12)
  {
    goto LABEL_142;
  }

  if ((*&has & 0x20) != 0)
  {
    if ((v12 & 0x20) == 0 || self->_modificationDate != *(equalCopy + 7))
    {
      goto LABEL_142;
    }
  }

  else if ((v12 & 0x20) != 0)
  {
    goto LABEL_142;
  }

  if ((*&has & 0x10000) != 0)
  {
    if ((v12 & 0x10000) == 0 || self->_creator != *(equalCopy + 35))
    {
      goto LABEL_142;
    }
  }

  else if ((v12 & 0x10000) != 0)
  {
    goto LABEL_142;
  }

  if ((*&has & 0x40) != 0)
  {
    if ((v12 & 0x40) == 0 || self->_startDate != *(equalCopy + 8))
    {
      goto LABEL_142;
    }
  }

  else if ((v12 & 0x40) != 0)
  {
    goto LABEL_142;
  }

  if ((*&has & 4) != 0)
  {
    if ((v12 & 4) == 0 || self->_endDate != *(equalCopy + 4))
    {
      goto LABEL_142;
    }
  }

  else if ((v12 & 4) != 0)
  {
    goto LABEL_142;
  }

  viewHint = self->_viewHint;
  if (viewHint | *(equalCopy + 23))
  {
    if (![(NSString *)viewHint isEqual:?])
    {
LABEL_142:
      v15 = 0;
      goto LABEL_143;
    }

    has = self->_has;
    v12 = *(equalCopy + 50);
  }

  if ((*&has & 0x400000) != 0)
  {
    if ((v12 & 0x400000) == 0 || self->_keyClass != *(equalCopy + 41))
    {
      goto LABEL_142;
    }
  }

  else if ((v12 & 0x400000) != 0)
  {
    goto LABEL_142;
  }

  if ((*&has & 0x80000) != 0)
  {
    if ((v12 & 0x80000) == 0 || self->_isPermanent != *(equalCopy + 38))
    {
      goto LABEL_142;
    }
  }

  else if ((v12 & 0x80000) != 0)
  {
    goto LABEL_142;
  }

  if ((*&has & 0x100000) != 0)
  {
    if ((v12 & 0x100000) == 0 || self->_isPrivate != *(equalCopy + 39))
    {
      goto LABEL_142;
    }
  }

  else if ((v12 & 0x100000) != 0)
  {
    goto LABEL_142;
  }

  if ((*&has & 0x40000) != 0)
  {
    if ((v12 & 0x40000) == 0 || self->_isModifiable != *(equalCopy + 37))
    {
      goto LABEL_142;
    }
  }

  else if ((v12 & 0x40000) != 0)
  {
    goto LABEL_142;
  }

  if ((*&has & 0x200000) != 0)
  {
    if ((v12 & 0x200000) == 0 || self->_isSensitive != *(equalCopy + 40))
    {
      goto LABEL_142;
    }
  }

  else if ((v12 & 0x200000) != 0)
  {
    goto LABEL_142;
  }

  if ((*&has & 0x800000) != 0)
  {
    if ((v12 & 0x800000) == 0 || self->_wasAlwaysSensitive != *(equalCopy + 48))
    {
      goto LABEL_142;
    }
  }

  else if ((v12 & 0x800000) != 0)
  {
    goto LABEL_142;
  }

  if ((*&has & 0x20000) != 0)
  {
    if ((v12 & 0x20000) == 0 || self->_isExtractable != *(equalCopy + 36))
    {
      goto LABEL_142;
    }
  }

  else if ((v12 & 0x20000) != 0)
  {
    goto LABEL_142;
  }

  if ((*&has & 0x1000000) != 0)
  {
    if ((v12 & 0x1000000) == 0 || self->_wasNeverExtractable != *(equalCopy + 49))
    {
      goto LABEL_142;
    }
  }

  else if ((v12 & 0x1000000) != 0)
  {
    goto LABEL_142;
  }

  if ((*&has & 0x200) != 0)
  {
    if ((v12 & 0x200) == 0 || self->_canEncrypt != *(equalCopy + 28))
    {
      goto LABEL_142;
    }
  }

  else if ((v12 & 0x200) != 0)
  {
    goto LABEL_142;
  }

  if ((*&has & 0x80) != 0)
  {
    if ((v12 & 0x80) == 0 || self->_canDecrypt != *(equalCopy + 26))
    {
      goto LABEL_142;
    }
  }

  else if ((v12 & 0x80) != 0)
  {
    goto LABEL_142;
  }

  if ((*&has & 0x100) != 0)
  {
    if ((v12 & 0x100) == 0 || self->_canDerive != *(equalCopy + 27))
    {
      goto LABEL_142;
    }
  }

  else if ((v12 & 0x100) != 0)
  {
    goto LABEL_142;
  }

  if ((*&has & 0x400) != 0)
  {
    if ((v12 & 0x400) == 0 || self->_canSign != *(equalCopy + 29))
    {
      goto LABEL_142;
    }
  }

  else if ((v12 & 0x400) != 0)
  {
    goto LABEL_142;
  }

  if ((*&has & 0x2000) != 0)
  {
    if ((v12 & 0x2000) == 0 || self->_canVerify != *(equalCopy + 32))
    {
      goto LABEL_142;
    }
  }

  else if ((v12 & 0x2000) != 0)
  {
    goto LABEL_142;
  }

  if ((*&has & 0x800) != 0)
  {
    if ((v12 & 0x800) == 0 || self->_canSignRecover != *(equalCopy + 30))
    {
      goto LABEL_142;
    }
  }

  else if ((v12 & 0x800) != 0)
  {
    goto LABEL_142;
  }

  if ((*&has & 0x4000) != 0)
  {
    if ((v12 & 0x4000) == 0 || self->_canVerifyRecover != *(equalCopy + 33))
    {
      goto LABEL_142;
    }
  }

  else if ((v12 & 0x4000) != 0)
  {
    goto LABEL_142;
  }

  if ((*&has & 0x8000) != 0)
  {
    if ((v12 & 0x8000) == 0 || self->_canWrap != *(equalCopy + 34))
    {
      goto LABEL_142;
    }
  }

  else if ((v12 & 0x8000) != 0)
  {
    goto LABEL_142;
  }

  if ((*&has & 0x1000) != 0)
  {
    if ((v12 & 0x1000) == 0 || self->_canUnwrap != *(equalCopy + 31))
    {
      goto LABEL_142;
    }
  }

  else if ((v12 & 0x1000) != 0)
  {
    goto LABEL_142;
  }

  alias = self->_alias;
  if (alias | *(equalCopy + 10))
  {
    v15 = [(NSData *)alias isEqual:?];
  }

  else
  {
    v15 = 1;
  }

LABEL_143:

  return v15;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_accessGroup copyWithZone:zone];
  v7 = *(v5 + 9);
  *(v5 + 9) = v6;

  if ((*&self->_has & 0x10) != 0)
  {
    *(v5 + 6) = self->_keyType;
    *(v5 + 50) |= 0x10u;
  }

  v8 = [(NSData *)self->_applicationTag copyWithZone:zone];
  v9 = *(v5 + 12);
  *(v5 + 12) = v8;

  v10 = [(NSString *)self->_label copyWithZone:zone];
  v11 = *(v5 + 22);
  *(v5 + 22) = v10;

  v12 = [(NSData *)self->_applicationLabel copyWithZone:zone];
  v13 = *(v5 + 11);
  *(v5 + 11) = v12;

  v14 = [(NSData *)self->_keyMaterial copyWithZone:zone];
  v15 = *(v5 + 21);
  *(v5 + 21) = v14;

  has = self->_has;
  if ((*&has & 8) != 0)
  {
    *(v5 + 5) = self->_keySizeInBits;
    *(v5 + 50) |= 8u;
    has = self->_has;
    if ((*&has & 2) == 0)
    {
LABEL_5:
      if ((*&has & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_32;
    }
  }

  else if ((*&has & 2) == 0)
  {
    goto LABEL_5;
  }

  *(v5 + 3) = self->_effectiveKeySize;
  *(v5 + 50) |= 2u;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_6:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(v5 + 2) = *&self->_creationDate;
  *(v5 + 50) |= 1u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_7:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(v5 + 7) = *&self->_modificationDate;
  *(v5 + 50) |= 0x20u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_8:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(v5 + 35) = self->_creator;
  *(v5 + 50) |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_9:
    if ((*&has & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_35:
  *(v5 + 8) = *&self->_startDate;
  *(v5 + 50) |= 0x40u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_10:
    *(v5 + 4) = *&self->_endDate;
    *(v5 + 50) |= 4u;
  }

LABEL_11:
  v17 = [(NSString *)self->_viewHint copyWithZone:zone];
  v18 = *(v5 + 23);
  *(v5 + 23) = v17;

  v19 = self->_has;
  if ((*&v19 & 0x400000) != 0)
  {
    *(v5 + 41) = self->_keyClass;
    *(v5 + 50) |= 0x400000u;
    v19 = self->_has;
    if ((*&v19 & 0x80000) == 0)
    {
LABEL_13:
      if ((*&v19 & 0x100000) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_39;
    }
  }

  else if ((*&v19 & 0x80000) == 0)
  {
    goto LABEL_13;
  }

  *(v5 + 38) = self->_isPermanent;
  *(v5 + 50) |= 0x80000u;
  v19 = self->_has;
  if ((*&v19 & 0x100000) == 0)
  {
LABEL_14:
    if ((*&v19 & 0x40000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(v5 + 39) = self->_isPrivate;
  *(v5 + 50) |= 0x100000u;
  v19 = self->_has;
  if ((*&v19 & 0x40000) == 0)
  {
LABEL_15:
    if ((*&v19 & 0x200000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(v5 + 37) = self->_isModifiable;
  *(v5 + 50) |= 0x40000u;
  v19 = self->_has;
  if ((*&v19 & 0x200000) == 0)
  {
LABEL_16:
    if ((*&v19 & 0x800000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(v5 + 40) = self->_isSensitive;
  *(v5 + 50) |= 0x200000u;
  v19 = self->_has;
  if ((*&v19 & 0x800000) == 0)
  {
LABEL_17:
    if ((*&v19 & 0x20000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(v5 + 48) = self->_wasAlwaysSensitive;
  *(v5 + 50) |= 0x800000u;
  v19 = self->_has;
  if ((*&v19 & 0x20000) == 0)
  {
LABEL_18:
    if ((*&v19 & 0x1000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(v5 + 36) = self->_isExtractable;
  *(v5 + 50) |= 0x20000u;
  v19 = self->_has;
  if ((*&v19 & 0x1000000) == 0)
  {
LABEL_19:
    if ((*&v19 & 0x200) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(v5 + 49) = self->_wasNeverExtractable;
  *(v5 + 50) |= 0x1000000u;
  v19 = self->_has;
  if ((*&v19 & 0x200) == 0)
  {
LABEL_20:
    if ((*&v19 & 0x80) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(v5 + 28) = self->_canEncrypt;
  *(v5 + 50) |= 0x200u;
  v19 = self->_has;
  if ((*&v19 & 0x80) == 0)
  {
LABEL_21:
    if ((*&v19 & 0x100) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(v5 + 26) = self->_canDecrypt;
  *(v5 + 50) |= 0x80u;
  v19 = self->_has;
  if ((*&v19 & 0x100) == 0)
  {
LABEL_22:
    if ((*&v19 & 0x400) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(v5 + 27) = self->_canDerive;
  *(v5 + 50) |= 0x100u;
  v19 = self->_has;
  if ((*&v19 & 0x400) == 0)
  {
LABEL_23:
    if ((*&v19 & 0x2000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_49;
  }

LABEL_48:
  *(v5 + 29) = self->_canSign;
  *(v5 + 50) |= 0x400u;
  v19 = self->_has;
  if ((*&v19 & 0x2000) == 0)
  {
LABEL_24:
    if ((*&v19 & 0x800) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_50;
  }

LABEL_49:
  *(v5 + 32) = self->_canVerify;
  *(v5 + 50) |= 0x2000u;
  v19 = self->_has;
  if ((*&v19 & 0x800) == 0)
  {
LABEL_25:
    if ((*&v19 & 0x4000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(v5 + 30) = self->_canSignRecover;
  *(v5 + 50) |= 0x800u;
  v19 = self->_has;
  if ((*&v19 & 0x4000) == 0)
  {
LABEL_26:
    if ((*&v19 & 0x8000) == 0)
    {
      goto LABEL_27;
    }

LABEL_52:
    *(v5 + 34) = self->_canWrap;
    *(v5 + 50) |= 0x8000u;
    if ((*&self->_has & 0x1000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_51:
  *(v5 + 33) = self->_canVerifyRecover;
  *(v5 + 50) |= 0x4000u;
  v19 = self->_has;
  if ((*&v19 & 0x8000) != 0)
  {
    goto LABEL_52;
  }

LABEL_27:
  if ((*&v19 & 0x1000) != 0)
  {
LABEL_28:
    *(v5 + 31) = self->_canUnwrap;
    *(v5 + 50) |= 0x1000u;
  }

LABEL_29:
  v20 = [(NSData *)self->_alias copyWithZone:zone];
  v21 = *(v5 + 10);
  *(v5 + 10) = v20;

  objc_storeStrong(v5 + 1, self->_unknownFields);
  return v5;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v32 = toCopy;
  if (self->_accessGroup)
  {
    PBDataWriterWriteStringField();
    toCopy = v32;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    keyType = self->_keyType;
    PBDataWriterWriteInt64Field();
    toCopy = v32;
  }

  if (self->_applicationTag)
  {
    PBDataWriterWriteDataField();
    toCopy = v32;
  }

  if (self->_label)
  {
    PBDataWriterWriteStringField();
    toCopy = v32;
  }

  if (self->_applicationLabel)
  {
    PBDataWriterWriteDataField();
    toCopy = v32;
  }

  if (self->_keyMaterial)
  {
    PBDataWriterWriteDataField();
    toCopy = v32;
  }

  has = self->_has;
  if ((*&has & 8) != 0)
  {
    keySizeInBits = self->_keySizeInBits;
    PBDataWriterWriteInt64Field();
    toCopy = v32;
    has = self->_has;
    if ((*&has & 2) == 0)
    {
LABEL_15:
      if ((*&has & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_48;
    }
  }

  else if ((*&has & 2) == 0)
  {
    goto LABEL_15;
  }

  effectiveKeySize = self->_effectiveKeySize;
  PBDataWriterWriteInt64Field();
  toCopy = v32;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_16:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_49;
  }

LABEL_48:
  creationDate = self->_creationDate;
  PBDataWriterWriteDoubleField();
  toCopy = v32;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_17:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_50;
  }

LABEL_49:
  modificationDate = self->_modificationDate;
  PBDataWriterWriteDoubleField();
  toCopy = v32;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_18:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_51;
  }

LABEL_50:
  creator = self->_creator;
  PBDataWriterWriteInt32Field();
  toCopy = v32;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_19:
    if ((*&has & 4) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_51:
  startDate = self->_startDate;
  PBDataWriterWriteDoubleField();
  toCopy = v32;
  if ((*&self->_has & 4) != 0)
  {
LABEL_20:
    endDate = self->_endDate;
    PBDataWriterWriteDoubleField();
    toCopy = v32;
  }

LABEL_21:
  if (self->_viewHint)
  {
    PBDataWriterWriteStringField();
    toCopy = v32;
  }

  v8 = self->_has;
  if ((*&v8 & 0x400000) != 0)
  {
    keyClass = self->_keyClass;
    PBDataWriterWriteInt32Field();
    toCopy = v32;
    v8 = self->_has;
    if ((*&v8 & 0x80000) == 0)
    {
LABEL_25:
      if ((*&v8 & 0x100000) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_55;
    }
  }

  else if ((*&v8 & 0x80000) == 0)
  {
    goto LABEL_25;
  }

  isPermanent = self->_isPermanent;
  PBDataWriterWriteInt32Field();
  toCopy = v32;
  v8 = self->_has;
  if ((*&v8 & 0x100000) == 0)
  {
LABEL_26:
    if ((*&v8 & 0x40000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_56;
  }

LABEL_55:
  isPrivate = self->_isPrivate;
  PBDataWriterWriteInt32Field();
  toCopy = v32;
  v8 = self->_has;
  if ((*&v8 & 0x40000) == 0)
  {
LABEL_27:
    if ((*&v8 & 0x200000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_57;
  }

LABEL_56:
  isModifiable = self->_isModifiable;
  PBDataWriterWriteInt32Field();
  toCopy = v32;
  v8 = self->_has;
  if ((*&v8 & 0x200000) == 0)
  {
LABEL_28:
    if ((*&v8 & 0x800000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_58;
  }

LABEL_57:
  isSensitive = self->_isSensitive;
  PBDataWriterWriteInt32Field();
  toCopy = v32;
  v8 = self->_has;
  if ((*&v8 & 0x800000) == 0)
  {
LABEL_29:
    if ((*&v8 & 0x20000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_59;
  }

LABEL_58:
  wasAlwaysSensitive = self->_wasAlwaysSensitive;
  PBDataWriterWriteInt32Field();
  toCopy = v32;
  v8 = self->_has;
  if ((*&v8 & 0x20000) == 0)
  {
LABEL_30:
    if ((*&v8 & 0x1000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_60;
  }

LABEL_59:
  isExtractable = self->_isExtractable;
  PBDataWriterWriteInt32Field();
  toCopy = v32;
  v8 = self->_has;
  if ((*&v8 & 0x1000000) == 0)
  {
LABEL_31:
    if ((*&v8 & 0x200) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_61;
  }

LABEL_60:
  wasNeverExtractable = self->_wasNeverExtractable;
  PBDataWriterWriteInt32Field();
  toCopy = v32;
  v8 = self->_has;
  if ((*&v8 & 0x200) == 0)
  {
LABEL_32:
    if ((*&v8 & 0x80) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_62;
  }

LABEL_61:
  canEncrypt = self->_canEncrypt;
  PBDataWriterWriteInt32Field();
  toCopy = v32;
  v8 = self->_has;
  if ((*&v8 & 0x80) == 0)
  {
LABEL_33:
    if ((*&v8 & 0x100) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_63;
  }

LABEL_62:
  canDecrypt = self->_canDecrypt;
  PBDataWriterWriteInt32Field();
  toCopy = v32;
  v8 = self->_has;
  if ((*&v8 & 0x100) == 0)
  {
LABEL_34:
    if ((*&v8 & 0x400) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_64;
  }

LABEL_63:
  canDerive = self->_canDerive;
  PBDataWriterWriteInt32Field();
  toCopy = v32;
  v8 = self->_has;
  if ((*&v8 & 0x400) == 0)
  {
LABEL_35:
    if ((*&v8 & 0x2000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_65;
  }

LABEL_64:
  canSign = self->_canSign;
  PBDataWriterWriteInt32Field();
  toCopy = v32;
  v8 = self->_has;
  if ((*&v8 & 0x2000) == 0)
  {
LABEL_36:
    if ((*&v8 & 0x800) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_66;
  }

LABEL_65:
  canVerify = self->_canVerify;
  PBDataWriterWriteInt32Field();
  toCopy = v32;
  v8 = self->_has;
  if ((*&v8 & 0x800) == 0)
  {
LABEL_37:
    if ((*&v8 & 0x4000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_67;
  }

LABEL_66:
  canSignRecover = self->_canSignRecover;
  PBDataWriterWriteInt32Field();
  toCopy = v32;
  v8 = self->_has;
  if ((*&v8 & 0x4000) == 0)
  {
LABEL_38:
    if ((*&v8 & 0x8000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_68;
  }

LABEL_67:
  canVerifyRecover = self->_canVerifyRecover;
  PBDataWriterWriteInt32Field();
  toCopy = v32;
  v8 = self->_has;
  if ((*&v8 & 0x8000) == 0)
  {
LABEL_39:
    if ((*&v8 & 0x1000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

LABEL_68:
  canWrap = self->_canWrap;
  PBDataWriterWriteInt32Field();
  toCopy = v32;
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_40:
    canUnwrap = self->_canUnwrap;
    PBDataWriterWriteInt32Field();
    toCopy = v32;
  }

LABEL_41:
  if (self->_alias)
  {
    PBDataWriterWriteDataField();
    toCopy = v32;
  }

  [(PBUnknownFields *)self->_unknownFields writeTo:toCopy];
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  accessGroup = self->_accessGroup;
  if (accessGroup)
  {
    [v3 setObject:accessGroup forKey:@"accessGroup"];
  }

  if ((*&self->_has & 0x10) != 0)
  {
    v6 = [NSNumber numberWithLongLong:self->_keyType];
    [v4 setObject:v6 forKey:@"keyType"];
  }

  applicationTag = self->_applicationTag;
  if (applicationTag)
  {
    [v4 setObject:applicationTag forKey:@"applicationTag"];
  }

  label = self->_label;
  if (label)
  {
    [v4 setObject:label forKey:@"label"];
  }

  applicationLabel = self->_applicationLabel;
  if (applicationLabel)
  {
    [v4 setObject:applicationLabel forKey:@"applicationLabel"];
  }

  keyMaterial = self->_keyMaterial;
  if (keyMaterial)
  {
    [v4 setObject:keyMaterial forKey:@"keyMaterial"];
  }

  has = self->_has;
  if ((*&has & 8) != 0)
  {
    v21 = [NSNumber numberWithLongLong:self->_keySizeInBits];
    [v4 setObject:v21 forKey:@"keySizeInBits"];

    has = self->_has;
    if ((*&has & 2) == 0)
    {
LABEL_15:
      if ((*&has & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_48;
    }
  }

  else if ((*&has & 2) == 0)
  {
    goto LABEL_15;
  }

  v22 = [NSNumber numberWithLongLong:self->_effectiveKeySize];
  [v4 setObject:v22 forKey:@"effectiveKeySize"];

  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_16:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_49;
  }

LABEL_48:
  v23 = [NSNumber numberWithDouble:self->_creationDate];
  [v4 setObject:v23 forKey:@"creationDate"];

  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_17:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_50;
  }

LABEL_49:
  v24 = [NSNumber numberWithDouble:self->_modificationDate];
  [v4 setObject:v24 forKey:@"modificationDate"];

  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_18:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_51;
  }

LABEL_50:
  v25 = [NSNumber numberWithInt:self->_creator];
  [v4 setObject:v25 forKey:@"creator"];

  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_19:
    if ((*&has & 4) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_51:
  v26 = [NSNumber numberWithDouble:self->_startDate];
  [v4 setObject:v26 forKey:@"startDate"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_20:
    v12 = [NSNumber numberWithDouble:self->_endDate];
    [v4 setObject:v12 forKey:@"endDate"];
  }

LABEL_21:
  viewHint = self->_viewHint;
  if (viewHint)
  {
    [v4 setObject:viewHint forKey:@"viewHint"];
  }

  v14 = self->_has;
  if ((*&v14 & 0x400000) != 0)
  {
    v27 = [NSNumber numberWithInt:self->_keyClass];
    [v4 setObject:v27 forKey:@"keyClass"];

    v14 = self->_has;
    if ((*&v14 & 0x80000) == 0)
    {
LABEL_25:
      if ((*&v14 & 0x100000) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_55;
    }
  }

  else if ((*&v14 & 0x80000) == 0)
  {
    goto LABEL_25;
  }

  v28 = [NSNumber numberWithInt:self->_isPermanent];
  [v4 setObject:v28 forKey:@"isPermanent"];

  v14 = self->_has;
  if ((*&v14 & 0x100000) == 0)
  {
LABEL_26:
    if ((*&v14 & 0x40000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_56;
  }

LABEL_55:
  v29 = [NSNumber numberWithInt:self->_isPrivate];
  [v4 setObject:v29 forKey:@"isPrivate"];

  v14 = self->_has;
  if ((*&v14 & 0x40000) == 0)
  {
LABEL_27:
    if ((*&v14 & 0x200000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_57;
  }

LABEL_56:
  v30 = [NSNumber numberWithInt:self->_isModifiable];
  [v4 setObject:v30 forKey:@"isModifiable"];

  v14 = self->_has;
  if ((*&v14 & 0x200000) == 0)
  {
LABEL_28:
    if ((*&v14 & 0x800000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_58;
  }

LABEL_57:
  v31 = [NSNumber numberWithInt:self->_isSensitive];
  [v4 setObject:v31 forKey:@"isSensitive"];

  v14 = self->_has;
  if ((*&v14 & 0x800000) == 0)
  {
LABEL_29:
    if ((*&v14 & 0x20000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_59;
  }

LABEL_58:
  v32 = [NSNumber numberWithInt:self->_wasAlwaysSensitive];
  [v4 setObject:v32 forKey:@"wasAlwaysSensitive"];

  v14 = self->_has;
  if ((*&v14 & 0x20000) == 0)
  {
LABEL_30:
    if ((*&v14 & 0x1000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_60;
  }

LABEL_59:
  v33 = [NSNumber numberWithInt:self->_isExtractable];
  [v4 setObject:v33 forKey:@"isExtractable"];

  v14 = self->_has;
  if ((*&v14 & 0x1000000) == 0)
  {
LABEL_31:
    if ((*&v14 & 0x200) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_61;
  }

LABEL_60:
  v34 = [NSNumber numberWithInt:self->_wasNeverExtractable];
  [v4 setObject:v34 forKey:@"wasNeverExtractable"];

  v14 = self->_has;
  if ((*&v14 & 0x200) == 0)
  {
LABEL_32:
    if ((*&v14 & 0x80) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_62;
  }

LABEL_61:
  v35 = [NSNumber numberWithInt:self->_canEncrypt];
  [v4 setObject:v35 forKey:@"canEncrypt"];

  v14 = self->_has;
  if ((*&v14 & 0x80) == 0)
  {
LABEL_33:
    if ((*&v14 & 0x100) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_63;
  }

LABEL_62:
  v36 = [NSNumber numberWithInt:self->_canDecrypt];
  [v4 setObject:v36 forKey:@"canDecrypt"];

  v14 = self->_has;
  if ((*&v14 & 0x100) == 0)
  {
LABEL_34:
    if ((*&v14 & 0x400) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_64;
  }

LABEL_63:
  v37 = [NSNumber numberWithInt:self->_canDerive];
  [v4 setObject:v37 forKey:@"canDerive"];

  v14 = self->_has;
  if ((*&v14 & 0x400) == 0)
  {
LABEL_35:
    if ((*&v14 & 0x2000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_65;
  }

LABEL_64:
  v38 = [NSNumber numberWithInt:self->_canSign];
  [v4 setObject:v38 forKey:@"canSign"];

  v14 = self->_has;
  if ((*&v14 & 0x2000) == 0)
  {
LABEL_36:
    if ((*&v14 & 0x800) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_66;
  }

LABEL_65:
  v39 = [NSNumber numberWithInt:self->_canVerify];
  [v4 setObject:v39 forKey:@"canVerify"];

  v14 = self->_has;
  if ((*&v14 & 0x800) == 0)
  {
LABEL_37:
    if ((*&v14 & 0x4000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_67;
  }

LABEL_66:
  v40 = [NSNumber numberWithInt:self->_canSignRecover];
  [v4 setObject:v40 forKey:@"canSignRecover"];

  v14 = self->_has;
  if ((*&v14 & 0x4000) == 0)
  {
LABEL_38:
    if ((*&v14 & 0x8000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_68;
  }

LABEL_67:
  v41 = [NSNumber numberWithInt:self->_canVerifyRecover];
  [v4 setObject:v41 forKey:@"canVerifyRecover"];

  v14 = self->_has;
  if ((*&v14 & 0x8000) == 0)
  {
LABEL_39:
    if ((*&v14 & 0x1000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

LABEL_68:
  v42 = [NSNumber numberWithInt:self->_canWrap];
  [v4 setObject:v42 forKey:@"canWrap"];

  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_40:
    v15 = [NSNumber numberWithInt:self->_canUnwrap];
    [v4 setObject:v15 forKey:@"canUnwrap"];
  }

LABEL_41:
  alias = self->_alias;
  if (alias)
  {
    [v4 setObject:alias forKey:@"alias"];
  }

  unknownFields = self->_unknownFields;
  if (unknownFields)
  {
    dictionaryRepresentation = [(PBUnknownFields *)unknownFields dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"Unknown Fields"];
  }

  v19 = v4;

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = KCSharingPBPrivateKeyCredential;
  v3 = [(KCSharingPBPrivateKeyCredential *)&v7 description];
  dictionaryRepresentation = [(KCSharingPBPrivateKeyCredential *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (void)setHasCanUnwrap:(BOOL)unwrap
{
  if (unwrap)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFF | v3);
}

- (void)setHasCanWrap:(BOOL)wrap
{
  if (wrap)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFF | v3);
}

- (void)setHasCanVerifyRecover:(BOOL)recover
{
  if (recover)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFF | v3);
}

- (void)setHasCanSignRecover:(BOOL)recover
{
  if (recover)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
}

- (void)setHasCanVerify:(BOOL)verify
{
  if (verify)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
}

- (void)setHasCanSign:(BOOL)sign
{
  if (sign)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFF | v3);
}

- (void)setHasCanDerive:(BOOL)derive
{
  if (derive)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFF | v3);
}

- (void)setHasCanDecrypt:(BOOL)decrypt
{
  if (decrypt)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7F | v3);
}

- (void)setHasCanEncrypt:(BOOL)encrypt
{
  if (encrypt)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFF | v3);
}

- (void)setHasWasNeverExtractable:(BOOL)extractable
{
  if (extractable)
  {
    v3 = 0x1000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFEFFFFFF | v3);
}

- (void)setHasIsExtractable:(BOOL)extractable
{
  if (extractable)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFDFFFF | v3);
}

- (void)setHasWasAlwaysSensitive:(BOOL)sensitive
{
  if (sensitive)
  {
    v3 = 0x800000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFF7FFFFF | v3);
}

- (void)setHasIsSensitive:(BOOL)sensitive
{
  if (sensitive)
  {
    v3 = 0x200000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFDFFFFF | v3);
}

- (void)setHasIsModifiable:(BOOL)modifiable
{
  if (modifiable)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFBFFFF | v3);
}

- (void)setHasIsPrivate:(BOOL)private
{
  if (private)
  {
    v3 = 0x100000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFEFFFFF | v3);
}

- (void)setHasIsPermanent:(BOOL)permanent
{
  if (permanent)
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFF7FFFF | v3);
}

- (void)setHasKeyClass:(BOOL)class
{
  if (class)
  {
    v3 = 0x400000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFBFFFFF | v3);
}

- (void)setHasEndDate:(BOOL)date
{
  if (date)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFB | v3);
}

- (void)setHasStartDate:(BOOL)date
{
  if (date)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBF | v3);
}

- (void)setHasCreator:(BOOL)creator
{
  if (creator)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
}

- (void)setHasModificationDate:(BOOL)date
{
  if (date)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDF | v3);
}

- (void)setHasEffectiveKeySize:(BOOL)size
{
  if (size)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFD | v3);
}

- (void)setHasKeySizeInBits:(BOOL)bits
{
  if (bits)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7 | v3);
}

- (void)setHasKeyType:(BOOL)type
{
  if (type)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEF | v3);
}

@end