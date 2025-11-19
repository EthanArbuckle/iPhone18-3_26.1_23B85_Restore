@interface JournalAppSettingsUtilities
+ (BOOL)BOOLForKey:(id)a3;
+ (id)objectForKey:(id)a3;
+ (id)settingsBundle;
+ (id)settingsDefaults;
+ (void)setObject:(id)a3 forKey:(id)a4;
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

+ (BOOL)BOOLForKey:(id)a3
{
  v3 = [a1 objectForKey:a3];
  v4 = [v3 BOOLValue];

  return v4;
}

+ (id)objectForKey:(id)a3
{
  v3 = a3;
  v4 = [[NSUserDefaults alloc] initWithSuiteName:@"group.com.apple.Journal"];
  v5 = [v4 objectForKey:v3];

  return v5;
}

+ (void)setObject:(id)a3 forKey:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[NSUserDefaults alloc] initWithSuiteName:@"group.com.apple.Journal"];
  [v7 setObject:v6 forKey:v5];
}

@end