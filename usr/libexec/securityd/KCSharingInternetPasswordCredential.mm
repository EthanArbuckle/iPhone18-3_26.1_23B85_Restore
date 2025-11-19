@interface KCSharingInternetPasswordCredential
+ (NSSet)requiredAttributeKeys;
- (BOOL)isEqual:(id)a3;
- (KCSharingInternetPasswordCredential)initWithAttributes:(id)a3 error:(id *)a4;
- (KCSharingInternetPasswordCredential)initWithDatabaseItem:(SecDbItem *)a3 error:(id *)a4;
- (KCSharingInternetPasswordCredential)initWithProto:(id)a3 sharingGroup:(id)a4 error:(id *)a5;
- (NSString)description;
- (id)attributesWithAccessGroups:(id)a3 error:(id *)a4;
- (id)proto;
- (unint64_t)hash;
@end

@implementation KCSharingInternetPasswordCredential

- (id)attributesWithAccessGroups:(id)a3 error:(id *)a4
{
  v38[0] = kSecAttrSharingGroup;
  v37 = [(KCSharingInternetPasswordCredential *)self sharingGroup:a3];
  v39[0] = v37;
  v38[1] = kSecAttrAccount;
  v36 = [(KCSharingInternetPasswordCredential *)self account];
  v39[1] = v36;
  v38[2] = kSecAttrProtocol;
  v35 = [(KCSharingInternetPasswordCredential *)self protocol];
  v39[2] = v35;
  v38[3] = kSecAttrServer;
  v34 = [(KCSharingInternetPasswordCredential *)self server];
  v39[3] = v34;
  v38[4] = kSecAttrPort;
  v33 = [(KCSharingInternetPasswordCredential *)self port];
  v39[4] = v33;
  v38[5] = kSecAttrPath;
  v32 = [(KCSharingInternetPasswordCredential *)self path];
  v39[5] = v32;
  v38[6] = kSecAttrAuthenticationType;
  v5 = [(KCSharingInternetPasswordCredential *)self authenticationType];
  v39[6] = v5;
  v38[7] = kSecValueData;
  v6 = [(KCSharingInternetPasswordCredential *)self data];
  v39[7] = v6;
  v38[8] = kSecAttrCreationDate;
  v7 = [(KCSharingInternetPasswordCredential *)self creationDate];
  v39[8] = v7;
  v38[9] = kSecAttrModificationDate;
  v8 = [(KCSharingInternetPasswordCredential *)self modificationDate];
  v39[9] = v8;
  v38[10] = kSecAttrSecurityDomain;
  v9 = [(KCSharingInternetPasswordCredential *)self securityDomain];
  v39[10] = v9;
  v39[11] = &__kCFBooleanFalse;
  v38[11] = kSecAttrSynchronizable;
  v38[12] = kSecAttrAccessible;
  v10 = [(KCSharingInternetPasswordCredential *)self accessibility];
  v39[12] = v10;
  v38[13] = kSecAttrAccessGroup;
  v11 = [(KCSharingInternetPasswordCredential *)self accessGroup];
  v39[13] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:14];
  v13 = [v12 mutableCopy];

  v14 = [(KCSharingInternetPasswordCredential *)self comment];
  [v13 setObject:v14 forKeyedSubscript:kSecAttrComment];

  v15 = [(KCSharingInternetPasswordCredential *)self label];
  [v13 setObject:v15 forKeyedSubscript:kSecAttrLabel];

  v16 = [(KCSharingInternetPasswordCredential *)self viewHint];
  [v13 setObject:v16 forKeyedSubscript:kSecAttrSyncViewHint];

  v17 = [(KCSharingInternetPasswordCredential *)self notes];
  [v13 setObject:v17 forKeyedSubscript:kSecDataInetExtraNotes];

  v18 = [(KCSharingInternetPasswordCredential *)self history];
  [v13 setObject:v18 forKeyedSubscript:kSecDataInetExtraHistory];

  v19 = [(KCSharingInternetPasswordCredential *)self clientDefined0];
  [v13 setObject:v19 forKeyedSubscript:kSecDataInetExtraClientDefined0];

  v20 = [(KCSharingInternetPasswordCredential *)self clientDefined1];
  [v13 setObject:v20 forKeyedSubscript:kSecDataInetExtraClientDefined1];

  v21 = [(KCSharingInternetPasswordCredential *)self clientDefined2];
  [v13 setObject:v21 forKeyedSubscript:kSecDataInetExtraClientDefined2];

  v22 = [(KCSharingInternetPasswordCredential *)self clientDefined3];
  [v13 setObject:v22 forKeyedSubscript:kSecDataInetExtraClientDefined3];

  v23 = [NSNumber numberWithInteger:[(KCSharingInternetPasswordCredential *)self creator]];
  [v13 setObject:v23 forKeyedSubscript:kSecAttrCreator];

  v24 = [NSNumber numberWithInteger:[(KCSharingInternetPasswordCredential *)self type]];
  [v13 setObject:v24 forKeyedSubscript:kSecAttrType];

  v25 = [(KCSharingInternetPasswordCredential *)self itemDescription];
  [v13 setObject:v25 forKeyedSubscript:kSecAttrDescription];

  v26 = [(KCSharingInternetPasswordCredential *)self alias];
  [v13 setObject:v26 forKeyedSubscript:kSecAttrAlias];

  v27 = [NSNumber numberWithInteger:[(KCSharingInternetPasswordCredential *)self isInvisible]];
  [v13 setObject:v27 forKeyedSubscript:kSecAttrIsInvisible];

  v28 = [NSNumber numberWithInteger:[(KCSharingInternetPasswordCredential *)self isNegative]];
  [v13 setObject:v28 forKeyedSubscript:kSecAttrIsNegative];

  v29 = [NSNumber numberWithInteger:[(KCSharingInternetPasswordCredential *)self customIcon]];
  [v13 setObject:v29 forKeyedSubscript:kSecAttrHasCustomIcon];

  v30 = [NSNumber numberWithInteger:[(KCSharingInternetPasswordCredential *)self scriptCode]];
  [v13 setObject:v30 forKeyedSubscript:kSecAttrScriptCode];

  return v13;
}

- (id)proto
{
  v3 = objc_opt_new();
  v4 = [(KCSharingInternetPasswordCredential *)self accessGroup];
  [v3 setAccessGroup:v4];

  v5 = [(KCSharingInternetPasswordCredential *)self account];
  [v3 setAccount:v5];

  v6 = [(KCSharingInternetPasswordCredential *)self protocol];
  [v3 setProtocol:v6];

  v7 = [(KCSharingInternetPasswordCredential *)self server];
  [v3 setServer:v7];

  v8 = [(KCSharingInternetPasswordCredential *)self port];
  [v3 setPort:{objc_msgSend(v8, "intValue")}];

  v9 = [(KCSharingInternetPasswordCredential *)self path];
  [v3 setPath:v9];

  v10 = [(KCSharingInternetPasswordCredential *)self authenticationType];
  [v3 setAuthenticationType:v10];

  v11 = [(KCSharingInternetPasswordCredential *)self data];
  [v3 setData:v11];

  v12 = [(KCSharingInternetPasswordCredential *)self creationDate];
  [v12 timeIntervalSinceReferenceDate];
  [v3 setCreationDate:?];

  v13 = [(KCSharingInternetPasswordCredential *)self modificationDate];
  [v13 timeIntervalSinceReferenceDate];
  [v3 setModificationDate:?];

  v14 = [(KCSharingInternetPasswordCredential *)self comment];
  [v3 setComment:v14];

  v15 = [(KCSharingInternetPasswordCredential *)self label];
  [v3 setLabel:v15];

  v16 = [(KCSharingInternetPasswordCredential *)self accessibility];
  [v3 setAccessibility:v16];

  v17 = [(KCSharingInternetPasswordCredential *)self viewHint];
  [v3 setViewHint:v17];

  v18 = [(KCSharingInternetPasswordCredential *)self securityDomain];
  [v3 setSecurityDomain:v18];

  v19 = [(KCSharingInternetPasswordCredential *)self notes];
  [v3 setNotes:v19];

  v20 = [(KCSharingInternetPasswordCredential *)self history];
  [v3 setHistory:v20];

  v21 = [(KCSharingInternetPasswordCredential *)self clientDefined0];
  [v3 setClientDefined0:v21];

  v22 = [(KCSharingInternetPasswordCredential *)self clientDefined1];
  [v3 setClientDefined1:v22];

  v23 = [(KCSharingInternetPasswordCredential *)self clientDefined2];
  [v3 setClientDefined2:v23];

  v24 = [(KCSharingInternetPasswordCredential *)self clientDefined3];
  [v3 setClientDefined3:v24];

  [v3 setCreator:{-[KCSharingInternetPasswordCredential creator](self, "creator")}];
  [v3 setType:{-[KCSharingInternetPasswordCredential type](self, "type")}];
  v25 = [(KCSharingInternetPasswordCredential *)self itemDescription];
  [v3 setItemDescription:v25];

  v26 = [(KCSharingInternetPasswordCredential *)self alias];
  [v3 setAlias:v26];

  [v3 setIsInvisible:{-[KCSharingInternetPasswordCredential isInvisible](self, "isInvisible")}];
  [v3 setIsNegative:{-[KCSharingInternetPasswordCredential isNegative](self, "isNegative")}];
  [v3 setCustomIcon:{-[KCSharingInternetPasswordCredential customIcon](self, "customIcon")}];
  [v3 setScriptCode:{-[KCSharingInternetPasswordCredential scriptCode](self, "scriptCode")}];

  return v3;
}

