@interface NFApplet
+ (id)aidListForPrinting:(id)printing;
- (BOOL)containsSubKeys;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToApplet:(id)applet;
- (BOOL)isPPSEControllable;
- (BOOL)suppressTypeA;
- (BOOL)suppressTypeB;
- (NFApplet)groupHead;
- (NFApplet)initWithCoder:(id)coder;
- (NFApplet)initWithDictionary:(id)dictionary;
- (NFAppletCollection)appletCollection;
- (NSArray)groupMembers;
- (NSArray)referencedApps;
- (id)asDictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)multiSSDMembers;
- (unsigned)lifecycleState;
- (unsigned)supportedTypeFSystem;
- (void)_initManagedBySP;
- (void)_setIsActive:(BOOL)active;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NFApplet

- (void)_initManagedBySP
{
  self->_managedBySP = 0;
  if ([(NSData *)self->_discretionaryData length])
  {
    v3 = [NFTLV TLVsWithData:self->_discretionaryData];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v19;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v19 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v18 + 1) + 8 * i);
          if ([v8 tag] == 254)
          {
            v16 = 0u;
            v17 = 0u;
            v14 = 0u;
            v15 = 0u;
            children = [v8 children];
            v10 = [children countByEnumeratingWithState:&v14 objects:v22 count:16];
            if (v10)
            {
              v11 = v10;
              v12 = *v15;
              while (2)
              {
                for (j = 0; j != v11; j = j + 1)
                {
                  if (*v15 != v12)
                  {
                    objc_enumerationMutation(children);
                  }

                  if ([*(*(&v14 + 1) + 8 * j) tag] == 57154)
                  {
                    self->_managedBySP = 1;
                    goto LABEL_18;
                  }
                }

                v11 = [children countByEnumeratingWithState:&v14 objects:v22 count:16];
                if (v11)
                {
                  continue;
                }

                break;
              }
            }

LABEL_18:
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v5);
    }
  }
}

