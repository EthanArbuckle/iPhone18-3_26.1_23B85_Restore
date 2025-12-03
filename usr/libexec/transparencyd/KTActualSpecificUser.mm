@interface KTActualSpecificUser
- (KTActualSpecificUser)initWithACAccount:(id)account;
@end

@implementation KTActualSpecificUser

- (KTActualSpecificUser)initWithACAccount:(id)account
{
  accountCopy = account;
  v10.receiver = self;
  v10.super_class = KTActualSpecificUser;
  v5 = [(KTActualSpecificUser *)&v10 init];
  if (v5)
  {
    aa_personID = [accountCopy aa_personID];
    [(KTActualSpecificUser *)v5 setDsid:aa_personID];

    aa_altDSID = [accountCopy aa_altDSID];
    [(KTActualSpecificUser *)v5 setAltDSID:aa_altDSID];

    [(KTActualSpecificUser *)v5 setContextID:@"default"];
    v8 = v5;
  }

  return v5;
}

@end