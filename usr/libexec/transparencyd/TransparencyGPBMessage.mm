@interface TransparencyGPBMessage
+ (BOOL)resolveClassMethod:(SEL)method;
+ (BOOL)resolveInstanceMethod:(SEL)method;
+ (TransparencyGPBMessage)allocWithZone:(_NSZone *)zone;
+ (id)descriptor;
+ (id)message;
+ (id)parseDelimitedFromCodedInputStream:(id)stream extensionRegistry:(id)registry error:(id *)error;
+ (id)parseFromCodedInputStream:(id)stream extensionRegistry:(id)registry error:(id *)error;
+ (id)parseFromData:(id)data extensionRegistry:(id)registry error:(id *)error;
+ (void)initialize;
- (BOOL)isEqual:(id)equal;
- (BOOL)isInitialized;
- (TransparencyGPBMessage)init;
- (TransparencyGPBMessage)initWithCodedInputStream:(id)stream extensionRegistry:(id)registry error:(id *)error;
- (TransparencyGPBMessage)initWithCoder:(id)coder;
- (TransparencyGPBMessage)initWithData:(id)data extensionRegistry:(id)registry error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)data;
- (id)delimitedData;
- (id)descriptor;
- (id)getExtension:(id)extension;
- (unint64_t)hash;
- (unint64_t)serializedSize;
- (void)addExtension:(id)extension value:(id)value;
- (void)clearExtension:(id)extension;
- (void)copyFieldsInto:(id)into zone:(_NSZone *)zone descriptor:(id)descriptor;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)internalClear:(BOOL)clear;
- (void)mergeDelimitedFromCodedInputStream:(id)stream extensionRegistry:(id)registry;
- (void)mergeFrom:(id)from;
- (void)mergeFromCodedInputStream:(id)stream extensionRegistry:(id)registry;
- (void)mergeFromData:(id)data extensionRegistry:(id)registry;
- (void)parseMessageSet:(id)set extensionRegistry:(id)registry;
- (void)setExtension:(id)extension index:(unint64_t)index value:(id)value;
- (void)setExtension:(id)extension value:(id)value;
- (void)setUnknownFields:(id)fields;
- (void)writeDelimitedToCodedOutputStream:(id)stream;
- (void)writeDelimitedToOutputStream:(id)stream;
- (void)writeExtensionsToCodedOutputStream:(id)stream range:(TransparencyGPBExtensionRange)range sortedExtensions:(id)extensions;
- (void)writeField:(id)field toCodedOutputStream:(id)stream;
- (void)writeToCodedOutputStream:(id)stream;
- (void)writeToOutputStream:(id)stream;
@end

@implementation TransparencyGPBMessage

+ (void)initialize
{
  v3 = objc_opt_class();
  if (objc_opt_class() == v3)
  {
    [self descriptor];

    objc_opt_class();
  }

  else if ([self superclass] == v3)
  {

    [self descriptor];
  }
}

+ (TransparencyGPBMessage)allocWithZone:(_NSZone *)zone
{
  v5 = *([self descriptor] + 6);

  return NSAllocateObject(self, v5, zone);
}

+ (id)descriptor
{
  result = qword_10039C600;
  if (!qword_10039C600)
  {
    qword_10039C608 = [[TransparencyGPBFileDescriptor alloc] initWithPackage:@"internal" syntax:2];
    LODWORD(v3) = 0;
    result = [TransparencyGPBDescriptor allocDescriptorForClass:objc_opt_class() rootClass:0 file:qword_10039C608 fields:0 fieldCount:0 storageSize:0 flags:v3];
    qword_10039C600 = result;
  }

  return result;
}

+ (id)message
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (TransparencyGPBMessage)init
{
  v5.receiver = self;
  v5.super_class = TransparencyGPBMessage;
  v2 = [(TransparencyGPBMessage *)&v5 init];
  if (v2)
  {
    v3 = objc_opt_class();
    v2->messageStorage_ = (v2 + class_getInstanceSize(v3));
    v2->readOnlyLock_._os_unfair_lock_opaque = 0;
  }

  return v2;
}

- (TransparencyGPBMessage)initWithData:(id)data extensionRegistry:(id)registry error:(id *)error
{
  v8 = [(TransparencyGPBMessage *)self init];
  v9 = v8;
  if (v8)
  {
    [(TransparencyGPBMessage *)v8 mergeFromData:data extensionRegistry:registry];
    if (error)
    {
      *error = 0;
    }
  }

  return v9;
}

- (TransparencyGPBMessage)initWithCodedInputStream:(id)stream extensionRegistry:(id)registry error:(id *)error
{
  v8 = [(TransparencyGPBMessage *)self init];
  v9 = v8;
  if (v8)
  {
    [(TransparencyGPBMessage *)v8 mergeFromCodedInputStream:stream extensionRegistry:registry];
    if (error)
    {
      *error = 0;
    }
  }

  return v9;
}

- (void)dealloc
{
  [(TransparencyGPBMessage *)self internalClear:0];
  v3.receiver = self;
  v3.super_class = TransparencyGPBMessage;
  [(TransparencyGPBMessage *)&v3 dealloc];
}

- (void)copyFieldsInto:(id)into zone:(_NSZone *)zone descriptor:(id)descriptor
{
  intoCopy = into;
  memcpy(*(into + 8), self->messageStorage_, *(descriptor + 6));
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v9 = *(descriptor + 1);
  selfCopy = self;
  v11 = [v9 countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v44;
    selfCopy2 = self;
    v35 = intoCopy;
    v36 = v9;
    do
    {
      v14 = 0;
      v37 = v12;
      do
      {
        if (*v44 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v43 + 1) + 8 * v14);
        v16 = v15[1];
        if ((*(v16 + 28) & 0xF02) != 0)
        {
          v17 = sub_10019E33C(selfCopy, *(*(&v43 + 1) + 8 * v14));
          if (!v17)
          {
            goto LABEL_37;
          }

          v18 = v17;
          v19 = v13;
          v20 = *(v15[1] + 30) - 15;
          fieldType = [v15 fieldType];
          if (v20 <= 1)
          {
            if (fieldType == 1)
            {
              v22 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v18, "count")}];
              v39 = 0u;
              v40 = 0u;
              v41 = 0u;
              v42 = 0u;
              v23 = [v18 countByEnumeratingWithState:&v39 objects:v47 count:16];
              if (v23)
              {
                v24 = v23;
                v25 = *v40;
                do
                {
                  for (i = 0; i != v24; i = i + 1)
                  {
                    if (*v40 != v25)
                    {
                      objc_enumerationMutation(v18);
                    }

                    v27 = [*(*(&v39 + 1) + 8 * i) copyWithZone:zone];
                    [v22 addObject:v27];
                  }

                  v24 = [v18 countByEnumeratingWithState:&v39 objects:v47 count:16];
                }

                while (v24);
                selfCopy = selfCopy2;
                intoCopy = v35;
              }

              v9 = v36;
              v13 = v19;
              goto LABEL_36;
            }

            v13 = v19;
            if ([v15 mapKeyDataType] == 14)
            {
              v22 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v18, "count")}];
              v38[0] = _NSConcreteStackBlock;
              v38[1] = 3221225472;
              v38[2] = sub_100193888;
              v38[3] = &unk_100325690;
              v38[4] = v22;
              v38[5] = zone;
              [v18 enumerateKeysAndObjectsUsingBlock:v38];
LABEL_36:
              v12 = v37;
              v33 = v18;
              sub_10019E9C0(intoCopy, v15, v22);
              goto LABEL_37;
            }

            v32 = [v18 deepCopyWithZone:zone];
LABEL_35:
            v22 = v32;
            goto LABEL_36;
          }

          if (fieldType == 1)
          {
            v13 = v19;
            if (*(v15[1] + 30) - 13 > 3)
            {
LABEL_33:
              v32 = [v18 copyWithZone:zone];
              goto LABEL_35;
            }
          }

          else
          {
            v13 = v19;
            if ([v15 mapKeyDataType] != 14 || *(v15[1] + 30) - 13 > 3)
            {
              goto LABEL_33;
            }
          }

          v32 = [v18 mutableCopyWithZone:zone];
          goto LABEL_35;
        }

        v28 = *(v16 + 30);
        if ((v28 - 15) <= 1)
        {
          if (!sub_10019E86C(selfCopy, *(v16 + 20), *(v16 + 16)))
          {
            *(intoCopy[8] + *(v15[1] + 24)) = 0;
            goto LABEL_37;
          }

LABEL_27:
          v29 = sub_10019E33C(selfCopy, v15);
          v30 = [v29 copyWithZone:zone];
          v31 = v29;
          sub_10019E9C0(intoCopy, v15, v30);
          goto LABEL_37;
        }

        if ((v28 - 13) <= 3 && sub_10019E86C(selfCopy, *(v16 + 20), *(v16 + 16)))
        {
          goto LABEL_27;
        }

LABEL_37:
        v14 = v14 + 1;
      }

      while (v14 != v12);
      v12 = [v9 countByEnumeratingWithState:&v43 objects:v48 count:16];
    }

    while (v12);
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  descriptor = [(TransparencyGPBMessage *)self descriptor];
  v6 = [objc_msgSend(objc_msgSend(descriptor "messageClass")];
  [(TransparencyGPBMessage *)self copyFieldsInto:v6 zone:zone descriptor:descriptor];
  v6[1] = [(TransparencyGPBUnknownFieldSet *)self->unknownFields_ copyWithZone:zone];
  v6[2] = sub_10019396C(self->extensionMap_, zone);
  return v6;
}

