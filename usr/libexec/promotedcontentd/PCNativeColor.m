@interface PCNativeColor
- (id)initWithColor:(id)a3;
@end

@implementation PCNativeColor

- (id)initWithColor:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(PCNativeColor *)self init];
    if (v5)
    {
      v6 = [v4 colors];
      v7 = [APPBColor stringsToColorArray:v6];
      [(PCNativeColor *)v5 setLightModeColors:v7];

      v8 = [v4 darkModeColors];
      v9 = [APPBColor stringsToColorArray:v8];
      [(PCNativeColor *)v5 setDarkModeColors:v9];

      -[PCNativeColor setGradientOrientation:](v5, "setGradientOrientation:", +[APLegacyTypeTranslator directionToGradientOrientation:](APLegacyTypeTranslator, "directionToGradientOrientation:", [v4 direction]));
    }

    self = v5;
    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end