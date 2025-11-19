@interface UAQhash
- (id)initQhash:(unsigned int)a3 withTime:(int)a4;
@end

@implementation UAQhash

- (id)initQhash:(unsigned int)a3 withTime:(int)a4
{
  v10.receiver = self;
  v10.super_class = UAQhash;
  v6 = [(UAQhash *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_qhash = a3;
    v6->_time = a4;
    v8 = v6;
  }

  return v7;
}

@end