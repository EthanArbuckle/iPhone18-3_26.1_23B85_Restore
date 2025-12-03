@interface SecDbKeychainSecretData
- (SecDbKeychainAKSWrappedKey)wrappedKey;
- (SecDbKeychainSecretData)initWithCiphertext:(id)ciphertext wrappedKey:(id)key tamperCheck:(id)check error:(id *)error;
- (SecDbKeychainSecretData)initWithData:(id)data;
- (_SFAuthenticatedCiphertext)ciphertext;
@end

@implementation SecDbKeychainSecretData

- (_SFAuthenticatedCiphertext)ciphertext
{
  v3 = objc_autoreleasePoolPush();
  v4 = objc_opt_class();
  ciphertext = [(SecDbKeychainSerializedSecretData *)self->_serializedHolder ciphertext];
  v10 = 0;
  v6 = [NSKeyedUnarchiver unarchivedObjectOfClass:v4 fromData:ciphertext error:&v10];
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
  wrappedKey = [(SecDbKeychainSerializedSecretData *)self->_serializedHolder wrappedKey];
  v5 = [(SecDbKeychainAKSWrappedKey *)v3 initWithData:wrappedKey];

  return v5;
}

- (SecDbKeychainSecretData)initWithData:(id)data
{
  dataCopy = data;
  v14.receiver = self;
  v14.super_class = SecDbKeychainSecretData;
  v5 = [(SecDbKeychainSecretData *)&v14 init];
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = [[SecDbKeychainSerializedSecretData alloc] initWithData:dataCopy];
  serializedHolder = v5->_serializedHolder;
  v5->_serializedHolder = v6;

  ciphertext = [(SecDbKeychainSerializedSecretData *)v5->_serializedHolder ciphertext];
  if (!ciphertext)
  {
LABEL_7:

    v5 = 0;
    goto LABEL_8;
  }

  v9 = ciphertext;
  wrappedKey = [(SecDbKeychainSerializedSecretData *)v5->_serializedHolder wrappedKey];
  if (!wrappedKey)
  {

    goto LABEL_7;
  }

  v11 = wrappedKey;
  tamperCheck = [(SecDbKeychainSerializedSecretData *)v5->_serializedHolder tamperCheck];

  if (!tamperCheck)
  {
    goto LABEL_7;
  }

LABEL_8:

  return v5;
}

- (SecDbKeychainSecretData)initWithCiphertext:(id)ciphertext wrappedKey:(id)key tamperCheck:(id)check error:(id *)error
{
  ciphertextCopy = ciphertext;
  keyCopy = key;
  checkCopy = check;
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

  v16 = [NSKeyedArchiver archivedDataWithRootObject:ciphertextCopy requiringSecureCoding:1 error:error];
  [(SecDbKeychainSerializedSecretData *)v13->_serializedHolder setCiphertext:v16];

  serializedRepresentation = [keyCopy serializedRepresentation];
  [(SecDbKeychainSerializedSecretData *)v13->_serializedHolder setWrappedKey:serializedRepresentation];

  [(SecDbKeychainSerializedSecretData *)v13->_serializedHolder setTamperCheck:checkCopy];
  ciphertext = [(SecDbKeychainSerializedSecretData *)v13->_serializedHolder ciphertext];
  if (!ciphertext)
  {
LABEL_7:

    v13 = 0;
    goto LABEL_8;
  }

  v19 = ciphertext;
  wrappedKey = [(SecDbKeychainSerializedSecretData *)v13->_serializedHolder wrappedKey];
  if (!wrappedKey)
  {

    goto LABEL_7;
  }

  v21 = wrappedKey;
  tamperCheck = [(SecDbKeychainSerializedSecretData *)v13->_serializedHolder tamperCheck];

  if (!tamperCheck)
  {
    goto LABEL_7;
  }

LABEL_8:

  return v13;
}

@end