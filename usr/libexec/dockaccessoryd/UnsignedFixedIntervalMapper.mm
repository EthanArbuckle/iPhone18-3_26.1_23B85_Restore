@interface UnsignedFixedIntervalMapper
- (UnsignedFixedIntervalMapper)initWithBins:(id)bins intervalCreationBlock:(id)block valueComparisonBlock:(id)comparisonBlock;
- (id)intervalForValue:(unint64_t)value;
- (id)intervalIndexForValue:(unint64_t)value;
@end

@implementation UnsignedFixedIntervalMapper

- (UnsignedFixedIntervalMapper)initWithBins:(id)bins intervalCreationBlock:(id)block valueComparisonBlock:(id)comparisonBlock
{
  binsCopy = bins;
  blockCopy = block;
  comparisonBlockCopy = comparisonBlock;
  v29.receiver = self;
  v29.super_class = UnsignedFixedIntervalMapper;
  v11 = [(UnsignedFixedIntervalMapper *)&v29 init];
  if (v11)
  {
    v12 = objc_retainBlock(blockCopy);
    creationBlock = v11->_creationBlock;
    v11->_creationBlock = v12;

    v14 = objc_retainBlock(comparisonBlockCopy);
    comparisonBlock = v11->_comparisonBlock;
    v11->_comparisonBlock = v14;

    v16 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(binsCopy, "count") + 1}];
    if ([binsCopy count])
    {
      v17 = 0;
      v18 = &off_1002823E0;
      do
      {
        creationBlock = [(UnsignedFixedIntervalMapper *)v11 creationBlock];
        v20 = [binsCopy objectAtIndexedSubscript:v17];
        v21 = (creationBlock)[2](creationBlock, v18, v20);
        [v16 addObject:v21];

        v22 = [binsCopy objectAtIndexedSubscript:v17];

        ++v17;
        v18 = v22;
      }

      while ([binsCopy count] > v17);
    }

    else
    {
      v22 = &off_1002823E0;
    }

    creationBlock2 = [(UnsignedFixedIntervalMapper *)v11 creationBlock];
    v24 = +[DKMInterval positiveInfinityEnd];
    v25 = (creationBlock2)[2](creationBlock2, v22, v24);
    [v16 addObject:v25];

    v26 = [v16 copy];
    intervals = v11->_intervals;
    v11->_intervals = v26;
  }

  return v11;
}

- (id)intervalIndexForValue:(unint64_t)value
{
  intervals = [(UnsignedFixedIntervalMapper *)self intervals];
  v6 = [intervals count];

  if (v6 == 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    do
    {
      comparisonBlock = [(UnsignedFixedIntervalMapper *)self comparisonBlock];
      intervals2 = [(UnsignedFixedIntervalMapper *)self intervals];
      v10 = [intervals2 objectAtIndexedSubscript:v7];
      v11 = [v10 end];
      v12 = (comparisonBlock)[2](comparisonBlock, value, v11);

      if (v12)
      {
        break;
      }

      ++v7;
      intervals3 = [(UnsignedFixedIntervalMapper *)self intervals];
      v14 = [intervals3 count] - 1;
    }

    while (v7 < v14);
  }

  return [NSNumber numberWithInteger:v7];
}

- (id)intervalForValue:(unint64_t)value
{
  intervals = [(UnsignedFixedIntervalMapper *)self intervals];
  v6 = [(UnsignedFixedIntervalMapper *)self intervalIndexForValue:value];
  v7 = [intervals objectAtIndexedSubscript:{objc_msgSend(v6, "unsignedIntValue")}];

  return v7;
}

@end