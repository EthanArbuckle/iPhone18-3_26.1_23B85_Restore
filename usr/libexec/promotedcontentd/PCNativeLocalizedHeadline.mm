@interface PCNativeLocalizedHeadline
- (id)initWithLocalizedStringEntry:(id)entry;
@end

@implementation PCNativeLocalizedHeadline

- (id)initWithLocalizedStringEntry:(id)entry
{
  entryCopy = entry;
  v5 = [(PCNativeLocalizedHeadline *)self init];
  if (v5)
  {
    languageIdentifier = [entryCopy languageIdentifier];
    [(PCNativeLocalizedHeadline *)v5 setLanguageIdentifier:languageIdentifier];

    value = [entryCopy value];
    [(PCNativeLocalizedHeadline *)v5 setValue:value];
  }

  return v5;
}

@end