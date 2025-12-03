@interface WRM_HORecordCacheEntry
- (WRM_HORecordCacheEntry)init;
- (void)dealloc;
- (void)setWithRecord:(int)record :(BOOL)a4 :(unint64_t)a5 :(int)a6 :(int)a7;
@end

@implementation WRM_HORecordCacheEntry

- (WRM_HORecordCacheEntry)init
{
  v3.receiver = self;
  v3.super_class = WRM_HORecordCacheEntry;
  return [(WRM_HORecordCacheEntry *)&v3 init];
}

- (void)dealloc
{
  mDate = self->mDate;
  if (mDate)
  {
  }

  v4.receiver = self;
  v4.super_class = WRM_HORecordCacheEntry;
  [(WRM_HORecordCacheEntry *)&v4 dealloc];
}

- (void)setWithRecord:(int)record :(BOOL)a4 :(unint64_t)a5 :(int)a6 :(int)a7
{
  self->_mCallActive = a4;
  self->_mApp = a5;
  self->_mType = record;
  self->_mMob = a6;
  self->_mReason = a7;
  self->mDate = [+[NSDate date](NSDate copy];
}

@end