- (NSString)description
{
  v27 = [(KCSharingInternetPasswordCredential *)self sharingGroup];
  v23 = [(KCSharingInternetPasswordCredential *)self accessGroup];
  v22 = [(KCSharingInternetPasswordCredential *)self account];
  v21 = [(KCSharingInternetPasswordCredential *)self protocol];
  v26 = [(KCSharingInternetPasswordCredential *)self server];
  v20 = [(KCSharingInternetPasswordCredential *)self port];
  v25 = [(KCSharingInternetPasswordCredential *)self path];
  v19 = [(KCSharingInternetPasswordCredential *)self authenticationType];
  v18 = [(KCSharingInternetPasswordCredential *)self type];
  v17 = [(KCSharingInternetPasswordCredential *)self creator];
  v13 = [(KCSharingInternetPasswordCredential *)self itemDescription];
  v16 = [(KCSharingInternetPasswordCredential *)self alias];
  v15 = [(KCSharingInternetPasswordCredential *)self isInvisible];
  v14 = [(KCSharingInternetPasswordCredential *)self isNegative];
  v3 = [(KCSharingInternetPasswordCredential *)self customIcon];
  v4 = [(KCSharingInternetPasswordCredential *)self scriptCode];
  v12 = [(KCSharingInternetPasswordCredential *)self creationDate];
  v11 = [(KCSharingInternetPasswordCredential *)self modificationDate];
  v10 = [(KCSharingInternetPasswordCredential *)self comment];
  v5 = [(KCSharingInternetPasswordCredential *)self label];
  v6 = [(KCSharingInternetPasswordCredential *)self accessibility];
  v7 = [(KCSharingInternetPasswordCredential *)self viewHint];
  v8 = [(KCSharingInternetPasswordCredential *)self securityDomain];
  v24 = [NSString stringWithFormat:@"KCSharingInternetPasswordCredential(sharingGroup:%@ accessGroup:%@ account:%@ protocol:%@ server:%@ port:%@ path:%@ authenticationType:%@ type:%ld creator:%ld description:%@ alias:%@ visibility:%ld negative:%ld icon:%ld scriptCode:%ld creationDate:%@ modificationDate:%@ comment:%@ label:%@ accessibility:%@ viewHint:%@ securityDomain:%@)", v27, v23, v22, v21, v26, v20, v25, v19, v18, v17, v13, v16, v15, v14, v3, v4, v12, v11, v10, v5, v6, v7, v8];

  return v24;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v28 = 1;
  }

  else if ([(KCSharingInternetPasswordCredential *)v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    v6 = [(KCSharingInternetPasswordCredential *)self sharingGroup];
    v123 = [(KCSharingInternetPasswordCredential *)v5 sharingGroup];
    v124 = v6;
    v122 = [v6 isEqualToString:?];
    if (v122 && (-[KCSharingInternetPasswordCredential accessGroup](self, "accessGroup"), v8 = objc_claimAutoreleasedReturnValue(), -[KCSharingInternetPasswordCredential accessGroup](v5, "accessGroup"), v118 = objc_claimAutoreleasedReturnValue(), v119 = v8, [v8 isEqualToString:?]))
    {
      v9 = [(KCSharingInternetPasswordCredential *)self account];
      v116 = [(KCSharingInternetPasswordCredential *)v5 account];
      v117 = v9;
      if ([v9 isEqualToString:?])
      {
        v10 = [(KCSharingInternetPasswordCredential *)self protocol];
        v114 = [(KCSharingInternetPasswordCredential *)v5 protocol];
        v115 = v10;
        if ([v10 isEqualToString:?])
        {
          v11 = [(KCSharingInternetPasswordCredential *)self server];
          v112 = [(KCSharingInternetPasswordCredential *)v5 server];
          v113 = v11;
          if ([v11 isEqualToString:?])
          {
            v12 = [(KCSharingInternetPasswordCredential *)self port];
            v110 = [(KCSharingInternetPasswordCredential *)v5 port];
            v111 = v12;
            if ([v12 isEqualToNumber:?])
            {
              v13 = [(KCSharingInternetPasswordCredential *)self path];
              v108 = [(KCSharingInternetPasswordCredential *)v5 path];
              v109 = v13;
              if ([v13 isEqualToString:?])
              {
                v14 = [(KCSharingInternetPasswordCredential *)self authenticationType];
                v106 = [(KCSharingInternetPasswordCredential *)v5 authenticationType];
                v107 = v14;
                if ([v14 isEqualToString:?])
                {
                  v15 = [(KCSharingInternetPasswordCredential *)self data];
                  v104 = [(KCSharingInternetPasswordCredential *)v5 data];
                  v105 = v15;
                  if ([v15 isEqualToData:?])
                  {
                    v16 = [(KCSharingInternetPasswordCredential *)self creationDate];
                    v102 = [(KCSharingInternetPasswordCredential *)v5 creationDate];
                    v103 = v16;
                    if ([v16 isEqualToDate:?])
                    {
                      v17 = [(KCSharingInternetPasswordCredential *)self modificationDate];
                      v100 = [(KCSharingInternetPasswordCredential *)v5 modificationDate];
                      v101 = v17;
                      if ([v17 isEqualToDate:?])
                      {
                        v18 = [(KCSharingInternetPasswordCredential *)self comment];
                        v98 = [(KCSharingInternetPasswordCredential *)v5 comment];
                        v99 = v18;
                        LODWORD(v125[4]) = v18 != v98;
                        if (v18 == v98 || (-[KCSharingInternetPasswordCredential comment](self, "comment"), v19 = objc_claimAutoreleasedReturnValue(), -[KCSharingInternetPasswordCredential comment](v5, "comment"), v94 = objc_claimAutoreleasedReturnValue(), v95 = v19, [v19 isEqualToString:?]))
                        {
                          v30 = [(KCSharingInternetPasswordCredential *)self label];
                          v96 = [(KCSharingInternetPasswordCredential *)v5 label];
                          v97 = v30;
                          HIDWORD(v125[3]) = v30 != v96;
                          if (v30 == v96 || (-[KCSharingInternetPasswordCredential label](self, "label"), v31 = objc_claimAutoreleasedReturnValue(), -[KCSharingInternetPasswordCredential label](v5, "label"), v90 = objc_claimAutoreleasedReturnValue(), v91 = v31, [v31 isEqualToString:?]))
                          {
                            v32 = [(KCSharingInternetPasswordCredential *)self accessibility];
                            v92 = [(KCSharingInternetPasswordCredential *)v5 accessibility];
                            v93 = v32;
                            if ([v32 isEqualToString:?])
                            {
                              v33 = [(KCSharingInternetPasswordCredential *)self viewHint];
                              v88 = [(KCSharingInternetPasswordCredential *)v5 viewHint];
                              v89 = v33;
                              LODWORD(v125[3]) = v33 != v88;
                              if (v33 == v88 || (-[KCSharingInternetPasswordCredential viewHint](self, "viewHint"), v34 = objc_claimAutoreleasedReturnValue(), -[KCSharingInternetPasswordCredential viewHint](v5, "viewHint"), v84 = objc_claimAutoreleasedReturnValue(), v85 = v34, [v34 isEqualToString:?]))
                              {
                                v35 = [(KCSharingInternetPasswordCredential *)self securityDomain];
                                v86 = [(KCSharingInternetPasswordCredential *)v5 securityDomain];
                                v87 = v35;
                                if ([v35 isEqualToString:?])
                                {
                                  v36 = [(KCSharingInternetPasswordCredential *)self notes];
                                  v82 = [(KCSharingInternetPasswordCredential *)v5 notes];
                                  v83 = v36;
                                  HIDWORD(v125[2]) = v36 != v82;
                                  if (v36 == v82 || (-[KCSharingInternetPasswordCredential notes](self, "notes"), v37 = objc_claimAutoreleasedReturnValue(), -[KCSharingInternetPasswordCredential notes](v5, "notes"), v78 = objc_claimAutoreleasedReturnValue(), v79 = v37, [v37 isEqualToData:?]))
                                  {
                                    v38 = [(KCSharingInternetPasswordCredential *)self history];
                                    v80 = [(KCSharingInternetPasswordCredential *)v5 history];
                                    v81 = v38;
                                    LODWORD(v125[2]) = v38 != v80;
                                    if (v38 == v80 || (-[KCSharingInternetPasswordCredential history](self, "history"), v39 = objc_claimAutoreleasedReturnValue(), -[KCSharingInternetPasswordCredential history](v5, "history"), v74 = objc_claimAutoreleasedReturnValue(), v75 = v39, [v39 isEqualToData:?]))
                                    {
                                      v40 = [(KCSharingInternetPasswordCredential *)self clientDefined0];
                                      v76 = [(KCSharingInternetPasswordCredential *)v5 clientDefined0];
                                      v77 = v40;
                                      HIDWORD(v125[1]) = v40 != v76;
                                      if (v40 == v76 || (-[KCSharingInternetPasswordCredential clientDefined0](self, "clientDefined0"), v41 = objc_claimAutoreleasedReturnValue(), -[KCSharingInternetPasswordCredential clientDefined0](v5, "clientDefined0"), v70 = objc_claimAutoreleasedReturnValue(), v71 = v41, [v41 isEqualToData:?]))
                                      {
                                        v42 = [(KCSharingInternetPasswordCredential *)self clientDefined1];
                                        v72 = [(KCSharingInternetPasswordCredential *)v5 clientDefined1];
                                        v73 = v42;
                                        LODWORD(v125[1]) = v42 != v72;
                                        if (v42 == v72 || (-[KCSharingInternetPasswordCredential clientDefined1](self, "clientDefined1"), v43 = objc_claimAutoreleasedReturnValue(), -[KCSharingInternetPasswordCredential clientDefined1](v5, "clientDefined1"), v66 = objc_claimAutoreleasedReturnValue(), v67 = v43, [v43 isEqualToData:?]))
                                        {
                                          v44 = [(KCSharingInternetPasswordCredential *)self clientDefined2];
                                          v68 = [(KCSharingInternetPasswordCredential *)v5 clientDefined2];
                                          v69 = v44;
                                          HIDWORD(v125[0]) = v44 != v68;
                                          if (v44 == v68 || (-[KCSharingInternetPasswordCredential clientDefined2](self, "clientDefined2"), v45 = objc_claimAutoreleasedReturnValue(), -[KCSharingInternetPasswordCredential clientDefined2](v5, "clientDefined2"), v62 = objc_claimAutoreleasedReturnValue(), v63 = v45, [v45 isEqualToData:?]))
                                          {
                                            v46 = [(KCSharingInternetPasswordCredential *)self clientDefined3];
                                            v64 = [(KCSharingInternetPasswordCredential *)v5 clientDefined3];
                                            v65 = v46;
                                            LODWORD(v125[0]) = v46 != v64;
                                            if (v46 == v64 || (-[KCSharingInternetPasswordCredential clientDefined3](self, "clientDefined3"), v47 = objc_claimAutoreleasedReturnValue(), -[KCSharingInternetPasswordCredential clientDefined3](v5, "clientDefined3"), v60 = objc_claimAutoreleasedReturnValue(), v61 = v47, [v47 isEqualToData:?]))
                                            {
                                              v48 = [(KCSharingInternetPasswordCredential *)self creator];
                                              if (v48 == [(KCSharingInternetPasswordCredential *)v5 creator]&& (v49 = [(KCSharingInternetPasswordCredential *)self type], v49 == [(KCSharingInternetPasswordCredential *)v5 type]))
                                              {
                                                v50 = [(KCSharingInternetPasswordCredential *)self itemDescription];
                                                v58 = [(KCSharingInternetPasswordCredential *)v5 itemDescription];
                                                v59 = v50;
                                                if ([v50 isEqualToString:?])
                                                {
                                                  v51 = [(KCSharingInternetPasswordCredential *)self alias];
                                                  v56 = [(KCSharingInternetPasswordCredential *)v5 alias];
                                                  v57 = v51;
                                                  if ([v51 isEqualToData:?] && (v52 = -[KCSharingInternetPasswordCredential isInvisible](self, "isInvisible"), v52 == -[KCSharingInternetPasswordCredential isInvisible](v5, "isInvisible")) && (v53 = -[KCSharingInternetPasswordCredential isNegative](self, "isNegative"), v53 == -[KCSharingInternetPasswordCredential isNegative](v5, "isNegative")) && (v54 = -[KCSharingInternetPasswordCredential customIcon](self, "customIcon"), v54 == -[KCSharingInternetPasswordCredential customIcon](v5, "customIcon")))
                                                  {
                                                    v55 = [(KCSharingInternetPasswordCredential *)self scriptCode];
                                                    v28 = v55 == [(KCSharingInternetPasswordCredential *)v5 scriptCode];
                                                  }

                                                  else
                                                  {
                                                    v28 = 0;
                                                  }

                                                  v27 = 1;
                                                  v121[3] = 0x100000001;
                                                  v121[2] = 0x100000001;
                                                  v121[1] = 0x100000001;
                                                  v121[0] = 0x100000001;
                                                  *&v120[16] = 0x100000001;
                                                  *&v120[8] = 0x100000001;
                                                  *v120 = 0x100000001;
                                                  v20 = 1;
                                                  v21 = 1;
                                                  v22 = 1;
                                                  v23 = 1;
                                                  v24 = 1;
                                                  v25 = 1;
                                                  v26 = 1;
                                                  v7 = v56;
                                                }

                                                else
                                                {
                                                  v27 = 0;
                                                  v28 = 0;
                                                  v121[3] = 0x100000001;
                                                  v121[2] = 0x100000001;
                                                  v121[1] = 0x100000001;
                                                  v121[0] = 0x100000001;
                                                  *&v120[16] = 0x100000001;
                                                  *&v120[8] = 0x100000001;
                                                  *v120 = 0x100000001;
                                                  v20 = 1;
                                                  v21 = 1;
                                                  v22 = 1;
                                                  v23 = 1;
                                                  v24 = 1;
                                                  v25 = 1;
                                                  v26 = 1;
                                                }
                                              }

                                              else
                                              {
                                                v26 = 0;
                                                v27 = 0;
                                                v28 = 0;
                                                v121[3] = 0x100000001;
                                                v121[2] = 0x100000001;
                                                v121[1] = 0x100000001;
                                                v121[0] = 0x100000001;
                                                *&v120[16] = 0x100000001;
                                                *&v120[8] = 0x100000001;
                                                *v120 = 0x100000001;
                                                v20 = 1;
                                                v21 = 1;
                                                v22 = 1;
                                                v23 = 1;
                                                v24 = 1;
                                                v25 = 1;
                                              }
                                            }

                                            else
                                            {
                                              v26 = 0;
                                              v27 = 0;
                                              v28 = 0;
                                              v121[3] = 0x100000001;
                                              v121[2] = 0x100000001;
                                              v121[1] = 0x100000001;
                                              v121[0] = 0x100000001;
                                              *&v120[16] = 0x100000001;
                                              *&v120[8] = 0x100000001;
                                              *v120 = 0x100000001;
                                              v20 = 1;
                                              v21 = 1;
                                              v22 = 1;
                                              v23 = 1;
                                              v24 = 1;
                                              v25 = 1;
                                              LODWORD(v125[0]) = 1;
                                            }
                                          }

                                          else
                                          {
                                            v25 = 0;
                                            v125[0] = 0x100000000;
                                            v26 = 0;
                                            v27 = 0;
                                            v28 = 0;
                                            v121[3] = 0x100000001;
                                            v121[2] = 0x100000001;
                                            v121[1] = 0x100000001;
                                            v121[0] = 0x100000001;
                                            *&v120[16] = 0x100000001;
                                            *&v120[8] = 0x100000001;
                                            *v120 = 0x100000001;
                                            v20 = 1;
                                            v21 = 1;
                                            v22 = 1;
                                            v23 = 1;
                                            v24 = 1;
                                          }
                                        }

                                        else
                                        {
                                          v24 = 0;
                                          v125[0] = 0;
                                          v25 = 0;
                                          v26 = 0;
                                          v27 = 0;
                                          v28 = 0;
                                          v121[3] = 0x100000001;
                                          v121[2] = 0x100000001;
                                          v121[1] = 0x100000001;
                                          v121[0] = 0x100000001;
                                          *&v120[16] = 0x100000001;
                                          *&v120[8] = 0x100000001;
                                          *v120 = 0x100000001;
                                          v20 = 1;
                                          v21 = 1;
                                          v22 = 1;
                                          v23 = 1;
                                          LODWORD(v125[1]) = 1;
                                        }
                                      }

                                      else
                                      {
                                        v23 = 0;
                                        *(v125 + 4) = 0;
                                        v24 = 0;
                                        v25 = 0;
                                        LODWORD(v125[0]) = 0;
                                        v26 = 0;
                                        v27 = 0;
                                        v28 = 0;
                                        v121[3] = 0x100000001;
                                        v121[2] = 0x100000001;
                                        v121[1] = 0x100000001;
                                        v121[0] = 0x100000001;
                                        *&v120[16] = 0x100000001;
                                        *&v120[8] = 0x100000001;
                                        *v120 = 0x100000001;
                                        v20 = 1;
                                        v21 = 1;
                                        v22 = 1;
                                        HIDWORD(v125[1]) = 1;
                                      }
                                    }

                                    else
                                    {
                                      v22 = 0;
                                      v125[1] = 0;
                                      v23 = 0;
                                      v24 = 0;
                                      v125[0] = 0;
                                      v25 = 0;
                                      v26 = 0;
                                      v27 = 0;
                                      v28 = 0;
                                      v121[3] = 0x100000001;
                                      v121[2] = 0x100000001;
                                      v121[1] = 0x100000001;
                                      v121[0] = 0x100000001;
                                      *&v120[16] = 0x100000001;
                                      *&v120[8] = 0x100000001;
                                      *v120 = 0x100000001;
                                      v20 = 1;
                                      v21 = 1;
                                      LODWORD(v125[2]) = 1;
                                    }
                                  }

                                  else
                                  {
                                    v21 = 0;
                                    v22 = 0;
                                    v23 = 0;
                                    v24 = 0;
                                    v25 = 0;
                                    memset(v125, 0, 20);
                                    v26 = 0;
                                    v27 = 0;
                                    v28 = 0;
                                    v121[3] = 0x100000001;
                                    v121[2] = 0x100000001;
                                    v121[1] = 0x100000001;
                                    v121[0] = 0x100000001;
                                    *&v120[16] = 0x100000001;
                                    *&v120[8] = 0x100000001;
                                    *v120 = 0x100000001;
                                    v20 = 1;
                                    HIDWORD(v125[2]) = 1;
                                  }
                                }

                                else
                                {
                                  *v120 = 0x100000000;
                                  v21 = 0;
                                  v22 = 0;
                                  v23 = 0;
                                  v24 = 0;
                                  memset(v125, 0, 24);
                                  v25 = 0;
                                  v26 = 0;
                                  v27 = 0;
                                  v28 = 0;
                                  v121[3] = 0x100000001;
                                  v121[2] = 0x100000001;
                                  v121[1] = 0x100000001;
                                  v121[0] = 0x100000001;
                                  *&v120[16] = 0x100000001;
                                  *&v120[8] = 0x100000001;
                                  v20 = 1;
                                }
                              }

                              else
                              {
                                v20 = 0;
                                *v120 = 0x100000000;
                                v21 = 0;
                                v22 = 0;
                                v23 = 0;
                                v24 = 0;
                                memset(v125, 0, 24);
                                v25 = 0;
                                v26 = 0;
                                v27 = 0;
                                v28 = 0;
                                v121[3] = 0x100000001;
                                v121[2] = 0x100000001;
                                v121[1] = 0x100000001;
                                v121[0] = 0x100000001;
                                *&v120[16] = 0x100000001;
                                *&v120[8] = 0x100000001;
                                LODWORD(v125[3]) = 1;
                              }
                            }

                            else
                            {
                              *&v120[8] = 0x100000000;
                              v20 = 0;
                              *v120 = 0x100000000;
                              v21 = 0;
                              v22 = 0;
                              v23 = 0;
                              v24 = 0;
                              v25 = 0;
                              memset(v125, 0, 28);
                              v26 = 0;
                              v27 = 0;
                              v28 = 0;
                              v121[3] = 0x100000001;
                              v121[2] = 0x100000001;
                              v121[1] = 0x100000001;
                              v121[0] = 0x100000001;
                              *&v120[16] = 0x100000001;
                            }
                          }

                          else
                          {
                            *&v120[4] = 0;
                            v20 = 0;
                            *v120 = 0;
                            v21 = 0;
                            v22 = 0;
                            v23 = 0;
                            v24 = 0;
                            v25 = 0;
                            memset(v125, 0, 28);
                            v26 = 0;
                            v27 = 0;
                            v28 = 0;
                            v121[3] = 0x100000001;
                            v121[2] = 0x100000001;
                            v121[1] = 0x100000001;
                            v121[0] = 0x100000001;
                            *&v120[16] = 0x100000001;
                            *&v120[12] = 1;
                            HIDWORD(v125[3]) = 1;
                          }
                        }

                        else
                        {
                          *v120 = 0uLL;
                          v20 = 0;
                          v21 = 0;
                          v22 = 0;
                          v23 = 0;
                          v24 = 0;
                          memset(v125, 0, 32);
                          v25 = 0;
                          v26 = 0;
                          v27 = 0;
                          v28 = 0;
                          v121[3] = 0x100000001;
                          v121[2] = 0x100000001;
                          v121[1] = 0x100000001;
                          v121[0] = 0x100000001;
                          *&v120[16] = 0x100000001;
                          LODWORD(v125[4]) = 1;
                        }
                      }

                      else
                      {
                        v121[0] = 0x100000000;
                        *&v120[8] = 0;
                        *v120 = 0;
                        v20 = 0;
                        v21 = 0;
                        v22 = 0;
                        v23 = 0;
                        v24 = 0;
                        v25 = 0;
                        memset(v125, 0, 36);
                        v26 = 0;
                        v27 = 0;
                        v28 = 0;
                        v121[3] = 0x100000001;
                        v121[2] = 0x100000001;
                        v121[1] = 0x100000001;
                        *&v120[16] = 0x100000001;
                      }
                    }

                    else
                    {
                      v121[0] = 0x100000000;
                      v20 = 0;
                      memset(v120, 0, 20);
                      v21 = 0;
                      v22 = 0;
                      v23 = 0;
                      v24 = 0;
                      v25 = 0;
                      memset(v125, 0, 36);
                      v26 = 0;
                      v27 = 0;
                      v28 = 0;
                      v121[3] = 0x100000001;
                      v121[2] = 0x100000001;
                      v121[1] = 0x100000001;
                      *&v120[20] = 1;
                    }
                  }

                  else
                  {
                    v121[0] = 0x100000000;
                    memset(v120, 0, sizeof(v120));
                    v20 = 0;
                    v21 = 0;
                    v22 = 0;
                    v23 = 0;
                    v24 = 0;
                    v25 = 0;
                    memset(v125, 0, 36);
                    v26 = 0;
                    v27 = 0;
                    v28 = 0;
                    v121[3] = 0x100000001;
                    v121[2] = 0x100000001;
                    v121[1] = 0x100000001;
                  }
                }

                else
                {
                  v121[0] = 0;
                  memset(v120, 0, sizeof(v120));
                  v20 = 0;
                  v21 = 0;
                  v22 = 0;
                  v23 = 0;
                  v24 = 0;
                  v25 = 0;
                  memset(v125, 0, 36);
                  v26 = 0;
                  v27 = 0;
                  v28 = 0;
                  v121[3] = 0x100000001;
                  v121[2] = 0x100000001;
                  v121[1] = 0x100000001;
                }
              }

              else
              {
                *(v121 + 4) = 0;
                LODWORD(v121[0]) = 0;
                memset(v120, 0, sizeof(v120));
                v20 = 0;
                v21 = 0;
                v22 = 0;
                v23 = 0;
                v24 = 0;
                v25 = 0;
                memset(v125, 0, 36);
                v26 = 0;
                v27 = 0;
                v28 = 0;
                v121[3] = 0x100000001;
                v121[2] = 0x100000001;
                HIDWORD(v121[1]) = 1;
              }
            }

            else
            {
              v121[1] = 0;
              v121[0] = 0;
              memset(v120, 0, sizeof(v120));
              v20 = 0;
              v21 = 0;
              v22 = 0;
              v23 = 0;
              v24 = 0;
              v25 = 0;
              memset(v125, 0, 36);
              v26 = 0;
              v27 = 0;
              v28 = 0;
              v121[3] = 0x100000001;
              v121[2] = 0x100000001;
            }
          }

          else
          {
            memset(v121, 0, 20);
            memset(v120, 0, sizeof(v120));
            v20 = 0;
            v21 = 0;
            v22 = 0;
            v23 = 0;
            v24 = 0;
            v25 = 0;
            memset(v125, 0, 36);
            v26 = 0;
            v27 = 0;
            v28 = 0;
            v121[3] = 0x100000001;
            HIDWORD(v121[2]) = 1;
          }
        }

        else
        {
          memset(v121, 0, 24);
          memset(v120, 0, sizeof(v120));
          v20 = 0;
          v21 = 0;
          v22 = 0;
          v23 = 0;
          v24 = 0;
          v25 = 0;
          memset(v125, 0, 36);
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v121[3] = 0x100000001;
        }
      }

      else
      {
        memset(v121, 0, 28);
        memset(v120, 0, sizeof(v120));
        v20 = 0;
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v24 = 0;
        v25 = 0;
        memset(v125, 0, 36);
        v26 = 0;
        v27 = 0;
        v28 = 0;
        HIDWORD(v121[3]) = 1;
      }
    }

    else
    {
      memset(v121, 0, sizeof(v121));
      memset(v120, 0, sizeof(v120));
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      memset(v125, 0, 36);
      v26 = 0;
      v27 = 0;
      v28 = 0;
    }

    if (v27)
    {
    }

    if (v26)
    {
    }

    if (LODWORD(v125[0]))
    {
    }

    if (v25)
    {
    }

    if (HIDWORD(v125[0]))
    {
    }

    if (v24)
    {
    }

    if (LODWORD(v125[1]))
    {
    }

    if (v23)
    {
    }

    if (HIDWORD(v125[1]))
    {
    }

    if (v22)
    {
    }

    if (LODWORD(v125[2]))
    {
    }

    if (v21)
    {
    }

    if (HIDWORD(v125[2]))
    {
    }

    if (*v120)
    {
    }

    if (v20)
    {
    }

    if (LODWORD(v125[3]))
    {
    }

    if (*&v120[8])
    {
    }

    if (*&v120[4])
    {
    }

    if (HIDWORD(v125[3]))
    {
    }

    if (*&v120[12])
    {
    }

    if (LODWORD(v125[4]))
    {
    }

    if (LODWORD(v121[0]))
    {
    }

    if (*&v120[16])
    {
    }

    if (*&v120[20])
    {
    }

    if (HIDWORD(v121[0]))
    {
    }

    if (LODWORD(v121[1]))
    {
    }

    if (HIDWORD(v121[1]))
    {
    }

    if (LODWORD(v121[2]))
    {
    }

    if (HIDWORD(v121[2]))
    {
    }

    if (LODWORD(v121[3]))
    {
    }

    if (HIDWORD(v121[3]))
    {
    }

    if (v122)
    {
    }
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

- (unint64_t)hash
{
  v3 = [(KCSharingInternetPasswordCredential *)self sharingGroup];
  v4 = [v3 hash];

  v5 = [(KCSharingInternetPasswordCredential *)self accessGroup];
  v6 = [v5 hash] - v4 + 32 * v4;

  v7 = [(KCSharingInternetPasswordCredential *)self account];
  v8 = [v7 hash] + 32 * v6 - v6;

  v9 = [(KCSharingInternetPasswordCredential *)self protocol];
  v10 = [v9 hash] + 32 * v8 - v8;

  v11 = [(KCSharingInternetPasswordCredential *)self server];
  v12 = [v11 hash] + 32 * v10 - v10;

  v13 = [(KCSharingInternetPasswordCredential *)self port];
  v14 = [v13 hash] + 32 * v12 - v12;

  v15 = [(KCSharingInternetPasswordCredential *)self path];
  v16 = [v15 hash] + 32 * v14 - v14;

  v17 = [(KCSharingInternetPasswordCredential *)self authenticationType];
  v18 = [v17 hash] + 32 * v16 - v16;

  v19 = [(KCSharingInternetPasswordCredential *)self data];
  v20 = [v19 hash] + 32 * v18 - v18;

  v21 = [(KCSharingInternetPasswordCredential *)self creationDate];
  v22 = [v21 hash] + 32 * v20 - v20;

  v23 = [(KCSharingInternetPasswordCredential *)self modificationDate];
  v24 = [v23 hash] + 32 * v22 - v22;

  v25 = [(KCSharingInternetPasswordCredential *)self comment];
  v26 = [v25 hash] + 32 * v24 - v24;

  v27 = [(KCSharingInternetPasswordCredential *)self label];
  v28 = [v27 hash] + 32 * v26 - v26;

  v29 = [(KCSharingInternetPasswordCredential *)self accessibility];
  v30 = [v29 hash] + 32 * v28 - v28;

  v31 = [(KCSharingInternetPasswordCredential *)self viewHint];
  v32 = [v31 hash] + 32 * v30 - v30;

  v33 = [(KCSharingInternetPasswordCredential *)self securityDomain];
  v34 = [v33 hash] + 32 * v32 - v32;

  v35 = [(KCSharingInternetPasswordCredential *)self notes];
  v36 = [v35 hash] + 32 * v34 - v34;

  v37 = [(KCSharingInternetPasswordCredential *)self history];
  v38 = [v37 hash] + 32 * v36 - v36;

  v39 = [(KCSharingInternetPasswordCredential *)self clientDefined0];
  v40 = [v39 hash] + 32 * v38 - v38;

  v41 = [(KCSharingInternetPasswordCredential *)self clientDefined1];
  v42 = [v41 hash] + 32 * v40 - v40;

  v43 = [(KCSharingInternetPasswordCredential *)self clientDefined2];
  v44 = [v43 hash] + 32 * v42 - v42;

  v45 = [(KCSharingInternetPasswordCredential *)self clientDefined3];
  v46 = [v45 hash] + 32 * v44 - v44;

  v47 = [(KCSharingInternetPasswordCredential *)self creator]+ 32 * v46 - v46;
  v48 = [(KCSharingInternetPasswordCredential *)self type]+ 32 * v47 - v47;
  v49 = [(KCSharingInternetPasswordCredential *)self itemDescription];
  v50 = [v49 hash] + 32 * v48 - v48;

  v51 = [(KCSharingInternetPasswordCredential *)self isInvisible]+ 32 * v50 - v50;
  v52 = [(KCSharingInternetPasswordCredential *)self isNegative]+ 32 * v51 - v51;
  v53 = [(KCSharingInternetPasswordCredential *)self customIcon]+ 32 * v52 - v52;
  return [(KCSharingInternetPasswordCredential *)self scriptCode]+ 32 * v53 - v53;
}

- (KCSharingInternetPasswordCredential)initWithAttributes:(id)a3 error:(id *)a4
{
  v6 = a3;
  v143.receiver = self;
  v143.super_class = KCSharingInternetPasswordCredential;
  v7 = [(KCSharingInternetPasswordCredential *)&v143 init];
  if (!v7)
  {
    goto LABEL_102;
  }

  v8 = kSecAttrSharingGroup;
  v9 = [v6 objectForKeyedSubscript:kSecAttrSharingGroup];
  if (!v9)
  {
    v256 = @"KCSharingMissingAttribute";
    v257 = v8;
    v10 = [NSDictionary dictionaryWithObjects:&v257 forKeys:&v256 count:1];
    sub_100061E2C(a4, 22, v10);
LABEL_33:

    goto LABEL_34;
  }

  if ((_NSIsNSString() & 1) == 0)
  {
    v254 = @"KCSharingInvalidAttribute";
    v252 = v8;
    v10 = [v9 copy];
    v253 = v10;
    v11 = [NSDictionary dictionaryWithObjects:&v253 forKeys:&v252 count:1];
    v255 = v11;
    v12 = [NSDictionary dictionaryWithObjects:&v255 forKeys:&v254 count:1];
    v16 = a4;
    v17 = 1;
LABEL_17:
    sub_100061E2C(v16, v17, v12);
LABEL_31:

    goto LABEL_32;
  }

  v10 = [v6 objectForKeyedSubscript:kSecAttrAccessGroup];
  if (!v10)
  {
    v250 = @"KCSharingMissingAttribute";
    v251 = kSecAttrAccessGroup;
    v11 = [NSDictionary dictionaryWithObjects:&v251 forKeys:&v250 count:1];
    sub_100061E2C(a4, 22, v11);
LABEL_32:

    goto LABEL_33;
  }

  if ((_NSIsNSString() & 1) == 0)
  {
    v248 = @"KCSharingInvalidAttribute";
    v246 = kSecAttrAccessGroup;
    v11 = [v10 copy];
    v247 = v11;
    v12 = [NSDictionary dictionaryWithObjects:&v247 forKeys:&v246 count:1];
    v249 = v12;
    v13 = [NSDictionary dictionaryWithObjects:&v249 forKeys:&v248 count:1];
    v18 = a4;
    v19 = 1;
LABEL_20:
    sub_100061E2C(v18, v19, v13);
LABEL_30:

    goto LABEL_31;
  }

  v11 = [v6 objectForKeyedSubscript:kSecAttrAccount];
  if (!v11)
  {
    v244 = @"KCSharingMissingAttribute";
    v245 = kSecAttrAccount;
    v12 = [NSDictionary dictionaryWithObjects:&v245 forKeys:&v244 count:1];
    v16 = a4;
    v17 = 22;
    goto LABEL_17;
  }

  if ((_NSIsNSString() & 1) == 0)
  {
    v242 = @"KCSharingInvalidAttribute";
    v240 = kSecAttrAccount;
    v12 = [v11 copy];
    v241 = v12;
    v13 = [NSDictionary dictionaryWithObjects:&v241 forKeys:&v240 count:1];
    v243 = v13;
    v15 = [NSDictionary dictionaryWithObjects:&v243 forKeys:&v242 count:1];
    v20 = a4;
    v21 = 1;
LABEL_23:
    sub_100061E2C(v20, v21, v15);
LABEL_29:

    goto LABEL_30;
  }

  v12 = [v6 objectForKeyedSubscript:kSecAttrProtocol];
  if (!v12)
  {
    v238 = @"KCSharingMissingAttribute";
    v239 = kSecAttrProtocol;
    v13 = [NSDictionary dictionaryWithObjects:&v239 forKeys:&v238 count:1];
    v18 = a4;
    v19 = 22;
    goto LABEL_20;
  }

  if ((_NSIsNSString() & 1) == 0)
  {
    v236 = @"KCSharingInvalidAttribute";
    v234 = kSecAttrProtocol;
    v13 = [v12 copy];
    v235 = v13;
    v15 = [NSDictionary dictionaryWithObjects:&v235 forKeys:&v234 count:1];
    v237 = v15;
    v22 = [NSDictionary dictionaryWithObjects:&v237 forKeys:&v236 count:1];
    sub_100061E2C(a4, 1, v22);
LABEL_28:

    goto LABEL_29;
  }

  v13 = [v6 objectForKeyedSubscript:kSecAttrServer];
  if (!v13)
  {
    v232 = @"KCSharingMissingAttribute";
    v233 = kSecAttrServer;
    v15 = [NSDictionary dictionaryWithObjects:&v233 forKeys:&v232 count:1];
    v20 = a4;
    v21 = 22;
    goto LABEL_23;
  }

  if ((_NSIsNSString() & 1) == 0)
  {
    v230 = @"KCSharingInvalidAttribute";
    v228 = kSecAttrServer;
    v15 = [v13 copy];
    v229 = v15;
    v140 = v12;
    v23 = v13;
    v22 = [NSDictionary dictionaryWithObjects:&v229 forKeys:&v228 count:1];
    v231 = v22;
    v24 = [NSDictionary dictionaryWithObjects:&v231 forKeys:&v230 count:1];
    sub_100061E2C(a4, 1, v24);

    v13 = v23;
    v12 = v140;
    goto LABEL_28;
  }

  v14 = [v6 objectForKeyedSubscript:kSecAttrPort];
  if (!v14)
  {
    v226 = @"KCSharingMissingAttribute";
    v227 = kSecAttrPort;
    [NSDictionary dictionaryWithObjects:&v227 forKeys:&v226 count:1];
    v26 = v12;
    v28 = v27 = v13;
    sub_100061E2C(a4, 22, v28);

    goto LABEL_32;
  }

  v15 = v14;
  if (_NSIsNSNumber())
  {
    v138 = v15;
  }

  else
  {
    v136 = v13;
    if (!_NSIsNSString())
    {
      v224 = @"KCSharingInvalidAttribute";
      v222 = kSecAttrPort;
      v58 = [v15 copy];
      v223 = v58;
      v134 = v15;
      v59 = [NSDictionary dictionaryWithObjects:&v223 forKeys:&v222 count:1];
      v225 = v59;
      v60 = [NSDictionary dictionaryWithObjects:&v225 forKeys:&v224 count:1];
      sub_100061E2C(a4, 1, v60);

      goto LABEL_31;
    }

    v138 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v15 intValue]);
  }

  v139 = [v6 objectForKeyedSubscript:kSecAttrPath];
  if (!v139)
  {
    v220 = @"KCSharingMissingAttribute";
    v221 = kSecAttrPath;
    v57 = [NSDictionary dictionaryWithObjects:&v221 forKeys:&v220 count:1];
    sub_100061E2C(a4, 22, v57);
LABEL_82:

LABEL_86:
    goto LABEL_29;
  }

  if ((_NSIsNSString() & 1) == 0)
  {
    v218 = @"KCSharingInvalidAttribute";
    v216 = kSecAttrPath;
    v57 = [v139 copy];
    v217 = v57;
    v135 = v15;
    [NSDictionary dictionaryWithObjects:&v217 forKeys:&v216 count:1];
    v142 = v12;
    v62 = v61 = v13;
    v219 = v62;
    v63 = [NSDictionary dictionaryWithObjects:&v219 forKeys:&v218 count:1];
    sub_100061E2C(a4, 1, v63);

    v15 = v135;
    v13 = v61;
    v12 = v142;
    goto LABEL_82;
  }

  v132 = [v6 objectForKeyedSubscript:kSecAttrAuthenticationType];
  if (!v132)
  {
    v214 = @"KCSharingMissingAttribute";
    v215 = kSecAttrAuthenticationType;
    v64 = [NSDictionary dictionaryWithObjects:&v215 forKeys:&v214 count:1];
    sub_100061E2C(a4, 22, v64);
LABEL_85:

    goto LABEL_86;
  }

  v133 = v15;
  v137 = v13;
  if ((_NSIsNSString() & 1) == 0)
  {
    v212 = @"KCSharingInvalidAttribute";
    v210 = kSecAttrAuthenticationType;
    v64 = [v132 copy];
    v211 = v64;
    v65 = [NSDictionary dictionaryWithObjects:&v211 forKeys:&v210 count:1];
    v213 = v65;
    v66 = [NSDictionary dictionaryWithObjects:&v213 forKeys:&v212 count:1];
    sub_100061E2C(a4, 1, v66);

    v15 = v133;
    v13 = v137;
    goto LABEL_85;
  }

  v141 = v12;
  v29 = [v6 objectForKeyedSubscript:kSecValueData];
  if (!v29)
  {
    v30 = 0;
    v208 = @"KCSharingMissingAttribute";
    v209 = kSecValueData;
    v67 = [NSDictionary dictionaryWithObjects:&v209 forKeys:&v208 count:1];
    sub_100061E2C(a4, 22, v67);
LABEL_89:

    goto LABEL_32;
  }

  v30 = v29;
  if ((_NSIsNSData() & 1) == 0)
  {
    v206 = @"KCSharingInvalidAttribute";
    v204 = kSecValueData;
    v67 = [v30 copy];
    v205 = v67;
    v68 = [NSDictionary dictionaryWithObjects:&v205 forKeys:&v204 count:1];
    v207 = v68;
    v69 = [NSDictionary dictionaryWithObjects:&v207 forKeys:&v206 count:1];
    sub_100061E2C(a4, 1, v69);

    goto LABEL_89;
  }

  v131 = [v6 objectForKeyedSubscript:kSecAttrCreationDate];
  if (!v131)
  {
    v202 = @"KCSharingMissingAttribute";
    v203 = kSecAttrCreationDate;
    v130 = [NSDictionary dictionaryWithObjects:&v203 forKeys:&v202 count:1];
    sub_100061E2C(a4, 22, v130);
LABEL_92:
    v72 = 0;
    goto LABEL_101;
  }

  if ((_NSIsNSDate() & 1) == 0)
  {
    v200 = @"KCSharingInvalidAttribute";
    v198 = kSecAttrCreationDate;
    v130 = [v131 copy];
    v199 = v130;
    v70 = [NSDictionary dictionaryWithObjects:&v199 forKeys:&v198 count:1];
    v201 = v70;
    v71 = [NSDictionary dictionaryWithObjects:&v201 forKeys:&v200 count:1];
    sub_100061E2C(a4, 1, v71);

    goto LABEL_92;
  }

  v130 = [v6 objectForKeyedSubscript:kSecAttrModificationDate];
  if (v130)
  {
    if (_NSIsNSDate())
    {
      v129 = [v6 objectForKeyedSubscript:kSecAttrComment];
      v126 = [v6 objectForKeyedSubscript:kSecAttrLabel];
      v128 = [v6 objectForKeyedSubscript:kSecAttrAccessible];
      if (v128)
      {
        if (_NSIsNSString() && [v128 length])
        {
          v127 = [v6 objectForKeyedSubscript:kSecAttrSyncViewHint];
          if (v127 && (_NSIsNSString() & 1) == 0)
          {
            v184 = @"KCSharingInvalidAttribute";
            v182 = kSecAttrSyncViewHint;
            v125 = [v127 copy];
            v183 = v125;
            v124 = [NSDictionary dictionaryWithObjects:&v183 forKeys:&v182 count:1];
            v185 = v124;
            v78 = [NSDictionary dictionaryWithObjects:&v185 forKeys:&v184 count:1];
            sub_100061E2C(a4, 1, v78);
          }

          else
          {
            v125 = [v6 objectForKeyedSubscript:kSecAttrSecurityDomain];
            if (!v125)
            {
              v180 = @"KCSharingMissingAttribute";
              v181 = kSecAttrSecurityDomain;
              v124 = [NSDictionary dictionaryWithObjects:&v181 forKeys:&v180 count:1];
              sub_100061E2C(a4, 22, v124);
              v125 = 0;
LABEL_108:
              v72 = 0;
LABEL_148:

              goto LABEL_99;
            }

            if (_NSIsNSString())
            {
              v124 = [v6 objectForKeyedSubscript:kSecDataInetExtraNotes];
              v119 = [v6 objectForKeyedSubscript:kSecDataInetExtraHistory];
              v118 = [v6 objectForKeyedSubscript:kSecDataInetExtraClientDefined0];
              v117 = [v6 objectForKeyedSubscript:kSecDataInetExtraClientDefined1];
              v116 = [v6 objectForKeyedSubscript:kSecDataInetExtraClientDefined2];
              v115 = [v6 objectForKeyedSubscript:kSecDataInetExtraClientDefined3];
              v123 = [v6 objectForKeyedSubscript:kSecAttrCreator];
              if (!v123 || (_NSIsNSNumber() & 1) != 0 || (_NSIsNSString() & 1) != 0)
              {
                v122 = [v6 objectForKeyedSubscript:kSecAttrType];
                if (!v122 || (_NSIsNSNumber() & 1) != 0 || (_NSIsNSString() & 1) != 0)
                {
                  v121 = [v6 objectForKeyedSubscript:kSecAttrDescription];
                  if (v121 && (_NSIsNSString() & 1) == 0)
                  {
                    v166 = @"KCSharingInvalidAttribute";
                    v164 = kSecAttrDescription;
                    v120 = [v121 copy];
                    v165 = v120;
                    v113 = [NSDictionary dictionaryWithObjects:&v165 forKeys:&v164 count:1];
                    v167 = v113;
                    v112 = [NSDictionary dictionaryWithObjects:&v167 forKeys:&v166 count:1];
                    sub_100061E2C(a4, 1, v112);
                    v72 = 0;

LABEL_146:
                    goto LABEL_147;
                  }

                  v31 = kSecAttrAlias;
                  v120 = [v6 objectForKeyedSubscript:kSecAttrAlias];
                  if (v120 && (_NSIsNSData() & 1) == 0)
                  {
                    v162 = @"KCSharingInvalidAttribute";
                    v160 = v31;
                    v113 = [v120 copy];
                    v161 = v113;
                    v111 = [NSDictionary dictionaryWithObjects:&v161 forKeys:&v160 count:1];
                    v163 = v111;
                    v110 = [NSDictionary dictionaryWithObjects:&v163 forKeys:&v162 count:1];
                    sub_100061E2C(a4, 1, v110);
                    v72 = 0;

LABEL_145:
                    goto LABEL_146;
                  }

                  v113 = [v6 objectForKeyedSubscript:kSecAttrIsInvisible];
                  if (!v113 || (_NSIsNSNumber() & 1) != 0 || (_NSIsNSString() & 1) != 0)
                  {
                    v111 = [v6 objectForKeyedSubscript:kSecAttrIsNegative];
                    if (!v111 || (_NSIsNSNumber() & 1) != 0 || (_NSIsNSString() & 1) != 0)
                    {
                      v32 = kSecAttrHasCustomIcon;
                      v109 = [v6 objectForKeyedSubscript:kSecAttrHasCustomIcon];
                      if (!v109 || (_NSIsNSNumber() & 1) != 0 || (_NSIsNSString() & 1) != 0)
                      {
                        v33 = kSecAttrScriptCode;
                        v108 = [v6 objectForKeyedSubscript:kSecAttrScriptCode];
                        if (!v108 || (_NSIsNSNumber() & 1) != 0 || (_NSIsNSString() & 1) != 0)
                        {
                          v34 = [v9 copy];
                          sharingGroup = v7->_sharingGroup;
                          v7->_sharingGroup = v34;

                          v36 = [v10 copy];
                          accessGroup = v7->_accessGroup;
                          v7->_accessGroup = v36;

                          v38 = [v11 copy];
                          account = v7->_account;
                          v7->_account = v38;

                          v40 = [v141 copy];
                          protocol = v7->_protocol;
                          v7->_protocol = v40;

                          v42 = [v13 copy];
                          server = v7->_server;
                          v7->_server = v42;

                          v44 = [v138 copy];
                          port = v7->_port;
                          v7->_port = v44;

                          v46 = [v139 copy];
                          path = v7->_path;
                          v7->_path = v46;

                          v48 = [v132 copy];
                          authenticationType = v7->_authenticationType;
                          v7->_authenticationType = v48;

                          v50 = [v30 copy];
                          data = v7->_data;
                          v7->_data = v50;

                          v52 = [v131 copy];
                          creationDate = v7->_creationDate;
                          v7->_creationDate = v52;

                          v54 = [v130 copy];
                          modificationDate = v7->_modificationDate;
                          v7->_modificationDate = v54;

                          if (_NSIsNSString())
                          {
                            v56 = [v129 copy];
                          }

                          else
                          {
                            v56 = 0;
                          }

                          comment = v7->_comment;
                          v7->_comment = v56;

                          if (_NSIsNSString())
                          {
                            v81 = [v126 copy];
                          }

                          else
                          {
                            v81 = 0;
                          }

                          label = v7->_label;
                          v7->_label = v81;

                          v83 = [v128 copy];
                          accessibility = v7->_accessibility;
                          v7->_accessibility = v83;

                          v85 = [v127 copy];
                          viewHint = v7->_viewHint;
                          v7->_viewHint = v85;

                          v87 = [v125 copy];
                          securityDomain = v7->_securityDomain;
                          v7->_securityDomain = v87;

                          if (_NSIsNSData())
                          {
                            v89 = [v124 copy];
                          }

                          else
                          {
                            v89 = 0;
                          }

                          notes = v7->_notes;
                          v7->_notes = v89;

                          if (_NSIsNSData())
                          {
                            v91 = [v119 copy];
                          }

                          else
                          {
                            v91 = 0;
                          }

                          history = v7->_history;
                          v7->_history = v91;

                          if (_NSIsNSData())
                          {
                            v93 = [v118 copy];
                          }

                          else
                          {
                            v93 = 0;
                          }

                          clientDefined0 = v7->_clientDefined0;
                          v7->_clientDefined0 = v93;

                          if (_NSIsNSData())
                          {
                            v95 = [v117 copy];
                          }

                          else
                          {
                            v95 = 0;
                          }

                          clientDefined1 = v7->_clientDefined1;
                          v7->_clientDefined1 = v95;

                          if (_NSIsNSData())
                          {
                            v97 = [v116 copy];
                          }

                          else
                          {
                            v97 = 0;
                          }

                          clientDefined2 = v7->_clientDefined2;
                          v7->_clientDefined2 = v97;

                          if (_NSIsNSData())
                          {
                            v99 = [v115 copy];
                          }

                          else
                          {
                            v99 = 0;
                          }

                          clientDefined3 = v7->_clientDefined3;
                          v7->_clientDefined3 = v99;

                          v7->_creator = [v123 intValue];
                          v7->_type = [v122 intValue];
                          v101 = [v121 copy];
                          itemDescription = v7->_itemDescription;
                          v7->_itemDescription = v101;

                          v103 = [v120 copy];
                          alias = v7->_alias;
                          v7->_alias = v103;

                          v7->_isInvisible = [v113 intValue];
                          v7->_isNegative = [v111 intValue];
                          v7->_customIcon = [v109 intValue];
                          v7->_scriptCode = [v108 intValue];
                          v72 = 1;
                          goto LABEL_143;
                        }

                        v146 = @"KCSharingInvalidAttribute";
                        v144 = v33;
                        v105 = [v108 copy];
                        v145 = v105;
                        v106 = [NSDictionary dictionaryWithObjects:&v145 forKeys:&v144 count:1];
                        v147 = v106;
                        v107 = [NSDictionary dictionaryWithObjects:&v147 forKeys:&v146 count:1];
                        sub_100061E2C(a4, 1, v107);
                      }

                      else
                      {
                        v150 = @"KCSharingInvalidAttribute";
                        v148 = v32;
                        v108 = [v109 copy];
                        v149 = v108;
                        v105 = [NSDictionary dictionaryWithObjects:&v149 forKeys:&v148 count:1];
                        v151 = v105;
                        v106 = [NSDictionary dictionaryWithObjects:&v151 forKeys:&v150 count:1];
                        sub_100061E2C(a4, 1, v106);
                      }
                    }

                    else
                    {
                      v154 = @"KCSharingInvalidAttribute";
                      v152 = kSecAttrIsNegative;
                      v109 = [v111 copy];
                      v153 = v109;
                      v108 = [NSDictionary dictionaryWithObjects:&v153 forKeys:&v152 count:1];
                      v155 = v108;
                      v105 = [NSDictionary dictionaryWithObjects:&v155 forKeys:&v154 count:1];
                      sub_100061E2C(a4, 1, v105);
                    }
                  }

                  else
                  {
                    v158 = @"KCSharingInvalidAttribute";
                    v156 = kSecAttrIsInvisible;
                    v111 = [v113 copy];
                    v157 = v111;
                    v109 = [NSDictionary dictionaryWithObjects:&v157 forKeys:&v156 count:1];
                    v159 = v109;
                    v108 = [NSDictionary dictionaryWithObjects:&v159 forKeys:&v158 count:1];
                    sub_100061E2C(a4, 1, v108);
                  }

                  v72 = 0;
LABEL_143:

                  goto LABEL_145;
                }

                v170 = @"KCSharingInvalidAttribute";
                v168 = kSecAttrType;
                v121 = [v122 copy];
                v169 = v121;
                v120 = [NSDictionary dictionaryWithObjects:&v169 forKeys:&v168 count:1];
                v171 = v120;
                v114 = [NSDictionary dictionaryWithObjects:&v171 forKeys:&v170 count:1];
                sub_100061E2C(a4, 1, v114);
                v72 = 0;
              }

              else
              {
                v174 = @"KCSharingInvalidAttribute";
                v172 = kSecAttrCreator;
                v122 = [v123 copy];
                v173 = v122;
                v121 = [NSDictionary dictionaryWithObjects:&v173 forKeys:&v172 count:1];
                v175 = v121;
                v120 = [NSDictionary dictionaryWithObjects:&v175 forKeys:&v174 count:1];
                sub_100061E2C(a4, 1, v120);
                v72 = 0;
              }

LABEL_147:

              goto LABEL_148;
            }

            v178 = @"KCSharingInvalidAttribute";
            v176 = kSecAttrSecurityDomain;
            v124 = [v125 copy];
            v177 = v124;
            v78 = [NSDictionary dictionaryWithObjects:&v177 forKeys:&v176 count:1];
            v179 = v78;
            v79 = [NSDictionary dictionaryWithObjects:&v179 forKeys:&v178 count:1];
            sub_100061E2C(a4, 1, v79);
          }

          goto LABEL_108;
        }

        v188 = @"KCSharingInvalidAttribute";
        v186 = kSecAttrAccessible;
        v127 = [v128 copy];
        v187 = v127;
        v75 = [NSDictionary dictionaryWithObjects:&v187 forKeys:&v186 count:1];
        v189 = v75;
        v76 = [NSDictionary dictionaryWithObjects:&v189 forKeys:&v188 count:1];
        sub_100061E2C(a4, 1, v76);
      }

      else
      {
        v190 = @"KCSharingMissingAttribute";
        v191 = kSecAttrAccessible;
        v127 = [NSDictionary dictionaryWithObjects:&v191 forKeys:&v190 count:1];
        sub_100061E2C(a4, 22, v127);
      }

      v72 = 0;
LABEL_99:

      goto LABEL_100;
    }

    v194 = @"KCSharingInvalidAttribute";
    v192 = kSecAttrModificationDate;
    v129 = [v130 copy];
    v193 = v129;
    v73 = [NSDictionary dictionaryWithObjects:&v193 forKeys:&v192 count:1];
    v195 = v73;
    v74 = [NSDictionary dictionaryWithObjects:&v195 forKeys:&v194 count:1];
    sub_100061E2C(a4, 1, v74);
  }

  else
  {
    v196 = @"KCSharingMissingAttribute";
    v197 = kSecAttrModificationDate;
    v129 = [NSDictionary dictionaryWithObjects:&v197 forKeys:&v196 count:1];
    sub_100061E2C(a4, 22, v129);
  }

  v72 = 0;
LABEL_100:

LABEL_101:
  if (v72)
  {
LABEL_102:
    v25 = v7;
    goto LABEL_103;
  }

LABEL_34:
  v25 = 0;
LABEL_103:

  return v25;
}

