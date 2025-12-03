@interface KCSharingPBInternetPasswordCredential
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)mergeFrom:(id)from;
- (void)setHasCreator:(BOOL)creator;
- (void)setHasCustomIcon:(BOOL)icon;
- (void)setHasIsInvisible:(BOOL)invisible;
- (void)setHasIsNegative:(BOOL)negative;
- (void)setHasModificationDate:(BOOL)date;
- (void)setHasPort:(BOOL)port;
- (void)setHasScriptCode:(BOOL)code;
- (void)setHasType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation KCSharingPBInternetPasswordCredential

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v8 = fromCopy;
  if (*(fromCopy + 10))
  {
    [(KCSharingPBInternetPasswordCredential *)self setAccessGroup:?];
    fromCopy = v8;
  }

  v5 = *(fromCopy + 124);
  if ((v5 & 0x20) != 0)
  {
    self->_modificationDate = *(fromCopy + 7);
    *&self->_has |= 0x20u;
    v5 = *(fromCopy + 124);
  }

  if (v5)
  {
    self->_creationDate = *(fromCopy + 2);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 12))
  {
    [(KCSharingPBInternetPasswordCredential *)self setAccount:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 27))
  {
    [(KCSharingPBInternetPasswordCredential *)self setProtocol:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 29))
  {
    [(KCSharingPBInternetPasswordCredential *)self setServer:?];
    fromCopy = v8;
  }

  if ((*(fromCopy + 124) & 0x100) != 0)
  {
    self->_port = *(fromCopy + 52);
    *&self->_has |= 0x100u;
  }

  if (*(fromCopy + 14))
  {
    [(KCSharingPBInternetPasswordCredential *)self setAuthenticationType:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 20))
  {
    [(KCSharingPBInternetPasswordCredential *)self setData:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 25))
  {
    [(KCSharingPBInternetPasswordCredential *)self setPath:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 19))
  {
    [(KCSharingPBInternetPasswordCredential *)self setComment:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 23))
  {
    [(KCSharingPBInternetPasswordCredential *)self setLabel:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 11))
  {
    [(KCSharingPBInternetPasswordCredential *)self setAccessibility:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 30))
  {
    [(KCSharingPBInternetPasswordCredential *)self setViewHint:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 28))
  {
    [(KCSharingPBInternetPasswordCredential *)self setSecurityDomain:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 24))
  {
    [(KCSharingPBInternetPasswordCredential *)self setNotes:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 21))
  {
    [(KCSharingPBInternetPasswordCredential *)self setHistory:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 15))
  {
    [(KCSharingPBInternetPasswordCredential *)self setClientDefined0:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 16))
  {
    [(KCSharingPBInternetPasswordCredential *)self setClientDefined1:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 17))
  {
    [(KCSharingPBInternetPasswordCredential *)self setClientDefined2:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 18))
  {
    [(KCSharingPBInternetPasswordCredential *)self setClientDefined3:?];
    fromCopy = v8;
  }

  v6 = *(fromCopy + 124);
  if ((v6 & 2) != 0)
  {
    self->_creator = *(fromCopy + 3);
    *&self->_has |= 2u;
    v6 = *(fromCopy + 124);
  }

  if ((v6 & 0x80) != 0)
  {
    self->_type = *(fromCopy + 9);
    *&self->_has |= 0x80u;
  }

  if (*(fromCopy + 22))
  {
    [(KCSharingPBInternetPasswordCredential *)self setItemDescription:?];
    fromCopy = v8;
  }

  v7 = *(fromCopy + 124);
  if ((v7 & 8) != 0)
  {
    self->_isInvisible = *(fromCopy + 5);
    *&self->_has |= 8u;
    v7 = *(fromCopy + 124);
    if ((v7 & 0x10) == 0)
    {
LABEL_51:
      if ((v7 & 4) == 0)
      {
        goto LABEL_52;
      }

      goto LABEL_61;
    }
  }

  else if ((v7 & 0x10) == 0)
  {
    goto LABEL_51;
  }

  self->_isNegative = *(fromCopy + 6);
  *&self->_has |= 0x10u;
  v7 = *(fromCopy + 124);
  if ((v7 & 4) == 0)
  {
LABEL_52:
    if ((v7 & 0x40) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

LABEL_61:
  self->_customIcon = *(fromCopy + 4);
  *&self->_has |= 4u;
  if ((*(fromCopy + 124) & 0x40) != 0)
  {
LABEL_53:
    self->_scriptCode = *(fromCopy + 8);
    *&self->_has |= 0x40u;
  }

LABEL_54:
  if (*(fromCopy + 13))
  {
    [(KCSharingPBInternetPasswordCredential *)self setAlias:?];
    fromCopy = v8;
  }
}

- (unint64_t)hash
{
  v46 = [(NSString *)self->_accessGroup hash];
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    modificationDate = self->_modificationDate;
    if (modificationDate < 0.0)
    {
      modificationDate = -modificationDate;
    }

    *v3.i64 = floor(modificationDate + 0.5);
    v8 = (modificationDate - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    v3 = vbslq_s8(vnegq_f64(v9), v4, v3);
    v6 = 2654435761u * *v3.i64;
    if (v8 >= 0.0)
    {
      if (v8 > 0.0)
      {
        v6 += v8;
      }
    }

    else
    {
      v6 -= fabs(v8);
    }
  }

  else
  {
    v6 = 0;
  }

  v45 = v6;
  if (has)
  {
    creationDate = self->_creationDate;
    if (creationDate < 0.0)
    {
      creationDate = -creationDate;
    }

    *v3.i64 = floor(creationDate + 0.5);
    v11 = (creationDate - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v12.f64[0] = NAN;
    v12.f64[1] = NAN;
    v3.i64[0] = vbslq_s8(vnegq_f64(v12), v4, v3).i64[0];
    v13 = 2654435761u * *v3.i64;
    v14 = v13 + v11;
    if (v11 <= 0.0)
    {
      v14 = 2654435761u * *v3.i64;
    }

    v15 = v13 - fabs(v11);
    if (v11 >= 0.0)
    {
      v15 = v14;
    }

    v44 = v15;
  }

  else
  {
    v44 = 0;
  }

  v43 = [(NSString *)self->_account hash];
  v42 = [(NSString *)self->_protocol hash];
  v41 = [(NSString *)self->_server hash];
  if ((*&self->_has & 0x100) != 0)
  {
    v40 = 2654435761 * self->_port;
  }

  else
  {
    v40 = 0;
  }

  v39 = [(NSString *)self->_authenticationType hash];
  v38 = [(NSData *)self->_data hash];
  v37 = [(NSString *)self->_path hash];
  v36 = [(NSString *)self->_comment hash];
  v35 = [(NSString *)self->_label hash];
  v34 = [(NSString *)self->_accessibility hash];
  v33 = [(NSString *)self->_viewHint hash];
  v32 = [(NSString *)self->_securityDomain hash];
  v31 = [(NSData *)self->_notes hash];
  v16 = [(NSData *)self->_history hash];
  v17 = [(NSData *)self->_clientDefined0 hash];
  v18 = [(NSData *)self->_clientDefined1 hash];
  v19 = [(NSData *)self->_clientDefined2 hash];
  v20 = [(NSData *)self->_clientDefined3 hash];
  v21 = self->_has;
  if ((v21 & 2) != 0)
  {
    v22 = 2654435761 * self->_creator;
    if ((v21 & 0x80) != 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v22 = 0;
    if ((v21 & 0x80) != 0)
    {
LABEL_23:
      v23 = 2654435761 * self->_type;
      goto LABEL_26;
    }
  }

  v23 = 0;
LABEL_26:
  v24 = [(NSString *)self->_itemDescription hash];
  v25 = self->_has;
  if ((v25 & 8) != 0)
  {
    v26 = 2654435761 * self->_isInvisible;
    if ((v25 & 0x10) != 0)
    {
LABEL_28:
      v27 = 2654435761 * self->_isNegative;
      if ((v25 & 4) != 0)
      {
        goto LABEL_29;
      }

LABEL_33:
      v28 = 0;
      if ((v25 & 0x40) != 0)
      {
        goto LABEL_30;
      }

LABEL_34:
      v29 = 0;
      return v45 ^ v46 ^ v44 ^ v43 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v22 ^ v23 ^ v24 ^ v26 ^ v27 ^ v28 ^ v29 ^ [(NSData *)self->_alias hash];
    }
  }

  else
  {
    v26 = 0;
    if ((v25 & 0x10) != 0)
    {
      goto LABEL_28;
    }
  }

  v27 = 0;
  if ((v25 & 4) == 0)
  {
    goto LABEL_33;
  }

LABEL_29:
  v28 = 2654435761 * self->_customIcon;
  if ((v25 & 0x40) == 0)
  {
    goto LABEL_34;
  }

LABEL_30:
  v29 = 2654435761 * self->_scriptCode;
  return v45 ^ v46 ^ v44 ^ v43 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v22 ^ v23 ^ v24 ^ v26 ^ v27 ^ v28 ^ v29 ^ [(NSData *)self->_alias hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_88;
  }

  accessGroup = self->_accessGroup;
  if (accessGroup | *(equalCopy + 10))
  {
    if (![(NSString *)accessGroup isEqual:?])
    {
      goto LABEL_88;
    }
  }

  has = self->_has;
  v7 = *(equalCopy + 124);
  if ((has & 0x20) != 0)
  {
    if ((v7 & 0x20) == 0 || self->_modificationDate != *(equalCopy + 7))
    {
      goto LABEL_88;
    }
  }

  else if ((v7 & 0x20) != 0)
  {
    goto LABEL_88;
  }

  if (has)
  {
    if ((v7 & 1) == 0 || self->_creationDate != *(equalCopy + 2))
    {
      goto LABEL_88;
    }
  }

  else if (v7)
  {
    goto LABEL_88;
  }

  account = self->_account;
  if (account | *(equalCopy + 12) && ![(NSString *)account isEqual:?])
  {
    goto LABEL_88;
  }

  protocol = self->_protocol;
  if (protocol | *(equalCopy + 27))
  {
    if (![(NSString *)protocol isEqual:?])
    {
      goto LABEL_88;
    }
  }

  server = self->_server;
  if (server | *(equalCopy + 29))
  {
    if (![(NSString *)server isEqual:?])
    {
      goto LABEL_88;
    }
  }

  v11 = *(equalCopy + 124);
  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(equalCopy + 124) & 0x100) == 0 || self->_port != *(equalCopy + 52))
    {
      goto LABEL_88;
    }
  }

  else if ((*(equalCopy + 124) & 0x100) != 0)
  {
    goto LABEL_88;
  }

  authenticationType = self->_authenticationType;
  if (authenticationType | *(equalCopy + 14) && ![(NSString *)authenticationType isEqual:?])
  {
    goto LABEL_88;
  }

  data = self->_data;
  if (data | *(equalCopy + 20))
  {
    if (![(NSData *)data isEqual:?])
    {
      goto LABEL_88;
    }
  }

  path = self->_path;
  if (path | *(equalCopy + 25))
  {
    if (![(NSString *)path isEqual:?])
    {
      goto LABEL_88;
    }
  }

  comment = self->_comment;
  if (comment | *(equalCopy + 19))
  {
    if (![(NSString *)comment isEqual:?])
    {
      goto LABEL_88;
    }
  }

  label = self->_label;
  if (label | *(equalCopy + 23))
  {
    if (![(NSString *)label isEqual:?])
    {
      goto LABEL_88;
    }
  }

  accessibility = self->_accessibility;
  if (accessibility | *(equalCopy + 11))
  {
    if (![(NSString *)accessibility isEqual:?])
    {
      goto LABEL_88;
    }
  }

  viewHint = self->_viewHint;
  if (viewHint | *(equalCopy + 30))
  {
    if (![(NSString *)viewHint isEqual:?])
    {
      goto LABEL_88;
    }
  }

  securityDomain = self->_securityDomain;
  if (securityDomain | *(equalCopy + 28))
  {
    if (![(NSString *)securityDomain isEqual:?])
    {
      goto LABEL_88;
    }
  }

  notes = self->_notes;
  if (notes | *(equalCopy + 24))
  {
    if (![(NSData *)notes isEqual:?])
    {
      goto LABEL_88;
    }
  }

  history = self->_history;
  if (history | *(equalCopy + 21))
  {
    if (![(NSData *)history isEqual:?])
    {
      goto LABEL_88;
    }
  }

  clientDefined0 = self->_clientDefined0;
  if (clientDefined0 | *(equalCopy + 15))
  {
    if (![(NSData *)clientDefined0 isEqual:?])
    {
      goto LABEL_88;
    }
  }

  clientDefined1 = self->_clientDefined1;
  if (clientDefined1 | *(equalCopy + 16))
  {
    if (![(NSData *)clientDefined1 isEqual:?])
    {
      goto LABEL_88;
    }
  }

  clientDefined2 = self->_clientDefined2;
  if (clientDefined2 | *(equalCopy + 17))
  {
    if (![(NSData *)clientDefined2 isEqual:?])
    {
      goto LABEL_88;
    }
  }

  clientDefined3 = self->_clientDefined3;
  if (clientDefined3 | *(equalCopy + 18))
  {
    if (![(NSData *)clientDefined3 isEqual:?])
    {
      goto LABEL_88;
    }
  }

  v26 = self->_has;
  v27 = *(equalCopy + 124);
  if ((v26 & 2) != 0)
  {
    if ((v27 & 2) == 0 || self->_creator != *(equalCopy + 3))
    {
      goto LABEL_88;
    }
  }

  else if ((v27 & 2) != 0)
  {
    goto LABEL_88;
  }

  if ((v26 & 0x80) != 0)
  {
    if ((v27 & 0x80) == 0 || self->_type != *(equalCopy + 9))
    {
      goto LABEL_88;
    }
  }

  else if ((v27 & 0x80) != 0)
  {
    goto LABEL_88;
  }

  itemDescription = self->_itemDescription;
  if (itemDescription | *(equalCopy + 22))
  {
    if (![(NSString *)itemDescription isEqual:?])
    {
LABEL_88:
      v30 = 0;
      goto LABEL_89;
    }

    v26 = self->_has;
    v27 = *(equalCopy + 124);
  }

  if ((v26 & 8) != 0)
  {
    if ((v27 & 8) == 0 || self->_isInvisible != *(equalCopy + 5))
    {
      goto LABEL_88;
    }
  }

  else if ((v27 & 8) != 0)
  {
    goto LABEL_88;
  }

  if ((v26 & 0x10) != 0)
  {
    if ((v27 & 0x10) == 0 || self->_isNegative != *(equalCopy + 6))
    {
      goto LABEL_88;
    }
  }

  else if ((v27 & 0x10) != 0)
  {
    goto LABEL_88;
  }

  if ((v26 & 4) != 0)
  {
    if ((v27 & 4) == 0 || self->_customIcon != *(equalCopy + 4))
    {
      goto LABEL_88;
    }
  }

  else if ((v27 & 4) != 0)
  {
    goto LABEL_88;
  }

  if ((v26 & 0x40) != 0)
  {
    if ((v27 & 0x40) == 0 || self->_scriptCode != *(equalCopy + 8))
    {
      goto LABEL_88;
    }
  }

  else if ((v27 & 0x40) != 0)
  {
    goto LABEL_88;
  }

  alias = self->_alias;
  if (alias | *(equalCopy + 13))
  {
    v30 = [(NSData *)alias isEqual:?];
  }

  else
  {
    v30 = 1;
  }

LABEL_89:

  return v30;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_accessGroup copyWithZone:zone];
  v7 = *(v5 + 10);
  *(v5 + 10) = v6;

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    *(v5 + 7) = *&self->_modificationDate;
    *(v5 + 124) |= 0x20u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 2) = *&self->_creationDate;
    *(v5 + 124) |= 1u;
  }

  v9 = [(NSString *)self->_account copyWithZone:zone];
  v10 = *(v5 + 12);
  *(v5 + 12) = v9;

  v11 = [(NSString *)self->_protocol copyWithZone:zone];
  v12 = *(v5 + 27);
  *(v5 + 27) = v11;

  v13 = [(NSString *)self->_server copyWithZone:zone];
  v14 = *(v5 + 29);
  *(v5 + 29) = v13;

  if ((*&self->_has & 0x100) != 0)
  {
    *(v5 + 52) = self->_port;
    *(v5 + 124) |= 0x100u;
  }

  v15 = [(NSString *)self->_authenticationType copyWithZone:zone];
  v16 = *(v5 + 14);
  *(v5 + 14) = v15;

  v17 = [(NSData *)self->_data copyWithZone:zone];
  v18 = *(v5 + 20);
  *(v5 + 20) = v17;

  v19 = [(NSString *)self->_path copyWithZone:zone];
  v20 = *(v5 + 25);
  *(v5 + 25) = v19;

  v21 = [(NSString *)self->_comment copyWithZone:zone];
  v22 = *(v5 + 19);
  *(v5 + 19) = v21;

  v23 = [(NSString *)self->_label copyWithZone:zone];
  v24 = *(v5 + 23);
  *(v5 + 23) = v23;

  v25 = [(NSString *)self->_accessibility copyWithZone:zone];
  v26 = *(v5 + 11);
  *(v5 + 11) = v25;

  v27 = [(NSString *)self->_viewHint copyWithZone:zone];
  v28 = *(v5 + 30);
  *(v5 + 30) = v27;

  v29 = [(NSString *)self->_securityDomain copyWithZone:zone];
  v30 = *(v5 + 28);
  *(v5 + 28) = v29;

  v31 = [(NSData *)self->_notes copyWithZone:zone];
  v32 = *(v5 + 24);
  *(v5 + 24) = v31;

  v33 = [(NSData *)self->_history copyWithZone:zone];
  v34 = *(v5 + 21);
  *(v5 + 21) = v33;

  v35 = [(NSData *)self->_clientDefined0 copyWithZone:zone];
  v36 = *(v5 + 15);
  *(v5 + 15) = v35;

  v37 = [(NSData *)self->_clientDefined1 copyWithZone:zone];
  v38 = *(v5 + 16);
  *(v5 + 16) = v37;

  v39 = [(NSData *)self->_clientDefined2 copyWithZone:zone];
  v40 = *(v5 + 17);
  *(v5 + 17) = v39;

  v41 = [(NSData *)self->_clientDefined3 copyWithZone:zone];
  v42 = *(v5 + 18);
  *(v5 + 18) = v41;

  v43 = self->_has;
  if ((v43 & 2) != 0)
  {
    *(v5 + 3) = self->_creator;
    *(v5 + 124) |= 2u;
    v43 = self->_has;
  }

  if ((v43 & 0x80) != 0)
  {
    *(v5 + 9) = self->_type;
    *(v5 + 124) |= 0x80u;
  }

  v44 = [(NSString *)self->_itemDescription copyWithZone:zone];
  v45 = *(v5 + 22);
  *(v5 + 22) = v44;

  v46 = self->_has;
  if ((v46 & 8) != 0)
  {
    *(v5 + 5) = self->_isInvisible;
    *(v5 + 124) |= 8u;
    v46 = self->_has;
    if ((v46 & 0x10) == 0)
    {
LABEL_13:
      if ((v46 & 4) == 0)
      {
        goto LABEL_14;
      }

LABEL_19:
      *(v5 + 4) = self->_customIcon;
      *(v5 + 124) |= 4u;
      if ((*&self->_has & 0x40) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  else if ((v46 & 0x10) == 0)
  {
    goto LABEL_13;
  }

  *(v5 + 6) = self->_isNegative;
  *(v5 + 124) |= 0x10u;
  v46 = self->_has;
  if ((v46 & 4) != 0)
  {
    goto LABEL_19;
  }

LABEL_14:
  if ((v46 & 0x40) != 0)
  {
LABEL_15:
    *(v5 + 8) = self->_scriptCode;
    *(v5 + 124) |= 0x40u;
  }

LABEL_16:
  v47 = [(NSData *)self->_alias copyWithZone:zone];
  v48 = *(v5 + 13);
  *(v5 + 13) = v47;

  objc_storeStrong(v5 + 1, self->_unknownFields);
  return v5;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v17 = toCopy;
  if (self->_accessGroup)
  {
    PBDataWriterWriteStringField();
    toCopy = v17;
  }

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    modificationDate = self->_modificationDate;
    PBDataWriterWriteDoubleField();
    toCopy = v17;
    has = self->_has;
  }

  if (has)
  {
    creationDate = self->_creationDate;
    PBDataWriterWriteDoubleField();
    toCopy = v17;
  }

  if (self->_account)
  {
    PBDataWriterWriteStringField();
    toCopy = v17;
  }

  if (self->_protocol)
  {
    PBDataWriterWriteStringField();
    toCopy = v17;
  }

  if (self->_server)
  {
    PBDataWriterWriteStringField();
    toCopy = v17;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    port = self->_port;
    PBDataWriterWriteInt32Field();
    toCopy = v17;
  }

  if (self->_authenticationType)
  {
    PBDataWriterWriteStringField();
    toCopy = v17;
  }

  if (self->_data)
  {
    PBDataWriterWriteDataField();
    toCopy = v17;
  }

  if (self->_path)
  {
    PBDataWriterWriteStringField();
    toCopy = v17;
  }

  if (self->_comment)
  {
    PBDataWriterWriteStringField();
    toCopy = v17;
  }

  if (self->_label)
  {
    PBDataWriterWriteStringField();
    toCopy = v17;
  }

  if (self->_accessibility)
  {
    PBDataWriterWriteStringField();
    toCopy = v17;
  }

  if (self->_viewHint)
  {
    PBDataWriterWriteStringField();
    toCopy = v17;
  }

  if (self->_securityDomain)
  {
    PBDataWriterWriteStringField();
    toCopy = v17;
  }

  if (self->_notes)
  {
    PBDataWriterWriteDataField();
    toCopy = v17;
  }

  if (self->_history)
  {
    PBDataWriterWriteDataField();
    toCopy = v17;
  }

  if (self->_clientDefined0)
  {
    PBDataWriterWriteDataField();
    toCopy = v17;
  }

  if (self->_clientDefined1)
  {
    PBDataWriterWriteDataField();
    toCopy = v17;
  }

  if (self->_clientDefined2)
  {
    PBDataWriterWriteDataField();
    toCopy = v17;
  }

  if (self->_clientDefined3)
  {
    PBDataWriterWriteDataField();
    toCopy = v17;
  }

  v9 = self->_has;
  if ((v9 & 2) != 0)
  {
    creator = self->_creator;
    PBDataWriterWriteInt64Field();
    toCopy = v17;
    v9 = self->_has;
  }

  if ((v9 & 0x80) != 0)
  {
    type = self->_type;
    PBDataWriterWriteInt64Field();
    toCopy = v17;
  }

  if (self->_itemDescription)
  {
    PBDataWriterWriteStringField();
    toCopy = v17;
  }

  v12 = self->_has;
  if ((v12 & 8) != 0)
  {
    isInvisible = self->_isInvisible;
    PBDataWriterWriteInt64Field();
    toCopy = v17;
    v12 = self->_has;
    if ((v12 & 0x10) == 0)
    {
LABEL_51:
      if ((v12 & 4) == 0)
      {
        goto LABEL_52;
      }

      goto LABEL_61;
    }
  }

  else if ((v12 & 0x10) == 0)
  {
    goto LABEL_51;
  }

  isNegative = self->_isNegative;
  PBDataWriterWriteInt64Field();
  toCopy = v17;
  v12 = self->_has;
  if ((v12 & 4) == 0)
  {
LABEL_52:
    if ((v12 & 0x40) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

LABEL_61:
  customIcon = self->_customIcon;
  PBDataWriterWriteInt64Field();
  toCopy = v17;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_53:
    scriptCode = self->_scriptCode;
    PBDataWriterWriteInt64Field();
    toCopy = v17;
  }

LABEL_54:
  if (self->_alias)
  {
    PBDataWriterWriteDataField();
    toCopy = v17;
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

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    v7 = [NSNumber numberWithDouble:self->_modificationDate];
    [v4 setObject:v7 forKey:@"modificationDate"];

    has = self->_has;
  }

  if (has)
  {
    v8 = [NSNumber numberWithDouble:self->_creationDate];
    [v4 setObject:v8 forKey:@"creationDate"];
  }

  account = self->_account;
  if (account)
  {
    [v4 setObject:account forKey:@"account"];
  }

  protocol = self->_protocol;
  if (protocol)
  {
    [v4 setObject:protocol forKey:@"protocol"];
  }

  server = self->_server;
  if (server)
  {
    [v4 setObject:server forKey:@"server"];
  }

  if ((*&self->_has & 0x100) != 0)
  {
    v12 = [NSNumber numberWithInt:self->_port];
    [v4 setObject:v12 forKey:@"port"];
  }

  authenticationType = self->_authenticationType;
  if (authenticationType)
  {
    [v4 setObject:authenticationType forKey:@"authenticationType"];
  }

  data = self->_data;
  if (data)
  {
    [v4 setObject:data forKey:@"data"];
  }

  path = self->_path;
  if (path)
  {
    [v4 setObject:path forKey:@"path"];
  }

  comment = self->_comment;
  if (comment)
  {
    [v4 setObject:comment forKey:@"comment"];
  }

  label = self->_label;
  if (label)
  {
    [v4 setObject:label forKey:@"label"];
  }

  accessibility = self->_accessibility;
  if (accessibility)
  {
    [v4 setObject:accessibility forKey:@"accessibility"];
  }

  viewHint = self->_viewHint;
  if (viewHint)
  {
    [v4 setObject:viewHint forKey:@"viewHint"];
  }

  securityDomain = self->_securityDomain;
  if (securityDomain)
  {
    [v4 setObject:securityDomain forKey:@"securityDomain"];
  }

  notes = self->_notes;
  if (notes)
  {
    [v4 setObject:notes forKey:@"notes"];
  }

  history = self->_history;
  if (history)
  {
    [v4 setObject:history forKey:@"history"];
  }

  clientDefined0 = self->_clientDefined0;
  if (clientDefined0)
  {
    [v4 setObject:clientDefined0 forKey:@"clientDefined0"];
  }

  clientDefined1 = self->_clientDefined1;
  if (clientDefined1)
  {
    [v4 setObject:clientDefined1 forKey:@"clientDefined1"];
  }

  clientDefined2 = self->_clientDefined2;
  if (clientDefined2)
  {
    [v4 setObject:clientDefined2 forKey:@"clientDefined2"];
  }

  clientDefined3 = self->_clientDefined3;
  if (clientDefined3)
  {
    [v4 setObject:clientDefined3 forKey:@"clientDefined3"];
  }

  v27 = self->_has;
  if ((v27 & 2) != 0)
  {
    v28 = [NSNumber numberWithLongLong:self->_creator];
    [v4 setObject:v28 forKey:@"creator"];

    v27 = self->_has;
  }

  if ((v27 & 0x80) != 0)
  {
    v29 = [NSNumber numberWithLongLong:self->_type];
    [v4 setObject:v29 forKey:@"type"];
  }

  itemDescription = self->_itemDescription;
  if (itemDescription)
  {
    [v4 setObject:itemDescription forKey:@"itemDescription"];
  }

  v31 = self->_has;
  if ((v31 & 8) != 0)
  {
    v37 = [NSNumber numberWithLongLong:self->_isInvisible];
    [v4 setObject:v37 forKey:@"isInvisible"];

    v31 = self->_has;
    if ((v31 & 0x10) == 0)
    {
LABEL_51:
      if ((v31 & 4) == 0)
      {
        goto LABEL_52;
      }

      goto LABEL_63;
    }
  }

  else if ((v31 & 0x10) == 0)
  {
    goto LABEL_51;
  }

  v38 = [NSNumber numberWithLongLong:self->_isNegative];
  [v4 setObject:v38 forKey:@"isNegative"];

  v31 = self->_has;
  if ((v31 & 4) == 0)
  {
LABEL_52:
    if ((v31 & 0x40) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

LABEL_63:
  v39 = [NSNumber numberWithLongLong:self->_customIcon];
  [v4 setObject:v39 forKey:@"customIcon"];

  if ((*&self->_has & 0x40) != 0)
  {
LABEL_53:
    v32 = [NSNumber numberWithLongLong:self->_scriptCode];
    [v4 setObject:v32 forKey:@"scriptCode"];
  }

LABEL_54:
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

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = KCSharingPBInternetPasswordCredential;
  v3 = [(KCSharingPBInternetPasswordCredential *)&v7 description];
  dictionaryRepresentation = [(KCSharingPBInternetPasswordCredential *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (void)setHasScriptCode:(BOOL)code
{
  if (code)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasCustomIcon:(BOOL)icon
{
  if (icon)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasIsNegative:(BOOL)negative
{
  if (negative)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasIsInvisible:(BOOL)invisible
{
  if (invisible)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasType:(BOOL)type
{
  if (type)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasCreator:(BOOL)creator
{
  if (creator)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasPort:(BOOL)port
{
  if (port)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
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

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

@end