@interface DAAccount
- (BOOL)isConsideredTheSame:(id)a3;
@end

@implementation DAAccount

- (BOOL)isConsideredTheSame:(id)a3
{
  v4 = a3;
  v5 = [(DAAccount *)self emailAddress];
  v6 = [v4 emailAddress];
  if ([v5 isEqualToString:v6])
  {
    v7 = [(DAAccount *)self host];
    v8 = [v4 host];
    if (![v7 isEqualToString:v8] || (v9 = kDAExchangeOAuthSupportedKey, v10 = -[DAAccount accountBoolPropertyForKey:](self, "accountBoolPropertyForKey:", kDAExchangeOAuthSupportedKey), v10 != objc_msgSend(v4, "accountBoolPropertyForKey:", v9)))
    {
      v11 = 0;
LABEL_24:

      goto LABEL_25;
    }

    v12 = kDAExchangeOAuthURI;
    v13 = [(DAAccount *)self accountPropertyForKey:kDAExchangeOAuthURI];
    if (v13 || ([v4 accountPropertyForKey:v12], (v25 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v14 = [(DAAccount *)self accountPropertyForKey:v12];
      v15 = [v4 accountPropertyForKey:v12];
      if (![v14 isEqual:v15])
      {
        v11 = 0;
LABEL_20:

        goto LABEL_21;
      }

      v24 = v15;
      v27 = v14;
      v16 = 1;
    }

    else
    {
      v25 = 0;
      v16 = 0;
    }

    v17 = kDAExchangeTokenRequestURI;
    v18 = [(DAAccount *)self accountPropertyForKey:kDAExchangeTokenRequestURI];
    if (v18 || ([v4 accountPropertyForKey:v17], (v23 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v26 = v16;
      v19 = [(DAAccount *)self accountPropertyForKey:v17];
      v20 = [v4 accountPropertyForKey:v17];
      v11 = [v19 isEqual:v20];

      if (v18)
      {

        v14 = v27;
        if (v26)
        {
          v15 = v24;
          goto LABEL_20;
        }

LABEL_21:
        if (!v13)
        {
        }

        goto LABEL_24;
      }

      v14 = v27;
      LOBYTE(v16) = v26;
      v21 = v23;
    }

    else
    {
      v21 = 0;
      v11 = 1;
      v14 = v27;
    }

    v15 = v24;
    if (v16)
    {
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  v11 = 0;
LABEL_25:

  return v11;
}

@end