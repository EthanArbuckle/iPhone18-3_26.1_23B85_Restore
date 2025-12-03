@interface SPDelegatedShareImportResult
- (SPDelegatedShareImportResult)initWithAuthUrl:(id)url;
- (SPDelegatedShareImportResult)initWithCoder:(id)coder;
- (SPDelegatedShareImportResult)initWithShare:(id)share;
- (SPDelegatedShareImportResult)initWithShare:(id)share authUrl:(id)url;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPDelegatedShareImportResult

- (SPDelegatedShareImportResult)initWithShare:(id)share authUrl:(id)url
{
  shareCopy = share;
  urlCopy = url;
  v12.receiver = self;
  v12.super_class = SPDelegatedShareImportResult;
  v9 = [(SPDelegatedShareImportResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_share, share);
    objc_storeStrong(&v10->_authUrl, url);
  }

  return v10;
}

- (SPDelegatedShareImportResult)initWithShare:(id)share
{
  shareCopy = share;
  v10.receiver = self;
  v10.super_class = SPDelegatedShareImportResult;
  v6 = [(SPDelegatedShareImportResult *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_share, share);
    authUrl = v7->_authUrl;
    v7->_authUrl = 0;
  }

  return v7;
}

- (SPDelegatedShareImportResult)initWithAuthUrl:(id)url
{
  urlCopy = url;
  v10.receiver = self;
  v10.super_class = SPDelegatedShareImportResult;
  v6 = [(SPDelegatedShareImportResult *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_authUrl, url);
    share = v7->_share;
    v7->_share = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SPDelegatedShareImportResult alloc];
  share = self->_share;
  authUrl = self->_authUrl;

  return [(SPDelegatedShareImportResult *)v4 initWithShare:share authUrl:authUrl];
}

- (void)encodeWithCoder:(id)coder
{
  share = self->_share;
  coderCopy = coder;
  [coderCopy encodeObject:share forKey:@"share"];
  [coderCopy encodeObject:self->_authUrl forKey:@"authUrl"];
}

- (SPDelegatedShareImportResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"share"];
  share = self->_share;
  self->_share = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"authUrl"];

  authUrl = self->_authUrl;
  self->_authUrl = v7;

  return self;
}

@end