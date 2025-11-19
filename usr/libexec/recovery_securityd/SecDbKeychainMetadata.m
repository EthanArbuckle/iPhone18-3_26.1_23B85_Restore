@interface SecDbKeychainMetadata
- (SecDbKeychainMetadata)initWithCiphertext:(id)a3 wrappedKey:(id)a4 tamperCheck:(id)a5 error:(id *)a6;
- (SecDbKeychainMetadata)initWithData:(id)a3;
- (_SFAuthenticatedCiphertext)ciphertext;
- (_SFAuthenticatedCiphertext)wrappedKey;
@end

@implementation SecDbKeychainMetadata

- (SecDbKeychainMetadata)initWithCiphertext:(id)a3 wrappedKey:(id)a4 tamperCheck:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
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

  v16 = [NSKeyedArchiver archivedDataWithRootObject:v10 requiringSecureCoding:1 error:a6];
  [(SecDbKeychainSerializedMetadata *)v13->_serializedHolder setCiphertext:v16];

  v17 = [NSKeyedArchiver archivedDataWithRootObject:v11 requiringSecureCoding:1 error:a6];
  [(SecDbKeychainSerializedMetadata *)v13->_serializedHolder setWrappedKey:v17];

  [(SecDbKeychainSerializedMetadata *)v13->_serializedHolder setTamperCheck:v12];
  v18 = [(SecDbKeychainSerializedMetadata *)v13->_serializedHolder ciphertext];
  if (!v18)
  {
LABEL_7:

    v13 = 0;
    goto LABEL_8;
  }

  v19 = v18;
  v20 = [(SecDbKeychainSerializedMetadata *)v13->_serializedHolder wrappedKey];
  if (!v20)
  {

    goto LABEL_7;
  }

  v21 = v20;
  v22 = [(SecDbKeychainSerializedMetadata *)v13->_serializedHolder tamperCheck];

  if (!v22)
  {
    goto LABEL_7;
  }

LABEL_8:

  return v13;
}

- (SecDbKeychainMetadata)initWithData:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = SecDbKeychainMetadata;
  v5 = [(SecDbKeychainMetadata *)&v14 init];
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = [[SecDbKeychainSerializedMetadata alloc] initWithData:v4];
  serializedHolder = v5->_serializedHolder;
  v5->_serializedHolder = v6;

  v8 = [(SecDbKeychainSerializedMetadata *)v5->_serializedHolder ciphertext];
  if (!v8)
  {
LABEL_7:

    v5 = 0;
    goto LABEL_8;
  }

  v9 = v8;
  v10 = [(SecDbKeychainSerializedMetadata *)v5->_serializedHolder wrappedKey];
  if (!v10)
  {

    goto LABEL_7;
  }

  v11 = v10;
  v12 = [(SecDbKeychainSerializedMetadata *)v5->_serializedHolder tamperCheck];

  if (!v12)
  {
    goto LABEL_7;
  }

LABEL_8:

  return v5;
}

- (_SFAuthenticatedCiphertext)ciphertext
{
  v3 = objc_opt_class();
  v4 = [(SecDbKeychainSerializedMetadata *)self->_serializedHolder ciphertext];
  v9 = 0;
  v5 = [NSKeyedUnarchiver unarchivedObjectOfClass:v3 fromData:v4 error:&v9];
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
  v4 = [(SecDbKeychainSerializedMetadata *)self->_serializedHolder wrappedKey];
  v9 = 0;
  v5 = [NSKeyedUnarchiver unarchivedObjectOfClass:v3 fromData:v4 error:&v9];
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