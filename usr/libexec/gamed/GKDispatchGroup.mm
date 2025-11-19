@interface GKDispatchGroup
- (void)performOnQueue:(id)a3 block:(id)a4;
@end

@implementation GKDispatchGroup

- (void)performOnQueue:(id)a3 block:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    sub_100292FFC(a2, self);
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10015CBF8;
  v11[3] = &unk_100368000;
  v12 = v7;
  v13 = v8;
  v9 = v8;
  v10 = v7;
  [(GKDispatchGroup *)self perform:v11];
}

@end