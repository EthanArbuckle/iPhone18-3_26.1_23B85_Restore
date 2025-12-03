@interface APPBAdLayoutDetails
- (BOOL)isEqual:(id)equal;
- (id)adFormatTypeAsString:(int)string;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)typeAsString:(int)string;
- (int)StringAsAdFormatType:(id)type;
- (int)StringAsType:(id)type;
- (int)adFormatType;
- (int)type;
- (unint64_t)hash;
- (void)addElements:(id)elements;
- (void)addLocalizedHeadlines:(id)headlines;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation APPBAdLayoutDetails

- (int)type
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_type;
  }

  else
  {
    return 40000;
  }
}

- (void)setHasType:(BOOL)type
{
  if (type)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)typeAsString:(int)string
{
  if ((string - 40000) >= 9)
  {
    v4 = [NSString stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = *(&off_10047CCB8 + (string - 40000));
  }

  return v4;
}

- (int)StringAsType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Banner"])
  {
    v4 = 40000;
  }

  else if ([typeCopy isEqualToString:@"Video"])
  {
    v4 = 40001;
  }

  else if ([typeCopy isEqualToString:@"DRTBrand"])
  {
    v4 = 40002;
  }

  else if ([typeCopy isEqualToString:@"DRTNews"])
  {
    v4 = 40003;
  }

  else if ([typeCopy isEqualToString:@"DRTVerizon"])
  {
    v4 = 40004;
  }

  else if ([typeCopy isEqualToString:@"Native"])
  {
    v4 = 40005;
  }

  else if ([typeCopy isEqualToString:@"Carousel"])
  {
    v4 = 40006;
  }

  else if ([typeCopy isEqualToString:@"AMP"])
  {
    v4 = 40007;
  }

  else if ([typeCopy isEqualToString:@"Sponsorship"])
  {
    v4 = 40008;
  }

  else
  {
    v4 = 40000;
  }

  return v4;
}

- (void)addElements:(id)elements
{
  elementsCopy = elements;
  elements = self->_elements;
  v8 = elementsCopy;
  if (!elements)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_elements;
    self->_elements = v6;

    elementsCopy = v8;
    elements = self->_elements;
  }

  [(NSMutableArray *)elements addObject:elementsCopy];
}

- (int)adFormatType
{
  if (*&self->_has)
  {
    return self->_adFormatType;
  }

  else
  {
    return 22200;
  }
}

- (id)adFormatTypeAsString:(int)string
{
  if ((string - 22200) >= 3)
  {
    v4 = [NSString stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = *(&off_10047CD00 + (string - 22200));
  }

  return v4;
}

- (int)StringAsAdFormatType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Large"])
  {
    v4 = 22200;
  }

  else if ([typeCopy isEqualToString:@"Medium"])
  {
    v4 = 22201;
  }

  else if ([typeCopy isEqualToString:@"Small"])
  {
    v4 = 22202;
  }

  else
  {
    v4 = 22200;
  }

  return v4;
}

