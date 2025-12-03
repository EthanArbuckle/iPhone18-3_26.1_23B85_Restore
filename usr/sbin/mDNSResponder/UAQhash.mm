@interface UAQhash
- (id)initQhash:(unsigned int)qhash withTime:(int)time;
@end

@implementation UAQhash

- (id)initQhash:(unsigned int)qhash withTime:(int)time
{
  v10.receiver = self;
  v10.super_class = UAQhash;
  v6 = [(UAQhash *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_qhash = qhash;
    v6->_time = time;
    v8 = v6;
  }

  return v7;
}

@end