- (id)description
{
  if ((self->_family - 1) > 7u)
  {
    v4 = @"UNKNOWN";
  }

  else
  {
    v4 = *(&off_1003157E0 + (self->_family - 1));
  }

  v53 = v4;
  lifecycleState = [(NFApplet *)self lifecycleState];
  v6 = @"UNKNOWN";
  if (lifecycleState <= 14)
  {
    switch(lifecycleState)
    {
      case 1:
        v6 = @"loaded";
        break;
      case 3:
        v6 = @"installed";
        break;
      case 7:
        v6 = @"selectable";
        break;
    }
  }

  else if (lifecycleState > 128)
  {
    if (lifecycleState == 129)
    {
      v6 = @"terminated";
    }

    else if (lifecycleState == 130)
    {
      v6 = @"frozen";
    }
  }

  else if (lifecycleState == 15)
  {
    v6 = @"personalized";
  }

  else if (lifecycleState == 23)
  {
    v6 = @"pre-personalized";
  }

  v52 = v6;
  activationState = self->_activationState;
  if (activationState == 128)
  {
    v8 = @"non-activatable";
  }

  else if (activationState == 1)
  {
    v8 = @"activated";
  }

  else if (self->_activationState)
  {
    v8 = @"UNKNOWN";
  }

  else
  {
    v8 = @"deactivated";
  }

  v48 = v8;
  v47 = [NSString alloc];
  v59.receiver = self;
  v59.super_class = NFApplet;
  v51 = [(NFApplet *)&v59 description];
  nF_asHexString = [(NSData *)self->_identifierAsData NF_asHexString];
  family = self->_family;
  appletGPState = self->_appletGPState;
  if ([(NFApplet *)self isGPLocked])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  v42 = self->_activationState;
  v43 = v9;
  if (self->_authTransientSupport)
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  if (self->_authTransientConfigurable)
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  v40 = v11;
  v41 = v10;
  groupHeadIDAsData = self->_groupHeadIDAsData;
  if (groupHeadIDAsData)
  {
    v12 = [NSString alloc];
    nF_asHexString2 = [(NSData *)self->_groupHeadIDAsData NF_asHexString];
    v58 = [v12 initWithFormat:@"groupHead=%@ ", nF_asHexString2];
  }

  else
  {
    v58 = &stru_10031EA18;
  }

  v46 = [(NSArray *)self->_groupMemberIDs count];
  if (v46)
  {
    v13 = [NSString alloc];
    v33 = [(NSArray *)self->_groupMemberIDs componentsJoinedByString:@", "];
    v57 = [v13 initWithFormat:@"groupMembers={%@} ", v33];
  }

  else
  {
    v57 = &stru_10031EA18;
  }

  v39 = [(NSArray *)self->_referencedAppIDs count];
  if (v39)
  {
    v14 = [NSString alloc];
    v32 = [(NSArray *)self->_referencedAppIDs componentsJoinedByString:@", "];
    v56 = [v14 initWithFormat:@"referencedApps={%@} ", v32];
  }

  else
  {
    v56 = &stru_10031EA18;
  }

  if (self->_isContainer)
  {
    v15 = @"YES";
  }

  else
  {
    v15 = @"NO";
  }

  if (self->_isProxy)
  {
    v16 = @"YES";
  }

  else
  {
    v16 = @"NO";
  }

  v35 = v16;
  v36 = v15;
  packageIdentifierAsData = self->_packageIdentifierAsData;
  if (packageIdentifierAsData)
  {
    v17 = [NSString alloc];
    nF_asHexString3 = [(NSData *)self->_packageIdentifierAsData NF_asHexString];
    v55 = [v17 initWithFormat:@"packageIdentifier=%@ ", nF_asHexString3];
  }

  else
  {
    v55 = &stru_10031EA18;
  }

  moduleIdentifierAsData = self->_moduleIdentifierAsData;
  if (moduleIdentifierAsData)
  {
    v18 = [NSString alloc];
    nF_asHexString4 = [(NSData *)self->_moduleIdentifierAsData NF_asHexString];
    v54 = [v18 initWithFormat:@"moduleIdentifier=%@ ", nF_asHexString4];
  }

  else
  {
    v54 = &stru_10031EA18;
  }

  groupActivationStyle = self->_groupActivationStyle;
  discretionaryData = self->_discretionaryData;
  if (discretionaryData)
  {
    v21 = [[NSString alloc] initWithFormat:@"discretionaryData=%@ ", self->_discretionaryData];
  }

  else
  {
    v21 = &stru_10031EA18;
  }

  v22 = [(NSArray *)self->_multiSEApplicationGroupMemberIDs count];
  if (v22)
  {
    v23 = [NSString alloc];
    v2 = [(NSArray *)self->_multiSEApplicationGroupMemberIDs componentsJoinedByString:@", "];
    v24 = [v23 initWithFormat:@"multiSsdMembers={%@} ", v2];
  }

  else
  {
    v24 = &stru_10031EA18;
  }

  v25 = [(NSData *)self->_typeFSystemCode length];
  if (v25)
  {
    v26 = [[NSString alloc] initWithFormat:@"systemCode=%@ ", self->_typeFSystemCode];
  }

  else
  {
    v26 = &stru_10031EA18;
  }

  if (self->_managedBySP)
  {
    v27 = @"managedBySP=Y";
  }

  else
  {
    v27 = &stru_10031EA18;
  }

  v28 = [v47 initWithFormat:@"%@ { identifier=%@ family=0x%x(%@) lifecycle=0x%x(%@) locked=%@ activation=0x%x(%@) authTransient=%@ authTransientConfigurable=%@ %@%@%@isContainer=%@ isProxy=%@ %@%@activationStyle=%d %@ %@%@seOS=%lu%@instanceACL=%@}", v51, nF_asHexString, family, v53, appletGPState, v52, v43, v42, v48, v41, v40, v58, v57, v56, v36, v35, v55, v54, groupActivationStyle, v21, v24, v26, self->_seOS, v27, self->_instanceACL];
  if (v25)
  {
  }

  if (v22)
  {
  }

  if (discretionaryData)
  {
  }

  if (moduleIdentifierAsData)
  {
  }

  if (packageIdentifierAsData)
  {
  }

  if (v39)
  {
  }

  if (v46)
  {
  }

  if (groupHeadIDAsData)
  {
  }

  return v28;
}

