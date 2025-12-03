@interface NMRProtobufSerialization
- (id)dictionaryFromProtobuf:(id)protobuf;
- (id)dictionaryFromProtobufData:(id)data;
- (id)protobufDataFromDictionary:(id)dictionary;
- (id)protobufFromDictionary:(id)dictionary;
- (void)setDictionaryKeyToProtobufKeyMapping:(id)mapping;
@end

@implementation NMRProtobufSerialization

- (void)setDictionaryKeyToProtobufKeyMapping:(id)mapping
{
  mappingCopy = mapping;
  if (self->_dictionaryKeyToProtobufKeyMapping != mappingCopy)
  {
    objc_storeStrong(&self->_dictionaryKeyToProtobufKeyMapping, mapping);
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

- (id)dictionaryFromProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v5 = [[NSMutableDictionary alloc] initWithCapacity:{-[NSDictionary count](self->_dictionaryKeyToProtobufKeyMapping, "count")}];
  protobufKeyToDictionaryKeyMapping = self->_protobufKeyToDictionaryKeyMapping;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100027268;
  v12[3] = &unk_100049470;
  v13 = protobufCopy;
  selfCopy = self;
  v7 = v5;
  v15 = v7;
  v8 = protobufCopy;
  [(NSDictionary *)protobufKeyToDictionaryKeyMapping enumerateKeysAndObjectsUsingBlock:v12];
  v9 = v15;
  v10 = v7;

  return v7;
}

- (id)dictionaryFromProtobufData:(id)data
{
  protobufClass = self->_protobufClass;
  dataCopy = data;
  v6 = [[protobufClass alloc] initWithData:dataCopy];

  v7 = [(NMRProtobufSerialization *)self dictionaryFromProtobuf:v6];

  return v7;
}

- (id)protobufFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  protobufClass = self->_protobufClass;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100027468;
  v11[3] = &unk_100049498;
  v11[4] = self;
  v12 = dictionaryCopy;
  v6 = objc_opt_new();
  v13 = v6;
  v7 = dictionaryCopy;
  [v7 enumerateKeysAndObjectsUsingBlock:v11];
  v8 = v13;
  v9 = v6;

  return v6;
}

- (id)protobufDataFromDictionary:(id)dictionary
{
  v3 = [(NMRProtobufSerialization *)self protobufFromDictionary:dictionary];
  data = [v3 data];

  return data;
}

@end