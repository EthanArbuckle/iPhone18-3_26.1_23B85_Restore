@interface _DASFileProtection
- (unint64_t)asBiomeProtectionClass;
@end

@implementation _DASFileProtection

- (unint64_t)asBiomeProtectionClass
{
  v3 = [(_DASFileProtection *)self protectionType];
  v4 = +[_DASDataProtectionStateMonitor dataProtectionClassA];
  v5 = [v3 isEqualToString:v4];

  if (v5)
  {
    return 0;
  }

  v7 = [(_DASFileProtection *)self protectionType];
  v8 = +[_DASDataProtectionStateMonitor dataProtectionClassB];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    return 2;
  }

  v10 = [(_DASFileProtection *)self protectionType];
  v11 = +[_DASDataProtectionStateMonitor dataProtectionClassC];
  v12 = [v10 isEqualToString:v11];

  if (v12)
  {
    return 3;
  }

  v13 = [(_DASFileProtection *)self protectionType];
  v14 = +[_DASDataProtectionStateMonitor dataProtectionClassD];
  v15 = [v13 isEqualToString:v14];

  if (v15)
  {
    return 4;
  }

  v16 = [(_DASFileProtection *)self protectionType];
  v17 = +[_DASDataProtectionStateMonitor dataProtectionClassCX];
  v18 = [v16 isEqualToString:v17];

  if (v18)
  {
    return 5;
  }

  else
  {
    return 3;
  }
}

@end