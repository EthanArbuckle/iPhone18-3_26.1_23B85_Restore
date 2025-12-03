@interface NSKeyedUnarchiver
+ (id)icUnarchivedObjectFromData:(id)data withKey:(id)key;
+ (id)icWhitelistedClasses;
@end

@implementation NSKeyedUnarchiver

+ (id)icWhitelistedClasses
{
  if (qword_100033898 != -1)
  {
    sub_10001D310();
  }

  v3 = qword_100033890;

  return v3;
}

+ (id)icUnarchivedObjectFromData:(id)data withKey:(id)key
{
  dataCopy = data;
  keyCopy = key;
  if (dataCopy)
  {
    v7 = [[NSKeyedUnarchiver alloc] initForReadingFromData:dataCopy error:0];
    icWhitelistedClasses = [objc_opt_class() icWhitelistedClasses];
    v9 = [v7 decodeObjectOfClasses:icWhitelistedClasses forKey:keyCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end