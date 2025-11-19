@interface NSPCachedCredential
- (NSPCachedCredential)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSPCachedCredential

- (id)description
{
  if (self)
  {
    v3 = [[NSMutableString alloc] initWithCapacity:0];
    sub_1000417D0(v3, self->_expirationDate, @"Expiration date", 0, 14);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSPCachedCredential)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = NSPCachedCredential;
  v5 = [(NSPCachedCredential *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tokenExpirationDate"];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"credentialData"];
    credentialData = v5->_credentialData;
    v5->_credentialData = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tokenKeyID"];
    keyID = v5->_keyID;
    v5->_keyID = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  if (self)
  {
    [v5 encodeObject:self->_expirationDate forKey:@"tokenExpirationDate"];
    [v5 encodeObject:self->_credentialData forKey:@"credentialData"];
    keyID = self->_keyID;
  }

  else
  {
    [v5 encodeObject:0 forKey:@"tokenExpirationDate"];
    [v5 encodeObject:0 forKey:@"credentialData"];
    keyID = 0;
  }

  [v5 encodeObject:keyID forKey:@"tokenKeyID"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[NSPCachedCredential allocWithZone:?]];
  v5 = v4;
  if (self)
  {
    sub_10000A4F0(v4, self->_expirationDate);
    sub_10003B8A4(v5, self->_credentialData);
    keyID = self->_keyID;
  }

  else
  {
    sub_10000A4F0(v4, 0);
    sub_10003B8A4(v5, 0);
    keyID = 0;
  }

  sub_100006B14(v5, keyID);
  return v5;
}

@end