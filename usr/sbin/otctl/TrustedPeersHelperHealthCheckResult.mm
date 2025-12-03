@interface TrustedPeersHelperHealthCheckResult
- (TrustedPeersHelperHealthCheckResult)initWithCoder:(id)coder;
- (TrustedPeersHelperHealthCheckResult)initWithPostRepairCFU:(BOOL)u postEscrowCFU:(BOOL)fU resetOctagon:(BOOL)octagon leaveTrust:(BOOL)trust reroll:(BOOL)reroll totalEscrowRecords:(unint64_t)records collectableEscrowRecords:(unint64_t)escrowRecords collectedEscrowRecords:(unint64_t)self0 escrowRecordGarbageCollectionEnabled:(BOOL)self1 totalTlkShares:(unint64_t)self2 collectableTlkShares:(unint64_t)self3 collectedTlkShares:(unint64_t)self4 tlkShareGarbageCollectionEnabled:(BOOL)self5 totalPeers:(unint64_t)self6 trustedPeers:(unint64_t)self7 superfluousPeers:(unint64_t)self8 peersCleanedup:(unint64_t)self9 superfluousPeersCleanupEnabled:(BOOL)cleanupEnabled;
- (id)description;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TrustedPeersHelperHealthCheckResult

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [NSNumber numberWithBool:[(TrustedPeersHelperHealthCheckResult *)self postRepairCFU]];
  [v3 setObject:v4 forKeyedSubscript:@"postRepairCFU"];

  v5 = [NSNumber numberWithBool:[(TrustedPeersHelperHealthCheckResult *)self postEscrowCFU]];
  [v3 setObject:v5 forKeyedSubscript:@"postEscrowCFU"];

  v6 = [NSNumber numberWithBool:[(TrustedPeersHelperHealthCheckResult *)self resetOctagon]];
  [v3 setObject:v6 forKeyedSubscript:@"resetOctagon"];

  v7 = [NSNumber numberWithBool:[(TrustedPeersHelperHealthCheckResult *)self leaveTrust]];
  [v3 setObject:v7 forKeyedSubscript:@"leaveTrust"];

  v8 = [NSNumber numberWithBool:[(TrustedPeersHelperHealthCheckResult *)self reroll]];
  [v3 setObject:v8 forKeyedSubscript:@"reroll"];

  v9 = [NSNumber numberWithUnsignedLongLong:[(TrustedPeersHelperHealthCheckResult *)self totalEscrowRecords]];
  [v3 setObject:v9 forKeyedSubscript:@"totalEscrowRecords"];

  v10 = [NSNumber numberWithUnsignedLongLong:[(TrustedPeersHelperHealthCheckResult *)self collectableEscrowRecords]];
  [v3 setObject:v10 forKeyedSubscript:@"collectableEscrowRecords"];

  v11 = [NSNumber numberWithUnsignedLongLong:[(TrustedPeersHelperHealthCheckResult *)self collectedEscrowRecords]];
  [v3 setObject:v11 forKeyedSubscript:@"collectedEscrowRecords"];

  v12 = [NSNumber numberWithBool:[(TrustedPeersHelperHealthCheckResult *)self escrowRecordGarbageCollectionEnabled]];
  [v3 setObject:v12 forKeyedSubscript:@"escrowRecordGarbageCollectionEnabled"];

  v13 = [NSNumber numberWithUnsignedLongLong:[(TrustedPeersHelperHealthCheckResult *)self totalTlkShares]];
  [v3 setObject:v13 forKeyedSubscript:@"totalTlkShares"];

  v14 = [NSNumber numberWithUnsignedLongLong:[(TrustedPeersHelperHealthCheckResult *)self collectableTlkShares]];
  [v3 setObject:v14 forKeyedSubscript:@"collectableTlkShares"];

  v15 = [NSNumber numberWithUnsignedLongLong:[(TrustedPeersHelperHealthCheckResult *)self collectedTlkShares]];
  [v3 setObject:v15 forKeyedSubscript:@"collectedTlkShares"];

  v16 = [NSNumber numberWithBool:[(TrustedPeersHelperHealthCheckResult *)self tlkShareGarbageCollectionEnabled]];
  [v3 setObject:v16 forKeyedSubscript:@"tlkShareGarbageCollectionEnabled"];

  v17 = [NSNumber numberWithUnsignedLongLong:[(TrustedPeersHelperHealthCheckResult *)self totalPeers]];
  [v3 setObject:v17 forKeyedSubscript:@"totalPeers"];

  v18 = [NSNumber numberWithUnsignedLongLong:[(TrustedPeersHelperHealthCheckResult *)self trustedPeers]];
  [v3 setObject:v18 forKeyedSubscript:@"trustedPeers"];

  v19 = [NSNumber numberWithUnsignedLongLong:[(TrustedPeersHelperHealthCheckResult *)self superfluousPeers]];
  [v3 setObject:v19 forKeyedSubscript:@"superfluousPeers"];

  v20 = [NSNumber numberWithUnsignedLongLong:[(TrustedPeersHelperHealthCheckResult *)self peersCleanedup]];
  [v3 setObject:v20 forKeyedSubscript:@"peersCleanedup"];

  v21 = [NSNumber numberWithBool:[(TrustedPeersHelperHealthCheckResult *)self superfluousPeersCleanupEnabled]];
  [v3 setObject:v21 forKeyedSubscript:@"superfluousPeersCleanupEnabled"];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[TrustedPeersHelperHealthCheckResult postRepairCFU](self forKey:{"postRepairCFU"), @"postRepairCFU"}];
  [coderCopy encodeBool:-[TrustedPeersHelperHealthCheckResult postEscrowCFU](self forKey:{"postEscrowCFU"), @"postEscrowCFU"}];
  [coderCopy encodeBool:-[TrustedPeersHelperHealthCheckResult resetOctagon](self forKey:{"resetOctagon"), @"resetOctagon"}];
  [coderCopy encodeBool:-[TrustedPeersHelperHealthCheckResult leaveTrust](self forKey:{"leaveTrust"), @"leaveTrust"}];
  [coderCopy encodeBool:-[TrustedPeersHelperHealthCheckResult reroll](self forKey:{"reroll"), @"reroll"}];
  [coderCopy encodeInt64:-[TrustedPeersHelperHealthCheckResult totalEscrowRecords](self forKey:{"totalEscrowRecords"), @"totalEscrowRecords"}];
  [coderCopy encodeInt64:-[TrustedPeersHelperHealthCheckResult collectableEscrowRecords](self forKey:{"collectableEscrowRecords"), @"collectableEscrowRecords"}];
  [coderCopy encodeInt64:-[TrustedPeersHelperHealthCheckResult collectedEscrowRecords](self forKey:{"collectedEscrowRecords"), @"collectedEscrowRecords"}];
  [coderCopy encodeBool:-[TrustedPeersHelperHealthCheckResult escrowRecordGarbageCollectionEnabled](self forKey:{"escrowRecordGarbageCollectionEnabled"), @"escrowRecordGarbageCollectionEnabled"}];
  [coderCopy encodeInt64:-[TrustedPeersHelperHealthCheckResult totalTlkShares](self forKey:{"totalTlkShares"), @"totalTlkShares"}];
  [coderCopy encodeInt64:-[TrustedPeersHelperHealthCheckResult collectableTlkShares](self forKey:{"collectableTlkShares"), @"collectableTlkShares"}];
  [coderCopy encodeInt64:-[TrustedPeersHelperHealthCheckResult collectedTlkShares](self forKey:{"collectedTlkShares"), @"collectedTlkShares"}];
  [coderCopy encodeBool:-[TrustedPeersHelperHealthCheckResult tlkShareGarbageCollectionEnabled](self forKey:{"tlkShareGarbageCollectionEnabled"), @"tlkShareGarbageCollectionEnabled"}];
  [coderCopy encodeInt64:-[TrustedPeersHelperHealthCheckResult totalPeers](self forKey:{"totalPeers"), @"totalPeers"}];
  [coderCopy encodeInt64:-[TrustedPeersHelperHealthCheckResult trustedPeers](self forKey:{"trustedPeers"), @"trustedPeers"}];
  [coderCopy encodeInt64:-[TrustedPeersHelperHealthCheckResult superfluousPeers](self forKey:{"superfluousPeers"), @"superfluousPeers"}];
  [coderCopy encodeInt64:-[TrustedPeersHelperHealthCheckResult peersCleanedup](self forKey:{"peersCleanedup"), @"peersCleanedup"}];
  [coderCopy encodeBool:-[TrustedPeersHelperHealthCheckResult superfluousPeersCleanupEnabled](self forKey:{"superfluousPeersCleanupEnabled"), @"superfluousPeersCleanupEnabled"}];
}

- (TrustedPeersHelperHealthCheckResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = TrustedPeersHelperHealthCheckResult;
  v5 = [(TrustedPeersHelperHealthCheckResult *)&v7 init];
  if (v5)
  {
    v5->_postRepairCFU = [coderCopy decodeBoolForKey:@"postRepairCFU"];
    v5->_postEscrowCFU = [coderCopy decodeBoolForKey:@"postEscrowCFU"];
    v5->_resetOctagon = [coderCopy decodeBoolForKey:@"resetOctagon"];
    v5->_leaveTrust = [coderCopy decodeBoolForKey:@"leaveTrust"];
    v5->_reroll = [coderCopy decodeBoolForKey:@"reroll"];
    v5->_totalEscrowRecords = [coderCopy decodeInt64ForKey:@"totalEscrowRecords"];
    v5->_collectableEscrowRecords = [coderCopy decodeInt64ForKey:@"collectableEscrowRecords"];
    v5->_collectedEscrowRecords = [coderCopy decodeInt64ForKey:@"collectedEscrowRecords"];
    v5->_escrowRecordGarbageCollectionEnabled = [coderCopy decodeBoolForKey:@"escrowRecordGarbageCollectionEnabled"];
    v5->_totalTlkShares = [coderCopy decodeInt64ForKey:@"totalTlkShares"];
    v5->_collectableTlkShares = [coderCopy decodeInt64ForKey:@"collectableTlkShares"];
    v5->_collectedTlkShares = [coderCopy decodeInt64ForKey:@"collectedTlkShares"];
    v5->_tlkShareGarbageCollectionEnabled = [coderCopy decodeBoolForKey:@"tlkShareGarbageCollectionEnabled"];
    v5->_totalPeers = [coderCopy decodeInt64ForKey:@"totalPeers"];
    v5->_trustedPeers = [coderCopy decodeInt64ForKey:@"trustedPeers"];
    v5->_superfluousPeers = [coderCopy decodeInt64ForKey:@"superfluousPeers"];
    v5->_peersCleanedup = [coderCopy decodeInt64ForKey:@"peersCleanedup"];
    v5->_superfluousPeersCleanupEnabled = [coderCopy decodeBoolForKey:@"superfluousPeersCleanupEnabled"];
  }

  return v5;
}

