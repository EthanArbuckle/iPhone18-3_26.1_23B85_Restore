@interface KTIDSSignInServiceUserInfo
- (KTIDSSignInServiceUserInfo)initWithType:(unint64_t)a3 status:(unint64_t)a4;
- (KTIDSSignInServiceUserInfo)initWithUserInfo:(id)a3;
@end

@implementation KTIDSSignInServiceUserInfo

- (KTIDSSignInServiceUserInfo)initWithType:(unint64_t)a3 status:(unint64_t)a4
{
  v10.receiver = self;
  v10.super_class = KTIDSSignInServiceUserInfo;
  v6 = [(KTIDSSignInServiceUserInfo *)&v10 init];
  v7 = v6;
  if (v6)
  {
    [(KTIDSSignInServiceUserInfo *)v6 setType:a3];
    [(KTIDSSignInServiceUserInfo *)v7 setStatus:a4];
    v8 = v7;
  }

  return v7;
}

- (KTIDSSignInServiceUserInfo)initWithUserInfo:(id)a3
{
  v4 = a3;
  v5 = [v4 type];
  v6 = [v4 status];

  return [(KTIDSSignInServiceUserInfo *)self initWithType:v5 status:v6];
}

@end