@interface _REMCKIdentifierAccountIdentifierPair
- (BOOL)isEqual:(id)a3;
- (_REMCKIdentifierAccountIdentifierPair)initWithCkIdentifier:(id)a3 accountIdentifier:(id)a4;
- (id)description;
- (unint64_t)hash;
@end

@implementation _REMCKIdentifierAccountIdentifierPair

- (_REMCKIdentifierAccountIdentifierPair)initWithCkIdentifier:(id)a3 accountIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_10076D984();
    if (v9)
    {
      goto LABEL_3;
    }
  }

  sub_10076DA28();
LABEL_3:
  v13.receiver = self;
  v13.super_class = _REMCKIdentifierAccountIdentifierPair;
  v10 = [(_REMCKIdentifierAccountIdentifierPair *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_ckIdentifier, a3);
    objc_storeStrong(&v11->_accountIdentifier, a4);
  }

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 != self)
  {
    v6 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [(_REMCKIdentifierAccountIdentifierPair *)self ckIdentifier];
      v8 = [(_REMCKIdentifierAccountIdentifierPair *)v6 ckIdentifier];
      v9 = v8;
      if (v7 == v8)
      {
      }

      else
      {
        v10 = [(_REMCKIdentifierAccountIdentifierPair *)self ckIdentifier];
        v11 = [(_REMCKIdentifierAccountIdentifierPair *)v6 ckIdentifier];
        v12 = [v10 isEqual:v11];

        if (!v12)
        {
          goto LABEL_5;
        }
      }

      v14 = [(_REMCKIdentifierAccountIdentifierPair *)self accountIdentifier];
      v15 = [(_REMCKIdentifierAccountIdentifierPair *)v6 accountIdentifier];
      if (v14 == v15)
      {
        v13 = 1;
      }

      else
      {
        v16 = [(_REMCKIdentifierAccountIdentifierPair *)self accountIdentifier];
        v17 = [(_REMCKIdentifierAccountIdentifierPair *)v6 accountIdentifier];
        v13 = [v16 isEqual:v17];
      }

      goto LABEL_12;
    }

LABEL_5:
    v13 = 0;
LABEL_12:

    goto LABEL_13;
  }

  v13 = 1;
LABEL_13:

  return v13 & 1;
}

- (unint64_t)hash
{
  v3 = [(_REMCKIdentifierAccountIdentifierPair *)self ckIdentifier];
  v4 = [v3 hash];
  v5 = [(_REMCKIdentifierAccountIdentifierPair *)self accountIdentifier];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (id)description
{
  v3 = [(_REMCKIdentifierAccountIdentifierPair *)self ckIdentifier];
  v4 = [(_REMCKIdentifierAccountIdentifierPair *)self accountIdentifier];
  v5 = [NSString stringWithFormat:@"(ckIdentifier: %@, accountIdentifier: %@)", v3, v4];

  return v5;
}

@end