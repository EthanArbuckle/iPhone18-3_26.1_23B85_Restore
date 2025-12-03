@interface PCNativeStyle
- (id)initWithStyle:(id)style;
@end

@implementation PCNativeStyle

- (id)initWithStyle:(id)style
{
  styleCopy = style;
  v5 = [(PCNativeStyle *)self init];
  v6 = v5;
  if (styleCopy && v5)
  {
    v7 = [PCNativeColor alloc];
    backgroundColor = [styleCopy backgroundColor];
    v9 = [v7 initWithColor:backgroundColor];
    [(PCNativeStyle *)v6 setBackgroundColor:v9];

    v10 = [PCNativeBorderStyle alloc];
    borderStyle = [styleCopy borderStyle];
    v12 = [v10 initWithBorderStyle:borderStyle];
    [(PCNativeStyle *)v6 setBorderStyle:v12];

    v13 = [PCNativeButtonStyle alloc];
    buttonStyle = [styleCopy buttonStyle];
    v15 = [v13 initWithButtonStyle:buttonStyle];
    [(PCNativeStyle *)v6 setButtonStyle:v15];

    v16 = [PCNativeShadowStyle alloc];
    shadowStyle = [styleCopy shadowStyle];
    v18 = [v16 initWithShadowStyle:shadowStyle];
    [(PCNativeStyle *)v6 setShadowStyle:v18];

    v19 = [PCNativeColor alloc];
    textColor = [styleCopy textColor];
    v21 = [v19 initWithColor:textColor];
    [(PCNativeStyle *)v6 setTextColor:v21];
  }

  return v6;
}

@end