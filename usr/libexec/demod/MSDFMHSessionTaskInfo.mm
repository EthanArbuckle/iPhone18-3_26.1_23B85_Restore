@interface MSDFMHSessionTaskInfo
- (BOOL)addAuthHeader;
@end

@implementation MSDFMHSessionTaskInfo

- (BOOL)addAuthHeader
{
  v2 = self;
  if (![(MSDFMHSessionTaskInfo *)self useBAAAuthentication])
  {
    v9.receiver = v2;
    v9.super_class = MSDFMHSessionTaskInfo;
    LOBYTE(v2) = [(MSDHubSessionTaskInfo *)&v9 addAuthHeader];
    return v2;
  }

  v3 = +[MSDBAAInterface sharedInstance];
  if (([v3 generateBAACertficate:0] & 1) == 0)
  {
    v6 = sub_100063A54();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000D14BC();
    }

    LOBYTE(v2) = 0;
    goto LABEL_13;
  }

  v4 = [(MSDSessionTaskInfo *)v2 request];
  v5 = [(MSDSessionTaskInfo *)v2 postData];
  v8 = 0;
  LODWORD(v2) = [v3 addBAAAuthenticationHeadersToRequest:v4 withBody:v5 error:&v8];
  v6 = v8;

  if (!v2 || v6)
  {
    sub_1000D14F8();
LABEL_13:

    goto LABEL_6;
  }

  LOBYTE(v2) = 1;
LABEL_6:

  return v2;
}

@end