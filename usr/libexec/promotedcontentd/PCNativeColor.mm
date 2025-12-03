@interface PCNativeColor
- (id)initWithColor:(id)color;
@end

@implementation PCNativeColor

- (id)initWithColor:(id)color
{
  colorCopy = color;
  if (colorCopy)
  {
    v5 = [(PCNativeColor *)self init];
    if (v5)
    {
      colors = [colorCopy colors];
      v7 = [APPBColor stringsToColorArray:colors];
      [(PCNativeColor *)v5 setLightModeColors:v7];

      darkModeColors = [colorCopy darkModeColors];
      v9 = [APPBColor stringsToColorArray:darkModeColors];
      [(PCNativeColor *)v5 setDarkModeColors:v9];

      -[PCNativeColor setGradientOrientation:](v5, "setGradientOrientation:", +[APLegacyTypeTranslator directionToGradientOrientation:](APLegacyTypeTranslator, "directionToGradientOrientation:", [colorCopy direction]));
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end