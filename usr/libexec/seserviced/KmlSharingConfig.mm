@interface KmlSharingConfig
- (KmlSharingConfig)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation KmlSharingConfig

- (void)encodeWithCoder:(id)a3
{
  v21 = a3;
  if (self)
  {
    [v21 encodeObject:self->_uuid forKey:@"uuid"];
    toIdsIdentifier = self->_toIdsIdentifier;
  }

  else
  {
    sub_100378F80(v21, v4);
    toIdsIdentifier = 0;
  }

  [v21 encodeObject:toIdsIdentifier forKey:@"toIdsIdentifier"];
  if (self)
  {
    [v21 encodeObject:self->_crossPlatformRemoteIdentifier forKey:@"crossPlatformRemoteIdentifier"];
    crossPlatformMailboxIdentifier = self->_crossPlatformMailboxIdentifier;
  }

  else
  {
    sub_1003965C8(v21, v6);
    crossPlatformMailboxIdentifier = 0;
  }

  [v21 encodeObject:crossPlatformMailboxIdentifier forKey:@"crossPlatformMailboxIdentifier"];
  if (self)
  {
    [v21 encodeInteger:self->_profile forKey:@"profile"];
    [v21 encodeInteger:self->_keyRole forKey:@"keyRole"];
    [v21 encodeInteger:self->_targetDeviceType forKey:@"targetDeviceType"];
    [v21 encodeInteger:self->_sharingFlow forKey:@"sharingFlow"];
    [v21 encodeInteger:self->_ownerSideState forKey:@"ownerSideState"];
    [v21 encodeInteger:self->_immoTokenLength forKey:@"immoTokenLength"];
    [v21 encodeInteger:self->_immoTokenOffset forKey:@"immoTokenOffset"];
    slotIdentifier = self->_slotIdentifier;
  }

  else
  {
    sub_1003965D4(v21);
    slotIdentifier = 0;
  }

  [v21 encodeObject:slotIdentifier forKey:@"slotIdentifier"];
  if (self)
  {
    [v21 encodeInteger:self->_slotIdentifierIndex forKey:@"slotIdentifierIndex"];
    [v21 encodeInteger:self->_slotIdentifierSize forKey:@"slotIdentifierSize"];
    [v21 encodeInteger:self->_slotIdentifierOffset forKey:@"slotIdentifierOffset"];
    [v21 encodeInteger:self->_sharingCertificateChainLength forKey:@"sharingCertificateChainLength"];
    entitlementsInASN1 = self->_entitlementsInASN1;
  }

  else
  {
    sub_100396670(v21);
    entitlementsInASN1 = 0;
  }

  [v21 encodeObject:entitlementsInASN1 forKey:@"entitlements"];
  if (self)
  {
    [v21 encodeObject:self->_friendKeyIdentifier forKey:@"friendKeyIdentifier"];
    invitationIdentifier = self->_invitationIdentifier;
  }

  else
  {
    sub_1003966DC(v21, v10);
    invitationIdentifier = 0;
  }

  [v21 encodeObject:invitationIdentifier forKey:@"invitationIdentifier"];
  if (self)
  {
    [v21 encodeObject:self->_authorizationId forKey:@"authorizationId"];
    authorizationDate = self->_authorizationDate;
  }

  else
  {
    sub_1003966E8(v21, v12);
    authorizationDate = 0;
  }

  [v21 encodeObject:authorizationDate forKey:@"authorizationDate"];
  if (self)
  {
    [v21 encodeInteger:self->_agreedKmlSharingVersion forKey:@"agreedKmlSharingVersion"];
    displayName = self->_displayName;
  }

  else
  {
    sub_1003966F4(v21, v14);
    displayName = 0;
  }

  [v21 encodeObject:displayName forKey:@"displayName"];
  if (self)
  {
    [v21 encodeBool:self->_enableVehicleEnteredPasscode forKey:@"enableVehicleEnteredPasscode"];
    vehicleEnteredPasscode = self->_vehicleEnteredPasscode;
  }

  else
  {
    sub_100396704(v21, v16);
    vehicleEnteredPasscode = 0;
  }

  [v21 encodeObject:vehicleEnteredPasscode forKey:@"vehicleEnteredPasscode"];
  if (self)
  {
    [v21 encodeObject:self->_passcodeSeed forKey:@"passcodeSeed"];
    deviceEnteredPasscode = self->_deviceEnteredPasscode;
  }

  else
  {
    sub_100396714(v21, v18);
    deviceEnteredPasscode = 0;
  }

  [v21 encodeObject:deviceEnteredPasscode forKey:@"deviceEnteredPasscode"];
  if (self)
  {
    [v21 encodeInteger:self->_depRetriesLeft forKey:@"depRetriesLeft"];
    [v21 encodeInteger:self->_maxDepRetriesAllowed forKey:@"maxDepRetriesAllowed"];
    [v21 encodeBool:self->_mockRefreshInstanceCA forKey:@"mockRefreshInstanceCA"];
    secondFactorEntitlementForV3 = self->_secondFactorEntitlementForV3;
  }

  else
  {
    sub_100396720(v21);
    secondFactorEntitlementForV3 = 0;
  }

  [v21 encodeInteger:secondFactorEntitlementForV3 forKey:@"secondFactorEntitlementForV3"];
}

