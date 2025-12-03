@interface NEKEventChangeSet
- (void)_enumerateForChangeType:(int)type forEntitiesOfClass:(Class)class withBlock:(id)block;
@end

@implementation NEKEventChangeSet

- (void)_enumerateForChangeType:(int)type forEntitiesOfClass:(Class)class withBlock:(id)block
{
  typeCopy = type;
  blockCopy = block;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v21 = 0;
  if (objc_opt_class() == class)
  {
    v10 = &stru_1000B5798;
  }

  else if (objc_opt_class() == class)
  {
    v10 = &stru_1000B57B8;
  }

  else if (objc_opt_class() == class)
  {
    v10 = &stru_1000B57D8;
  }

  else
  {
    v9 = objc_opt_class();
    v10 = &stru_1000B57F8;
    if (v9 != class)
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
  v11 = blockCopy;
  v18 = v11;
  v12 = objc_retainBlock(v16);
  if (typeCopy)
  {
    inserts = [(NEKChangeSet *)self inserts];
    (v12[2])(v12, inserts, 1);
  }

  if ((typeCopy & 2) != 0)
  {
    updates = [(NEKChangeSet *)self updates];
    (v12[2])(v12, updates, 2);
  }

  if ((typeCopy & 4) != 0)
  {
    deletes = [(NEKChangeSet *)self deletes];
    (v12[2])(v12, deletes, 4);
  }

  _Block_object_dispose(v20, 8);
}

@end