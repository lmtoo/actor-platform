//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/modules/Messages.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "im/actor/model/Configuration.h"
#include "im/actor/model/Storage.h"
#include "im/actor/model/droidkit/actors/ActorRef.h"
#include "im/actor/model/droidkit/actors/ActorSystem.h"
#include "im/actor/model/droidkit/actors/Props.h"
#include "im/actor/model/entity/Peer.h"
#include "im/actor/model/entity/PeerType.h"
#include "im/actor/model/modules/BaseModule.h"
#include "im/actor/model/modules/Messages.h"
#include "im/actor/model/modules/Modules.h"
#include "im/actor/model/modules/messages/ConversationActor.h"
#include "im/actor/model/modules/messages/DialogsActor.h"
#include "im/actor/model/modules/messages/DialogsHistoryActor.h"
#include "im/actor/model/modules/messages/OwnReadActor.h"
#include "im/actor/model/modules/messages/PlainReaderActor.h"
#include "im/actor/model/modules/messages/PlainReceiverActor.h"
#include "im/actor/model/modules/messages/SenderActor.h"
#include "im/actor/model/storage/ListEngine.h"
#include "im/actor/model/storage/PreferencesStorage.h"
#include "java/util/HashMap.h"

@interface ImActorModelModulesMessages () {
 @public
  id<AMListEngine> dialogs_;
  DKActorRef *dialogsActor_;
  DKActorRef *dialogsHistoryActor_;
  DKActorRef *ownReadActor_;
  DKActorRef *plainReadActor_;
  DKActorRef *plainReceiverActor_;
  DKActorRef *sendMessageActor_;
  JavaUtilHashMap *conversationEngines_;
  JavaUtilHashMap *conversationActors_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesMessages, dialogs_, id<AMListEngine>)
J2OBJC_FIELD_SETTER(ImActorModelModulesMessages, dialogsActor_, DKActorRef *)
J2OBJC_FIELD_SETTER(ImActorModelModulesMessages, dialogsHistoryActor_, DKActorRef *)
J2OBJC_FIELD_SETTER(ImActorModelModulesMessages, ownReadActor_, DKActorRef *)
J2OBJC_FIELD_SETTER(ImActorModelModulesMessages, plainReadActor_, DKActorRef *)
J2OBJC_FIELD_SETTER(ImActorModelModulesMessages, plainReceiverActor_, DKActorRef *)
J2OBJC_FIELD_SETTER(ImActorModelModulesMessages, sendMessageActor_, DKActorRef *)
J2OBJC_FIELD_SETTER(ImActorModelModulesMessages, conversationEngines_, JavaUtilHashMap *)
J2OBJC_FIELD_SETTER(ImActorModelModulesMessages, conversationActors_, JavaUtilHashMap *)

@interface ImActorModelModulesMessages_$1 () {
 @public
  ImActorModelModulesMessages *this$0_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesMessages_$1, this$0_, ImActorModelModulesMessages *)

@interface ImActorModelModulesMessages_$2 () {
 @public
  ImActorModelModulesMessages *this$0_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesMessages_$2, this$0_, ImActorModelModulesMessages *)

@interface ImActorModelModulesMessages_$3 () {
 @public
  ImActorModelModulesMessages *this$0_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesMessages_$3, this$0_, ImActorModelModulesMessages *)

@interface ImActorModelModulesMessages_$4 () {
 @public
  ImActorModelModulesMessages *this$0_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesMessages_$4, this$0_, ImActorModelModulesMessages *)

@interface ImActorModelModulesMessages_$5 () {
 @public
  ImActorModelModulesMessages *this$0_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesMessages_$5, this$0_, ImActorModelModulesMessages *)

@interface ImActorModelModulesMessages_$6 () {
 @public
  ImActorModelModulesMessages *this$0_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesMessages_$6, this$0_, ImActorModelModulesMessages *)

@interface ImActorModelModulesMessages_$7 () {
 @public
  ImActorModelModulesMessages *this$0_;
  AMPeer *val$peer_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesMessages_$7, this$0_, ImActorModelModulesMessages *)
J2OBJC_FIELD_SETTER(ImActorModelModulesMessages_$7, val$peer_, AMPeer *)

