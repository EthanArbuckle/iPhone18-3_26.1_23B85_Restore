@interface NFSignatureInfo
- (NFSignatureInfo)initWithCoder:(id)coder;
- (NFSignatureInfo)initWithDictionary:(id)dictionary;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NFSignatureInfo

- (NFSignatureInfo)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v20.receiver = self;
  v20.super_class = NFSignatureInfo;
  v5 = [(NFSignatureInfo *)&v20 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"rsa"];
    rsaCert = v5->_rsaCert;
    v5->_rsaCert = v6;

    v8 = [dictionaryCopy objectForKeyedSubscript:@"ecc"];
    eccCert = v5->_eccCert;
    v5->_eccCert = v8;

    v10 = [dictionaryCopy objectForKeyedSubscript:@"ecka"];
    eckaCert = v5->_eckaCert;
    v5->_eckaCert = v10;

    v12 = [dictionaryCopy objectForKeyedSubscript:@"seid"];
    seid = v5->_seid;
    v5->_seid = v12;

    v14 = [dictionaryCopy objectForKeyedSubscript:@"platformid"];
    platformId = v5->_platformId;
    v5->_platformId = v14;

    v16 = [dictionaryCopy objectForKeyedSubscript:@"jsblCounter"];
    jsblCounter = v5->_jsblCounter;
    v5->_jsblCounter = v16;

    v18 = [dictionaryCopy objectForKeyedSubscript:@"certVersion"];
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

- (NFSignatureInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = NFSignatureInfo;
  v5 = [(NFSignatureInfo *)&v19 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rsa"];
    rsaCert = v5->_rsaCert;
    v5->_rsaCert = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ecc"];
    eccCert = v5->_eccCert;
    v5->_eccCert = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ecka"];
    eckaCert = v5->_eckaCert;
    v5->_eckaCert = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"seid"];
    seid = v5->_seid;
    v5->_seid = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"platformid"];
    platformId = v5->_platformId;
    v5->_platformId = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"jsblCounter"];
    jsblCounter = v5->_jsblCounter;
    v5->_jsblCounter = v16;

    v5->_certificateVersion = [coderCopy decodeIntegerForKey:@"certVersion"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  rsaCert = self->_rsaCert;
  coderCopy = coder;
  [coderCopy encodeObject:rsaCert forKey:@"rsa"];
  [coderCopy encodeObject:self->_eccCert forKey:@"ecc"];
  [coderCopy encodeObject:self->_eckaCert forKey:@"ecka"];
  [coderCopy encodeObject:self->_seid forKey:@"seid"];
  [coderCopy encodeObject:self->_platformId forKey:@"platformid"];
  [coderCopy encodeObject:self->_jsblCounter forKey:@"jsblCounter"];
  [coderCopy encodeInteger:self->_certificateVersion forKey:@"certVersion"];
}

@end