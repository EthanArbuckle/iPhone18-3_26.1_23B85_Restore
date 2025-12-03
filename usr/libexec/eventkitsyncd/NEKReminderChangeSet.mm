@interface NEKReminderChangeSet
- (void)_enumerateForChangeType:(int)type forEntitiesOfClass:(Class)class withBlock:(id)block;
@end

@implementation NEKReminderChangeSet

- (void)_enumerateForChangeType:(int)type forEntitiesOfClass:(Class)class withBlock:(id)block
{
  typeCopy = type;
  blockCopy = block;
  if (objc_opt_respondsToSelector())
  {
    v8 = objc_opt_self();
    cdEntityName = [v8 cdEntityName];

    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_10003B038;
    v18 = &unk_1000B5758;
    v19 = cdEntityName;
    v20 = blockCopy;
    v10 = cdEntityName;
    v11 = objc_retainBlock(&v15);
    if (typeCopy)
    {
      v13 = [(NEKChangeSet *)self inserts:v15];
      (v11[2])(v11, v13, 1);

      if ((typeCopy & 2) == 0)
      {
LABEL_4:
        if ((typeCopy & 4) == 0)
        {
LABEL_6:

          goto LABEL_7;
        }

LABEL_5:
        v12 = [(NEKChangeSet *)self deletes:v15];
        (v11[2])(v11, v12, 4);

        goto LABEL_6;
      }
    }

    else if ((typeCopy & 2) == 0)
    {
      goto LABEL_4;
    }

    v14 = [(NEKChangeSet *)self updates:v15];
    (v11[2])(v11, v14, 2);

    if ((typeCopy & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_7:
}

@end