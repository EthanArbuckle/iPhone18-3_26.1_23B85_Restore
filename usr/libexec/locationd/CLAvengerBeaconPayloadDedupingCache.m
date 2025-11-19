@interface CLAvengerBeaconPayloadDedupingCache
- (void)pruneCache;
@end

@implementation CLAvengerBeaconPayloadDedupingCache

- (void)pruneCache
{
  [+[NSDate now](NSDate timeIntervalSinceReferenceDate];
  v4 = v3;
  v5 = objc_alloc_init(NSMutableIndexSet);
  beaconPayloadCache = self->_beaconPayloadCache;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10028BBBC;
  v7[3] = &unk_1024C4A30;
  v7[5] = v4;
  v7[4] = v5;
  [(NSMutableArray *)beaconPayloadCache enumerateObjectsUsingBlock:v7];
  [(NSMutableArray *)self->_beaconPayloadCache removeObjectsAtIndexes:v5];
}

@end