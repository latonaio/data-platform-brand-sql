CREATE TABLE `data_platform_brand_header_data`
(
  `Brand`                            int(16) NOT NULL,
  `BrandType`                        varchar(4) NOT NULL,
  `BrandOwner`                       int(12) NOT NULL,
  `BrandOwnerBusinessPartnerRole`    varchar(40) NOT NULL,
  `PersonResponsible`                varchar(40) NOT NULL,
  `ValidityStartDate`                date NOT NULL,
  `ValidityStartTime`                time NOT NULL,
  `ValidityEndDate`                  date NOT NULL,
  `ValidityEndTime`                  time NOT NULL,
  `Description`                      varchar(60) NOT NULL,
  `LongText`                         varchar(1000) NOT NULL,
  `Introduction`                     varchar(200) DEFAULT NULL,
  `Project`                          int(16) DEFAULT NULL,
  `WBSElement`                       int(8) DEFAULT NULL,
  `Tag1`                             varchar(40) DEFAULT NULL,
  `Tag2`                             varchar(40) DEFAULT NULL,
  `Tag3`                             varchar(40) DEFAULT NULL,
  `Tag4`                             varchar(40) DEFAULT NULL,
  `CreationDate`                     date NOT NULL,
  `CreationTime`                     time NOT NULL,
  `LastChangeDate`                   date NOT NULL,
  `LastChangeTime`                   time NOT NULL,
  `IsReleased`                       tinyint(1) DEFAULT NULL,
  `IsMarkedForDeletion`              tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`Brand`),

    CONSTRAINT `DPFMBrandHeaderDataBrandType_fk` FOREIGN KEY (`BrandType`) REFERENCES `data_platform_brand_type_brand_type_data` (`BrandType`),
    CONSTRAINT `DPFMBrandHeaderDataBrandOwner_fk` FOREIGN KEY (`BrandOwner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DPFMBrandHeaderDataBrandOwnerBPRole_fk` FOREIGN KEY (`BrandOwnerBusinessPartnerRole`) REFERENCES `data_platform_bp_role_bp_role_data` (`BusinessPartnerRole`),
    CONSTRAINT `DPFMBrandHeaderDataProject_fk` FOREIGN KEY (`Project`) REFERENCES `data_platform_project_project_data` (`Project`),
    CONSTRAINT `DPFMBrandHeaderDataWBSElement_fk` FOREIGN KEY (`Project`, `WBSElement`) REFERENCES `data_platform_project_wbs_element_data` (`Project`, `WBSElement`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
