@interface CKKSKeychainBackedKeySet
- (CKKSKeychainBackedKeySet)initWithCoder:(id)coder;
- (CKKSKeychainBackedKeySet)initWithTLK:(id)k classA:(id)a classC:(id)c newUpload:(BOOL)upload;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKKSKeychainBackedKeySet

- (CKKSKeychainBackedKeySet)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = CKKSKeychainBackedKeySet;
  v5 = [(CKKSKeychainBackedKeySet *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tlk"];
    tlk = v5->_tlk;
    v5->_tlk = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"classA"];
    classA = v5->_classA;
    v5->_classA = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"classC"];
    classC = v5->_classC;
    v5->_classC = v10;

    v5->_newUpload = [coderCopy decodeBoolForKey:@"newUpload"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [(CKKSKeychainBackedKeySet *)self tlk];
  [coderCopy encodeObject:v4 forKey:@"tlk"];

  classA = [(CKKSKeychainBackedKeySet *)self classA];
  [coderCopy encodeObject:classA forKey:@"classA"];

  classC = [(CKKSKeychainBackedKeySet *)self classC];
  [coderCopy encodeObject:classC forKey:@"classC"];

  [coderCopy encodeBool:-[CKKSKeychainBackedKeySet newUpload](self forKey:{"newUpload"), @"newUpload"}];
}

- (id)description
{
  v3 = [(CKKSKeychainBackedKeySet *)self tlk];
  classA = [(CKKSKeychainBackedKeySet *)self classA];
  classC = [(CKKSKeychainBackedKeySet *)self classC];
  v6 = [NSString stringWithFormat:@"<CKKSKeychainBackedKeySet: tlk:%@, classA:%@, classC:%@, newUpload:%d>", v3, classA, classC, [(CKKSKeychainBackedKeySet *)self newUpload]];

  return v6;
}

- (CKKSKeychainBackedKeySet)initWithTLK:(id)k classA:(id)a classC:(id)c newUpload:(BOOL)upload
{
  kCopy = k;
  aCopy = a;
  cCopy = c;
  v17.receiver = self;
  v17.super_class = CKKSKeychainBackedKeySet;
  v14 = [(CKKSKeychainBackedKeySet *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_tlk, k);
    objc_storeStrong(&v15->_classA, a);
    objc_storeStrong(&v15->_classC, c);
    v15->_newUpload = upload;
  }

  return v15;
}

@end