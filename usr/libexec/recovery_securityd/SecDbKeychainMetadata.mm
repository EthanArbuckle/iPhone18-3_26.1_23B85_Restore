@interface SecDbKeychainMetadata
- (SecDbKeychainMetadata)initWithCiphertext:(id)ciphertext wrappedKey:(id)key tamperCheck:(id)check error:(id *)error;
- (SecDbKeychainMetadata)initWithData:(id)data;
- (_SFAuthenticatedCiphertext)ciphertext;
- (_SFAuthenticatedCiphertext)wrappedKey;
@end

@implementation SecDbKeychainMetadata

- (SecDbKeychainMetadata)initWithCiphertext:(id)ciphertext wrappedKey:(id)key tamperCheck:(id)check error:(id *)error
{
  ciphertextCopy = ciphertext;
  keyCopy = key;
  checkCopy = check;
  v24.receiver = self;
  v24.super_class = SecDbKeychainMetadata;
  v13 = [(SecDbKeychainMetadata *)&v24 init];
  if (!v13)
  {
    goto LABEL_8;
  }

  v14 = objc_alloc_init(SecDbKeychainSerializedMetadata);
  serializedHolder = v13->_serializedHolder;
  v13->_serializedHolder = v14;

  v16 = [NSKeyedArchiver archivedDataWithRootObject:ciphertextCopy requiringSecureCoding:1 error:error];
  [(SecDbKeychainSerializedMetadata *)v13->_serializedHolder setCiphertext:v16];

  v17 = [NSKeyedArchiver archivedDataWithRootObject:keyCopy requiringSecureCoding:1 error:error];
  [(SecDbKeychainSerializedMetadata *)v13->_serializedHolder setWrappedKey:v17];

  [(SecDbKeychainSerializedMetadata *)v13->_serializedHolder setTamperCheck:checkCopy];
  ciphertext = [(SecDbKeychainSerializedMetadata *)v13->_serializedHolder ciphertext];
  if (!ciphertext)
  {
LABEL_7:

    v13 = 0;
    goto LABEL_8;
  }

  v19 = ciphertext;
  wrappedKey = [(SecDbKeychainSerializedMetadata *)v13->_serializedHolder wrappedKey];
  if (!wrappedKey)
  {

    goto LABEL_7;
  }

  v21 = wrappedKey;
  tamperCheck = [(SecDbKeychainSerializedMetadata *)v13->_serializedHolder tamperCheck];

  if (!tamperCheck)
  {
    goto LABEL_7;
  }

LABEL_8:

  return v13;
}

- (SecDbKeychainMetadata)initWithData:(id)data
{
  dataCopy = data;
  v14.receiver = self;
  v14.super_class = SecDbKeychainMetadata;
  v5 = [(SecDbKeychainMetadata *)&v14 init];
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = [[SecDbKeychainSerializedMetadata alloc] initWithData:dataCopy];
  serializedHolder = v5->_serializedHolder;
  v5->_serializedHolder = v6;

  ciphertext = [(SecDbKeychainSerializedMetadata *)v5->_serializedHolder ciphertext];
  if (!ciphertext)
  {
LABEL_7:

    v5 = 0;
    goto LABEL_8;
  }

  v9 = ciphertext;
  wrappedKey = [(SecDbKeychainSerializedMetadata *)v5->_serializedHolder wrappedKey];
  if (!wrappedKey)
  {

    goto LABEL_7;
  }

  v11 = wrappedKey;
  tamperCheck = [(SecDbKeychainSerializedMetadata *)v5->_serializedHolder tamperCheck];

  if (!tamperCheck)
  {
    goto LABEL_7;
  }

LABEL_8:

  return v5;
}

- (_SFAuthenticatedCiphertext)ciphertext
{
  v3 = objc_opt_class();
  ciphertext = [(SecDbKeychainSerializedMetadata *)self->_serializedHolder ciphertext];
  v9 = 0;
  v5 = [NSKeyedUnarchiver unarchivedObjectOfClass:v3 fromData:ciphertext error:&v9];
  v6 = v9;

  if (!v5)
  {
    v7 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "SecDbKeychainItemV7: error deserializing ciphertext from metadata: %@", buf, 0xCu);
    }
  }

  return v5;
}

- (_SFAuthenticatedCiphertext)wrappedKey
{
  v3 = objc_opt_class();
  wrappedKey = [(SecDbKeychainSerializedMetadata *)self->_serializedHolder wrappedKey];
  v9 = 0;
  v5 = [NSKeyedUnarchiver unarchivedObjectOfClass:v3 fromData:wrappedKey error:&v9];
  v6 = v9;

  if (!v5)
  {
    v7 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "SecDbKeychainItemV7: error deserializing wrappedKey from metadata: %@", buf, 0xCu);
    }
  }

  return v5;
}

@end