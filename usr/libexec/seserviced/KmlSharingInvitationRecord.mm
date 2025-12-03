@interface KmlSharingInvitationRecord
- (KmlSharingInvitationRecord)init;
- (KmlSharingInvitationRecord)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation KmlSharingInvitationRecord

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (self)
  {
    [coderCopy encodeObject:self->_uuid forKey:@"uuid"];
    ownerIdsIdentifier = self->_ownerIdsIdentifier;
  }

  else
  {
    sub_100378F80(coderCopy, v4);
    ownerIdsIdentifier = 0;
  }

  [coderCopy encodeObject:ownerIdsIdentifier forKey:@"ownerIdsIdentifier"];
  if (self)
  {
    [coderCopy encodeObject:self->_crossPlatformMailboxIdentifier forKey:@"crossPlatformMailboxIdentifier"];
    [coderCopy encodeInteger:self->_sharingFlow forKey:@"sharingFlow"];
    invitationFromOwner = self->_invitationFromOwner;
  }

  else
  {
    sub_100378F8C(coderCopy);
    invitationFromOwner = 0;
  }

  [coderCopy encodeObject:invitationFromOwner forKey:@"invitationFromOwner"];
  if (self)
  {
    [coderCopy encodeObject:self->_bindingAttestation forKey:@"bindingAttestation"];
    signingRequest = self->_signingRequest;
  }

  else
  {
    sub_100378FDC(coderCopy, v7);
    signingRequest = 0;
  }

  [coderCopy encodeObject:signingRequest forKey:@"signingRequest"];
  if (self)
  {
    [coderCopy encodeObject:self->_ppidEncryptionEphemeralPublicKey forKey:@"ppidEncryptionEphemeralPublicKey"];
    ppidEncryptionEphemeralSecretKey = self->_ppidEncryptionEphemeralSecretKey;
  }

  else
  {
    sub_100378FE8(coderCopy, v9);
    ppidEncryptionEphemeralSecretKey = 0;
  }

  [coderCopy encodeObject:ppidEncryptionEphemeralSecretKey forKey:@"ppidEncryptionEphemeralSecretKey"];
  if (self)
  {
    [coderCopy encodeObject:self->_ppidFetchRequest forKey:@"ppidFetchRequest"];
    preTrackRequest = self->_preTrackRequest;
  }

  else
  {
    sub_100378FF4(coderCopy, v11);
    preTrackRequest = 0;
  }

  [coderCopy encodeObject:preTrackRequest forKey:@"preTrackRequest"];
  if (self)
  {
    [coderCopy encodeInteger:self->_friendSideState forKey:@"friendSideState"];
    friendKeyIdentifier = self->_friendKeyIdentifier;
  }

  else
  {
    sub_100379000(coderCopy, v13);
    friendKeyIdentifier = 0;
  }

  [coderCopy encodeObject:friendKeyIdentifier forKey:@"friendKeyIdentifier"];
  if (self)
  {
    [coderCopy encodeObject:self->_invitationIdentifier forKey:@"invitationIdentifier"];
    [coderCopy encodeInteger:self->_numberOfPinAttempts forKey:@"numberOfPinAttempts"];
    [coderCopy encodeInteger:self->_numberOfOSPAttempts forKey:@"numberOfOSPAttempts"];
    secondFactorEntitlementForV3 = self->_secondFactorEntitlementForV3;
  }

  else
  {
    sub_100379010(coderCopy);
    secondFactorEntitlementForV3 = 0;
  }

  [coderCopy encodeInteger:secondFactorEntitlementForV3 forKey:@"secondFactorEntitlementForV3"];
}

- (KmlSharingInvitationRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v33.receiver = self;
  v33.super_class = KmlSharingInvitationRecord;
  v5 = [(KmlSharingInvitationRecord *)&v33 init];
  v6 = v5;
  if (v5)
  {
    v5->_dirty = 0;
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    uuid = v6->_uuid;
    v6->_uuid = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ownerIdsIdentifier"];
    ownerIdsIdentifier = v6->_ownerIdsIdentifier;
    v6->_ownerIdsIdentifier = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"crossPlatformMailboxIdentifier"];
    crossPlatformMailboxIdentifier = v6->_crossPlatformMailboxIdentifier;
    v6->_crossPlatformMailboxIdentifier = v11;

    v6->_sharingFlow = [coderCopy decodeIntegerForKey:@"sharingFlow"];
    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"invitationFromOwner"];
    invitationFromOwner = v6->_invitationFromOwner;
    v6->_invitationFromOwner = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bindingAttestation"];
    bindingAttestation = v6->_bindingAttestation;
    v6->_bindingAttestation = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"signingRequest"];
    signingRequest = v6->_signingRequest;
    v6->_signingRequest = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ppidEncryptionEphemeralPublicKey"];
    ppidEncryptionEphemeralPublicKey = v6->_ppidEncryptionEphemeralPublicKey;
    v6->_ppidEncryptionEphemeralPublicKey = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ppidEncryptionEphemeralSecretKey"];
    ppidEncryptionEphemeralSecretKey = v6->_ppidEncryptionEphemeralSecretKey;
    v6->_ppidEncryptionEphemeralSecretKey = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ppidFetchRequest"];
    ppidFetchRequest = v6->_ppidFetchRequest;
    v6->_ppidFetchRequest = v23;

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"preTrackRequest"];
    preTrackRequest = v6->_preTrackRequest;
    v6->_preTrackRequest = v25;

    v6->_friendSideState = [coderCopy decodeIntegerForKey:@"friendSideState"];
    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"friendKeyIdentifier"];
    uppercaseString = [v27 uppercaseString];
    friendKeyIdentifier = v6->_friendKeyIdentifier;
    v6->_friendKeyIdentifier = uppercaseString;

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"invitationIdentifier"];
    invitationIdentifier = v6->_invitationIdentifier;
    v6->_invitationIdentifier = v30;

    v6->_numberOfPinAttempts = [coderCopy decodeIntegerForKey:@"numberOfPinAttempts"];
    v6->_numberOfOSPAttempts = [coderCopy decodeIntegerForKey:@"numberOfOSPAttempts"];
    v6->_secondFactorEntitlementForV3 = [coderCopy decodeIntegerForKey:@"secondFactorEntitlementForV3"];
  }

  return v6;
}

