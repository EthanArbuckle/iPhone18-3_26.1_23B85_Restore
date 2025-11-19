@interface PCNativeStyle
- (id)initWithStyle:(id)a3;
@end

@implementation PCNativeStyle

- (id)initWithStyle:(id)a3
{
  v4 = a3;
  v5 = [(PCNativeStyle *)self init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [PCNativeColor alloc];
    v8 = [v4 backgroundColor];
    v9 = [v7 initWithColor:v8];
    [(PCNativeStyle *)v6 setBackgroundColor:v9];

    v10 = [PCNativeBorderStyle alloc];
    v11 = [v4 borderStyle];
    v12 = [v10 initWithBorderStyle:v11];
    [(PCNativeStyle *)v6 setBorderStyle:v12];

    v13 = [PCNativeButtonStyle alloc];
    v14 = [v4 buttonStyle];
    v15 = [v13 initWithButtonStyle:v14];
    [(PCNativeStyle *)v6 setButtonStyle:v15];

    v16 = [PCNativeShadowStyle alloc];
    v17 = [v4 shadowStyle];
    v18 = [v16 initWithShadowStyle:v17];
    [(PCNativeStyle *)v6 setShadowStyle:v18];

    v19 = [PCNativeColor alloc];
    v20 = [v4 textColor];
    v21 = [v19 initWithColor:v20];
    [(PCNativeStyle *)v6 setTextColor:v21];
  }

  return v6;
}

@end