- (void)internalClear:(BOOL)clear
{
  clearCopy = clear;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  descriptor = [(TransparencyGPBMessage *)self descriptor];
  v4 = descriptor[1];
  v5 = [v4 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v30;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v30 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v29 + 1) + 8 * i);
        v10 = v9[1];
        if ((*(v10 + 28) & 0xF02) != 0)
        {
          v11 = sub_10019E33C(self, *(*(&v29 + 1) + 8 * i));
          if (!v11)
          {
            continue;
          }

          v12 = v11;
          if ([v9 fieldType] == 1)
          {
            if (*(v9[1] + 30) - 13 <= 3)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v13 = &OBJC_IVAR___TransparencyGPBAutocreatedArray__autocreator;
                goto LABEL_24;
              }

LABEL_27:

              continue;
            }

            v13 = &OBJC_IVAR___TransparencyGPBInt32Array__autocreator;
LABEL_24:
            v16 = *v13;
          }

          else
          {
            if ([v9 mapKeyDataType] == 14 && *(v9[1] + 30) - 13 <= 3)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                goto LABEL_27;
              }

              v13 = &OBJC_IVAR___TransparencyGPBAutocreatedDictionary__autocreator;
              goto LABEL_24;
            }

            v16 = 8;
          }

          v17 = &v12[v16];
          if (*v17 == self)
          {
            *v17 = 0;
          }

          goto LABEL_27;
        }

        v14 = *(v10 + 30);
        if ((v14 - 15) <= 1)
        {
          sub_10019E8D4(self, *(*(&v29 + 1) + 8 * i));
          v15 = sub_10019E33C(self, v9);
LABEL_14:

          continue;
        }

        if ((v14 - 13) <= 3 && sub_10019E86C(self, *(v10 + 20), *(v10 + 16)))
        {
          v15 = sub_100193F68(self, v9);
          goto LABEL_14;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v6);
  }

  allValues = [(NSMutableDictionary *)self->autocreatedExtensionMap_ allValues];

  self->autocreatedExtensionMap_ = 0;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v19 = [allValues countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v26;
    do
    {
      for (j = 0; j != v20; j = j + 1)
      {
        if (*v26 != v21)
        {
          objc_enumerationMutation(allValues);
        }

        sub_100192F68(*(*(&v25 + 1) + 8 * j));
      }

      v20 = [allValues countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v20);
  }

  self->extensionMap_ = 0;
  self->unknownFields_ = 0;
  if (clearCopy)
  {
    bzero(self->messageStorage_, *(descriptor + 6));
  }
}

