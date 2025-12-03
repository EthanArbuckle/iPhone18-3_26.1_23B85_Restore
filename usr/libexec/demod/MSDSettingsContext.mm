@interface MSDSettingsContext
+ (id)defaultContextForIdentifier:(id)identifier;
@end

@implementation MSDSettingsContext

+ (id)defaultContextForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = objc_alloc_init(MSDSettingsContext);
  [(MSDOperationContext *)v4 setIdentifier:identifierCopy];

  return v4;
}

@end