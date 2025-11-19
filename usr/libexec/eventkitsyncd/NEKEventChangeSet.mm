@interface NEKEventChangeSet
- (void)_enumerateForChangeType:(int)a3 forEntitiesOfClass:(Class)a4 withBlock:(id)a5;
@end

@implementation NEKEventChangeSet

- (void)_enumerateForChangeType:(int)a3 forEntitiesOfClass:(Class)a4 withBlock:(id)a5
{
  v6 = a3;
  v8 = a5;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v21 = 0;
  if (objc_opt_class() == a4)
  {
    v10 = &stru_1000B5798;
  }

  else if (objc_opt_class() == a4)
  {
    v10 = &stru_1000B57B8;
  }

  else if (objc_opt_class() == a4)
  {
    v10 = &stru_1000B57D8;
  }

  else
  {
    v9 = objc_opt_class();
    v10 = &stru_1000B57F8;
    if (v9 != a4)
    {
      v10 = 0;
    }
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10003B464;
  v16[3] = &unk_1000B5820;
  v19 = v20;
  v17 = v10;
  v11 = v8;
  v18 = v11;
  v12 = objc_retainBlock(v16);
  if (v6)
  {
    v13 = [(NEKChangeSet *)self inserts];
    (v12[2])(v12, v13, 1);
  }

  if ((v6 & 2) != 0)
  {
    v14 = [(NEKChangeSet *)self updates];
    (v12[2])(v12, v14, 2);
  }

  if ((v6 & 4) != 0)
  {
    v15 = [(NEKChangeSet *)self deletes];
    (v12[2])(v12, v15, 4);
  }

  _Block_object_dispose(v20, 8);
}

@end