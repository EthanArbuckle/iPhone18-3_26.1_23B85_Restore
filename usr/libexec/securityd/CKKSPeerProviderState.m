@interface CKKSPeerProviderState
+ (id)createFromProvider:(id)a3;
+ (id)noPeersState:(id)a3;
- (BOOL)unwrapKey:(id)a3 fromShares:(id)a4 error:(id *)a5;
- (CKKSPeerProviderState)initWithPeerProviderID:(id)a3 essential:(BOOL)a4 selfPeers:(id)a5 selfPeersError:(id)a6 trustedPeers:(id)a7 trustedPeersError:(id)a8;
- (id)description;
@end

@implementation CKKSPeerProviderState

- (BOOL)unwrapKey:(id)a3 fromShares:(id)a4 error:(id *)a5
{
  v77 = a3;
  v8 = a4;
  v9 = [(CKKSPeerProviderState *)self currentSelfPeers];
  v10 = [v9 currentSelf];
  if (!v10)
  {

LABEL_10:
    v16 = v77;
    v23 = [v77 zoneName];
    v24 = sub_100019104(@"ckksshare", v23);

    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [(CKKSPeerProviderState *)self peerProviderID];
      v26 = [(CKKSPeerProviderState *)self currentSelfPeersError];
      *buf = 138412546;
      v97 = v25;
      v98 = 2112;
      v99 = v26;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Don't have self peers for %@: %@", buf, 0x16u);

      v16 = v77;
    }

    if (a5)
    {
      v20 = [(CKKSPeerProviderState *)self currentSelfPeersError];
      v21 = @"Key unwrap failed";
      v22 = 38;
      goto LABEL_14;
    }

LABEL_16:
    v27 = 0;
    goto LABEL_17;
  }

  v11 = v10;
  v12 = [(CKKSPeerProviderState *)self currentSelfPeersError];

  if (v12)
  {
    goto LABEL_10;
  }

  v13 = [(CKKSPeerProviderState *)self currentTrustedPeers];
  if (v13)
  {
    v14 = v13;
    v15 = [(CKKSPeerProviderState *)self currentTrustedPeersError];

    if (!v15)
    {
      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      v29 = [(CKKSPeerProviderState *)self currentSelfPeers];
      v30 = [v29 allSelves];

      obj = v30;
      v16 = v77;
      v69 = [v30 countByEnumeratingWithState:&v92 objects:v106 count:16];
      if (v69)
      {
        context = 0;
        v70 = *v93;
        v73 = v8;
        v68 = a5;
        v78 = self;
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
                  v39 = [v38 share];
                  v40 = [v39 receiverPeerID];
                  v41 = [v32 peerID];
                  v42 = [v40 isEqualToString:v41];

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
              v16 = v77;
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
                    v49 = [v77 zoneName];
                    v50 = sub_100019104(@"ckksshare", v49);

                    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412546;
                      v97 = v48;
                      v98 = 2112;
                      v99 = v32;
                      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "Checking possible TLK share %@ as %@", buf, 0x16u);
                    }

                    v51 = [(CKKSPeerProviderState *)v78 currentTrustedPeers];
                    v83 = 0;
                    v52 = [v48 recoverTLK:v32 trustedPeers:v51 error:&v83];
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
                      v61 = [v52 aessivkey];
                      v82 = 0;
                      v62 = [v77 trySelfWrappedKeyCandidate:v61 error:&v82];
                      v53 = v82;

                      v63 = [v77 zoneName];
                      v58 = sub_100019104(@"ckksshare", v63);

                      if (v62 && !v53)
                      {
                        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 138412802;
                          v97 = v48;
                          v98 = 2112;
                          v99 = v77;
                          v100 = 2112;
                          v101 = v32;
                          _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "TLKShare(%@) unlocked TLK(%@) as %@", buf, 0x20u);
                        }

                        objc_autoreleasePoolPop(contexta);
                        v27 = 1;
                        v20 = v74;
                        v8 = v73;
                        goto LABEL_68;
                      }

                      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
                      {
                        v64 = [(CKKSPeerProviderState *)v78 currentSelfPeers];
                        v65 = [v64 currentSelf];
                        *buf = 138413058;
                        v97 = v48;
                        v98 = 2112;
                        v99 = v77;
                        v100 = 2112;
                        v101 = v65;
                        v102 = 2112;
                        v103 = v53;
                        _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_ERROR, "Unwrapped TLKShare(%@) does not unwrap proposed TLK(%@) as %@: %@", buf, 0x2Au);
                      }

                      v44 = v60;
                      v47 = v74;
                    }

                    else
                    {
                      v55 = [v77 zoneName];
                      v56 = sub_100019104(@"ckksshare", v55);

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

                      v57 = [v77 zoneName];
                      v58 = sub_100019104(@"ckksshare", v57);

                      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
                      {
                        v59 = [(CKKSPeerProviderState *)v78 currentTrustedPeers];
                        *buf = 138412290;
                        v97 = v59;
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
              v16 = v77;
              v67 = [v77 zoneName];
              v44 = sub_100019104(@"ckksshare", v67);

              v66 = v71;
              if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v97 = v32;
                v98 = 2112;
                v99 = v77;
                _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "No CKKSTLKShares to %@ for %@", buf, 0x16u);
              }
            }

            v31 = v66 + 1;
            a5 = v68;
            v8 = v73;
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

      if (a5)
      {
        obj = [NSString stringWithFormat:@"No trusted TLKShares for %@", v16];
        v20 = context;
        [NSError errorWithDomain:"errorWithDomain:code:description:underlying:" code:@"CKKSErrorDomain" description:35 underlying:?];
        *a5 = v27 = 0;
LABEL_68:
      }

      else
      {
        v27 = 0;
        v20 = context;
      }

      goto LABEL_15;
    }
  }

  v16 = v77;
  v17 = [v77 zoneName];
  v18 = sub_100019104(@"ckksshare", v17);

  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v19 = [(CKKSPeerProviderState *)self currentTrustedPeersError];
    *buf = 138412290;
    v97 = v19;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Don't have trusted peers: %@", buf, 0xCu);
  }

  if (!a5)
  {
    goto LABEL_16;
  }

  v20 = [(CKKSPeerProviderState *)self currentTrustedPeersError];
  v21 = @"No trusted peers";
  v22 = 24;