- (KmlSharingConfig)initWithCoder:(id)a3
{
  v4 = a3;
  v36.receiver = self;
  v36.super_class = KmlSharingConfig;
  v5 = [(KmlSharingConfig *)&v36 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"toIdsIdentifier"];
    toIdsIdentifier = v5->_toIdsIdentifier;
    v5->_toIdsIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"crossPlatformRemoteIdentifier"];
    crossPlatformRemoteIdentifier = v5->_crossPlatformRemoteIdentifier;
    v5->_crossPlatformRemoteIdentifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"crossPlatformMailboxIdentifier"];
    crossPlatformMailboxIdentifier = v5->_crossPlatformMailboxIdentifier;
    v5->_crossPlatformMailboxIdentifier = v12;

    v5->_profile = [v4 decodeIntegerForKey:@"profile"];
    v5->_keyRole = [v4 decodeIntegerForKey:@"keyRole"];
    v5->_targetDeviceType = [v4 decodeIntegerForKey:@"targetDeviceType"];
    v5->_sharingFlow = [v4 decodeIntegerForKey:@"sharingFlow"];
    v5->_ownerSideState = [v4 decodeIntegerForKey:@"ownerSideState"];
    v5->_immoTokenLength = [v4 decodeIntegerForKey:@"immoTokenLength"];
    v5->_immoTokenOffset = [v4 decodeIntegerForKey:@"immoTokenOffset"];
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"slotIdentifier"];
    slotIdentifier = v5->_slotIdentifier;
    v5->_slotIdentifier = v14;

    v5->_slotIdentifierIndex = [v4 decodeIntegerForKey:@"slotIdentifierIndex"];
    v5->_slotIdentifierSize = [v4 decodeIntegerForKey:@"slotIdentifierSize"];
    v5->_slotIdentifierOffset = [v4 decodeIntegerForKey:@"slotIdentifierOffset"];
    v5->_sharingCertificateChainLength = [v4 decodeIntegerForKey:@"sharingCertificateChainLength"];
    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"entitlements"];
    entitlementsInASN1 = v5->_entitlementsInASN1;
    v5->_entitlementsInASN1 = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"friendKeyIdentifier"];
    v19 = [v18 uppercaseString];
    friendKeyIdentifier = v5->_friendKeyIdentifier;
    v5->_friendKeyIdentifier = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"invitationIdentifier"];
    invitationIdentifier = v5->_invitationIdentifier;
    v5->_invitationIdentifier = v21;

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"authorizationId"];
    authorizationId = v5->_authorizationId;
    v5->_authorizationId = v23;

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"authorizationDate"];
    authorizationDate = v5->_authorizationDate;
    v5->_authorizationDate = v25;

    v5->_agreedKmlSharingVersion = [v4 decodeIntegerForKey:@"agreedKmlSharingVersion"];
    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v27;

    v5->_enableVehicleEnteredPasscode = [v4 decodeBoolForKey:@"enableVehicleEnteredPasscode"];
    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"vehicleEnteredPasscode"];
    vehicleEnteredPasscode = v5->_vehicleEnteredPasscode;
    v5->_vehicleEnteredPasscode = v29;

    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"passcodeSeed"];
    passcodeSeed = v5->_passcodeSeed;
    v5->_passcodeSeed = v31;

    v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceEnteredPasscode"];
    deviceEnteredPasscode = v5->_deviceEnteredPasscode;
    v5->_deviceEnteredPasscode = v33;

    v5->_depRetriesLeft = [v4 decodeIntegerForKey:@"depRetriesLeft"];
    v5->_maxDepRetriesAllowed = [v4 decodeIntegerForKey:@"maxDepRetriesAllowed"];
    v5->_mockRefreshInstanceCA = [v4 decodeBoolForKey:@"mockRefreshInstanceCA"];
    v5->_secondFactorEntitlementForV3 = [v4 decodeIntegerForKey:@"secondFactorEntitlementForV3"];
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