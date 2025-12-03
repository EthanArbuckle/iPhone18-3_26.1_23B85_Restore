@interface KTIDSSignInServiceUserInfo
- (KTIDSSignInServiceUserInfo)initWithType:(unint64_t)type status:(unint64_t)status;
- (KTIDSSignInServiceUserInfo)initWithUserInfo:(id)info;
@end

@implementation KTIDSSignInServiceUserInfo

- (KTIDSSignInServiceUserInfo)initWithType:(unint64_t)type status:(unint64_t)status
{
  v10.receiver = self;
  v10.super_class = KTIDSSignInServiceUserInfo;
  v6 = [(KTIDSSignInServiceUserInfo *)&v10 init];
  v7 = v6;
  if (v6)
  {
    [(KTIDSSignInServiceUserInfo *)v6 setType:type];
    [(KTIDSSignInServiceUserInfo *)v7 setStatus:status];
    v8 = v7;
  }

  return v7;
}

- (KTIDSSignInServiceUserInfo)initWithUserInfo:(id)info
{
  infoCopy = info;
  type = [infoCopy type];
  status = [infoCopy status];

  return [(KTIDSSignInServiceUserInfo *)self initWithType:type status:status];
}

@end