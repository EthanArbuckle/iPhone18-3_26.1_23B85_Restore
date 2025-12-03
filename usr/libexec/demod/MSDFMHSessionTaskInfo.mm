@interface MSDFMHSessionTaskInfo
- (BOOL)addAuthHeader;
@end

@implementation MSDFMHSessionTaskInfo

- (BOOL)addAuthHeader
{
  selfCopy = self;
  if (![(MSDFMHSessionTaskInfo *)self useBAAAuthentication])
  {
    v9.receiver = selfCopy;
    v9.super_class = MSDFMHSessionTaskInfo;
    LOBYTE(selfCopy) = [(MSDHubSessionTaskInfo *)&v9 addAuthHeader];
    return selfCopy;
  }

  v3 = +[MSDBAAInterface sharedInstance];
  if (([v3 generateBAACertficate:0] & 1) == 0)
  {
    v6 = sub_100063A54();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000D14BC();
    }

    LOBYTE(selfCopy) = 0;
    goto LABEL_13;
  }

  request = [(MSDSessionTaskInfo *)selfCopy request];
  postData = [(MSDSessionTaskInfo *)selfCopy postData];
  v8 = 0;
  LODWORD(selfCopy) = [v3 addBAAAuthenticationHeadersToRequest:request withBody:postData error:&v8];
  v6 = v8;

  if (!selfCopy || v6)
  {
    sub_1000D14F8();
LABEL_13:

    goto LABEL_6;
  }

  LOBYTE(selfCopy) = 1;
LABEL_6:

  return selfCopy;
}

@end