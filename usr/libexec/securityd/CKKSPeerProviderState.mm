@interface CKKSPeerProviderState
+ (id)createFromProvider:(id)provider;
+ (id)noPeersState:(id)state;
- (BOOL)unwrapKey:(id)key fromShares:(id)shares error:(id *)error;
- (CKKSPeerProviderState)initWithPeerProviderID:(id)d essential:(BOOL)essential selfPeers:(id)peers selfPeersError:(id)error trustedPeers:(id)trustedPeers trustedPeersError:(id)peersError;
- (id)description;
@end

@implementation CKKSPeerProviderState

- (BOOL)unwrapKey:(id)key fromShares:(id)shares error:(id *)error
{
  keyCopy = key;
  sharesCopy = shares;
  currentSelfPeers = [(CKKSPeerProviderState *)self currentSelfPeers];
  currentSelf = [currentSelfPeers currentSelf];
  if (!currentSelf)
  {

LABEL_10:
    v16 = keyCopy;
    zoneName = [keyCopy zoneName];
    v24 = sub_100019104(@"ckksshare", zoneName);

    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      peerProviderID = [(CKKSPeerProviderState *)self peerProviderID];
      currentSelfPeersError = [(CKKSPeerProviderState *)self currentSelfPeersError];
      *buf = 138412546;
      v97 = peerProviderID;
      v98 = 2112;
      v99 = currentSelfPeersError;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Don't have self peers for %@: %@", buf, 0x16u);

      v16 = keyCopy;
    }

    if (error)
    {
      currentSelfPeersError2 = [(CKKSPeerProviderState *)self currentSelfPeersError];
      v21 = @"Key unwrap failed";
      v22 = 38;
      goto LABEL_14;
    }

LABEL_16:
    v27 = 0;
    goto LABEL_17;
  }

  v11 = currentSelf;
  currentSelfPeersError3 = [(CKKSPeerProviderState *)self currentSelfPeersError];

  if (currentSelfPeersError3)
  {
    goto LABEL_10;
  }

  currentTrustedPeers = [(CKKSPeerProviderState *)self currentTrustedPeers];
  if (currentTrustedPeers)
  {
    v14 = currentTrustedPeers;
    currentTrustedPeersError = [(CKKSPeerProviderState *)self currentTrustedPeersError];

    if (!currentTrustedPeersError)
    {
      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      currentSelfPeers2 = [(CKKSPeerProviderState *)self currentSelfPeers];
      allSelves = [currentSelfPeers2 allSelves];

      obj = allSelves;
      v16 = keyCopy;
      v69 = [allSelves countByEnumeratingWithState:&v92 objects:v106 count:16];
      if (v69)
      {
        context = 0;
        v70 = *v93;
        v73 = sharesCopy;
        errorCopy = error;
        selfCopy = self;
        do
        {
          v31 = 0;
          do
          {
            if (*v93 != v70)
            {
              objc_enumerationMutation(obj);
            }

            v71 = v31;
            v32 = *(*(&v92 + 1) + 8 * v31);
            v81 = +[NSMutableArray array];
            v88 = 0u;
            v89 = 0u;
            v90 = 0u;
            v91 = 0u;
            v33 = v73;
            v34 = [v33 countByEnumeratingWithState:&v88 objects:v105 count:16];
            if (v34)
            {
              v35 = v34;
              v36 = *v89;
              do
              {
                for (i = 0; i != v35; i = i + 1)
                {
                  if (*v89 != v36)
                  {
                    objc_enumerationMutation(v33);
                  }

                  v38 = *(*(&v88 + 1) + 8 * i);
                  share = [v38 share];
                  receiverPeerID = [share receiverPeerID];
                  peerID = [v32 peerID];
                  v42 = [receiverPeerID isEqualToString:peerID];

                  if (v42)
                  {
                    [v81 addObject:v38];
                  }
                }

                v35 = [v33 countByEnumeratingWithState:&v88 objects:v105 count:16];
              }

              while (v35);
            }

            v43 = v81;
            if ([v81 count])
            {
              v86 = 0u;
              v87 = 0u;
              v84 = 0u;
              v85 = 0u;
              v44 = v81;
              v16 = keyCopy;
              v76 = [v44 countByEnumeratingWithState:&v84 objects:v104 count:16];
              if (v76)
              {
                v75 = *v85;
                v45 = context;
                while (2)
                {
                  for (j = 0; j != v76; j = j + 1)
                  {
                    v47 = v45;
                    if (*v85 != v75)
                    {
                      objc_enumerationMutation(v44);
                    }

                    v48 = *(*(&v84 + 1) + 8 * j);
                    contexta = objc_autoreleasePoolPush();
                    zoneName2 = [keyCopy zoneName];
                    v50 = sub_100019104(@"ckksshare", zoneName2);

                    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412546;
                      v97 = v48;
                      v98 = 2112;
                      v99 = v32;
                      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "Checking possible TLK share %@ as %@", buf, 0x16u);
                    }

                    currentTrustedPeers2 = [(CKKSPeerProviderState *)selfCopy currentTrustedPeers];
                    v83 = 0;
                    v52 = [v48 recoverTLK:v32 trustedPeers:currentTrustedPeers2 error:&v83];
                    v53 = v83;

                    if (v52)
                    {
                      v54 = v53 == 0;
                    }

                    else
                    {
                      v54 = 0;
                    }

                    if (v54)
                    {
                      v74 = v47;
                      v60 = v44;
                      aessivkey = [v52 aessivkey];
                      v82 = 0;
                      v62 = [keyCopy trySelfWrappedKeyCandidate:aessivkey error:&v82];
                      v53 = v82;

                      zoneName3 = [keyCopy zoneName];
                      v58 = sub_100019104(@"ckksshare", zoneName3);

                      if (v62 && !v53)
                      {
                        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 138412802;
                          v97 = v48;
                          v98 = 2112;
                          v99 = keyCopy;
                          v100 = 2112;
                          v101 = v32;
                          _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "TLKShare(%@) unlocked TLK(%@) as %@", buf, 0x20u);
                        }

                        objc_autoreleasePoolPop(contexta);
                        v27 = 1;
                        currentSelfPeersError2 = v74;
                        sharesCopy = v73;
                        goto LABEL_68;
                      }

                      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
                      {
                        currentSelfPeers3 = [(CKKSPeerProviderState *)selfCopy currentSelfPeers];
                        currentSelf2 = [currentSelfPeers3 currentSelf];
                        *buf = 138413058;
                        v97 = v48;
                        v98 = 2112;
                        v99 = keyCopy;
                        v100 = 2112;
                        v101 = currentSelf2;
                        v102 = 2112;
                        v103 = v53;
                        _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_ERROR, "Unwrapped TLKShare(%@) does not unwrap proposed TLK(%@) as %@: %@", buf, 0x2Au);
                      }

                      v44 = v60;
                      v47 = v74;
                    }

                    else
                    {
                      zoneName4 = [keyCopy zoneName];
                      v56 = sub_100019104(@"ckksshare", zoneName4);

                      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138412802;
                        v97 = v48;
                        v98 = 2112;
                        v99 = v32;
                        v100 = 2112;
                        v101 = v53;
                        _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "Unable to unwrap TLKShare(%@) as %@: %@", buf, 0x20u);
                      }

                      zoneName5 = [keyCopy zoneName];
                      v58 = sub_100019104(@"ckksshare", zoneName5);

                      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
                      {
                        currentTrustedPeers3 = [(CKKSPeerProviderState *)selfCopy currentTrustedPeers];
                        *buf = 138412290;
                        v97 = currentTrustedPeers3;
                        _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_ERROR, "Current trust set: %@", buf, 0xCu);
                      }
                    }

                    v45 = v53;
                    objc_autoreleasePoolPop(contexta);
                  }

                  v76 = [v44 countByEnumeratingWithState:&v84 objects:v104 count:16];
                  if (v76)
                  {
                    continue;
                  }

                  break;
                }

                context = v45;
                v66 = v71;
                v43 = v81;
              }

              else
              {
                v66 = v71;
              }
            }

            else
            {
              v16 = keyCopy;
              zoneName6 = [keyCopy zoneName];
              v44 = sub_100019104(@"ckksshare", zoneName6);

              v66 = v71;
              if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v97 = v32;
                v98 = 2112;
                v99 = keyCopy;
                _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "No CKKSTLKShares to %@ for %@", buf, 0x16u);
              }
            }

            v31 = v66 + 1;
            error = errorCopy;
            sharesCopy = v73;
          }

          while (v31 != v69);
          v69 = [obj countByEnumeratingWithState:&v92 objects:v106 count:16];
        }

        while (v69);
      }

      else
      {
        context = 0;
      }

      if (error)
      {
        obj = [NSString stringWithFormat:@"No trusted TLKShares for %@", v16];
        currentSelfPeersError2 = context;
        [NSError errorWithDomain:"errorWithDomain:code:description:underlying:" code:@"CKKSErrorDomain" description:35 underlying:?];
        *error = v27 = 0;
LABEL_68:
      }

      else
      {
        v27 = 0;
        currentSelfPeersError2 = context;
      }

      goto LABEL_15;
    }
  }

  v16 = keyCopy;
  zoneName7 = [keyCopy zoneName];
  v18 = sub_100019104(@"ckksshare", zoneName7);

  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    currentTrustedPeersError2 = [(CKKSPeerProviderState *)self currentTrustedPeersError];
    *buf = 138412290;
    v97 = currentTrustedPeersError2;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Don't have trusted peers: %@", buf, 0xCu);
  }

  if (!error)
  {
    goto LABEL_16;
  }

  currentSelfPeersError2 = [(CKKSPeerProviderState *)self currentTrustedPeersError];
  v21 = @"No trusted peers";
  v22 = 24;
