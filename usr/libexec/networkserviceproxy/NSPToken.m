@interface NSPToken
- (NSPToken)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSPToken

- (id)description
{
  if (self)
  {
    v3 = [[NSMutableString alloc] initWithCapacity:0];
    sub_10004208C(v3, [(NSMutableArray *)self->_tokens count], @"Token Count", 0, 14);
    sub_10004208C(v3, [(NSMutableArray *)self->_salts count], @"Salt Count", 0, 14);
    sub_1000417D0(v3, self->_expirationDate, @"Expiration date", 0, 14);
    sub_1000417D0(v3, self->_pairedTokenAccount, @"Paired token account", 0, 14);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSPToken)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = NSPToken;
  v5 = [(NSPToken *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"tokenArray"];
    if (v6)
    {
      v7 = [NSMutableArray arrayWithArray:v6];
      tokens = v5->_tokens;
      v5->_tokens = v7;
    }

    v9 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"saltsArray"];
    if (v9)
    {
      v10 = [NSMutableArray arrayWithArray:v9];
      salts = v5->_salts;
      v5->_salts = v10;
    }

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tokenExpirationDate"];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pairedTokenAccount"];
    pairedTokenAccount = v5->_pairedTokenAccount;
    v5->_pairedTokenAccount = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  if (self)
  {
    [v5 encodeObject:self->_tokens forKey:@"tokenArray"];
    [v5 encodeObject:self->_salts forKey:@"saltsArray"];
    [v5 encodeObject:self->_expirationDate forKey:@"tokenExpirationDate"];
    pairedTokenAccount = self->_pairedTokenAccount;
  }

  else
  {
    [v5 encodeObject:0 forKey:@"tokenArray"];
    [v5 encodeObject:0 forKey:@"saltsArray"];
    [v5 encodeObject:0 forKey:@"tokenExpirationDate"];
    pairedTokenAccount = 0;
  }

  [v5 encodeObject:pairedTokenAccount forKey:@"pairedTokenAccount"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[NSPToken allocWithZone:?]];
  v5 = v4;
  if (self)
  {
    sub_10000A4F0(v4, self->_tokens);
    sub_10003B8A4(v5, self->_salts);
    sub_100006B14(v5, self->_expirationDate);
    pairedTokenAccount = self->_pairedTokenAccount;
  }

  else
  {
    sub_10000A4F0(v4, 0);
    sub_10003B8A4(v5, 0);
    sub_100006B14(v5, 0);
    pairedTokenAccount = 0;
  }

  sub_10001B680(v5, pairedTokenAccount);
  return v5;
}

@end