@interface FMDOneShotCipher
- (FMDOneShotCipher)initWithDictionary:(id)dictionary;
- (NSDictionary)dictionaryValue;
@end

@implementation FMDOneShotCipher

- (FMDOneShotCipher)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = FMDOneShotCipher;
  v5 = [(FMDOneShotCipher *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"iv"];
    [(FMDOneShotCipher *)v5 setInitializationVector:v6];

    v7 = [dictionaryCopy objectForKeyedSubscript:@"key"];
    [(FMDOneShotCipher *)v5 setKey:v7];

    v8 = [dictionaryCopy objectForKeyedSubscript:@"tag"];
    [(FMDOneShotCipher *)v5 setTag:v8];
  }

  return v5;
}

- (NSDictionary)dictionaryValue
{
  v3 = +[NSMutableDictionary dictionary];
  initializationVector = [(FMDOneShotCipher *)self initializationVector];
  [v3 fm_safeSetObject:initializationVector forKey:@"iv"];

  v5 = [(FMDOneShotCipher *)self key];
  [v3 fm_safeSetObject:v5 forKey:@"key"];

  v6 = [(FMDOneShotCipher *)self tag];
  [v3 fm_safeSetObject:v6 forKey:@"tag"];

  return v3;
}

@end