LABEL_14:
  [NSError errorWithDomain:@"CKKSErrorDomain" code:v22 description:v21 underlying:currentSelfPeersError2];
  *error = v27 = 0;
LABEL_15:

LABEL_17:
  return v27;
}

- (id)description
{
  peerProviderID = [(CKKSPeerProviderState *)self peerProviderID];
  currentSelfPeers = [(CKKSPeerProviderState *)self currentSelfPeers];
  currentSelfPeersError = [(CKKSPeerProviderState *)self currentSelfPeersError];
  v6 = currentSelfPeersError;
  if (currentSelfPeersError)
  {
    v7 = currentSelfPeersError;
  }

  else
  {
    v7 = &stru_100348050;
  }

  currentTrustedPeers = [(CKKSPeerProviderState *)self currentTrustedPeers];
  currentTrustedPeersError = [(CKKSPeerProviderState *)self currentTrustedPeersError];
  v10 = currentTrustedPeersError;
  if (currentTrustedPeersError)
  {
    v11 = currentTrustedPeersError;
  }

  else
  {
    v11 = &stru_100348050;
  }

  v12 = [NSString stringWithFormat:@"<CKKSPeerProviderState(%@): %@%@ %@%@>", peerProviderID, currentSelfPeers, v7, currentTrustedPeers, v11];

  return v12;
}