@implementation ImActorModelModulesMessages

- (instancetype)initWithImActorModelModulesModules:(ImActorModelModulesModules *)messenger {
  if (self = [super initWithImActorModelModulesModules:messenger]) {
    conversationEngines_ = [[JavaUtilHashMap alloc] init];
    conversationActors_ = [[JavaUtilHashMap alloc] init];
    self->dialogs_ = [((id<AMStorage>) nil_chk([((AMConfiguration *) nil_chk([((ImActorModelModulesModules *) nil_chk(messenger)) getConfiguration])) getStorage])) createDialogsEngine];
  }
  return self;
}

- (void)run {
  self->dialogsActor_ = [((DKActorSystem *) nil_chk(DKActorSystem_system())) actorOfWithDKProps:DKProps_createWithIOSClass_withDKActorCreator_(ImActorModelModulesMessagesDialogsActor_class_(), [[ImActorModelModulesMessages_$1 alloc] initWithImActorModelModulesMessages:self]) withNSString:@"actor/dialogs"];
  self->dialogsHistoryActor_ = [((DKActorSystem *) nil_chk(DKActorSystem_system())) actorOfWithDKProps:DKProps_createWithIOSClass_withDKActorCreator_(ImActorModelModulesMessagesDialogsHistoryActor_class_(), [[ImActorModelModulesMessages_$2 alloc] initWithImActorModelModulesMessages:self]) withNSString:@"actor/dialogs/history"];
  self->ownReadActor_ = [((DKActorSystem *) nil_chk(DKActorSystem_system())) actorOfWithDKProps:DKProps_createWithIOSClass_withDKActorCreator_(ImActorModelModulesMessagesOwnReadActor_class_(), [[ImActorModelModulesMessages_$3 alloc] initWithImActorModelModulesMessages:self]) withNSString:@"actor/read/own"];
  self->plainReadActor_ = [((DKActorSystem *) nil_chk(DKActorSystem_system())) actorOfWithDKProps:DKProps_createWithIOSClass_withDKActorCreator_(ImActorModelModulesMessagesPlainReaderActor_class_(), [[ImActorModelModulesMessages_$4 alloc] initWithImActorModelModulesMessages:self]) withNSString:@"actor/plain/read"];
  self->plainReceiverActor_ = [((DKActorSystem *) nil_chk(DKActorSystem_system())) actorOfWithDKProps:DKProps_createWithIOSClass_withDKActorCreator_(ImActorModelModulesMessagesPlainReceiverActor_class_(), [[ImActorModelModulesMessages_$5 alloc] initWithImActorModelModulesMessages:self]) withNSString:@"actor/plain/receive"];
  self->sendMessageActor_ = [((DKActorSystem *) nil_chk(DKActorSystem_system())) actorOfWithDKProps:DKProps_createWithIOSClass_withDKActorCreator_(ImActorModelModulesMessagesSenderActor_class_(), [[ImActorModelModulesMessages_$6 alloc] initWithImActorModelModulesMessages:self]) withNSString:@"actor/sender/small"];
}

- (DKActorRef *)getSendMessageActor {
  return sendMessageActor_;
}

- (DKActorRef *)getPlainReadActor {
  return plainReadActor_;
}

- (DKActorRef *)getPlainReceiverActor {
  return plainReceiverActor_;
}

- (DKActorRef *)getOwnReadActor {
  return ownReadActor_;
}

- (DKActorRef *)getConversationActorWithAMPeer:(AMPeer *)peer {
  @synchronized(conversationActors_) {
    if (![((JavaUtilHashMap *) nil_chk(conversationActors_)) containsKeyWithId:peer]) {
      (void) [conversationActors_ putWithId:peer withId:[((DKActorSystem *) nil_chk(DKActorSystem_system())) actorOfWithDKProps:DKProps_createWithIOSClass_withDKActorCreator_(ImActorModelModulesMessagesConversationActor_class_(), [[ImActorModelModulesMessages_$7 alloc] initWithImActorModelModulesMessages:self withAMPeer:peer]) withNSString:JreStrcat("$@CI", @"actor/conv_", [((AMPeer *) nil_chk(peer)) getPeerType], '_', [peer getPeerId])]];
    }
    return [conversationActors_ getWithId:peer];
  }
}