- (id)asDictionary
{
  if ((self->_family - 1) > 7u)
  {
    v3 = @"UNKNOWN";
  }

  else
  {
    v3 = *(&off_1003157E0 + (self->_family - 1));
  }

  v38 = v3;
  lifecycleState = [(NFApplet *)self lifecycleState];
  v5 = @"UNKNOWN";
  if (lifecycleState <= 14)
  {
    switch(lifecycleState)
    {
      case 1:
        v5 = @"loaded";
        break;
      case 3:
        v5 = @"installed";
        break;
      case 7:
        v5 = @"selectable";
        break;
    }
  }

  else if (lifecycleState > 128)
  {
    if (lifecycleState == 129)
    {
      v5 = @"terminated";
    }

    else if (lifecycleState == 130)
    {
      v5 = @"frozen";
    }
  }

  else if (lifecycleState == 15)
  {
    v5 = @"personalized";
  }

  else if (lifecycleState == 23)
  {
    v5 = @"pre-personalized";
  }

  v37 = v5;
  activationState = self->_activationState;
  if (activationState == 128)
  {
    v7 = @"non-activatable";
  }

  else if (activationState == 1)
  {
    v7 = @"activated";
  }

  else if (self->_activationState)
  {
    v7 = @"UNKNOWN";
  }

  else
  {
    v7 = @"deactivated";
  }

  v35 = v7;
  v36 = [NSMutableDictionary alloc];
  nF_asHexString = [(NSData *)self->_identifierAsData NF_asHexString];
  seIdentifier = self->_seIdentifier;
  v34 = nF_asHexString;
  v32 = [NSNumber numberWithUnsignedChar:self->_family];
  v9 = [NSNumber numberWithUnsignedChar:self->_appletGPState];
  v10 = [NSNumber numberWithUnsignedChar:self->_activationState];
  if (self->_authTransientSupport)
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  if (self->_authTransientConfigurable)
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  if (self->_isContainer)
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  if (self->_isProxy)
  {
    v14 = @"YES";
  }

  else
  {
    v14 = @"NO";
  }

  v15 = [NSNumber numberWithUnsignedChar:self->_groupActivationStyle];
  v16 = [NSNumber numberWithInteger:self->_seOS];
  v17 = [NSNumber numberWithBool:self->_managedBySP];
  v18 = [v36 initWithObjectsAndKeys:{v34, @"identifier", seIdentifier, @"seid", v32, @"family", v38, @"familyStr", v9, @"lifecycleState", v37, @"lifecycleStr", v10, @"activationState", v35, @"activationStr", v11, @"authTransientSupport", v12, @"authTransientConfigurable", v13, @"containerInstance", v14, @"proxyInstance", v15, @"groupActivationStyle", v16, @"seOS", v17, @"managedBySP", 0}];

  groupHeadIDAsData = self->_groupHeadIDAsData;
  if (groupHeadIDAsData)
  {
    nF_asHexString2 = [(NSData *)groupHeadIDAsData NF_asHexString];
    [v18 setObject:nF_asHexString2 forKey:@"groupHead"];
  }

  groupMemberIDs = self->_groupMemberIDs;
  if (groupMemberIDs)
  {
    [v18 setObject:groupMemberIDs forKey:@"groupMembers"];
  }

  referencedAppIDs = self->_referencedAppIDs;
  if (referencedAppIDs)
  {
    [v18 setObject:referencedAppIDs forKey:@"referencedApps"];
  }

  packageIdentifierAsData = self->_packageIdentifierAsData;
  if (packageIdentifierAsData)
  {
    nF_asHexString3 = [(NSData *)packageIdentifierAsData NF_asHexString];
    [v18 setObject:nF_asHexString3 forKey:@"packageIdentifier"];
  }

  moduleIdentifierAsData = self->_moduleIdentifierAsData;
  if (moduleIdentifierAsData)
  {
    nF_asHexString4 = [(NSData *)moduleIdentifierAsData NF_asHexString];
    [v18 setObject:nF_asHexString4 forKey:@"moduleIdentifier"];
  }

  discretionaryData = self->_discretionaryData;
  if (discretionaryData)
  {
    [v18 setObject:discretionaryData forKey:@"discretionary"];
  }

  multiSEApplicationGroupMemberIDs = self->_multiSEApplicationGroupMemberIDs;
  if (multiSEApplicationGroupMemberIDs)
  {
    [v18 setObject:multiSEApplicationGroupMemberIDs forKey:@"multiSEApplicationGroup"];
  }

  typeFSystemCode = self->_typeFSystemCode;
  if (typeFSystemCode)
  {
    [v18 setObject:typeFSystemCode forKey:@"typeFSystemCode"];
  }

  instanceACL = self->_instanceACL;
  if (instanceACL)
  {
    [v18 setObject:instanceACL forKey:@"instanceACL"];
  }

  return v18;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [(NFApplet *)self isEqualToApplet:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqualToApplet:(id)applet
{
  appletCopy = applet;
  if (appletCopy == self)
  {
    v8 = 1;
  }

  else
  {
    identifierAsData = [(NFApplet *)self identifierAsData];
    identifierAsData2 = [(NFApplet *)appletCopy identifierAsData];
    if ([identifierAsData isEqualToData:identifierAsData2])
    {
      seOS = [(NFApplet *)self seOS];
      v8 = seOS == [(NFApplet *)appletCopy seOS];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (BOOL)suppressTypeB
{
  moduleIdentifierAsData = self->_moduleIdentifierAsData;
  v4 = [[NSData alloc] initWithBytes:&unk_100296B08 length:16];
  if ([(NSData *)moduleIdentifierAsData isEqualToData:v4])
  {
    v5 = 1;
  }

  else
  {
    v6 = self->_moduleIdentifierAsData;
    v7 = [[NSData alloc] initWithBytes:&unk_100296B18 length:10];
    v5 = [(NSData *)v6 isEqualToData:v7];
  }

  return v5;
}

- (BOOL)suppressTypeA
{
  moduleIdentifierAsData = self->_moduleIdentifierAsData;
  v3 = [[NSData alloc] initWithBytes:&unk_100296B22 length:10];
  LOBYTE(moduleIdentifierAsData) = [(NSData *)moduleIdentifierAsData isEqualToData:v3];

  return moduleIdentifierAsData;
}

- (unsigned)supportedTypeFSystem
{
  if ([(NSData *)self->_typeFSystemCode length]!= 2)
  {
    return 0;
  }

  if (*[(NSData *)self->_typeFSystemCode bytes]== 768)
  {
    return 1;
  }

  if (*[(NSData *)self->_typeFSystemCode bytes]!= 2176)
  {
    return 0;
  }

  return 2;
}

- (NFApplet)initWithCoder:(id)coder
{
  coderCopy = coder;
  v29.receiver = self;
  v29.super_class = NFApplet;
  v5 = [(NFApplet *)&v29 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"seid"];
    seIdentifier = v5->_seIdentifier;
    v5->_seIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifierAsData = v5->_identifierAsData;
    v5->_identifierAsData = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"discretionary"];
    discretionaryData = v5->_discretionaryData;
    v5->_discretionaryData = v10;

    v5->_family = [coderCopy decodeInt32ForKey:@"family"];
    v5->_appletGPState = [coderCopy decodeInt32ForKey:@"lifecycleState"];
    v5->_activationState = [coderCopy decodeInt32ForKey:@"activationState"];
    v5->_authTransientSupport = [coderCopy decodeBoolForKey:@"authTransientSupport"];
    v5->_authTransientConfigurable = [coderCopy decodeBoolForKey:@"authTransientConfigurable"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"groupHead"];
    groupHeadIDAsData = v5->_groupHeadIDAsData;
    v5->_groupHeadIDAsData = v12;

    v14 = [NFNSCheckedDecoder coder:coderCopy decodeArrayOfClass:objc_opt_class() forKey:@"groupMembers"];
    groupMemberIDs = v5->_groupMemberIDs;
    v5->_groupMemberIDs = v14;

    v16 = [NFNSCheckedDecoder coder:coderCopy decodeArrayOfClass:objc_opt_class() forKey:@"referencedApps"];
    referencedAppIDs = v5->_referencedAppIDs;
    v5->_referencedAppIDs = v16;

    v5->_isContainer = [coderCopy decodeBoolForKey:@"containerInstance"];
    v5->_isProxy = [coderCopy decodeBoolForKey:@"proxyInstance"];
    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"packageIdentifier"];
    packageIdentifierAsData = v5->_packageIdentifierAsData;
    v5->_packageIdentifierAsData = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"moduleIdentifier"];
    moduleIdentifierAsData = v5->_moduleIdentifierAsData;
    v5->_moduleIdentifierAsData = v20;

    v5->_groupActivationStyle = [coderCopy decodeInt32ForKey:@"groupActivationStyle"];
    v22 = [NFNSCheckedDecoder coder:coderCopy decodeArrayOfClass:objc_opt_class() forKey:@"multiSEApplicationGroup"];
    multiSEApplicationGroupMemberIDs = v5->_multiSEApplicationGroupMemberIDs;
    v5->_multiSEApplicationGroupMemberIDs = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"typeFSystemCode"];
    typeFSystemCode = v5->_typeFSystemCode;
    v5->_typeFSystemCode = v24;

    v5->_seOS = [coderCopy decodeIntegerForKey:@"seOS"];
    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"instanceACL"];
    instanceACL = v5->_instanceACL;
    v5->_instanceACL = v26;

    [(NFApplet *)v5 _initManagedBySP];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  seIdentifier = self->_seIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:seIdentifier forKey:@"seid"];
  [coderCopy encodeObject:self->_identifierAsData forKey:@"identifier"];
  [coderCopy encodeObject:self->_discretionaryData forKey:@"discretionary"];
  [coderCopy encodeInt32:self->_family forKey:@"family"];
  [coderCopy encodeInt32:self->_appletGPState forKey:@"lifecycleState"];
  [coderCopy encodeInt32:self->_activationState forKey:@"activationState"];
  [coderCopy encodeBool:self->_authTransientSupport forKey:@"authTransientSupport"];
  [coderCopy encodeBool:self->_authTransientConfigurable forKey:@"authTransientConfigurable"];
  [coderCopy encodeObject:self->_groupHeadIDAsData forKey:@"groupHead"];
  [coderCopy encodeObject:self->_groupMemberIDs forKey:@"groupMembers"];
  [coderCopy encodeObject:self->_referencedAppIDs forKey:@"referencedApps"];
  [coderCopy encodeBool:self->_isContainer forKey:@"containerInstance"];
  [coderCopy encodeBool:self->_isProxy forKey:@"proxyInstance"];
  [coderCopy encodeObject:self->_packageIdentifierAsData forKey:@"packageIdentifier"];
  [coderCopy encodeObject:self->_moduleIdentifierAsData forKey:@"moduleIdentifier"];
  [coderCopy encodeInt32:self->_groupActivationStyle forKey:@"groupActivationStyle"];
  [coderCopy encodeObject:self->_multiSEApplicationGroupMemberIDs forKey:@"multiSEApplicationGroup"];
  [coderCopy encodeObject:self->_typeFSystemCode forKey:@"typeFSystemCode"];
  [coderCopy encodeInteger:self->_seOS forKey:@"seOS"];
  [coderCopy encodeObject:self->_instanceACL forKey:@"instanceACL"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(objc_opt_class());
  if (v5)
  {
    v6 = [(NSString *)self->_seIdentifier copyWithZone:zone];
    v7 = *(v5 + 11);
    *(v5 + 11) = v6;

    v8 = [(NSData *)self->_identifierAsData copyWithZone:zone];
    v9 = *(v5 + 12);
    *(v5 + 12) = v8;

    v10 = [(NSData *)self->_discretionaryData copyWithZone:zone];
    v11 = *(v5 + 13);
    *(v5 + 13) = v10;

    *(v5 + 76) = self->_family;
    *(v5 + 75) = self->_appletGPState;
    *(v5 + 77) = self->_activationState;
    *(v5 + 78) = self->_authTransientSupport;
    *(v5 + 79) = self->_authTransientConfigurable;
    v12 = [(NSData *)self->_groupHeadIDAsData copyWithZone:zone];
    v13 = *(v5 + 2);
    *(v5 + 2) = v12;

    v14 = [(NSArray *)self->_groupMemberIDs copyWithZone:zone];
    v15 = *(v5 + 3);
    *(v5 + 3) = v14;

    v16 = [(NSArray *)self->_referencedAppIDs copyWithZone:zone];
    v17 = *(v5 + 4);
    *(v5 + 4) = v16;

    *(v5 + 73) = self->_isContainer;
    *(v5 + 74) = self->_isProxy;
    v18 = [(NSData *)self->_packageIdentifierAsData copyWithZone:zone];
    v19 = *(v5 + 5);
    *(v5 + 5) = v18;

    v20 = [(NSData *)self->_moduleIdentifierAsData copyWithZone:zone];
    v21 = *(v5 + 6);
    *(v5 + 6) = v20;

    *(v5 + 72) = self->_groupActivationStyle;
    v22 = [(NSArray *)self->_multiSEApplicationGroupMemberIDs copyWithZone:zone];
    v23 = *(v5 + 7);
    *(v5 + 7) = v22;

    v24 = [(NSData *)self->_typeFSystemCode copyWithZone:zone];
    v25 = *(v5 + 8);
    *(v5 + 8) = v24;

    *(v5 + 80) = self->_managedBySP;
    objc_storeStrong(v5 + 15, self->_instanceACL);
    *(v5 + 14) = self->_seOS;
  }

  return v5;
}

