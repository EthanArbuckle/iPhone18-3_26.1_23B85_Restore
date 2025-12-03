@interface NRBabelRouteLocal
- (NRBabelRouteLocal)initWithPrefix:(id)prefix instance:(id)instance;
- (unsigned)seqno;
@end

@implementation NRBabelRouteLocal

- (NRBabelRouteLocal)initWithPrefix:(id)prefix instance:(id)instance
{
  v11[0] = 0;
  v11[1] = 0;
  instanceCopy = instance;
  prefixCopy = prefix;
  v10.receiver = self;
  v10.super_class = NRBabelRouteLocal;
  v8 = -[NRBabelRoute initWithPrefix:neighbor:routerID:seqno:interval:receivedMetric:nextHop:instance:](&v10, "initWithPrefix:neighbor:routerID:seqno:interval:receivedMetric:nextHop:instance:", prefixCopy, 0, [instanceCopy routerID], objc_msgSend(instanceCopy, "nodeSeqno"), 0xFFFFLL, 0, v11, instanceCopy);

  return v8;
}

- (unsigned)seqno
{
  instance = [(NRBabelRoute *)self instance];
  nodeSeqno = [instance nodeSeqno];

  return nodeSeqno;
}

@end