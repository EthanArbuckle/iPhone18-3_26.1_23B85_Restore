@interface APPBButton
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)predefinedAsString:(int)a3;
- (int)StringAsPredefined:(id)a3;
- (int)predefined;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation APPBButton

- (int)predefined
{
  if (*&self->_has)
  {
    return self->_predefined;
  }

  else
  {
    return 100000;
  }
}

- (id)predefinedAsString:(int)a3
{
  if ((a3 - 100000) >= 7)
  {
    v4 = [NSString stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    v4 = off_10047E180[a3 - 100000];
  }

  return v4;
}

- (int)StringAsPredefined:(id)a3
{
  v3 = 100000;
  v4 = a3;
  if (([v4 isEqualToString:@"BUY_NOW"] & 1) == 0)
  {
    if ([v4 isEqualToString:@"DOWNLOAD_NOW"])
    {
      v3 = 100001;
    }

    else if ([v4 isEqualToString:@"READ_MORE"])
    {
      v3 = 100002;
    }

    else if ([v4 isEqualToString:@"SUBSCRIBE_NOW"])
    {
      v3 = 100003;
    }

    else if ([v4 isEqualToString:@"VIEW_MORE"])
    {
      v3 = 100004;
    }

    else if ([v4 isEqualToString:@"LEARN_MORE"])
    {
      v3 = 100005;
    }

    else if ([v4 isEqualToString:@"TRY_IT_FREE"])
    {
      v3 = 100006;
    }

    else
    {
      v3 = 100000;
    }
  }

  return v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = APPBButton;
  v3 = [(APPBButton *)&v7 description];
  v4 = [(APPBButton *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if (*&self->_has)
  {
    v4 = self->_predefined - 100000;
    if (v4 >= 7)
    {
      v5 = [NSString stringWithFormat:@"(unknown: %i)", self->_predefined];
    }

    else
    {
      v5 = off_10047E180[v4];
    }

    [v3 setObject:v5 forKey:@"predefined"];
  }

  text = self->_text;
  if (text)
  {
    [v3 setObject:text forKey:@"text"];
  }

  accessText = self->_accessText;
  if (accessText)
  {
    [v3 setObject:accessText forKey:@"accessText"];
  }

  buttonStyle = self->_buttonStyle;
  if (buttonStyle)
  {
    v9 = [(APPBButtonStyle *)buttonStyle dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"buttonStyle"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
    v4 = v5;
  }

  if (self->_text)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_accessText)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_buttonStyle)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[6] = self->_predefined;
    *(v4 + 40) |= 1u;
  }

  v5 = v4;
  if (self->_text)
  {
    [v4 setText:?];
    v4 = v5;
  }

  if (self->_accessText)
  {
    [v5 setAccessText:?];
    v4 = v5;
  }

  if (self->_buttonStyle)
  {
    [v5 setButtonStyle:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 6) = self->_predefined;
    *(v5 + 40) |= 1u;
  }

  v7 = [(NSString *)self->_text copyWithZone:a3];
  v8 = v6[4];
  v6[4] = v7;

  v9 = [(NSString *)self->_accessText copyWithZone:a3];
  v10 = v6[1];
  v6[1] = v9;

  v11 = [(APPBButtonStyle *)self->_buttonStyle copyWithZone:a3];
  v12 = v6[2];
  v6[2] = v11;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_predefined != *(v4 + 6))
    {
      goto LABEL_13;
    }
  }

  else if (*(v4 + 40))
  {
LABEL_13:
    v8 = 0;
    goto LABEL_14;
  }

  text = self->_text;
  if (text | *(v4 + 4) && ![(NSString *)text isEqual:?])
  {
    goto LABEL_13;
  }

  accessText = self->_accessText;
  if (accessText | *(v4 + 1))
  {
    if (![(NSString *)accessText isEqual:?])
    {
      goto LABEL_13;
    }
  }

  buttonStyle = self->_buttonStyle;
  if (buttonStyle | *(v4 + 2))
  {
    v8 = [(APPBButtonStyle *)buttonStyle isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_14:

  return v8;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_predefined;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_text hash]^ v3;
  v5 = [(NSString *)self->_accessText hash];
  return v4 ^ v5 ^ [(APPBButtonStyle *)self->_buttonStyle hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[10])
  {
    self->_predefined = v4[6];
    *&self->_has |= 1u;
  }

  v8 = v4;
  if (*(v4 + 4))
  {
    [(APPBButton *)self setText:?];
    v5 = v8;
  }

  if (*(v5 + 1))
  {
    [(APPBButton *)self setAccessText:?];
    v5 = v8;
  }

  buttonStyle = self->_buttonStyle;
  v7 = *(v5 + 2);
  if (buttonStyle)
  {
    if (v7)
    {
      [(APPBButtonStyle *)buttonStyle mergeFrom:?];
    }
  }

  else if (v7)
  {
    [(APPBButton *)self setButtonStyle:?];
  }

  _objc_release_x1();
}

@end