- (CKKSPeerProviderState)initWithPeerProviderID:(id)d essential:(BOOL)essential selfPeers:(id)peers selfPeersError:(id)error trustedPeers:(id)trustedPeers trustedPeersError:(id)peersError
{
  dCopy = d;
  peersCopy = peers;
  errorCopy = error;
  trustedPeersCopy = trustedPeers;
  peersErrorCopy = peersError;
  v35.receiver = self;
  v35.super_class = CKKSPeerProviderState;
  v18 = [(CKKSPeerProviderState *)&v35 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_peerProviderID, d);
    v19->_essential = essential;
    objc_storeStrong(&v19->_currentSelfPeers, peers);
    objc_storeStrong(&v19->_currentSelfPeersError, error);
    objc_storeStrong(&v19->_currentTrustedPeers, trustedPeers);
    objc_storeStrong(&v19->_currentTrustedPeersError, peersError);
    if (v19->_currentTrustedPeers)
    {
      v20 = [NSMutableSet set:peersCopy];
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v21 = v19->_currentTrustedPeers;
      v22 = [(NSSet *)v21 countByEnumeratingWithState:&v31 objects:v36 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v32;
        do
        {
          v25 = 0;
          do
          {
            if (*v32 != v24)
            {
              objc_enumerationMutation(v21);
            }

            peerID = [*(*(&v31 + 1) + 8 * v25) peerID];
            [(NSSet *)v20 addObject:peerID];

            v25 = v25 + 1;
          }

          while (v23 != v25);
          v23 = [(NSSet *)v21 countByEnumeratingWithState:&v31 objects:v36 count:16];
        }

        while (v23);
      }

      currentTrustedPeerIDs = v19->_currentTrustedPeerIDs;
      v19->_currentTrustedPeerIDs = v20;
    }
  }

  return v19;
}

+ (id)createFromProvider:(id)provider
{
  providerCopy = provider;
  v4 = objc_autoreleasePoolPush();
  v14 = 0;
  v5 = [providerCopy fetchSelfPeers:&v14];
  v6 = v14;
  v13 = 0;
  v7 = [providerCopy fetchTrustedPeers:&v13];
  v8 = v13;
  v9 = [CKKSPeerProviderState alloc];
  providerID = [providerCopy providerID];
  v11 = -[CKKSPeerProviderState initWithPeerProviderID:essential:selfPeers:selfPeersError:trustedPeers:trustedPeersError:](v9, "initWithPeerProviderID:essential:selfPeers:selfPeersError:trustedPeers:trustedPeersError:", providerID, [providerCopy essential], v5, v6, v7, v8);

  objc_autoreleasePoolPop(v4);

  return v11;
}

+ (id)noPeersState:(id)state
{
  stateCopy = state;
  v4 = [CKKSPeerProviderState alloc];
  providerID = [stateCopy providerID];
  essential = [stateCopy essential];

  v7 = [NSError errorWithDomain:@"CKKSErrorDomain" code:24 description:@"No current self peer available"];
  v8 = [NSError errorWithDomain:@"CKKSErrorDomain" code:24 description:@"No current trusted peers available"];
  v9 = [(CKKSPeerProviderState *)v4 initWithPeerProviderID:providerID essential:essential selfPeers:0 selfPeersError:v7 trustedPeers:0 trustedPeersError:v8];

  return v9;
}

@end