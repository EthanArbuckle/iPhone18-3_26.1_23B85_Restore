@interface KCSharingLocalFingerprint
- (BOOL)isEqual:(id)equal;
- (KCSharingLocalFingerprint)initWithDatabaseItem:(SecDbItem *)item error:(id *)error;
- (KCSharingLocalFingerprint)initWithKeyprint:(id)keyprint valueprint:(id)valueprint;
- (id)description;
@end

@implementation KCSharingLocalFingerprint

- (id)description
{
  keyprint = [(KCSharingLocalFingerprint *)self keyprint];
  v4 = [keyprint base64EncodedDataWithOptions:0];
  valueprint = [(KCSharingLocalFingerprint *)self valueprint];
  v6 = [valueprint base64EncodedDataWithOptions:0];
  v7 = [NSString stringWithFormat:@"KCSharingLocalFingerprint(keyprint:%@ valueprint:%@)", v4, v6];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else if ([(KCSharingLocalFingerprint *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    keyprint = self->_keyprint;
    keyprint = [(KCSharingLocalFingerprint *)v5 keyprint];
    if ([(NSData *)keyprint isEqualToData:keyprint])
    {
      valueprint = self->_valueprint;
      valueprint = [(KCSharingLocalFingerprint *)v5 valueprint];
      v10 = [(NSData *)valueprint isEqualToData:valueprint];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (KCSharingLocalFingerprint)initWithKeyprint:(id)keyprint valueprint:(id)valueprint
{
  keyprintCopy = keyprint;
  valueprintCopy = valueprint;
  v12.receiver = self;
  v12.super_class = KCSharingLocalFingerprint;
  v9 = [(KCSharingLocalFingerprint *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_keyprint, keyprint);
    objc_storeStrong(&v10->_valueprint, valueprint);
  }

  return v10;
}

- (KCSharingLocalFingerprint)initWithDatabaseItem:(SecDbItem *)item error:(id *)error
{
  v33 = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  var1 = item->var1;
  v12 = var1->var2[0];
  if (v12)
  {
    v13 = &var1->var2[1];
    do
    {
      if ((~LODWORD(v12->var2) & 3) == 0)
      {
        v18 = sub_100017508(item, v12, &v33);
        if (!v18)
        {
          goto LABEL_19;
        }

        CFDictionarySetValue(Mutable, v12->var0, v18);
        CFRelease(v18);
      }

      v19 = *v13++;
      v12 = v19;
    }

    while (v19);
  }

  v20 = sub_10001B910(Mutable, &v33, v7, v8, v9);
  v18 = v20;
  if (v20)
  {
    v21 = sub_1000885B0(v20);
    if (!Mutable)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_19:
  v21 = 0;
  if (Mutable)
  {
LABEL_9:
    CFRelease(Mutable);
  }

LABEL_10:
  if (v18)
  {
    CFRelease(v18);
  }

  if (!v21)
  {
    v28 = v33;
    sub_100061EE8(error, 23, v33, @"Copying keyprint", v14, v15, v16, v17, v32);
LABEL_17:
    selfCopy = 0;
    goto LABEL_18;
  }

  v22 = sub_100016514(&item->var1->var0, 7, &v33);
  v23 = sub_100015BFC(item, v22, &v33);
  if (!v23)
  {
    v30 = v33;
    sub_100061EE8(error, 24, v33, @"Copying valueprint", v24, v25, v26, v27, v32);

    v28 = 0;
    goto LABEL_17;
  }

  v28 = v23;
  self = [(KCSharingLocalFingerprint *)self initWithKeyprint:v21 valueprint:v23];
  selfCopy = self;
LABEL_18:

  return selfCopy;
}

@end