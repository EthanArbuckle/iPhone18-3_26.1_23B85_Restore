@interface PCNativeButton
- (id)initWithButton:(id)button;
@end

@implementation PCNativeButton

- (id)initWithButton:(id)button
{
  buttonCopy = button;
  v5 = [(PCNativeButton *)self init];
  v6 = v5;
  if (buttonCopy && v5)
  {
    -[PCNativeButton setType:](v5, "setType:", [buttonCopy predefined]);
    text = [buttonCopy text];
    [(PCNativeButton *)v6 setText:text];

    accessText = [buttonCopy accessText];
    [(PCNativeButton *)v6 setAccessibleText:accessText];

    v9 = [PCNativeButtonStyle alloc];
    buttonStyle = [buttonCopy buttonStyle];
    v11 = [v9 initWithButtonStyle:buttonStyle];
    [(PCNativeButton *)v6 setStyle:v11];
  }

  return v6;
}

@end