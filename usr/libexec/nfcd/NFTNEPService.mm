@interface NFTNEPService
- (NFTNEPService)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NFTNEPService

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(objc_opt_class());
  if (v5)
  {
    v6 = [(NSString *)self->_uri copyWithZone:a3];
    v7 = v5[2];
    v5[2] = v6;

    *(v5 + 8) = self->_minWaitTime;
    *(v5 + 9) = self->_maxWaitTimeExtension;
    *(v5 + 5) = self->_maxMessageSize;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  uri = self->_uri;
  v5 = a3;
  [v5 encodeObject:uri forKey:@"uri"];
  [v5 encodeInteger:self->_minWaitTime forKey:@"minWaitTime"];
  [v5 encodeInteger:self->_maxWaitTimeExtension forKey:@"maxWaitTimeExtension"];
  [v5 encodeInteger:self->_maxMessageSize forKey:@"maxMessageSize"];
}

- (NFTNEPService)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = NFTNEPService;
  v5 = [(NFTNEPService *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uri"];
    uri = v5->_uri;
    v5->_uri = v6;

    v5->_minWaitTime = [v4 decodeIntegerForKey:@"minWaitTime"];
    v5->_maxWaitTimeExtension = [v4 decodeIntegerForKey:@"maxWaitTimeExtension"];
    v5->_maxMessageSize = [v4 decodeIntegerForKey:@"maxMessageSize"];
  }

  return v5;
}

- (id)description
{
  v3 = [NSString alloc];
  v4 = [(NFTNEPService *)self uri];
  v5 = [v3 initWithFormat:@"{uri=%@, Nwait=%d, twait=%d, maxMsgSize=%d}", v4, -[NFTNEPService maxWaitTimeExtension](self, "maxWaitTimeExtension"), -[NFTNEPService minWaitTime](self, "minWaitTime"), -[NFTNEPService maxMessageSize](self, "maxMessageSize")];

  return v5;
}

@end