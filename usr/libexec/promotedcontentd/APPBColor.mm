@interface APPBColor
+ (id)stringsToColorArray:(id)array;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)addColors:(id)colors;
- (void)addDarkModeColors:(id)colors;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation APPBColor

- (void)addColors:(id)colors
{
  colorsCopy = colors;
  colors = self->_colors;
  v8 = colorsCopy;
  if (!colors)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_colors;
    self->_colors = v6;

    colorsCopy = v8;
    colors = self->_colors;
  }

  [(NSMutableArray *)colors addObject:colorsCopy];
}

- (void)addDarkModeColors:(id)colors
{
  colorsCopy = colors;
  darkModeColors = self->_darkModeColors;
  v8 = colorsCopy;
  if (!darkModeColors)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_darkModeColors;
    self->_darkModeColors = v6;

    colorsCopy = v8;
    darkModeColors = self->_darkModeColors;
  }

  [(NSMutableArray *)darkModeColors addObject:colorsCopy];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = APPBColor;
  v3 = [(APPBColor *)&v7 description];
  dictionaryRepresentation = [(APPBColor *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  colors = self->_colors;
  if (colors)
  {
    [v3 setObject:colors forKey:@"colors"];
  }

  darkModeColors = self->_darkModeColors;
  if (darkModeColors)
  {
    [v4 setObject:darkModeColors forKey:@"darkModeColors"];
  }

  v7 = [NSNumber numberWithInt:self->_direction];
  [v4 setObject:v7 forKey:@"direction"];

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = self->_colors;
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

        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v7);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = self->_darkModeColors;
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

        PBDataWriterWriteStringField();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }

  PBDataWriterWriteInt32Field();
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(APPBColor *)self colorsCount])
  {
    [toCopy clearColors];
    colorsCount = [(APPBColor *)self colorsCount];
    if (colorsCount)
    {
      v5 = colorsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(APPBColor *)self colorsAtIndex:i];
        [toCopy addColors:v7];
      }
    }
  }

  if ([(APPBColor *)self darkModeColorsCount])
  {
    [toCopy clearDarkModeColors];
    darkModeColorsCount = [(APPBColor *)self darkModeColorsCount];
    if (darkModeColorsCount)
    {
      v9 = darkModeColorsCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(APPBColor *)self darkModeColorsAtIndex:j];
        [toCopy addDarkModeColors:v11];
      }
    }
  }

  toCopy[6] = self->_direction;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = self->_colors;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      v10 = 0;
      do
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v23 + 1) + 8 * v10) copyWithZone:zone];
        [v5 addColors:v11];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v8);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = self->_darkModeColors;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      v16 = 0;
      do
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v19 + 1) + 8 * v16) copyWithZone:{zone, v19}];
        [v5 addDarkModeColors:v17];

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v14);
  }

  v5[6] = self->_direction;
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7 = [equalCopy isMemberOfClass:objc_opt_class()] && ((colors = self->_colors, !(colors | *(equalCopy + 1))) || -[NSMutableArray isEqual:](colors, "isEqual:")) && ((darkModeColors = self->_darkModeColors, !(darkModeColors | *(equalCopy + 2))) || -[NSMutableArray isEqual:](darkModeColors, "isEqual:")) && self->_direction == *(equalCopy + 6);

  return v7;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = *(fromCopy + 1);
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
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

        [(APPBColor *)self addColors:*(*(&v19 + 1) + 8 * v9)];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v7);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = *(fromCopy + 2);
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
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

        [(APPBColor *)self addDarkModeColors:*(*(&v15 + 1) + 8 * v14), v15];
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }

  self->_direction = *(fromCopy + 6);
}

+ (id)stringsToColorArray:(id)array
{
  arrayCopy = array;
  v4 = +[NSMutableArray array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = arrayCopy;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [PCNativePrimitiveColor alloc];
        v12 = [v11 initWithString:{v10, v16}];
        if (v12)
        {
          [v4 addObject:v12];
        }

        else
        {
          v13 = +[NSNull null];
          [v4 addObject:v13];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v14 = [v4 copy];

  return v14;
}

@end