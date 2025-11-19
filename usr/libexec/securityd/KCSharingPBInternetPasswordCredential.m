@interface KCSharingPBInternetPasswordCredential
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)mergeFrom:(id)a3;
- (void)setHasCreator:(BOOL)a3;
- (void)setHasCustomIcon:(BOOL)a3;
- (void)setHasIsInvisible:(BOOL)a3;
- (void)setHasIsNegative:(BOOL)a3;
- (void)setHasModificationDate:(BOOL)a3;
- (void)setHasPort:(BOOL)a3;
- (void)setHasScriptCode:(BOOL)a3;
- (void)setHasType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation KCSharingPBInternetPasswordCredential

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (*(v4 + 10))
  {
    [(KCSharingPBInternetPasswordCredential *)self setAccessGroup:?];
    v4 = v8;
  }

  v5 = *(v4 + 124);
  if ((v5 & 0x20) != 0)
  {
    self->_modificationDate = *(v4 + 7);
    *&self->_has |= 0x20u;
    v5 = *(v4 + 124);
  }

  if (v5)
  {
    self->_creationDate = *(v4 + 2);
    *&self->_has |= 1u;
  }

  if (*(v4 + 12))
  {
    [(KCSharingPBInternetPasswordCredential *)self setAccount:?];
    v4 = v8;
  }

  if (*(v4 + 27))
  {
    [(KCSharingPBInternetPasswordCredential *)self setProtocol:?];
    v4 = v8;
  }

  if (*(v4 + 29))
  {
    [(KCSharingPBInternetPasswordCredential *)self setServer:?];
    v4 = v8;
  }

  if ((*(v4 + 124) & 0x100) != 0)
  {
    self->_port = *(v4 + 52);
    *&self->_has |= 0x100u;
  }

  if (*(v4 + 14))
  {
    [(KCSharingPBInternetPasswordCredential *)self setAuthenticationType:?];
    v4 = v8;
  }

  if (*(v4 + 20))
  {
    [(KCSharingPBInternetPasswordCredential *)self setData:?];
    v4 = v8;
  }

  if (*(v4 + 25))
  {
    [(KCSharingPBInternetPasswordCredential *)self setPath:?];
    v4 = v8;
  }

  if (*(v4 + 19))
  {
    [(KCSharingPBInternetPasswordCredential *)self setComment:?];
    v4 = v8;
  }

  if (*(v4 + 23))
  {
    [(KCSharingPBInternetPasswordCredential *)self setLabel:?];
    v4 = v8;
  }

  if (*(v4 + 11))
  {
    [(KCSharingPBInternetPasswordCredential *)self setAccessibility:?];
    v4 = v8;
  }

  if (*(v4 + 30))
  {
    [(KCSharingPBInternetPasswordCredential *)self setViewHint:?];
    v4 = v8;
  }

  if (*(v4 + 28))
  {
    [(KCSharingPBInternetPasswordCredential *)self setSecurityDomain:?];
    v4 = v8;
  }

  if (*(v4 + 24))
  {
    [(KCSharingPBInternetPasswordCredential *)self setNotes:?];
    v4 = v8;
  }

  if (*(v4 + 21))
  {
    [(KCSharingPBInternetPasswordCredential *)self setHistory:?];
    v4 = v8;
  }

  if (*(v4 + 15))
  {
    [(KCSharingPBInternetPasswordCredential *)self setClientDefined0:?];
    v4 = v8;
  }

  if (*(v4 + 16))
  {
    [(KCSharingPBInternetPasswordCredential *)self setClientDefined1:?];
    v4 = v8;
  }

  if (*(v4 + 17))
  {
    [(KCSharingPBInternetPasswordCredential *)self setClientDefined2:?];
    v4 = v8;
  }

  if (*(v4 + 18))
  {
    [(KCSharingPBInternetPasswordCredential *)self setClientDefined3:?];
    v4 = v8;
  }

  v6 = *(v4 + 124);
  if ((v6 & 2) != 0)
  {
    self->_creator = *(v4 + 3);
    *&self->_has |= 2u;
    v6 = *(v4 + 124);
  }

  if ((v6 & 0x80) != 0)
  {
    self->_type = *(v4 + 9);
    *&self->_has |= 0x80u;
  }

  if (*(v4 + 22))
  {
    [(KCSharingPBInternetPasswordCredential *)self setItemDescription:?];
    v4 = v8;
  }

  v7 = *(v4 + 124);
  if ((v7 & 8) != 0)
  {
    self->_isInvisible = *(v4 + 5);
    *&self->_has |= 8u;
    v7 = *(v4 + 124);
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

  self->_isNegative = *(v4 + 6);
  *&self->_has |= 0x10u;
  v7 = *(v4 + 124);
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
  self->_customIcon = *(v4 + 4);
  *&self->_has |= 4u;
  if ((*(v4 + 124) & 0x40) != 0)
  {
LABEL_53:
    self->_scriptCode = *(v4 + 8);
    *&self->_has |= 0x40u;
  }

LABEL_54:
  if (*(v4 + 13))
  {
    [(KCSharingPBInternetPasswordCredential *)self setAlias:?];
    v4 = v8;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_88;
  }

  accessGroup = self->_accessGroup;
  if (accessGroup | *(v4 + 10))
  {
    if (![(NSString *)accessGroup isEqual:?])
    {
      goto LABEL_88;
    }
  }

  has = self->_has;
  v7 = *(v4 + 124);
  if ((has & 0x20) != 0)
  {
    if ((v7 & 0x20) == 0 || self->_modificationDate != *(v4 + 7))
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
    if ((v7 & 1) == 0 || self->_creationDate != *(v4 + 2))
    {
      goto LABEL_88;
    }
  }

  else if (v7)
  {
    goto LABEL_88;
  }

  account = self->_account;
  if (account | *(v4 + 12) && ![(NSString *)account isEqual:?])
  {
    goto LABEL_88;
  }

  protocol = self->_protocol;
  if (protocol | *(v4 + 27))
  {
    if (![(NSString *)protocol isEqual:?])
    {
      goto LABEL_88;
    }
  }

  server = self->_server;
  if (server | *(v4 + 29))
  {
    if (![(NSString *)server isEqual:?])
    {
      goto LABEL_88;
    }
  }

  v11 = *(v4 + 124);
  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(v4 + 124) & 0x100) == 0 || self->_port != *(v4 + 52))
    {
      goto LABEL_88;
    }
  }

  else if ((*(v4 + 124) & 0x100) != 0)
  {
    goto LABEL_88;
  }

  authenticationType = self->_authenticationType;
  if (authenticationType | *(v4 + 14) && ![(NSString *)authenticationType isEqual:?])
  {
    goto LABEL_88;
  }

  data = self->_data;
  if (data | *(v4 + 20))
  {
    if (![(NSData *)data isEqual:?])
    {
      goto LABEL_88;
    }
  }

  path = self->_path;
  if (path | *(v4 + 25))
  {
    if (![(NSString *)path isEqual:?])
    {
      goto LABEL_88;
    }
  }

  comment = self->_comment;
  if (comment | *(v4 + 19))
  {
    if (![(NSString *)comment isEqual:?])
    {
      goto LABEL_88;
    }
  }

  label = self->_label;
  if (label | *(v4 + 23))
  {
    if (![(NSString *)label isEqual:?])
    {
      goto LABEL_88;
    }
  }

  accessibility = self->_accessibility;
  if (accessibility | *(v4 + 11))
  {
    if (![(NSString *)accessibility isEqual:?])
    {
      goto LABEL_88;
    }
  }

  viewHint = self->_viewHint;
  if (viewHint | *(v4 + 30))
  {
    if (![(NSString *)viewHint isEqual:?])
    {
      goto LABEL_88;
    }
  }

  securityDomain = self->_securityDomain;
  if (securityDomain | *(v4 + 28))
  {
    if (![(NSString *)securityDomain isEqual:?])
    {
      goto LABEL_88;
    }
  }

  notes = self->_notes;
  if (notes | *(v4 + 24))
  {
    if (![(NSData *)notes isEqual:?])
    {
      goto LABEL_88;
    }
  }

  history = self->_history;
  if (history | *(v4 + 21))
  {
    if (![(NSData *)history isEqual:?])
    {
      goto LABEL_88;
    }
  }

  clientDefined0 = self->_clientDefined0;
  if (clientDefined0 | *(v4 + 15))
  {
    if (![(NSData *)clientDefined0 isEqual:?])
    {
      goto LABEL_88;
    }
  }

  clientDefined1 = self->_clientDefined1;
  if (clientDefined1 | *(v4 + 16))
  {
    if (![(NSData *)clientDefined1 isEqual:?])
    {
      goto LABEL_88;
    }
  }

  clientDefined2 = self->_clientDefined2;
  if (clientDefined2 | *(v4 + 17))
  {
    if (![(NSData *)clientDefined2 isEqual:?])
    {
      goto LABEL_88;
    }
  }

  clientDefined3 = self->_clientDefined3;
  if (clientDefined3 | *(v4 + 18))
  {
    if (![(NSData *)clientDefined3 isEqual:?])
    {
      goto LABEL_88;
    }
  }

  v26 = self->_has;
  v27 = *(v4 + 124);
  if ((v26 & 2) != 0)
  {
    if ((v27 & 2) == 0 || self->_creator != *(v4 + 3))
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
    if ((v27 & 0x80) == 0 || self->_type != *(v4 + 9))
    {
      goto LABEL_88;
    }
  }

  else if ((v27 & 0x80) != 0)
  {
    goto LABEL_88;
  }

  itemDescription = self->_itemDescription;
  if (itemDescription | *(v4 + 22))
  {
    if (![(NSString *)itemDescription isEqual:?])
    {
LABEL_88:
      v30 = 0;
      goto LABEL_89;
    }

    v26 = self->_has;
    v27 = *(v4 + 124);
  }

  if ((v26 & 8) != 0)
  {
    if ((v27 & 8) == 0 || self->_isInvisible != *(v4 + 5))
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
    if ((v27 & 0x10) == 0 || self->_isNegative != *(v4 + 6))
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
    if ((v27 & 4) == 0 || self->_customIcon != *(v4 + 4))
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
    if ((v27 & 0x40) == 0 || self->_scriptCode != *(v4 + 8))
    {
      goto LABEL_88;
    }
  }

  else if ((v27 & 0x40) != 0)
  {
    goto LABEL_88;
  }

  alias = self->_alias;
  if (alias | *(v4 + 13))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_accessGroup copyWithZone:a3];
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

  v9 = [(NSString *)self->_account copyWithZone:a3];
  v10 = *(v5 + 12);
  *(v5 + 12) = v9;

  v11 = [(NSString *)self->_protocol copyWithZone:a3];
  v12 = *(v5 + 27);
  *(v5 + 27) = v11;

  v13 = [(NSString *)self->_server copyWithZone:a3];
  v14 = *(v5 + 29);
  *(v5 + 29) = v13;

  if ((*&self->_has & 0x100) != 0)
  {
    *(v5 + 52) = self->_port;
    *(v5 + 124) |= 0x100u;
  }

  v15 = [(NSString *)self->_authenticationType copyWithZone:a3];
  v16 = *(v5 + 14);
  *(v5 + 14) = v15;

  v17 = [(NSData *)self->_data copyWithZone:a3];
  v18 = *(v5 + 20);
  *(v5 + 20) = v17;

  v19 = [(NSString *)self->_path copyWithZone:a3];
  v20 = *(v5 + 25);
  *(v5 + 25) = v19;

  v21 = [(NSString *)self->_comment copyWithZone:a3];
  v22 = *(v5 + 19);
  *(v5 + 19) = v21;

  v23 = [(NSString *)self->_label copyWithZone:a3];
  v24 = *(v5 + 23);
  *(v5 + 23) = v23;

  v25 = [(NSString *)self->_accessibility copyWithZone:a3];
  v26 = *(v5 + 11);
  *(v5 + 11) = v25;

  v27 = [(NSString *)self->_viewHint copyWithZone:a3];
  v28 = *(v5 + 30);
  *(v5 + 30) = v27;

  v29 = [(NSString *)self->_securityDomain copyWithZone:a3];
  v30 = *(v5 + 28);
  *(v5 + 28) = v29;

  v31 = [(NSData *)self->_notes copyWithZone:a3];
  v32 = *(v5 + 24);
  *(v5 + 24) = v31;

  v33 = [(NSData *)self->_history copyWithZone:a3];
  v34 = *(v5 + 21);
  *(v5 + 21) = v33;

  v35 = [(NSData *)self->_clientDefined0 copyWithZone:a3];
  v36 = *(v5 + 15);
  *(v5 + 15) = v35;

  v37 = [(NSData *)self->_clientDefined1 copyWithZone:a3];
  v38 = *(v5 + 16);
  *(v5 + 16) = v37;

  v39 = [(NSData *)self->_clientDefined2 copyWithZone:a3];
  v40 = *(v5 + 17);
  *(v5 + 17) = v39;

  v41 = [(NSData *)self->_clientDefined3 copyWithZone:a3];
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

  v44 = [(NSString *)self->_itemDescription copyWithZone:a3];
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
  v47 = [(NSData *)self->_alias copyWithZone:a3];
  v48 = *(v5 + 13);
  *(v5 + 13) = v47;

  objc_storeStrong(v5 + 1, self->_unknownFields);
  return v5;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v17 = v4;
  if (self->_accessGroup)
  {
    PBDataWriterWriteStringField();
    v4 = v17;
  }

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    modificationDate = self->_modificationDate;
    PBDataWriterWriteDoubleField();
    v4 = v17;
    has = self->_has;
  }

  if (has)
  {
    creationDate = self->_creationDate;
    PBDataWriterWriteDoubleField();
    v4 = v17;
  }

  if (self->_account)
  {
    PBDataWriterWriteStringField();
    v4 = v17;
  }

  if (self->_protocol)
  {
    PBDataWriterWriteStringField();
    v4 = v17;
  }

  if (self->_server)
  {
    PBDataWriterWriteStringField();
    v4 = v17;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    port = self->_port;
    PBDataWriterWriteInt32Field();
    v4 = v17;
  }

  if (self->_authenticationType)
  {
    PBDataWriterWriteStringField();
    v4 = v17;
  }

  if (self->_data)
  {
    PBDataWriterWriteDataField();
    v4 = v17;
  }

  if (self->_path)
  {
    PBDataWriterWriteStringField();
    v4 = v17;
  }

  if (self->_comment)
  {
    PBDataWriterWriteStringField();
    v4 = v17;
  }

  if (self->_label)
  {
    PBDataWriterWriteStringField();
    v4 = v17;
  }

  if (self->_accessibility)
  {
    PBDataWriterWriteStringField();
    v4 = v17;
  }

  if (self->_viewHint)
  {
    PBDataWriterWriteStringField();
    v4 = v17;
  }

  if (self->_securityDomain)
  {
    PBDataWriterWriteStringField();
    v4 = v17;
  }

  if (self->_notes)
  {
    PBDataWriterWriteDataField();
    v4 = v17;
  }

  if (self->_history)
  {
    PBDataWriterWriteDataField();
    v4 = v17;
  }

  if (self->_clientDefined0)
  {
    PBDataWriterWriteDataField();
    v4 = v17;
  }

  if (self->_clientDefined1)
  {
    PBDataWriterWriteDataField();
    v4 = v17;
  }

  if (self->_clientDefined2)
  {
    PBDataWriterWriteDataField();
    v4 = v17;
  }

  if (self->_clientDefined3)
  {
    PBDataWriterWriteDataField();
    v4 = v17;
  }

  v9 = self->_has;
  if ((v9 & 2) != 0)
  {
    creator = self->_creator;
    PBDataWriterWriteInt64Field();
    v4 = v17;
    v9 = self->_has;
  }

  if ((v9 & 0x80) != 0)
  {
    type = self->_type;
    PBDataWriterWriteInt64Field();
    v4 = v17;
  }

  if (self->_itemDescription)
  {
    PBDataWriterWriteStringField();
    v4 = v17;
  }

  v12 = self->_has;
  if ((v12 & 8) != 0)
  {
    isInvisible = self->_isInvisible;
    PBDataWriterWriteInt64Field();
    v4 = v17;
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
  v4 = v17;
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
  v4 = v17;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_53:
    scriptCode = self->_scriptCode;
    PBDataWriterWriteInt64Field();
    v4 = v17;
  }

LABEL_54:
  if (self->_alias)
  {
    PBDataWriterWriteDataField();
    v4 = v17;
  }

  [(PBUnknownFields *)self->_unknownFields writeTo:v4];
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
    v35 = [(PBUnknownFields *)unknownFields dictionaryRepresentation];
    [v4 setObject:v35 forKey:@"Unknown Fields"];
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = KCSharingPBInternetPasswordCredential;
  v3 = [(KCSharingPBInternetPasswordCredential *)&v7 description];
  v4 = [(KCSharingPBInternetPasswordCredential *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (void)setHasScriptCode:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasCustomIcon:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasIsNegative:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasIsInvisible:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasType:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasCreator:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasPort:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasModificationDate:(BOOL)a3
{
  if (a3)
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