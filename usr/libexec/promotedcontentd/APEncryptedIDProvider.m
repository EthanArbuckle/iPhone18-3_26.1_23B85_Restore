@interface APEncryptedIDProvider
+ (id)provider;
- (APEncryptedIDProvider)init;
- (id)encryptedIDsForIDAccountPrivate:(id)a3;
- (void)_encryptIDs;
- (void)userAccountChanged;
@end

@implementation APEncryptedIDProvider

+ (id)provider
{
  if (qword_1004E6A48 != -1)
  {
    sub_100393F28();
  }

  v3 = qword_1004E6A40;

  return v3;
}

- (APEncryptedIDProvider)init
{
  v5.receiver = self;
  v5.super_class = APEncryptedIDProvider;
  v2 = [(APEncryptedIDProvider *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(APEncryptedIDProvider *)v2 _encryptIDs];
  }

  return v3;
}

- (void)userAccountChanged
{
  v3 = [(APEncryptedIDProvider *)self currentEncryptedIDs];
  [(APEncryptedIDProvider *)self setOldEncryptedIDs:v3];

  [(APEncryptedIDProvider *)self _encryptIDs];
}

- (void)_encryptIDs
{
  v3 = +[APIDAccountProvider userAccount];
  if (!v3)
  {
    v4 = APLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "User Account is nil", v6, 2u);
    }
  }

  v5 = [[APEncryptedID alloc] initWithIDAccountPrivate:v3];
  [(APEncryptedIDProvider *)self setCurrentEncryptedIDs:v5];
}

- (id)encryptedIDsForIDAccountPrivate:(id)a3
{
  v4 = a3;
  v5 = [(APEncryptedIDProvider *)self currentEncryptedIDs];
  v6 = [v5 unencryptedIAdID];
  v7 = [v4 iAdID];
  v8 = [v6 isEqual:v7];

  if (v8)
  {
    v9 = v5;
  }

  else
  {
    v10 = [(APEncryptedIDProvider *)self oldEncryptedIDs];
    v11 = v10;
    if (v10 && ([v10 unencryptedIAdID], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "iAdID"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v12, "isEqual:", v13), v13, v12, v14))
    {
      v9 = v11;
    }

    else
    {
      v9 = [[APEncryptedID alloc] initWithIDAccountPrivate:v4];
      v15 = [(APEncryptedIDProvider *)self oldEncryptedIDs];

      if (!v15)
      {
        [(APEncryptedIDProvider *)self setOldEncryptedIDs:v9];
      }
    }
  }

  return v9;
}

@end