@interface KCSharingInternetPasswordCredential
+ (NSSet)requiredAttributeKeys;
- (BOOL)isEqual:(id)equal;
- (KCSharingInternetPasswordCredential)initWithAttributes:(id)attributes error:(id *)error;
- (KCSharingInternetPasswordCredential)initWithDatabaseItem:(SecDbItem *)item error:(id *)error;
- (KCSharingInternetPasswordCredential)initWithProto:(id)proto sharingGroup:(id)group error:(id *)error;
- (NSString)description;
- (id)attributesWithAccessGroups:(id)groups error:(id *)error;
- (id)proto;
- (unint64_t)hash;
@end

@implementation KCSharingInternetPasswordCredential

- (id)attributesWithAccessGroups:(id)groups error:(id *)error
{
  v38[0] = kSecAttrSharingGroup;
  v37 = [(KCSharingInternetPasswordCredential *)self sharingGroup:groups];
  v39[0] = v37;
  v38[1] = kSecAttrAccount;
  account = [(KCSharingInternetPasswordCredential *)self account];
  v39[1] = account;
  v38[2] = kSecAttrProtocol;
  protocol = [(KCSharingInternetPasswordCredential *)self protocol];
  v39[2] = protocol;
  v38[3] = kSecAttrServer;
  server = [(KCSharingInternetPasswordCredential *)self server];
  v39[3] = server;
  v38[4] = kSecAttrPort;
  port = [(KCSharingInternetPasswordCredential *)self port];
  v39[4] = port;
  v38[5] = kSecAttrPath;
  path = [(KCSharingInternetPasswordCredential *)self path];
  v39[5] = path;
  v38[6] = kSecAttrAuthenticationType;
  authenticationType = [(KCSharingInternetPasswordCredential *)self authenticationType];
  v39[6] = authenticationType;
  v38[7] = kSecValueData;
  data = [(KCSharingInternetPasswordCredential *)self data];
  v39[7] = data;
  v38[8] = kSecAttrCreationDate;
  creationDate = [(KCSharingInternetPasswordCredential *)self creationDate];
  v39[8] = creationDate;
  v38[9] = kSecAttrModificationDate;
  modificationDate = [(KCSharingInternetPasswordCredential *)self modificationDate];
  v39[9] = modificationDate;
  v38[10] = kSecAttrSecurityDomain;
  securityDomain = [(KCSharingInternetPasswordCredential *)self securityDomain];
  v39[10] = securityDomain;
  v39[11] = &__kCFBooleanFalse;
  v38[11] = kSecAttrSynchronizable;
  v38[12] = kSecAttrAccessible;
  accessibility = [(KCSharingInternetPasswordCredential *)self accessibility];
  v39[12] = accessibility;
  v38[13] = kSecAttrAccessGroup;
  accessGroup = [(KCSharingInternetPasswordCredential *)self accessGroup];
  v39[13] = accessGroup;
  v12 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:14];
  v13 = [v12 mutableCopy];

  comment = [(KCSharingInternetPasswordCredential *)self comment];
  [v13 setObject:comment forKeyedSubscript:kSecAttrComment];

  label = [(KCSharingInternetPasswordCredential *)self label];
  [v13 setObject:label forKeyedSubscript:kSecAttrLabel];

  viewHint = [(KCSharingInternetPasswordCredential *)self viewHint];
  [v13 setObject:viewHint forKeyedSubscript:kSecAttrSyncViewHint];

  notes = [(KCSharingInternetPasswordCredential *)self notes];
  [v13 setObject:notes forKeyedSubscript:kSecDataInetExtraNotes];

  history = [(KCSharingInternetPasswordCredential *)self history];
  [v13 setObject:history forKeyedSubscript:kSecDataInetExtraHistory];

  clientDefined0 = [(KCSharingInternetPasswordCredential *)self clientDefined0];
  [v13 setObject:clientDefined0 forKeyedSubscript:kSecDataInetExtraClientDefined0];

  clientDefined1 = [(KCSharingInternetPasswordCredential *)self clientDefined1];
  [v13 setObject:clientDefined1 forKeyedSubscript:kSecDataInetExtraClientDefined1];

  clientDefined2 = [(KCSharingInternetPasswordCredential *)self clientDefined2];
  [v13 setObject:clientDefined2 forKeyedSubscript:kSecDataInetExtraClientDefined2];

  clientDefined3 = [(KCSharingInternetPasswordCredential *)self clientDefined3];
  [v13 setObject:clientDefined3 forKeyedSubscript:kSecDataInetExtraClientDefined3];

  v23 = [NSNumber numberWithInteger:[(KCSharingInternetPasswordCredential *)self creator]];
  [v13 setObject:v23 forKeyedSubscript:kSecAttrCreator];

  v24 = [NSNumber numberWithInteger:[(KCSharingInternetPasswordCredential *)self type]];
  [v13 setObject:v24 forKeyedSubscript:kSecAttrType];

  itemDescription = [(KCSharingInternetPasswordCredential *)self itemDescription];
  [v13 setObject:itemDescription forKeyedSubscript:kSecAttrDescription];

  alias = [(KCSharingInternetPasswordCredential *)self alias];
  [v13 setObject:alias forKeyedSubscript:kSecAttrAlias];

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
  accessGroup = [(KCSharingInternetPasswordCredential *)self accessGroup];
  [v3 setAccessGroup:accessGroup];

  account = [(KCSharingInternetPasswordCredential *)self account];
  [v3 setAccount:account];

  protocol = [(KCSharingInternetPasswordCredential *)self protocol];
  [v3 setProtocol:protocol];

  server = [(KCSharingInternetPasswordCredential *)self server];
  [v3 setServer:server];

  port = [(KCSharingInternetPasswordCredential *)self port];
  [v3 setPort:{objc_msgSend(port, "intValue")}];

  path = [(KCSharingInternetPasswordCredential *)self path];
  [v3 setPath:path];

  authenticationType = [(KCSharingInternetPasswordCredential *)self authenticationType];
  [v3 setAuthenticationType:authenticationType];

  data = [(KCSharingInternetPasswordCredential *)self data];
  [v3 setData:data];

  creationDate = [(KCSharingInternetPasswordCredential *)self creationDate];
  [creationDate timeIntervalSinceReferenceDate];
  [v3 setCreationDate:?];

  modificationDate = [(KCSharingInternetPasswordCredential *)self modificationDate];
  [modificationDate timeIntervalSinceReferenceDate];
  [v3 setModificationDate:?];

  comment = [(KCSharingInternetPasswordCredential *)self comment];
  [v3 setComment:comment];

  label = [(KCSharingInternetPasswordCredential *)self label];
  [v3 setLabel:label];

  accessibility = [(KCSharingInternetPasswordCredential *)self accessibility];
  [v3 setAccessibility:accessibility];

  viewHint = [(KCSharingInternetPasswordCredential *)self viewHint];
  [v3 setViewHint:viewHint];

  securityDomain = [(KCSharingInternetPasswordCredential *)self securityDomain];
  [v3 setSecurityDomain:securityDomain];

  notes = [(KCSharingInternetPasswordCredential *)self notes];
  [v3 setNotes:notes];

  history = [(KCSharingInternetPasswordCredential *)self history];
  [v3 setHistory:history];

  clientDefined0 = [(KCSharingInternetPasswordCredential *)self clientDefined0];
  [v3 setClientDefined0:clientDefined0];

  clientDefined1 = [(KCSharingInternetPasswordCredential *)self clientDefined1];
  [v3 setClientDefined1:clientDefined1];

  clientDefined2 = [(KCSharingInternetPasswordCredential *)self clientDefined2];
  [v3 setClientDefined2:clientDefined2];

  clientDefined3 = [(KCSharingInternetPasswordCredential *)self clientDefined3];
  [v3 setClientDefined3:clientDefined3];

  [v3 setCreator:{-[KCSharingInternetPasswordCredential creator](self, "creator")}];
  [v3 setType:{-[KCSharingInternetPasswordCredential type](self, "type")}];
  itemDescription = [(KCSharingInternetPasswordCredential *)self itemDescription];
  [v3 setItemDescription:itemDescription];

  alias = [(KCSharingInternetPasswordCredential *)self alias];
  [v3 setAlias:alias];

  [v3 setIsInvisible:{-[KCSharingInternetPasswordCredential isInvisible](self, "isInvisible")}];
  [v3 setIsNegative:{-[KCSharingInternetPasswordCredential isNegative](self, "isNegative")}];
  [v3 setCustomIcon:{-[KCSharingInternetPasswordCredential customIcon](self, "customIcon")}];
  [v3 setScriptCode:{-[KCSharingInternetPasswordCredential scriptCode](self, "scriptCode")}];

  return v3;
}

