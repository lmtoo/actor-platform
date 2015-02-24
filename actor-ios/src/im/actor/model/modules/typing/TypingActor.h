//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/modules/typing/TypingActor.java
//

#ifndef _ImActorModelModulesTypingTypingActor_H_
#define _ImActorModelModulesTypingTypingActor_H_

@class DKActorRef;
@class DKEnvelope;
@class DKMailboxesQueue;
@class ImActorModelModulesModules;
@class JavaUtilHashMap;
@class JavaUtilHashSet;

#include "J2ObjC_header.h"
#include "im/actor/model/droidkit/actors/ActorCreator.h"
#include "im/actor/model/droidkit/actors/MailboxCreator.h"
#include "im/actor/model/droidkit/actors/mailbox/Mailbox.h"
#include "im/actor/model/modules/utils/ModuleActor.h"

#define ImActorModelModulesTypingTypingActor_TYPING_TEXT_TIMEOUT 3000

@interface ImActorModelModulesTypingTypingActor : ImActorModelModulesUtilsModuleActor {
}

+ (DKActorRef *)getWithImActorModelModulesModules:(ImActorModelModulesModules *)messenger;

- (instancetype)initWithImActorModelModulesModules:(ImActorModelModulesModules *)messenger;

- (void)onReceiveWithId:(id)message;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesTypingTypingActor)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT DKActorRef *ImActorModelModulesTypingTypingActor_getWithImActorModelModulesModules_(ImActorModelModulesModules *messenger);

J2OBJC_STATIC_FIELD_GETTER(ImActorModelModulesTypingTypingActor, TYPING_TEXT_TIMEOUT, jint)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesTypingTypingActor)

@interface ImActorModelModulesTypingTypingActor_StopTyping : NSObject {
}

- (instancetype)initWithInt:(jint)uid;

- (jint)getUid;

- (jboolean)isEqual:(id)o;

- (NSUInteger)hash;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesTypingTypingActor_StopTyping)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesTypingTypingActor_StopTyping)

@interface ImActorModelModulesTypingTypingActor_StopGroupTyping : NSObject {
}

- (instancetype)initWithInt:(jint)gid
                    withInt:(jint)uid;

- (jint)getGid;

- (jint)getUid;

- (jboolean)isEqual:(id)o;

- (NSUInteger)hash;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesTypingTypingActor_StopGroupTyping)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesTypingTypingActor_StopGroupTyping)

@interface ImActorModelModulesTypingTypingActor_PrivateTyping : NSObject {
}

- (instancetype)initWithInt:(jint)uid
                    withInt:(jint)type;

- (jint)getUid;

- (jint)getType;

- (jboolean)isEqual:(id)o;

- (NSUInteger)hash;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesTypingTypingActor_PrivateTyping)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesTypingTypingActor_PrivateTyping)

@interface ImActorModelModulesTypingTypingActor_GroupTyping : NSObject {
}

- (instancetype)initWithInt:(jint)gid
                    withInt:(jint)uid
                    withInt:(jint)type;

- (jint)getGid;

- (jint)getUid;

- (jint)getType;

- (jboolean)isEqual:(id)o;

- (NSUInteger)hash;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesTypingTypingActor_GroupTyping)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesTypingTypingActor_GroupTyping)

@interface ImActorModelModulesTypingTypingActor_$1 : NSObject < DKActorCreator > {
}

- (ImActorModelModulesTypingTypingActor *)create;

- (instancetype)initWithImActorModelModulesModules:(ImActorModelModulesModules *)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesTypingTypingActor_$1)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesTypingTypingActor_$1)

@interface ImActorModelModulesTypingTypingActor_$2 : NSObject < DKMailboxCreator > {
}

- (DKMailbox *)createMailboxWithDKMailboxesQueue:(DKMailboxesQueue *)queue;

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesTypingTypingActor_$2)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesTypingTypingActor_$2)

@interface ImActorModelModulesTypingTypingActor_$2_$1 : DKMailbox {
}

- (jboolean)isEqualEnvelopeWithDKEnvelope:(DKEnvelope *)a
                           withDKEnvelope:(DKEnvelope *)b;

- (instancetype)initWithDKMailboxesQueue:(DKMailboxesQueue *)arg$0;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesTypingTypingActor_$2_$1)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesTypingTypingActor_$2_$1)

#endif // _ImActorModelModulesTypingTypingActor_H_