- (void)addLocalizedHeadlines:(id)headlines
{
  headlinesCopy = headlines;
  localizedHeadlines = self->_localizedHeadlines;
  v8 = headlinesCopy;
  if (!localizedHeadlines)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_localizedHeadlines;
    self->_localizedHeadlines = v6;

    headlinesCopy = v8;
    localizedHeadlines = self->_localizedHeadlines;
  }

  [(NSMutableArray *)localizedHeadlines addObject:headlinesCopy];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = APPBAdLayoutDetails;
  v3 = [(APPBAdLayoutDetails *)&v7 description];
  dictionaryRepresentation = [(APPBAdLayoutDetails *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if ((*&self->_has & 2) != 0)
  {
    v4 = self->_type - 40000;
    if (v4 >= 9)
    {
      v5 = [NSString stringWithFormat:@"(unknown: %i)", self->_type];
    }

    else
    {
      v5 = *(&off_10047CCB8 + v4);
    }

    [v3 setObject:v5 forKey:@"type"];
  }

  headline = self->_headline;
  if (headline)
  {
    [v3 setObject:headline forKey:@"headline"];
  }

  accessHeadline = self->_accessHeadline;
  if (accessHeadline)
  {
    [v3 setObject:accessHeadline forKey:@"accessHeadline"];
  }

  adCopy = self->_adCopy;
  if (adCopy)
  {
    [v3 setObject:adCopy forKey:@"adCopy"];
  }

  accessAdCopy = self->_accessAdCopy;
  if (accessAdCopy)
  {
    [v3 setObject:accessAdCopy forKey:@"accessAdCopy"];
  }

  sponsoredBy = self->_sponsoredBy;
  if (sponsoredBy)
  {
    [v3 setObject:sponsoredBy forKey:@"sponsoredBy"];
  }

  if ([(NSMutableArray *)self->_elements count])
  {
    v11 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_elements, "count")}];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v12 = self->_elements;
    v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v40;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v40 != v15)
          {
            objc_enumerationMutation(v12);
          }

          dictionaryRepresentation = [*(*(&v39 + 1) + 8 * i) dictionaryRepresentation];
          [v11 addObject:dictionaryRepresentation];
        }

        v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v14);
    }

    [v3 setObject:v11 forKey:@"elements"];
  }

  style = self->_style;
  if (style)
  {
    dictionaryRepresentation2 = [(APPBStyle *)style dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation2 forKey:@"style"];
  }

  if (*&self->_has)
  {
    v20 = self->_adFormatType - 22200;
    if (v20 >= 3)
    {
      v21 = [NSString stringWithFormat:@"(unknown: %i)", self->_adFormatType];
    }

    else
    {
      v21 = *(&off_10047CD00 + v20);
    }

    [v3 setObject:v21 forKey:@"adFormatType"];
  }

  sponsoredByAssetURL = self->_sponsoredByAssetURL;
  if (sponsoredByAssetURL)
  {
    [v3 setObject:sponsoredByAssetURL forKey:@"sponsoredByAssetURL"];
  }

  ctaButton = self->_ctaButton;
  if (ctaButton)
  {
    dictionaryRepresentation3 = [(APPBButton *)ctaButton dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation3 forKey:@"ctaButton"];
  }

  actionURL = self->_actionURL;
  if (actionURL)
  {
    [v3 setObject:actionURL forKey:@"actionURL"];
  }

  sponsoredByAssetURLForDarkMode = self->_sponsoredByAssetURLForDarkMode;
  if (sponsoredByAssetURLForDarkMode)
  {
    [v3 setObject:sponsoredByAssetURLForDarkMode forKey:@"sponsoredByAssetURLForDarkMode"];
  }

  if ([(NSMutableArray *)self->_localizedHeadlines count])
  {
    v27 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_localizedHeadlines, "count")}];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v28 = self->_localizedHeadlines;
    v29 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v35 objects:v43 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v36;
      do
      {
        for (j = 0; j != v30; j = j + 1)
        {
          if (*v36 != v31)
          {
            objc_enumerationMutation(v28);
          }

          dictionaryRepresentation4 = [*(*(&v35 + 1) + 8 * j) dictionaryRepresentation];
          [v27 addObject:dictionaryRepresentation4];
        }

        v30 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v35 objects:v43 count:16];
      }

      while (v30);
    }

    [v3 setObject:v27 forKey:@"localizedHeadlines"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_headline)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_accessHeadline)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_adCopy)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_accessAdCopy)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_sponsoredBy)
  {
    PBDataWriterWriteStringField();
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = self->_elements;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v7);
  }

  if (self->_style)
  {
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_sponsoredByAssetURL)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_ctaButton)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_actionURL)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_sponsoredByAssetURLForDarkMode)
  {
    PBDataWriterWriteStringField();
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = self->_localizedHeadlines;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        PBDataWriterWriteSubmessage();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 2) != 0)
  {
    toCopy[28] = self->_type;
    *(toCopy + 116) |= 2u;
  }

  v13 = toCopy;
  if (self->_headline)
  {
    [toCopy setHeadline:?];
  }

  if (self->_accessHeadline)
  {
    [v13 setAccessHeadline:?];
  }

  if (self->_adCopy)
  {
    [v13 setAdCopy:?];
  }

  if (self->_accessAdCopy)
  {
    [v13 setAccessAdCopy:?];
  }

  if (self->_sponsoredBy)
  {
    [v13 setSponsoredBy:?];
  }

  if ([(APPBAdLayoutDetails *)self elementsCount])
  {
    [v13 clearElements];
    elementsCount = [(APPBAdLayoutDetails *)self elementsCount];
    if (elementsCount)
    {
      v6 = elementsCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(APPBAdLayoutDetails *)self elementsAtIndex:i];
        [v13 addElements:v8];
      }
    }
  }

  if (self->_style)
  {
    [v13 setStyle:?];
  }

  if (*&self->_has)
  {
    *(v13 + 10) = self->_adFormatType;
    *(v13 + 116) |= 1u;
  }

  if (self->_sponsoredByAssetURL)
  {
    [v13 setSponsoredByAssetURL:?];
  }

  if (self->_ctaButton)
  {
    [v13 setCtaButton:?];
  }

  if (self->_actionURL)
  {
    [v13 setActionURL:?];
  }

  if (self->_sponsoredByAssetURLForDarkMode)
  {
    [v13 setSponsoredByAssetURLForDarkMode:?];
  }

  if ([(APPBAdLayoutDetails *)self localizedHeadlinesCount])
  {
    [v13 clearLocalizedHeadlines];
    localizedHeadlinesCount = [(APPBAdLayoutDetails *)self localizedHeadlinesCount];
    if (localizedHeadlinesCount)
    {
      v10 = localizedHeadlinesCount;
      for (j = 0; j != v10; ++j)
      {
        v12 = [(APPBAdLayoutDetails *)self localizedHeadlinesAtIndex:j];
        [v13 addLocalizedHeadlines:v12];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    v5[28] = self->_type;
    *(v5 + 116) |= 2u;
  }

  v7 = [(NSString *)self->_headline copyWithZone:zone];
  v8 = v6[8];
  v6[8] = v7;

  v9 = [(NSString *)self->_accessHeadline copyWithZone:zone];
  v10 = v6[2];
  v6[2] = v9;

  v11 = [(NSString *)self->_adCopy copyWithZone:zone];
  v12 = v6[4];
  v6[4] = v11;

  v13 = [(NSString *)self->_accessAdCopy copyWithZone:zone];
  v14 = v6[1];
  v6[1] = v13;

  v15 = [(NSString *)self->_sponsoredBy copyWithZone:zone];
  v16 = v6[10];
  v6[10] = v15;

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v17 = self->_elements;
  v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v45;
    do
    {
      v21 = 0;
      do
      {
        if (*v45 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = [*(*(&v44 + 1) + 8 * v21) copyWithZone:zone];
        [v6 addElements:v22];

        v21 = v21 + 1;
      }

      while (v19 != v21);
      v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v44 objects:v49 count:16];
    }

    while (v19);
  }

  v23 = [(APPBStyle *)self->_style copyWithZone:zone];
  v24 = v6[13];
  v6[13] = v23;

  if (*&self->_has)
  {
    *(v6 + 10) = self->_adFormatType;
    *(v6 + 116) |= 1u;
  }

  v25 = [(NSString *)self->_sponsoredByAssetURL copyWithZone:zone];
  v26 = v6[11];
  v6[11] = v25;

  v27 = [(APPBButton *)self->_ctaButton copyWithZone:zone];
  v28 = v6[6];
  v6[6] = v27;

  v29 = [(NSString *)self->_actionURL copyWithZone:zone];
  v30 = v6[3];
  v6[3] = v29;

  v31 = [(NSString *)self->_sponsoredByAssetURLForDarkMode copyWithZone:zone];
  v32 = v6[12];
  v6[12] = v31;

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v33 = self->_localizedHeadlines;
  v34 = [(NSMutableArray *)v33 countByEnumeratingWithState:&v40 objects:v48 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v41;
    do
    {
      v37 = 0;
      do
      {
        if (*v41 != v36)
        {
          objc_enumerationMutation(v33);
        }

        v38 = [*(*(&v40 + 1) + 8 * v37) copyWithZone:{zone, v40}];
        [v6 addLocalizedHeadlines:v38];

        v37 = v37 + 1;
      }

      while (v35 != v37);
      v35 = [(NSMutableArray *)v33 countByEnumeratingWithState:&v40 objects:v48 count:16];
    }

    while (v35);
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_36;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 116) & 2) == 0 || self->_type != *(equalCopy + 28))
    {
      goto LABEL_36;
    }
  }

  else if ((*(equalCopy + 116) & 2) != 0)
  {
LABEL_36:
    v17 = 0;
    goto LABEL_37;
  }

  headline = self->_headline;
  if (headline | *(equalCopy + 8) && ![(NSString *)headline isEqual:?])
  {
    goto LABEL_36;
  }

  accessHeadline = self->_accessHeadline;
  if (accessHeadline | *(equalCopy + 2))
  {
    if (![(NSString *)accessHeadline isEqual:?])
    {
      goto LABEL_36;
    }
  }

  adCopy = self->_adCopy;
  if (adCopy | *(equalCopy + 4))
  {
    if (![(NSString *)adCopy isEqual:?])
    {
      goto LABEL_36;
    }
  }

  accessAdCopy = self->_accessAdCopy;
  if (accessAdCopy | *(equalCopy + 1))
  {
    if (![(NSString *)accessAdCopy isEqual:?])
    {
      goto LABEL_36;
    }
  }

  sponsoredBy = self->_sponsoredBy;
  if (sponsoredBy | *(equalCopy + 10))
  {
    if (![(NSString *)sponsoredBy isEqual:?])
    {
      goto LABEL_36;
    }
  }

  elements = self->_elements;
  if (elements | *(equalCopy + 7))
  {
    if (![(NSMutableArray *)elements isEqual:?])
    {
      goto LABEL_36;
    }
  }

  style = self->_style;
  if (style | *(equalCopy + 13))
  {
    if (![(APPBStyle *)style isEqual:?])
    {
      goto LABEL_36;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 116) & 1) == 0 || self->_adFormatType != *(equalCopy + 10))
    {
      goto LABEL_36;
    }
  }

  else if (*(equalCopy + 116))
  {
    goto LABEL_36;
  }

  sponsoredByAssetURL = self->_sponsoredByAssetURL;
  if (sponsoredByAssetURL | *(equalCopy + 11) && ![(NSString *)sponsoredByAssetURL isEqual:?])
  {
    goto LABEL_36;
  }

  ctaButton = self->_ctaButton;
  if (ctaButton | *(equalCopy + 6))
  {
    if (![(APPBButton *)ctaButton isEqual:?])
    {
      goto LABEL_36;
    }
  }

  actionURL = self->_actionURL;
  if (actionURL | *(equalCopy + 3))
  {
    if (![(NSString *)actionURL isEqual:?])
    {
      goto LABEL_36;
    }
  }

  sponsoredByAssetURLForDarkMode = self->_sponsoredByAssetURLForDarkMode;
  if (sponsoredByAssetURLForDarkMode | *(equalCopy + 12))
  {
    if (![(NSString *)sponsoredByAssetURLForDarkMode isEqual:?])
    {
      goto LABEL_36;
    }
  }

  localizedHeadlines = self->_localizedHeadlines;
  if (localizedHeadlines | *(equalCopy + 9))
  {
    v17 = [(NSMutableArray *)localizedHeadlines isEqual:?];
  }

  else
  {
    v17 = 1;
  }

