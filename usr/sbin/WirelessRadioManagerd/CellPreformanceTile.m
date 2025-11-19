@interface CellPreformanceTile
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)dealloc;
- (void)writeTo:(id)a3;
@end

@implementation CellPreformanceTile

- (id)description
{
  v3.receiver = self;
  v3.super_class = CellPreformanceTile;
  return [NSString stringWithFormat:@"%@ %@", [(CellPreformanceTile *)&v3 description], [(CellPreformanceTile *)self dictionaryRepresentation]];
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if ([(NSMutableArray *)self->_lteCells count])
  {
    v4 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_lteCells, "count")}];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    lteCells = self->_lteCells;
    v6 = [(NSMutableArray *)lteCells countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v22;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v22 != v8)
          {
            objc_enumerationMutation(lteCells);
          }

          [v4 addObject:{objc_msgSend(*(*(&v21 + 1) + 8 * i), "dictionaryRepresentation")}];
        }

        v7 = [(NSMutableArray *)lteCells countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKey:@"lteCells"];
  }

  if ([(NSMutableArray *)self->_nrCells count])
  {
    v10 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_nrCells, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    nrCells = self->_nrCells;
    v12 = [(NSMutableArray *)nrCells countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v18;
      do
      {
        for (j = 0; j != v13; j = j + 1)
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(nrCells);
          }

          [v10 addObject:{objc_msgSend(*(*(&v17 + 1) + 8 * j), "dictionaryRepresentation")}];
        }

        v13 = [(NSMutableArray *)nrCells countByEnumeratingWithState:&v17 objects:v25 count:16];
      }

      while (v13);
    }

    [v3 setObject:v10 forKey:@"nrCells"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  lteCells = self->_lteCells;
  v5 = [(NSMutableArray *)lteCells countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(lteCells);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v6 = [(NSMutableArray *)lteCells countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v6);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  nrCells = self->_nrCells;
  v11 = [(NSMutableArray *)nrCells countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      for (j = 0; j != v12; j = j + 1)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(nrCells);
        }

        v15 = *(*(&v16 + 1) + 8 * j);
        PBDataWriterWriteSubmessage();
      }

      v12 = [(NSMutableArray *)nrCells countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v12);
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  lteCells = self->_lteCells;
  v7 = [(NSMutableArray *)lteCells countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(lteCells);
        }

        v11 = [*(*(&v23 + 1) + 8 * i) copyWithZone:a3];
        sub_10015D594(v5, v11);
      }

      v8 = [(NSMutableArray *)lteCells countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v8);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  nrCells = self->_nrCells;
  v13 = [(NSMutableArray *)nrCells countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      for (j = 0; j != v14; j = j + 1)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(nrCells);
        }

        v17 = [*(*(&v19 + 1) + 8 * j) copyWithZone:a3];
        sub_10015D63C(v5, v17);
      }

      v14 = [(NSMutableArray *)nrCells countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v14);
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    lteCells = self->_lteCells;
    if (!(lteCells | *(a3 + 1)) || (v5 = [(NSMutableArray *)lteCells isEqual:?]) != 0)
    {
      nrCells = self->_nrCells;
      if (nrCells | *(a3 + 2))
      {

        LOBYTE(v5) = [(NSMutableArray *)nrCells isEqual:?];
      }

      else
      {
        LOBYTE(v5) = 1;
      }
    }
  }

  return v5;
}

- (void)dealloc
{
  if (self)
  {
    objc_setProperty_nonatomic(self, a2, 0, 8);
    objc_setProperty_nonatomic(self, v3, 0, 16);
  }

  v4.receiver = self;
  v4.super_class = CellPreformanceTile;
  [(CellPreformanceTile *)&v4 dealloc];
}

@end