@interface APAdLibDefaults
- (APAdLibDefaults)init;
- (BOOL)BOOLForKey:(id)a3;
- (BOOL)defaultIsSetForKey:(id)a3;
- (double)doubleForKey:(id)a3;
- (id)arrayForKey:(id)a3;
- (id)stringForKey:(id)a3;
- (int64_t)integerForKey:(id)a3;
- (void)setArray:(id)a3 forKey:(id)a4;
- (void)setBool:(BOOL)a3 forKey:(id)a4;
- (void)setDouble:(double)a3 forKey:(id)a4;
- (void)setInteger:(int64_t)a3 forKey:(id)a4;
- (void)setString:(id)a3 forKey:(id)a4;
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

- (BOOL)defaultIsSetForKey:(id)a3
{
  v4 = a3;
  v5 = [(APAdLibDefaults *)self defaults];
  v6 = [v5 valueForKey:v4];

  return v6 != 0;
}

- (BOOL)BOOLForKey:(id)a3
{
  v4 = a3;
  v5 = [(APAdLibDefaults *)self defaults];
  v6 = [v5 BOOLForKey:v4];

  return v6;
}

- (void)setBool:(BOOL)a3 forKey:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(APAdLibDefaults *)self defaults];
  [v7 setBool:v4 forKey:v6];
}

- (double)doubleForKey:(id)a3
{
  v4 = a3;
  v5 = [(APAdLibDefaults *)self defaults];
  [v5 doubleForKey:v4];
  v7 = v6;

  return v7;
}

- (void)setDouble:(double)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = [(APAdLibDefaults *)self defaults];
  [v7 setDouble:v6 forKey:a3];
}

- (int64_t)integerForKey:(id)a3
{
  v4 = a3;
  v5 = [(APAdLibDefaults *)self defaults];
  v6 = [v5 integerForKey:v4];

  return v6;
}

- (void)setInteger:(int64_t)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = [(APAdLibDefaults *)self defaults];
  [v7 setInteger:a3 forKey:v6];
}

- (id)stringForKey:(id)a3
{
  v4 = a3;
  v5 = [(APAdLibDefaults *)self defaults];
  v6 = [v5 stringForKey:v4];

  return v6;
}

- (void)setString:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(APAdLibDefaults *)self defaults];
  [v8 setValue:v7 forKey:v6];
}

- (id)arrayForKey:(id)a3
{
  v4 = a3;
  v5 = [(APAdLibDefaults *)self defaults];
  v6 = [v5 arrayForKey:v4];

  return v6;
}

- (void)setArray:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(APAdLibDefaults *)self defaults];
  [v8 setValue:v7 forKey:v6];
}

@end