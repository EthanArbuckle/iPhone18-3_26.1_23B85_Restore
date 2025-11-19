@interface MSDSettingsContext
+ (id)defaultContextForIdentifier:(id)a3;
@end

@implementation MSDSettingsContext

+ (id)defaultContextForIdentifier:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MSDSettingsContext);
  [(MSDOperationContext *)v4 setIdentifier:v3];

  return v4;
}

@end