LABEL_37:

  return v17;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761 * self->_type;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_headline hash];
  v5 = [(NSString *)self->_accessHeadline hash];
  v6 = [(NSString *)self->_adCopy hash];
  v7 = [(NSString *)self->_accessAdCopy hash];
  v8 = [(NSString *)self->_sponsoredBy hash];
  v9 = [(NSMutableArray *)self->_elements hash];
  v10 = [(APPBStyle *)self->_style hash];
  if (*&self->_has)
  {
    v11 = 2654435761 * self->_adFormatType;
  }

  else
  {
    v11 = 0;
  }

  v12 = v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
  v13 = v10 ^ v11 ^ [(NSString *)self->_sponsoredByAssetURL hash];
  v14 = v12 ^ v13 ^ [(APPBButton *)self->_ctaButton hash];
  v15 = [(NSString *)self->_actionURL hash];
  v16 = v15 ^ [(NSString *)self->_sponsoredByAssetURLForDarkMode hash];
  return v14 ^ v16 ^ [(NSMutableArray *)self->_localizedHeadlines hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if ((fromCopy[29] & 2) != 0)
  {
    self->_type = fromCopy[28];
    *&self->_has |= 2u;
  }

  if (*(fromCopy + 8))
  {
    [(APPBAdLayoutDetails *)self setHeadline:?];
  }

  if (*(v5 + 2))
  {
    [(APPBAdLayoutDetails *)self setAccessHeadline:?];
  }

  if (*(v5 + 4))
  {
    [(APPBAdLayoutDetails *)self setAdCopy:?];
  }

  if (*(v5 + 1))
  {
    [(APPBAdLayoutDetails *)self setAccessAdCopy:?];
  }

  if (*(v5 + 10))
  {
    [(APPBAdLayoutDetails *)self setSponsoredBy:?];
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = *(v5 + 7);
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(APPBAdLayoutDetails *)self addElements:*(*(&v24 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v8);
  }

  style = self->_style;
  v12 = *(v5 + 13);
  if (style)
  {
    if (v12)
    {
      [(APPBStyle *)style mergeFrom:?];
    }
  }

  else if (v12)
  {
    [(APPBAdLayoutDetails *)self setStyle:?];
  }

  if (*(v5 + 116))
  {
    self->_adFormatType = *(v5 + 10);
    *&self->_has |= 1u;
  }

  if (*(v5 + 11))
  {
    [(APPBAdLayoutDetails *)self setSponsoredByAssetURL:?];
  }

  ctaButton = self->_ctaButton;
  v14 = *(v5 + 6);
  if (ctaButton)
  {
    if (v14)
    {
      [(APPBButton *)ctaButton mergeFrom:?];
    }
  }

  else if (v14)
  {
    [(APPBAdLayoutDetails *)self setCtaButton:?];
  }

  if (*(v5 + 3))
  {
    [(APPBAdLayoutDetails *)self setActionURL:?];
  }

  if (*(v5 + 12))
  {
    [(APPBAdLayoutDetails *)self setSponsoredByAssetURLForDarkMode:?];
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v15 = *(v5 + 9);
  v16 = [v15 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v21;
    do
    {
      for (j = 0; j != v17; j = j + 1)
      {
        if (*v21 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [(APPBAdLayoutDetails *)self addLocalizedHeadlines:*(*(&v20 + 1) + 8 * j), v20];
      }

      v17 = [v15 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v17);
  }
}

@end