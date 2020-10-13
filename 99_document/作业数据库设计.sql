CREATE TABLE `JobConfigs` (
  `Id` char(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '����',
  `JobGroup` varchar(100) NULL COMMENT 'Job���飬Ϊ��ʱ����ӵ�Ĭ����',
  `Description` varchar(1000) NULL COMMENT 'job����',
  `TriggerType` int NOT NULL COMMENT '����������',
  `StartTime` datetime(6) NULL COMMENT '��������ʼʱ�䣬����������ΪAtʱ������ָ��',
  `EndTime` datetime(6) NULL COMMENT '����������ʱ��',
  `CronConfig` varchar(500) NULL COMMENT 'Cron����������',
  `SimpleIntervalUnit` int NULL COMMENT '�򵥴�������ѭ����λ',
  `SimpleIntervalValue` int NULL COMMENT '�򵥴�������ѭ��ֵ',
  `ExecCount` int NULL COMMENT '���ִ�д�����������ʱ��Ϊһֱִ��',
  `Priority` int NULL COMMENT '���ȼ�(ͬһʱ��ִ��ʱ��Ч)',
  `IsActive` bit(1) NOT NULL COMMENT '�Ƿ񼤻�',
  `HolidayCalendarId` char(36) NULL COMMENT '��������Id',
  `JobName` varchar(100) NOT NULL COMMENT 'Job����',
  `Params` text NULL COMMENT 'Job����',
  `JobExecType` int NOT NULL COMMENT 'jobִ������',
  `ExecLocation` varchar(500) NOT NULL COMMENT '�õ�ַ(apiʱΪurl��reflectʱΪ�ඨ����Ϣ)',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `HolidayCalendars` (
  `Id` char(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '����',
  `Description` varchar(1000) NULL COMMENT 'job����',
  `Config` text NOT NULL COMMENT '����ֵ����;�Ÿ���',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;