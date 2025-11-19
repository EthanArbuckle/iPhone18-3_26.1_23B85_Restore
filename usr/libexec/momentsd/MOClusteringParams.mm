@interface MOClusteringParams
- (MOClusteringParams)initWithembeddingDistanceWeights:(id)a3 minPoints:(unint64_t)a4 minClusterSize:(unint64_t)a5;
@end

@implementation MOClusteringParams

- (MOClusteringParams)initWithembeddingDistanceWeights:(id)a3 minPoints:(unint64_t)a4 minClusterSize:(unint64_t)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = MOClusteringParams;
  v10 = [(MOClusteringParams *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_embeddingDistanceWeights, a3);
    v11->_minPoints = a4;
    v11->_minClusterSize = a5;
  }

  return v11;
}

@end