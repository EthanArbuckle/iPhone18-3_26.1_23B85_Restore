@interface PCNativeShadowStyle
- (id)initWithShadowStyle:(id)style;
@end

@implementation PCNativeShadowStyle

- (id)initWithShadowStyle:(id)style
{
  styleCopy = style;
  v5 = [(PCNativeShadowStyle *)self init];
  v6 = v5;
  if (styleCopy && v5)
  {
    v7 = [PCNativeColor alloc];
    color = [styleCopy color];
    v9 = [v7 initWithColor:color];
    [(PCNativeShadowStyle *)v6 setColor:v9];

    [styleCopy opacity];
    [(PCNativeShadowStyle *)v6 setOpacity:v10];
    [styleCopy radius];
    [(PCNativeShadowStyle *)v6 setRadius:v11];
    v12 = +[NSMutableArray array];
    if ([styleCopy offsetsCount])
    {
      v13 = 0;
      do
      {
        v14 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", *([styleCopy offsets] + v13));
        [v12 addObject:v14];

        ++v13;
      }

      while (v13 < [styleCopy offsetsCount]);
    }

    v15 = [v12 copy];
    [(PCNativeShadowStyle *)v6 setOffsets:v15];
  }

  return v6;
}

@end