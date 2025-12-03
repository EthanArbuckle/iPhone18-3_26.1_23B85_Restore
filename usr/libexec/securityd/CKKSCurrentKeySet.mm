@interface CKKSCurrentKeySet
+ (id)loadForZone:(id)zone contextID:(id)d;
- (CKKSCurrentKeySet)initWithZoneID:(id)d contextID:(id)iD;
- (id)asKeychainBackedSet:(id *)set;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation CKKSCurrentKeySet

- (id)asKeychainBackedSet:(id *)set
{
  v5 = [(CKKSCurrentKeySet *)self tlk];
  v20 = 0;
  v6 = [v5 getKeychainBackedKey:&v20];
  v7 = v20;

  classA = [(CKKSCurrentKeySet *)self classA];
  v19 = 0;
  v9 = [classA getKeychainBackedKey:&v19];
  v10 = v19;

  classC = [(CKKSCurrentKeySet *)self classC];
  v18 = 0;
  v12 = [classC getKeychainBackedKey:&v18];
  v13 = v18;

  if (v6 && v9 && v12)
  {
    v14 = [[CKKSKeychainBackedKeySet alloc] initWithTLK:v6 classA:v9 classC:v12 newUpload:[(CKKSCurrentKeySet *)self proposed]];
  }

  else if (set)
  {
    if (v10)
    {
      v15 = v10;
    }

    else
    {
      v15 = v13;
    }

    if (v7)
    {
      v16 = v7;
    }

    else
    {
      v16 = v15;
    }

    [NSError errorWithDomain:@"CKKSErrorDomain" code:53 description:@"unable to make keychain backed set; key is missing" underlying:v16];
    *set = v14 = 0;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(objc_opt_class());
  zoneID = [(CKKSCurrentKeySet *)self zoneID];
  v7 = [zoneID copyWithZone:zone];
  [v5 setZoneID:v7];

  currentTLKPointer = [(CKKSCurrentKeySet *)self currentTLKPointer];
  v9 = [currentTLKPointer copyWithZone:zone];
  [v5 setCurrentTLKPointer:v9];

  currentClassAPointer = [(CKKSCurrentKeySet *)self currentClassAPointer];
  v11 = [currentClassAPointer copyWithZone:zone];
  [v5 setCurrentClassAPointer:v11];

  currentClassCPointer = [(CKKSCurrentKeySet *)self currentClassCPointer];
  v13 = [currentClassCPointer copyWithZone:zone];
  [v5 setCurrentClassCPointer:v13];

  v14 = [(CKKSCurrentKeySet *)self tlk];
  v15 = [v14 copyWithZone:zone];
  [v5 setTlk:v15];

  classA = [(CKKSCurrentKeySet *)self classA];
  v17 = [classA copyWithZone:zone];
  [v5 setClassA:v17];

  classC = [(CKKSCurrentKeySet *)self classC];
  v19 = [classC copyWithZone:zone];
  [v5 setClassC:v19];

  [v5 setProposed:{-[CKKSCurrentKeySet proposed](self, "proposed")}];
  error = [(CKKSCurrentKeySet *)self error];
  v21 = [error copyWithZone:zone];
  [v5 setError:v21];

  return v5;
}

- (id)description
{
  error = [(CKKSCurrentKeySet *)self error];

  contextID = [(CKKSCurrentKeySet *)self contextID];
  zoneID = [(CKKSCurrentKeySet *)self zoneID];
  zoneName = [zoneID zoneName];
  currentTLKPointer = [(CKKSCurrentKeySet *)self currentTLKPointer];
  currentKeyUUID = [currentTLKPointer currentKeyUUID];
  v4 = [(CKKSCurrentKeySet *)self tlk];
  currentClassAPointer = [(CKKSCurrentKeySet *)self currentClassAPointer];
  currentKeyUUID2 = [currentClassAPointer currentKeyUUID];
  classA = [(CKKSCurrentKeySet *)self classA];
  currentClassCPointer = [(CKKSCurrentKeySet *)self currentClassCPointer];
  currentKeyUUID3 = [currentClassCPointer currentKeyUUID];
  classC = [(CKKSCurrentKeySet *)self classC];
  proposed = [(CKKSCurrentKeySet *)self proposed];
  v12 = proposed;
  if (error)
  {
    error2 = [(CKKSCurrentKeySet *)self error];
    v17 = v12;
    v14 = contextID;
    v15 = [NSString stringWithFormat:@"<CKKSCurrentKeySet[%@](%@): %@:%@ %@:%@ %@:%@ new:%d %@>", contextID, zoneName, currentKeyUUID, v4, currentKeyUUID2, classA, currentKeyUUID3, classC, v17, error2];
  }

  else
  {
    v14 = contextID;
    v15 = [NSString stringWithFormat:@"<CKKSCurrentKeySet[%@](%@): %@:%@ %@:%@ %@:%@ new:%d>", contextID, zoneName, currentKeyUUID, v4, currentKeyUUID2, classA, currentKeyUUID3, classC, proposed];
  }

  return v15;
}

- (CKKSCurrentKeySet)initWithZoneID:(id)d contextID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v12.receiver = self;
  v12.super_class = CKKSCurrentKeySet;
  v9 = [(CKKSCurrentKeySet *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_zoneID, d);
    objc_storeStrong(&v10->_contextID, iD);
  }

  return v10;
}