- (BOOL)isInitialized
{
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v3 = *([(TransparencyGPBMessage *)self descriptor]+ 1);
  v4 = [v3 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v4)
  {
    v5 = *v29;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v29 != v5)
      {
        objc_enumerationMutation(v3);
      }

      v7 = *(*(&v28 + 1) + 8 * v6);
      if ([v7 isRequired] && !sub_10019E86C(self, *(v7[1] + 20), *(v7[1] + 16)))
      {
        goto LABEL_34;
      }

      if (*(v7[1] + 30) - 15 > 1)
      {
        goto LABEL_31;
      }

      fieldType = [v7 fieldType];
      if (fieldType == 1)
      {
        v9 = sub_10019E33C(self, v7);
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v10 = [v9 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v10)
        {
          v11 = *v25;
LABEL_15:
          v12 = 0;
          while (1)
          {
            if (*v25 != v11)
            {
              objc_enumerationMutation(v9);
            }

            if (![*(*(&v24 + 1) + 8 * v12) isInitialized])
            {
              break;
            }

            if (v10 == ++v12)
            {
              v10 = [v9 countByEnumeratingWithState:&v24 objects:v32 count:16];
              if (v10)
              {
                goto LABEL_15;
              }

              goto LABEL_31;
            }
          }

LABEL_34:
          v17 = 0;
          return v17 & 1;
        }

        goto LABEL_31;
      }

      if (fieldType)
      {
        v13 = [v7 mapKeyDataType] == 14;
        v14 = sub_10019E33C(self, v7);
        if (!v13)
        {
          if (v14 && ![v14 isInitialized])
          {
            goto LABEL_34;
          }

          goto LABEL_31;
        }

        if (v14)
        {
          v15 = sub_1001745C8(v14);
          goto LABEL_27;
        }
      }

      else if ([v7 isRequired] || sub_10019E86C(self, *(v7[1] + 20), *(v7[1] + 16)))
      {
        v15 = [sub_10019F538(self v7)];
LABEL_27:
        if ((v15 & 1) == 0)
        {
          goto LABEL_34;
        }
      }

LABEL_31:
      if (++v6 == v4)
      {
        v4 = [v3 countByEnumeratingWithState:&v28 objects:v33 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 1;
  extensionMap = self->extensionMap_;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100194370;
  v19[3] = &unk_1003256B8;
  v19[4] = &v20;
  [(NSMutableDictionary *)extensionMap enumerateKeysAndObjectsUsingBlock:v19];
  v17 = *(v21 + 24);
  _Block_object_dispose(&v20, 8);
  return v17 & 1;
}

- (id)descriptor
{
  v2 = objc_opt_class();

  return [v2 descriptor];
}

- (id)data
{
  v3 = [NSMutableData dataWithLength:[(TransparencyGPBMessage *)self serializedSize]];
  v4 = [[TransparencyGPBCodedOutputStream alloc] initWithData:v3];
  [(TransparencyGPBMessage *)self writeToCodedOutputStream:v4];

  return v3;
}

- (id)delimitedData
{
  serializedSize = [(TransparencyGPBMessage *)self serializedSize];
  v4 = [NSMutableData dataWithLength:sub_10016FB50(serializedSize) + serializedSize];
  v5 = [[TransparencyGPBCodedOutputStream alloc] initWithData:v4];
  [(TransparencyGPBMessage *)self writeDelimitedToCodedOutputStream:v5];

  return v4;
}

- (void)writeToOutputStream:(id)stream
{
  v4 = [[TransparencyGPBCodedOutputStream alloc] initWithOutputStream:stream];
  [(TransparencyGPBMessage *)self writeToCodedOutputStream:v4];
}

- (void)writeToCodedOutputStream:(id)stream
{
  descriptor = [(TransparencyGPBMessage *)self descriptor];
  v6 = descriptor[1];
  v7 = [v6 count];
  extensionRanges = [descriptor extensionRanges];
  v19 = descriptor;
  extensionRangesCount = [descriptor extensionRangesCount];
  v10 = [-[NSMutableDictionary allKeys](self->extensionMap_ "allKeys")];
  if (v7)
  {
    v11 = 0;
  }

  else
  {
    v11 = extensionRangesCount == 0;
  }

  if (!v11)
  {
    v12 = v10;
    v13 = 0;
    v14 = 0;
    do
    {
      if (v14 == v7)
      {
        [(TransparencyGPBMessage *)self writeExtensionsToCodedOutputStream:stream range:extensionRanges[v13] sortedExtensions:v12];
        v14 = v7;
        ++v13;
      }

      else if (v13 == extensionRangesCount || (v15 = [v6 objectAtIndexedSubscript:v14], v16 = &extensionRanges[v13], *(v15[1] + 16) < *v16))
      {
        -[TransparencyGPBMessage writeField:toCodedOutputStream:](self, "writeField:toCodedOutputStream:", [v6 objectAtIndexedSubscript:v14++], stream);
      }

      else
      {
        ++v13;
        [(TransparencyGPBMessage *)self writeExtensionsToCodedOutputStream:stream range:*v16 sortedExtensions:v12];
      }
    }

    while (v14 < v7 || v13 < extensionRangesCount);
  }

  isWireFormat = [v19 isWireFormat];
  unknownFields = self->unknownFields_;
  if (isWireFormat)
  {

    [(TransparencyGPBUnknownFieldSet *)unknownFields writeAsMessageSetTo:stream];
  }

  else
  {

    [(TransparencyGPBUnknownFieldSet *)unknownFields writeToCodedOutputStream:stream];
  }
}

- (void)writeDelimitedToOutputStream:(id)stream
{
  v4 = [[TransparencyGPBCodedOutputStream alloc] initWithOutputStream:stream];
  [(TransparencyGPBMessage *)self writeDelimitedToCodedOutputStream:v4];
}

- (void)writeDelimitedToCodedOutputStream:(id)stream
{
  [stream writeRawVarintSizeTAs32:{-[TransparencyGPBMessage serializedSize](self, "serializedSize")}];

  [(TransparencyGPBMessage *)self writeToCodedOutputStream:stream];
}

- (void)writeField:(id)field toCodedOutputStream:(id)stream
{
  fieldType = [field fieldType];
  if (fieldType || sub_10019E86C(self, *(*(field + 1) + 20), *(*(field + 1) + 16)))
  {
    v8 = *(field + 1);
    v9 = *(v8 + 16);
    switch(*(v8 + 30))
    {
      case 0:
        if (fieldType == 1)
        {
          if ([field isPackable])
          {
            v10 = sub_100173318(field);
          }

          else
          {
            v10 = 0;
          }

          v55 = sub_10019E33C(self, field);

          [stream writeBoolArray:v9 values:v55 tag:v10];
        }

        else
        {
          if (fieldType)
          {
            goto LABEL_134;
          }

          v38 = sub_10019EE84(self, field);

          [stream writeBool:v9 value:v38];
        }

        break;
      case 1:
        if (fieldType == 1)
        {
          if ([field isPackable])
          {
            v22 = sub_100173318(field);
          }

          else
          {
            v22 = 0;
          }

          v56 = sub_10019E33C(self, field);

          [stream writeFixed32Array:v9 values:v56 tag:v22];
        }

        else
        {
          if (fieldType)
          {
            goto LABEL_134;
          }

          v39 = sub_10019EC48(self, field);

          [stream writeFixed32:v9 value:v39];
        }

        break;
      case 2:
        if (fieldType == 1)
        {
          if ([field isPackable])
          {
            v18 = sub_100173318(field);
          }

          else
          {
            v18 = 0;
          }

          v52 = sub_10019E33C(self, field);

          [stream writeSFixed32Array:v9 values:v52 tag:v18];
        }

        else
        {
          if (fieldType)
          {
            goto LABEL_134;
          }

          v33 = sub_10019EC48(self, field);

          [stream writeSFixed32:v9 value:{v33, v34}];
        }

        break;
      case 3:
        if (fieldType == 1)
        {
          if ([field isPackable])
          {
            v20 = sub_100173318(field);
          }

          else
          {
            v20 = 0;
          }

          v53 = sub_10019E33C(self, field);

          [stream writeFloatArray:v9 values:v53 tag:v20];
        }

        else
        {
          if (fieldType)
          {
            goto LABEL_134;
          }

          *&v35 = sub_10019F200(self, field);

          [stream writeFloat:v9 value:v35];
        }

        break;
      case 4:
        if (fieldType == 1)
        {
          if ([field isPackable])
          {
            v15 = sub_100173318(field);
          }

          else
          {
            v15 = 0;
          }

          v49 = sub_10019E33C(self, field);

          [stream writeFixed64Array:v9 values:v49 tag:v15];
        }

        else
        {
          if (fieldType)
          {
            goto LABEL_134;
          }

          v29 = sub_10019F084(self, field);

          [stream writeFixed64:v9 value:v29];
        }

        break;
      case 5:
        if (fieldType == 1)
        {
          if ([field isPackable])
          {
            v24 = sub_100173318(field);
          }

          else
          {
            v24 = 0;
          }

          v58 = sub_10019E33C(self, field);

          [stream writeSFixed64Array:v9 values:v58 tag:v24];
        }

        else
        {
          if (fieldType)
          {
            goto LABEL_134;
          }

          v41 = sub_10019F084(self, field);

          [stream writeSFixed64:v9 value:{v41, v42}];
        }

        break;
      case 6:
        if (fieldType == 1)
        {
          if ([field isPackable])
          {
            v25 = sub_100173318(field);
          }

          else
          {
            v25 = 0;
          }

          v59 = sub_10019E33C(self, field);

          [stream writeDoubleArray:v9 values:v59 tag:v25];
        }

        else
        {
          if (fieldType)
          {
            goto LABEL_134;
          }

          v45 = sub_10019F39C(self, field);

          [stream writeDouble:v9 value:v45];
        }

        break;
      case 7:
        if (fieldType == 1)
        {
          if ([field isPackable])
          {
            v21 = sub_100173318(field);
          }

          else
          {
            v21 = 0;
          }

          v54 = sub_10019E33C(self, field);

          [stream writeInt32Array:v9 values:v54 tag:v21];
        }

        else
        {
          if (fieldType)
          {
            goto LABEL_134;
          }

          v36 = sub_10019EC48(self, field);

          [stream writeInt32:v9 value:{v36, v37}];
        }

        break;
      case 8:
        if (fieldType == 1)
        {
          if ([field isPackable])
          {
            v27 = sub_100173318(field);
          }

          else
          {
            v27 = 0;
          }

          v61 = sub_10019E33C(self, field);

          [stream writeInt64Array:v9 values:v61 tag:v27];
        }

        else
        {
          if (fieldType)
          {
            goto LABEL_134;
          }

          v62 = sub_10019F084(self, field);

          [stream writeInt64:v9 value:{v62, v63}];
        }

        break;
      case 9:
        if (fieldType == 1)
        {
          if ([field isPackable])
          {
            v17 = sub_100173318(field);
          }

          else
          {
            v17 = 0;
          }

          v51 = sub_10019E33C(self, field);

          [stream writeSInt32Array:v9 values:v51 tag:v17];
        }

        else
        {
          if (fieldType)
          {
            goto LABEL_134;
          }

          v31 = sub_10019EC48(self, field);

          [stream writeSInt32:v9 value:{v31, v32}];
        }

        break;
      case 0xA:
        if (fieldType == 1)
        {
          if ([field isPackable])
          {
            v26 = sub_100173318(field);
          }

          else
          {
            v26 = 0;
          }

          v60 = sub_10019E33C(self, field);

          [stream writeSInt64Array:v9 values:v60 tag:v26];
        }

        else
        {
          if (fieldType)
          {
            goto LABEL_134;
          }

          v46 = sub_10019F084(self, field);

          [stream writeSInt64:v9 value:{v46, v47}];
        }

        break;
      case 0xB:
        if (fieldType == 1)
        {
          if ([field isPackable])
          {
            v14 = sub_100173318(field);
          }

          else
          {
            v14 = 0;
          }

          v48 = sub_10019E33C(self, field);

          [stream writeUInt32Array:v9 values:v48 tag:v14];
        }

        else
        {
          if (fieldType)
          {
            goto LABEL_134;
          }

          v28 = sub_10019EC48(self, field);

          [stream writeUInt32:v9 value:v28];
        }

        break;
      case 0xC:
        if (fieldType == 1)
        {
          if ([field isPackable])
          {
            v16 = sub_100173318(field);
          }

          else
          {
            v16 = 0;
          }

          v50 = sub_10019E33C(self, field);

          [stream writeUInt64Array:v9 values:v50 tag:v16];
        }

        else
        {
          if (fieldType)
          {
            goto LABEL_134;
          }

          v30 = sub_10019F084(self, field);

          [stream writeUInt64:v9 value:v30];
        }

        break;
      case 0xD:
        v12 = sub_10019E33C(self, field);
        if (fieldType == 1)
        {

          [stream writeBytesArray:v9 values:v12];
        }

        else
        {
          if (fieldType)
          {
            goto LABEL_120;
          }

          [stream writeBytes:v9 value:v12];
        }

        break;
      case 0xE:
        v12 = sub_10019E33C(self, field);
        if (fieldType == 1)
        {

          [stream writeStringArray:v9 values:{v12, v13}];
        }

        else
        {
          if (fieldType)
          {
            goto LABEL_120;
          }

          [stream writeString:v9 value:v12];
        }

        break;
      case 0xF:
        v12 = sub_10019E33C(self, field);
        if (fieldType == 1)
        {

          [stream writeMessageArray:v9 values:{v12, v19}];
        }

        else
        {
          if (fieldType)
          {
            goto LABEL_120;
          }

          [stream writeMessage:v9 value:v12];
        }

        break;
      case 0x10:
        v12 = sub_10019E33C(self, field);
        if (fieldType == 1)
        {

          [stream writeGroupArray:v9 values:{v12, v11}];
        }

        else if (fieldType)
        {
LABEL_120:
          if ([field mapKeyDataType] != 14)
          {
            v44 = v12;
            goto LABEL_135;
          }

          sub_10017449C(stream, v12, field);
        }

        else
        {

          [stream writeGroup:v9 value:v12];
        }

        break;
      case 0x11:
        if (fieldType == 1)
        {
          if ([field isPackable])
          {
            v23 = sub_100173318(field);
          }

          else
          {
            v23 = 0;
          }

          v57 = sub_10019E33C(self, field);

          [stream writeEnumArray:v9 values:v57 tag:v23];
        }

        else if (fieldType)
        {
LABEL_134:
          v44 = sub_10019E33C(self, field);
LABEL_135:

          [v44 writeToCodedOutputStream:stream asField:{field, v43}];
        }

        else
        {
          v40 = sub_10019EC48(self, field);

          [stream writeEnum:v9 value:v40];
        }

        break;
      default:
        return;
    }
  }
}

- (id)getExtension:(id)extension
{
  sub_10019563C(self, extension);
  v5 = [(NSMutableDictionary *)self->extensionMap_ objectForKey:extension];
  if (v5)
  {
    return v5;
  }

  if ([extension isRepeated])
  {
    return 0;
  }

  if (*(*(extension + 1) + 44) - 15 < 2)
  {
    os_unfair_lock_lock(&self->readOnlyLock_);
    v5 = [(NSMutableDictionary *)self->autocreatedExtensionMap_ objectForKey:extension];
    if (!v5)
    {
      v5 = objc_alloc_init([extension msgClass]);
      v5[4] = self;
      v5[6] = extension;
      autocreatedExtensionMap = self->autocreatedExtensionMap_;
      if (!autocreatedExtensionMap)
      {
        autocreatedExtensionMap = objc_alloc_init(NSMutableDictionary);
        self->autocreatedExtensionMap_ = autocreatedExtensionMap;
      }

      [(NSMutableDictionary *)autocreatedExtensionMap setObject:v5 forKey:extension];
    }

    os_unfair_lock_unlock(&self->readOnlyLock_);
    return v5;
  }

  return [extension defaultValue];
}

- (void)writeExtensionsToCodedOutputStream:(id)stream range:(TransparencyGPBExtensionRange)range sortedExtensions:(id)extensions
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = [extensions countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(extensions);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        fieldNumber = [v13 fieldNumber];
        if (fieldNumber >= range.var0)
        {
          if (fieldNumber >= range.var1)
          {
            return;
          }

          sub_100191810(v13, [(NSMutableDictionary *)self->extensionMap_ objectForKey:v13], stream);
        }
      }

      v10 = [extensions countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }
}

- (void)setExtension:(id)extension value:(id)value
{
  if (value)
  {
    sub_10019563C(self, extension);
    if ([extension isRepeated])
    {
      [NSException raise:NSInvalidArgumentException format:@"Must call addExtension() for repeated types."];
    }

    extensionMap = self->extensionMap_;
    if (!extensionMap)
    {
      extensionMap = objc_alloc_init(NSMutableDictionary);
      self->extensionMap_ = extensionMap;
    }

    [(NSMutableDictionary *)extensionMap setObject:value forKey:extension];
    if (*(*(extension + 1) + 44) - 15 <= 1 && ([extension isRepeated] & 1) == 0)
    {
      v8 = [(NSMutableDictionary *)self->autocreatedExtensionMap_ objectForKey:extension];
      [(NSMutableDictionary *)self->autocreatedExtensionMap_ removeObjectForKey:extension];
      sub_100192F68(v8);
    }

    sub_100192C54(self);
  }

  else
  {

    [(TransparencyGPBMessage *)self clearExtension:?];
  }
}

- (void)addExtension:(id)extension value:(id)value
{
  sub_10019563C(self, extension);
  if (([extension isRepeated] & 1) == 0)
  {
    [NSException raise:NSInvalidArgumentException format:@"Must call setExtension() for singular types."];
  }

  extensionMap = self->extensionMap_;
  if (!extensionMap)
  {
    extensionMap = objc_alloc_init(NSMutableDictionary);
    self->extensionMap_ = extensionMap;
  }

  v8 = [(NSMutableDictionary *)extensionMap objectForKey:extension];
  if (!v8)
  {
    v8 = +[NSMutableArray array];
    [(NSMutableDictionary *)self->extensionMap_ setObject:v8 forKey:extension];
  }

  [v8 addObject:value];

  sub_100192C54(self);
}

- (void)setExtension:(id)extension index:(unint64_t)index value:(id)value
{
  sub_10019563C(self, extension);
  if (([extension isRepeated] & 1) == 0)
  {
    [NSException raise:NSInvalidArgumentException format:@"Must call setExtension() for singular types."];
  }

  extensionMap = self->extensionMap_;
  if (!extensionMap)
  {
    extensionMap = objc_alloc_init(NSMutableDictionary);
    self->extensionMap_ = extensionMap;
  }

  [-[NSMutableDictionary objectForKey:](extensionMap objectForKey:{extension), "replaceObjectAtIndex:withObject:", index, value}];

  sub_100192C54(self);
}

- (void)clearExtension:(id)extension
{
  sub_10019563C(self, extension);
  if ([(NSMutableDictionary *)self->extensionMap_ objectForKey:extension])
  {
    [(NSMutableDictionary *)self->extensionMap_ removeObjectForKey:extension];

    sub_100192C54(self);
  }
}

- (void)mergeFromData:(id)data extensionRegistry:(id)registry
{
  v6 = [[TransparencyGPBCodedInputStream alloc] initWithData:data];
  [(TransparencyGPBMessage *)self mergeFromCodedInputStream:v6 extensionRegistry:registry];
  [(TransparencyGPBCodedInputStream *)v6 checkLastTagWas:0];
}

- (void)mergeDelimitedFromCodedInputStream:(id)stream extensionRegistry:(id)registry
{
  if (!sub_10016D3C8(stream + 1))
  {
    v7 = sub_10016D654(stream + 1);
    if (v7)
    {
      v8 = v7;
      [(TransparencyGPBMessage *)self mergeFromData:v7 extensionRegistry:registry];
    }
  }
}

+ (id)parseFromData:(id)data extensionRegistry:(id)registry error:(id *)error
{
  v5 = [[self alloc] initWithData:data extensionRegistry:registry error:error];

  return v5;
}

+ (id)parseFromCodedInputStream:(id)stream extensionRegistry:(id)registry error:(id *)error
{
  v5 = [[self alloc] initWithCodedInputStream:stream extensionRegistry:registry error:error];

  return v5;
}

+ (id)parseDelimitedFromCodedInputStream:(id)stream extensionRegistry:(id)registry error:(id *)error
{
  v8 = objc_alloc_init(self);
  [v8 mergeDelimitedFromCodedInputStream:stream extensionRegistry:registry];
  if (error)
  {
    *error = 0;
  }

  return v8;
}

- (void)setUnknownFields:(id)fields
{
  unknownFields = self->unknownFields_;
  if (unknownFields != fields)
  {

    self->unknownFields_ = [fields copy];

    sub_100192C54(self);
  }
}

- (void)parseMessageSet:(id)set extensionRegistry:(id)registry
{
  v7 = sub_10016D334(set + 8);
  if (v7)
  {
    v8 = v7;
    v9 = sub_1001A18B4(2, 0);
    v10 = 0;
    v11 = 0;
    v12 = 0;
    do
    {
      if (v8 == v9)
      {
        v10 = sub_10016D23C(set + 1);
        if (v10)
        {
          v12 = [registry extensionForDescriptor:-[TransparencyGPBMessage descriptor](self fieldNumber:{"descriptor"), v10}];
        }
      }

      else if (v8 == sub_1001A18B4(3, 2))
      {
        v11 = sub_10016D654(set + 1);
      }

      else if (![set skipField:v8])
      {
        break;
      }

      v8 = sub_10016D334(set + 8);
    }

    while (v8);
  }

  else
  {
    v12 = 0;
    v11 = 0;
    v10 = 0;
  }

  [set checkLastTagWas:{sub_1001A18B4(1, 4)}];
  if (v11 && v10)
  {
    if (v12)
    {
      v15 = [[TransparencyGPBCodedInputStream alloc] initWithData:v11];
      sub_100196008(v12, [v12 isPackable], v15, registry, self);
    }

    else
    {
      v13 = sub_1001961CC(self);
      v14 = [NSData dataWithData:v11];

      [v13 mergeMessageSetMessage:v10 data:v14];
    }
  }
}

- (void)mergeFromCodedInputStream:(id)stream extensionRegistry:(id)registry
{
  v6 = *([(TransparencyGPBMessage *)self descriptor]+ 1);
  v7 = [v6 count];
  v8 = sub_10016D334(stream + 8);
  if (!v8)
  {
    return;
  }

  v9 = v8;
  v10 = 0;
  do
  {
    if (!v7)
    {
LABEL_16:
      if ([(TransparencyGPBMessage *)self parseUnknownField:stream extensionRegistry:registry tag:v9])
      {
        goto LABEL_28;
      }

      return;
    }

    v11 = v7;
    do
    {
      if (v10 >= v7)
      {
        v10 = 0;
      }

      v12 = [v6 objectAtIndexedSubscript:v10];
      if (sub_100173318(v12) == v9)
      {
        fieldType = [v12 fieldType];
        if (fieldType == 1)
        {
          if (![v12 isPackable])
          {
            goto LABEL_27;
          }

LABEL_23:
          sub_1001968F4(self, v12, stream);
        }

        else
        {
          if (fieldType)
          {
            [stream readMapEntry:sub_100196E30(self extensionRegistry:v12) field:registry parentMessage:{v12, self}];
            goto LABEL_28;
          }

          v15 = v12[1];
          switch(*(v15 + 30))
          {
            case 0:
              v16 = sub_10016D314(stream + 1);
              sub_10019EF40(self, v12, v16);
              break;
            case 1:
              v18 = sub_10016D290(stream + 1);
              goto LABEL_46;
            case 2:
              v20 = sub_10016D290(stream + 1);
              goto LABEL_43;
            case 3:
              v21 = sub_10016D174(stream + 1);
              sub_10019F2A0(self, v12, v21);
              break;
            case 4:
              v19 = sub_10016D254(stream + 1);
              goto LABEL_36;
            case 5:
              v19 = sub_10016D254(stream + 1);
              goto LABEL_36;
            case 6:
              v29 = sub_10016D138(stream + 1);
              sub_10019F43C(self, v12, v29);
              break;
            case 7:
              v20 = sub_10016D23C(stream + 1);
              goto LABEL_43;
            case 8:
              v19 = sub_10016D1B0(stream + 8);
              goto LABEL_36;
            case 9:
              v20 = sub_10016D2CC(stream + 1);
LABEL_43:
              v22 = v20;
              selfCopy4 = self;
              v24 = v12;
              goto LABEL_44;
            case 0xA:
              v19 = sub_10016D2F0(stream + 1);
              goto LABEL_36;
            case 0xB:
              v18 = sub_10016D23C(stream + 1);
LABEL_46:
              sub_10019ED84(self, v12, v18);
              break;
            case 0xC:
              v19 = sub_10016D1B0(stream + 8);
LABEL_36:
              sub_10019F108(self, v12, v19);
              break;
            case 0xD:
              v17 = sub_10016D5E8(stream + 1);
              goto LABEL_52;
            case 0xE:
              v17 = sub_10016D4E4(stream + 1);
LABEL_52:
              v26 = v17;
              selfCopy3 = self;
              v28 = v12;
              goto LABEL_60;
            case 0xF:
              if (sub_10019E86C(self, *(v15 + 20), *(v15 + 16)))
              {
                [stream readMessage:sub_10019E33C(self extensionRegistry:{v12), registry}];
                break;
              }

              v30 = objc_alloc_init([v12 msgClass]);
              [stream readMessage:v30 extensionRegistry:registry];
              goto LABEL_59;
            case 0x10:
              if (sub_10019E86C(self, *(v15 + 20), *(v15 + 16)))
              {
                [stream readGroup:*(v12[1] + 16) message:sub_10019E33C(self extensionRegistry:{v12), registry}];
              }

              else
              {
                v30 = objc_alloc_init([v12 msgClass]);
                [stream readGroup:*(v12[1] + 16) message:v30 extensionRegistry:registry];
LABEL_59:
                selfCopy3 = self;
                v28 = v12;
                v26 = v30;
LABEL_60:
                sub_10019E9C0(selfCopy3, v28, v26);
              }

              break;
            case 0x11:
              v25 = sub_10016D23C(stream + 1);
              if ((*(v12[1] + 28) & 0x1000) != 0 && ![v12 isValidEnumValue:v25])
              {
                [sub_1001961CC(self) mergeVarintField:*(v12[1] + 16) value:v25];
              }

              else
              {
                selfCopy4 = self;
                v24 = v12;
                v22 = v25;
LABEL_44:
                sub_10019ED84(selfCopy4, v24, v22);
              }

              break;
            default:
              break;
          }
        }

        ++v10;
        goto LABEL_28;
      }

      ++v10;
      --v11;
    }

    while (v11);
    v13 = v7;
    while (1)
    {
      if (v10 >= v7)
      {
        v10 = 0;
      }

      v12 = [v6 objectAtIndexedSubscript:v10];
      if ([v12 fieldType] == 1 && *(v12[1] + 30) - 13 >= 4 && sub_100173374(v12) == v9)
      {
        break;
      }

      ++v10;
      if (!--v13)
      {
        goto LABEL_16;
      }
    }

    if (([v12 isPackable] & 1) == 0)
    {
      goto LABEL_23;
    }

LABEL_27:
    sub_100196AEC(self, v12, stream, registry);
LABEL_28:
    v9 = sub_10016D334(stream + 8);
  }

  while (v9);
}

- (void)mergeFrom:(id)from
{
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  if (([v5 isSubclassOfClass:v6] & 1) == 0 && (objc_msgSend(v6, "isSubclassOfClass:", v5) & 1) == 0)
  {
    [NSException raise:NSInvalidArgumentException format:@"Classes must match %@ != %@", v5, v6];
  }

  sub_100192C54(self);
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v7 = *([objc_opt_class() descriptor] + 1);
  v8 = [v7 countByEnumeratingWithState:&v64 objects:v70 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v65;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v65 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v64 + 1) + 8 * i);
        fieldType = [v12 fieldType];
        if (fieldType == 1)
        {
          v18 = sub_10019E33C(from, v12);
          if (v18)
          {
            v19 = v18;
            v20 = *(v12[1] + 30);
            if ((v20 - 13) > 3)
            {
              v26 = sub_10019751C(self, v12);
              if (v20 == 17)
              {
                [v26 addRawValuesFromArray:v19];
              }

              else
              {
                [v26 addValuesFromArray:v19];
              }
            }

            else
            {
              [sub_10019751C(self v12)];
            }
          }
        }

        else if (fieldType)
        {
          v21 = sub_10019E33C(from, v12);
          if (!v21)
          {
            continue;
          }

          v22 = v21;
          mapKeyDataType = [v12 mapKeyDataType];
          v24 = *(v12[1] + 30);
          if (mapKeyDataType - 13 > 3 || (v24 - 13) > 3)
          {
            v27 = sub_100196E30(self, v12);
            if (v24 == 17)
            {
              [v27 addRawEntriesFromDictionary:v22];
              continue;
            }
          }

          else
          {
            v27 = sub_100196E30(self, v12);
          }

          [v27 addEntriesFromDictionary:v22];
        }

        else
        {
          v14 = v12[1];
          v16 = *(v14 + 16);
          v15 = *(v14 + 20);
          if (sub_10019E86C(from, v15, v16))
          {
            switch(*(v12[1] + 30))
            {
              case 0:
                v30 = sub_10019EE84(from, v12);
                sub_10019EF40(self, v12, v30);
                break;
              case 1:
              case 2:
              case 7:
              case 9:
              case 0xB:
              case 0x11:
                v17 = sub_10019EC48(from, v12);
                sub_10019ED84(self, v12, v17);
                break;
              case 3:
                v31 = sub_10019F200(from, v12);
                sub_10019F2A0(self, v12, v31);
                break;
              case 4:
              case 5:
              case 8:
              case 0xA:
              case 0xC:
                v28 = sub_10019F084(from, v12);
                sub_10019F108(self, v12, v28);
                break;
              case 6:
                v32 = sub_10019F39C(from, v12);
                sub_10019F43C(self, v12, v32);
                break;
              case 0xD:
              case 0xE:
                v29 = sub_10019E33C(from, v12);
                sub_10019E97C(self, v12, v29);
                break;
              case 0xF:
              case 0x10:
                obj = sub_10019E33C(from, v12);
                if (sub_10019E86C(self, v15, v16))
                {
                  [sub_10019E33C(self v12)];
                }

                else
                {
                  sub_10019E9C0(self, v12, [obj copy]);
                }

                break;
              default:
                continue;
            }
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v64 objects:v70 count:16];
    }

    while (v9);
  }

  unknownFields = self->unknownFields_;
  unknownFields = [from unknownFields];
  if (unknownFields)
  {
    [(TransparencyGPBUnknownFieldSet *)unknownFields mergeUnknownFields:unknownFields];
  }

  else
  {
    [(TransparencyGPBMessage *)self setUnknownFields:unknownFields];
  }

  if ([*(from + 2) count])
  {
    if (!self->extensionMap_)
    {
      v50 = *(from + 2);
      v51 = NSZoneFromPointer(self);
      self->extensionMap_ = sub_10019396C(v50, v51);
      return;
    }

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    obja = *(from + 2);
    v35 = [obja countByEnumeratingWithState:&v60 objects:v69 count:16];
    if (!v35)
    {
      return;
    }

    v36 = v35;
    v37 = *v61;
    v52 = *v61;
    do
    {
      v38 = 0;
      v53 = v36;
      do
      {
        if (*v61 != v37)
        {
          objc_enumerationMutation(obja);
        }

        v39 = *(*(&v60 + 1) + 8 * v38);
        v40 = [*(from + 2) objectForKey:v39];
        v41 = [(NSMutableDictionary *)self->extensionMap_ objectForKey:v39];
        v42 = *(v39[1] + 44) - 15;
        if ([v39 isRepeated])
        {
          if (!v41)
          {
            v41 = objc_alloc_init(NSMutableArray);
            [(NSMutableDictionary *)self->extensionMap_ setObject:v41 forKey:v39];
          }

          if (v42 > 1)
          {
            [v41 addObjectsFromArray:v40];
            goto LABEL_69;
          }

          v58 = 0u;
          v59 = 0u;
          v56 = 0u;
          v57 = 0u;
          v43 = [v40 countByEnumeratingWithState:&v56 objects:v68 count:16];
          if (v43)
          {
            v44 = v43;
            v45 = *v57;
            do
            {
              for (j = 0; j != v44; j = j + 1)
              {
                if (*v57 != v45)
                {
                  objc_enumerationMutation(v40);
                }

                v47 = [*(*(&v56 + 1) + 8 * j) copy];
                [v41 addObject:v47];
              }

              v44 = [v40 countByEnumeratingWithState:&v56 objects:v68 count:16];
            }

            while (v44);
          }
        }

        else
        {
          if (v42 > 1)
          {
            [(NSMutableDictionary *)self->extensionMap_ setObject:v40 forKey:v39];
            goto LABEL_69;
          }

          if (v41)
          {
            [v41 mergeFrom:v40];
          }

          else
          {
            v48 = [v40 copy];
            [(NSMutableDictionary *)self->extensionMap_ setObject:v48 forKey:v39];
          }
        }

        v37 = v52;
        v36 = v53;
        if (([v39 isRepeated] & 1) == 0)
        {
          v49 = [(NSMutableDictionary *)self->autocreatedExtensionMap_ objectForKey:v39];
          [(NSMutableDictionary *)self->autocreatedExtensionMap_ removeObjectForKey:v39];
          sub_100192F68(v49);
        }

LABEL_69:
        v38 = v38 + 1;
      }

      while (v38 != v36);
      v36 = [obja countByEnumeratingWithState:&v60 objects:v69 count:16];
    }

    while (v36);
  }
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    goto LABEL_43;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (v5 = [objc_opt_class() descriptor], objc_msgSend(objc_opt_class(), "descriptor") != v5))
  {
LABEL_4:
    LOBYTE(v6) = 0;
    return v6;
  }

  v30 = *(equal + 8);
  messageStorage = self->messageStorage_;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v5[1];
  v7 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (!v7)
  {
    goto LABEL_37;
  }

  v8 = v7;
  v9 = *v34;
  do
  {
    v10 = 0;
    do
    {
      if (*v34 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v33 + 1) + 8 * v10);
      v12 = *(v11 + 8);
      if ((*(v12 + 28) & 0xF02) != 0)
      {
        v13 = sub_10019E33C(self, *(*(&v33 + 1) + 8 * v10));
        v14 = sub_10019E33C(equal, v11);
        if (![v13 count] && !objc_msgSend(v14, "count"))
        {
          goto LABEL_29;
        }

        v15 = v13;
        v16 = v14;
        goto LABEL_14;
      }

      v18 = *(v12 + 16);
      v17 = *(v12 + 20);
      v19 = sub_10019E86C(self, v17, v18);
      v20 = sub_10019E86C(equal, v17, v18);
      if (v19)
      {
        v21 = v20 == 0;
      }

      else
      {
        v21 = 1;
      }

      if (v21)
      {
        if (v19 != v20)
        {
          goto LABEL_4;
        }

        goto LABEL_29;
      }

      v22 = *(v11 + 8);
      v23 = *(v22 + 30);
      v24 = *(v22 + 24);
      if (v23 <= 0x11)
      {
        v25 = 1 << v23;
        if (((1 << v23) & 0x20A8E) != 0)
        {
          if (*(messageStorage + v24) != *(v30 + v24))
          {
            goto LABEL_4;
          }

          goto LABEL_29;
        }

        if ((v25 & 0x1570) != 0)
        {
          if (*(messageStorage + v24) != *(v30 + v24))
          {
            goto LABEL_4;
          }

          goto LABEL_29;
        }

        if ((v25 & 0x1E000) != 0)
        {
          v15 = *(messageStorage + v24);
          v16 = *(v30 + v24);
LABEL_14:
          if (([v15 isEqual:v16] & 1) == 0)
          {
            goto LABEL_4;
          }

          goto LABEL_29;
        }
      }

      if (!v23)
      {
        v26 = sub_10019E86C(self, v24, 0);
        if (v26 != sub_10019E86C(equal, v24, 0))
        {
          goto LABEL_4;
        }
      }

LABEL_29:
      v10 = v10 + 1;
    }

    while (v8 != v10);
    v27 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    v8 = v27;
  }

  while (v27);
