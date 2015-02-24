//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/modules/messages/entity/PlainCursorsStorage.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/entity/Peer.h"
#include "im/actor/model/modules/messages/entity/PlainCursor.h"
#include "im/actor/model/modules/messages/entity/PlainCursorsStorage.h"
#include "java/io/IOException.h"
#include "java/util/Collection.h"
#include "java/util/HashMap.h"
#include "java/util/List.h"

@interface ImActorModelModulesMessagesEntityPlainCursorsStorage () {
 @public
  JavaUtilHashMap *cursors_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesMessagesEntityPlainCursorsStorage, cursors_, JavaUtilHashMap *)

@implementation ImActorModelModulesMessagesEntityPlainCursorsStorage

+ (ImActorModelModulesMessagesEntityPlainCursorsStorage *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelModulesMessagesEntityPlainCursorsStorage_fromBytesWithByteArray_(data);
}

- (ImActorModelModulesMessagesEntityPlainCursor *)getCursorWithAMPeer:(AMPeer *)peer {
  if (![((JavaUtilHashMap *) nil_chk(cursors_)) containsKeyWithId:peer]) {
    (void) [cursors_ putWithId:peer withId:[[ImActorModelModulesMessagesEntityPlainCursor alloc] initWithAMPeer:peer withLong:0 withLong:0]];
  }
  return [cursors_ getWithId:peer];
}

- (void)putCursorWithImActorModelModulesMessagesEntityPlainCursor:(ImActorModelModulesMessagesEntityPlainCursor *)cursor {
  (void) [((JavaUtilHashMap *) nil_chk(cursors_)) putWithId:[((ImActorModelModulesMessagesEntityPlainCursor *) nil_chk(cursor)) getPeer] withId:cursor];
}

- (id<JavaUtilCollection>)getAllCursors {
  return [((JavaUtilHashMap *) nil_chk(cursors_)) values];
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  for (IOSByteArray * __strong data in nil_chk([((BSBserValues *) nil_chk(values)) getRepeatedBytesWithInt:1])) {
    @try {
      ImActorModelModulesMessagesEntityPlainCursor *plainCursor = ImActorModelModulesMessagesEntityPlainCursor_fromBytesWithByteArray_(data);
      (void) [((JavaUtilHashMap *) nil_chk(cursors_)) putWithId:[((ImActorModelModulesMessagesEntityPlainCursor *) nil_chk(plainCursor)) getPeer] withId:plainCursor];
    }
    @catch (JavaIoIOException *e) {
      [((JavaIoIOException *) nil_chk(e)) printStackTrace];
    }
  }
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  for (ImActorModelModulesMessagesEntityPlainCursor * __strong cursor in nil_chk([((JavaUtilHashMap *) nil_chk(cursors_)) values])) {
    [((BSBserWriter *) nil_chk(writer)) writeObjectWithInt:1 withBSBserObject:cursor];
  }
}

- (instancetype)init {
  if (self = [super init]) {
    cursors_ = [[JavaUtilHashMap alloc] init];
  }
  return self;
}

- (void)copyAllFieldsTo:(ImActorModelModulesMessagesEntityPlainCursorsStorage *)other {
  [super copyAllFieldsTo:other];
  other->cursors_ = cursors_;
}

@end

ImActorModelModulesMessagesEntityPlainCursorsStorage *ImActorModelModulesMessagesEntityPlainCursorsStorage_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelModulesMessagesEntityPlainCursorsStorage_init();
  return ((ImActorModelModulesMessagesEntityPlainCursorsStorage *) BSBser_parseWithBSBserObject_withByteArray_([[ImActorModelModulesMessagesEntityPlainCursorsStorage alloc] init], data));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesMessagesEntityPlainCursorsStorage)
