@interface CKKSKeychainBackedKeySet
- (CKKSKeychainBackedKeySet)initWithCoder:(id)a3;
- (CKKSKeychainBackedKeySet)initWithTLK:(id)a3 classA:(id)a4 classC:(id)a5 newUpload:(BOOL)a6;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKKSKeychainBackedKeySet

- (CKKSKeychainBackedKeySet)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CKKSKeychainBackedKeySet;
  v5 = [(CKKSKeychainBackedKeySet *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tlk"];
    tlk = v5->_tlk;
    v5->_tlk = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"classA"];
    classA = v5->_classA;
    v5->_classA = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"classC"];
    classC = v5->_classC;
    v5->_classC = v10;

    v5->_newUpload = [v4 decodeBoolForKey:@"newUpload"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [(CKKSKeychainBackedKeySet *)self tlk];
  [v7 encodeObject:v4 forKey:@"tlk"];

  v5 = [(CKKSKeychainBackedKeySet *)self classA];
  [v7 encodeObject:v5 forKey:@"classA"];

  v6 = [(CKKSKeychainBackedKeySet *)self classC];
  [v7 encodeObject:v6 forKey:@"classC"];

  [v7 encodeBool:-[CKKSKeychainBackedKeySet newUpload](self forKey:{"newUpload"), @"newUpload"}];
}

- (id)description
{
  v3 = [(CKKSKeychainBackedKeySet *)self tlk];
  v4 = [(CKKSKeychainBackedKeySet *)self classA];
  v5 = [(CKKSKeychainBackedKeySet *)self classC];
  v6 = [NSString stringWithFormat:@"<CKKSKeychainBackedKeySet: tlk:%@, classA:%@, classC:%@, newUpload:%d>", v3, v4, v5, [(CKKSKeychainBackedKeySet *)self newUpload]];

  return v6;
}

- (CKKSKeychainBackedKeySet)initWithTLK:(id)a3 classA:(id)a4 classC:(id)a5 newUpload:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = CKKSKeychainBackedKeySet;
  v14 = [(CKKSKeychainBackedKeySet *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_tlk, a3);
    objc_storeStrong(&v15->_classA, a4);
    objc_storeStrong(&v15->_classC, a5);
    v15->_newUpload = a6;
  }

  return v15;
}

@end