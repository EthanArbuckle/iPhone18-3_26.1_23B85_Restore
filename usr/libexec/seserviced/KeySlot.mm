@interface KeySlot
+ (BOOL)_acl:(id)a3 containsOperation:(const char *)a4;
+ (id)emptySlot:(unsigned __int16)a3;
+ (id)withKeyData:(id)a3 state:(unsigned __int8)a4;
- (id)description;
- (void)didLoadKey:(id)a3;
- (void)resetLegacyToAvailable;
- (void)resetToEmpty;
@end

@implementation KeySlot

+ (id)emptySlot:(unsigned __int16)a3
{
  v4 = objc_opt_new();
  v4[5] = a3;
  [v4 resetToEmpty];

  return v4;
}

+ (id)withKeyData:(id)a3 state:(unsigned __int8)a4
{
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v5 = DERParseSequenceSpecContent();
  if (v5)
  {
    v6 = v5;
    v7 = SESDefaultLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [v4 base64];
      *buf = 138412546;
      v17 = v8;
      v18 = 1024;
      v19 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to parse keyData %@ %d", buf, 0x12u);
    }

    v9 = 0;
  }

  else
  {
    v9 = objc_opt_new();
    *(v9 + 8) = 2;
    *(v9 + 10) = bswap32(MEMORY[0]) >> 16;
    *(v9 + 12) = bswap32(MEMORY[0]);
    v10 = DERDecodeData(&v14, 4uLL);
    v11 = *(v9 + 16);
    *(v9 + 16) = v10;

    v12 = *(&v15 + 1) == 3 && *(v15 + 2) == 255;
    *(v9 + 9) = v12;
    *(v9 + 24) = 0;
  }

  return v9;
}

- (id)description
{
  state = self->_state;
  number = self->_number;
  keyNumber = self->_keyNumber;
  v6 = [(NSData *)self->_keyIdentifier asHexString];
  v7 = [NSString stringWithFormat:@"Slot: state %d number 0x%X keyNumber 0x%X keyIdentifier %@ synchronizable %d designation %d", state, number, keyNumber, v6, self->_synchronizable, self->_designation];

  return v7;
}

- (void)resetToEmpty
{
  self->_state = 1;
  self->_keyNumber = -1;
  keyIdentifier = self->_keyIdentifier;
  self->_keyIdentifier = 0;

  self->_synchronizable = 0;
  self->_designation = 0;
}

- (void)resetLegacyToAvailable
{
  self->_state = 5;
  self->_keyNumber = -1;
  keyIdentifier = self->_keyIdentifier;
  self->_keyIdentifier = 0;

  self->_synchronizable = 0;
  self->_designation = 0;
}

- (void)didLoadKey:(id)a3
{
  v12 = a3;
  self->_state = 2;
  self->_keyNumber = [v12 keyNumber];
  v4 = [v12 publicKey];
  v5 = [v4 ses_sha256];
  v6 = [v5 subdataWithRange:{0, 16}];
  keyIdentifier = self->_keyIdentifier;
  self->_keyIdentifier = v6;

  if ([v12 isExportedData])
  {
    v8 = 1;
  }

  else
  {
    v9 = objc_opt_class();
    v10 = [v12 accessControlConstraintsItem];
    v8 = [v9 _acl:v10 containsOperation:{v11, "os"}];
  }

  self->_synchronizable = v8;
}

+ (BOOL)_acl:(id)a3 containsOperation:(const char *)a4
{
  v14 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10005481C;
  v9[3] = &unk_1004C2D08;
  v9[5] = strlen(a4);
  v9[6] = a4;
  v9[4] = &v10;
  v5 = DERDecodeSequenceWithBlock(&v14, v9);
  if (v5)
  {
    v6 = SESDefaultLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v16 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to parse ACL entries? %d", buf, 8u);
    }
  }

  v7 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v7;
}

@end