- (id<AMListEngine>)getConversationEngineWithAMPeer:(AMPeer *)peer {
  @synchronized(conversationEngines_) {
    if (![((JavaUtilHashMap *) nil_chk(conversationEngines_)) containsKeyWithId:peer]) {
      (void) [conversationEngines_ putWithId:peer withId:[((id<AMStorage>) nil_chk([((AMConfiguration *) nil_chk([((ImActorModelModulesModules *) nil_chk([self modules])) getConfiguration])) getStorage])) createMessagesEngineWithAMPeer:peer]];
    }
    return [conversationEngines_ getWithId:peer];
  }
}

- (DKActorRef *)getDialogsActor {
  return dialogsActor_;
}

- (DKActorRef *)getDialogsHistoryActor {
  return dialogsHistoryActor_;
}

- (id<AMListEngine>)getDialogsEngine {
  return dialogs_;
}

- (void)sendMessageWithAMPeer:(AMPeer *)peer
                 withNSString:(NSString *)message {
  [((DKActorRef *) nil_chk(sendMessageActor_)) sendWithId:[[ImActorModelModulesMessagesSenderActor_SendText alloc] initWithAMPeer:peer withNSString:message]];
}

- (void)onInMessageShownWithAMPeer:(AMPeer *)peer
                          withLong:(jlong)rid
                          withLong:(jlong)sortDate
                       withBoolean:(jboolean)isEncrypted {
  [((DKActorRef *) nil_chk(ownReadActor_)) sendWithId:[[ImActorModelModulesMessagesOwnReadActor_MessageRead alloc] initWithAMPeer:peer withLong:rid withLong:sortDate withBoolean:isEncrypted]];
}

- (void)saveReadStateWithAMPeer:(AMPeer *)peer
                       withLong:(jlong)lastReadDate {
  [((id<AMPreferencesStorage>) nil_chk([self preferences])) putLongWithNSString:JreStrcat("$J", @"read_state_", [((AMPeer *) nil_chk(peer)) getUid]) withLong:lastReadDate];
}

- (jlong)loadReadStateWithAMPeer:(AMPeer *)peer {
  return [((id<AMPreferencesStorage>) nil_chk([self preferences])) getLongWithNSString:JreStrcat("$J", @"read_state_", [((AMPeer *) nil_chk(peer)) getUid]) withLong:0];
}

- (void)saveDraftWithAMPeer:(AMPeer *)peer
               withNSString:(NSString *)draft {
  [((id<AMPreferencesStorage>) nil_chk([self preferences])) putStringWithNSString:JreStrcat("$J", @"draft_", [((AMPeer *) nil_chk(peer)) getUid]) withNSString:[((NSString *) nil_chk(draft)) trim]];
}

- (NSString *)loadDraftWithAMPeer:(AMPeer *)peer {
  NSString *res = [((id<AMPreferencesStorage>) nil_chk([self preferences])) getStringWithNSString:JreStrcat("$J", @"draft_", [((AMPeer *) nil_chk(peer)) getUid])];
  if (res == nil) {
    return @"";
  }
  else {
    return res;
  }
}

- (void)copyAllFieldsTo:(ImActorModelModulesMessages *)other {
  [super copyAllFieldsTo:other];
  other->dialogs_ = dialogs_;
  other->dialogsActor_ = dialogsActor_;
  other->dialogsHistoryActor_ = dialogsHistoryActor_;
  other->ownReadActor_ = ownReadActor_;
  other->plainReadActor_ = plainReadActor_;
  other->plainReceiverActor_ = plainReceiverActor_;
  other->sendMessageActor_ = sendMessageActor_;
  other->conversationEngines_ = conversationEngines_;
  other->conversationActors_ = conversationActors_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesMessages)

@implementation ImActorModelModulesMessages_$1

- (ImActorModelModulesMessagesDialogsActor *)create {
  return [[ImActorModelModulesMessagesDialogsActor alloc] initWithImActorModelModulesModules:[this$0_ modules]];
}

