@interface DYNAMICRATSELECTIONDynamicRatSelectionTile
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)dealloc;
- (void)writeTo:(id)to;
@end

@implementation DYNAMICRATSELECTIONDynamicRatSelectionTile

- (id)description
{
  v3.receiver = self;
  v3.super_class = DYNAMICRATSELECTIONDynamicRatSelectionTile;
  return [NSString stringWithFormat:@"%@ %@", [(DYNAMICRATSELECTIONDynamicRatSelectionTile *)&v3 description], [(DYNAMICRATSELECTIONDynamicRatSelectionTile *)self dictionaryRepresentation]];
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if ([(NSMutableArray *)self->_dratsTiles count])
  {
    v4 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_dratsTiles, "count")}];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    dratsTiles = self->_dratsTiles;
    v6 = [(NSMutableArray *)dratsTiles countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(dratsTiles);
          }

          [v4 addObject:{objc_msgSend(*(*(&v11 + 1) + 8 * v9), "dictionaryRepresentation")}];
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [(NSMutableArray *)dratsTiles countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKey:@"drats_tiles"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  dratsTiles = self->_dratsTiles;
  v4 = [(NSMutableArray *)dratsTiles countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(dratsTiles);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v5 = [(NSMutableArray *)dratsTiles countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  dratsTiles = self->_dratsTiles;
  v7 = [(NSMutableArray *)dratsTiles countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(dratsTiles);
        }

        v11 = [*(*(&v13 + 1) + 8 * v10) copyWithZone:zone];
        sub_10015D220(v5, v11);

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)dratsTiles countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    dratsTiles = self->_dratsTiles;
    if (dratsTiles | *(equal + 1))
    {

      LOBYTE(v5) = [(NSMutableArray *)dratsTiles isEqual:?];
    }

    else
    {
      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (void)dealloc
{
  if (self)
  {
    objc_setProperty_nonatomic(self, a2, 0, 8);
  }

  v3.receiver = self;
  v3.super_class = DYNAMICRATSELECTIONDynamicRatSelectionTile;
  [(DYNAMICRATSELECTIONDynamicRatSelectionTile *)&v3 dealloc];
}

@end