@interface APPBConfigurationRequest
+ (id)options;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)addCurrentConfiguration:(id)configuration;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation APPBConfigurationRequest

+ (id)options
{
  if (qword_1004E69C8 != -1)
  {
    sub_100393E70();
  }

  v3 = qword_1004E69C0;

  return v3;
}

- (void)addCurrentConfiguration:(id)configuration
{
  configurationCopy = configuration;
  currentConfigurations = self->_currentConfigurations;
  v8 = configurationCopy;
  if (!currentConfigurations)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_currentConfigurations;
    self->_currentConfigurations = v6;

    configurationCopy = v8;
    currentConfigurations = self->_currentConfigurations;
  }

  [(NSMutableArray *)currentConfigurations addObject:configurationCopy];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = APPBConfigurationRequest;
  v3 = [(APPBConfigurationRequest *)&v7 description];
  dictionaryRepresentation = [(APPBConfigurationRequest *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if ([(NSMutableArray *)self->_currentConfigurations count])
  {
    v4 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_currentConfigurations, "count")}];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = self->_currentConfigurations;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v13 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:dictionaryRepresentation];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKey:@"currentConfiguration"];
  }

  iAdID = self->_iAdID;
  if (iAdID)
  {
    [v3 setObject:iAdID forKey:@"iAdID"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_currentConfigurations;
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

  if (self->_iAdID)
  {
    PBDataWriterWriteDataField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(APPBConfigurationRequest *)self currentConfigurationsCount])
  {
    [toCopy clearCurrentConfigurations];
    currentConfigurationsCount = [(APPBConfigurationRequest *)self currentConfigurationsCount];
    if (currentConfigurationsCount)
    {
      v5 = currentConfigurationsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(APPBConfigurationRequest *)self currentConfigurationAtIndex:i];
        [toCopy addCurrentConfiguration:v7];
      }
    }
  }

  if (self->_iAdID)
  {
    [toCopy setIAdID:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = self->_currentConfigurations;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v15 + 1) + 8 * v10) copyWithZone:{zone, v15}];
        [v5 addCurrentConfiguration:v11];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [(NSData *)self->_iAdID copyWithZone:zone];
  v13 = v5[2];
  v5[2] = v12;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((currentConfigurations = self->_currentConfigurations, !(currentConfigurations | equalCopy[1])) || -[NSMutableArray isEqual:](currentConfigurations, "isEqual:")))
  {
    iAdID = self->_iAdID;
    if (iAdID | equalCopy[2])
    {
      v7 = [(NSData *)iAdID isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = fromCopy[1];
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

        [(APPBConfigurationRequest *)self addCurrentConfiguration:*(*(&v10 + 1) + 8 * i), v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  if (fromCopy[2])
  {
    [(APPBConfigurationRequest *)self setIAdID:?];
  }
}

@end