@interface BFSDirectoryEnumerator
+ (id)BFSEnumeratorWithPath:(id)a3 withDepth:(unint64_t)a4;
- (id)getNextMatch;
@end

@implementation BFSDirectoryEnumerator

+ (id)BFSEnumeratorWithPath:(id)a3 withDepth:(unint64_t)a4
{
  v5 = a3;
  v6 = objc_alloc_init(BFSDirectoryEnumerator);
  if (v6)
  {
    v7 = [BFSDirectory BFSDirectoryWithURL:v5 withDepth:a4];
    v8 = [NSMutableArray arrayWithObject:v7];
    [(BFSDirectoryEnumerator *)v6 setDirectoryQueue:v8];

    [(BFSDirectoryEnumerator *)v6 setDepth:a4];
  }

  return v6;
}

- (id)getNextMatch
{
  v3 = [(BFSDirectoryEnumerator *)self directoryQueue];
  v4 = [v3 count];

  if (v4)
  {
    v5 = 0;
    while (1)
    {
      v6 = v5;
      v7 = [(BFSDirectoryEnumerator *)self directoryQueue];
      v5 = [v7 firstObject];

      v8 = [v5 url];
      if (v8)
      {
        v9 = v8;
        v10 = [v5 urlEnumerator];

        if (!v10)
        {
          v25 = [(BFSDirectoryEnumerator *)self directoryQueue];
          [v25 removeObjectAtIndex:0];

          v12 = [v5 url];
          goto LABEL_19;
        }
      }

      v11 = [v5 urlEnumerator];
      v12 = [v11 nextObject];

      if (v12)
      {
        break;
      }

LABEL_16:
      v21 = [(BFSDirectoryEnumerator *)self directoryQueue];
      [v21 removeObjectAtIndex:0];

      v22 = [(BFSDirectoryEnumerator *)self directoryQueue];
      v23 = [v22 count];

      if (!v23)
      {
        v12 = 0;
        goto LABEL_19;
      }
    }

    while (1)
    {
      v26 = 0;
      v13 = [v12 getResourceValue:&v26 forKey:NSURLIsDirectoryKey error:0];
      v14 = v26;
      v15 = v14;
      if (!v13 || ([v14 BOOLValue] & 1) == 0)
      {
        break;
      }

      if ([(BFSDirectoryEnumerator *)self depth])
      {
        v16 = [v5 remainingDepth] - 1;
      }

      else
      {
        v16 = 0;
      }

      if (!-[BFSDirectoryEnumerator depth](self, "depth") || [v5 remainingDepth] && v16)
      {
        v17 = [(BFSDirectoryEnumerator *)self directoryQueue];
        v18 = [BFSDirectory BFSDirectoryWithURL:v12 withDepth:v16];
        [v17 addObject:v18];
      }

      v19 = [v5 urlEnumerator];
      v20 = [v19 nextObject];

      v12 = v20;
      if (!v20)
      {
        goto LABEL_16;
      }
    }

LABEL_19:
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end