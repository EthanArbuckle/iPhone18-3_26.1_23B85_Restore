@interface KTAccountState
- (KTAccountState)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation KTAccountState

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(KTAccountState *)self altDSID];
  [v4 encodeObject:v5 forKey:@"altDSID"];

  v6 = [NSNumber numberWithUnsignedInteger:[(KTAccountState *)self environment]];
  [v4 encodeObject:v6 forKey:@"env"];

  v7 = [NSNumber numberWithBool:[(KTAccountState *)self hasBeenEnabled]];
  [v4 encodeObject:v7 forKey:@"hasBeen"];
}

- (KTAccountState)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = KTAccountState;
  v5 = [(KTAccountState *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"altDSID"];
    [(KTAccountState *)v5 setAltDSID:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hasBeenEnabled"];
    -[KTAccountState setHasBeenEnabled:](v5, "setHasBeenEnabled:", [v7 BOOLValue]);

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"env"];
    v9 = [v8 intValue];

    if (v9 == 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2 * (v9 == 2);
    }

    [(KTAccountState *)v5 setEnvironment:v10];
    v11 = v5;
  }

  return v5;
}

@end