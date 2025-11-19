@interface SecDbKeychainSecretData
- (SecDbKeychainAKSWrappedKey)wrappedKey;
- (SecDbKeychainSecretData)initWithCiphertext:(id)a3 wrappedKey:(id)a4 tamperCheck:(id)a5 error:(id *)a6;
- (SecDbKeychainSecretData)initWithData:(id)a3;
- (_SFAuthenticatedCiphertext)ciphertext;
@end

@implementation SecDbKeychainSecretData

- (_SFAuthenticatedCiphertext)ciphertext
{
  v3 = objc_autoreleasePoolPush();
  v4 = objc_opt_class();
  v5 = [(SecDbKeychainSerializedSecretData *)self->_serializedHolder ciphertext];
  v10 = 0;
  v6 = [NSKeyedUnarchiver unarchivedObjectOfClass:v4 fromData:v5 error:&v10];
  v7 = v10;

  objc_autoreleasePoolPop(v3);
  if (!v6)
  {
    v8 = sub_100006274("SecError");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "SecDbKeychainItemV7: error deserializing ciphertext from secret data: %@", buf, 0xCu);
    }
  }

  return v6;
}

- (SecDbKeychainAKSWrappedKey)wrappedKey
{
  v3 = [SecDbKeychainAKSWrappedKey alloc];
  v4 = [(SecDbKeychainSerializedSecretData *)self->_serializedHolder wrappedKey];
  v5 = [(SecDbKeychainAKSWrappedKey *)v3 initWithData:v4];

  return v5;
}

- (SecDbKeychainSecretData)initWithData:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = SecDbKeychainSecretData;
  v5 = [(SecDbKeychainSecretData *)&v14 init];
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = [[SecDbKeychainSerializedSecretData alloc] initWithData:v4];
  serializedHolder = v5->_serializedHolder;
  v5->_serializedHolder = v6;

  v8 = [(SecDbKeychainSerializedSecretData *)v5->_serializedHolder ciphertext];
  if (!v8)
  {
LABEL_7:

    v5 = 0;
    goto LABEL_8;
  }

  v9 = v8;
  v10 = [(SecDbKeychainSerializedSecretData *)v5->_serializedHolder wrappedKey];
  if (!v10)
  {

    goto LABEL_7;
  }

  v11 = v10;
  v12 = [(SecDbKeychainSerializedSecretData *)v5->_serializedHolder tamperCheck];

  if (!v12)
  {
    goto LABEL_7;
  }

LABEL_8:

  return v5;
}

- (SecDbKeychainSecretData)initWithCiphertext:(id)a3 wrappedKey:(id)a4 tamperCheck:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v24.receiver = self;
  v24.super_class = SecDbKeychainSecretData;
  v13 = [(SecDbKeychainSecretData *)&v24 init];
  if (!v13)
  {
    goto LABEL_8;
  }

  v14 = objc_alloc_init(SecDbKeychainSerializedSecretData);
  serializedHolder = v13->_serializedHolder;
  v13->_serializedHolder = v14;

  v16 = [NSKeyedArchiver archivedDataWithRootObject:v10 requiringSecureCoding:1 error:a6];
  [(SecDbKeychainSerializedSecretData *)v13->_serializedHolder setCiphertext:v16];

  v17 = [v11 serializedRepresentation];
  [(SecDbKeychainSerializedSecretData *)v13->_serializedHolder setWrappedKey:v17];

  [(SecDbKeychainSerializedSecretData *)v13->_serializedHolder setTamperCheck:v12];
  v18 = [(SecDbKeychainSerializedSecretData *)v13->_serializedHolder ciphertext];
  if (!v18)
  {
LABEL_7:

    v13 = 0;
    goto LABEL_8;
  }

  v19 = v18;
  v20 = [(SecDbKeychainSerializedSecretData *)v13->_serializedHolder wrappedKey];
  if (!v20)
  {

    goto LABEL_7;
  }

  v21 = v20;
  v22 = [(SecDbKeychainSerializedSecretData *)v13->_serializedHolder tamperCheck];

  if (!v22)
  {
    goto LABEL_7;
  }

LABEL_8:

  return v13;
}

@end