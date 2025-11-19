@interface NRBabelSourceLocal
- (NRBabelSourceLocal)initWithPrefix:(id)a3 instance:(id)a4;
- (id)description;
- (unsigned)seqno;
@end

@implementation NRBabelSourceLocal

- (unsigned)seqno
{
  v2 = [(NRBabelSource *)self instance];
  v3 = [v2 nodeSeqno];

  return v3;
}

- (id)description
{
  v3 = [NSString alloc];
  v4 = [(NRBabelSource *)self bPrefix];
  v5 = [v3 initWithFormat:@"%@ (local)", v4];

  return v5;
}

- (NRBabelSourceLocal)initWithPrefix:(id)a3 instance:(id)a4
{
  v6 = a4;
  v7 = a3;
  v10.receiver = self;
  v10.super_class = NRBabelSourceLocal;
  v8 = -[NRBabelSource initWithPrefix:routerID:seqno:metric:instance:](&v10, "initWithPrefix:routerID:seqno:metric:instance:", v7, [v6 routerID], objc_msgSend(v6, "nodeSeqno"), 0, v6);

  return v8;
}

@end