- (NFAppletCollection)appletCollection
{
  WeakRetained = objc_loadWeakRetained(&self->_appletCollection);

  return WeakRetained;
}

- (NFApplet)groupHead
{
  WeakRetained = objc_loadWeakRetained(&self->_appletCollection);

  if (!WeakRetained)
  {
    v9 = +[NSAssertionHandler currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"NFApplet.m" lineNumber:461 description:{@"Invalid parameter not satisfying: %@", @"_appletCollection!=nil"}];
  }

  if (self->_groupHeadIDAsData)
  {
    v5 = objc_loadWeakRetained(&self->_appletCollection);
    nF_asHexString = [(NSData *)self->_groupHeadIDAsData NF_asHexString];
    v7 = [v5 appletWithIdentifier:nF_asHexString];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSArray)groupMembers
{
  WeakRetained = objc_loadWeakRetained(&self->_appletCollection);

  if (!WeakRetained)
  {
    v23 = +[NSAssertionHandler currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"NFApplet.m" lineNumber:468 description:{@"Invalid parameter not satisfying: %@", @"_appletCollection!=nil"}];
  }

  if (self->_groupMemberIDs)
  {
    v4 = [[NSMutableArray alloc] initWithCapacity:{-[NSArray count](self->_groupMemberIDs, "count")}];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = self->_groupMemberIDs;
    v5 = [(NSArray *)obj countByEnumeratingWithState:&v28 objects:v42 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v29;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v29 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v28 + 1) + 8 * i);
          v10 = objc_loadWeakRetained(&self->_appletCollection);
          v11 = [v10 appletWithIdentifier:v9];

          if (v11)
          {
            [v4 addObject:v11];
          }

          else
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            Logger = NFLogGetLogger();
            if (Logger)
            {
              v13 = Logger;
              Class = object_getClass(self);
              isMetaClass = class_isMetaClass(Class);
              ClassName = object_getClassName(self);
              Name = sel_getName(a2);
              v16 = 45;
              if (isMetaClass)
              {
                v16 = 43;
              }

              v13(5, "%c[%{public}s %{public}s]:%i No applet for %{public}@", v16, ClassName, Name, 476, v9);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v17 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              v18 = object_getClass(self);
              if (class_isMetaClass(v18))
              {
                v19 = 43;
              }

              else
              {
                v19 = 45;
              }

              v20 = object_getClassName(self);
              v21 = sel_getName(a2);
              *buf = 67110146;
              v33 = v19;
              v34 = 2082;
              v35 = v20;
              v36 = 2082;
              v37 = v21;
              v38 = 1024;
              v39 = 476;
              v40 = 2114;
              v41 = v9;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i No applet for %{public}@", buf, 0x2Cu);
            }
          }
        }

        v6 = [(NSArray *)obj countByEnumeratingWithState:&v28 objects:v42 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSArray)referencedApps
{
  WeakRetained = objc_loadWeakRetained(&self->_appletCollection);

  if (!WeakRetained)
  {
    v23 = +[NSAssertionHandler currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"NFApplet.m" lineNumber:487 description:{@"Invalid parameter not satisfying: %@", @"_appletCollection!=nil"}];
  }

  if (self->_referencedAppIDs)
  {
    v4 = [[NSMutableArray alloc] initWithCapacity:{-[NSArray count](self->_referencedAppIDs, "count")}];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = self->_referencedAppIDs;
    v5 = [(NSArray *)obj countByEnumeratingWithState:&v28 objects:v42 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v29;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v29 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v28 + 1) + 8 * i);
          v10 = objc_loadWeakRetained(&self->_appletCollection);
          v11 = [v10 appletWithIdentifier:v9];

          if (v11)
          {
            [v4 addObject:v11];
          }

          else
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            Logger = NFLogGetLogger();
            if (Logger)
            {
              v13 = Logger;
              Class = object_getClass(self);
              isMetaClass = class_isMetaClass(Class);
              ClassName = object_getClassName(self);
              Name = sel_getName(a2);
              v16 = 45;
              if (isMetaClass)
              {
                v16 = 43;
              }

              v13(5, "%c[%{public}s %{public}s]:%i No applet for %{public}@", v16, ClassName, Name, 495, v9);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v17 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              v18 = object_getClass(self);
              if (class_isMetaClass(v18))
              {
                v19 = 43;
              }

              else
              {
                v19 = 45;
              }

              v20 = object_getClassName(self);
              v21 = sel_getName(a2);
              *buf = 67110146;
              v33 = v19;
              v34 = 2082;
              v35 = v20;
              v36 = 2082;
              v37 = v21;
              v38 = 1024;
              v39 = 495;
              v40 = 2114;
              v41 = v9;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i No applet for %{public}@", buf, 0x2Cu);
            }
          }
        }

        v6 = [(NSArray *)obj countByEnumeratingWithState:&v28 objects:v42 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)multiSSDMembers
{
  WeakRetained = objc_loadWeakRetained(&self->_appletCollection);

  if (!WeakRetained)
  {
    v23 = +[NSAssertionHandler currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"NFApplet.m" lineNumber:506 description:{@"Invalid parameter not satisfying: %@", @"_appletCollection!=nil"}];
  }

  if (self->_multiSEApplicationGroupMemberIDs)
  {
    v4 = [[NSMutableArray alloc] initWithCapacity:{-[NSArray count](self->_multiSEApplicationGroupMemberIDs, "count")}];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = self->_multiSEApplicationGroupMemberIDs;
    v5 = [(NSArray *)obj countByEnumeratingWithState:&v28 objects:v42 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v29;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v29 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v28 + 1) + 8 * i);
          v10 = objc_loadWeakRetained(&self->_appletCollection);
          v11 = [v10 appletWithIdentifier:v9];

          if (v11)
          {
            [v4 addObject:v11];
          }

          else
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            Logger = NFLogGetLogger();
            if (Logger)
            {
              v13 = Logger;
              Class = object_getClass(self);
              isMetaClass = class_isMetaClass(Class);
              ClassName = object_getClassName(self);
              Name = sel_getName(a2);
              v16 = 45;
              if (isMetaClass)
              {
                v16 = 43;
              }

              v13(5, "%c[%{public}s %{public}s]:%i No applet for %{public}@", v16, ClassName, Name, 514, v9);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v17 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              v18 = object_getClass(self);
              if (class_isMetaClass(v18))
              {
                v19 = 43;
              }

              else
              {
                v19 = 45;
              }

              v20 = object_getClassName(self);
              v21 = sel_getName(a2);
              *buf = 67110146;
              v33 = v19;
              v34 = 2082;
              v35 = v20;
              v36 = 2082;
              v37 = v21;
              v38 = 1024;
              v39 = 514;
              v40 = 2114;
              v41 = v9;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i No applet for %{public}@", buf, 0x2Cu);
            }
          }
        }

        v6 = [(NSArray *)obj countByEnumeratingWithState:&v28 objects:v42 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)containsSubKeys
{
  identifierAsData = [(NFApplet *)self identifierAsData];
  v4 = [[NSData alloc] initWithBytes:&unk_100296B2C length:13];
  if ([identifierAsData isEqualToData:v4])
  {
    v5 = 1;
  }

  else
  {
    identifierAsData2 = [(NFApplet *)self identifierAsData];
    v7 = [[NSData alloc] initWithBytes:&unk_100296B39 length:12];
    if ([identifierAsData2 isEqualToData:v7])
    {
      v5 = 1;
    }

    else
    {
      identifierAsData3 = [(NFApplet *)self identifierAsData];
      v9 = [[NSData alloc] initWithBytes:&unk_100296B45 length:12];
      if ([identifierAsData3 isEqualToData:v9])
      {
        v5 = 1;
      }

      else
      {
        identifierAsData4 = [(NFApplet *)self identifierAsData];
        v11 = [[NSData alloc] initWithBytes:&unk_100296B51 length:9];
        v5 = [identifierAsData4 isEqualToData:v11];
      }
    }
  }

  return v5;
}

- (unsigned)lifecycleState
{
  appletGPState = self->_appletGPState;
  if ((appletGPState - 129) >= 2)
  {
    HIDWORD(v4) = (appletGPState & 0x7F) - 1;
    LODWORD(v4) = HIDWORD(v4);
    v3 = v4 >> 1;
    if (v3 > 0xB)
    {
      LOBYTE(appletGPState) = 0;
    }

    else
    {
      LOBYTE(appletGPState) = byte_100296B76[v3];
    }
  }

  return appletGPState;
}

- (NFApplet)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v46.receiver = self;
  v46.super_class = NFApplet;
  v5 = [(NFApplet *)&v46 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKey:@"identifier"];
    if (!v6)
    {
      goto LABEL_8;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [NSData NF_dataWithHexString:v6];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_8;
      }

      v7 = [v6 copy];
    }

    identifierAsData = v5->_identifierAsData;
    v5->_identifierAsData = v7;

LABEL_8:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"seid"];
    seIdentifier = v5->_seIdentifier;
    v5->_seIdentifier = v9;

    v11 = [dictionaryCopy objectForKeyedSubscript:@"discretionary"];
    discretionaryData = v5->_discretionaryData;
    v5->_discretionaryData = v11;

    v13 = [dictionaryCopy objectForKeyedSubscript:@"family"];
    v5->_family = [v13 intValue];

    v14 = [dictionaryCopy objectForKeyedSubscript:@"lifecycleState"];
    v5->_appletGPState = [v14 unsignedCharValue];

    v15 = [dictionaryCopy objectForKeyedSubscript:@"activationState"];
    v5->_activationState = [v15 intValue];

    v16 = [dictionaryCopy objectForKeyedSubscript:@"authTransientSupport"];
    v5->_authTransientSupport = [v16 BOOLValue];

    v17 = [dictionaryCopy objectForKeyedSubscript:@"authTransientConfigurable"];
    v5->_authTransientConfigurable = [v17 BOOLValue];

    v18 = [dictionaryCopy objectForKey:@"groupHead"];

    if (!v18)
    {
      goto LABEL_14;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [NSData NF_dataWithHexString:v18];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_14;
      }

      v19 = [v18 copy];
    }

    groupHeadIDAsData = v5->_groupHeadIDAsData;
    v5->_groupHeadIDAsData = v19;

