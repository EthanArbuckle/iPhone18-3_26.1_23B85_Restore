@interface PCNativeButtonStyle
- (id)initWithButtonStyle:(id)a3;
@end

@implementation PCNativeButtonStyle

- (id)initWithButtonStyle:(id)a3
{
  v4 = a3;
  v5 = [(PCNativeButtonStyle *)self init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [PCNativeColor alloc];
    v8 = [v4 color];
    v9 = [v7 initWithColor:v8];
    [(PCNativeButtonStyle *)v6 setColor:v9];

    v10 = [PCNativeColor alloc];
    v11 = [v4 highlightedColor];
    v12 = [v10 initWithColor:v11];
    [(PCNativeButtonStyle *)v6 setHighlightColor:v12];

    v13 = [PCNativeColor alloc];
    v14 = [v4 disabledColor];
    v15 = [v13 initWithColor:v14];
    [(PCNativeButtonStyle *)v6 setDisabledColor:v15];

    v16 = [PCNativeColor alloc];
    v17 = [v4 textColor];
    v18 = [v16 initWithColor:v17];
    [(PCNativeButtonStyle *)v6 setTextColor:v18];

    [v4 cornerRadius];
    [(PCNativeButtonStyle *)v6 setCornerRadius:v19];
    v20 = [PCNativeBorderStyle alloc];
    v21 = [v4 borderStyle];
    v22 = [v20 initWithBorderStyle:v21];
    [(PCNativeButtonStyle *)v6 setBorderStyle:v22];
  }

  return v6;
}

@end