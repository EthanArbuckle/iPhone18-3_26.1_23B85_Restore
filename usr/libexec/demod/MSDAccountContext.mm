@interface MSDAccountContext
- (MSDAccountContext)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MSDAccountContext

- (id)description
{
  has_internal_content = os_variant_has_internal_content();
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  username = [(MSDAccountContext *)self username];
  v7 = username;
  if (has_internal_content)
  {
    password = [(MSDAccountContext *)self password];
    recoveryKey = [(MSDAccountContext *)self recoveryKey];
    v10 = [NSString stringWithFormat:@"<%@[%p]: Username=%@ Password=%@ RecoveryKey=%@>", v5, self, v7, password, recoveryKey];
  }

  else
  {
    v10 = [NSString stringWithFormat:@"<%@[%p]: Username=%@>", v5, self, username];
  }

  return v10;
}

- (MSDAccountContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = MSDAccountContext;
  v5 = [(MSDAccountContext *)&v16 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"username"];
    [(MSDAccountContext *)v5 setUsername:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"password"];
    [(MSDAccountContext *)v5 setPassword:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localSecret"];
    [(MSDAccountContext *)v5 setLocalSecret:v8];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"recoveryKey"];
    [(MSDAccountContext *)v5 setRecoveryKey:v9];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"resetCDP"];
    -[MSDAccountContext setResetCDP:](v5, "setResetCDP:", [v10 BOOLValue]);

    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = [NSSet setWithObjects:v11, v12, objc_opt_class(), 0];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"features"];
    [(MSDAccountContext *)v5 setFeatures:v14];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  username = [(MSDAccountContext *)self username];
  [coderCopy encodeObject:username forKey:@"username"];

  password = [(MSDAccountContext *)self password];
  [coderCopy encodeObject:password forKey:@"password"];

  localSecret = [(MSDAccountContext *)self localSecret];
  [coderCopy encodeObject:localSecret forKey:@"localSecret"];

  recoveryKey = [(MSDAccountContext *)self recoveryKey];
  [coderCopy encodeObject:recoveryKey forKey:@"recoveryKey"];

  v9 = [NSNumber numberWithBool:[(MSDAccountContext *)self resetCDP]];
  [coderCopy encodeObject:v9 forKey:@"resetCDP"];

  features = [(MSDAccountContext *)self features];
  [coderCopy encodeObject:features forKey:@"features"];
}

@end