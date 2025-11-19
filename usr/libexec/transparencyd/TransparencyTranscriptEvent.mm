@interface TransparencyTranscriptEvent
- (TransparencyTranscriptEvent)initWithName:(id)a3;
- (id)serialize;
@end

@implementation TransparencyTranscriptEvent

- (TransparencyTranscriptEvent)initWithName:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = TransparencyTranscriptEvent;
  v5 = [(TransparencyTranscriptEvent *)&v8 init];
  if (v5)
  {
    v6 = +[NSDate date];
    [(TransparencyTranscriptEvent *)v5 setTimestamp:v6];

    [(TransparencyTranscriptEvent *)v5 setName:v4];
  }

  return v5;
}

- (id)serialize
{
  v8[0] = @"timestamp";
  v3 = [(TransparencyTranscriptEvent *)self timestamp];
  [v3 timeIntervalSince1970];
  v4 = [NSNumber numberWithDouble:?];
  v8[1] = @"name";
  v9[0] = v4;
  v5 = [(TransparencyTranscriptEvent *)self name];
  v9[1] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:2];

  return v6;
}

@end