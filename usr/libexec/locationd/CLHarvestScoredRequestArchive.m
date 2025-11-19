@interface CLHarvestScoredRequestArchive
- (CLHarvestScoredRequestArchive)initWithArchive:(id)a3 index:(unsigned int)a4;
- (void)dealloc;
@end

@implementation CLHarvestScoredRequestArchive

- (CLHarvestScoredRequestArchive)initWithArchive:(id)a3 index:(unsigned int)a4
{
  v9.receiver = self;
  v9.super_class = CLHarvestScoredRequestArchive;
  v6 = [(CLHarvestScoredRequestArchive *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(CLHarvestScoredRequestArchive *)v6 setArchive:a3];
    [(CLHarvestScoredRequestArchive *)v7 setScore:0.0];
    [(CLHarvestScoredRequestArchive *)v7 setGpsJumpCount:0];
    v7->_index = a4;
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLHarvestScoredRequestArchive;
  [(CLHarvestScoredRequestArchive *)&v3 dealloc];
}

@end