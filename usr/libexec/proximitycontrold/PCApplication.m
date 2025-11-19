@interface PCApplication
+ (id)_systemUIServiceClientSettings;
@end

@implementation PCApplication

+ (id)_systemUIServiceClientSettings
{
  v2 = +[UIMutableApplicationSceneClientSettings settings];
  [v2 setPreferredLevel:UIHUDWindowLevel];

  return v2;
}

@end