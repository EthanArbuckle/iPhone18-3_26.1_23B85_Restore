@interface KCSharingLocalItem
- (BOOL)isEqual:(id)equal;
- (KCSharingInternetPasswordCredential)internetPassword;
- (KCSharingLocalFingerprint)internetPasswordFingerprint;
- (KCSharingLocalFingerprint)privateKeyFingerprint;
- (KCSharingPrivateKeyCredential)privateKey;
- (NSDate)modificationDate;
- (NSString)description;
- (id)initPasskeyWithPrivateKeyDatabaseItem:(SecDbItem *)item error:(id *)error;
- (id)initPasswordWithInternetPasswordDatabaseItem:(SecDbItem *)item error:(id *)error;
- (unint64_t)hash;
@end

@implementation KCSharingLocalItem

- (NSDate)modificationDate
{
  type = self->_type;
  if (type == 2)
  {
    internetPassword = [(KCSharingLocalItem *)self internetPassword];
  }

  else
  {
    if (type != 1)
    {
      goto LABEL_6;
    }

    internetPassword = [(KCSharingLocalItem *)self privateKey];
  }

  v5 = internetPassword;
  modificationDate = [internetPassword modificationDate];

LABEL_6:

  return modificationDate;
}

- (KCSharingLocalFingerprint)internetPasswordFingerprint
{
  if (self->_type != 2)
  {
    v6 = +[NSAssertionHandler currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"KCSharingLocalItem.m" lineNumber:111 description:{@"Can't get Internet password fingerprint for local item of type %ld", self->_type}];
  }

  internetPasswordFingerprint = self->_internetPasswordFingerprint;

  return internetPasswordFingerprint;
}

- (KCSharingInternetPasswordCredential)internetPassword
{
  if (self->_type != 2)
  {
    v6 = +[NSAssertionHandler currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"KCSharingLocalItem.m" lineNumber:106 description:{@"Can't get Internet password for local item of type %ld", self->_type}];
  }

  internetPassword = self->_internetPassword;

  return internetPassword;
}

- (KCSharingLocalFingerprint)privateKeyFingerprint
{
  if (self->_type != 1)
  {
    v6 = +[NSAssertionHandler currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"KCSharingLocalItem.m" lineNumber:101 description:{@"Can't get private key fingerprint for local item of type %ld", self->_type}];
  }

  privateKeyFingerprint = self->_privateKeyFingerprint;

  return privateKeyFingerprint;
}

- (KCSharingPrivateKeyCredential)privateKey
{
  if (self->_type != 1)
  {
    v6 = +[NSAssertionHandler currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"KCSharingLocalItem.m" lineNumber:96 description:{@"Can't get private key for local item of type %ld", self->_type}];
  }

  privateKey = self->_privateKey;

  return privateKey;
}

