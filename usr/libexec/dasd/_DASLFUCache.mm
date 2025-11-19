@interface _DASLFUCache
- (_DASLFUCache)initWithCapacity:(unint64_t)a3;
- (id)objectForKey:(id)a3;
- (void)setObject:(id)a3 forKey:(id)a4;
- (void)updateKeyFrequency:(id)a3;
@end

@implementation _DASLFUCache

- (_DASLFUCache)initWithCapacity:(unint64_t)a3
{
  v17.receiver = self;
  v17.super_class = _DASLFUCache;
  v4 = [(_DASLFUCache *)&v17 init];
  v5 = v4;
  if (v4)
  {
    v4->_capacity = a3;
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

- (id)objectForKey:(id)a3
{
  v4 = a3;
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
  v10 = v4;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002B860;
  block[3] = &unk_1001B56B8;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_sync(queue, block);
}

- (void)updateKeyFrequency:(id)a3
{
  v20 = a3;
  v4 = [(_DASLFUCache *)self keyToFreq];
  v5 = [v4 objectForKeyedSubscript:v20];
  v6 = [v5 unsignedIntegerValue];

  v7 = [NSNumber numberWithUnsignedInteger:v6 + 1];
  v8 = [(_DASLFUCache *)self keyToFreq];
  [v8 setObject:v7 forKeyedSubscript:v20];

  v9 = [(_DASLFUCache *)self freqToKeys];
  v10 = [NSNumber numberWithUnsignedInteger:v6];
  v11 = [v9 objectForKeyedSubscript:v10];

  [v11 removeObject:v20];
  if (![v11 count])
  {
    v12 = [(_DASLFUCache *)self freqToKeys];
    v13 = [NSNumber numberWithUnsignedInteger:v6];
    [v12 removeObjectForKey:v13];

    if ([(_DASLFUCache *)self minFreq]== v6)
    {
      [(_DASLFUCache *)self setMinFreq:[(_DASLFUCache *)self minFreq]+ 1];
    }
  }

  v14 = [(_DASLFUCache *)self freqToKeys];
  v15 = [v14 objectForKeyedSubscript:v7];

  if (!v15)
  {
    v16 = +[NSMutableOrderedSet orderedSet];
    v17 = [(_DASLFUCache *)self freqToKeys];
    [v17 setObject:v16 forKeyedSubscript:v7];
  }

  v18 = [(_DASLFUCache *)self freqToKeys];
  v19 = [v18 objectForKeyedSubscript:v7];
  [v19 addObject:v20];
}

@end