LABEL_37:
  if (!-[NSMutableDictionary count](self->extensionMap_, "count") && ![*(equal + 2) count] || (v6 = -[NSMutableDictionary isEqual:](self->extensionMap_, "isEqual:", *(equal + 2))) != 0)
  {
    if ((v28 = *(equal + 1), !-[TransparencyGPBUnknownFieldSet countOfFields](self->unknownFields_, "countOfFields")) && ![v28 countOfFields] || (v6 = -[TransparencyGPBUnknownFieldSet isEqual:](self->unknownFields_, "isEqual:", v28)) != 0)
    {
LABEL_43:
      LOBYTE(v6) = 1;
    }
  }

  return v6;
}

- (unint64_t)hash
{
  descriptor = [objc_opt_class() descriptor];
  messageStorage = self->messageStorage_;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = *(descriptor + 8);
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        v10 = *(v9 + 8);
        if ((*(v10 + 28) & 0xF02) != 0)
        {
          v11 = [sub_10019E33C(self *(*(&v20 + 1) + 8 * i))];
          if (v11)
          {
            descriptor = v11 + 361 * descriptor + 19 * *(*(v9 + 8) + 16);
          }
        }

        else
        {
          if (!sub_10019E86C(self, *(v10 + 20), *(v10 + 16)))
          {
            continue;
          }

          v12 = *(v9 + 8);
          v13 = *(v12 + 30);
          v14 = *(v12 + 24);
          if (v13 > 8)
          {
            if (*(v12 + 30) <= 0xCu)
            {
              if (*(v12 + 30) > 0xAu)
              {
                if (v13 == 11)
                {
LABEL_32:
                  v17 = *(messageStorage + v14);
                }

                else
                {
LABEL_28:
                  v17 = *(messageStorage + v14);
                }

                descriptor = v17 + 19 * descriptor;
                continue;
              }

              if (v13 == 9)
              {
                goto LABEL_32;
              }

              if (v13 == 10)
              {
                goto LABEL_28;
              }
            }

            else
            {
              if (v13 - 13 < 2)
              {
                descriptor2 = [*(messageStorage + v14) hash];
                goto LABEL_30;
              }

              if (v13 - 15 < 2)
              {
                descriptor = *(v12 + 16) + 19 * descriptor;
                v15 = *(messageStorage + v14);
                descriptor2 = [objc_opt_class() descriptor];
LABEL_30:
                descriptor = descriptor2 + 19 * descriptor;
                continue;
              }

              if (v13 == 17)
              {
                goto LABEL_32;
              }
            }
          }

          else if (*(v12 + 30) <= 3u)
          {
            if (v13 - 1 < 3)
            {
              goto LABEL_32;
            }

            if (!*(v12 + 30))
            {
              descriptor = 19 * descriptor + sub_10019E86C(self, v14, 0);
            }
          }

          else
          {
            if (v13 - 4 < 3)
            {
              goto LABEL_28;
            }

            if (v13 == 7)
            {
              goto LABEL_32;
            }

            if (v13 == 8)
            {
              goto LABEL_28;
            }
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v6);
  }

  return descriptor;
}

