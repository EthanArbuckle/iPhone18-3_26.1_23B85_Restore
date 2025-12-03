@interface SRFramesStoreOffsetEnumerator
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
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

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  if (!state->var0)
  {
    state->var0 = self->_offset;
  }

  return [SRFrameStore countByEnumeratingWithState:"countByEnumeratingWithState:objects:count:" objects:? count:?];
}

@end