- (NSString)description
{
  type = [(KCSharingLocalItem *)self type];
  if (type == 2)
  {
    internetPassword = [(KCSharingLocalItem *)self internetPassword];
    internetPasswordFingerprint = [(KCSharingLocalItem *)self internetPasswordFingerprint];
    [NSString stringWithFormat:@"KCSharingLocalItem(password:%@ passwordFingerprint:%@)", internetPassword, internetPasswordFingerprint];
  }

  else
  {
    if (type != 1)
    {
      goto LABEL_6;
    }

    internetPassword = [(KCSharingLocalItem *)self privateKey];
    internetPasswordFingerprint = [(KCSharingLocalItem *)self privateKeyFingerprint];
    [NSString stringWithFormat:@"KCSharingLocalItem(privateKey:%@ privateKeyFingerprint:%@)", internetPassword, internetPasswordFingerprint];
  }
  v2 = ;

LABEL_6:

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else
  {
    if ([(KCSharingLocalItem *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v5 = equalCopy;
      type = self->_type;
      if (type == [(KCSharingLocalItem *)v5 type])
      {
        v7 = self->_type;
        if (v7 == 2)
        {
          internetPassword = [(KCSharingLocalItem *)self internetPassword];
          internetPassword2 = [(KCSharingLocalItem *)v5 internetPassword];
          if ([internetPassword isEqual:internetPassword2])
          {
            internetPasswordFingerprint = [(KCSharingLocalItem *)self internetPasswordFingerprint];
            internetPasswordFingerprint2 = [(KCSharingLocalItem *)v5 internetPasswordFingerprint];
            goto LABEL_13;
          }

LABEL_14:
          v12 = 0;
          goto LABEL_15;
        }

        if (v7 == 1)
        {
          internetPassword = [(KCSharingLocalItem *)self privateKey];
          internetPassword2 = [(KCSharingLocalItem *)v5 privateKey];
          if ([internetPassword isEqual:internetPassword2])
          {
            internetPasswordFingerprint = [(KCSharingLocalItem *)self privateKeyFingerprint];
            internetPasswordFingerprint2 = [(KCSharingLocalItem *)v5 privateKeyFingerprint];
LABEL_13:
            v13 = internetPasswordFingerprint2;
            v12 = [internetPasswordFingerprint isEqual:internetPasswordFingerprint2];

LABEL_15:
            goto LABEL_16;
          }

          goto LABEL_14;
        }
      }

      v12 = 0;
LABEL_16:

      goto LABEL_17;
    }

    v12 = 0;
  }

LABEL_17:

  return v12;
}

- (unint64_t)hash
{
  result = self->_type;
  if (result == 1)
  {
    v4 = 24;
    v5 = 961;
    v6 = 16;
  }

  else
  {
    if (result != 2)
    {
      return result;
    }

    v4 = 40;
    v5 = 1922;
    v6 = 32;
  }

  v7 = [*(&self->super.isa + v6) hash];
  return [*(&self->super.isa + v4) hash] + 32 * v7 + v5 - v7;
}

- (id)initPasswordWithInternetPasswordDatabaseItem:(SecDbItem *)item error:(id *)error
{
  v14.receiver = self;
  v14.super_class = KCSharingLocalItem;
  v6 = [(KCSharingLocalItem *)&v14 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_4;
  }

  v6->_type = 2;
  v8 = [[KCSharingInternetPasswordCredential alloc] initWithDatabaseItem:item error:error];
  internetPassword = v7->_internetPassword;
  v7->_internetPassword = v8;

  if (!v7->_internetPassword)
  {
    goto LABEL_5;
  }

  v10 = [[KCSharingLocalFingerprint alloc] initWithDatabaseItem:item error:error];
  internetPasswordFingerprint = v7->_internetPasswordFingerprint;
  v7->_internetPasswordFingerprint = v10;

  if (v7->_internetPasswordFingerprint)
  {
LABEL_4:
    v12 = v7;
  }

  else
  {
LABEL_5:
    v12 = 0;
  }

  return v12;
}

- (id)initPasskeyWithPrivateKeyDatabaseItem:(SecDbItem *)item error:(id *)error
{
  v14.receiver = self;
  v14.super_class = KCSharingLocalItem;
  v6 = [(KCSharingLocalItem *)&v14 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_4;
  }

  v6->_type = 1;
  v8 = [[KCSharingPrivateKeyCredential alloc] initWithDatabaseItem:item error:error];
  privateKey = v7->_privateKey;
  v7->_privateKey = v8;

  if (!v7->_privateKey)
  {
    goto LABEL_5;
  }

  v10 = [[KCSharingLocalFingerprint alloc] initWithDatabaseItem:item error:error];
  privateKeyFingerprint = v7->_privateKeyFingerprint;
  v7->_privateKeyFingerprint = v10;

  if (v7->_privateKeyFingerprint)
  {
LABEL_4:
    v12 = v7;
  }

  else
  {
LABEL_5:
    v12 = 0;
  }

  return v12;
}

@end