- (unint64_t)serializedSize
{
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  descriptor = [objc_opt_class() descriptor];
  v3 = descriptor[1];
  v4 = 0;
  v5 = [v3 countByEnumeratingWithState:&v100 objects:v109 count:16];
  if (!v5)
  {
    goto LABEL_85;
  }

  v6 = *v101;
  v59 = *v101;
  v60 = v3;
  do
  {
    v7 = 0;
    v61 = v5;
    do
    {
      if (*v101 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v100 + 1) + 8 * v7);
      fieldType = [v8 fieldType];
      v10 = v8[1];
      v11 = *(v10 + 30);
      if (fieldType == 1)
      {
        v14 = sub_10019E33C(self, v8);
        v15 = [v14 count];
        if (v15)
        {
          v96 = 0;
          v97 = &v96;
          v98 = 0x2020000000;
          v99 = 0;
          switch(v11)
          {
            case 0:
              v95[0] = _NSConcreteStackBlock;
              v95[1] = 3221225472;
              v95[2] = sub_10019893C;
              v95[3] = &unk_100324FF0;
              v95[4] = &v96;
              [v14 enumerateValuesWithBlock:v95];
              break;
            case 1:
              v94[0] = _NSConcreteStackBlock;
              v94[1] = 3221225472;
              v94[2] = sub_100198978;
              v94[3] = &unk_100324F78;
              v94[4] = &v96;
              [v14 enumerateValuesWithBlock:v94];
              break;
            case 2:
              v93[0] = _NSConcreteStackBlock;
              v93[1] = 3221225472;
              v93[2] = sub_1001989B4;
              v93[3] = &unk_100324F00;
              v93[4] = &v96;
              [v14 enumerateValuesWithBlock:v93];
              break;
            case 3:
              v92[0] = _NSConcreteStackBlock;
              v92[1] = 3221225472;
              v92[2] = sub_1001989F0;
              v92[3] = &unk_100324D98;
              v92[4] = &v96;
              [v14 enumerateValuesWithBlock:v92];
              break;
            case 4:
              v91[0] = _NSConcreteStackBlock;
              v91[1] = 3221225472;
              v91[2] = sub_100198A28;
              v91[3] = &unk_100324E10;
              v91[4] = &v96;
              [v14 enumerateValuesWithBlock:v91];
              break;
            case 5:
              v90[0] = _NSConcreteStackBlock;
              v90[1] = 3221225472;
              v90[2] = sub_100198A64;
              v90[3] = &unk_100324E88;
              v90[4] = &v96;
              [v14 enumerateValuesWithBlock:v90];
              break;
            case 6:
              v89[0] = _NSConcreteStackBlock;
              v89[1] = 3221225472;
              v89[2] = sub_100198AA0;
              v89[3] = &unk_100324D20;
              v89[4] = &v96;
              [v14 enumerateValuesWithBlock:v89];
              break;
            case 7:
              v88[0] = _NSConcreteStackBlock;
              v88[1] = 3221225472;
              v88[2] = sub_100198AD8;
              v88[3] = &unk_100324F00;
              v88[4] = &v96;
              [v14 enumerateValuesWithBlock:v88];
              break;
            case 8:
              v87[0] = _NSConcreteStackBlock;
              v87[1] = 3221225472;
              v87[2] = sub_100198B14;
              v87[3] = &unk_100324E88;
              v87[4] = &v96;
              [v14 enumerateValuesWithBlock:v87];
              break;
            case 9:
              v86[0] = _NSConcreteStackBlock;
              v86[1] = 3221225472;
              v86[2] = sub_100198B50;
              v86[3] = &unk_100324F00;
              v86[4] = &v96;
              [v14 enumerateValuesWithBlock:v86];
              break;
            case 10:
              v85[0] = _NSConcreteStackBlock;
              v85[1] = 3221225472;
              v85[2] = sub_100198B8C;
              v85[3] = &unk_100324E88;
              v85[4] = &v96;
              [v14 enumerateValuesWithBlock:v85];
              break;
            case 11:
              v84[0] = _NSConcreteStackBlock;
              v84[1] = 3221225472;
              v84[2] = sub_100198BC8;
              v84[3] = &unk_100324F78;
              v84[4] = &v96;
              [v14 enumerateValuesWithBlock:v84];
              break;
            case 12:
              v83[0] = _NSConcreteStackBlock;
              v83[1] = 3221225472;
              v83[2] = sub_100198C04;
              v83[3] = &unk_100324E10;
              v83[4] = &v96;
              [v14 enumerateValuesWithBlock:v83];
              break;
            case 13:
              v81 = 0u;
              v82 = 0u;
              v79 = 0u;
              v80 = 0u;
              v29 = [v14 countByEnumeratingWithState:&v79 objects:v108 count:16];
              if (v29)
              {
                v30 = *v80;
                do
                {
                  for (i = 0; i != v29; i = i + 1)
                  {
                    if (*v80 != v30)
                    {
                      objc_enumerationMutation(v14);
                    }

                    v32 = sub_100171590(*(*(&v79 + 1) + 8 * i));
                    v97[3] += v32;
                  }

                  v29 = [v14 countByEnumeratingWithState:&v79 objects:v108 count:16];
                }

                while (v29);
              }

              break;
            case 14:
              v77 = 0u;
              v78 = 0u;
              v75 = 0u;
              v76 = 0u;
              v21 = [v14 countByEnumeratingWithState:&v75 objects:v107 count:16];
              if (v21)
              {
                v22 = *v76;
                do
                {
                  for (j = 0; j != v21; j = j + 1)
                  {
                    if (*v76 != v22)
                    {
                      objc_enumerationMutation(v14);
                    }

                    v24 = sub_1001714E8(*(*(&v75 + 1) + 8 * j));
                    v97[3] += v24;
                  }

                  v21 = [v14 countByEnumeratingWithState:&v75 objects:v107 count:16];
                }

                while (v21);
              }

              break;
            case 15:
              v73 = 0u;
              v74 = 0u;
              v71 = 0u;
              v72 = 0u;
              v25 = [v14 countByEnumeratingWithState:&v71 objects:v106 count:16];
              if (v25)
              {
                v26 = *v72;
                do
                {
                  for (k = 0; k != v25; k = k + 1)
                  {
                    if (*v72 != v26)
                    {
                      objc_enumerationMutation(v14);
                    }

                    v28 = sub_100171540(*(*(&v71 + 1) + 8 * k));
                    v97[3] += v28;
                  }

                  v25 = [v14 countByEnumeratingWithState:&v71 objects:v106 count:16];
                }

                while (v25);
              }

              break;
            case 16:
              v69 = 0u;
              v70 = 0u;
              v67 = 0u;
              v68 = 0u;
              v17 = [v14 countByEnumeratingWithState:&v67 objects:v105 count:16];
              if (v17)
              {
                v18 = *v68;
                do
                {
                  for (m = 0; m != v17; m = m + 1)
                  {
                    if (*v68 != v18)
                    {
                      objc_enumerationMutation(v14);
                    }

                    serializedSize = [*(*(&v67 + 1) + 8 * m) serializedSize];
                    v97[3] += serializedSize;
                  }

                  v17 = [v14 countByEnumeratingWithState:&v67 objects:v105 count:16];
                }

                while (v17);
              }

              break;
            case 17:
              v66[0] = _NSConcreteStackBlock;
              v66[1] = 3221225472;
              v66[2] = sub_100198C40;
              v66[3] = &unk_100324F00;
              v66[4] = &v96;
              [v14 enumerateRawValuesWithBlock:v66];
              break;
            default:
              break;
          }

          v33 = v97[3];
          v34 = sub_100171630(*(v8[1] + 16));
          isPackable = [v8 isPackable];
          v36 = v33 + v4;
          v37 = v34 << (v11 == 16);
          v6 = v59;
          if (isPackable)
          {
            v4 = v37 + v36 + sub_10016F8FC(v97[3]);
          }

          else
          {
            v4 = v36 + v37 * v15;
          }

          v3 = v60;
          v5 = v61;
          _Block_object_dispose(&v96, 8);
        }
      }

      else if (fieldType)
      {
        if ((v11 - 13) <= 3 && [v8 mapKeyDataType] == 14)
        {
          v16 = sub_10019E33C(self, v8);
          if (!v16)
          {
            goto LABEL_69;
          }

          v13 = sub_100174370(v16, v8);
        }

        else
        {
          v13 = [sub_10019E33C(self v8)];
        }

LABEL_19:
        v4 += v13;
      }

      else if (sub_10019E86C(self, *(v10 + 20), *(v10 + 16)))
      {
        v12 = *(v8[1] + 16);
        switch(v11)
        {
          case 0:
            sub_10019EE84(self, v8);
            v13 = sub_1001717D8(v12);
            goto LABEL_19;
          case 1:
          case 2:
            sub_10019EC48(self, v8);
            v13 = sub_100171680(v12);
            goto LABEL_19;
          case 3:
            sub_10019F200(self, v8);
            v13 = sub_100171680(v12);
            goto LABEL_19;
          case 4:
          case 5:
            sub_10019F084(self, v8);
            v13 = sub_1001715E0(v12);
            goto LABEL_19;
          case 6:
            sub_10019F39C(self, v8);
            v13 = sub_1001715E0(v12);
            goto LABEL_19;
          case 7:
          case 17:
            v44 = sub_10019EC48(self, v8);
            v13 = sub_100171738(v12, v44);
            goto LABEL_19;
          case 8:
          case 12:
            v41 = sub_10019F084(self, v8);
            v13 = sub_1001716D0(v12, v41);
            goto LABEL_19;
          case 9:
            v42 = sub_10019EC48(self, v8);
            v13 = sub_100171B0C(v12, v42);
            goto LABEL_19;
          case 10:
            v46 = sub_10019F084(self, v8);
            v13 = sub_100171BA8(v12, v46);
            goto LABEL_19;
          case 11:
            v40 = sub_10019EC48(self, v8);
            v13 = sub_100171A78(v12, v40);
            goto LABEL_19;
          case 13:
            v45 = sub_10019E33C(self, v8);
            v13 = sub_1001719D8(v12, v45);
            goto LABEL_19;
          case 14:
            v39 = sub_10019E33C(self, v8);
            v13 = sub_100171828(v12, v39);
            goto LABEL_19;
          case 15:
            v43 = sub_10019E33C(self, v8);
            v13 = sub_100171938(v12, v43);
            goto LABEL_19;
          case 16:
            v38 = sub_10019E33C(self, v8);
            v13 = sub_1001718CC(v12, v38);
            goto LABEL_19;
          default:
            break;
        }
      }

LABEL_69:
      v7 = v7 + 1;
    }

    while (v7 != v5);
    v47 = [v3 countByEnumeratingWithState:&v100 objects:v109 count:16];
    v5 = v47;
  }

  while (v47);