- (instancetype)initWithImActorModelModulesMessages:(ImActorModelModulesMessages *)outer$ {
  this$0_ = outer$;
  return [super init];
}

- (void)copyAllFieldsTo:(ImActorModelModulesMessages_$1 *)other {
  [super copyAllFieldsTo:other];
  other->this$0_ = this$0_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesMessages_$1)

@implementation ImActorModelModulesMessages_$2

- (ImActorModelModulesMessagesDialogsHistoryActor *)create {
  return [[ImActorModelModulesMessagesDialogsHistoryActor alloc] initWithImActorModelModulesModules:[this$0_ modules]];
}

- (instancetype)initWithImActorModelModulesMessages:(ImActorModelModulesMessages *)outer$ {
  this$0_ = outer$;
  return [super init];
}

- (void)copyAllFieldsTo:(ImActorModelModulesMessages_$2 *)other {
  [super copyAllFieldsTo:other];
  other->this$0_ = this$0_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesMessages_$2)

@implementation ImActorModelModulesMessages_$3

- (ImActorModelModulesMessagesOwnReadActor *)create {
  return [[ImActorModelModulesMessagesOwnReadActor alloc] initWithImActorModelModulesModules:[this$0_ modules]];
}

- (instancetype)initWithImActorModelModulesMessages:(ImActorModelModulesMessages *)outer$ {
  this$0_ = outer$;
  return [super init];
}

- (void)copyAllFieldsTo:(ImActorModelModulesMessages_$3 *)other {
  [super copyAllFieldsTo:other];
  other->this$0_ = this$0_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesMessages_$3)

@implementation ImActorModelModulesMessages_$4

- (ImActorModelModulesMessagesPlainReaderActor *)create {
  return [[ImActorModelModulesMessagesPlainReaderActor alloc] initWithImActorModelModulesModules:[this$0_ modules]];
}

- (instancetype)initWithImActorModelModulesMessages:(ImActorModelModulesMessages *)outer$ {
  this$0_ = outer$;
  return [super init];
}

- (void)copyAllFieldsTo:(ImActorModelModulesMessages_$4 *)other {
  [super copyAllFieldsTo:other];
  other->this$0_ = this$0_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesMessages_$4)

@implementation ImActorModelModulesMessages_$5

- (ImActorModelModulesMessagesPlainReceiverActor *)create {
  return [[ImActorModelModulesMessagesPlainReceiverActor alloc] initWithImActorModelModulesModules:[this$0_ modules]];
}

- (instancetype)initWithImActorModelModulesMessages:(ImActorModelModulesMessages *)outer$ {
  this$0_ = outer$;
  return [super init];
}

- (void)copyAllFieldsTo:(ImActorModelModulesMessages_$5 *)other {
  [super copyAllFieldsTo:other];
  other->this$0_ = this$0_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesMessages_$5)

@implementation ImActorModelModulesMessages_$6

- (ImActorModelModulesMessagesSenderActor *)create {
  return [[ImActorModelModulesMessagesSenderActor alloc] initWithImActorModelModulesModules:[this$0_ modules]];
}

- (instancetype)initWithImActorModelModulesMessages:(ImActorModelModulesMessages *)outer$ {
  this$0_ = outer$;
  return [super init];
}

- (void)copyAllFieldsTo:(ImActorModelModulesMessages_$6 *)other {
  [super copyAllFieldsTo:other];
  other->this$0_ = this$0_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesMessages_$6)

@implementation ImActorModelModulesMessages_$7

- (ImActorModelModulesMessagesConversationActor *)create {
  return [[ImActorModelModulesMessagesConversationActor alloc] initWithAMPeer:val$peer_ withImActorModelModulesModules:[this$0_ modules]];
}

- (instancetype)initWithImActorModelModulesMessages:(ImActorModelModulesMessages *)outer$
                                         withAMPeer:(AMPeer *)capture$0 {
  this$0_ = outer$;
  val$peer_ = capture$0;
  return [super init];
}

- (void)copyAllFieldsTo:(ImActorModelModulesMessages_$7 *)other {
  [super copyAllFieldsTo:other];
  other->this$0_ = this$0_;
  other->val$peer_ = val$peer_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesMessages_$7)
