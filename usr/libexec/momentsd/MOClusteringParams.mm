@interface MOClusteringParams
- (MOClusteringParams)initWithembeddingDistanceWeights:(id)weights minPoints:(unint64_t)points minClusterSize:(unint64_t)size;
@end

@implementation MOClusteringParams

- (MOClusteringParams)initWithembeddingDistanceWeights:(id)weights minPoints:(unint64_t)points minClusterSize:(unint64_t)size
{
  weightsCopy = weights;
  v13.receiver = self;
  v13.super_class = MOClusteringParams;
  v10 = [(MOClusteringParams *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_embeddingDistanceWeights, weights);
    v11->_minPoints = points;
    v11->_minClusterSize = size;
  }

  return v11;
}

@end