- (id)description
{
  if ([(TrustedPeersHelperHealthCheckResult *)self postRepairCFU])
  {
    v3 = @"true";
  }

  else
  {
    v3 = @"false";
  }

  v27 = v3;
  if ([(TrustedPeersHelperHealthCheckResult *)self postEscrowCFU])
  {
    v4 = @"true";
  }

  else
  {
    v4 = @"false";
  }

  v26 = v4;
  if ([(TrustedPeersHelperHealthCheckResult *)self resetOctagon])
  {
    v5 = @"true";
  }

  else
  {
    v5 = @"false";
  }

  v25 = v5;
  if ([(TrustedPeersHelperHealthCheckResult *)self leaveTrust])
  {
    v6 = @"true";
  }

  else
  {
    v6 = @"false";
  }

  v24 = v6;
  if ([(TrustedPeersHelperHealthCheckResult *)self reroll])
  {
    v7 = @"true";
  }

  else
  {
    v7 = @"false";
  }

  v23 = v7;
  totalEscrowRecords = [(TrustedPeersHelperHealthCheckResult *)self totalEscrowRecords];
  collectableEscrowRecords = [(TrustedPeersHelperHealthCheckResult *)self collectableEscrowRecords];
  collectedEscrowRecords = [(TrustedPeersHelperHealthCheckResult *)self collectedEscrowRecords];
  if ([(TrustedPeersHelperHealthCheckResult *)self escrowRecordGarbageCollectionEnabled])
  {
    v8 = @"true";
  }

  else
  {
    v8 = @"false";
  }

  v19 = v8;
  totalTlkShares = [(TrustedPeersHelperHealthCheckResult *)self totalTlkShares];
  collectableTlkShares = [(TrustedPeersHelperHealthCheckResult *)self collectableTlkShares];
  collectedTlkShares = [(TrustedPeersHelperHealthCheckResult *)self collectedTlkShares];
  if ([(TrustedPeersHelperHealthCheckResult *)self tlkShareGarbageCollectionEnabled])
  {
    v11 = @"true";
  }

  else
  {
    v11 = @"false";
  }

  totalPeers = [(TrustedPeersHelperHealthCheckResult *)self totalPeers];
  trustedPeers = [(TrustedPeersHelperHealthCheckResult *)self trustedPeers];
  superfluousPeers = [(TrustedPeersHelperHealthCheckResult *)self superfluousPeers];
  peersCleanedup = [(TrustedPeersHelperHealthCheckResult *)self peersCleanedup];
  if ([(TrustedPeersHelperHealthCheckResult *)self superfluousPeersCleanupEnabled])
  {
    v16 = @"true";
  }

  else
  {
    v16 = @"false";
  }

  return [NSString stringWithFormat:@"<HealthCheckResult: postRepairCFU: %@, postEscrowCFU: %@, resetOctagon: %@, leaveTrust: %@, reroll: %@, totalEscrowRecords: %llu, collectableEscrowRecords: %llu, collectedEscrowRecords: %llu, escrowRecordGarbageCollectionEnabled: %@, totalTlkShares: %llu, collectableTlkShares: %llu, collectedTlkShares: %llu, tlkShareGarbageCollectionEnabled: %@, totalPeers: %llu, trustedPeers: %llu, superfluousPeers: %llu, peersCleanedup: %llu, superfluousPeersCleanupEnabled: %@>", v27, v26, v25, v24, v23, totalEscrowRecords, collectableEscrowRecords, collectedEscrowRecords, v19, totalTlkShares, collectableTlkShares, collectedTlkShares, v11, totalPeers, trustedPeers, superfluousPeers, peersCleanedup, v16];
}

