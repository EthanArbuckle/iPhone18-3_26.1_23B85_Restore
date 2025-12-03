@interface _REMCKIdentifierAccountIdentifierPair
- (BOOL)isEqual:(id)equal;
- (_REMCKIdentifierAccountIdentifierPair)initWithCkIdentifier:(id)identifier accountIdentifier:(id)accountIdentifier;
- (id)description;
- (unint64_t)hash;
@end

@implementation _REMCKIdentifierAccountIdentifierPair

- (_REMCKIdentifierAccountIdentifierPair)initWithCkIdentifier:(id)identifier accountIdentifier:(id)accountIdentifier
{
  identifierCopy = identifier;
  accountIdentifierCopy = accountIdentifier;
  v9 = accountIdentifierCopy;
  if (identifierCopy)
  {
    if (accountIdentifierCopy)
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
    objc_storeStrong(&v10->_ckIdentifier, identifier);
    objc_storeStrong(&v11->_accountIdentifier, accountIdentifier);
  }

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy != self)
  {
    v6 = equalCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      ckIdentifier = [(_REMCKIdentifierAccountIdentifierPair *)self ckIdentifier];
      ckIdentifier2 = [(_REMCKIdentifierAccountIdentifierPair *)v6 ckIdentifier];
      v9 = ckIdentifier2;
      if (ckIdentifier == ckIdentifier2)
      {
      }

      else
      {
        ckIdentifier3 = [(_REMCKIdentifierAccountIdentifierPair *)self ckIdentifier];
        ckIdentifier4 = [(_REMCKIdentifierAccountIdentifierPair *)v6 ckIdentifier];
        v12 = [ckIdentifier3 isEqual:ckIdentifier4];

        if (!v12)
        {
          goto LABEL_5;
        }
      }

      accountIdentifier = [(_REMCKIdentifierAccountIdentifierPair *)self accountIdentifier];
      accountIdentifier2 = [(_REMCKIdentifierAccountIdentifierPair *)v6 accountIdentifier];
      if (accountIdentifier == accountIdentifier2)
      {
        v13 = 1;
      }

      else
      {
        accountIdentifier3 = [(_REMCKIdentifierAccountIdentifierPair *)self accountIdentifier];
        accountIdentifier4 = [(_REMCKIdentifierAccountIdentifierPair *)v6 accountIdentifier];
        v13 = [accountIdentifier3 isEqual:accountIdentifier4];
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
  ckIdentifier = [(_REMCKIdentifierAccountIdentifierPair *)self ckIdentifier];
  v4 = [ckIdentifier hash];
  accountIdentifier = [(_REMCKIdentifierAccountIdentifierPair *)self accountIdentifier];
  v6 = [accountIdentifier hash];

  return v6 ^ v4;
}

- (id)description
{
  ckIdentifier = [(_REMCKIdentifierAccountIdentifierPair *)self ckIdentifier];
  accountIdentifier = [(_REMCKIdentifierAccountIdentifierPair *)self accountIdentifier];
  v5 = [NSString stringWithFormat:@"(ckIdentifier: %@, accountIdentifier: %@)", ckIdentifier, accountIdentifier];

  return v5;
}

@end