- (KmlSharingInvitationRecord)init
{
  v3.receiver = self;
  v3.super_class = KmlSharingInvitationRecord;
  result = [(KmlSharingInvitationRecord *)&v3 init];
  if (result)
  {
    result->_dirty = 0;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[KmlSharingInvitationRecord allocWithZone:](KmlSharingInvitationRecord init];
  if (v5)
  {
    v6 = [(NSUUID *)self->_uuid copyWithZone:zone];
    uuid = v5->_uuid;
    v5->_uuid = v6;

    v8 = [(NSString *)self->_ownerIdsIdentifier copyWithZone:zone];
    ownerIdsIdentifier = v5->_ownerIdsIdentifier;
    v5->_ownerIdsIdentifier = v8;

    v10 = [(NSString *)self->_crossPlatformMailboxIdentifier copyWithZone:zone];
    crossPlatformMailboxIdentifier = v5->_crossPlatformMailboxIdentifier;
    v5->_crossPlatformMailboxIdentifier = v10;

    v5->_sharingFlow = self->_sharingFlow;
    v12 = [(NSData *)self->_invitationFromOwner copyWithZone:zone];
    invitationFromOwner = v5->_invitationFromOwner;
    v5->_invitationFromOwner = v12;

    v5->_friendSideState = self->_friendSideState;
    v14 = [(NSString *)self->_friendKeyIdentifier copyWithZone:zone];
    friendKeyIdentifier = v5->_friendKeyIdentifier;
    v5->_friendKeyIdentifier = v14;

    v16 = [(NSString *)self->_invitationIdentifier copyWithZone:zone];
    invitationIdentifier = v5->_invitationIdentifier;
    v5->_invitationIdentifier = v16;

    v18 = [(NSData *)self->_bindingAttestation copyWithZone:zone];
    bindingAttestation = v5->_bindingAttestation;
    v5->_bindingAttestation = v18;

    v20 = [(NSData *)self->_signingRequest copyWithZone:zone];
    signingRequest = v5->_signingRequest;
    v5->_signingRequest = v20;

    v22 = [(NSData *)self->_ppidEncryptionEphemeralPublicKey copyWithZone:zone];
    ppidEncryptionEphemeralPublicKey = v5->_ppidEncryptionEphemeralPublicKey;
    v5->_ppidEncryptionEphemeralPublicKey = v22;

    v24 = [(NSData *)self->_ppidEncryptionEphemeralSecretKey copyWithZone:zone];
    ppidEncryptionEphemeralSecretKey = v5->_ppidEncryptionEphemeralSecretKey;
    v5->_ppidEncryptionEphemeralSecretKey = v24;

    v26 = [(NSData *)self->_ppidFetchRequest copyWithZone:zone];
    ppidFetchRequest = v5->_ppidFetchRequest;
    v5->_ppidFetchRequest = v26;

    v28 = [(NSData *)self->_preTrackRequest copyWithZone:zone];
    preTrackRequest = v5->_preTrackRequest;
    v5->_preTrackRequest = v28;

    v5->_numberOfPinAttempts = self->_numberOfPinAttempts;
    v5->_numberOfOSPAttempts = self->_numberOfOSPAttempts;
    v5->_secondFactorEntitlementForV3 = self->_secondFactorEntitlementForV3;
  }

  return v5;
}

- (id)description
{
  v3 = +[NSMutableString string];
  v4 = [NSString stringWithFormat:@"UUID                  : %@\n", self->_uuid];
  [v3 appendString:v4];

  v5 = [NSString stringWithFormat:@"OwnerIdsIdentifier    : %@\n", self->_ownerIdsIdentifier];
  [v3 appendString:v5];

  v6 = [(NSString *)self->_crossPlatformMailboxIdentifier length];
  if (v6 < 9)
  {
    v7 = &stru_1004D9380;
  }

  else
  {
    v7 = [(NSString *)self->_crossPlatformMailboxIdentifier substringToIndex:4];
  }

  v8 = [NSString stringWithFormat:@"MailboxIdentifier     : %@\n", v7];
  [v3 appendString:v8];

  if (v6 >= 9)
  {
  }

  v9 = [NSString stringWithFormat:@"InvitationIdentifier  : %@\n", self->_invitationIdentifier];
  [v3 appendString:v9];

  v10 = [NSString stringWithFormat:@"FriendKeyIdentifier   : %@", self->_friendKeyIdentifier];
  [v3 appendString:v10];

  return v3;
}

@end