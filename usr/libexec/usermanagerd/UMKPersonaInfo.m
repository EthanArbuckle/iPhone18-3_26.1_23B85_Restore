@interface UMKPersonaInfo
- (UMKPersonaInfo)init;
@end

@implementation UMKPersonaInfo

- (UMKPersonaInfo)init
{
  v6.receiver = self;
  v6.super_class = UMKPersonaInfo;
  v2 = [(UMKPersonaInfo *)&v6 init];
  if (!v2)
  {
    sub_100088DDC();
  }

  v3 = v2;

  *&v3->_id = 0xFFFFFFFFLL;
  name = v3->_name;
  v3->_name = &stru_1000E0F38;

  v3->_uid = -101;
  return v3;
}

@end