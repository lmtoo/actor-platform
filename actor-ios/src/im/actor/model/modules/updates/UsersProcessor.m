//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/modules/updates/UsersProcessor.java
//

#include "J2ObjC_source.h"
#include "im/actor/model/api/Avatar.h"
#include "im/actor/model/api/User.h"
#include "im/actor/model/droidkit/actors/ActorRef.h"
#include "im/actor/model/entity/Avatar.h"
#include "im/actor/model/entity/User.h"
#include "im/actor/model/modules/BaseModule.h"
#include "im/actor/model/modules/Messages.h"
#include "im/actor/model/modules/Modules.h"
#include "im/actor/model/modules/messages/DialogsActor.h"
#include "im/actor/model/modules/messages/entity/EntityConverter.h"
#include "im/actor/model/modules/updates/UsersProcessor.h"
#include "im/actor/model/storage/KeyValueEngine.h"
#include "im/actor/model/util/JavaUtil.h"
#include "java/lang/Integer.h"
#include "java/util/ArrayList.h"
#include "java/util/Collection.h"

@implementation ImActorModelModulesUpdatesUsersProcessor

- (instancetype)initWithImActorModelModulesModules:(ImActorModelModulesModules *)messenger {
  return [super initWithImActorModelModulesModules:messenger];
}

- (void)applyUsersWithJavaUtilCollection:(id<JavaUtilCollection>)updated
                             withBoolean:(jboolean)forced {
  JavaUtilArrayList *batch = [[JavaUtilArrayList alloc] init];
  for (ImActorModelApiUser * __strong u in nil_chk(updated)) {
    AMUser *saved = [((id<AMKeyValueEngine>) nil_chk([self users])) getValueWithLong:[((ImActorModelApiUser *) nil_chk(u)) getId]];
    if (saved == nil) {
      [batch addWithId:ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiUser_(u)];
    }
    else if (forced) {
      AMUser *upd = ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiUser_(u);
      [batch addWithId:upd];
      if (![((NSString *) nil_chk([((AMUser *) nil_chk(upd)) getName])) isEqual:[saved getName]] || !AMJavaUtil_equalsEWithId_withId_([upd getAvatar], [saved getAvatar])) {
        [((DKActorRef *) nil_chk([((ImActorModelModulesMessages *) nil_chk([((ImActorModelModulesModules *) nil_chk([self modules])) getMessagesModule])) getDialogsActor])) sendWithId:[[ImActorModelModulesMessagesDialogsActor_UserChanged alloc] initWithAMUser:upd]];
      }
    }
  }
  if ([batch size] > 0) {
    [((id<AMKeyValueEngine>) nil_chk([self users])) addOrUpdateItemsWithJavaUtilList:batch];
  }
}

- (void)onUserNameChangedWithInt:(jint)uid
                    withNSString:(NSString *)name {
  AMUser *u = [((id<AMKeyValueEngine>) nil_chk([self users])) getValueWithLong:uid];
  if (u != nil) {
    if ([((NSString *) nil_chk([u getServerName])) isEqual:name]) {
      return;
    }
    u = [u editNameWithNSString:name];
    [((id<AMKeyValueEngine>) nil_chk([self users])) addOrUpdateItemWithAMKeyValueItem:u];
    if ([((AMUser *) nil_chk(u)) getLocalName] == nil) {
      [((DKActorRef *) nil_chk([((ImActorModelModulesMessages *) nil_chk([((ImActorModelModulesModules *) nil_chk([self modules])) getMessagesModule])) getDialogsActor])) sendWithId:[[ImActorModelModulesMessagesDialogsActor_UserChanged alloc] initWithAMUser:u]];
    }
  }
}

- (void)onUserLocalNameChangedWithInt:(jint)uid
                         withNSString:(NSString *)name {
  AMUser *u = [((id<AMKeyValueEngine>) nil_chk([self users])) getValueWithLong:uid];
  if (u != nil) {
    if ([u getLocalName] == nil && name == nil) {
      return;
    }
    if ([u getLocalName] != nil && [((NSString *) nil_chk([u getLocalName])) isEqual:name]) {
      return;
    }
    u = [u editLocalNameWithNSString:name];
    [((id<AMKeyValueEngine>) nil_chk([self users])) addOrUpdateItemWithAMKeyValueItem:u];
    [((DKActorRef *) nil_chk([((ImActorModelModulesMessages *) nil_chk([((ImActorModelModulesModules *) nil_chk([self modules])) getMessagesModule])) getDialogsActor])) sendWithId:[[ImActorModelModulesMessagesDialogsActor_UserChanged alloc] initWithAMUser:u]];
  }
}

- (void)onUserAvatarChangedWithInt:(jint)uid
         withImActorModelApiAvatar:(ImActorModelApiAvatar *)_avatar {
  AMAvatar *avatar = ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiAvatar_(_avatar);
  AMUser *u = [((id<AMKeyValueEngine>) nil_chk([self users])) getValueWithLong:uid];
  if (u != nil) {
    if ([u getAvatar] == nil && avatar == nil) {
      return;
    }
    if ([u getAvatar] != nil && [((AMAvatar *) nil_chk([u getAvatar])) isEqual:avatar]) {
      return;
    }
    u = [u editAvatarWithAMAvatar:avatar];
    [((id<AMKeyValueEngine>) nil_chk([self users])) addOrUpdateItemWithAMKeyValueItem:u];
    [((DKActorRef *) nil_chk([((ImActorModelModulesMessages *) nil_chk([((ImActorModelModulesModules *) nil_chk([self modules])) getMessagesModule])) getDialogsActor])) sendWithId:[[ImActorModelModulesMessagesDialogsActor_UserChanged alloc] initWithAMUser:u]];
  }
}

- (jboolean)hasUsersWithJavaUtilCollection:(id<JavaUtilCollection>)uids {
  for (JavaLangInteger * __strong uid in nil_chk(uids)) {
    if ([((id<AMKeyValueEngine>) nil_chk([self users])) getValueWithLong:[((JavaLangInteger *) nil_chk(uid)) intValue]] == nil) {
      return NO;
    }
  }
  return YES;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesUpdatesUsersProcessor)
