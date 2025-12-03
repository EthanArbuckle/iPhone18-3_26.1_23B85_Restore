@interface KmlSharingConfig
- (KmlSharingConfig)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation KmlSharingConfig

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (self)
  {
    [coderCopy encodeObject:self->_uuid forKey:@"uuid"];
    toIdsIdentifier = self->_toIdsIdentifier;
  }

  else
  {
    sub_100378F80(coderCopy, v4);
    toIdsIdentifier = 0;
  }

  [coderCopy encodeObject:toIdsIdentifier forKey:@"toIdsIdentifier"];
  if (self)
  {
    [coderCopy encodeObject:self->_crossPlatformRemoteIdentifier forKey:@"crossPlatformRemoteIdentifier"];
    crossPlatformMailboxIdentifier = self->_crossPlatformMailboxIdentifier;
  }

  else
  {
    sub_1003965C8(coderCopy, v6);
    crossPlatformMailboxIdentifier = 0;
  }

  [coderCopy encodeObject:crossPlatformMailboxIdentifier forKey:@"crossPlatformMailboxIdentifier"];
  if (self)
  {
    [coderCopy encodeInteger:self->_profile forKey:@"profile"];
    [coderCopy encodeInteger:self->_keyRole forKey:@"keyRole"];
    [coderCopy encodeInteger:self->_targetDeviceType forKey:@"targetDeviceType"];
    [coderCopy encodeInteger:self->_sharingFlow forKey:@"sharingFlow"];
    [coderCopy encodeInteger:self->_ownerSideState forKey:@"ownerSideState"];
    [coderCopy encodeInteger:self->_immoTokenLength forKey:@"immoTokenLength"];
    [coderCopy encodeInteger:self->_immoTokenOffset forKey:@"immoTokenOffset"];
    slotIdentifier = self->_slotIdentifier;
  }

  else
  {
    sub_1003965D4(coderCopy);
    slotIdentifier = 0;
  }

  [coderCopy encodeObject:slotIdentifier forKey:@"slotIdentifier"];
  if (self)
  {
    [coderCopy encodeInteger:self->_slotIdentifierIndex forKey:@"slotIdentifierIndex"];
    [coderCopy encodeInteger:self->_slotIdentifierSize forKey:@"slotIdentifierSize"];
    [coderCopy encodeInteger:self->_slotIdentifierOffset forKey:@"slotIdentifierOffset"];
    [coderCopy encodeInteger:self->_sharingCertificateChainLength forKey:@"sharingCertificateChainLength"];
    entitlementsInASN1 = self->_entitlementsInASN1;
  }

  else
  {
    sub_100396670(coderCopy);
    entitlementsInASN1 = 0;
  }

  [coderCopy encodeObject:entitlementsInASN1 forKey:@"entitlements"];
  if (self)
  {
    [coderCopy encodeObject:self->_friendKeyIdentifier forKey:@"friendKeyIdentifier"];
    invitationIdentifier = self->_invitationIdentifier;
  }

  else
  {
    sub_1003966DC(coderCopy, v10);
    invitationIdentifier = 0;
  }

  [coderCopy encodeObject:invitationIdentifier forKey:@"invitationIdentifier"];
  if (self)
  {
    [coderCopy encodeObject:self->_authorizationId forKey:@"authorizationId"];
    authorizationDate = self->_authorizationDate;
  }

  else
  {
    sub_1003966E8(coderCopy, v12);
    authorizationDate = 0;
  }

  [coderCopy encodeObject:authorizationDate forKey:@"authorizationDate"];
  if (self)
  {
    [coderCopy encodeInteger:self->_agreedKmlSharingVersion forKey:@"agreedKmlSharingVersion"];
    displayName = self->_displayName;
  }

  else
  {
    sub_1003966F4(coderCopy, v14);
    displayName = 0;
  }

  [coderCopy encodeObject:displayName forKey:@"displayName"];
  if (self)
  {
    [coderCopy encodeBool:self->_enableVehicleEnteredPasscode forKey:@"enableVehicleEnteredPasscode"];
    vehicleEnteredPasscode = self->_vehicleEnteredPasscode;
  }

  else
  {
    sub_100396704(coderCopy, v16);
    vehicleEnteredPasscode = 0;
  }

  [coderCopy encodeObject:vehicleEnteredPasscode forKey:@"vehicleEnteredPasscode"];
  if (self)
  {
    [coderCopy encodeObject:self->_passcodeSeed forKey:@"passcodeSeed"];
    deviceEnteredPasscode = self->_deviceEnteredPasscode;
  }

  else
  {
    sub_100396714(coderCopy, v18);
    deviceEnteredPasscode = 0;
  }

  [coderCopy encodeObject:deviceEnteredPasscode forKey:@"deviceEnteredPasscode"];
  if (self)
  {
    [coderCopy encodeInteger:self->_depRetriesLeft forKey:@"depRetriesLeft"];
    [coderCopy encodeInteger:self->_maxDepRetriesAllowed forKey:@"maxDepRetriesAllowed"];
    [coderCopy encodeBool:self->_mockRefreshInstanceCA forKey:@"mockRefreshInstanceCA"];
    secondFactorEntitlementForV3 = self->_secondFactorEntitlementForV3;
  }

  else
  {
    sub_100396720(coderCopy);
    secondFactorEntitlementForV3 = 0;
  }

  [coderCopy encodeInteger:secondFactorEntitlementForV3 forKey:@"secondFactorEntitlementForV3"];
}

- (KmlSharingConfig)initWithCoder:(id)coder
{
  coderCopy = coder;
  v36.receiver = self;
  v36.super_class = KmlSharingConfig;
  v5 = [(KmlSharingConfig *)&v36 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"toIdsIdentifier"];
    toIdsIdentifier = v5->_toIdsIdentifier;
    v5->_toIdsIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"crossPlatformRemoteIdentifier"];
    crossPlatformRemoteIdentifier = v5->_crossPlatformRemoteIdentifier;
    v5->_crossPlatformRemoteIdentifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"crossPlatformMailboxIdentifier"];
    crossPlatformMailboxIdentifier = v5->_crossPlatformMailboxIdentifier;
    v5->_crossPlatformMailboxIdentifier = v12;

    v5->_profile = [coderCopy decodeIntegerForKey:@"profile"];
    v5->_keyRole = [coderCopy decodeIntegerForKey:@"keyRole"];
    v5->_targetDeviceType = [coderCopy decodeIntegerForKey:@"targetDeviceType"];
    v5->_sharingFlow = [coderCopy decodeIntegerForKey:@"sharingFlow"];
    v5->_ownerSideState = [coderCopy decodeIntegerForKey:@"ownerSideState"];
    v5->_immoTokenLength = [coderCopy decodeIntegerForKey:@"immoTokenLength"];
    v5->_immoTokenOffset = [coderCopy decodeIntegerForKey:@"immoTokenOffset"];
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"slotIdentifier"];
    slotIdentifier = v5->_slotIdentifier;
    v5->_slotIdentifier = v14;

    v5->_slotIdentifierIndex = [coderCopy decodeIntegerForKey:@"slotIdentifierIndex"];
    v5->_slotIdentifierSize = [coderCopy decodeIntegerForKey:@"slotIdentifierSize"];
    v5->_slotIdentifierOffset = [coderCopy decodeIntegerForKey:@"slotIdentifierOffset"];
    v5->_sharingCertificateChainLength = [coderCopy decodeIntegerForKey:@"sharingCertificateChainLength"];
    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"entitlements"];
    entitlementsInASN1 = v5->_entitlementsInASN1;
    v5->_entitlementsInASN1 = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"friendKeyIdentifier"];
    uppercaseString = [v18 uppercaseString];
    friendKeyIdentifier = v5->_friendKeyIdentifier;
    v5->_friendKeyIdentifier = uppercaseString;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"invitationIdentifier"];
    invitationIdentifier = v5->_invitationIdentifier;
    v5->_invitationIdentifier = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"authorizationId"];
    authorizationId = v5->_authorizationId;
    v5->_authorizationId = v23;

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"authorizationDate"];
    authorizationDate = v5->_authorizationDate;
    v5->_authorizationDate = v25;

    v5->_agreedKmlSharingVersion = [coderCopy decodeIntegerForKey:@"agreedKmlSharingVersion"];
    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v27;

    v5->_enableVehicleEnteredPasscode = [coderCopy decodeBoolForKey:@"enableVehicleEnteredPasscode"];
    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"vehicleEnteredPasscode"];
    vehicleEnteredPasscode = v5->_vehicleEnteredPasscode;
    v5->_vehicleEnteredPasscode = v29;

    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"passcodeSeed"];
    passcodeSeed = v5->_passcodeSeed;
    v5->_passcodeSeed = v31;

    v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceEnteredPasscode"];
    deviceEnteredPasscode = v5->_deviceEnteredPasscode;
    v5->_deviceEnteredPasscode = v33;

    v5->_depRetriesLeft = [coderCopy decodeIntegerForKey:@"depRetriesLeft"];
    v5->_maxDepRetriesAllowed = [coderCopy decodeIntegerForKey:@"maxDepRetriesAllowed"];
    v5->_mockRefreshInstanceCA = [coderCopy decodeBoolForKey:@"mockRefreshInstanceCA"];
    v5->_secondFactorEntitlementForV3 = [coderCopy decodeIntegerForKey:@"secondFactorEntitlementForV3"];
  }

  return v5;
}