LABEL_14:
    v21 = [dictionaryCopy objectForKeyedSubscript:@"groupMembers"];
    v22 = [v21 copy];
    groupMemberIDs = v5->_groupMemberIDs;
    v5->_groupMemberIDs = v22;

    v24 = [dictionaryCopy objectForKeyedSubscript:@"referencedApps"];
    v25 = [v24 copy];
    referencedAppIDs = v5->_referencedAppIDs;
    v5->_referencedAppIDs = v25;

    v27 = [dictionaryCopy objectForKeyedSubscript:@"containerInstance"];
    v5->_isContainer = [v27 BOOLValue];

    v28 = [dictionaryCopy objectForKeyedSubscript:@"proxyInstance"];
    v5->_isProxy = [v28 BOOLValue];

    v29 = [dictionaryCopy objectForKey:@"packageIdentifier"];

    if (!v29)
    {
      goto LABEL_20;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = [NSData NF_dataWithHexString:v29];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_20;
      }

      v30 = [v29 copy];
    }

    packageIdentifierAsData = v5->_packageIdentifierAsData;
    v5->_packageIdentifierAsData = v30;

LABEL_20:
    v32 = [dictionaryCopy objectForKey:@"moduleIdentifier"];

    if (v32)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v33 = [NSData NF_dataWithHexString:v32];
