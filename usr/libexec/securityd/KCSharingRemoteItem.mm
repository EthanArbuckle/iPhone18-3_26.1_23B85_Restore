@interface KCSharingRemoteItem
- (BOOL)isEqual:(id)equal;
- (KCSharingInternetPasswordCredential)internetPassword;
- (KCSharingPrivateKeyCredential)privateKey;
- (KCSharingRemoteItem)initWithLocalItem:(id)item;
- (NSString)description;
- (id)initPasskeyWithPrivateKey:(id)key;
- (id)initPasskeyWithProto:(id)proto sharingGroup:(id)group error:(id *)error;
- (id)initPasswordWithInternetPassword:(id)password;
- (id)initPasswordWithProto:(id)proto sharingGroup:(id)group error:(id *)error;
- (id)proto;
- (unint64_t)hash;
@end

@implementation KCSharingRemoteItem

- (id)proto
{
  type = self->_type;
  if (type == 2)
  {
    v4 = objc_opt_new();
    proto = [(KCSharingInternetPasswordCredential *)self->_internetPassword proto];
    [v4 setInternetPassword:proto];
    goto LABEL_5;
  }

  if (type == 1)
  {
    v4 = objc_opt_new();
    proto = [(KCSharingPrivateKeyCredential *)self->_privateKey proto];
    [v4 setPrivateKey:proto];
LABEL_5:

    goto LABEL_7;
  }

  v4 = 0;
LABEL_7:

  return v4;
}

- (KCSharingInternetPasswordCredential)internetPassword
{
  if (self->_type != 2)
  {
    v6 = +[NSAssertionHandler currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"KCSharingRemoteItem.m" lineNumber:115 description:{@"Can't get Internet password for remote item of type %ld", self->_type}];
  }

  internetPassword = self->_internetPassword;

  return internetPassword;
}

- (KCSharingPrivateKeyCredential)privateKey
{
  if (self->_type != 1)
  {
    v6 = +[NSAssertionHandler currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"KCSharingRemoteItem.m" lineNumber:110 description:{@"Can't get private key for remote item of type %ld", self->_type}];
  }

  privateKey = self->_privateKey;

  return privateKey;
}

- (NSString)description
{
  type = [(KCSharingRemoteItem *)self type];
  if (type == 2)
  {
    internetPassword = [(KCSharingRemoteItem *)self internetPassword];
    [NSString stringWithFormat:@"KCSharingRemoteItem(password:%@)", internetPassword];
  }

  else
  {
    if (type != 1)
    {
      goto LABEL_6;
    }

    internetPassword = [(KCSharingRemoteItem *)self privateKey];
    [NSString stringWithFormat:@"KCSharingRemoteItem(privateKey:%@)", internetPassword];
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
    v10 = 1;
  }

  else
  {
    if ([(KCSharingRemoteItem *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v5 = equalCopy;
      type = self->_type;
      if (type == [(KCSharingRemoteItem *)v5 type])
      {
        v7 = self->_type;
        if (v7 == 2)
        {
          internetPassword = [(KCSharingRemoteItem *)self internetPassword];
          internetPassword2 = [(KCSharingRemoteItem *)v5 internetPassword];
          goto LABEL_11;
        }

        if (v7 == 1)
        {
          internetPassword = [(KCSharingRemoteItem *)self privateKey];
          internetPassword2 = [(KCSharingRemoteItem *)v5 privateKey];
LABEL_11:
          v11 = internetPassword2;
          v10 = [internetPassword isEqual:internetPassword2];

          goto LABEL_12;
        }
      }

      v10 = 0;
LABEL_12:

      goto LABEL_13;
    }

    v10 = 0;
  }

LABEL_13:

  return v10;
}

- (unint64_t)hash
{
  type = self->_type;
  if (type == 1)
  {
    v3 = 31;
    v4 = 16;
    return [*(&self->super.isa + v4) hash] + v3;
  }

  if (type == 2)
  {
    v3 = 62;
    v4 = 24;
    return [*(&self->super.isa + v4) hash] + v3;
  }

  return type;
}

- (id)initPasswordWithProto:(id)proto sharingGroup:(id)group error:(id *)error
{
  groupCopy = group;
  protoCopy = proto;
  v10 = [KCSharingInternetPasswordCredential alloc];
  internetPassword = [protoCopy internetPassword];

  v12 = [(KCSharingInternetPasswordCredential *)v10 initWithProto:internetPassword sharingGroup:groupCopy error:error];
  if (v12)
  {
    self = [(KCSharingRemoteItem *)self initPasswordWithInternetPassword:v12];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)initPasskeyWithProto:(id)proto sharingGroup:(id)group error:(id *)error
{
  groupCopy = group;
  protoCopy = proto;
  v10 = [KCSharingPrivateKeyCredential alloc];
  privateKey = [protoCopy privateKey];

  v12 = [(KCSharingPrivateKeyCredential *)v10 initWithProto:privateKey sharingGroup:groupCopy error:error];
  if (v12)
  {
    self = [(KCSharingRemoteItem *)self initPasskeyWithPrivateKey:v12];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)initPasswordWithInternetPassword:(id)password
{
  passwordCopy = password;
  v9.receiver = self;
  v9.super_class = KCSharingRemoteItem;
  v6 = [(KCSharingRemoteItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_type = 2;
    objc_storeStrong(&v6->_internetPassword, password);
  }

  return v7;
}

- (id)initPasskeyWithPrivateKey:(id)key
{
  keyCopy = key;
  v9.receiver = self;
  v9.super_class = KCSharingRemoteItem;
  v6 = [(KCSharingRemoteItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_type = 1;
    objc_storeStrong(&v6->_privateKey, key);
  }

  return v7;
}

- (KCSharingRemoteItem)initWithLocalItem:(id)item
{
  itemCopy = item;
  type = [itemCopy type];
  if (type == 2)
  {
    internetPassword = [itemCopy internetPassword];
    v7 = [(KCSharingRemoteItem *)self initPasswordWithInternetPassword:internetPassword];
  }

  else
  {
    if (type != 1)
    {
      selfCopy = 0;
      goto LABEL_7;
    }

    internetPassword = [itemCopy privateKey];
    v7 = [(KCSharingRemoteItem *)self initPasskeyWithPrivateKey:internetPassword];
  }

  self = v7;

  selfCopy = self;
LABEL_7:

  return selfCopy;
}

@end