//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/modules/messages/entity/OutUnreadMessagesStorage.java
//

#ifndef _ImActorModelModulesMessagesEntityOutUnreadMessagesStorage_H_
#define _ImActorModelModulesMessagesEntityOutUnreadMessagesStorage_H_

@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;
@class JavaUtilArrayList;

#include "J2ObjC_header.h"
#include "im/actor/model/droidkit/bser/BserObject.h"

@interface ImActorModelModulesMessagesEntityOutUnreadMessagesStorage : BSBserObject {
}

+ (ImActorModelModulesMessagesEntityOutUnreadMessagesStorage *)fromBytesWithByteArray:(IOSByteArray *)data;

- (JavaUtilArrayList *)getMessages;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesMessagesEntityOutUnreadMessagesStorage)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT ImActorModelModulesMessagesEntityOutUnreadMessagesStorage *ImActorModelModulesMessagesEntityOutUnreadMessagesStorage_fromBytesWithByteArray_(IOSByteArray *data);
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesMessagesEntityOutUnreadMessagesStorage)

#endif // _ImActorModelModulesMessagesEntityOutUnreadMessagesStorage_H_