LABEL_25:
        moduleIdentifierAsData = v5->_moduleIdentifierAsData;
        v5->_moduleIdentifierAsData = v33;

        goto LABEL_26;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v33 = [v32 copy];
        goto LABEL_25;
      }
    }

LABEL_26:
    v35 = [dictionaryCopy objectForKeyedSubscript:@"groupActivationStyle"];
    v5->_groupActivationStyle = [v35 intValue];

    v36 = [dictionaryCopy objectForKeyedSubscript:@"multiSEApplicationGroup"];
    v37 = [v36 copy];
    multiSEApplicationGroupMemberIDs = v5->_multiSEApplicationGroupMemberIDs;
    v5->_multiSEApplicationGroupMemberIDs = v37;

    v39 = [dictionaryCopy objectForKeyedSubscript:@"typeFSystemCode"];
    v40 = [v39 copy];
    typeFSystemCode = v5->_typeFSystemCode;
    v5->_typeFSystemCode = v40;

    v42 = [dictionaryCopy objectForKeyedSubscript:@"seOS"];
    v5->_seOS = [v42 unsignedIntegerValue];

    v43 = [dictionaryCopy objectForKeyedSubscript:@"instanceACL"];
    instanceACL = v5->_instanceACL;
    v5->_instanceACL = v43;

    [(NFApplet *)v5 _initManagedBySP];
  }

  return v5;
}

