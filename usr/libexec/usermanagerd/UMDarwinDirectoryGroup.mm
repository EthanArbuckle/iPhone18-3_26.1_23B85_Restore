@interface UMDarwinDirectoryGroup
- (BOOL)isEqual:(id)equal;
- (id)description;
- (unint64_t)hash;
@end

@implementation UMDarwinDirectoryGroup

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
      sub_100098460(equalCopy, self, &v7);
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
    gid = self->_gid;
    v5 = self->_uuid;
    fullName = self->_fullName;
  }

  else
  {
    v5 = 0;
    v3 = 0;
    gid = 0;
    fullName = 0;
  }

  fullName = [NSString stringWithFormat:@"<UMDarwinDirectoryGroup name:%@ gid:%d uuid:%@ fullName:%@", v3, gid, v5, fullName];

  return fullName;
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

  v4 = name;
  v5 = [(NSString *)v4 hash];
  v6 = v5;
  if (self)
  {
    v6 = &v5[self->_gid];
    uuid = self->_uuid;
  }

  else
  {
    uuid = 0;
  }

  v8 = uuid;
  v9 = [(NSUUID *)v8 hash];
  if (self)
  {
    fullName = self->_fullName;
  }

  else
  {
    fullName = 0;
  }

  v11 = &v6[v9];
  v12 = [(NSString *)fullName hash];

  return &v11[v12];
}

@end