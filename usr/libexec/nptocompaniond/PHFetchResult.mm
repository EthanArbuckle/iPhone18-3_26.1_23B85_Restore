@interface PHFetchResult
- (id)npto_objectForLocalIdentifier:(id)identifier;
@end

@implementation PHFetchResult

- (id)npto_objectForLocalIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = objc_getAssociatedObject(selfCopy, &unk_10009C630);
  if (!v6)
  {
    +[NSMapTable strongToStrongObjectsMapTable];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100058D90;
    v6 = v11[3] = &unk_10008B830;
    v12 = v6;
    [(PHFetchResult *)selfCopy enumerateObjectsUsingBlock:v11];
    objc_setAssociatedObject(selfCopy, &unk_10009C630, v6, 1);
  }

  objc_sync_exit(selfCopy);

  v7 = [v6 objectForKey:identifierCopy];
  v8 = v7;
  if (v7)
  {
    v9 = -[PHFetchResult objectAtIndex:](selfCopy, "objectAtIndex:", [v7 unsignedIntegerValue]);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end