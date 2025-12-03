@interface NRBabelSourceLocal
- (NRBabelSourceLocal)initWithPrefix:(id)prefix instance:(id)instance;
- (id)description;
- (unsigned)seqno;
@end

@implementation NRBabelSourceLocal

- (unsigned)seqno
{
  instance = [(NRBabelSource *)self instance];
  nodeSeqno = [instance nodeSeqno];

  return nodeSeqno;
}

- (id)description
{
  v3 = [NSString alloc];
  bPrefix = [(NRBabelSource *)self bPrefix];
  v5 = [v3 initWithFormat:@"%@ (local)", bPrefix];

  return v5;
}

- (NRBabelSourceLocal)initWithPrefix:(id)prefix instance:(id)instance
{
  instanceCopy = instance;
  prefixCopy = prefix;
  v10.receiver = self;
  v10.super_class = NRBabelSourceLocal;
  v8 = -[NRBabelSource initWithPrefix:routerID:seqno:metric:instance:](&v10, "initWithPrefix:routerID:seqno:metric:instance:", prefixCopy, [instanceCopy routerID], objc_msgSend(instanceCopy, "nodeSeqno"), 0, instanceCopy);

  return v8;
}

@end