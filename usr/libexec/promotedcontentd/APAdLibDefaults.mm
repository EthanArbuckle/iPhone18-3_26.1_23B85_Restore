@interface APAdLibDefaults
- (APAdLibDefaults)init;
- (BOOL)BOOLForKey:(id)key;
- (BOOL)defaultIsSetForKey:(id)key;
- (double)doubleForKey:(id)key;
- (id)arrayForKey:(id)key;
- (id)stringForKey:(id)key;
- (int64_t)integerForKey:(id)key;
- (void)setArray:(id)array forKey:(id)key;
- (void)setBool:(BOOL)bool forKey:(id)key;
- (void)setDouble:(double)double forKey:(id)key;
- (void)setInteger:(int64_t)integer forKey:(id)key;
- (void)setString:(id)string forKey:(id)key;
@end

@implementation APAdLibDefaults

- (APAdLibDefaults)init
{
  v6.receiver = self;
  v6.super_class = APAdLibDefaults;
  v2 = [(APAdLibDefaults *)&v6 init];
  if (v2)
  {
    v3 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.AdLib"];
    defaults = v2->_defaults;
    v2->_defaults = v3;
  }

  return v2;
}

- (BOOL)defaultIsSetForKey:(id)key
{
  keyCopy = key;
  defaults = [(APAdLibDefaults *)self defaults];
  v6 = [defaults valueForKey:keyCopy];

  return v6 != 0;
}

- (BOOL)BOOLForKey:(id)key
{
  keyCopy = key;
  defaults = [(APAdLibDefaults *)self defaults];
  v6 = [defaults BOOLForKey:keyCopy];

  return v6;
}

- (void)setBool:(BOOL)bool forKey:(id)key
{
  boolCopy = bool;
  keyCopy = key;
  defaults = [(APAdLibDefaults *)self defaults];
  [defaults setBool:boolCopy forKey:keyCopy];
}

- (double)doubleForKey:(id)key
{
  keyCopy = key;
  defaults = [(APAdLibDefaults *)self defaults];
  [defaults doubleForKey:keyCopy];
  v7 = v6;

  return v7;
}

- (void)setDouble:(double)double forKey:(id)key
{
  keyCopy = key;
  defaults = [(APAdLibDefaults *)self defaults];
  [defaults setDouble:keyCopy forKey:double];
}

- (int64_t)integerForKey:(id)key
{
  keyCopy = key;
  defaults = [(APAdLibDefaults *)self defaults];
  v6 = [defaults integerForKey:keyCopy];

  return v6;
}

- (void)setInteger:(int64_t)integer forKey:(id)key
{
  keyCopy = key;
  defaults = [(APAdLibDefaults *)self defaults];
  [defaults setInteger:integer forKey:keyCopy];
}

- (id)stringForKey:(id)key
{
  keyCopy = key;
  defaults = [(APAdLibDefaults *)self defaults];
  v6 = [defaults stringForKey:keyCopy];

  return v6;
}

- (void)setString:(id)string forKey:(id)key
{
  keyCopy = key;
  stringCopy = string;
  defaults = [(APAdLibDefaults *)self defaults];
  [defaults setValue:stringCopy forKey:keyCopy];
}

- (id)arrayForKey:(id)key
{
  keyCopy = key;
  defaults = [(APAdLibDefaults *)self defaults];
  v6 = [defaults arrayForKey:keyCopy];

  return v6;
}

- (void)setArray:(id)array forKey:(id)key
{
  keyCopy = key;
  arrayCopy = array;
  defaults = [(APAdLibDefaults *)self defaults];
  [defaults setValue:arrayCopy forKey:keyCopy];
}

@end