- (NSString)description
{
  sharingGroup = [(KCSharingInternetPasswordCredential *)self sharingGroup];
  accessGroup = [(KCSharingInternetPasswordCredential *)self accessGroup];
  account = [(KCSharingInternetPasswordCredential *)self account];
  protocol = [(KCSharingInternetPasswordCredential *)self protocol];
  server = [(KCSharingInternetPasswordCredential *)self server];
  port = [(KCSharingInternetPasswordCredential *)self port];
  path = [(KCSharingInternetPasswordCredential *)self path];
  authenticationType = [(KCSharingInternetPasswordCredential *)self authenticationType];
  type = [(KCSharingInternetPasswordCredential *)self type];
  creator = [(KCSharingInternetPasswordCredential *)self creator];
  itemDescription = [(KCSharingInternetPasswordCredential *)self itemDescription];
  alias = [(KCSharingInternetPasswordCredential *)self alias];
  isInvisible = [(KCSharingInternetPasswordCredential *)self isInvisible];
  isNegative = [(KCSharingInternetPasswordCredential *)self isNegative];
  customIcon = [(KCSharingInternetPasswordCredential *)self customIcon];
  scriptCode = [(KCSharingInternetPasswordCredential *)self scriptCode];
  creationDate = [(KCSharingInternetPasswordCredential *)self creationDate];
  modificationDate = [(KCSharingInternetPasswordCredential *)self modificationDate];
  comment = [(KCSharingInternetPasswordCredential *)self comment];
  label = [(KCSharingInternetPasswordCredential *)self label];
  accessibility = [(KCSharingInternetPasswordCredential *)self accessibility];
  viewHint = [(KCSharingInternetPasswordCredential *)self viewHint];
  securityDomain = [(KCSharingInternetPasswordCredential *)self securityDomain];
  v24 = [NSString stringWithFormat:@"KCSharingInternetPasswordCredential(sharingGroup:%@ accessGroup:%@ account:%@ protocol:%@ server:%@ port:%@ path:%@ authenticationType:%@ type:%ld creator:%ld description:%@ alias:%@ visibility:%ld negative:%ld icon:%ld scriptCode:%ld creationDate:%@ modificationDate:%@ comment:%@ label:%@ accessibility:%@ viewHint:%@ securityDomain:%@)", sharingGroup, accessGroup, account, protocol, server, port, path, authenticationType, type, creator, itemDescription, alias, isInvisible, isNegative, customIcon, scriptCode, creationDate, modificationDate, comment, label, accessibility, viewHint, securityDomain];

  return v24;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v28 = 1;
  }

  else if ([(KCSharingInternetPasswordCredential *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    sharingGroup = [(KCSharingInternetPasswordCredential *)self sharingGroup];
    sharingGroup2 = [(KCSharingInternetPasswordCredential *)v5 sharingGroup];
    v124 = sharingGroup;
    v122 = [sharingGroup isEqualToString:?];
    if (v122 && (-[KCSharingInternetPasswordCredential accessGroup](self, "accessGroup"), v8 = objc_claimAutoreleasedReturnValue(), -[KCSharingInternetPasswordCredential accessGroup](v5, "accessGroup"), v118 = objc_claimAutoreleasedReturnValue(), v119 = v8, [v8 isEqualToString:?]))
    {
      account = [(KCSharingInternetPasswordCredential *)self account];
      account2 = [(KCSharingInternetPasswordCredential *)v5 account];
      v117 = account;
      if ([account isEqualToString:?])
      {
        protocol = [(KCSharingInternetPasswordCredential *)self protocol];
        protocol2 = [(KCSharingInternetPasswordCredential *)v5 protocol];
        v115 = protocol;
        if ([protocol isEqualToString:?])
        {
          server = [(KCSharingInternetPasswordCredential *)self server];
          server2 = [(KCSharingInternetPasswordCredential *)v5 server];
          v113 = server;
          if ([server isEqualToString:?])
          {
            port = [(KCSharingInternetPasswordCredential *)self port];
            port2 = [(KCSharingInternetPasswordCredential *)v5 port];
            v111 = port;
            if ([port isEqualToNumber:?])
            {
              path = [(KCSharingInternetPasswordCredential *)self path];
              path2 = [(KCSharingInternetPasswordCredential *)v5 path];
              v109 = path;
              if ([path isEqualToString:?])
              {
                authenticationType = [(KCSharingInternetPasswordCredential *)self authenticationType];
                authenticationType2 = [(KCSharingInternetPasswordCredential *)v5 authenticationType];
                v107 = authenticationType;
                if ([authenticationType isEqualToString:?])
                {
                  data = [(KCSharingInternetPasswordCredential *)self data];
                  data2 = [(KCSharingInternetPasswordCredential *)v5 data];
                  v105 = data;
                  if ([data isEqualToData:?])
                  {
                    creationDate = [(KCSharingInternetPasswordCredential *)self creationDate];
                    creationDate2 = [(KCSharingInternetPasswordCredential *)v5 creationDate];
                    v103 = creationDate;
                    if ([creationDate isEqualToDate:?])
                    {
                      modificationDate = [(KCSharingInternetPasswordCredential *)self modificationDate];
                      modificationDate2 = [(KCSharingInternetPasswordCredential *)v5 modificationDate];
                      v101 = modificationDate;
                      if ([modificationDate isEqualToDate:?])
                      {
                        comment = [(KCSharingInternetPasswordCredential *)self comment];
                        comment2 = [(KCSharingInternetPasswordCredential *)v5 comment];
                        v99 = comment;
                        LODWORD(v125[4]) = comment != comment2;
                        if (comment == comment2 || (-[KCSharingInternetPasswordCredential comment](self, "comment"), v19 = objc_claimAutoreleasedReturnValue(), -[KCSharingInternetPasswordCredential comment](v5, "comment"), v94 = objc_claimAutoreleasedReturnValue(), v95 = v19, [v19 isEqualToString:?]))
                        {
                          label = [(KCSharingInternetPasswordCredential *)self label];
                          label2 = [(KCSharingInternetPasswordCredential *)v5 label];
                          v97 = label;
                          HIDWORD(v125[3]) = label != label2;
                          if (label == label2 || (-[KCSharingInternetPasswordCredential label](self, "label"), v31 = objc_claimAutoreleasedReturnValue(), -[KCSharingInternetPasswordCredential label](v5, "label"), v90 = objc_claimAutoreleasedReturnValue(), v91 = v31, [v31 isEqualToString:?]))
                          {
                            accessibility = [(KCSharingInternetPasswordCredential *)self accessibility];
                            accessibility2 = [(KCSharingInternetPasswordCredential *)v5 accessibility];
                            v93 = accessibility;
                            if ([accessibility isEqualToString:?])
                            {
                              viewHint = [(KCSharingInternetPasswordCredential *)self viewHint];
                              viewHint2 = [(KCSharingInternetPasswordCredential *)v5 viewHint];
                              v89 = viewHint;
                              LODWORD(v125[3]) = viewHint != viewHint2;
                              if (viewHint == viewHint2 || (-[KCSharingInternetPasswordCredential viewHint](self, "viewHint"), v34 = objc_claimAutoreleasedReturnValue(), -[KCSharingInternetPasswordCredential viewHint](v5, "viewHint"), v84 = objc_claimAutoreleasedReturnValue(), v85 = v34, [v34 isEqualToString:?]))
                              {
                                securityDomain = [(KCSharingInternetPasswordCredential *)self securityDomain];
                                securityDomain2 = [(KCSharingInternetPasswordCredential *)v5 securityDomain];
                                v87 = securityDomain;
                                if ([securityDomain isEqualToString:?])
                                {
                                  notes = [(KCSharingInternetPasswordCredential *)self notes];
                                  notes2 = [(KCSharingInternetPasswordCredential *)v5 notes];
                                  v83 = notes;
                                  HIDWORD(v125[2]) = notes != notes2;
                                  if (notes == notes2 || (-[KCSharingInternetPasswordCredential notes](self, "notes"), v37 = objc_claimAutoreleasedReturnValue(), -[KCSharingInternetPasswordCredential notes](v5, "notes"), v78 = objc_claimAutoreleasedReturnValue(), v79 = v37, [v37 isEqualToData:?]))
                                  {
                                    history = [(KCSharingInternetPasswordCredential *)self history];
                                    history2 = [(KCSharingInternetPasswordCredential *)v5 history];
                                    v81 = history;
                                    LODWORD(v125[2]) = history != history2;
                                    if (history == history2 || (-[KCSharingInternetPasswordCredential history](self, "history"), v39 = objc_claimAutoreleasedReturnValue(), -[KCSharingInternetPasswordCredential history](v5, "history"), v74 = objc_claimAutoreleasedReturnValue(), v75 = v39, [v39 isEqualToData:?]))
                                    {
                                      clientDefined0 = [(KCSharingInternetPasswordCredential *)self clientDefined0];
                                      clientDefined02 = [(KCSharingInternetPasswordCredential *)v5 clientDefined0];
                                      v77 = clientDefined0;
                                      HIDWORD(v125[1]) = clientDefined0 != clientDefined02;
                                      if (clientDefined0 == clientDefined02 || (-[KCSharingInternetPasswordCredential clientDefined0](self, "clientDefined0"), v41 = objc_claimAutoreleasedReturnValue(), -[KCSharingInternetPasswordCredential clientDefined0](v5, "clientDefined0"), v70 = objc_claimAutoreleasedReturnValue(), v71 = v41, [v41 isEqualToData:?]))
                                      {
                                        clientDefined1 = [(KCSharingInternetPasswordCredential *)self clientDefined1];
                                        clientDefined12 = [(KCSharingInternetPasswordCredential *)v5 clientDefined1];
                                        v73 = clientDefined1;
                                        LODWORD(v125[1]) = clientDefined1 != clientDefined12;
                                        if (clientDefined1 == clientDefined12 || (-[KCSharingInternetPasswordCredential clientDefined1](self, "clientDefined1"), v43 = objc_claimAutoreleasedReturnValue(), -[KCSharingInternetPasswordCredential clientDefined1](v5, "clientDefined1"), v66 = objc_claimAutoreleasedReturnValue(), v67 = v43, [v43 isEqualToData:?]))
                                        {
                                          clientDefined2 = [(KCSharingInternetPasswordCredential *)self clientDefined2];
                                          clientDefined22 = [(KCSharingInternetPasswordCredential *)v5 clientDefined2];
                                          v69 = clientDefined2;
                                          HIDWORD(v125[0]) = clientDefined2 != clientDefined22;
                                          if (clientDefined2 == clientDefined22 || (-[KCSharingInternetPasswordCredential clientDefined2](self, "clientDefined2"), v45 = objc_claimAutoreleasedReturnValue(), -[KCSharingInternetPasswordCredential clientDefined2](v5, "clientDefined2"), v62 = objc_claimAutoreleasedReturnValue(), v63 = v45, [v45 isEqualToData:?]))
                                          {
                                            clientDefined3 = [(KCSharingInternetPasswordCredential *)self clientDefined3];
                                            clientDefined32 = [(KCSharingInternetPasswordCredential *)v5 clientDefined3];
                                            v65 = clientDefined3;
                                            LODWORD(v125[0]) = clientDefined3 != clientDefined32;
                                            if (clientDefined3 == clientDefined32 || (-[KCSharingInternetPasswordCredential clientDefined3](self, "clientDefined3"), v47 = objc_claimAutoreleasedReturnValue(), -[KCSharingInternetPasswordCredential clientDefined3](v5, "clientDefined3"), v60 = objc_claimAutoreleasedReturnValue(), v61 = v47, [v47 isEqualToData:?]))
                                            {
                                              creator = [(KCSharingInternetPasswordCredential *)self creator];
                                              if (creator == [(KCSharingInternetPasswordCredential *)v5 creator]&& (v49 = [(KCSharingInternetPasswordCredential *)self type], v49 == [(KCSharingInternetPasswordCredential *)v5 type]))
                                              {
                                                itemDescription = [(KCSharingInternetPasswordCredential *)self itemDescription];
                                                itemDescription2 = [(KCSharingInternetPasswordCredential *)v5 itemDescription];
                                                v59 = itemDescription;
                                                if ([itemDescription isEqualToString:?])
                                                {
                                                  alias = [(KCSharingInternetPasswordCredential *)self alias];
                                                  alias2 = [(KCSharingInternetPasswordCredential *)v5 alias];
                                                  v57 = alias;
                                                  if ([alias isEqualToData:?] && (v52 = -[KCSharingInternetPasswordCredential isInvisible](self, "isInvisible"), v52 == -[KCSharingInternetPasswordCredential isInvisible](v5, "isInvisible")) && (v53 = -[KCSharingInternetPasswordCredential isNegative](self, "isNegative"), v53 == -[KCSharingInternetPasswordCredential isNegative](v5, "isNegative")) && (v54 = -[KCSharingInternetPasswordCredential customIcon](self, "customIcon"), v54 == -[KCSharingInternetPasswordCredential customIcon](v5, "customIcon")))
                                                  {
                                                    scriptCode = [(KCSharingInternetPasswordCredential *)self scriptCode];
                                                    v28 = scriptCode == [(KCSharingInternetPasswordCredential *)v5 scriptCode];
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
                                                  v7 = alias2;
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
  sharingGroup = [(KCSharingInternetPasswordCredential *)self sharingGroup];
  v4 = [sharingGroup hash];

  accessGroup = [(KCSharingInternetPasswordCredential *)self accessGroup];
  v6 = [accessGroup hash] - v4 + 32 * v4;

  account = [(KCSharingInternetPasswordCredential *)self account];
  v8 = [account hash] + 32 * v6 - v6;

  protocol = [(KCSharingInternetPasswordCredential *)self protocol];
  v10 = [protocol hash] + 32 * v8 - v8;

  server = [(KCSharingInternetPasswordCredential *)self server];
  v12 = [server hash] + 32 * v10 - v10;

  port = [(KCSharingInternetPasswordCredential *)self port];
  v14 = [port hash] + 32 * v12 - v12;

  path = [(KCSharingInternetPasswordCredential *)self path];
  v16 = [path hash] + 32 * v14 - v14;

  authenticationType = [(KCSharingInternetPasswordCredential *)self authenticationType];
  v18 = [authenticationType hash] + 32 * v16 - v16;

  data = [(KCSharingInternetPasswordCredential *)self data];
  v20 = [data hash] + 32 * v18 - v18;

  creationDate = [(KCSharingInternetPasswordCredential *)self creationDate];
  v22 = [creationDate hash] + 32 * v20 - v20;

  modificationDate = [(KCSharingInternetPasswordCredential *)self modificationDate];
  v24 = [modificationDate hash] + 32 * v22 - v22;

  comment = [(KCSharingInternetPasswordCredential *)self comment];
  v26 = [comment hash] + 32 * v24 - v24;

  label = [(KCSharingInternetPasswordCredential *)self label];
  v28 = [label hash] + 32 * v26 - v26;

  accessibility = [(KCSharingInternetPasswordCredential *)self accessibility];
  v30 = [accessibility hash] + 32 * v28 - v28;

  viewHint = [(KCSharingInternetPasswordCredential *)self viewHint];
  v32 = [viewHint hash] + 32 * v30 - v30;

  securityDomain = [(KCSharingInternetPasswordCredential *)self securityDomain];
  v34 = [securityDomain hash] + 32 * v32 - v32;

  notes = [(KCSharingInternetPasswordCredential *)self notes];
  v36 = [notes hash] + 32 * v34 - v34;

  history = [(KCSharingInternetPasswordCredential *)self history];
  v38 = [history hash] + 32 * v36 - v36;

  clientDefined0 = [(KCSharingInternetPasswordCredential *)self clientDefined0];
  v40 = [clientDefined0 hash] + 32 * v38 - v38;

  clientDefined1 = [(KCSharingInternetPasswordCredential *)self clientDefined1];
  v42 = [clientDefined1 hash] + 32 * v40 - v40;

  clientDefined2 = [(KCSharingInternetPasswordCredential *)self clientDefined2];
  v44 = [clientDefined2 hash] + 32 * v42 - v42;

  clientDefined3 = [(KCSharingInternetPasswordCredential *)self clientDefined3];
  v46 = [clientDefined3 hash] + 32 * v44 - v44;

  v47 = [(KCSharingInternetPasswordCredential *)self creator]+ 32 * v46 - v46;
  v48 = [(KCSharingInternetPasswordCredential *)self type]+ 32 * v47 - v47;
  itemDescription = [(KCSharingInternetPasswordCredential *)self itemDescription];
  v50 = [itemDescription hash] + 32 * v48 - v48;

  v51 = [(KCSharingInternetPasswordCredential *)self isInvisible]+ 32 * v50 - v50;
  v52 = [(KCSharingInternetPasswordCredential *)self isNegative]+ 32 * v51 - v51;
  v53 = [(KCSharingInternetPasswordCredential *)self customIcon]+ 32 * v52 - v52;
  return [(KCSharingInternetPasswordCredential *)self scriptCode]+ 32 * v53 - v53;
}

- (KCSharingInternetPasswordCredential)initWithAttributes:(id)attributes error:(id *)error
{
  attributesCopy = attributes;
  v143.receiver = self;
  v143.super_class = KCSharingInternetPasswordCredential;
  v7 = [(KCSharingInternetPasswordCredential *)&v143 init];
  if (!v7)
  {
    goto LABEL_102;
  }

  v8 = kSecAttrSharingGroup;
  v9 = [attributesCopy objectForKeyedSubscript:kSecAttrSharingGroup];
  if (!v9)
  {
    v256 = @"KCSharingMissingAttribute";
    v257 = v8;
    v10 = [NSDictionary dictionaryWithObjects:&v257 forKeys:&v256 count:1];
    sub_100061E2C(error, 22, v10);
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
    errorCopy3 = error;
    v17 = 1;
LABEL_17:
    sub_100061E2C(errorCopy3, v17, v12);
LABEL_31:

    goto LABEL_32;
  }

  v10 = [attributesCopy objectForKeyedSubscript:kSecAttrAccessGroup];
  if (!v10)
  {
    v250 = @"KCSharingMissingAttribute";
    v251 = kSecAttrAccessGroup;
    v11 = [NSDictionary dictionaryWithObjects:&v251 forKeys:&v250 count:1];
    sub_100061E2C(error, 22, v11);
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
    errorCopy5 = error;
    v19 = 1;
LABEL_20:
    sub_100061E2C(errorCopy5, v19, v13);
LABEL_30:

    goto LABEL_31;
  }

  v11 = [attributesCopy objectForKeyedSubscript:kSecAttrAccount];
  if (!v11)
  {
    v244 = @"KCSharingMissingAttribute";
    v245 = kSecAttrAccount;
    v12 = [NSDictionary dictionaryWithObjects:&v245 forKeys:&v244 count:1];
    errorCopy3 = error;
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
    errorCopy6 = error;
    v21 = 1;
LABEL_23:
    sub_100061E2C(errorCopy6, v21, v15);
LABEL_29:

    goto LABEL_30;
  }

  v12 = [attributesCopy objectForKeyedSubscript:kSecAttrProtocol];
  if (!v12)
  {
    v238 = @"KCSharingMissingAttribute";
    v239 = kSecAttrProtocol;
    v13 = [NSDictionary dictionaryWithObjects:&v239 forKeys:&v238 count:1];
    errorCopy5 = error;
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
    sub_100061E2C(error, 1, v22);
LABEL_28:

    goto LABEL_29;
  }

  v13 = [attributesCopy objectForKeyedSubscript:kSecAttrServer];
  if (!v13)
  {
    v232 = @"KCSharingMissingAttribute";
    v233 = kSecAttrServer;
    v15 = [NSDictionary dictionaryWithObjects:&v233 forKeys:&v232 count:1];
    errorCopy6 = error;
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
    sub_100061E2C(error, 1, v24);

    v13 = v23;
    v12 = v140;
    goto LABEL_28;
  }

  v14 = [attributesCopy objectForKeyedSubscript:kSecAttrPort];
  if (!v14)
  {
    v226 = @"KCSharingMissingAttribute";
    v227 = kSecAttrPort;
    [NSDictionary dictionaryWithObjects:&v227 forKeys:&v226 count:1];
    v26 = v12;
    v28 = v27 = v13;
    sub_100061E2C(error, 22, v28);

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
      sub_100061E2C(error, 1, v60);

      goto LABEL_31;
    }

    v138 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v15 intValue]);
  }

  v139 = [attributesCopy objectForKeyedSubscript:kSecAttrPath];
  if (!v139)
  {
    v220 = @"KCSharingMissingAttribute";
    v221 = kSecAttrPath;
    v57 = [NSDictionary dictionaryWithObjects:&v221 forKeys:&v220 count:1];
    sub_100061E2C(error, 22, v57);
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
    sub_100061E2C(error, 1, v63);

    v15 = v135;
    v13 = v61;
    v12 = v142;
    goto LABEL_82;
  }

  v132 = [attributesCopy objectForKeyedSubscript:kSecAttrAuthenticationType];
  if (!v132)
  {
    v214 = @"KCSharingMissingAttribute";
    v215 = kSecAttrAuthenticationType;
    v64 = [NSDictionary dictionaryWithObjects:&v215 forKeys:&v214 count:1];
    sub_100061E2C(error, 22, v64);
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
    sub_100061E2C(error, 1, v66);

    v15 = v133;
    v13 = v137;
    goto LABEL_85;
  }

  v141 = v12;
  v29 = [attributesCopy objectForKeyedSubscript:kSecValueData];
  if (!v29)
  {
    v30 = 0;
    v208 = @"KCSharingMissingAttribute";
    v209 = kSecValueData;
    v67 = [NSDictionary dictionaryWithObjects:&v209 forKeys:&v208 count:1];
    sub_100061E2C(error, 22, v67);
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
    sub_100061E2C(error, 1, v69);

    goto LABEL_89;
  }

  v131 = [attributesCopy objectForKeyedSubscript:kSecAttrCreationDate];
  if (!v131)
  {
    v202 = @"KCSharingMissingAttribute";
    v203 = kSecAttrCreationDate;
    v130 = [NSDictionary dictionaryWithObjects:&v203 forKeys:&v202 count:1];
    sub_100061E2C(error, 22, v130);
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
    sub_100061E2C(error, 1, v71);

    goto LABEL_92;
  }

  v130 = [attributesCopy objectForKeyedSubscript:kSecAttrModificationDate];
  if (v130)
  {
    if (_NSIsNSDate())
    {
      v129 = [attributesCopy objectForKeyedSubscript:kSecAttrComment];
      v126 = [attributesCopy objectForKeyedSubscript:kSecAttrLabel];
      v128 = [attributesCopy objectForKeyedSubscript:kSecAttrAccessible];
      if (v128)
      {
        if (_NSIsNSString() && [v128 length])
        {
          v127 = [attributesCopy objectForKeyedSubscript:kSecAttrSyncViewHint];
          if (v127 && (_NSIsNSString() & 1) == 0)
          {
            v184 = @"KCSharingInvalidAttribute";
            v182 = kSecAttrSyncViewHint;
            v125 = [v127 copy];
            v183 = v125;
            v124 = [NSDictionary dictionaryWithObjects:&v183 forKeys:&v182 count:1];
            v185 = v124;
            v78 = [NSDictionary dictionaryWithObjects:&v185 forKeys:&v184 count:1];
            sub_100061E2C(error, 1, v78);
          }

          else
          {
            v125 = [attributesCopy objectForKeyedSubscript:kSecAttrSecurityDomain];
            if (!v125)
            {
              v180 = @"KCSharingMissingAttribute";
              v181 = kSecAttrSecurityDomain;
              v124 = [NSDictionary dictionaryWithObjects:&v181 forKeys:&v180 count:1];
              sub_100061E2C(error, 22, v124);
              v125 = 0;
LABEL_108:
              v72 = 0;
LABEL_148:

              goto LABEL_99;
            }

            if (_NSIsNSString())
            {
              v124 = [attributesCopy objectForKeyedSubscript:kSecDataInetExtraNotes];
              v119 = [attributesCopy objectForKeyedSubscript:kSecDataInetExtraHistory];
              v118 = [attributesCopy objectForKeyedSubscript:kSecDataInetExtraClientDefined0];
              v117 = [attributesCopy objectForKeyedSubscript:kSecDataInetExtraClientDefined1];
              v116 = [attributesCopy objectForKeyedSubscript:kSecDataInetExtraClientDefined2];
              v115 = [attributesCopy objectForKeyedSubscript:kSecDataInetExtraClientDefined3];
              v123 = [attributesCopy objectForKeyedSubscript:kSecAttrCreator];
              if (!v123 || (_NSIsNSNumber() & 1) != 0 || (_NSIsNSString() & 1) != 0)
              {
                v122 = [attributesCopy objectForKeyedSubscript:kSecAttrType];
                if (!v122 || (_NSIsNSNumber() & 1) != 0 || (_NSIsNSString() & 1) != 0)
                {
                  v121 = [attributesCopy objectForKeyedSubscript:kSecAttrDescription];
                  if (v121 && (_NSIsNSString() & 1) == 0)
                  {
                    v166 = @"KCSharingInvalidAttribute";
                    v164 = kSecAttrDescription;
                    v120 = [v121 copy];
                    v165 = v120;
                    v113 = [NSDictionary dictionaryWithObjects:&v165 forKeys:&v164 count:1];
                    v167 = v113;
                    v112 = [NSDictionary dictionaryWithObjects:&v167 forKeys:&v166 count:1];
                    sub_100061E2C(error, 1, v112);
                    v72 = 0;

LABEL_146:
                    goto LABEL_147;
                  }

                  v31 = kSecAttrAlias;
                  v120 = [attributesCopy objectForKeyedSubscript:kSecAttrAlias];
                  if (v120 && (_NSIsNSData() & 1) == 0)
                  {
                    v162 = @"KCSharingInvalidAttribute";
                    v160 = v31;
                    v113 = [v120 copy];
                    v161 = v113;
                    v111 = [NSDictionary dictionaryWithObjects:&v161 forKeys:&v160 count:1];
                    v163 = v111;
                    v110 = [NSDictionary dictionaryWithObjects:&v163 forKeys:&v162 count:1];
                    sub_100061E2C(error, 1, v110);
                    v72 = 0;

LABEL_145:
                    goto LABEL_146;
                  }

                  v113 = [attributesCopy objectForKeyedSubscript:kSecAttrIsInvisible];
                  if (!v113 || (_NSIsNSNumber() & 1) != 0 || (_NSIsNSString() & 1) != 0)
                  {
                    v111 = [attributesCopy objectForKeyedSubscript:kSecAttrIsNegative];
                    if (!v111 || (_NSIsNSNumber() & 1) != 0 || (_NSIsNSString() & 1) != 0)
                    {
                      v32 = kSecAttrHasCustomIcon;
                      v109 = [attributesCopy objectForKeyedSubscript:kSecAttrHasCustomIcon];
                      if (!v109 || (_NSIsNSNumber() & 1) != 0 || (_NSIsNSString() & 1) != 0)
                      {
                        v33 = kSecAttrScriptCode;
                        v108 = [attributesCopy objectForKeyedSubscript:kSecAttrScriptCode];
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
                        sub_100061E2C(error, 1, v107);
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
                        sub_100061E2C(error, 1, v106);
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
                      sub_100061E2C(error, 1, v105);
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
                    sub_100061E2C(error, 1, v108);
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
                sub_100061E2C(error, 1, v114);
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
                sub_100061E2C(error, 1, v120);
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
            sub_100061E2C(error, 1, v79);
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
        sub_100061E2C(error, 1, v76);
      }

      else
      {
        v190 = @"KCSharingMissingAttribute";
        v191 = kSecAttrAccessible;
        v127 = [NSDictionary dictionaryWithObjects:&v191 forKeys:&v190 count:1];
        sub_100061E2C(error, 22, v127);
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
    sub_100061E2C(error, 1, v74);
  }

  else
  {
    v196 = @"KCSharingMissingAttribute";
    v197 = kSecAttrModificationDate;
    v129 = [NSDictionary dictionaryWithObjects:&v197 forKeys:&v196 count:1];
    sub_100061E2C(error, 22, v129);
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

- (KCSharingInternetPasswordCredential)initWithProto:(id)proto sharingGroup:(id)group error:(id *)error
{
  protoCopy = proto;
  groupCopy = group;
  v82.receiver = self;
  v82.super_class = KCSharingInternetPasswordCredential;
  v9 = [(KCSharingInternetPasswordCredential *)&v82 init];
  if (v9)
  {
    v10 = [groupCopy copy];
    sharingGroup = v9->_sharingGroup;
    v9->_sharingGroup = v10;

    accessGroup = [protoCopy accessGroup];
    v13 = [accessGroup copy];
    accessGroup = v9->_accessGroup;
    v9->_accessGroup = v13;

    account = [protoCopy account];
    v16 = [account copy];
    account = v9->_account;
    v9->_account = v16;

    protocol = [protoCopy protocol];
    v19 = [protocol copy];
    protocol = v9->_protocol;
    v9->_protocol = v19;

    server = [protoCopy server];
    v22 = [server copy];
    server = v9->_server;
    v9->_server = v22;

    v24 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [protoCopy port]);
    port = v9->_port;
    v9->_port = v24;

    path = [protoCopy path];
    v27 = [path copy];
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

    authenticationType = [protoCopy authenticationType];
    v31 = [authenticationType copy];
    authenticationType = v9->_authenticationType;
    v9->_authenticationType = v31;

    data = [protoCopy data];
    v34 = [data copy];
    data = v9->_data;
    v9->_data = v34;

    [protoCopy creationDate];
    v36 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    creationDate = v9->_creationDate;
    v9->_creationDate = v36;

    [protoCopy modificationDate];
    v38 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    modificationDate = v9->_modificationDate;
    v9->_modificationDate = v38;

    comment = [protoCopy comment];
    v41 = [comment copy];
    comment = v9->_comment;
    v9->_comment = v41;

    label = [protoCopy label];
    v44 = [label copy];
    label = v9->_label;
    v9->_label = v44;

    accessibility = [protoCopy accessibility];
    v47 = [accessibility copy];
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

    viewHint = [protoCopy viewHint];
    v51 = [viewHint copy];
    viewHint = v9->_viewHint;
    v9->_viewHint = v51;

    securityDomain = [protoCopy securityDomain];
    v54 = [securityDomain copy];
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

    notes = [protoCopy notes];
    v58 = [notes copy];
    notes = v9->_notes;
    v9->_notes = v58;

    history = [protoCopy history];
    v61 = [history copy];
    history = v9->_history;
    v9->_history = v61;

    clientDefined0 = [protoCopy clientDefined0];
    v64 = [clientDefined0 copy];
    clientDefined0 = v9->_clientDefined0;
    v9->_clientDefined0 = v64;

    clientDefined1 = [protoCopy clientDefined1];
    v67 = [clientDefined1 copy];
    clientDefined1 = v9->_clientDefined1;
    v9->_clientDefined1 = v67;

    clientDefined2 = [protoCopy clientDefined2];
    v70 = [clientDefined2 copy];
    clientDefined2 = v9->_clientDefined2;
    v9->_clientDefined2 = v70;

    clientDefined3 = [protoCopy clientDefined3];
    v73 = [clientDefined3 copy];
    clientDefined3 = v9->_clientDefined3;
    v9->_clientDefined3 = v73;

    v9->_creator = [protoCopy creator];
    v9->_type = [protoCopy type];
    itemDescription = [protoCopy itemDescription];
    v76 = [itemDescription copy];
    itemDescription = v9->_itemDescription;
    v9->_itemDescription = v76;

    alias = [protoCopy alias];
    v79 = [alias copy];
    alias = v9->_alias;
    v9->_alias = v79;

    v9->_isInvisible = [protoCopy isInvisible];
    v9->_isNegative = [protoCopy isNegative];
    v9->_customIcon = [protoCopy customIcon];
    v9->_scriptCode = [protoCopy scriptCode];
  }

  return v9;
}

- (KCSharingInternetPasswordCredential)initWithDatabaseItem:(SecDbItem *)item error:(id *)error
{
  requiredAttributeKeys = [objc_opt_class() requiredAttributeKeys];
  v8 = sub_100017964(item, requiredAttributeKeys, error);

  if (v8)
  {
    self = [(KCSharingInternetPasswordCredential *)self initWithAttributes:v8 error:error];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
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