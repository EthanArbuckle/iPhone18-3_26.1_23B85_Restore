@interface SRFramesStoreOffsetEnumerator
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (void)dealloc;
@end

@implementation SRFramesStoreOffsetEnumerator

- (void)dealloc
{
  self->_framesStore = 0;
  v2.receiver = self;
  v2.super_class = SRFramesStoreOffsetEnumerator;
  [(SRFramesStoreOffsetEnumerator *)&v2 dealloc];
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  if (!a3->var0)
  {
    a3->var0 = self->_offset;
  }

  return [SRFrameStore countByEnumeratingWithState:"countByEnumeratingWithState:objects:count:" objects:? count:?];
}

@end