- (KCSharingInternetPasswordCredential)initWithProto:(id)a3 sharingGroup:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v82.receiver = self;
  v82.super_class = KCSharingInternetPasswordCredential;
  v9 = [(KCSharingInternetPasswordCredential *)&v82 init];
  if (v9)
  {
    v10 = [v8 copy];
    sharingGroup = v9->_sharingGroup;
    v9->_sharingGroup = v10;

    v12 = [v7 accessGroup];
    v13 = [v12 copy];
    accessGroup = v9->_accessGroup;
    v9->_accessGroup = v13;

    v15 = [v7 account];
    v16 = [v15 copy];
    account = v9->_account;
    v9->_account = v16;

    v18 = [v7 protocol];
    v19 = [v18 copy];
    protocol = v9->_protocol;
    v9->_protocol = v19;

    v21 = [v7 server];
    v22 = [v21 copy];
    server = v9->_server;
    v9->_server = v22;

    v24 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v7 port]);
    port = v9->_port;
    v9->_port = v24;

    v26 = [v7 path];
    v27 = [v26 copy];
    v28 = v27;
    if (v27)
    {
      v29 = v27;
    }

    else
    {
      v29 = &stru_100348050;
    }

    objc_storeStrong(&v9->_path, v29);

    v30 = [v7 authenticationType];
    v31 = [v30 copy];
    authenticationType = v9->_authenticationType;
    v9->_authenticationType = v31;

    v33 = [v7 data];
    v34 = [v33 copy];
    data = v9->_data;
    v9->_data = v34;

    [v7 creationDate];
    v36 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    creationDate = v9->_creationDate;
    v9->_creationDate = v36;

    [v7 modificationDate];
    v38 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    modificationDate = v9->_modificationDate;
    v9->_modificationDate = v38;

    v40 = [v7 comment];
    v41 = [v40 copy];
    comment = v9->_comment;
    v9->_comment = v41;

    v43 = [v7 label];
    v44 = [v43 copy];
    label = v9->_label;
    v9->_label = v44;

    v46 = [v7 accessibility];
    v47 = [v46 copy];
    v48 = v47;
    if (v47)
    {
      v49 = v47;
    }

    else
    {
      v49 = kSecAttrAccessibleWhenUnlocked;
    }

    objc_storeStrong(&v9->_accessibility, v49);

    v50 = [v7 viewHint];
    v51 = [v50 copy];
    viewHint = v9->_viewHint;
    v9->_viewHint = v51;

    v53 = [v7 securityDomain];
    v54 = [v53 copy];
    v55 = v54;
    if (v54)
    {
      v56 = v54;
    }

    else
    {
      v56 = &stru_100348050;
    }

    objc_storeStrong(&v9->_securityDomain, v56);

    v57 = [v7 notes];
    v58 = [v57 copy];
    notes = v9->_notes;
    v9->_notes = v58;

    v60 = [v7 history];
    v61 = [v60 copy];
    history = v9->_history;
    v9->_history = v61;

    v63 = [v7 clientDefined0];
    v64 = [v63 copy];
    clientDefined0 = v9->_clientDefined0;
    v9->_clientDefined0 = v64;

    v66 = [v7 clientDefined1];
    v67 = [v66 copy];
    clientDefined1 = v9->_clientDefined1;
    v9->_clientDefined1 = v67;

    v69 = [v7 clientDefined2];
    v70 = [v69 copy];
    clientDefined2 = v9->_clientDefined2;
    v9->_clientDefined2 = v70;

    v72 = [v7 clientDefined3];
    v73 = [v72 copy];
    clientDefined3 = v9->_clientDefined3;
    v9->_clientDefined3 = v73;

    v9->_creator = [v7 creator];
    v9->_type = [v7 type];
    v75 = [v7 itemDescription];
    v76 = [v75 copy];
    itemDescription = v9->_itemDescription;
    v9->_itemDescription = v76;

    v78 = [v7 alias];
    v79 = [v78 copy];
    alias = v9->_alias;
    v9->_alias = v79;

    v9->_isInvisible = [v7 isInvisible];
    v9->_isNegative = [v7 isNegative];
    v9->_customIcon = [v7 customIcon];
    v9->_scriptCode = [v7 scriptCode];
  }

  return v9;
}

- (KCSharingInternetPasswordCredential)initWithDatabaseItem:(SecDbItem *)a3 error:(id *)a4
{
  v7 = [objc_opt_class() requiredAttributeKeys];
  v8 = sub_100017964(a3, v7, a4);

  if (v8)
  {
    self = [(KCSharingInternetPasswordCredential *)self initWithAttributes:v8 error:a4];
    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (NSSet)requiredAttributeKeys
{
  if (qword_10039DB78 != -1)
  {
    dispatch_once(&qword_10039DB78, &stru_100333CC8);
  }

  v3 = qword_10039DB70;

  return v3;
}

@end