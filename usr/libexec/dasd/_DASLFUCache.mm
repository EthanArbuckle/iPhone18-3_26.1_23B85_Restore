@interface _DASLFUCache
- (_DASLFUCache)initWithCapacity:(unint64_t)capacity;
- (id)objectForKey:(id)key;
- (void)setObject:(id)object forKey:(id)key;
- (void)updateKeyFrequency:(id)frequency;
@end

@implementation _DASLFUCache

- (_DASLFUCache)initWithCapacity:(unint64_t)capacity
{
  v17.receiver = self;
  v17.super_class = _DASLFUCache;
  v4 = [(_DASLFUCache *)&v17 init];
  v5 = v4;
  if (v4)
  {
    v4->_capacity = capacity;
    v6 = +[NSMutableDictionary dictionary];
    keyToValue = v5->_keyToValue;
    v5->_keyToValue = v6;

    v8 = +[NSMutableDictionary dictionary];
    keyToFreq = v5->_keyToFreq;
    v5->_keyToFreq = v8;

    v10 = +[NSMutableDictionary dictionary];
    freqToKeys = v5->_freqToKeys;
    v5->_freqToKeys = v10;

    v5->_minFreq = 0;
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_attr_make_with_qos_class(v12, QOS_CLASS_BACKGROUND, 0);
    v14 = dispatch_queue_create("com.apple.dasd.utils.lfucache.queue", v13);
    queue = v5->_queue;
    v5->_queue = v14;
  }

  return v5;
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_10002B6C4;
  v16 = sub_10002B6D4;
  v17 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002B6DC;
  block[3] = &unk_1001B5AB8;
  block[4] = self;
  v10 = keyCopy;
  v11 = &v12;
  v6 = keyCopy;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)setObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002B860;
  block[3] = &unk_1001B56B8;
  block[4] = self;
  v12 = keyCopy;
  v13 = objectCopy;
  v9 = objectCopy;
  v10 = keyCopy;
  dispatch_sync(queue, block);
}

- (void)updateKeyFrequency:(id)frequency
{
  frequencyCopy = frequency;
  keyToFreq = [(_DASLFUCache *)self keyToFreq];
  v5 = [keyToFreq objectForKeyedSubscript:frequencyCopy];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

  v7 = [NSNumber numberWithUnsignedInteger:unsignedIntegerValue + 1];
  keyToFreq2 = [(_DASLFUCache *)self keyToFreq];
  [keyToFreq2 setObject:v7 forKeyedSubscript:frequencyCopy];

  freqToKeys = [(_DASLFUCache *)self freqToKeys];
  v10 = [NSNumber numberWithUnsignedInteger:unsignedIntegerValue];
  v11 = [freqToKeys objectForKeyedSubscript:v10];

  [v11 removeObject:frequencyCopy];
  if (![v11 count])
  {
    freqToKeys2 = [(_DASLFUCache *)self freqToKeys];
    v13 = [NSNumber numberWithUnsignedInteger:unsignedIntegerValue];
    [freqToKeys2 removeObjectForKey:v13];

    if ([(_DASLFUCache *)self minFreq]== unsignedIntegerValue)
    {
      [(_DASLFUCache *)self setMinFreq:[(_DASLFUCache *)self minFreq]+ 1];
    }
  }

  freqToKeys3 = [(_DASLFUCache *)self freqToKeys];
  v15 = [freqToKeys3 objectForKeyedSubscript:v7];

  if (!v15)
  {
    v16 = +[NSMutableOrderedSet orderedSet];
    freqToKeys4 = [(_DASLFUCache *)self freqToKeys];
    [freqToKeys4 setObject:v16 forKeyedSubscript:v7];
  }

  freqToKeys5 = [(_DASLFUCache *)self freqToKeys];
  v19 = [freqToKeys5 objectForKeyedSubscript:v7];
  [v19 addObject:frequencyCopy];
}

@end