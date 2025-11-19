@interface PCNativeLocalizedHeadline
- (id)initWithLocalizedStringEntry:(id)a3;
@end

@implementation PCNativeLocalizedHeadline

- (id)initWithLocalizedStringEntry:(id)a3
{
  v4 = a3;
  v5 = [(PCNativeLocalizedHeadline *)self init];
  if (v5)
  {
    v6 = [v4 languageIdentifier];
    [(PCNativeLocalizedHeadline *)v5 setLanguageIdentifier:v6];

    v7 = [v4 value];
    [(PCNativeLocalizedHeadline *)v5 setValue:v7];
  }

  return v5;
}

@end