LABEL_85:
  isWireFormat = [descriptor isWireFormat];
  unknownFields = self->unknownFields_;
  if (isWireFormat)
  {
    serializedSizeAsMessageSet = [(TransparencyGPBUnknownFieldSet *)unknownFields serializedSizeAsMessageSet];
  }

  else
  {
    serializedSizeAsMessageSet = [(TransparencyGPBUnknownFieldSet *)unknownFields serializedSize];
  }

  v51 = serializedSizeAsMessageSet;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  extensionMap = self->extensionMap_;
  v53 = [(NSMutableDictionary *)extensionMap countByEnumeratingWithState:&v62 objects:v104 count:16];
  v54 = v51 + v4;
  if (v53)
  {
    v55 = *v63;
    do
    {
      for (n = 0; n != v53; n = n + 1)
      {
        if (*v63 != v55)
        {
          objc_enumerationMutation(extensionMap);
        }

        v54 += sub_100192050(*(*(&v62 + 1) + 8 * n), [(NSMutableDictionary *)self->extensionMap_ objectForKey:*(*(&v62 + 1) + 8 * n)]);
      }

      v53 = [(NSMutableDictionary *)extensionMap countByEnumeratingWithState:&v62 objects:v104 count:16];
    }

    while (v53);
  }

  return v54;
}

