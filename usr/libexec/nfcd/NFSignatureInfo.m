@interface NFSignatureInfo
- (NFSignatureInfo)initWithCoder:(id)a3;
- (NFSignatureInfo)initWithDictionary:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NFSignatureInfo

- (NFSignatureInfo)initWithDictionary:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = NFSignatureInfo;
  v5 = [(NFSignatureInfo *)&v20 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"rsa"];
    rsaCert = v5->_rsaCert;
    v5->_rsaCert = v6;

    v8 = [v4 objectForKeyedSubscript:@"ecc"];
    eccCert = v5->_eccCert;
    v5->_eccCert = v8;

    v10 = [v4 objectForKeyedSubscript:@"ecka"];
    eckaCert = v5->_eckaCert;
    v5->_eckaCert = v10;

    v12 = [v4 objectForKeyedSubscript:@"seid"];
    seid = v5->_seid;
    v5->_seid = v12;

    v14 = [v4 objectForKeyedSubscript:@"platformid"];
    platformId = v5->_platformId;
    v5->_platformId = v14;

    v16 = [v4 objectForKeyedSubscript:@"jsblCounter"];
    jsblCounter = v5->_jsblCounter;
    v5->_jsblCounter = v16;

    v18 = [v4 objectForKeyedSubscript:@"certVersion"];
    v5->_certificateVersion = [v18 unsignedIntegerValue];
  }

  return v5;
}

- (id)description
{
  v3 = [NSString alloc];
  v11.receiver = self;
  v11.super_class = NFSignatureInfo;
  v4 = [(NFSignatureInfo *)&v11 description];
  v5 = v4;
  jsblCounter = &stru_10031EA18;
  seid = self->_seid;
  platformId = self->_platformId;
  if (!seid)
  {
    seid = &stru_10031EA18;
  }

  if (!platformId)
  {
    platformId = &stru_10031EA18;
  }

  if (self->_jsblCounter)
  {
    jsblCounter = self->_jsblCounter;
  }

  v9 = [v3 initWithFormat:@"%@ { seid=%@ platformId=%@ jsblCounter=%@ certificateVersion=%lu }", v4, seid, platformId, jsblCounter, self->_certificateVersion];

  return v9;
}

- (NFSignatureInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = NFSignatureInfo;
  v5 = [(NFSignatureInfo *)&v19 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rsa"];
    rsaCert = v5->_rsaCert;
    v5->_rsaCert = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ecc"];
    eccCert = v5->_eccCert;
    v5->_eccCert = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ecka"];
    eckaCert = v5->_eckaCert;
    v5->_eckaCert = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"seid"];
    seid = v5->_seid;
    v5->_seid = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"platformid"];
    platformId = v5->_platformId;
    v5->_platformId = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"jsblCounter"];
    jsblCounter = v5->_jsblCounter;
    v5->_jsblCounter = v16;

    v5->_certificateVersion = [v4 decodeIntegerForKey:@"certVersion"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  rsaCert = self->_rsaCert;
  v5 = a3;
  [v5 encodeObject:rsaCert forKey:@"rsa"];
  [v5 encodeObject:self->_eccCert forKey:@"ecc"];
  [v5 encodeObject:self->_eckaCert forKey:@"ecka"];
  [v5 encodeObject:self->_seid forKey:@"seid"];
  [v5 encodeObject:self->_platformId forKey:@"platformid"];
  [v5 encodeObject:self->_jsblCounter forKey:@"jsblCounter"];
  [v5 encodeInteger:self->_certificateVersion forKey:@"certVersion"];
}

@end