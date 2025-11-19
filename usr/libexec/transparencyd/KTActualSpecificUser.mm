@interface KTActualSpecificUser
- (KTActualSpecificUser)initWithACAccount:(id)a3;
@end

@implementation KTActualSpecificUser

- (KTActualSpecificUser)initWithACAccount:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = KTActualSpecificUser;
  v5 = [(KTActualSpecificUser *)&v10 init];
  if (v5)
  {
    v6 = [v4 aa_personID];
    [(KTActualSpecificUser *)v5 setDsid:v6];

    v7 = [v4 aa_altDSID];
    [(KTActualSpecificUser *)v5 setAltDSID:v7];

    [(KTActualSpecificUser *)v5 setContextID:@"default"];
    v8 = v5;
  }

  return v5;
}

@end