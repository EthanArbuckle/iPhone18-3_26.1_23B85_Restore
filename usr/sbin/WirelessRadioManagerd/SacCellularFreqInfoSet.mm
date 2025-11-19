@interface SacCellularFreqInfoSet
- (SacCellularFreqInfoSet)init;
- (void)dealloc;
- (void)removeAllFreq;
@end

@implementation SacCellularFreqInfoSet

- (SacCellularFreqInfoSet)init
{
  v16.receiver = self;
  v16.super_class = SacCellularFreqInfoSet;
  v2 = [(SacCellularFreqInfoSet *)&v16 init];
  v3 = objc_alloc_init(NSMutableArray);
  mCellularPccFreq = v2->_mCellularPccFreq;
  v2->_mCellularPccFreq = v3;

  v5 = objc_alloc_init(NSMutableArray);
  mCellularSccFreqList = v2->_mCellularSccFreqList;
  v2->_mCellularSccFreqList = v5;

  v7 = objc_alloc_init(NSMutableArray);
  mCellularHoppingFreq = v2->_mCellularHoppingFreq;
  v2->_mCellularHoppingFreq = v7;

  v9 = objc_alloc_init(NSMutableArray);
  mCellularNeighborFreqList = v2->_mCellularNeighborFreqList;
  v2->_mCellularNeighborFreqList = v9;

  v11 = objc_alloc_init(NSMutableArray);
  mCellularSearchFreqList = v2->_mCellularSearchFreqList;
  v2->_mCellularSearchFreqList = v11;

  v13 = objc_alloc_init(NSMutableArray);
  mCellularRPLMNFreqList = v2->_mCellularRPLMNFreqList;
  v2->_mCellularRPLMNFreqList = v13;

  return v2;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = SacCellularFreqInfoSet;
  [(SacCellularFreqInfoSet *)&v2 dealloc];
}

- (void)removeAllFreq
{
  [(NSMutableArray *)self->_mCellularPccFreq removeAllObjects];
  [(NSMutableArray *)self->_mCellularSccFreqList removeAllObjects];
  [(NSMutableArray *)self->_mCellularNeighborFreqList removeAllObjects];
  [(NSMutableArray *)self->_mCellularSearchFreqList removeAllObjects];
  mCellularRPLMNFreqList = self->_mCellularRPLMNFreqList;

  [(NSMutableArray *)mCellularRPLMNFreqList removeAllObjects];
}

@end