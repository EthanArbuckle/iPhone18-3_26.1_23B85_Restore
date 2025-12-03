@interface KTAccountState
- (KTAccountState)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation KTAccountState

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  altDSID = [(KTAccountState *)self altDSID];
  [coderCopy encodeObject:altDSID forKey:@"altDSID"];

  v6 = [NSNumber numberWithUnsignedInteger:[(KTAccountState *)self environment]];
  [coderCopy encodeObject:v6 forKey:@"env"];

  v7 = [NSNumber numberWithBool:[(KTAccountState *)self hasBeenEnabled]];
  [coderCopy encodeObject:v7 forKey:@"hasBeen"];
}

- (KTAccountState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = KTAccountState;
  v5 = [(KTAccountState *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"altDSID"];
    [(KTAccountState *)v5 setAltDSID:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hasBeenEnabled"];
    -[KTAccountState setHasBeenEnabled:](v5, "setHasBeenEnabled:", [v7 BOOLValue]);

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"env"];
    intValue = [v8 intValue];

    if (intValue == 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2 * (intValue == 2);
    }

    [(KTAccountState *)v5 setEnvironment:v10];
    v11 = v5;
  }

  return v5;
}

@end