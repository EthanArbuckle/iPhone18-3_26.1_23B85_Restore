@interface JournalAppSettingsUtilities
+ (BOOL)BOOLForKey:(id)key;
+ (id)objectForKey:(id)key;
+ (id)settingsBundle;
+ (id)settingsDefaults;
+ (void)setObject:(id)object forKey:(id)key;
@end

@implementation JournalAppSettingsUtilities

+ (id)settingsBundle
{
  v2 = objc_opt_class();

  return [NSBundle bundleForClass:v2];
}

+ (id)settingsDefaults
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"group.com.apple.Journal"];

  return v2;
}

+ (BOOL)BOOLForKey:(id)key
{
  v3 = [self objectForKey:key];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

+ (id)objectForKey:(id)key
{
  keyCopy = key;
  v4 = [[NSUserDefaults alloc] initWithSuiteName:@"group.com.apple.Journal"];
  v5 = [v4 objectForKey:keyCopy];

  return v5;
}

+ (void)setObject:(id)object forKey:(id)key
{
  keyCopy = key;
  objectCopy = object;
  v7 = [[NSUserDefaults alloc] initWithSuiteName:@"group.com.apple.Journal"];
  [v7 setObject:objectCopy forKey:keyCopy];
}

@end