+ (id)loadForZone:(id)zone contextID:(id)d
{
  zoneCopy = zone;
  dCopy = d;
  context = objc_autoreleasePoolPush();
  v7 = [[CKKSCurrentKeySet alloc] initWithZoneID:zoneCopy contextID:dCopy];
  v39 = 0;
  v8 = [CKKSCurrentKeyPointer tryFromDatabase:@"tlk" contextID:dCopy zoneID:zoneCopy error:&v39];
  v9 = v39;
  [(CKKSCurrentKeySet *)v7 setCurrentTLKPointer:v8];

  v38 = v9;
  v10 = [CKKSCurrentKeyPointer tryFromDatabase:@"classA" contextID:dCopy zoneID:zoneCopy error:&v38];
  v11 = v38;

  [(CKKSCurrentKeySet *)v7 setCurrentClassAPointer:v10];
  v37 = v11;
  v12 = [CKKSCurrentKeyPointer tryFromDatabase:@"classC" contextID:dCopy zoneID:zoneCopy error:&v37];
  v13 = v37;

  [(CKKSCurrentKeySet *)v7 setCurrentClassCPointer:v12];
  currentTLKPointer = [(CKKSCurrentKeySet *)v7 currentTLKPointer];
  currentKeyUUID = [currentTLKPointer currentKeyUUID];
  if (currentKeyUUID)
  {
    currentTLKPointer2 = [(CKKSCurrentKeySet *)v7 currentTLKPointer];
    currentKeyUUID2 = [currentTLKPointer2 currentKeyUUID];
    v36 = v13;
    v18 = [CKKSKey tryFromDatabase:currentKeyUUID2 contextID:dCopy zoneID:zoneCopy error:&v36];
    v19 = v36;

    [(CKKSCurrentKeySet *)v7 setTlk:v18];
    v13 = v19;
  }

  else
  {
    [(CKKSCurrentKeySet *)v7 setTlk:0];
  }

  currentClassAPointer = [(CKKSCurrentKeySet *)v7 currentClassAPointer];
  currentKeyUUID3 = [currentClassAPointer currentKeyUUID];
  if (currentKeyUUID3)
  {
    currentClassAPointer2 = [(CKKSCurrentKeySet *)v7 currentClassAPointer];
    currentKeyUUID4 = [currentClassAPointer2 currentKeyUUID];
    v35 = v13;
    v24 = [CKKSKey tryFromDatabase:currentKeyUUID4 contextID:dCopy zoneID:zoneCopy error:&v35];
    v25 = v35;

    [(CKKSCurrentKeySet *)v7 setClassA:v24];
    v13 = v25;
  }

  else
  {
    [(CKKSCurrentKeySet *)v7 setClassA:0];
  }

  currentClassCPointer = [(CKKSCurrentKeySet *)v7 currentClassCPointer];
  currentKeyUUID5 = [currentClassCPointer currentKeyUUID];
  if (currentKeyUUID5)
  {
    currentClassCPointer2 = [(CKKSCurrentKeySet *)v7 currentClassCPointer];
    currentKeyUUID6 = [currentClassCPointer2 currentKeyUUID];
    v34 = v13;
    v30 = [CKKSKey tryFromDatabase:currentKeyUUID6 contextID:dCopy zoneID:zoneCopy error:&v34];
    v31 = v34;

    [(CKKSCurrentKeySet *)v7 setClassC:v30];
    v13 = v31;
  }

  else
  {
    [(CKKSCurrentKeySet *)v7 setClassC:0];
  }

  [(CKKSCurrentKeySet *)v7 setPendingTLKShares:0];
  [(CKKSCurrentKeySet *)v7 setProposed:0];
  [(CKKSCurrentKeySet *)v7 setError:v13];

  objc_autoreleasePoolPop(context);

  return v7;
}

@end