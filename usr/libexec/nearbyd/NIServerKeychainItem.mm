@interface NIServerKeychainItem
- (BOOL)isEqual:(id)a3;
- (NIServerKeychainItem)initWithService:(id)a3 account:(id)a4 data:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation NIServerKeychainItem

- (NIServerKeychainItem)initWithService:(id)a3 account:(id)a4 data:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (!v9)
  {
    v16 = "service";
    v17 = 734;
    goto LABEL_10;
  }

  if (!v10)
  {
    v16 = "account";
    v17 = 735;
    goto LABEL_10;
  }

  if (!v11)
  {
    v16 = "data";
    v17 = 736;
LABEL_10:
    __assert_rtn("[NIServerKeychainItem initWithService:account:data:]", "NIServerKeychainManager.mm", v17, v16);
  }

  v18.receiver = self;
  v18.super_class = NIServerKeychainItem;
  v13 = [(NIServerKeychainItem *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_service, a3);
    objc_storeStrong(&v14->_account, a4);
    objc_storeStrong(&v14->_data, a5);
  }

  return v14;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [NIServerKeychainItem alloc];
  service = self->_service;
  account = self->_account;
  data = self->_data;

  return [(NIServerKeychainItem *)v4 initWithService:service account:account data:data];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = v5;
    if (v5 == self)
    {
      v16 = 1;
    }

    else
    {
      service = v5->_service;
      v8 = self->_service;
      v9 = [(NSString *)service isEqualToString:v8];
      v10 = (service | v8) == 0;
      account = v6->_account;
      v12 = self->_account;
      LODWORD(service) = [account isEqualToString:v12];
      data = v6->_data;
      v14 = (data | self->_data) == 0;
      v15 = (((account | v12) == 0) | service) & (v14 | [data isEqualToData:?]);
      if ((v10 | v9))
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_service hash];
  v4 = [(NSString *)self->_account hash]^ v3;
  return v4 ^ [(NSData *)self->_data hash];
}

- (id)description
{
  if (+[NIPlatformInfo isInternalBuild])
  {
    [NSString stringWithFormat:@"%@", self->_data];
  }

  else
  {
    [NSString stringWithFormat:@"{length = %d}", [(NSData *)self->_data length]];
  }
  v3 = ;
  v4 = [NSString stringWithFormat:@"<%@ -- %@ : %@>", self->_service, self->_account, v3];

  return v4;
}

@end