@interface TransparencyTranscriptEvent
- (TransparencyTranscriptEvent)initWithName:(id)name;
- (id)serialize;
@end

@implementation TransparencyTranscriptEvent

- (TransparencyTranscriptEvent)initWithName:(id)name
{
  nameCopy = name;
  v8.receiver = self;
  v8.super_class = TransparencyTranscriptEvent;
  v5 = [(TransparencyTranscriptEvent *)&v8 init];
  if (v5)
  {
    v6 = +[NSDate date];
    [(TransparencyTranscriptEvent *)v5 setTimestamp:v6];

    [(TransparencyTranscriptEvent *)v5 setName:nameCopy];
  }

  return v5;
}

- (id)serialize
{
  v8[0] = @"timestamp";
  timestamp = [(TransparencyTranscriptEvent *)self timestamp];
  [timestamp timeIntervalSince1970];
  v4 = [NSNumber numberWithDouble:?];
  v8[1] = @"name";
  v9[0] = v4;
  name = [(TransparencyTranscriptEvent *)self name];
  v9[1] = name;
  v6 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:2];

  return v6;
}

@end