- (void)_setIsActive:(BOOL)active
{
  if (self->_activationState == 128)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v6 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v10 = 45;
      if (isMetaClass)
      {
        v10 = 43;
      }

      v6(4, "%c[%{public}s %{public}s]:%i Applet is non-activatable", v10, ClassName, Name, 640);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v11 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = object_getClass(self);
      if (class_isMetaClass(v12))
      {
        v13 = 43;
      }

      else
      {
        v13 = 45;
      }

      *buf = 67109890;
      v16 = v13;
      v17 = 2082;
      v18 = object_getClassName(self);
      v19 = 2082;
      v20 = sel_getName(a2);
      v21 = 1024;
      v22 = 640;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Applet is non-activatable", buf, 0x22u);
    }
  }

  else
  {
    self->_activationState = active;
  }
}

+ (id)aidListForPrinting:(id)printing
{
  printingCopy = printing;
  v4 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = printingCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          identifier = [v10 identifier];
          [v4 addObject:identifier];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = [[NSString alloc] initWithFormat:@"%@", v4];

  return v12;
}

- (BOOL)isPPSEControllable
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = self->_referencedAppIDs;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = [NSData alloc];
          v9 = [v8 initWithBytes:&unk_100296B5A length:{14, v14}];
          nF_asHexString = [v9 NF_asHexString];
          v11 = [v7 caseInsensitiveCompare:nF_asHexString];

          if (!v11)
          {
            v12 = 1;
            goto LABEL_12;
          }
        }
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_12:

  return v12;
}

@end