- (id)description
{
  v3 = +[NSMutableString string];
  v4 = [NSString stringWithFormat:@"UUID                  : %@\n", self->_uuid];
  [v3 appendString:v4];

  v5 = [NSString stringWithFormat:@"FriendIdsIdentifier   : %@\n", self->_toIdsIdentifier];
  [v3 appendString:v5];

  v6 = [NSString stringWithFormat:@"XP FriendIdentifier   : %@\n", self->_crossPlatformRemoteIdentifier];
  [v3 appendString:v6];

  v7 = [(NSString *)self->_crossPlatformMailboxIdentifier length];
  if (v7 < 9)
  {
    v8 = &stru_1004D9380;
  }

  else
  {
    v8 = [(NSString *)self->_crossPlatformMailboxIdentifier substringToIndex:4];
  }

  v9 = [NSString stringWithFormat:@"XP Mailbox Identifier : %@\n", v8];
  [v3 appendString:v9];

  if (v7 >= 9)
  {
  }

  v10 = [NSString stringWithFormat:@"InvitationIdentifier  : %@\n", self->_invitationIdentifier];
  [v3 appendString:v10];

  v11 = [NSString stringWithFormat:@"FriendKeyIdentifier   : %@", self->_friendKeyIdentifier];
  [v3 appendString:v11];

  if (self->_enableVehicleEnteredPasscode)
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  v13 = [NSString stringWithFormat:@"EnableVEP             : %@", v12];
  [v3 appendString:v13];

  v14 = [NSString stringWithFormat:@"VEP length            : %u", [(NSString *)self->_vehicleEnteredPasscode length]];
  [v3 appendString:v14];

  v15 = [NSString stringWithFormat:@"PasscodeSeed length   : %u", [(NSData *)self->_passcodeSeed length]];
  [v3 appendString:v15];

  v16 = [NSString stringWithFormat:@"DEP : length - %u, Attempts/Max - %u / %u", [(NSString *)self->_deviceEnteredPasscode length], self->_maxDepRetriesAllowed - self->_depRetriesLeft, self->_maxDepRetriesAllowed];
  [v3 appendString:v16];

  if (self->_mockRefreshInstanceCA)
  {
    [v3 appendString:@"Mock Refresh Instance CA requested"];
  }

  return v3;
}

@end