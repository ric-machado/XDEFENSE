-- PostgreSQL DDL — schema: xwindows
-- Gerado por scripts/pg_convert.sh a partir de XWINDOWS_sqlite.sql
-- NÃO edite manualmente; re-execute o script para regenerar.

SET search_path = "xwindows", public;

CREATE TABLE IF NOT EXISTS "WINDOWSCOMPUTERACCOUNT" (
	"WindowsComputerAccountID" INTEGER NOT NULL,
	"AccountID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "WINDOWSCRITICALSECTION" (
	"WindowsCriticalSectionID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "WINDOWSDRIVER" (
	"WindowsDriverID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "WINDOWSDRIVETYPE" (
	"WindowsDriveTypeID" INTEGER NOT NULL,
	"WindowsDriveTypeName" TEXT NOT NULL,
	"WindowsDriveTypeDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"BLOB" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "WINDOWSEVENT" (
	"WindowsEventID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "WINDOWSEVENTLOG" (
	"WindowsEventLogID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "WINDOWSEXECUTABLEFILE" (
	"WindowsExecutableFileID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "WINDOWSFILE" (
	"WindowsFileID" INTEGER NOT NULL,
	"WindowsFileGUID" TEXT NULL,
	"FileID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"suspected_malicious" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "WINDOWSGROUP" (
	"WindowsGroupID" INTEGER NOT NULL,
	"WindowsGroupName" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "WINDOWSGROUPFORWINDOWSUSERACCOUNT" (
	"WindowsGroupWindowsUserAccountID" INTEGER NOT NULL,
	"WindowsGroupID" INTEGER NOT NULL,
	"WindowsUserAccountID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "WINDOWSHANDLE" (
	"WindowsHandleID" INTEGER NOT NULL,
	"WindowsHandleObjectID" INTEGER NULL,
	"WindowsHandleName" TEXT NULL,
	"HandleTypeID" INTEGER NULL,
	"Object_Address" INTEGER NULL,
	"Access_Mask" INTEGER NULL,
	"Pointer_Count" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"CollectionMethodID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "WINDOWSHANDLELIST" (
	"WindowsHandleListID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"CollectionMethodID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "WINDOWSHANDLELISTHANDLES" (
	"WindowsHandleListHandlesID" INTEGER NOT NULL,
	"WindowsHandleListID" INTEGER NOT NULL,
	"WindowsHandleID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"CollectionMethodID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "WINDOWSHANDLETYPE" (
	"WindowsHandleTypeID" INTEGER NOT NULL,
	"HandleTypeID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "WINDOWSKERNELHOOK" (
	"WindowsKernelHookID" INTEGER NOT NULL,
	"Digital_Signature_Hooking" TEXT NULL,
	"DigitalSignatureInfoHookingID" INTEGER NULL,
	"Digital_Signature_Hooked" TEXT NULL,
	"DigitalSignatureInfoHookedID" INTEGER NULL,
	"Hooking_Address" INTEGER NULL,
	"Hook_Description" TEXT NULL,
	"Hooked_Function" TEXT NULL,
	"FunctionHookedID" INTEGER NULL,
	"Hooked_Module" TEXT NULL,
	"ModuleHookedID" INTEGER NULL,
	"Hooking_Module" TEXT NULL,
	"KernelHookID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"CollectionMethodID" INTEGER NULL,
	"DetectionMethodID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "WINDOWSKERNELOBJECT" (
	"WindowsKernelObjectID" INTEGER NOT NULL,
	"IDTEntryListID" INTEGER NULL,
	"SSDTEntryListID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"CollectionMethodID" INTEGER NULL,
	"CollectionToolID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "WINDOWSMAILSLOT" (
	"WindowsMailslotID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "WINDOWSMEMORYPAGEREGION" (
	"WindowsMemoryPageRegionID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "WINDOWSMUTEX" (
	"WindowsMutexID" INTEGER NOT NULL,
	"WindowsHandleID" INTEGER NULL,
	"MutexID" INTEGER NULL,
	"Security_Attributes" TEXT NULL,
	"WindowsMutexDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "WINDOWSMUTEXHANDLE" (
	"WindowsMutexHandleID" INTEGER NOT NULL,
	"WindowsMutexID" INTEGER NOT NULL,
	"WindowsHandleID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "WINDOWSMUTEXSECURITYATTRIBUTE" (
	"WindowsMutexSecurityAttributeID" INTEGER NOT NULL,
	"WindowsMutexID" INTEGER NOT NULL,
	"SecurityAttributeID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "WINDOWSNETWORKROUTEENTRY" (
	"WindowsNetworkRouteEntryID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "WINDOWSNETWORKSHARE" (
	"WindowsNetworkShareID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "WINDOWSPIPEOBJECT" (
	"WindowsPipeObjectID" INTEGER NOT NULL,
	"PipeObjectID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "WINDOWSPREFETCHACCESSEDFILELIST" (
	"WindowsPrefetchObjectAccessedFileListID" INTEGER NOT NULL,
	"WindowsPrefetchObjectID" INTEGER NOT NULL,
	"AccessedFileListID" INTEGER NOT NULL,
	"BLOB" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "WINDOWSPREFETCHCHANGERECORD" (
	"WindowsPrefetchChangeRecordID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "WINDOWSPREFETCHOBJECT" (
	"WindowsPrefetchObjectID" INTEGER NOT NULL,
	"Application_File_Name" TEXT NULL,
	"FileID" INTEGER NULL,
	"CPEName" TEXT NULL,
	"Prefetch_Hash" TEXT NULL,
	"Times_Executed" INTEGER NULL,
	"First_Run" TEXT NULL,
	"Last_Run" TEXT NULL,
	"VolumeObjectID" INTEGER NULL,
	"WindowsVolumeID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "WINDOWSPRIVILEGE" (
	"WindowsPrivilegeID" INTEGER NOT NULL,
	"PrivilegeID" INTEGER NULL,
	"User_Right" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "WINDOWSPROCESS" (
	"WindowsProcessID" INTEGER NOT NULL,
	"ProcessID" INTEGER NULL,
	"WindowsProcessGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"aslr_enabled" INTEGER NULL,
	"dep_enabled" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "WINDOWSPROCESSTOKEN" (
	"WindowsProcessTokenID" INTEGER NOT NULL,
	"WindowsProcessID" INTEGER NOT NULL,
	"TokenID" INTEGER NOT NULL,
	"IntegrityLevelID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "WINDOWSREGISTRYKEYOBJECT" (
	"WindowsRegistryKeyObjectID" INTEGER NOT NULL,
	"Hive" TEXT NULL,
	"operation" TEXT NULL,
	"Full_Key" TEXT NULL,
	"RegistryHiveID" INTEGER NULL,
	"Number_Values" INTEGER NULL,
	"Name" TEXT NULL,
	"comment" TEXT NULL,
	"RegistryValuesID" INTEGER NULL,
	"Modified_Time" TEXT NULL,
	"Creator_Username" TEXT NULL,
	"AccountID" INTEGER NULL,
	"UserAccountID" INTEGER NULL,
	"WindowsUserAccountID" INTEGER NULL,
	"WindowsHandleListID" INTEGER NULL,
	"Number_Subkeys" INTEGER NULL,
	"RegistrySubkeysID" INTEGER NULL,
	"ByteRunsID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"CollectionMethodID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "WINDOWSSEMAPHORE" (
	"WindowsSemaphoreID" INTEGER NOT NULL,
	"SemaphoreID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "WINDOWSSERVICE" (
	"WindowsServiceID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "WINDOWSSYSTEM" (
	"WindowsSystemID" INTEGER NOT NULL,
	"SystemID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "WINDOWSSYSTEMRESTORE" (
	"WindowsSystemRestoreID" INTEGER NOT NULL,
	"Restore_Point_Description" TEXT NULL,
	"Restore_Point_Full_Path" TEXT NULL,
	"Restore_Point_Name" TEXT NULL,
	"Restore_Point_Type" TEXT NULL,
	"ACL_Change_SID" TEXT NULL,
	"ACL_Change_Username" TEXT NULL,
	"Backup_File_Name" TEXT NULL,
	"Change_Event" TEXT NULL,
	"ChangeLog_Entry_Flags" TEXT NULL,
	"ChangeLog_Entry_Sequence_Number" INTEGER NULL,
	"ChangeLog_Entry_Type" TEXT NULL,
	"Change_Log_File_Name" TEXT NULL,
	"Created" TEXT NULL,
	"File_Attributes" TEXT NULL,
	"New_File_Name" TEXT NULL,
	"Original_File_Name" TEXT NULL,
	"Original_Short_File_Name" TEXT NULL,
	"Process_Name" TEXT NULL,
	"Registry_Hive_List" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "WINDOWSTASK" (
	"WindowsTaskID" INTEGER NOT NULL,
	"TaskID" INTEGER NULL,
	"SessionCronID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"Status" TEXT NULL,
	"TaskStatusID" INTEGER NULL,
	"Priority" TEXT NULL,
	"TaskPriorityID" INTEGER NULL,
	"Name" TEXT NULL,
	"Application_Name" TEXT NULL,
	"ApplicationID" INTEGER NULL,
	"CPEName" TEXT NULL,
	"Parameters" TEXT NULL,
	"Flags" TEXT NULL,
	"Account_Name" TEXT NULL,
	"AccountID" INTEGER NULL,
	"Account_Run_Level" TEXT NULL,
	"Account_Logon_Type" TEXT NULL,
	"Creator" TEXT NULL,
	"Creation_Date" TEXT NULL,
	"Most_Recent_Run_Time" TEXT NULL,
	"Exit_Code" INTEGER NULL,
	"Max_Run_Time" INTEGER NULL,
	"Next_Run_Time" TEXT NULL,
	"Comment" TEXT NULL,
	"Working_Directory" TEXT NULL,
	"DirectoryID" INTEGER NULL,
	"Work_Item_Data" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "WINDOWSTHREAD" (
	"WindowsThreadID" INTEGER NOT NULL,
	"Thread_ID" INTEGER NULL,
	"WindowsHandleID" INTEGER NULL,
	"ThreadRunningStatusID" INTEGER NULL,
	"Running_Status" TEXT NULL,
	"Context" TEXT NULL,
	"Priority" INTEGER NULL,
	"Creation_Flags" TEXT NULL,
	"Creation_Time" TEXT NULL,
	"Start_Address" TEXT NULL,
	"StartMemoryAddressID" INTEGER NULL,
	"Parameter_Address" TEXT NULL,
	"ParameterMemoryAddressID" INTEGER NULL,
	"Security_Attributes" TEXT NULL,
	"Stack_Size" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "WINDOWSUSERACCOUNT" (
	"WindowsUserAccountID" INTEGER NOT NULL,
	"WindowsUserAccountGUID" TEXT NULL,
	"AccountID" INTEGER NULL,
	"UserAccountID" INTEGER NULL,
	"WindowsComputerAccountID" INTEGER NULL,
	"Security_ID" TEXT NULL,
	"Security_Type" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"TrustLevelID" INTEGER NULL,
	"TrustReasonID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"suspected_malicious" INTEGER NULL,
	"SuspectedMaliciousReasonID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "WINDOWSUSERACCOUNTCHANGERECORD" (
	"WindowsUserAccountChangeRecordID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "WINDOWSUSERACCOUNTPRIVILEGE" (
	"WindowsUserAccountPrivilegeID" INTEGER NOT NULL,
	"WindowsUserAccountID" INTEGER NOT NULL,
	"WindowsPrivilegeID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "WINDOWSVOLUME" (
	"WindowsVolumeID" INTEGER NOT NULL,
	"WindowsVolumeGUID" TEXT NULL,
	"VolumeObjectID" INTEGER NULL,
	"Drive_Letter" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "WINDOWSVOLUMEATTRIBUTE" (
	"WindowsVolumeAttributeID" INTEGER NOT NULL,
	"AttributeID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "WINDOWSVOLUMEATTRIBUTEENUM" (
	"WindowsVolumeAttributeEnumID" INTEGER NOT NULL,
	"WindowsVolumeAttributeEnumValue" TEXT NOT NULL,
	"WindowsVolumeAttributeEnumDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "WINDOWSVOLUMEATTRIBUTESLIST" (
	"WindowsVolumeAttributesListID" INTEGER NOT NULL,
	"WindowsVolumeID" INTEGER NOT NULL,
	"WindowsVolumeAttributeID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "WINDOWSVOLUMEENCRYPTION" (
	"WindowsVolumeEncryptionID" INTEGER NOT NULL,
	"WindowsVolumeID" INTEGER NOT NULL,
	"EncryptionID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "WINDOWSWAITABLETIMER" (
	"WindowsWaitableTimerID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "WINDOWSWAITABLETIMEROBJECT" (
	"WindowsWaitableTimerObjectID" INTEGER NOT NULL,
	"WindowsHandleID" INTEGER NULL,
	"WindowsWaitableTimerObjectName" TEXT NULL,
	"Security_Attributes" TEXT NULL,
	"WaitableTimerTypeID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "WINWAITABLETIMER" (
	"WinWaitableTimerID" INTEGER NOT NULL
);
