@interface NMRProtobufSerialization
- (id)dictionaryFromProtobuf:(id)a3;
- (id)dictionaryFromProtobufData:(id)a3;
- (id)protobufDataFromDictionary:(id)a3;
- (id)protobufFromDictionary:(id)a3;
- (void)setDictionaryKeyToProtobufKeyMapping:(id)a3;
@end

@implementation NMRProtobufSerialization

- (void)setDictionaryKeyToProtobufKeyMapping:(id)a3
{
  v5 = a3;
  if (self->_dictionaryKeyToProtobufKeyMapping != v5)
  {
    objc_storeStrong(&self->_dictionaryKeyToProtobufKeyMapping, a3);
    v6 = [[NSMutableDictionary alloc] initWithCapacity:{-[NSDictionary count](self->_dictionaryKeyToProtobufKeyMapping, "count")}];
    dictionaryKeyToProtobufKeyMapping = self->_dictionaryKeyToProtobufKeyMapping;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10002716C;
    v11[3] = &unk_100049448;
    v8 = v6;
    v12 = v8;
    [(NSDictionary *)dictionaryKeyToProtobufKeyMapping enumerateKeysAndObjectsUsingBlock:v11];
    protobufKeyToDictionaryKeyMapping = self->_protobufKeyToDictionaryKeyMapping;
    self->_protobufKeyToDictionaryKeyMapping = v8;
    v10 = v8;
  }
}

- (id)dictionaryFromProtobuf:(id)a3
{
  v4 = a3;
  v5 = [[NSMutableDictionary alloc] initWithCapacity:{-[NSDictionary count](self->_dictionaryKeyToProtobufKeyMapping, "count")}];
  protobufKeyToDictionaryKeyMapping = self->_protobufKeyToDictionaryKeyMapping;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100027268;
  v12[3] = &unk_100049470;
  v13 = v4;
  v14 = self;
  v7 = v5;
  v15 = v7;
  v8 = v4;
  [(NSDictionary *)protobufKeyToDictionaryKeyMapping enumerateKeysAndObjectsUsingBlock:v12];
  v9 = v15;
  v10 = v7;

  return v7;
}

- (id)dictionaryFromProtobufData:(id)a3
{
  protobufClass = self->_protobufClass;
  v5 = a3;
  v6 = [[protobufClass alloc] initWithData:v5];

  v7 = [(NMRProtobufSerialization *)self dictionaryFromProtobuf:v6];

  return v7;
}

- (id)protobufFromDictionary:(id)a3
{
  v4 = a3;
  protobufClass = self->_protobufClass;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100027468;
  v11[3] = &unk_100049498;
  v11[4] = self;
  v12 = v4;
  v6 = objc_opt_new();
  v13 = v6;
  v7 = v4;
  [v7 enumerateKeysAndObjectsUsingBlock:v11];
  v8 = v13;
  v9 = v6;

  return v6;
}

- (id)protobufDataFromDictionary:(id)a3
{
  v3 = [(NMRProtobufSerialization *)self protobufFromDictionary:a3];
  v4 = [v3 data];

  return v4;
}

@end