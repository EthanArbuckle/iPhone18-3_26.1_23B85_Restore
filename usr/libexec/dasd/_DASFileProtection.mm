@interface _DASFileProtection
- (unint64_t)asBiomeProtectionClass;
@end

@implementation _DASFileProtection

- (unint64_t)asBiomeProtectionClass
{
  protectionType = [(_DASFileProtection *)self protectionType];
  v4 = +[_DASDataProtectionStateMonitor dataProtectionClassA];
  v5 = [protectionType isEqualToString:v4];

  if (v5)
  {
    return 0;
  }

  protectionType2 = [(_DASFileProtection *)self protectionType];
  v8 = +[_DASDataProtectionStateMonitor dataProtectionClassB];
  v9 = [protectionType2 isEqualToString:v8];

  if (v9)
  {
    return 2;
  }

  protectionType3 = [(_DASFileProtection *)self protectionType];
  v11 = +[_DASDataProtectionStateMonitor dataProtectionClassC];
  v12 = [protectionType3 isEqualToString:v11];

  if (v12)
  {
    return 3;
  }

  protectionType4 = [(_DASFileProtection *)self protectionType];
  v14 = +[_DASDataProtectionStateMonitor dataProtectionClassD];
  v15 = [protectionType4 isEqualToString:v14];

  if (v15)
  {
    return 4;
  }

  protectionType5 = [(_DASFileProtection *)self protectionType];
  v17 = +[_DASDataProtectionStateMonitor dataProtectionClassCX];
  v18 = [protectionType5 isEqualToString:v17];

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