- (TrustedPeersHelperHealthCheckResult)initWithPostRepairCFU:(BOOL)u postEscrowCFU:(BOOL)fU resetOctagon:(BOOL)octagon leaveTrust:(BOOL)trust reroll:(BOOL)reroll totalEscrowRecords:(unint64_t)records collectableEscrowRecords:(unint64_t)escrowRecords collectedEscrowRecords:(unint64_t)self0 escrowRecordGarbageCollectionEnabled:(BOOL)self1 totalTlkShares:(unint64_t)self2 collectableTlkShares:(unint64_t)self3 collectedTlkShares:(unint64_t)self4 tlkShareGarbageCollectionEnabled:(BOOL)self5 totalPeers:(unint64_t)self6 trustedPeers:(unint64_t)self7 superfluousPeers:(unint64_t)self8 peersCleanedup:(unint64_t)self9 superfluousPeersCleanupEnabled:(BOOL)cleanupEnabled
{
  v27.receiver = self;
  v27.super_class = TrustedPeersHelperHealthCheckResult;
  result = [(TrustedPeersHelperHealthCheckResult *)&v27 init];
  if (result)
  {
    result->_postRepairCFU = u;
    result->_postEscrowCFU = fU;
    result->_resetOctagon = octagon;
    result->_leaveTrust = trust;
    result->_reroll = reroll;
    result->_totalEscrowRecords = records;
    result->_collectableEscrowRecords = escrowRecords;
    result->_escrowRecordGarbageCollectionEnabled = enabled;
    result->_collectedEscrowRecords = collectedEscrowRecords;
    result->_totalTlkShares = shares;
    result->_collectableTlkShares = tlkShares;
    result->_collectedTlkShares = collectedTlkShares;
    result->_tlkShareGarbageCollectionEnabled = collectionEnabled;
    result->_totalPeers = peers;
    result->_trustedPeers = trustedPeers;
    result->_superfluousPeers = superfluousPeers;
    result->_peersCleanedup = cleanedup;
    result->_superfluousPeersCleanupEnabled = cleanupEnabled;
  }

  return result;
}

@end