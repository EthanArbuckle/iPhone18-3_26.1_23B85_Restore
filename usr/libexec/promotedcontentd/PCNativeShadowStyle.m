@interface PCNativeShadowStyle
- (id)initWithShadowStyle:(id)a3;
@end

@implementation PCNativeShadowStyle

- (id)initWithShadowStyle:(id)a3
{
  v4 = a3;
  v5 = [(PCNativeShadowStyle *)self init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [PCNativeColor alloc];
    v8 = [v4 color];
    v9 = [v7 initWithColor:v8];
    [(PCNativeShadowStyle *)v6 setColor:v9];

    [v4 opacity];
    [(PCNativeShadowStyle *)v6 setOpacity:v10];
    [v4 radius];
    [(PCNativeShadowStyle *)v6 setRadius:v11];
    v12 = +[NSMutableArray array];
    if ([v4 offsetsCount])
    {
      v13 = 0;
      do
      {
        v14 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", *([v4 offsets] + v13));
        [v12 addObject:v14];

        ++v13;
      }

      while (v13 < [v4 offsetsCount]);
    }

    v15 = [v12 copy];
    [(PCNativeShadowStyle *)v6 setOffsets:v15];
  }

  return v6;
}

@end