/*
 Navicat Premium Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : hotgo

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 16/12/2025 16:19:19
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for hg_cooperation_institutions
-- ----------------------------
DROP TABLE IF EXISTS `hg_cooperation_institutions`;
CREATE TABLE `hg_cooperation_institutions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '合作机构ID',
  `institution_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '合作机构名称',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '地址',
  `created_at` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `organization_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '组织类型（例如：企业、科研机构、政府部门等）',
  `contact_person` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '联系人',
  `contact_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '联系人邮箱',
  `contact_phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '联系人电话',
  `remarks` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '备注',
  `team_leader` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '团队负责人',
  `team_size` int(11) NULL DEFAULT NULL COMMENT '团队人数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '基金--合作机构表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for hg_cooperation_volunteer_individual
-- ----------------------------
DROP TABLE IF EXISTS `hg_cooperation_volunteer_individual`;
CREATE TABLE `hg_cooperation_volunteer_individual`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '志愿者ID',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '志愿者姓名',
  `gender` tinyint(4) NULL DEFAULT NULL COMMENT '性别（1=男，2=女，0=其他）',
  `birth_date` date NULL DEFAULT NULL COMMENT '出生日期',
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '志愿者邮箱',
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '志愿者电话',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '志愿者地址',
  `team_id` int(11) NULL DEFAULT NULL COMMENT '所属团队ID',
  `participation_date` date NULL DEFAULT NULL COMMENT '参与合作项目的日期',
  `status` tinyint(4) NULL DEFAULT NULL COMMENT '志愿者状态（1=活跃，2=已结束，3=已暂停）',
  `remarks` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '备注',
  `created_at` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_team_id`(`team_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '基金--合作志愿者个人表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for hg_cooperation_volunteer_team
-- ----------------------------
DROP TABLE IF EXISTS `hg_cooperation_volunteer_team`;
CREATE TABLE `hg_cooperation_volunteer_team`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '志愿者团队ID',
  `team_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '志愿者团队名称',
  `team_leader` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '团队负责人',
  `contact_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '团队负责人邮箱',
  `contact_phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '团队负责人电话',
  `cooperation_project` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '合作项目（与团队合作的项目详情）',
  `team_size` int(11) NULL DEFAULT NULL COMMENT '团队人数',
  `start_date` date NULL DEFAULT NULL COMMENT '合作开始日期',
  `end_date` date NULL DEFAULT NULL COMMENT '合作结束日期',
  `status` tinyint(4) NULL DEFAULT NULL COMMENT '团队状态（1=进行中，2=已结束，3=已暂停）',
  `remarks` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '备注',
  `created_at` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '基金--合作志愿者团队表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for hg_org_beneficiary
-- ----------------------------
DROP TABLE IF EXISTS `hg_org_beneficiary`;
CREATE TABLE `hg_org_beneficiary`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `org_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '单位名称',
  `business_license_number` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '营业执照号码（唯一）',
  `reg_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '注册地址',
  `contact_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '联系人姓名',
  `contact_position` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '联系人职务',
  `contact_mobile` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '联系人电话',
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '邮箱（唯一）',
  `bank_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '开户行名称',
  `bank_account` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '银行卡号（唯一）',
  `status` tinyint(4) NULL DEFAULT NULL COMMENT '状态',
  `created_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `updated_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `created_at` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `deleted_at` datetime NULL DEFAULT NULL COMMENT '删除时间',
  `wechat` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '微信号',
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `business_license_number`(`business_license_number`) USING BTREE,
  UNIQUE INDEX `email`(`email`) USING BTREE,
  UNIQUE INDEX `bank_account`(`bank_account`) USING BTREE,
  INDEX `idx_status`(`status`) USING BTREE,
  INDEX `idx_deleted_at`(`deleted_at`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '基金--机构受益表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for hg_org_beneficiary_transaction
-- ----------------------------
DROP TABLE IF EXISTS `hg_org_beneficiary_transaction`;
CREATE TABLE `hg_org_beneficiary_transaction`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '交易ID',
  `beneficiary_id` int(11) NOT NULL COMMENT '受助单位ID',
  `project_id` int(11) NOT NULL COMMENT '关联项目ID',
  `plan_amount` bigint(20) NULL DEFAULT NULL COMMENT '计划拨付金额（分）',
  `actual_amount` bigint(20) NULL DEFAULT NULL COMMENT '实际到账金额（分）',
  `beneficiary_count` int(11) NULL DEFAULT NULL COMMENT '本次受助人数',
  `beneficiary_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '受助人员备注信息',
  `support_type` tinyint(4) NULL DEFAULT NULL COMMENT '受助方式（1=资金 2=物资 3=服务）',
  `transfer_mode` tinyint(4) NULL DEFAULT NULL COMMENT '拨付方式（1=银行转账 2=现金 3=物资发放）',
  `exec_status` tinyint(4) NULL DEFAULT NULL COMMENT '执行状态（1=审核中 2=已拨付 3=已到账 4=已终止）',
  `plan_date` date NULL DEFAULT NULL COMMENT '计划拨付日期',
  `actual_date` date NULL DEFAULT NULL COMMENT '实际到账日期',
  `portrait_authorization` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '肖像授权函文件路径（多文件用;分隔）',
  `funding_agreement` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '资助协议书路径（多文件用;分隔）',
  `receipt_photos` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '签收单照片路径（多文件用;分隔）',
  `donation_goods_photos` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '捐赠物品照片路径（多文件用;分隔）',
  `process_photos` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '捐赠过程照片路径（多文件用;分隔）',
  `group_photos` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '捐赠合影路径（多文件用;分隔）',
  `video_files` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '捐助视频路径（多文件用;分隔）',
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '执行备注',
  `status` tinyint(4) NULL DEFAULT NULL COMMENT '状态',
  `created_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `updated_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `created_at` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `deleted_at` datetime NULL DEFAULT NULL COMMENT '删除时间',
  `remarks` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '备注',
  `platform_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '公益平台名称',
  `portrait_authorization_remarks` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '肖像授权函文件备注',
  `funding_agreement_remarks` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '资助协议书文件备注',
  `receipt_photos_remarks` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '签收单照片文件备注',
  `donation_goods_photos_remarks` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '捐赠物品照片文件备注',
  `process_photos_remarks` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '捐赠过程照片文件备注',
  `group_photos_remarks` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '捐赠合影文件备注',
  `video_files_remarks` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '捐助视频文件备注',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_beneficiary_id`(`beneficiary_id`) USING BTREE,
  INDEX `idx_project_id`(`project_id`) USING BTREE,
  INDEX `idx_support_type`(`support_type`) USING BTREE,
  INDEX `idx_exec_status`(`exec_status`) USING BTREE,
  INDEX `idx_status`(`status`) USING BTREE,
  INDEX `idx_deleted_at`(`deleted_at`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '基金--机构受益交易表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for hg_org_donor
-- ----------------------------
DROP TABLE IF EXISTS `hg_org_donor`;
CREATE TABLE `hg_org_donor`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `org_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '单位名称',
  `business_license_number` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '营业执照号码',
  `reg_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '注册地址',
  `contact_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '联系人姓名',
  `contact_position` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '联系人职务',
  `mobile` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '联系电话',
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '邮箱',
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '状态',
  `created_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '创建者',
  `updated_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '更新者',
  `created_at` datetime NOT NULL COMMENT '创建时间',
  `updated_at` datetime NOT NULL COMMENT '修改时间',
  `deleted_at` datetime NULL DEFAULT NULL COMMENT '删除时间',
  `business_license_file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '营业执照上传文件路径',
  `contact_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '联系地址',
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `unique_business_license_number`(`business_license_number`) USING BTREE,
  UNIQUE INDEX `unique_email`(`email`) USING BTREE,
  INDEX `idx_status`(`status`) USING BTREE,
  INDEX `idx_deleted_at`(`deleted_at`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '基金--单位捐赠方表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for hg_org_donor_transaction
-- ----------------------------
DROP TABLE IF EXISTS `hg_org_donor_transaction`;
CREATE TABLE `hg_org_donor_transaction`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '交易ID',
  `donor_id` int(11) NOT NULL COMMENT '企业ID',
  `donation_method` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '捐赠方式',
  `amount` bigint(20) NOT NULL COMMENT '捐赠金额（分）',
  `fair_value` bigint(20) NOT NULL COMMENT '公允价值（分）',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '捐赠描述',
  `project_id` int(11) NOT NULL COMMENT '关联项目ID',
  `platform` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '捐赠平台',
  `invoice_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '开票状态',
  `transaction_time` datetime NOT NULL COMMENT '捐赠时间',
  `created_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '创建者',
  `updated_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '更新者',
  `created_at` datetime NOT NULL COMMENT '创建时间',
  `updated_at` datetime NOT NULL COMMENT '修改时间',
  `deleted_at` datetime NULL DEFAULT NULL COMMENT '删除时间',
  `remarks` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_donor_id`(`donor_id`) USING BTREE,
  INDEX `idx_project_id`(`project_id`) USING BTREE,
  INDEX `idx_invoice_status`(`invoice_status`) USING BTREE,
  INDEX `idx_transaction_time`(`transaction_time`) USING BTREE,
  INDEX `idx_deleted_at`(`deleted_at`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '基金--单位捐赠方交易表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for hg_parent_project
-- ----------------------------
DROP TABLE IF EXISTS `hg_parent_project`;
CREATE TABLE `hg_parent_project`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '父项目ID',
  `project_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '父项目名称（唯一）',
  `record_no` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '父项目备案编号（唯一）',
  `purpose` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '父项目募捐目的',
  `start_date` date NOT NULL COMMENT '父项目开始日期',
  `end_date` date NOT NULL COMMENT '父项目截止日期',
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '父项目状态（1=进行中 2=已结项）',
  `created_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '创建者',
  `updated_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '更新者',
  `created_at` datetime NOT NULL COMMENT '创建时间',
  `updated_at` datetime NOT NULL COMMENT '修改时间',
  `deleted_at` datetime NULL DEFAULT NULL COMMENT '删除时间',
  `raise_method` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '公开募捐方式',
  `raise_region` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '募捐地域（1=全国 2=河北）',
  `accept_method` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '接受捐赠方式',
  `online_platform` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '互联网募捐平台名称',
  `beneficiaries` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '受益人（文本信息）',
  `fund_usage` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '款物用途',
  `cost_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '募捐成本',
  `surplus_process` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '剩余财产处理',
  `project_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '项目状态（1=进行中 2=已结项）',
  `remarks` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '备注',
  `project_info_attachments` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '多个项目立项附件（路径或链接，JSON格式存储）',
  `project_info_attachments_remarks` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '项目立项附件备注',
  `record_amendments_attachments` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '多个备案补正附件（路径或链接，JSON格式存储）',
  `record_amendments_attachments_remarks` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '备案补正附件备注',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `unique_project_name`(`project_name`) USING BTREE,
  UNIQUE INDEX `unique_record_no`(`record_no`) USING BTREE,
  INDEX `idx_status`(`status`) USING BTREE,
  INDEX `idx_project_status`(`project_status`) USING BTREE,
  INDEX `idx_start_date`(`start_date`) USING BTREE,
  INDEX `idx_end_date`(`end_date`) USING BTREE,
  INDEX `idx_deleted_at`(`deleted_at`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '基金--父项目表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for hg_person_beneficiary
-- ----------------------------
DROP TABLE IF EXISTS `hg_person_beneficiary`;
CREATE TABLE `hg_person_beneficiary`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '姓名（必填）',
  `beneficiary_no` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '受助人编号（例：202504000001）',
  `photo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '本人照片（多张）',
  `id_card` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '身份证号（唯一）',
  `id_card_front` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '身份证正面照片',
  `id_card_back` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '身份证背面照片',
  `mobile` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '手机号（唯一）',
  `household` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '户籍地址',
  `household_photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '户主照片',
  `household_page` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '本人户口本页照片',
  `school_info` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '就读学校及班级',
  `guardian_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '监护人姓名',
  `guardian_mobile` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '监护人电话',
  `guardian_relation` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '监护人关系',
  `other_contact_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '其他联系人姓名',
  `other_contact_mobile` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '其他联系人电话',
  `other_contact_relation` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '其他联系人关系',
  `supporting_docs` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '家庭经济困难/特殊情况材料文件',
  `bank_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '银行开户行名称',
  `bank_account` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '卡号',
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '状态',
  `created_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '创建者',
  `updated_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '更新者',
  `created_at` datetime NOT NULL COMMENT '创建时间',
  `updated_at` datetime NOT NULL COMMENT '修改时间',
  `deleted_at` datetime NULL DEFAULT NULL COMMENT '删除时间',
  `gender` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '性别（1: 男, 2: 女）',
  `age` int(11) NOT NULL COMMENT '年龄',
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '备注',
  `audit_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '审核状态（0: 待审核, 1: 已审核）',
  `audit_comments` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '审核意见',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `unique_id_card`(`id_card`) USING BTREE,
  UNIQUE INDEX `unique_mobile`(`mobile`) USING BTREE,
  INDEX `idx_status`(`status`) USING BTREE,
  INDEX `idx_audit_status`(`audit_status`) USING BTREE,
  INDEX `idx_deleted_at`(`deleted_at`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '基金--个人受助人表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for hg_person_beneficiary_transaction
-- ----------------------------
DROP TABLE IF EXISTS `hg_person_beneficiary_transaction`;
CREATE TABLE `hg_person_beneficiary_transaction`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '交易ID',
  `beneficiary_id` int(11) NOT NULL COMMENT '受助个人ID',
  `project_id` int(11) NOT NULL COMMENT '关联项目ID',
  `plan_amount` bigint(20) NOT NULL COMMENT '计划拨付金额（分）',
  `actual_amount` bigint(20) NOT NULL COMMENT '实际到账金额（分）',
  `support_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '受助方式（1=资金 2=物资 3=服务）',
  `transfer_mode` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '拨付方式（1=银行转账 2=现金 3=物资发放）',
  `exec_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '执行状态（1=审核中 2=已拨付 3=已到账 4=已终止）',
  `plan_date` date NOT NULL COMMENT '计划拨付日期',
  `actual_date` date NULL DEFAULT NULL COMMENT '实际到账日期',
  `portrait_authorization` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '肖像授权函文件路径（多文件用;分隔）',
  `funding_agreement` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '资助协议书路径（多文件用;分隔）',
  `receipt_photos` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '签收单照片路径（多文件用;分隔）',
  `donation_goods_photos` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '捐赠物品照片路径（多文件用;分隔）',
  `process_photos` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '捐赠过程照片路径（多文件用;分隔）',
  `group_photos` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '捐赠合影路径（多文件用;分隔）',
  `video_files` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '捐助视频路径（多文件用;分隔）',
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '执行备注',
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '状态',
  `created_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '创建者',
  `updated_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '更新者',
  `created_at` datetime NOT NULL COMMENT '创建时间',
  `updated_at` datetime NOT NULL COMMENT '修改时间',
  `deleted_at` datetime NULL DEFAULT NULL COMMENT '删除时间',
  `remarks` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '备注',
  `platform_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '公益平台名称',
  `portrait_authorization_remarks` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '肖像授权函备注（多条备注用;分隔）',
  `funding_agreement_remarks` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '资助协议书备注（多条备注用;分隔）',
  `receipt_photos_remarks` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '签收单照片备注（多条备注用;分隔）',
  `donation_goods_photos_remarks` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '捐赠物品照片备注（多条备注用;分隔）',
  `process_photos_remarks` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '捐赠过程照片备注（多条备注用;分隔）',
  `group_photos_remarks` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '捐赠合影备注（多条备注用;分隔）',
  `video_files_remarks` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '捐助视频备注（多条备注用;分隔）',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_beneficiary_id`(`beneficiary_id`) USING BTREE,
  INDEX `idx_project_id`(`project_id`) USING BTREE,
  INDEX `idx_support_type`(`support_type`) USING BTREE,
  INDEX `idx_exec_status`(`exec_status`) USING BTREE,
  INDEX `idx_status`(`status`) USING BTREE,
  INDEX `idx_deleted_at`(`deleted_at`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '基金--个人受助人交易表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for hg_person_donor
-- ----------------------------
DROP TABLE IF EXISTS `hg_person_donor`;
CREATE TABLE `hg_person_donor`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '姓名',
  `gender` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '性别（0=未知 1=男 2=女）',
  `mobile` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '联系电话',
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '邮箱',
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '状态',
  `created_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '创建者',
  `updated_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '更新者',
  `created_at` datetime NOT NULL COMMENT '创建时间',
  `updated_at` datetime NOT NULL COMMENT '修改时间',
  `deleted_at` datetime NULL DEFAULT NULL COMMENT '删除时间',
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '所在地区',
  `occupation` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '职业',
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '备注',
  `contact_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '联系地址',
  `wechat_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '微信号',
  `age_group` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '年龄段',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `unique_mobile`(`mobile`) USING BTREE,
  UNIQUE INDEX `unique_email`(`email`) USING BTREE,
  INDEX `idx_status`(`status`) USING BTREE,
  INDEX `idx_deleted_at`(`deleted_at`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '基金--个人捐赠方表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for hg_person_donor_transaction
-- ----------------------------
DROP TABLE IF EXISTS `hg_person_donor_transaction`;
CREATE TABLE `hg_person_donor_transaction`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '交易ID',
  `donor_id` int(11) NOT NULL COMMENT '捐赠人ID',
  `donation_method` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '捐赠方式',
  `amount` bigint(20) NOT NULL COMMENT '捐赠金额（单位：分）',
  `fair_value` bigint(20) NULL DEFAULT NULL COMMENT '公允价值（单位：分）',
  `description` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '捐赠描述',
  `project_id` int(11) NOT NULL COMMENT '关联项目ID',
  `platform` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '捐赠平台',
  `transaction_time` datetime NOT NULL COMMENT '捐赠时间',
  `invoice_status` tinyint(4) NULL DEFAULT 0 COMMENT '开票状态',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '状态',
  `created_by` int(11) NULL DEFAULT NULL COMMENT '创建者',
  `updated_by` int(11) NULL DEFAULT NULL COMMENT '更新者',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `deleted_at` datetime NULL DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_donor_id`(`donor_id`) USING BTREE,
  INDEX `idx_project_id`(`project_id`) USING BTREE,
  INDEX `idx_transaction_time`(`transaction_time`) USING BTREE,
  INDEX `idx_invoice_status`(`invoice_status`) USING BTREE,
  INDEX `idx_status`(`status`) USING BTREE,
  INDEX `idx_deleted_at`(`deleted_at`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '基金--个人捐赠人交易表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for hg_project_cost
-- ----------------------------
DROP TABLE IF EXISTS `hg_project_cost`;
CREATE TABLE `hg_project_cost`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '费用ID',
  `sub_project_id` int(11) NOT NULL COMMENT '子项目ID',
  `cost_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '费用名称',
  `cost_ratio` decimal(5, 2) NOT NULL COMMENT '费用比例（百分比）',
  `allocated_amount` decimal(12, 2) NOT NULL COMMENT '根据比例计算出的分配金额（元）',
  `spent_amount` decimal(12, 2) NOT NULL DEFAULT 0.00 COMMENT '已花费金额（元）',
  `remaining_amount` decimal(12, 2) NOT NULL COMMENT '剩余可花费金额（元）',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_sub_project_id`(`sub_project_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '基金--项目成本表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for hg_project_cost_detail
-- ----------------------------
DROP TABLE IF EXISTS `hg_project_cost_detail`;
CREATE TABLE `hg_project_cost_detail`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '费用明细ID',
  `project_cost_id` int(11) NOT NULL COMMENT '定制字段ID',
  `expense_item` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '费用项（例如：广告费、员工薪资等）',
  `amount` decimal(10, 2) NOT NULL COMMENT '费用金额（元）',
  `expense_date` date NOT NULL COMMENT '费用支出日期',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_project_cost_id`(`project_cost_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '基金--项目费用明细表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for hg_project_operation
-- ----------------------------
DROP TABLE IF EXISTS `hg_project_operation`;
CREATE TABLE `hg_project_operation`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '记录ID',
  `flow_direction` tinyint(4) NOT NULL COMMENT '资金流向（1=入账 2=出账）',
  `project_id` int(11) NOT NULL COMMENT '关联项目ID',
  `fee_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '费用名称',
  `fee_detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '费用明细',
  `amount` bigint(20) NOT NULL COMMENT '金额（单位：分）',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '记录状态',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `remarks` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_project_id`(`project_id`) USING BTREE,
  INDEX `idx_flow_direction`(`flow_direction`) USING BTREE,
  INDEX `idx_status`(`status`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '基金--项目运营记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for hg_project_summary
-- ----------------------------
DROP TABLE IF EXISTS `hg_project_summary`;
CREATE TABLE `hg_project_summary`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '资金汇总ID',
  `sub_project_id` int(11) NOT NULL COMMENT '子项目ID',
  `total_amount` decimal(15, 2) NOT NULL COMMENT '子项目总资金（元）',
  `total_spent` decimal(15, 2) NOT NULL DEFAULT 0.00 COMMENT '子项目已花费资金（元）',
  `remaining_amount` decimal(15, 2) NOT NULL COMMENT '子项目剩余可用资金（元）',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_sub_project_id`(`sub_project_id`) USING BTREE,
  INDEX `idx_sub_project_id`(`sub_project_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '基金--项目资金汇总表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for hg_project_transaction
-- ----------------------------
DROP TABLE IF EXISTS `hg_project_transaction`;
CREATE TABLE `hg_project_transaction`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '交易ID',
  `project_id` int(11) NOT NULL COMMENT '项目ID',
  `individual_donation_amount` bigint(20) NULL DEFAULT 0 COMMENT '个人捐赠资金（分）',
  `organization_donation_amount` bigint(20) NULL DEFAULT 0 COMMENT '单位捐赠资金（分）',
  `individual_assistance_amount` bigint(20) NULL DEFAULT 0 COMMENT '个人受助金额（分）',
  `organization_assistance_amount` bigint(20) NULL DEFAULT 0 COMMENT '单位受助金额（分）',
  `individual_donation_fair_value` bigint(20) NULL DEFAULT 0 COMMENT '个人捐赠公允价值（分）',
  `organization_donation_fair_value` bigint(20) NULL DEFAULT 0 COMMENT '单位捐赠公允价值（分）',
  `individual_assistance_fair_value` bigint(20) NULL DEFAULT 0 COMMENT '个人受助公允价值（分）',
  `organization_assistance_fair_value` bigint(20) NULL DEFAULT 0 COMMENT '单位受助公允价值（分）',
  `individual_donation_fair_value_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '个人捐赠公允价值物品描述',
  `organization_donation_fair_value_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '单位捐赠公允价值物品描述',
  `individual_assistance_fair_value_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '个人受助公允价值物品描述',
  `organization_assistance_fair_value_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '单位受助公允价值物品描述',
  `transaction_date` date NOT NULL COMMENT '交易日期',
  `balance` bigint(20) NOT NULL COMMENT '结余（分）',
  `fund_flow` tinyint(4) NOT NULL COMMENT '资金流向（1：出账，2：入账）',
  `project_income_amount` bigint(20) NULL DEFAULT 0 COMMENT '项目收入金额（分）',
  `project_expense_amount` bigint(20) NULL DEFAULT 0 COMMENT '项目支出金额（分）',
  `project_expense_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '项目收支费用名称',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_project_id`(`project_id`) USING BTREE,
  INDEX `idx_transaction_date`(`transaction_date`) USING BTREE,
  INDEX `idx_fund_flow`(`fund_flow`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '基金--项目资金交易表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for hg_sub_project
-- ----------------------------
DROP TABLE IF EXISTS `hg_sub_project`;
CREATE TABLE `hg_sub_project`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '子项目ID',
  `parent_project_id` int(11) NOT NULL COMMENT '父项目ID',
  `project_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '子项目名称（父项目+平台名称）',
  `platform_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '子项目所属平台名称',
  `fund_target` decimal(10, 2) NOT NULL COMMENT '子项目筹款目标金额（万元）',
  `start_date` date NOT NULL COMMENT '子项目开始日期',
  `end_date` date NOT NULL COMMENT '子项目截止日期',
  `fund_raised` decimal(15, 2) NOT NULL COMMENT '已筹款金额（元）',
  `management_fee` decimal(15, 2) NOT NULL COMMENT '管理费（元）',
  `donated_fund` decimal(15, 2) NOT NULL COMMENT '支出善款（元）',
  `surplus_fund` decimal(15, 2) NOT NULL COMMENT '节余资金（元）',
  `cooperation_status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '项目状态（1=进行中 2=已结项）',
  `donor_count` int(11) NOT NULL DEFAULT 0 COMMENT '已捐赠人数',
  `record_start_date` date NULL DEFAULT NULL COMMENT '备案起始时间',
  `record_end_date` date NULL DEFAULT NULL COMMENT '备案终止时间',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '子项目状态（1=进行中 2=已结项）',
  `created_by` int(11) NOT NULL COMMENT '创建者',
  `updated_by` int(11) NOT NULL COMMENT '更新者',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `deleted_at` datetime NULL DEFAULT NULL COMMENT '删除时间',
  `cooperation_institution_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '合作机构名称',
  `cooperation_institution_id` int(11) NULL DEFAULT NULL COMMENT '合作机构ID',
  `custom_field_1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '自定义字段1',
  `custom_field_1_ratio` decimal(10, 2) NULL DEFAULT NULL COMMENT '自定义字段1对应比例',
  `custom_field_2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '自定义字段2',
  `custom_field_2_ratio` decimal(10, 2) NULL DEFAULT NULL COMMENT '自定义字段2对应比例',
  `custom_field_3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '自定义字段3',
  `custom_field_3_ratio` decimal(10, 2) NULL DEFAULT NULL COMMENT '自定义字段3对应比例',
  `custom_field_4` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '自定义字段4',
  `custom_field_4_ratio` decimal(10, 2) NULL DEFAULT NULL COMMENT '自定义字段4对应比例',
  `custom_field_5` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '自定义字段5',
  `custom_field_5_ratio` decimal(10, 2) NULL DEFAULT NULL COMMENT '自定义字段5对应比例',
  `custom_field_6` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '自定义字段6',
  `custom_field_6_ratio` decimal(10, 2) NULL DEFAULT NULL COMMENT '自定义字段6对应比例',
  `custom_field_7` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '自定义字段7',
  `custom_field_7_ratio` decimal(10, 2) NULL DEFAULT NULL COMMENT '自定义字段7对应比例',
  `custom_field_8` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '自定义字段8',
  `custom_field_8_ratio` decimal(10, 2) NULL DEFAULT NULL COMMENT '自定义字段8对应比例',
  `custom_field_9` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '自定义字段9',
  `custom_field_9_ratio` decimal(10, 2) NULL DEFAULT NULL COMMENT '自定义字段9对应比例',
  `custom_field_10` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '自定义字段10',
  `custom_field_10_ratio` decimal(10, 2) NULL DEFAULT NULL COMMENT '自定义字段10对应比例',
  `custom_field_11` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '自定义字段11',
  `custom_field_11_ratio` decimal(10, 2) NULL DEFAULT NULL COMMENT '自定义字段11对应比例',
  `custom_field_12` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '自定义字段12',
  `custom_field_12_ratio` decimal(10, 2) NULL DEFAULT NULL COMMENT '自定义字段12对应比例',
  `custom_field_13` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '自定义字段13',
  `custom_field_13_ratio` decimal(10, 2) NULL DEFAULT NULL COMMENT '自定义字段13对应比例',
  `custom_field_14` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '自定义字段14',
  `custom_field_14_ratio` decimal(10, 2) NULL DEFAULT NULL COMMENT '自定义字段14对应比例',
  `custom_field_15` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '自定义字段15',
  `custom_field_15_ratio` decimal(10, 2) NULL DEFAULT NULL COMMENT '自定义字段15对应比例',
  `custom_field_16` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '自定义字段16',
  `custom_field_16_ratio` decimal(10, 2) NULL DEFAULT NULL COMMENT '自定义字段16对应比例',
  `custom_field_17` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '自定义字段17',
  `custom_field_17_ratio` decimal(10, 2) NULL DEFAULT NULL COMMENT '自定义字段17对应比例',
  `custom_field_18` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '自定义字段18',
  `custom_field_18_ratio` decimal(10, 2) NULL DEFAULT NULL COMMENT '自定义字段18对应比例',
  `custom_field_19` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '自定义字段19',
  `custom_field_19_ratio` decimal(10, 2) NULL DEFAULT NULL COMMENT '自定义字段19对应比例',
  `custom_field_20` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '自定义字段20',
  `custom_field_20_ratio` decimal(10, 2) NULL DEFAULT NULL COMMENT '自定义字段20对应比例',
  `field_name_row_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '字段名称行ID',
  `budget_row_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '预算额度行ID',
  `expense_row_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '支出行ID',
  `balance_row_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '结余行ID',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_parent_project_id`(`parent_project_id`) USING BTREE,
  INDEX `idx_cooperation_institution_id`(`cooperation_institution_id`) USING BTREE,
  INDEX `idx_status`(`status`) USING BTREE,
  INDEX `idx_cooperation_status`(`cooperation_status`) USING BTREE,
  INDEX `idx_start_date`(`start_date`) USING BTREE,
  INDEX `idx_end_date`(`end_date`) USING BTREE,
  INDEX `idx_deleted_at`(`deleted_at`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '基金--子项目表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for hg_sub_project_cooperation
-- ----------------------------
DROP TABLE IF EXISTS `hg_sub_project_cooperation`;
CREATE TABLE `hg_sub_project_cooperation`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '关系ID',
  `sub_project_id` int(11) NOT NULL COMMENT '子项目ID',
  `cooperation_institution_id` int(11) NOT NULL COMMENT '合作机构ID',
  `sub_project_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '子项目名称',
  `cooperation_institution_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '合作机构名称',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_sub_project_id`(`sub_project_id`) USING BTREE,
  INDEX `idx_cooperation_institution_id`(`cooperation_institution_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '基金--子项目合作关系表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for hg_sub_project_custom_fields
-- ----------------------------
DROP TABLE IF EXISTS `hg_sub_project_custom_fields`;
CREATE TABLE `hg_sub_project_custom_fields`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '记录ID',
  `sub_project_id` int(11) NOT NULL COMMENT '子项目ID',
  `row_type` tinyint(4) NOT NULL COMMENT '行类型（1=字段名称行 2=预算额度行 3=支出行 4=结余行）',
  `project_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '项目名称',
  `fund_raised` decimal(15, 2) NOT NULL COMMENT '已筹款总额',
  `fund_flow` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '资金流向',
  `management_fee` decimal(15, 2) NOT NULL COMMENT '管理费',
  `custom_field_1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '自定义字段1内容',
  `custom_field_2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '自定义字段2内容',
  `custom_field_3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '自定义字段3内容',
  `custom_field_4` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '自定义字段4内容',
  `custom_field_5` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '自定义字段5内容',
  `custom_field_6` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '自定义字段6内容',
  `custom_field_7` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '自定义字段7内容',
  `custom_field_8` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '自定义字段8内容',
  `custom_field_9` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '自定义字段9内容',
  `custom_field_10` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '自定义字段10内容',
  `custom_field_11` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '自定义字段11内容',
  `custom_field_12` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '自定义字段12内容',
  `custom_field_13` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '自定义字段13内容',
  `custom_field_14` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '自定义字段14内容',
  `custom_field_15` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '自定义字段15内容',
  `custom_field_16` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '自定义字段16内容',
  `custom_field_17` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '自定义字段17内容',
  `custom_field_18` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '自定义字段18内容',
  `custom_field_19` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '自定义字段19内容',
  `custom_field_20` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '自定义字段20内容',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_sub_project_id`(`sub_project_id`) USING BTREE,
  INDEX `idx_row_type`(`row_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '基金--子项目自定义字段表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for hg_sub_project_transactions
-- ----------------------------
DROP TABLE IF EXISTS `hg_sub_project_transactions`;
CREATE TABLE `hg_sub_project_transactions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '记录ID',
  `sub_project_id` int(11) NOT NULL COMMENT '子项目ID',
  `transaction_type` tinyint(4) NOT NULL COMMENT '交易类型（1=入账 2=出账）',
  `amount` decimal(15, 2) NOT NULL COMMENT '交易金额（元）',
  `transaction_date` date NOT NULL COMMENT '交易日期',
  `custom_field_value` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '自定义字段内容',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '交易描述',
  `created_at` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `CustomFieldIndex` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '自定义字段索引',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_sub_project_id`(`sub_project_id`) USING BTREE,
  INDEX `idx_transaction_type`(`transaction_type`) USING BTREE,
  INDEX `idx_transaction_date`(`transaction_date`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '基金--子项目交易记录表' ROW_FORMAT = DYNAMIC;

SET FOREIGN_KEY_CHECKS = 1;
