@interface APPBConfigurationResponse
- (BOOL)isEqual:(id)a3;
- (id)bannerProxyTypeAsString:(int)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsBannerProxyType:(id)a3;
- (int)bannerProxyType;
- (unint64_t)hash;
- (void)addTheConfiguration:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation APPBConfigurationResponse

- (void)addTheConfiguration:(id)a3
{
  v4 = a3;
  theConfigurations = self->_theConfigurations;
  v8 = v4;
  if (!theConfigurations)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_theConfigurations;
    self->_theConfigurations = v6;

    v4 = v8;
    theConfigurations = self->_theConfigurations;
  }

  [(NSMutableArray *)theConfigurations addObject:v4];
}

- (int)bannerProxyType
{
  if (*&self->_has)
  {
    return self->_bannerProxyType;
  }

  else
  {
    return 0;
  }
}

- (id)bannerProxyTypeAsString:(int)a3
{
  if (a3)
  {
    if (a3 == 1)
    {
      v4 = @"Connect";
    }

    else
    {
      v4 = [NSString stringWithFormat:@"(unknown: %i)", *&a3];
    }
  }

  else
  {
    v4 = @"Legacy";
  }

  return v4;
}

- (int)StringAsBannerProxyType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Legacy"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"Connect"];
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = APPBConfigurationResponse;
  v3 = [(APPBConfigurationResponse *)&v7 description];
  v4 = [(APPBConfigurationResponse *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if ([(NSMutableArray *)self->_theConfigurations count])
  {
    v4 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_theConfigurations, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = self->_theConfigurations;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v17 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:v10];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKey:@"theConfiguration"];
  }

  resourceProxyURL = self->_resourceProxyURL;
  if (resourceProxyURL)
  {
    [v3 setObject:resourceProxyURL forKey:@"resourceProxyURL"];
  }

  resourceConnectProxyURL = self->_resourceConnectProxyURL;
  if (resourceConnectProxyURL)
  {
    [v3 setObject:resourceConnectProxyURL forKey:@"resourceConnectProxyURL"];
  }

  if (*&self->_has)
  {
    bannerProxyType = self->_bannerProxyType;
    if (bannerProxyType)
    {
      if (bannerProxyType == 1)
      {
        v14 = @"Connect";
      }

      else
      {
        v14 = [NSString stringWithFormat:@"(unknown: %i)", self->_bannerProxyType];
      }
    }

    else
    {
      v14 = @"Legacy";
    }

    [v3 setObject:v14 forKey:@"bannerProxyType"];
  }

  configVersion = self->_configVersion;
  if (configVersion)
  {
    [v3 setObject:configVersion forKey:@"configVersion"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_theConfigurations;
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

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  if (self->_resourceProxyURL)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_resourceConnectProxyURL)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_configVersion)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)a3
{
  v9 = a3;
  if ([(APPBConfigurationResponse *)self theConfigurationsCount])
  {
    [v9 clearTheConfigurations];
    v4 = [(APPBConfigurationResponse *)self theConfigurationsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(APPBConfigurationResponse *)self theConfigurationAtIndex:i];
        [v9 addTheConfiguration:v7];
      }
    }
  }

  if (self->_resourceProxyURL)
  {
    [v9 setResourceProxyURL:?];
  }

  v8 = v9;
  if (self->_resourceConnectProxyURL)
  {
    [v9 setResourceConnectProxyURL:?];
    v8 = v9;
  }

  if (*&self->_has)
  {
    v8[2] = self->_bannerProxyType;
    *(v8 + 48) |= 1u;
  }

  if (self->_configVersion)
  {
    [v9 setConfigVersion:?];
    v8 = v9;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = self->_theConfigurations;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      v10 = 0;
      do
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v19 + 1) + 8 * v10) copyWithZone:{a3, v19}];
        [v5 addTheConfiguration:v11];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  v12 = [(NSString *)self->_resourceProxyURL copyWithZone:a3];
  v13 = *(v5 + 5);
  *(v5 + 5) = v12;

  v14 = [(NSString *)self->_resourceConnectProxyURL copyWithZone:a3];
  v15 = *(v5 + 4);
  *(v5 + 4) = v14;

  if (*&self->_has)
  {
    *(v5 + 2) = self->_bannerProxyType;
    *(v5 + 48) |= 1u;
  }

  v16 = [(NSString *)self->_configVersion copyWithZone:a3, v19];
  v17 = *(v5 + 2);
  *(v5 + 2) = v16;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  theConfigurations = self->_theConfigurations;
  if (theConfigurations | *(v4 + 3))
  {
    if (![(NSMutableArray *)theConfigurations isEqual:?])
    {
      goto LABEL_15;
    }
  }

  resourceProxyURL = self->_resourceProxyURL;
  if (resourceProxyURL | *(v4 + 5))
  {
    if (![(NSString *)resourceProxyURL isEqual:?])
    {
      goto LABEL_15;
    }
  }

  resourceConnectProxyURL = self->_resourceConnectProxyURL;
  if (resourceConnectProxyURL | *(v4 + 4))
  {
    if (![(NSString *)resourceConnectProxyURL isEqual:?])
    {
      goto LABEL_15;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 48) & 1) == 0 || self->_bannerProxyType != *(v4 + 2))
    {
      goto LABEL_15;
    }
  }

  else if (*(v4 + 48))
  {
LABEL_15:
    v9 = 0;
    goto LABEL_16;
  }

  configVersion = self->_configVersion;
  if (configVersion | *(v4 + 2))
  {
    v9 = [(NSString *)configVersion isEqual:?];
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
  v3 = [(NSMutableArray *)self->_theConfigurations hash];
  v4 = [(NSString *)self->_resourceProxyURL hash];
  v5 = [(NSString *)self->_resourceConnectProxyURL hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_bannerProxyType;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ [(NSString *)self->_configVersion hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = *(v4 + 3);
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(APPBConfigurationResponse *)self addTheConfiguration:*(*(&v10 + 1) + 8 * i), v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  if (*(v4 + 5))
  {
    [(APPBConfigurationResponse *)self setResourceProxyURL:?];
  }

  if (*(v4 + 4))
  {
    [(APPBConfigurationResponse *)self setResourceConnectProxyURL:?];
  }

  if (*(v4 + 48))
  {
    self->_bannerProxyType = *(v4 + 2);
    *&self->_has |= 1u;
  }

  if (*(v4 + 2))
  {
    [(APPBConfigurationResponse *)self setConfigVersion:?];
  }
}

@end