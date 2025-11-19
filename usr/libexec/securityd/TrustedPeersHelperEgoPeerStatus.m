@interface TrustedPeersHelperEgoPeerStatus
- (TrustedPeersHelperEgoPeerStatus)initWithCoder:(id)a3;
- (TrustedPeersHelperEgoPeerStatus)initWithEgoPeerID:(id)a3 egoPeerMachineID:(id)a4 status:(unint64_t)a5 viablePeerCountsByModelID:(id)a6 peerCountsByMachineID:(id)a7 isExcluded:(BOOL)a8 isLocked:(BOOL)a9;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TrustedPeersHelperEgoPeerStatus

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  v4 = [(TrustedPeersHelperEgoPeerStatus *)self egoPeerID];
  [v8 encodeObject:v4 forKey:@"peerID"];

  v5 = [(TrustedPeersHelperEgoPeerStatus *)self egoPeerMachineID];
  [v8 encodeObject:v5 forKey:@"mID"];

  [v8 encodeInt64:-[TrustedPeersHelperEgoPeerStatus egoStatus](self forKey:{"egoStatus"), @"egoStatus"}];
  v6 = [(TrustedPeersHelperEgoPeerStatus *)self viablePeerCountsByModelID];
  [v8 encodeObject:v6 forKey:@"viablePeerCountsByModelID"];

  v7 = [(TrustedPeersHelperEgoPeerStatus *)self peerCountsByMachineID];
  [v8 encodeObject:v7 forKey:@"peerCountsByMachineID"];

  [v8 encodeBool:-[TrustedPeersHelperEgoPeerStatus isExcluded](self forKey:{"isExcluded"), @"isExcluded"}];
  [v8 encodeBool:-[TrustedPeersHelperEgoPeerStatus isLocked](self forKey:{"isLocked"), @"isLocked"}];
}

- (TrustedPeersHelperEgoPeerStatus)initWithCoder:(id)a3
{
  v4 = a3;
  v28.receiver = self;
  v28.super_class = TrustedPeersHelperEgoPeerStatus;
  v5 = [(TrustedPeersHelperEgoPeerStatus *)&v28 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"peerID"];
    egoPeerID = v5->_egoPeerID;
    v5->_egoPeerID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mID"];
    egoPeerMachineID = v5->_egoPeerMachineID;
    v5->_egoPeerMachineID = v8;

    v5->_egoStatus = [v4 decodeInt64ForKey:@"egoStatus"];
    v31[0] = objc_opt_class();
    v31[1] = objc_opt_class();
    v31[2] = objc_opt_class();
    v10 = [NSArray arrayWithObjects:v31 count:3];
    v11 = [NSSet setWithArray:v10];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"viablePeerCountsByModelID"];
    viablePeerCountsByModelID = v5->_viablePeerCountsByModelID;
    v5->_viablePeerCountsByModelID = v12;

    v5->_numberOfPeersInOctagon = 0;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v14 = [(NSDictionary *)v5->_viablePeerCountsByModelID allValues];
    v15 = [v14 countByEnumeratingWithState:&v24 objects:v30 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v25;
      do
      {
        v18 = 0;
        do
        {
          if (*v25 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v5->_numberOfPeersInOctagon += [*(*(&v24 + 1) + 8 * v18) unsignedIntegerValue];
          v18 = v18 + 1;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v24 objects:v30 count:16];
      }

      while (v16);
    }

    v29[0] = objc_opt_class();
    v29[1] = objc_opt_class();
    v29[2] = objc_opt_class();
    v19 = [NSArray arrayWithObjects:v29 count:3];
    v20 = [NSSet setWithArray:v19];
    v21 = [v4 decodeObjectOfClasses:v20 forKey:@"peerCountsByMachineID"];
    peerCountsByMachineID = v5->_peerCountsByMachineID;
    v5->_peerCountsByMachineID = v21;

    v5->_isExcluded = [v4 decodeBoolForKey:@"isExcluded"];
    v5->_isLocked = [v4 decodeBoolForKey:@"isLocked"];
  }

  return v5;
}

- (id)description
{
  v3 = [(TrustedPeersHelperEgoPeerStatus *)self egoPeerID];
  v4 = [(TrustedPeersHelperEgoPeerStatus *)self egoPeerMachineID];
  v5 = [NSString stringWithFormat:@"<TPHEgoPeerState: %@ (mid:%@)>", v3, v4];

  return v5;
}

- (TrustedPeersHelperEgoPeerStatus)initWithEgoPeerID:(id)a3 egoPeerMachineID:(id)a4 status:(unint64_t)a5 viablePeerCountsByModelID:(id)a6 peerCountsByMachineID:(id)a7 isExcluded:(BOOL)a8 isLocked:(BOOL)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a6;
  v18 = a7;
  v32.receiver = self;
  v32.super_class = TrustedPeersHelperEgoPeerStatus;
  v19 = [(TrustedPeersHelperEgoPeerStatus *)&v32 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_egoPeerID, a3);
    objc_storeStrong(&v20->_egoPeerMachineID, a4);
    v20->_egoStatus = a5;
    objc_storeStrong(&v20->_viablePeerCountsByModelID, a6);
    objc_storeStrong(&v20->_peerCountsByMachineID, a7);
    v20->_numberOfPeersInOctagon = 0;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v21 = [v17 allValues];
    v22 = [v21 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v29;
      do
      {
        for (i = 0; i != v23; i = i + 1)
        {
          if (*v29 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v20->_numberOfPeersInOctagon += [*(*(&v28 + 1) + 8 * i) unsignedIntegerValue];
        }

        v23 = [v21 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v23);
    }

    v20->_isExcluded = a8;
    v20->_isLocked = a9;
  }

  return v20;
}

@end