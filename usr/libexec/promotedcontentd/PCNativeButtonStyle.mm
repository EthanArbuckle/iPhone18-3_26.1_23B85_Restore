@interface PCNativeButtonStyle
- (id)initWithButtonStyle:(id)style;
@end

@implementation PCNativeButtonStyle

- (id)initWithButtonStyle:(id)style
{
  styleCopy = style;
  v5 = [(PCNativeButtonStyle *)self init];
  v6 = v5;
  if (styleCopy && v5)
  {
    v7 = [PCNativeColor alloc];
    color = [styleCopy color];
    v9 = [v7 initWithColor:color];
    [(PCNativeButtonStyle *)v6 setColor:v9];

    v10 = [PCNativeColor alloc];
    highlightedColor = [styleCopy highlightedColor];
    v12 = [v10 initWithColor:highlightedColor];
    [(PCNativeButtonStyle *)v6 setHighlightColor:v12];

    v13 = [PCNativeColor alloc];
    disabledColor = [styleCopy disabledColor];
    v15 = [v13 initWithColor:disabledColor];
    [(PCNativeButtonStyle *)v6 setDisabledColor:v15];

    v16 = [PCNativeColor alloc];
    textColor = [styleCopy textColor];
    v18 = [v16 initWithColor:textColor];
    [(PCNativeButtonStyle *)v6 setTextColor:v18];

    [styleCopy cornerRadius];
    [(PCNativeButtonStyle *)v6 setCornerRadius:v19];
    v20 = [PCNativeBorderStyle alloc];
    borderStyle = [styleCopy borderStyle];
    v22 = [v20 initWithBorderStyle:borderStyle];
    [(PCNativeButtonStyle *)v6 setBorderStyle:v22];
  }

  return v6;
}

@end