@interface KCSharingRemoteItem
- (BOOL)isEqual:(id)a3;
- (KCSharingInternetPasswordCredential)internetPassword;
- (KCSharingPrivateKeyCredential)privateKey;
- (KCSharingRemoteItem)initWithLocalItem:(id)a3;
- (NSString)description;
- (id)initPasskeyWithPrivateKey:(id)a3;
- (id)initPasskeyWithProto:(id)a3 sharingGroup:(id)a4 error:(id *)a5;
- (id)initPasswordWithInternetPassword:(id)a3;
- (id)initPasswordWithProto:(id)a3 sharingGroup:(id)a4 error:(id *)a5;
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
    v5 = [(KCSharingInternetPasswordCredential *)self->_internetPassword proto];
    [v4 setInternetPassword:v5];
    goto LABEL_5;
  }

  if (type == 1)
  {
    v4 = objc_opt_new();
    v5 = [(KCSharingPrivateKeyCredential *)self->_privateKey proto];
    [v4 setPrivateKey:v5];
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
  v4 = [(KCSharingRemoteItem *)self type];
  if (v4 == 2)
  {
    v5 = [(KCSharingRemoteItem *)self internetPassword];
    [NSString stringWithFormat:@"KCSharingRemoteItem(password:%@)", v5];
  }

  else
  {
    if (v4 != 1)
    {
      goto LABEL_6;
    }

    v5 = [(KCSharingRemoteItem *)self privateKey];
    [NSString stringWithFormat:@"KCSharingRemoteItem(privateKey:%@)", v5];
  }
  v2 = ;

LABEL_6:

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v10 = 1;
  }

  else
  {
    if ([(KCSharingRemoteItem *)v4 isMemberOfClass:objc_opt_class()])
    {
      v5 = v4;
      type = self->_type;
      if (type == [(KCSharingRemoteItem *)v5 type])
      {
        v7 = self->_type;
        if (v7 == 2)
        {
          v8 = [(KCSharingRemoteItem *)self internetPassword];
          v9 = [(KCSharingRemoteItem *)v5 internetPassword];
          goto LABEL_11;
        }

        if (v7 == 1)
        {
          v8 = [(KCSharingRemoteItem *)self privateKey];
          v9 = [(KCSharingRemoteItem *)v5 privateKey];
LABEL_11:
          v11 = v9;
          v10 = [v8 isEqual:v9];

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

- (id)initPasswordWithProto:(id)a3 sharingGroup:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [KCSharingInternetPasswordCredential alloc];
  v11 = [v9 internetPassword];

  v12 = [(KCSharingInternetPasswordCredential *)v10 initWithProto:v11 sharingGroup:v8 error:a5];
  if (v12)
  {
    self = [(KCSharingRemoteItem *)self initPasswordWithInternetPassword:v12];
    v13 = self;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)initPasskeyWithProto:(id)a3 sharingGroup:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [KCSharingPrivateKeyCredential alloc];
  v11 = [v9 privateKey];

  v12 = [(KCSharingPrivateKeyCredential *)v10 initWithProto:v11 sharingGroup:v8 error:a5];
  if (v12)
  {
    self = [(KCSharingRemoteItem *)self initPasskeyWithPrivateKey:v12];
    v13 = self;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)initPasswordWithInternetPassword:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = KCSharingRemoteItem;
  v6 = [(KCSharingRemoteItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_type = 2;
    objc_storeStrong(&v6->_internetPassword, a3);
  }

  return v7;
}

- (id)initPasskeyWithPrivateKey:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = KCSharingRemoteItem;
  v6 = [(KCSharingRemoteItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_type = 1;
    objc_storeStrong(&v6->_privateKey, a3);
  }

  return v7;
}

- (KCSharingRemoteItem)initWithLocalItem:(id)a3
{
  v4 = a3;
  v5 = [v4 type];
  if (v5 == 2)
  {
    v6 = [v4 internetPassword];
    v7 = [(KCSharingRemoteItem *)self initPasswordWithInternetPassword:v6];
  }

  else
  {
    if (v5 != 1)
    {
      v8 = 0;
      goto LABEL_7;
    }

    v6 = [v4 privateKey];
    v7 = [(KCSharingRemoteItem *)self initPasskeyWithPrivateKey:v6];
  }

  self = v7;

  v8 = self;
LABEL_7:

  return v8;
}

@end