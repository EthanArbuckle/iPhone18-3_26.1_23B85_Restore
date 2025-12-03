@interface UMDarwinDirectoryUser
- (BOOL)isEqual:(id)equal;
- (id)description;
- (unint64_t)hash;
@end

@implementation UMDarwinDirectoryUser

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      sub_100098180(equalCopy, self, &v7);
      v5 = v7;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)description
{
  if (self)
  {
    v3 = self->_name;
    uid = self->_uid;
    v5 = self->_uuid;
    v6 = self->_primaryGroupUUID;
    v7 = self->_fullName;
    v8 = self->_homeDirectory;
    v9 = self->_shell;
    memberships = self->_memberships;
  }

  else
  {
    nullsub_1(0, a2);
    v9 = 0;
    v7 = 0;
    v5 = 0;
    v3 = 0;
    uid = 0;
    v6 = 0;
    v8 = 0;
    memberships = 0;
  }

  memberships = [NSString stringWithFormat:@"<UMDarwinDirectoryUser name:%@ uid:%d uuid:%@ primaryGroupUUID:%@ fullName:%@ homeDirectory:%@ shell:%@ memberships:%@", v3, uid, v5, v6, v7, v8, v9, memberships];

  return memberships;
}

- (unint64_t)hash
{
  if (self)
  {
    name = self->_name;
  }

  else
  {
    name = 0;
  }

  v25 = name;
  v4 = [(NSString *)v25 hash];
  v5 = v4;
  if (self)
  {
    v5 = &v4[self->_uid];
    uuid = self->_uuid;
  }

  else
  {
    uuid = 0;
  }

  v7 = uuid;
  v24 = [(NSUUID *)v7 hash];
  if (self)
  {
    primaryGroupUUID = self->_primaryGroupUUID;
  }

  else
  {
    primaryGroupUUID = 0;
  }

  v9 = primaryGroupUUID;
  v10 = [(NSUUID *)v9 hash];
  if (self)
  {
    fullName = self->_fullName;
  }

  else
  {
    fullName = 0;
  }

  v12 = fullName;
  v13 = [(NSString *)v12 hash];
  if (self)
  {
    homeDirectory = self->_homeDirectory;
  }

  else
  {
    homeDirectory = 0;
  }

  v15 = homeDirectory;
  v16 = [(NSString *)v15 hash];
  if (self)
  {
    shell = self->_shell;
  }

  else
  {
    shell = 0;
  }

  v18 = shell;
  v19 = [(NSString *)v18 hash];
  if (self)
  {
    memberships = self->_memberships;
  }

  else
  {
    memberships = 0;
  }

  v21 = &v5[v24 + v10 + v13];
  v22 = &v19[v16 + [(NSMutableSet *)memberships hash]];

  return &v22[v21];
}

@end