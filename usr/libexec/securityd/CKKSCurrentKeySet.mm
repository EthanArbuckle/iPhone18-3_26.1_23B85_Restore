@interface CKKSCurrentKeySet
+ (id)loadForZone:(id)a3 contextID:(id)a4;
- (CKKSCurrentKeySet)initWithZoneID:(id)a3 contextID:(id)a4;
- (id)asKeychainBackedSet:(id *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation CKKSCurrentKeySet

- (id)asKeychainBackedSet:(id *)a3
{
  v5 = [(CKKSCurrentKeySet *)self tlk];
  v20 = 0;
  v6 = [v5 getKeychainBackedKey:&v20];
  v7 = v20;

  v8 = [(CKKSCurrentKeySet *)self classA];
  v19 = 0;
  v9 = [v8 getKeychainBackedKey:&v19];
  v10 = v19;

  v11 = [(CKKSCurrentKeySet *)self classC];
  v18 = 0;
  v12 = [v11 getKeychainBackedKey:&v18];
  v13 = v18;

  if (v6 && v9 && v12)
  {
    v14 = [[CKKSKeychainBackedKeySet alloc] initWithTLK:v6 classA:v9 classC:v12 newUpload:[(CKKSCurrentKeySet *)self proposed]];
  }

  else if (a3)
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
    *a3 = v14 = 0;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(objc_opt_class());
  v6 = [(CKKSCurrentKeySet *)self zoneID];
  v7 = [v6 copyWithZone:a3];
  [v5 setZoneID:v7];

  v8 = [(CKKSCurrentKeySet *)self currentTLKPointer];
  v9 = [v8 copyWithZone:a3];
  [v5 setCurrentTLKPointer:v9];

  v10 = [(CKKSCurrentKeySet *)self currentClassAPointer];
  v11 = [v10 copyWithZone:a3];
  [v5 setCurrentClassAPointer:v11];

  v12 = [(CKKSCurrentKeySet *)self currentClassCPointer];
  v13 = [v12 copyWithZone:a3];
  [v5 setCurrentClassCPointer:v13];

  v14 = [(CKKSCurrentKeySet *)self tlk];
  v15 = [v14 copyWithZone:a3];
  [v5 setTlk:v15];

  v16 = [(CKKSCurrentKeySet *)self classA];
  v17 = [v16 copyWithZone:a3];
  [v5 setClassA:v17];

  v18 = [(CKKSCurrentKeySet *)self classC];
  v19 = [v18 copyWithZone:a3];
  [v5 setClassC:v19];

  [v5 setProposed:{-[CKKSCurrentKeySet proposed](self, "proposed")}];
  v20 = [(CKKSCurrentKeySet *)self error];
  v21 = [v20 copyWithZone:a3];
  [v5 setError:v21];

  return v5;
}

- (id)description
{
  v3 = [(CKKSCurrentKeySet *)self error];

  v20 = [(CKKSCurrentKeySet *)self contextID];
  v19 = [(CKKSCurrentKeySet *)self zoneID];
  v22 = [v19 zoneName];
  v18 = [(CKKSCurrentKeySet *)self currentTLKPointer];
  v21 = [v18 currentKeyUUID];
  v4 = [(CKKSCurrentKeySet *)self tlk];
  v5 = [(CKKSCurrentKeySet *)self currentClassAPointer];
  v6 = [v5 currentKeyUUID];
  v7 = [(CKKSCurrentKeySet *)self classA];
  v8 = [(CKKSCurrentKeySet *)self currentClassCPointer];
  v9 = [v8 currentKeyUUID];
  v10 = [(CKKSCurrentKeySet *)self classC];
  v11 = [(CKKSCurrentKeySet *)self proposed];
  v12 = v11;
  if (v3)
  {
    v13 = [(CKKSCurrentKeySet *)self error];
    v17 = v12;
    v14 = v20;
    v15 = [NSString stringWithFormat:@"<CKKSCurrentKeySet[%@](%@): %@:%@ %@:%@ %@:%@ new:%d %@>", v20, v22, v21, v4, v6, v7, v9, v10, v17, v13];
  }

  else
  {
    v14 = v20;
    v15 = [NSString stringWithFormat:@"<CKKSCurrentKeySet[%@](%@): %@:%@ %@:%@ %@:%@ new:%d>", v20, v22, v21, v4, v6, v7, v9, v10, v11];
  }

  return v15;
}

- (CKKSCurrentKeySet)initWithZoneID:(id)a3 contextID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CKKSCurrentKeySet;
  v9 = [(CKKSCurrentKeySet *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_zoneID, a3);
    objc_storeStrong(&v10->_contextID, a4);
  }

  return v10;
}

+ (id)loadForZone:(id)a3 contextID:(id)a4
{
  v5 = a3;
  v6 = a4;
  context = objc_autoreleasePoolPush();
  v7 = [[CKKSCurrentKeySet alloc] initWithZoneID:v5 contextID:v6];
  v39 = 0;
  v8 = [CKKSCurrentKeyPointer tryFromDatabase:@"tlk" contextID:v6 zoneID:v5 error:&v39];
  v9 = v39;
  [(CKKSCurrentKeySet *)v7 setCurrentTLKPointer:v8];

  v38 = v9;
  v10 = [CKKSCurrentKeyPointer tryFromDatabase:@"classA" contextID:v6 zoneID:v5 error:&v38];
  v11 = v38;

  [(CKKSCurrentKeySet *)v7 setCurrentClassAPointer:v10];
  v37 = v11;
  v12 = [CKKSCurrentKeyPointer tryFromDatabase:@"classC" contextID:v6 zoneID:v5 error:&v37];
  v13 = v37;

  [(CKKSCurrentKeySet *)v7 setCurrentClassCPointer:v12];
  v14 = [(CKKSCurrentKeySet *)v7 currentTLKPointer];
  v15 = [v14 currentKeyUUID];
  if (v15)
  {
    v16 = [(CKKSCurrentKeySet *)v7 currentTLKPointer];
    v17 = [v16 currentKeyUUID];
    v36 = v13;
    v18 = [CKKSKey tryFromDatabase:v17 contextID:v6 zoneID:v5 error:&v36];
    v19 = v36;

    [(CKKSCurrentKeySet *)v7 setTlk:v18];
    v13 = v19;
  }

  else
  {
    [(CKKSCurrentKeySet *)v7 setTlk:0];
  }

  v20 = [(CKKSCurrentKeySet *)v7 currentClassAPointer];
  v21 = [v20 currentKeyUUID];
  if (v21)
  {
    v22 = [(CKKSCurrentKeySet *)v7 currentClassAPointer];
    v23 = [v22 currentKeyUUID];
    v35 = v13;
    v24 = [CKKSKey tryFromDatabase:v23 contextID:v6 zoneID:v5 error:&v35];
    v25 = v35;

    [(CKKSCurrentKeySet *)v7 setClassA:v24];
    v13 = v25;
  }

  else
  {
    [(CKKSCurrentKeySet *)v7 setClassA:0];
  }

  v26 = [(CKKSCurrentKeySet *)v7 currentClassCPointer];
  v27 = [v26 currentKeyUUID];
  if (v27)
  {
    v28 = [(CKKSCurrentKeySet *)v7 currentClassCPointer];
    v29 = [v28 currentKeyUUID];
    v34 = v13;
    v30 = [CKKSKey tryFromDatabase:v29 contextID:v6 zoneID:v5 error:&v34];
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