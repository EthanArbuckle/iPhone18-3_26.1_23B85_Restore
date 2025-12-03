@interface PCNativeBorderStyle
- (id)initWithBorderStyle:(id)style;
@end

@implementation PCNativeBorderStyle

- (id)initWithBorderStyle:(id)style
{
  styleCopy = style;
  v5 = [(PCNativeBorderStyle *)self init];
  v6 = v5;
  if (styleCopy && v5)
  {
    v7 = [PCNativeColor alloc];
    color = [styleCopy color];
    v9 = [v7 initWithColor:color];
    [(PCNativeBorderStyle *)v6 setColor:v9];

    [styleCopy width];
    [(PCNativeBorderStyle *)v6 setWidth:v10];
    [styleCopy cornerRadius];
    [(PCNativeBorderStyle *)v6 setCornerRadius:v11];
  }

  return v6;
}

@end