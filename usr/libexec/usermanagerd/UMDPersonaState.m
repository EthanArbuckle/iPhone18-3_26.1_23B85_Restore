@interface UMDPersonaState
- (UMDPersonaState)init;
@end

@implementation UMDPersonaState

- (UMDPersonaState)init
{
  v7.receiver = self;
  v7.super_class = UMDPersonaState;
  v2 = [(UMDPersonaState *)&v7 init];
  if (!v2)
  {
    sub_100088DDC();
  }

  v3 = v2;
  v4 = +[NSMutableDictionary dictionary];
  userPersonas = v3->_userPersonas;
  v3->_userPersonas = v4;

  return v3;
}

@end