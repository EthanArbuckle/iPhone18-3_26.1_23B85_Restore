@interface BFSDirectoryEnumerator
+ (id)BFSEnumeratorWithPath:(id)path withDepth:(unint64_t)depth;
- (id)getNextMatch;
@end

@implementation BFSDirectoryEnumerator

+ (id)BFSEnumeratorWithPath:(id)path withDepth:(unint64_t)depth
{
  pathCopy = path;
  v6 = objc_alloc_init(BFSDirectoryEnumerator);
  if (v6)
  {
    v7 = [BFSDirectory BFSDirectoryWithURL:pathCopy withDepth:depth];
    v8 = [NSMutableArray arrayWithObject:v7];
    [(BFSDirectoryEnumerator *)v6 setDirectoryQueue:v8];

    [(BFSDirectoryEnumerator *)v6 setDepth:depth];
  }

  return v6;
}

- (id)getNextMatch
{
  directoryQueue = [(BFSDirectoryEnumerator *)self directoryQueue];
  v4 = [directoryQueue count];

  if (v4)
  {
    firstObject = 0;
    while (1)
    {
      v6 = firstObject;
      directoryQueue2 = [(BFSDirectoryEnumerator *)self directoryQueue];
      firstObject = [directoryQueue2 firstObject];

      v8 = [firstObject url];
      if (v8)
      {
        v9 = v8;
        urlEnumerator = [firstObject urlEnumerator];

        if (!urlEnumerator)
        {
          directoryQueue3 = [(BFSDirectoryEnumerator *)self directoryQueue];
          [directoryQueue3 removeObjectAtIndex:0];

          nextObject = [firstObject url];
          goto LABEL_19;
        }
      }

      urlEnumerator2 = [firstObject urlEnumerator];
      nextObject = [urlEnumerator2 nextObject];

      if (nextObject)
      {
        break;
      }

LABEL_16:
      directoryQueue4 = [(BFSDirectoryEnumerator *)self directoryQueue];
      [directoryQueue4 removeObjectAtIndex:0];

      directoryQueue5 = [(BFSDirectoryEnumerator *)self directoryQueue];
      v23 = [directoryQueue5 count];

      if (!v23)
      {
        nextObject = 0;
        goto LABEL_19;
      }
    }

    while (1)
    {
      v26 = 0;
      v13 = [nextObject getResourceValue:&v26 forKey:NSURLIsDirectoryKey error:0];
      v14 = v26;
      v15 = v14;
      if (!v13 || ([v14 BOOLValue] & 1) == 0)
      {
        break;
      }

      if ([(BFSDirectoryEnumerator *)self depth])
      {
        v16 = [firstObject remainingDepth] - 1;
      }

      else
      {
        v16 = 0;
      }

      if (!-[BFSDirectoryEnumerator depth](self, "depth") || [firstObject remainingDepth] && v16)
      {
        directoryQueue6 = [(BFSDirectoryEnumerator *)self directoryQueue];
        v18 = [BFSDirectory BFSDirectoryWithURL:nextObject withDepth:v16];
        [directoryQueue6 addObject:v18];
      }

      urlEnumerator3 = [firstObject urlEnumerator];
      nextObject2 = [urlEnumerator3 nextObject];

      nextObject = nextObject2;
      if (!nextObject2)
      {
        goto LABEL_16;
      }
    }

LABEL_19:
  }

  else
  {
    nextObject = 0;
  }

  return nextObject;
}

@end