@interface NSKeyedUnarchiver
+ (id)icUnarchivedObjectFromData:(id)a3 withKey:(id)a4;
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

+ (id)icUnarchivedObjectFromData:(id)a3 withKey:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v7 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v5 error:0];
    v8 = [objc_opt_class() icWhitelistedClasses];
    v9 = [v7 decodeObjectOfClasses:v8 forKey:v6];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end