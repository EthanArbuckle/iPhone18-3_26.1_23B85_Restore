@interface NRDOrphanedConnection
- (BOOL)isEqual:(id)equal;
- (id)description;
- (unint64_t)hash;
@end

@implementation NRDOrphanedConnection

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if (self)
    {
      nrUUID = self->_nrUUID;
    }

    else
    {
      nrUUID = 0;
    }

    v7 = nrUUID;
    if (v5)
    {
      v8 = v5[1];
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    if (![(NSUUID *)v7 isEqual:v9])
    {
      v12 = 0;
      goto LABEL_13;
    }

    if (self)
    {
      connection = self->_connection;
      if (v5)
      {
LABEL_9:
        v11 = v5[2];
LABEL_10:
        v12 = connection == v11;
LABEL_13:

        goto LABEL_14;
      }
    }

    else
    {
      connection = 0;
      if (v5)
      {
        goto LABEL_9;
      }
    }

    v11 = 0;
    goto LABEL_10;
  }

  v12 = 0;
LABEL_14:

  return v12;
}

- (unint64_t)hash
{
  selfCopy = self;
  if (self)
  {
    nrUUID = self->_nrUUID;
  }

  else
  {
    nrUUID = 0;
  }

  v4 = nrUUID;
  v5 = [(NSUUID *)v4 hash];
  if (selfCopy)
  {
    selfCopy = selfCopy->_connection;
  }

  return selfCopy + v5;
}

- (id)description
{
  v3 = [NSString alloc];
  if (self)
  {
    v4 = self->_nrUUID;
    connection = self->_connection;
  }

  else
  {
    v4 = 0;
    connection = 0;
  }

  connection = [v3 initWithFormat:@"[OrphanedConnection:%@, %@]", v4, connection];

  return connection;
}

@end