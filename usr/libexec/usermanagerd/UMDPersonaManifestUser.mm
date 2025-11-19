@interface UMDPersonaManifestUser
- (UMDPersonaManifestUser)init;
@end

@implementation UMDPersonaManifestUser

- (UMDPersonaManifestUser)init
{
  v7.receiver = self;
  v7.super_class = UMDPersonaManifestUser;
  v2 = [(UMDPersonaManifestUser *)&v7 init];
  if (!v2)
  {
    sub_100088DDC();
  }

  v3 = v2;
  v4 = +[NSSet set];
  personas = v3->_personas;
  v3->_personas = v4;

  v3->_asid = -1;
  return v3;
}

@end