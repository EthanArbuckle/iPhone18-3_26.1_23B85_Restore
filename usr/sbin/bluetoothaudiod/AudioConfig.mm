@interface AudioConfig
- (AcceptorInterface)matchedAcceptor;
- (AudioConfig)init;
@end

@implementation AudioConfig

- (AudioConfig)init
{
  v6.receiver = self;
  v6.super_class = AudioConfig;
  v2 = [(AudioConfig *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableArray);
    audioChanConfigArray = v2->_audioChanConfigArray;
    v2->_audioChanConfigArray = v3;
  }

  return v2;
}

- (AcceptorInterface)matchedAcceptor
{
  WeakRetained = objc_loadWeakRetained(&self->_matchedAcceptor);

  return WeakRetained;
}

@end