LABEL_14:
  [NSError errorWithDomain:@"CKKSErrorDomain" code:v22 description:v21 underlying:v20];
  *a5 = v27 = 0;
LABEL_15:

LABEL_17:
  return v27;
}

- (id)description
{
  v3 = [(CKKSPeerProviderState *)self peerProviderID];
  v4 = [(CKKSPeerProviderState *)self currentSelfPeers];
  v5 = [(CKKSPeerProviderState *)self currentSelfPeersError];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = &stru_100348050;
  }

  v8 = [(CKKSPeerProviderState *)self currentTrustedPeers];
  v9 = [(CKKSPeerProviderState *)self currentTrustedPeersError];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = &stru_100348050;
  }

  v12 = [NSString stringWithFormat:@"<CKKSPeerProviderState(%@): %@%@ %@%@>", v3, v4, v7, v8, v11];

  return v12;
}

- (CKKSPeerProviderState)initWithPeerProviderID:(id)a3 essential:(BOOL)a4 selfPeers:(id)a5 selfPeersError:(id)a6 trustedPeers:(id)a7 trustedPeersError:(id)a8
{
  v30 = a3;
  v29 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v35.receiver = self;
  v35.super_class = CKKSPeerProviderState;
  v18 = [(CKKSPeerProviderState *)&v35 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_peerProviderID, a3);
    v19->_essential = a4;
    objc_storeStrong(&v19->_currentSelfPeers, a5);
    objc_storeStrong(&v19->_currentSelfPeersError, a6);
    objc_storeStrong(&v19->_currentTrustedPeers, a7);
    objc_storeStrong(&v19->_currentTrustedPeersError, a8);
    if (v19->_currentTrustedPeers)
    {
      v20 = [NSMutableSet set:v29];
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

            v26 = [*(*(&v31 + 1) + 8 * v25) peerID];
            [(NSSet *)v20 addObject:v26];

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

+ (id)createFromProvider:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v14 = 0;
  v5 = [v3 fetchSelfPeers:&v14];
  v6 = v14;
  v13 = 0;
  v7 = [v3 fetchTrustedPeers:&v13];
  v8 = v13;
  v9 = [CKKSPeerProviderState alloc];
  v10 = [v3 providerID];
  v11 = -[CKKSPeerProviderState initWithPeerProviderID:essential:selfPeers:selfPeersError:trustedPeers:trustedPeersError:](v9, "initWithPeerProviderID:essential:selfPeers:selfPeersError:trustedPeers:trustedPeersError:", v10, [v3 essential], v5, v6, v7, v8);

  objc_autoreleasePoolPop(v4);

  return v11;
}

+ (id)noPeersState:(id)a3
{
  v3 = a3;
  v4 = [CKKSPeerProviderState alloc];
  v5 = [v3 providerID];
  v6 = [v3 essential];

  v7 = [NSError errorWithDomain:@"CKKSErrorDomain" code:24 description:@"No current self peer available"];
  v8 = [NSError errorWithDomain:@"CKKSErrorDomain" code:24 description:@"No current trusted peers available"];
  v9 = [(CKKSPeerProviderState *)v4 initWithPeerProviderID:v5 essential:v6 selfPeers:0 selfPeersError:v7 trustedPeers:0 trustedPeersError:v8];

  return v9;
}

@end