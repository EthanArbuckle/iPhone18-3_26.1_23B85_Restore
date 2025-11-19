@interface SKMountState
- (SKMountState)initWithMountPoint:(id)a3;
@end

@implementation SKMountState

- (SKMountState)initWithMountPoint:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = SKMountState;
  v6 = [(SKMountState *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mountPoint, a3);
    v8 = objc_opt_new();
    mountFlags = v7->_mountFlags;
    v7->_mountFlags = v8;

    bzero(&v16, 0x878uLL);
    if (!statfs([v5 UTF8String], &v16))
    {
      v10 = 16;
      v11 = &dword_100049240;
      do
      {
        if ((v16.f_flags & v10) != 0)
        {
          [(NSMutableArray *)v7->_mountFlags addObject:*(v11 - 1)];
        }

        v12 = *v11;
        v11 += 4;
        v10 = v12;
      }

      while (v12);
      if ((v16.f_flags & 0x200000) != 0)
      {
        v13 = @"noowners";
      }

      else
      {
        v13 = @"owners";
      }

      [(NSMutableArray *)v7->_mountFlags addObject:v13];
    }
  }

  return v7;
}

@end