+ (BOOL)resolveInstanceMethod:(SEL)method
{
  selfCopy = self;
  descriptor = [self descriptor];
  if (!descriptor)
  {
    v58.receiver = selfCopy;
    v58.super_class = &OBJC_METACLASS___TransparencyGPBMessage;
    return objc_msgSendSuper2(&v58, "resolveInstanceMethod:", method);
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v43 = descriptor;
  v6 = *(descriptor + 1);
  v7 = [v6 countByEnumeratingWithState:&v54 objects:v64 count:16];
  if (!v7)
  {
LABEL_90:
    v45.receiver = selfCopy;
    v45.super_class = &OBJC_METACLASS___TransparencyGPBMessage;
    return objc_msgSendSuper2(&v45, "resolveInstanceMethod:", method);
  }

  v8 = v7;
  v9 = *v55;
  v44 = selfCopy;
LABEL_4:
  v10 = 0;
  while (1)
  {
    if (*v55 != v9)
    {
      objc_enumerationMutation(v6);
    }

    v11 = *(*(&v54 + 1) + 8 * v10);
    v12 = v11[1];
    v13 = v11[3];
    if ((v12[3].i16[2] & 0xF02) == 0)
    {
      break;
    }

    if (v13)
    {
      v14 = v11[3];
    }

    if (v13 == method)
    {
      if ([v11 fieldType] == 1)
      {
        v30 = v49;
        v49[0] = _NSConcreteStackBlock;
        v49[1] = 3221225472;
        v31 = sub_100199EE8;
      }

      else
      {
        v30 = v48;
        v48[0] = _NSConcreteStackBlock;
        v48[1] = 3221225472;
        v31 = sub_100199F84;
      }

      selfCopy = v44;
      v30[2] = v31;
      v30[3] = &unk_100325738;
      v30[4] = v11;
      v32 = imp_implementationWithBlock(v30);
      v33 = "getArray";
      if (!v32)
      {
        goto LABEL_90;
      }

      goto LABEL_52;
    }

    v15 = v11[4];
    if (v15)
    {
      v16 = v11[4];
    }

    if (v15 == method)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10019A044;
      block[3] = &unk_100325758;
      block[4] = v11;
      v32 = imp_implementationWithBlock(block);
      v33 = "setArray:";
      goto LABEL_51;
    }

    v17 = v11[5];
    if (v17)
    {
      v18 = v11[5];
    }

    if (v17 == method)
    {
      v46[0] = _NSConcreteStackBlock;
      v46[1] = 3221225472;
      v46[2] = sub_10019A054;
      v46[3] = &unk_100325778;
      v46[4] = v11;
      v32 = imp_implementationWithBlock(v46);
      v33 = "getArrayCount";
      goto LABEL_51;
    }

LABEL_34:
    if (v8 == ++v10)
    {
      v8 = [v6 countByEnumeratingWithState:&v54 objects:v64 count:16];
      selfCopy = v44;
      if (v8)
      {
        goto LABEL_4;
      }

      goto LABEL_90;
    }
  }

  if (v13)
  {
    v19 = v11[3];
  }

  if (v13 != method)
  {
    v20 = v11[4];
    if (v20)
    {
      v21 = v11[4];
    }

    if (v20 == method)
    {
      selfCopy = v44;
      switch(v12[3].i8[6])
      {
        case 0:
          v59 = _NSConcreteStackBlock;
          v60 = 3221225472;
          v34 = &selRef_setBool_;
          v35 = &unk_1003256F8;
          v36 = sub_10019AD58;
          goto LABEL_89;
        case 1:
          v59 = _NSConcreteStackBlock;
          v60 = 3221225472;
          v34 = &selRef_setFixed32_;
          v35 = &unk_100325858;
          v36 = sub_10019AD68;
          goto LABEL_89;
        case 2:
          v59 = _NSConcreteStackBlock;
          v60 = 3221225472;
          v34 = &selRef_setSFixed32_;
          v35 = &unk_100325878;
          v36 = sub_10019AD78;
          goto LABEL_89;
        case 3:
          v59 = _NSConcreteStackBlock;
          v60 = 3221225472;
          v34 = &selRef_setFloat_;
          v35 = &unk_100325898;
          v36 = sub_10019AD88;
          goto LABEL_89;
        case 4:
          v59 = _NSConcreteStackBlock;
          v60 = 3221225472;
          v34 = &selRef_setFixed64_;
          v35 = &unk_1003258B8;
          v36 = sub_10019AD98;
          goto LABEL_89;
        case 5:
          v59 = _NSConcreteStackBlock;
          v60 = 3221225472;
          v34 = &selRef_setSFixed64_;
          v35 = &unk_1003258D8;
          v36 = sub_10019ADA8;
          goto LABEL_89;
        case 6:
          v59 = _NSConcreteStackBlock;
          v60 = 3221225472;
          v34 = &selRef_setDouble_;
          v35 = &unk_1003258F8;
          v36 = sub_10019ADB8;
          goto LABEL_89;
        case 7:
          v59 = _NSConcreteStackBlock;
          v60 = 3221225472;
          v34 = &selRef_setInt32_;
          v35 = &unk_100325878;
          v36 = sub_10019ADC8;
          goto LABEL_89;
        case 8:
          v59 = _NSConcreteStackBlock;
          v60 = 3221225472;
          v34 = &selRef_setInt64_;
          v35 = &unk_1003258D8;
          v36 = sub_10019ADD8;
          goto LABEL_89;
        case 9:
          v59 = _NSConcreteStackBlock;
          v60 = 3221225472;
          v34 = &selRef_setSInt32_;
          v35 = &unk_100325878;
          v36 = sub_10019ADE8;
          goto LABEL_89;
        case 0xA:
          v59 = _NSConcreteStackBlock;
          v60 = 3221225472;
          v34 = &selRef_setSInt64_;
          v35 = &unk_1003258D8;
          v36 = sub_10019ADF8;
          goto LABEL_89;
        case 0xB:
          v59 = _NSConcreteStackBlock;
          v60 = 3221225472;
          v34 = &selRef_setUInt32_;
          v35 = &unk_100325858;
          v36 = sub_10019AE08;
          goto LABEL_89;
        case 0xC:
          v59 = _NSConcreteStackBlock;
          v60 = 3221225472;
          v34 = &selRef_setUInt64_;
          v35 = &unk_1003258B8;
          v36 = sub_10019AE18;
          goto LABEL_89;
        case 0xD:
          v59 = _NSConcreteStackBlock;
          v60 = 3221225472;
          v34 = &selRef_setBytes_;
          v35 = &unk_100325758;
          v36 = sub_10019AE28;
          goto LABEL_89;
        case 0xE:
          v59 = _NSConcreteStackBlock;
          v60 = 3221225472;
          v34 = &selRef_setString_;
          v35 = &unk_100325758;
          v36 = sub_10019AE70;
          goto LABEL_89;
        case 0xF:
          v59 = _NSConcreteStackBlock;
          v60 = 3221225472;
          v34 = &selRef_setMessage_;
          v35 = &unk_100325758;
          v36 = sub_10019AEB8;
          goto LABEL_89;
        case 0x10:
          v59 = _NSConcreteStackBlock;
          v60 = 3221225472;
          v34 = &selRef_setGroup_;
          v35 = &unk_100325758;
          v36 = sub_10019AEC8;
          goto LABEL_89;
        case 0x11:
          v59 = _NSConcreteStackBlock;
          v60 = 3221225472;
          v34 = &selRef_setEnum_;
          v35 = &unk_100325878;
          v36 = sub_10019AED8;
          goto LABEL_89;
        default:
          goto LABEL_54;
      }
    }

    v22 = v11[5];
    if (v22)
    {
      v23 = v11[5];
    }

    if (v22 == method)
    {
      v53[0] = _NSConcreteStackBlock;
      v53[1] = 3221225472;
      v37 = v12[2];
      v53[2] = sub_100199DF0;
      v53[3] = &unk_1003256D8;
      v53[4] = vrev64_s32(v37);
      v32 = imp_implementationWithBlock(v53);
      v33 = "getBool";
    }

    else
    {
      v24 = v11[6];
      if (v24)
      {
        v25 = v11[6];
      }

      if (v24 == method)
      {
        v52[0] = _NSConcreteStackBlock;
        v52[1] = 3221225472;
        v52[2] = sub_100199E00;
        v52[3] = &unk_1003256F8;
        v52[4] = v11;
        v32 = imp_implementationWithBlock(v52);
        v33 = "setBool:";
      }

      else
      {
        v26 = v11[2];
        if (!v26)
        {
          goto LABEL_34;
        }

        v27 = *(v26 + 24);
        if (v27)
        {
          v28 = *(v26 + 24);
        }

        if (v27 != method)
        {
          goto LABEL_34;
        }

        v38 = v12[2].i32[1];
        v50[0] = _NSConcreteStackBlock;
        v50[1] = 3221225472;
        v50[2] = sub_100199ED8;
        v50[3] = &unk_100325718;
        v51 = v38;
        v32 = imp_implementationWithBlock(v50);
        v33 = "getEnum";
      }
    }

LABEL_51:
    selfCopy = v44;
    if (!v32)
    {
      goto LABEL_90;
    }

    goto LABEL_52;
  }

  selfCopy = v44;
  switch(v12[3].i8[6])
  {
    case 0:
      v59 = _NSConcreteStackBlock;
      v60 = 3221225472;
      v34 = &selRef_getBool;
      v35 = &unk_100325798;
      v36 = sub_10019AC38;
      break;
    case 1:
      v59 = _NSConcreteStackBlock;
      v60 = 3221225472;
      v34 = &selRef_getFixed32;
      v35 = &unk_1003257B8;
      v36 = sub_10019AC48;
      break;
    case 2:
      v59 = _NSConcreteStackBlock;
      v60 = 3221225472;
      v34 = &selRef_getSFixed32;
      v35 = &unk_1003257D8;
      v36 = sub_10019AC58;
      break;
    case 3:
      v59 = _NSConcreteStackBlock;
      v60 = 3221225472;
      v34 = &selRef_getFloat;
      v35 = &unk_1003257F8;
      v36 = sub_10019AC68;
      break;
    case 4:
      v59 = _NSConcreteStackBlock;
      v60 = 3221225472;
      v34 = &selRef_getFixed64;
      v35 = &unk_100325778;
      v36 = sub_10019AC78;
      break;
    case 5:
      v59 = _NSConcreteStackBlock;
      v60 = 3221225472;
      v34 = &selRef_getSFixed64;
      v35 = &unk_100325818;
      v36 = sub_10019AC88;
      break;
    case 6:
      v59 = _NSConcreteStackBlock;
      v60 = 3221225472;
      v34 = &selRef_getDouble;
      v35 = &unk_100325838;
      v36 = sub_10019AC98;
      break;
    case 7:
      v59 = _NSConcreteStackBlock;
      v60 = 3221225472;
      v34 = &selRef_getInt32;
      v35 = &unk_1003257D8;
      v36 = sub_10019ACA8;
      break;
    case 8:
      v59 = _NSConcreteStackBlock;
      v60 = 3221225472;
      v34 = &selRef_getInt64;
      v35 = &unk_100325818;
      v36 = sub_10019ACB8;
      break;
    case 9:
      v59 = _NSConcreteStackBlock;
      v60 = 3221225472;
      v34 = &selRef_getSInt32;
      v35 = &unk_1003257D8;
      v36 = sub_10019ACC8;
      break;
    case 0xA:
      v59 = _NSConcreteStackBlock;
      v60 = 3221225472;
      v34 = &selRef_getSInt64;
      v35 = &unk_100325818;
      v36 = sub_10019ACD8;
      break;
    case 0xB:
      v59 = _NSConcreteStackBlock;
      v60 = 3221225472;
      v34 = &selRef_getUInt32;
      v35 = &unk_1003257B8;
      v36 = sub_10019ACE8;
      break;
    case 0xC:
      v59 = _NSConcreteStackBlock;
      v60 = 3221225472;
      v34 = &selRef_getUInt64;
      v35 = &unk_100325778;
      v36 = sub_10019ACF8;
      break;
    case 0xD:
      v59 = _NSConcreteStackBlock;
      v60 = 3221225472;
      v34 = &selRef_getBytes;
      v35 = &unk_100325738;
      v36 = sub_10019AD08;
      break;
    case 0xE:
      v59 = _NSConcreteStackBlock;
      v60 = 3221225472;
      v34 = &selRef_getString;
      v35 = &unk_100325738;
      v36 = sub_10019AD18;
      break;
    case 0xF:
      v59 = _NSConcreteStackBlock;
      v60 = 3221225472;
      v34 = &selRef_getMessage;
      v35 = &unk_100325738;
      v36 = sub_10019AD28;
      break;
    case 0x10:
      v59 = _NSConcreteStackBlock;
      v60 = 3221225472;
      v34 = &selRef_getGroup;
      v35 = &unk_100325738;
      v36 = sub_10019AD38;
      break;
    case 0x11:
      v59 = _NSConcreteStackBlock;
      v60 = 3221225472;
      v34 = &selRef_getEnum;
      v35 = &unk_1003257D8;
      v36 = sub_10019AD48;
      break;
    default:
LABEL_54:
      v32 = 0;
      v33 = 0;
      goto LABEL_51;
  }

LABEL_89:
  v61 = v36;
  v62 = v35;
  v63 = v11;
  v32 = imp_implementationWithBlock(&v59);
  v33 = *v34;
  if (!v32)
  {
    goto LABEL_90;
  }

LABEL_52:
  v39 = 1;
  v40 = sub_10019F5F4(v33, 1);
  messageClass = [v43 messageClass];
  if (class_addMethod(messageClass, method, v32, v40))
  {
    return v39;
  }

  return sub_1001A08CC(messageClass, method);
}

+ (BOOL)resolveClassMethod:(SEL)method
{
  if (sub_10019B094(self, method))
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___TransparencyGPBMessage;
  return objc_msgSendSuper2(&v6, "resolveClassMethod:", method);
}

- (TransparencyGPBMessage)initWithCoder:(id)coder
{
  v4 = [(TransparencyGPBMessage *)self init];
  if (v4)
  {
    v5 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"TransparencyGPBData"];
    if ([v5 length])
    {
      [(TransparencyGPBMessage *)v4 mergeFromData:v5 extensionRegistry:0];
    }
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  data = [(TransparencyGPBMessage *)self data];
  if ([data length])
  {

    [coder encodeObject:data forKey:@"TransparencyGPBData"];
  }
}

@end