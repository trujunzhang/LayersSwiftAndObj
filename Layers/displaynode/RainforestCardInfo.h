//
// Created by djzhang on 11/24/14.
// Copyright (c) 2014 djzhang. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface RainforestCardInfo : NSObject
@property(nonatomic, copy) NSString * name;
@property(nonatomic, copy) NSString * descriptionValue;
@property(nonatomic, copy) NSString * imageName;
@property(nonatomic, copy) NSString * articleAttribution;
@property(nonatomic, copy) NSString * articleOriginLink;
@property(nonatomic, copy) NSString * articleLicense;
@property(nonatomic, copy) NSString * articleLicenseLink;
@property(nonatomic, copy) NSString * imageAttribution;
@property(nonatomic, copy) NSString * imageOriginLink;
@property(nonatomic, copy) NSString * imageLicense;
@property(nonatomic, copy) NSString * imageLicenseLink;
- (instancetype)initWithName:(NSString *)name descriptionValue:(NSString *)descriptionValue imageName:(NSString *)imageName articleAttribution:(NSString *)articleAttribution articleOriginLink:(NSString *)articleOriginLink articleLicense:(NSString *)articleLicense articleLicenseLink:(NSString *)articleLicenseLink imageAttribution:(NSString *)imageAttribution imageOriginLink:(NSString *)imageOriginLink imageLicense:(NSString *)imageLicense imageLicenseLink:(NSString *)imageLicenseLink;
+ (instancetype)infoWithName:(NSString *)name descriptionValue:(NSString *)descriptionValue imageName:(NSString *)imageName articleAttribution:(NSString *)articleAttribution articleOriginLink:(NSString *)articleOriginLink articleLicense:(NSString *)articleLicense articleLicenseLink:(NSString *)articleLicenseLink imageAttribution:(NSString *)imageAttribution imageOriginLink:(NSString *)imageOriginLink imageLicense:(NSString *)imageLicense imageLicenseLink:(NSString *)imageLicenseLink;

+ (NSArray *)getAllCardInfo;
@end