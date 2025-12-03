@interface CKKSExternalTLKShare
- (id)datafyPeerID:(id)d;
- (id)initWithViewName:(id)name tlkShare:(id)share;
- (id)makeTLKShareRecord:(id)record contextID:(id)d;
@end

@implementation CKKSExternalTLKShare

- (id)datafyPeerID:(id)d
{
  dCopy = d;
  if ([dCopy hasPrefix:@"spid-"])
  {
    v4 = [dCopy substringFromIndex:{objc_msgSend(@"spid-", "length")}];

    dCopy = v4;
  }

  v5 = [[NSData alloc] initWithBase64EncodedString:dCopy options:0];

  return v5;
}

- (id)makeTLKShareRecord:(id)record contextID:(id)d
{
  dCopy = d;
  recordCopy = record;
  v7 = [CKKSTLKShare alloc];
  tlkUUID = [(CKKSExternalTLKShare *)self tlkUUID];
  senderPeerID = [(CKKSExternalTLKShare *)self senderPeerID];
  v10 = [(CKKSExternalTLKShare *)self stringifyPeerID:senderPeerID];
  receiverPeerID = [(CKKSExternalTLKShare *)self receiverPeerID];
  v12 = [(CKKSExternalTLKShare *)self stringifyPeerID:receiverPeerID];
  wrappedTLK = [(CKKSExternalTLKShare *)self wrappedTLK];
  signature = [(CKKSExternalTLKShare *)self signature];
  v15 = [(CKKSTLKShare *)v7 initForKey:tlkUUID senderPeerID:v10 recieverPeerID:v12 receiverEncPublicKeySPKI:0 curve:4 version:1 epoch:0 poisoned:0 wrappedKey:wrappedTLK signature:signature zoneID:recordCopy];

  v16 = [[CKKSTLKShareRecord alloc] initWithShare:v15 contextID:dCopy zoneID:recordCopy encodedCKRecord:0];

  return v16;
}

- (id)initWithViewName:(id)name tlkShare:(id)share
{
  shareCopy = share;
  nameCopy = name;
  tlkUUID = [shareCopy tlkUUID];
  receiverPeerID = [shareCopy receiverPeerID];
  v10 = [(CKKSExternalTLKShare *)self datafyPeerID:receiverPeerID];
  senderPeerID = [shareCopy senderPeerID];
  v12 = [(CKKSExternalTLKShare *)self datafyPeerID:senderPeerID];
  wrappedTLK = [shareCopy wrappedTLK];
  signature = [shareCopy signature];

  v15 = [(CKKSExternalTLKShare *)self initWithView:nameCopy tlkUUID:tlkUUID receiverPeerID:v10 senderPeerID:v12 wrappedTLK:wrappedTLK signature:signature];
  return v15;
}

@end