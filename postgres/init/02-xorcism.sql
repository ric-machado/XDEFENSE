-- PostgreSQL DDL — schema: xorcism
-- Gerado por scripts/pg_convert.sh a partir de XORCISM_sqlite.sql
-- NÃO edite manualmente; re-execute o script para regenerar.

SET search_path = "xorcism", public;

CREATE TABLE IF NOT EXISTS "ACCESSEDDIRECTORYLIST" (
	"AccessedDirectoryListID" INTEGER NOT NULL,
	"AccessedDirectoryListGUID" TEXT NULL,
	"AccessedDirectoryListName" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"ConfidenceReasonID" INTEGER NULL,
	"CollectionMethodID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"suspected_malicious" INTEGER NULL,
	"SuspectedMaliciousReasonID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ACCESSEDFILELIST" (
	"AccessedFileListID" INTEGER NOT NULL,
	"AccessedFileListGUID" TEXT NULL,
	"AccessedFileListName" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"ConfidenceReasonID" INTEGER NULL,
	"CollectionMethodID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"suspected_malicious" INTEGER NULL,
	"SuspectedMaliciousReasonID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ACCESSEDFILELISTFILES" (
	"AccessedFileListFileID" INTEGER NOT NULL,
	"AccessedFileListFileGUID" TEXT NULL,
	"AccessedFileListID" INTEGER NOT NULL,
	"AccessedFileListGUID" TEXT NULL,
	"FileID" INTEGER NOT NULL,
	"FileGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CollectionMethodID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"ConfidenceReasonID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "ACCESSRECORD" (
	"AccessRecordID" INTEGER NOT NULL,
	"AccessRecordGUID" TEXT NULL,
	"RecordGUID" TEXT NULL,
	"UserID" INTEGER NULL,
	"UserGUID" TEXT NULL,
	"AccessType" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"CollectionMethodID" INTEGER NULL,
	"suspected_malicious" INTEGER NULL,
	"SuspectedMaliciousReasonID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ACCESSRECORDEVIDENCE" (
	"AccessRecordEvidenceID" INTEGER NOT NULL,
	"AccessRecordID" INTEGER NULL,
	"AccessRecordGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ACCESSRECORDHASH" (
	"AccessRecordHashID" INTEGER NOT NULL,
	"AccessRecordHashGUID" TEXT NULL,
	"AccessRecordID" INTEGER NOT NULL,
	"HashValue" TEXT NOT NULL,
	"isEncrypted" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ACCOUNT" (
	"AccountID" INTEGER NOT NULL,
	"AccountGUID" TEXT NULL,
	"AccountName" TEXT NULL,
	"AccountDomain" TEXT NULL,
	"DomainNameID" INTEGER NULL,
	"DomainNameGUID" TEXT NULL,
	"AccountDescription" TEXT NULL,
	"Creation_Date" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"Modified_Date" TEXT NULL,
	"BLOB" TEXT NULL,
	"Last_Accessed_Time" TEXT NULL,
	"disabled" INTEGER NULL,
	"locked_out" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ValidityID" INTEGER NULL,
	"OrganisationID" INTEGER NULL,
	"OrganisationGUID" TEXT NULL,
	"PersonID" INTEGER NULL,
	"PersonGUID" TEXT NULL,
	"AssetID" INTEGER NULL,
	"AssetGUID" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"TrustLevelID" INTEGER NULL,
	"TrustReasonID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ACCOUNTAUTHENTICATION" (
	"AccountAuthenticationID" INTEGER NOT NULL,
	"AccountAuthenticationGUID" TEXT NULL,
	"AccountID" INTEGER NOT NULL,
	"AccountGUID" TEXT NULL,
	"AuthenticationTypeID" INTEGER NOT NULL,
	"AuthenticationTypeGUID" TEXT NULL,
	"Authentication_Data" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"Authentication_Token_Protection_Mechanism" TEXT NULL,
	"AuthenticationTokenProtectionMechanismID" INTEGER NULL,
	"AuthenticationTokenProtectionMechanismGUID" TEXT NULL,
	"StructuredAuthenticationMechanismID" INTEGER NULL,
	"StructuredAuthenticationMechanismGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"ConfidenceReasonID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "ACCOUNTAUTHENTICATIONTYPE" (
	"AccountAuthenticationTypeID" INTEGER NOT NULL,
	"AccountAuthenticationTypeGUID" TEXT NULL,
	"AccountID" INTEGER NOT NULL,
	"AccountGUID" TEXT NULL,
	"AuthenticationTypeID" INTEGER NOT NULL,
	"AuthenticationTypeGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ValidityID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"ConfidenceReasonID" INTEGER NULL,
	"TrustLevelID" INTEGER NULL,
	"TrustReasonID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ACCOUNTBLACKLIST" (
	"AccountBlacklistID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ACCOUNTCHANGERECORD" (
	"AccountChangeRecordID" INTEGER NOT NULL,
	"AccountChangeRecordGUID" TEXT NULL,
	"AccountID" INTEGER NOT NULL,
	"AccountGUID" TEXT NULL,
	"ChangeRecordID" INTEGER NOT NULL,
	"ChangeRecordGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ACCOUNTDESCRIPTION" (
	"AccountDescriptionID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "ACCOUNTWHITELIST" (
	"AccountWhitelistID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ACE" (
	"ACEID" INTEGER NOT NULL,
	"ACEGUID" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "ACL" (
	"ACLID" INTEGER NOT NULL,
	"ACLGUID" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "ACLENTRY" (
	"ACLEntryID" INTEGER NOT NULL,
	"ACLEntryGUID" TEXT NULL,
	"ACLID" INTEGER NULL,
	"ACLGUID" TEXT NULL,
	"ACEID" INTEGER NULL,
	"ACEGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"CreationObjectGUID" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ACRONYM" (
	"AcronymID" INTEGER NOT NULL,
	"AcronymGUID" TEXT NULL,
	"AcronymAbbreviation" TEXT NOT NULL,
	"AcronymPhrase" TEXT NOT NULL,
	"AcronymDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidityID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ACTION" (
	"ActionID" INTEGER NOT NULL,
	"ActionGUID" TEXT NULL,
	"ActionREFID" TEXT NULL,
	"ActionStatusID" INTEGER NULL,
	"ActionStatusName" TEXT NULL,
	"ordinal_position" INTEGER NULL,
	"ActionContextID" INTEGER NULL,
	"ActionContextName" TEXT NULL,
	"ActionTimestamp" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ActionDescription" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"isSuspicious" INTEGER NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "ACTIONACTION" (
	"ActionRelationshipID" INTEGER NOT NULL,
	"ActionRefID" INTEGER NOT NULL,
	"ActionRefGUID" TEXT NULL,
	"ActionRelationshipTypeID" INTEGER NOT NULL,
	"ActionRelationshipTypeName" TEXT NOT NULL,
	"ActionSubjectID" INTEGER NOT NULL,
	"ActionSubjectGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ACTIONACTIONARGUMENTNAME" (
	"ActionActionArgumentNameID" INTEGER NOT NULL,
	"ActionID" INTEGER NOT NULL,
	"ActionGUID" TEXT NULL,
	"ActionArgumentNameID" INTEGER NOT NULL,
	"ActionArgumentNameGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ACTIONACTIONNAME" (
	"ActionActionNameID" INTEGER NOT NULL,
	"ActionID" INTEGER NOT NULL,
	"ActionGUID" TEXT NULL,
	"ActionNameID" INTEGER NOT NULL,
	"ActionNameGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ACTIONACTIONTYPE" (
	"ActionActionTypeID" INTEGER NOT NULL,
	"ActionID" INTEGER NOT NULL,
	"ActionGUID" TEXT NULL,
	"ActionTypeID" INTEGER NOT NULL,
	"ActionTypeGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ACTIONALIAS" (
	"ActionAliasID" INTEGER NOT NULL,
	"ActionID" INTEGER NOT NULL,
	"ActionGUID" TEXT NULL,
	"ActionAlias" TEXT NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "ACTIONARGUMENTNAME" (
	"ActionArgumentNameID" INTEGER NOT NULL,
	"ActionArgumentNameGUID" TEXT NULL,
	"ActionArgumentNameName" TEXT NOT NULL,
	"ActionArgumentNameDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"EnumerationVersionID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ACTIONASSOCIATION" (
	"ActionAssociationID" INTEGER NOT NULL,
	"ActionObjectAssociationType" TEXT NOT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "ACTIONCOLLECTION" (
	"ActionCollectionID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "ACTIONCONTEXT" (
	"ActionContextID" INTEGER NOT NULL,
	"ActionContextGUID" TEXT NULL,
	"ActionContextName" TEXT NOT NULL,
	"ActionContextDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ACTIONDESCRIPTION" (
	"ActionDescriptionID" INTEGER NOT NULL,
	"ActionID" INTEGER NOT NULL,
	"ActionGUID" TEXT NULL,
	"DescriptionID" INTEGER NOT NULL,
	"DescriptionGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "ACTIONDISCOVERYMETHOD" (
	"ActionDiscoveryMethodID" INTEGER NOT NULL,
	"ActionID" INTEGER NOT NULL,
	"ActionGUID" TEXT NULL,
	"DiscoveryMethodID" INTEGER NOT NULL,
	"DiscoveryMethodGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "ACTIONIMPLEMENTATION" (
	"ActionImplementationID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "ACTIONNAME" (
	"ActionNameID" INTEGER NOT NULL,
	"ActionNameName" TEXT NOT NULL,
	"ActionNameDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"EnumerationVersionID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ACTIONOBJECTASSOCIATIONTYPE" (
	"ActionObjectAssociationTypeID" INTEGER NOT NULL,
	"ActionObjectAssociationTypeName" TEXT NOT NULL,
	"ActionObjectAssociationTypeDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"EnumerationVersionID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ACTIONPLAN" (
	"ActionPlanID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "ACTIONPOOL" (
	"ActionPoolID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "ACTIONRELATIONSHIPTYPE" (
	"ActionRelationshipTypeID" INTEGER NOT NULL,
	"ActionRelationshipTypeName" TEXT NOT NULL,
	"ActionRelationshipTypeDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"EnumerationVersionID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ACTIONSTATUS" (
	"ActionStatusID" INTEGER NOT NULL,
	"ActionStatusName" TEXT NOT NULL,
	"ActionStatusDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ACTIONTAKEN" (
	"ActionTakenID" INTEGER NOT NULL,
	"ActionTakenGUID" TEXT NULL,
	"ActionName" TEXT NOT NULL,
	"ActionDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ACTIONTAKENFORINCIDENT" (
	"ActionTakenForIncidentID" INTEGER NOT NULL,
	"ActionTakenID" INTEGER NOT NULL,
	"IncidentID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"CreationObjectID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ACTIONTAKENFORTHREATCAMPAIGN" (
	"ActionTakenForThreatCampaignID" INTEGER NOT NULL,
	"ActionTakenID" INTEGER NOT NULL,
	"ThreatCampaignID" INTEGER NOT NULL,
	"ThreatActorID" INTEGER NULL,
	"ActionStartDate" TEXT NULL,
	"ActionEndDate" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"CreationObjectID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ACTIONTYPE" (
	"ActionTypeID" INTEGER NOT NULL,
	"ActionTypeGUID" TEXT NULL,
	"ActionTypeName" TEXT NOT NULL,
	"ActionTypeDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"EnumerationVersionID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ACTIVATIONFUNCTION" (
	"ActivationFunctionID" INTEGER NOT NULL,
	"FunctionID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ACTIVATIONZONE" (
	"ActivationZoneID" INTEGER NOT NULL,
	"ActivationZoneGUID" TEXT NULL,
	"ActivationZoneText" TEXT NOT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "ACTIVATIONZONEFORATTACKPATTERN" (
	"AttackPatternActivationZoneID" INTEGER NOT NULL,
	"AttackPatternActivationZoneGUID" TEXT NULL,
	"ActivationZoneID" INTEGER NOT NULL,
	"ActivationZoneGUID" TEXT NULL,
	"AttackPatternID" INTEGER NOT NULL,
	"AttackPatternGUID" TEXT NULL,
	"capec_id" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ADDRESS" (
	"AddressID" INTEGER NOT NULL,
	"AddressGUID" TEXT NULL,
	"CategoryID" INTEGER NULL,
	"AddressCategoryID" INTEGER NULL,
	"category" TEXT NULL,
	"Address_Value" TEXT NULL,
	"VLAN_Name" TEXT NULL,
	"VLAN_Num" INTEGER NULL,
	"is_source" INTEGER NULL,
	"is_destination" INTEGER NULL,
	"is_spoofed" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"ConfidenceReasonID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"TrustLevelID" INTEGER NULL,
	"TrustReasonID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ADDRESSBLACKLIST" (
	"AddressBlacklistID" INTEGER NOT NULL,
	"AddressID" INTEGER NULL,
	"EmailID" INTEGER NULL,
	"emailaddress" TEXT NULL,
	"is_source" INTEGER NULL,
	"is_destination" INTEGER NULL,
	"OrganisationID" INTEGER NULL,
	"PersonID" INTEGER NULL,
	"AssetID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ADDRESSCATEGORY" (
	"AddressCategoryID" INTEGER NOT NULL,
	"AddressCategoryGUID" TEXT NULL,
	"CategoryID" INTEGER NULL,
	"AddressCategoryName" TEXT NULL,
	"AddressCategoryDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ADDRESSCOUNTRY" (
	"AddressCountryID" INTEGER NOT NULL,
	"AddressID" INTEGER NULL,
	"AddressGUID" TEXT NULL,
	"CountryID" INTEGER NULL,
	"CountryGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ADDRESSREPUTATION" (
	"AddressReputationID" INTEGER NOT NULL,
	"AddressID" INTEGER NULL,
	"AddressGUID" TEXT NULL,
	"ReputationID" INTEGER NULL,
	"ReputationGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ADDRESSWHITELIST" (
	"AddressWhitelistID" INTEGER NOT NULL,
	"AddressID" INTEGER NULL,
	"EmailID" INTEGER NULL,
	"emailaddress" TEXT NULL,
	"is_source" INTEGER NULL,
	"is_destination" INTEGER NULL,
	"OrganisationID" INTEGER NULL,
	"PersonID" INTEGER NULL,
	"AssetID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ADVISORY" (
	"AdvisoryID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "AFFECTEDRESOURCE" (
	"AffectedResourceID" INTEGER NOT NULL,
	"AffectedResourceName" TEXT NOT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "AGENT" (
	"AgentID" INTEGER NOT NULL,
	"AgentGUID" TEXT NULL,
	"ipaddressIPv4" TEXT NULL,
	"AgentStatus" TEXT NULL,
	"AgentLoadValue" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"SensorID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ALGEBRAIC" (
	"AlgebraicID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "ALGORITHM" (
	"AlgorithmID" INTEGER NOT NULL,
	"AlgorithmName" TEXT NULL,
	"AlgorithmVersion" TEXT NULL,
	"AlgorithmVersionID" INTEGER NULL,
	"AlgorithmDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"TrustLevelID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ALGORITHMDESCRIPTION" (
	"AlgorithmDescriptionID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "ALGORITHMREFERENCE" (
	"AlgorithmReferenceID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "ALGORITHMTAG" (
	"AlgorithmTagID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "ANTIBEHAVIORALANALYSISSTRATEGICOBJECTIVE" (
	"AntiBehavioralAnalysisStrategicObjectiveID" INTEGER NOT NULL,
	"AntiBehavioralAnalysisStrategicObjectiveName" TEXT NULL,
	"AntiBehavioralAnalysisStrategicObjectiveDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"EnumerationVersionID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ANTIBEHAVIORALANALYSISTACTICALOBJECTIVE" (
	"AntiBehavioralAnalysisTacticalObjectiveID" INTEGER NOT NULL,
	"AntiBehavioralAnalysisTacticalObjectiveName" TEXT NULL,
	"AntiBehavioralAnalysisTacticalObjectiveDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"EnumerationVersionID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ANTIBEHAVIORANALYSISPROPERTIES" (
	"AntiBehavioralAnalysisPropertiesID" INTEGER NOT NULL,
	"AntiBehavioralAnalysisPropertiesName" TEXT NULL,
	"AntiBehavioralAnalysisPropertiesDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"VocabularyID" INTEGER NULL,
	"EnumerationVersionID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ANTICODEANALYSISSTRATEGICOBJECTIVE" (
	"AntiCodeAnalysisStrategicObjectiveID" INTEGER NOT NULL,
	"AntiCodeAnalysisStrategicObjectiveName" TEXT NULL,
	"AntiCodeAnalysisStrategicObjectiveDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"EnumerationVersionID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ANTICODEANALYSISTACTICALOBJECTIVE" (
	"AntiCodeAnalysisTacticalObjectiveID" INTEGER NOT NULL,
	"AntiCodeAnalysisTacticalObjectiveName" TEXT NULL,
	"AntiCodeAnalysisTacticalObjectiveDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"EnumerationVersionID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ANTIDETECTIONSTRATEGICOBJECTIVE" (
	"AntiDetectionStrategicObjectiveID" INTEGER NOT NULL,
	"AntiDetectionStrategicObjectiveName" TEXT NULL,
	"AntiDetectionStrategicObjectiveDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"EnumerationVersionID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ANTIDETECTIONTACTICALOBJECTIVE" (
	"AntiDetectionTacticalObjectiveID" INTEGER NOT NULL,
	"AntiDetectionTacticalObjectiveName" TEXT NULL,
	"AntiDetectionTacticalObjectiveDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"EnumerationVersionID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ANTIREMOVALSTRATEGICOBJECTIVE" (
	"AntiRemovalStrategicObjectiveID" INTEGER NOT NULL,
	"AntiRemovalStrategicObjectiveName" TEXT NULL,
	"AntiRemovalStrategicObjectiveDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"EnumerationVersionID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "ANTIREMOVALTACTICALOBJECTIVE" (
	"AntiRemovalTacticalObjectiveID" INTEGER NOT NULL,
	"AntiRemovalTacticalObjectiveName" TEXT NULL,
	"AntiRemovalTacticalObjectiveDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"EnumerationVersionID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "API" (
	"APIID" INTEGER NOT NULL,
	"APIGUID" TEXT NULL,
	"APIName" TEXT NULL,
	"APIDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "APICALL" (
	"APICallID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "APIFUNCTION" (
	"APIFunctionID" INTEGER NOT NULL,
	"APIFunctionGUID" TEXT NULL,
	"APIID" INTEGER NOT NULL,
	"FunctionID" INTEGER NOT NULL,
	"Function_Name" TEXT NULL,
	"Normalized_Function_Name" TEXT NULL,
	"Address" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"APIFunctionDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "APIMEMORYADDRESS" (
	"APIMemoryAddressID" INTEGER NOT NULL,
	"APIID" INTEGER NOT NULL,
	"MemoryAddressID" INTEGER NOT NULL,
	"FunctionID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "APIPLATFORM" (
	"APIPlatformID" INTEGER NOT NULL,
	"APIID" INTEGER NOT NULL,
	"PlatformID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "APPLICATION" (
	"ApplicationID" INTEGER NOT NULL,
	"ApplicationGUID" TEXT NULL,
	"ApplicationName" TEXT NOT NULL,
	"ApplicationDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "APPLICATIONAUTHENTICATIONTYPE" (
	"ApplicationAuthenticationTypeID" INTEGER NOT NULL,
	"ApplicationID" INTEGER NULL,
	"ApplicationGUID" TEXT NULL,
	"AuthenticationTypeID" INTEGER NULL,
	"AuthenticationTypeGUID" TEXT NULL,
	"AuthenticationRank" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ApplicationAuthenticationTypeDescription" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "APPLICATIONBLACKLIST" (
	"ApplicationBlacklistID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "APPLICATIONCATEGORIES" (
	"ApplicationCategoriesID" INTEGER NOT NULL,
	"ApplicationID" INTEGER NOT NULL,
	"ApplicationGUID" TEXT NULL,
	"ApplicationCategoryID" INTEGER NOT NULL,
	"ApplicationCategoryGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"RepositoryID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "APPLICATIONCATEGORY" (
	"ApplicationCategoryID" INTEGER NOT NULL,
	"ApplicationCategoryGUID" TEXT NULL,
	"CategoryID" INTEGER NULL,
	"ApplicationCategoryName" TEXT NULL,
	"ApplicationCategoryDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "APPLICATIONCRITICALITY" (
	"ApplicationCriticalityID" INTEGER NOT NULL,
	"ApplicationCriticalityDescription" TEXT NULL,
	"ApplicationID" INTEGER NOT NULL,
	"ApplicationGUID" TEXT NULL,
	"ApplicationCriticalityLevelID" INTEGER NOT NULL,
	"ApplicationCriticalityLevelGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "APPLICATIONCRITICALITYLEVEL" (
	"ApplicationCriticalityLevelID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "APPLICATIONDEPENDENCY" (
	"ApplicationDependencyID" INTEGER NOT NULL,
	"ApplicationParentID" INTEGER NULL,
	"ApplicationParentGUID" TEXT NULL,
	"ApplicationSubjectID" INTEGER NULL,
	"ApplicationSubjectGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "APPLICATIONDOCUMENT" (
	"ApplicationDocumentID" INTEGER NOT NULL,
	"ApplicationID" INTEGER NULL,
	"ApplicationGUID" TEXT NULL,
	"DocumentID" INTEGER NULL,
	"DocumentGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "APPLICATIONFILEEXTENSIONBLACKLIST" (
	"ApplicationFileExtensionBlacklistID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "APPLICATIONFILEEXTENSIONWHITELIST" (
	"ApplicationFileExtensionWhitelistID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "APPLICATIONFILELIST" (
	"ApplicationFileListID" INTEGER NOT NULL,
	"ApplicationID" INTEGER NULL,
	"ApplicationGUID" TEXT NULL,
	"ApplicationFileListRelationship" TEXT NULL,
	"ApplicationFileListDescription" TEXT NULL,
	"FileListID" INTEGER NULL,
	"FileListGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "APPLICATIONFORASSET" (
	"AssetApplicationID" INTEGER NOT NULL,
	"AssetID" INTEGER NOT NULL,
	"AssetGUID" TEXT NULL,
	"ApplicationID" INTEGER NOT NULL,
	"ApplicationGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "APPLICATIONFORORGANISATION" (
	"OrganisationApplicationID" INTEGER NOT NULL,
	"OrganisationApplicationGUID" TEXT NULL,
	"OrganisationID" INTEGER NOT NULL,
	"OrganisationGUID" TEXT NULL,
	"ApplicationID" INTEGER NOT NULL,
	"ApplicationGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "APPLICATIONFUNCTION" (
	"ApplicationFunctionID" INTEGER NOT NULL,
	"ApplicationID" INTEGER NOT NULL,
	"ApplicationGUID" TEXT NULL,
	"FunctionID" INTEGER NOT NULL,
	"FunctionGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "APPLICATIONMIMEWHITELIST" (
	"ApplicationMIMEWhitelistID" INTEGER NOT NULL,
	"ApplicationID" INTEGER NOT NULL,
	"ApplicationGUID" TEXT NULL,
	"MIMEWhitelistID" INTEGER NOT NULL,
	"MIMEWhitelistGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "APPLICATIONNETWORKZONE" (
	"NetworkZoneApplicationID" INTEGER NOT NULL,
	"NetworkZoneID" INTEGER NULL,
	"NetworkZoneGUID" TEXT NULL,
	"ApplicationID" INTEGER NULL,
	"ApplicationGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "APPLICATIONPERSON" (
	"AppPersonID" INTEGER NOT NULL,
	"ApplicationID" INTEGER NOT NULL,
	"ApplicationGUID" TEXT NULL,
	"PersonID" INTEGER NOT NULL,
	"PersonGUID" TEXT NULL,
	"Usage" TEXT NULL,
	"Description" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "APPLICATIONPORTWHITELIST" (
	"ApplicationPortWhitelistID" INTEGER NOT NULL,
	"ApplicationID" INTEGER NULL,
	"ApplicationGUID" TEXT NULL,
	"PortID" INTEGER NULL,
	"inboundaccepted" INTEGER NULL,
	"outboundaccepted" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "APPLICATIONSECURITYLABEL" (
	"ApplicationSecurityLabelID" INTEGER NOT NULL,
	"ApplicationID" INTEGER NOT NULL,
	"ApplicationGUID" TEXT NULL,
	"SecurityLabelID" INTEGER NOT NULL,
	"SecurityLabelGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "APPLICATIONURI" (
	"ApplicationURIID" INTEGER NOT NULL,
	"ApplicationID" INTEGER NOT NULL,
	"ApplicationGUID" TEXT NULL,
	"URIObjectID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "APPLICATIONURIWHITELIST" (
	"ApplicationURIWhitelistID" INTEGER NOT NULL,
	"ApplicationURIID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"VocabularyID" INTEGER NULL,
	"ValidityID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "APPLICATIONVERSION" (
	"ApplicationVersionID" INTEGER NOT NULL,
	"ApplicationID" INTEGER NULL,
	"ApplicationGUID" TEXT NULL,
	"VersionID" INTEGER NULL,
	"ApplicationVersionDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "APPLICATIONWHITELIST" (
	"ApplicationWhitelistID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "APPROBATION" (
	"ApprobationID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "APPROVAL" (
	"ApprovalID" INTEGER NOT NULL,
	"ApprobationID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ARCHITECTURALPARADIGM" (
	"ArchitecturalParadigmID" INTEGER NOT NULL,
	"ArchitecturalParadigmGUID" TEXT NULL,
	"ArchitecturalParadigmName" TEXT NOT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "ARCHITECTURALPARADIGMFORTECHNICALCONTEXT" (
	"TechnicalContextArchitecturalParadigmID" INTEGER NOT NULL,
	"ArchitecturalParadigmID" INTEGER NOT NULL,
	"TechnicalContextID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ARCHIVEFILE" (
	"ArchiveFileID" INTEGER NOT NULL,
	"FileID" INTEGER NULL,
	"ArchiveFileDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"RepositoryID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ARFASSET" (
	"ARFAssetID" INTEGER NOT NULL,
	"ARFAssetUID" TEXT NOT NULL,
	"AssetID" INTEGER NULL,
	"ReferenceID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ARFASSETFORASSETS" (
	"AssetsID" INTEGER NOT NULL,
	"ARFAssetID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "ARFEXTENDEDINFO" (
	"ARFExtendedInfoID" INTEGER NOT NULL,
	"ExtendedInfoNCName" TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS "ARFEXTENDEDINFOFORARFEXTENDEDINFOS" (
	"ARFExtendedInfosID" INTEGER NOT NULL,
	"ARFExtendedInfoID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "ARFEXTENDEDINFOS" (
	"ARFExtendedInfosID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "ARFOBJECTREF" (
	"ARFObjectRefID" INTEGER NOT NULL,
	"ARFObjectRefUID" TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS "ARFOBJECTREFARFASSET" (
	"ARFObjectRefID" INTEGER NOT NULL,
	"ARFAssetID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "ARFOBJECTREFREPORT" (
	"ARFObjectRefID" INTEGER NOT NULL,
	"ReportID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "ARFOBJECTREFREPORTREQUEST" (
	"ARFObjectRefID" INTEGER NOT NULL,
	"ReportRequestID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "ARFRELATIONSHIP" (
	"ARFRelationshipID" INTEGER NOT NULL,
	"RelationshipTypeQName" TEXT NOT NULL,
	"RelationshipTypeID" INTEGER NULL,
	"RelationshipScope" TEXT NULL,
	"RelationshipSubjectNCName" TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS "ARFRELATIONSHIPARFASSET" (
	"ARFRelationshipID" INTEGER NOT NULL,
	"ARFAssetID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "ARFRELATIONSHIPFORARFRELATIONSHIPS" (
	"ARFRelationshipsID" INTEGER NOT NULL,
	"ARFRelationshipID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "ARFRELATIONSHIPREPORT" (
	"ARFRelationshipID" INTEGER NOT NULL,
	"ReportID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "ARFRELATIONSHIPREPORTREQUEST" (
	"ARFRelationshipID" INTEGER NOT NULL,
	"ReportRequestID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "ARFRELATIONSHIPS" (
	"ARFRelationshipsID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "ARITHMETICFUNCTION" (
	"ArithmeticFunctionID" INTEGER NOT NULL,
	"ArithmeticOperationName" TEXT NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "ARITHMETICOPERATION" (
	"ArithmeticOperationID" INTEGER NOT NULL,
	"ArithmeticOperationName" TEXT NOT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ARPCACHE" (
	"ARPCacheID" INTEGER NOT NULL,
	"ARPCacheGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ARPCACHECHANGERECORD" (
	"ARPCacheChangeRecordID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "ARPCACHEENTRIES" (
	"ARPCacheEntriesID" INTEGER NOT NULL,
	"ARPCacheID" INTEGER NOT NULL,
	"ARPCacheEntryID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"CollectionMethodID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"ConfidenceReasonID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"suspected_malicious" INTEGER NULL,
	"SuspectedMaliciousReasonID" INTEGER NULL,
	"SuspectedMaliciousReasonGUID" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ARPCACHEENTRY" (
	"ARPCacheEntryID" INTEGER NOT NULL,
	"ARPCacheEntryGUID" TEXT NULL,
	"IP_Address" INTEGER NULL,
	"Physical_Address" TEXT NULL,
	"ARPCacheEntryTypeID" INTEGER NULL,
	"Network_Interface" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"CollectionMethodID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"ConfidenceReasonID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ARPCACHEENTRYTYPE" (
	"ARPCacheEntryTypeID" INTEGER NOT NULL,
	"ARPCacheEntryTypeName" TEXT NULL,
	"ARPCacheEntryTypeDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ARTIFACT" (
	"ArtifactID" INTEGER NOT NULL,
	"ArtifactGUID" TEXT NULL,
	"HashListID" INTEGER NULL,
	"Raw_Artifact" TEXT NULL,
	"RawArtifactID" INTEGER NULL,
	"Raw_Artifact_Reference" TEXT NULL,
	"ArtifactTypeID" INTEGER NOT NULL,
	"ArtifactTypeGUID" TEXT NULL,
	"content_type" TEXT NULL,
	"content_type_version" TEXT NULL,
	"suspected_malicious" INTEGER NULL,
	"SuspectedMaliciousReasonID" INTEGER NULL,
	"SuspectedMaliciousReasonGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"RepositoryID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ARTIFACTCHANGERECORD" (
	"ArtifactChangeRecordID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "ARTIFACTHASHVALUE" (
	"ArtifactHashValueID" INTEGER NOT NULL,
	"ArtifactID" INTEGER NOT NULL,
	"ArtifactGUID" TEXT NULL,
	"HashValueID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ARTIFACTPACKAGING" (
	"ArtifactPackagingID" INTEGER NOT NULL,
	"ArtifactPackagingGUID" TEXT NULL,
	"ArtifactID" INTEGER NOT NULL,
	"ArtifactGUID" TEXT NULL,
	"PackagingID" INTEGER NOT NULL,
	"PackagingGUID" TEXT NULL,
	"is_encrypted" INTEGER NULL,
	"is_compressed" INTEGER NULL,
	"ArtifactPackagingDescription" TEXT NULL,
	"CollectedDate" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"CollectionMethodID" INTEGER NULL,
	"CollectionToolID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"ConfidenceReasonID" INTEGER NULL,
	"RepositoryID" INTEGER NULL,
	"RepositoryGUID" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ARTIFACTTYPE" (
	"ArtifactTypeID" INTEGER NOT NULL,
	"ArtifactTypeGUID" TEXT NULL,
	"ArtifactTypeName" TEXT NULL,
	"ArtifactTypeDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"ImportanceID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ASN" (
	"ASNID" INTEGER NOT NULL,
	"AddressID" INTEGER NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "ASOBJECT" (
	"ASObjectID" INTEGER NOT NULL,
	"ASNumber" INTEGER NULL,
	"ASName" TEXT NULL,
	"ASHandle" TEXT NULL,
	"Regional_Internet_Registry" TEXT NULL,
	"OrganisationID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "aspnet_Applications" (
	"ApplicationName" TEXT NOT NULL,
	"LoweredApplicationName" TEXT NOT NULL,
	"ApplicationId" TEXT NOT NULL,
	"Description" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "aspnet_Membership" (
	"ApplicationId" TEXT NOT NULL,
	"UserId" TEXT NOT NULL,
	"Password" TEXT NOT NULL,
	"PasswordFormat" INTEGER NOT NULL,
	"PasswordSalt" TEXT NOT NULL,
	"MobilePIN" TEXT NULL,
	"Email" TEXT NULL,
	"LoweredEmail" TEXT NULL,
	"PasswordQuestion" TEXT NULL,
	"PasswordAnswer" TEXT NULL,
	"IsApproved" INTEGER NOT NULL,
	"IsLockedOut" INTEGER NOT NULL,
	"CreateDate" TEXT NOT NULL,
	"LastLoginDate" TEXT NOT NULL,
	"LastPasswordChangedDate" TEXT NOT NULL,
	"LastLockoutDate" TEXT NOT NULL,
	"FailedPasswordAttemptCount" INTEGER NOT NULL,
	"FailedPasswordAttemptWindowStart" TEXT NOT NULL,
	"FailedPasswordAnswerAttemptCount" INTEGER NOT NULL,
	"FailedPasswordAnswerAttemptWindowStart" TEXT NOT NULL,
	"Comment" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "aspnet_Paths" (
	"ApplicationId" TEXT NOT NULL,
	"PathId" TEXT NOT NULL,
	"Path" TEXT NOT NULL,
	"LoweredPath" TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS "aspnet_PersonalizationAllUsers" (
	"PathId" TEXT NOT NULL,
	"PageSettings" BLOB NOT NULL,
	"LastUpdatedDate" TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS "aspnet_PersonalizationPerUser" (
	"Id" TEXT NOT NULL,
	"PathId" TEXT NULL,
	"UserId" TEXT NULL,
	"PageSettings" BLOB NOT NULL,
	"LastUpdatedDate" TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS "aspnet_Profile" (
	"UserId" TEXT NOT NULL,
	"PropertyNames" TEXT NOT NULL,
	"PropertyValuesString" TEXT NOT NULL,
	"PropertyValuesBinary" BLOB NOT NULL,
	"LastUpdatedDate" TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS "aspnet_Roles" (
	"ApplicationId" TEXT NOT NULL,
	"RoleId" TEXT NOT NULL,
	"RoleName" TEXT NOT NULL,
	"LoweredRoleName" TEXT NOT NULL,
	"Description" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "aspnet_SchemaVersions" (
	"Feature" TEXT NOT NULL,
	"CompatibleSchemaVersion" TEXT NOT NULL,
	"IsCurrentVersion" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "aspnet_Users" (
	"ApplicationId" TEXT NOT NULL,
	"UserId" TEXT NOT NULL,
	"UserName" TEXT NOT NULL,
	"LoweredUserName" TEXT NOT NULL,
	"MobileAlias" TEXT NULL,
	"IsAnonymous" INTEGER NOT NULL,
	"LastActivityDate" TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS "aspnet_UsersInRoles" (
	"UserId" TEXT NOT NULL,
	"RoleId" TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS "aspnet_WebEvent_Events" (
	"EventId" TEXT NOT NULL,
	"EventTimeUtc" TEXT NOT NULL,
	"EventTime" TEXT NOT NULL,
	"EventType" TEXT NOT NULL,
	"EventSequence" DOUBLE PRECISION NOT NULL,
	"EventOccurrence" DOUBLE PRECISION NOT NULL,
	"EventCode" INTEGER NOT NULL,
	"EventDetailCode" INTEGER NOT NULL,
	"Message" TEXT NULL,
	"ApplicationPath" TEXT NULL,
	"ApplicationVirtualPath" TEXT NULL,
	"MachineName" TEXT NOT NULL,
	"RequestUrl" TEXT NULL,
	"ExceptionType" TEXT NULL,
	"Details" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "ASSET" (
	"AssetID" INTEGER PRIMARY KEY,
	"AssetGUID" TEXT NULL,
	"AssetName" TEXT NULL,
	"AssetDescription" TEXT NULL,
	"AssetCriticalityLevel" TEXT NULL,
	"TaskCriticalAsset" INTEGER NULL,
	"DefenseCriticalAsset" INTEGER NULL,
	"OSName" TEXT NULL,
	"Enabled" INTEGER NULL,
	"BLOB" TEXT NULL,
	"LastCheckedDate" TEXT NULL,
	"X500name" TEXT NULL,
	"fqdn" TEXT NULL,
	"hostname" TEXT NULL,
	"motherboardguid" TEXT NULL,
	"instancename" TEXT NULL,
	"networkname" TEXT NULL,
	"ipnetrangestartIPv4" TEXT NULL,
	"ipnetrangeendIPv4" TEXT NULL,
	"ipnetrangestartIPv6" TEXT NULL,
	"ipnetrangeendIPv6" TEXT NULL,
	"cidr" TEXT NULL,
	"websiteurl" TEXT NULL,
	"documentroot" TEXT NULL,
	"locale" TEXT NULL,
	"installationid" TEXT NULL,
	"license" TEXT NULL,
	"systemname" TEXT NULL,
	"version" TEXT NULL,
	"ipaddressIPv4" TEXT NULL,
	"ipaddressIPv6" TEXT NULL,
	"subnetmaskIPv4" TEXT NULL,
	"subnetmaskIPv6" TEXT NULL,
	"defaultrouteIPv4" TEXT NULL,
	"defaultrouteIPv6" TEXT NULL,
	"personal" INTEGER NULL,
	"managedbythirdparty" INTEGER NULL,
	"hostedbythirdparty" INTEGER NULL,
	"notes" TEXT NULL,
	"cloud" TEXT NULL,
	"AssetManagementID" INTEGER NULL,
	"AssetOwnershipID" INTEGER NULL,
	"AssetLocationID" INTEGER NULL,
	"virtual" INTEGER NULL,
	"ADParticipation" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"ConfidenceReasonID" INTEGER NULL,
	"TrustLevelID" INTEGER NULL,
	"TrustReasonID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ASSETADDRESS" (
	"AssetAddressID" INTEGER NOT NULL,
	"AssetID" INTEGER NOT NULL,
	"AssetGUID" TEXT NULL,
	"AddressID" INTEGER NOT NULL,
	"AddressGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ASSETARPCACHE" (
	"AssetARPCacheID" INTEGER NOT NULL,
	"AssetID" INTEGER NULL,
	"AssetGUID" TEXT NULL,
	"ARPCacheID" INTEGER NULL,
	"ARPCacheGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ASSETBLACKLIST" (
	"AssetBlacklistID" INTEGER NOT NULL,
	"AssetID" INTEGER NOT NULL,
	"AssetGUID" TEXT NULL,
	"OrganisationID" INTEGER NULL,
	"OrganisationGUID" TEXT NULL,
	"PersonID" INTEGER NULL,
	"PersonGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ASSETCERTIFICATE" (
	"AssetCertificateID" INTEGER NOT NULL,
	"AssetID" INTEGER NOT NULL,
	"AssetGUID" TEXT NULL,
	"CertificateID" INTEGER NOT NULL,
	"CertificateGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ValidityID" INTEGER NULL,
	"AssetCertificateDescription" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ASSETCERTIFICATEORGANISATION" (
	"AssetCertificateOrganisationID" INTEGER NOT NULL,
	"AssetCertificateID" INTEGER NOT NULL,
	"AssetCertificateGUID" TEXT NULL,
	"OrganisationID" INTEGER NOT NULL,
	"OrganisationGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"AssetCertificateOrganisationDescription" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ASSETCHANGERECORD" (
	"AssetChangeRecordID" INTEGER NOT NULL,
	"AssetID" INTEGER NOT NULL,
	"AssetGUID" TEXT NULL,
	"ChangeRecordID" INTEGER NOT NULL,
	"ChangeRecordGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ASSETCREDENTIAL" (
	"AssetCredentialID" INTEGER NOT NULL,
	"AssetID" INTEGER NULL,
	"AssetGUID" TEXT NULL,
	"AuthenticationTypeID" INTEGER NULL,
	"AuthenticationTypeGUID" TEXT NULL,
	"AuthenticationType" TEXT NULL,
	"Username" TEXT NULL,
	"Password" TEXT NULL,
	"PersonID" INTEGER NULL,
	"PersonGUID" TEXT NULL,
	"OrganisationID" INTEGER NULL,
	"OrganisationGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ValidityID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"TrustLevelID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ASSETCRITICALITYLEVEL" (
	"AssetCriticalityLevelID" INTEGER NOT NULL,
	"AssetCriticalityLevelGUID" TEXT NULL,
	"CriticalityLevelID" INTEGER NULL,
	"AssetCriticalityLevelName" TEXT NULL,
	"AssetCriticalityLevelDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ValidityID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ASSETCRITICALITYLEVELFORASSET" (
	"AssetCriticalityID" INTEGER NOT NULL,
	"AssetCriticalityDescription" TEXT NULL,
	"AssetID" INTEGER NOT NULL,
	"AssetCriticalityLevelID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ValidityID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"ConfidenceReasonID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ASSETDEVICE" (
	"AssetDeviceID" INTEGER NOT NULL,
	"AssetDeviceGUID" TEXT NULL,
	"AssetDeviceDescription" TEXT NULL,
	"AssetID" INTEGER NOT NULL,
	"AssetGUID" TEXT NULL,
	"DeviceID" INTEGER NOT NULL,
	"DeviceGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"ConfidenceReasonID" INTEGER NULL,
	"CollectionMethodID" INTEGER NULL,
	"CollectionToolID" INTEGER NULL,
	"TrustLevelID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ASSETFORASSET" (
	"AssetForAssetID" INTEGER NOT NULL,
	"AssetRefID" INTEGER NOT NULL,
	"AssetRefGUID" TEXT NULL,
	"AssetRelationshipID" INTEGER NULL,
	"relationshiptype" TEXT NULL,
	"relationshipscope" TEXT NULL,
	"AssetSubjectID" INTEGER NOT NULL,
	"AssetSubjectGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ASSETFORORGANISATION" (
	"AssetForOrganisationID" INTEGER NOT NULL,
	"OrganisationAssetGUID" TEXT NULL,
	"OrganisationID" INTEGER NOT NULL,
	"OrganisationGUID" TEXT NULL,
	"AssetID" INTEGER NOT NULL,
	"AssetGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"TrustLevelID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"VocabularyID" INTEGER NULL,
	"Relationship" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "ASSETFORTHREATACTORTTP" (
	"AssetForThreatActorTTPID" INTEGER NOT NULL,
	"AssetID" INTEGER NOT NULL,
	"AssetGUID" TEXT NULL,
	"ThreatActorTTPID" INTEGER NOT NULL,
	"ThreatActorTTPGUID" TEXT NULL,
	"Information_Source" TEXT NULL,
	"ConfidenceLevel" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"notes" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ASSETFUNCTION" (
	"AssetFunctionID" INTEGER NOT NULL,
	"AssetFunctionName" TEXT NOT NULL,
	"AssetFunctionDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ASSETFUNCTIONFORASSET" (
	"AssetAssetFunctionID" INTEGER NOT NULL,
	"AssetID" INTEGER NOT NULL,
	"AssetFunctionID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ASSETGEOLOCATION" (
	"AssetGeoLocationID" INTEGER NOT NULL,
	"AssetID" INTEGER NOT NULL,
	"AssetGUID" TEXT NULL,
	"GeoLocationID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"CollectionMethodID" INTEGER NULL,
	"CollectionToolID" INTEGER NULL,
	"CollectionTimestamp" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ASSETGROUP" (
	"AssetGroupID" INTEGER NOT NULL,
	"AssetGroupGUID" TEXT NULL,
	"AssetForAssetID" INTEGER NULL,
	"AssetGroupName" TEXT NULL,
	"AssetGroupDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"OrganisationID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ASSETINFORMATION" (
	"AssetInformationID" INTEGER NOT NULL,
	"hostname" TEXT NULL,
	"netbios" TEXT NULL,
	"hosttype" TEXT NULL,
	"JobID" INTEGER NOT NULL,
	"information" TEXT NULL,
	"BLOB" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "ASSETLICENSE" (
	"AssetLicenseID" INTEGER NOT NULL,
	"AssetID" INTEGER NULL,
	"LicenseNumber" TEXT NULL,
	"LicenseValue" DOUBLE PRECISION NULL,
	"LicenseID" INTEGER NULL,
	"LicenseFileID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ValidityID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ASSETLOCATION" (
	"AssetLocationID" INTEGER NOT NULL,
	"AssetLocationType" TEXT NOT NULL,
	"AssetLocationDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"EnumerationVersionID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ASSETLOCATIONFORASSET" (
	"AssetLocationTimeID" INTEGER NOT NULL,
	"AssetID" INTEGER NOT NULL,
	"AssetLocationID" INTEGER NOT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ASSETMANAGEMENT" (
	"AssetManagementID" INTEGER NOT NULL,
	"ManagementID" INTEGER NULL,
	"ManagementType" TEXT NOT NULL,
	"ManagementDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ASSETMANAGEMENTFORASSET" (
	"AssetManagementTimeID" INTEGER NOT NULL,
	"AssetID" INTEGER NOT NULL,
	"AssetManagementID" INTEGER NOT NULL,
	"BLOB" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ASSETMEMORYDUMP" (
	"AssetMemoryDumpID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "ASSETNETWORKZONE" (
	"AssetNetworkZoneID" INTEGER NOT NULL,
	"AssetID" INTEGER NULL,
	"AssetGUID" TEXT NULL,
	"NetworkZoneID" INTEGER NULL,
	"NetworkZoneGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ValidityID" INTEGER NULL,
	"VocabularyID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"ConfidenceReasonID" INTEGER NULL,
	"TrustLevelID" INTEGER NULL,
	"TrustReasonID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"LastCheckedDate" TEXT NULL,
	"ConfidentialityLevelID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ASSETNETWORKZONERESTRICTION" (
	"AssetNetworkZoneRestrictionID" INTEGER NOT NULL,
	"AssetNetworkZoneRestrictionDescription" TEXT NULL,
	"AssetNetworkZoneID" INTEGER NOT NULL,
	"AssetNetworkZoneGUID" TEXT NULL,
	"RestrictionID" INTEGER NOT NULL,
	"CreationDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ValidityID" INTEGER NULL,
	"TrustLevelID" INTEGER NULL,
	"TrustReasonID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ASSETORGANIZATIONALUNIT" (
	"AssetOrganizationalUnitID" INTEGER NOT NULL,
	"OrganizationalUnitID" INTEGER NOT NULL,
	"AssetID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ASSETOWNERSHIP" (
	"AssetOwnershipID" INTEGER NOT NULL,
	"OwnershipID" INTEGER NULL,
	"OwnershipName" TEXT NOT NULL,
	"OwnershipDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "ASSETPERIMETER" (
	"AssetPerimeterID" INTEGER NOT NULL,
	"AssetPerimeterGUID" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "ASSETPERIMETERASSET" (
	"AssetPerimeterAssetID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "ASSETPERIMETERNETWORKZONE" (
	"AssetPerimeterNetworkZoneID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "ASSETPERIMETERSECURITYCONTROL" (
	"AssetPerimeterSecurityControlID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "ASSETPHYSICALLOCATION" (
	"AssetPhysicalLocationTimeID" INTEGER NOT NULL,
	"AssetID" INTEGER NOT NULL,
	"PhysicalLocationID" INTEGER NOT NULL,
	"BLOB" TEXT NULL,
	"InformationPersonID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ASSETPLATFORM" (
	"AssetPlatformID" INTEGER NOT NULL,
	"AssetID" INTEGER NULL,
	"AssetGUID" TEXT NULL,
	"PlatformID" INTEGER NULL,
	"PlatformGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"LastCheckedDate" TEXT NULL,
	"CollectionMethodID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ASSETPRODUCT" (
	"AssetProductID" INTEGER NOT NULL,
	"AssetID" INTEGER NOT NULL,
	"AssetGUID" TEXT NULL,
	"ProductID" INTEGER NOT NULL,
	"ProductGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"LastCheckedDate" TEXT NULL,
	"CollectionMethodID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ASSETRELATIONSHIP" (
	"AssetRelationshipID" INTEGER NOT NULL,
	"relationshiptype" TEXT NOT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ASSETREPORTCOLLECTION" (
	"AssetReportCollectionID" INTEGER NOT NULL,
	"ARFReportCollectionID" TEXT NULL,
	"ReportRequestsID" INTEGER NULL,
	"AssetsID" INTEGER NULL,
	"ReportsID" INTEGER NULL,
	"ARFRelationshipsID" INTEGER NULL,
	"ARFExtendedInfosID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ASSETRISKRATING" (
	"AssetRiskRatingID" INTEGER NOT NULL,
	"AssetID" INTEGER NOT NULL,
	"AssetGUID" TEXT NULL,
	"RiskRatingID" INTEGER NOT NULL,
	"AssetRiskRatingDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ASSETROLE" (
	"AssetRoleID" INTEGER NOT NULL,
	"AssetRoleGUID" TEXT NULL,
	"AssetRoleName" TEXT NOT NULL,
	"AssetRoleDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ASSETROLEFORASSET" (
	"AssetRoleForAssetID" INTEGER NOT NULL,
	"AssetAssetRoleGUID" TEXT NULL,
	"AssetRoleID" INTEGER NOT NULL,
	"AssetRoleGUID" TEXT NULL,
	"AssetID" INTEGER NOT NULL,
	"AssetGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ASSETS" (
	"AssetsID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "ASSETSECURITYCONTROL" (
	"AssetSecurityControlID" INTEGER NOT NULL,
	"AssetID" INTEGER NOT NULL,
	"AssetGUID" TEXT NULL,
	"SecurityControlID" INTEGER NOT NULL,
	"SecurityControlGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ValidityID" INTEGER NULL,
	"LastCheckedDate" TEXT NULL,
	"CollectionMethodID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"ConfidenceReasonID" INTEGER NULL,
	"ImportanceID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"TrustLevelID" INTEGER NULL,
	"TrustReasonID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ASSETSENSOR" (
	"AssetSensorID" INTEGER NOT NULL,
	"AssetSensorGUID" TEXT NULL,
	"AssetID" INTEGER NOT NULL,
	"AssetGUID" TEXT NULL,
	"SensorID" INTEGER NOT NULL,
	"SensorGUID" TEXT NULL,
	"AssetSensorName" TEXT NULL,
	"AssetSensorDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ASSETSESSION" (
	"AssetSessionID" INTEGER NOT NULL,
	"AssetSessionGUID" TEXT NULL,
	"SessionID" INTEGER NULL,
	"SessionGUID" TEXT NULL,
	"AssetID" INTEGER NULL,
	"AssetGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "ASSETSYNTHETICID" (
	"AssetSyntheticID" INTEGER NOT NULL,
	"AssetSyntheticIDGUID" TEXT NULL,
	"resource" TEXT NOT NULL,
	"id" TEXT NOT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "ASSETSYNTHETICIDFORASSET" (
	"AssetAssetSyntheticID" INTEGER NOT NULL,
	"AssetID" INTEGER NOT NULL,
	"AssetGUID" TEXT NULL,
	"AssetSyntheticID" INTEGER NOT NULL,
	"AssetSyntheticIDGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ASSETTECHNOLOGY" (
	"AssetTechnologyID" INTEGER NOT NULL,
	"AssetID" INTEGER NULL,
	"AssetGUID" TEXT NULL,
	"TechnologyID" INTEGER NULL,
	"TechnologyGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ASSETVALUE" (
	"AssetValueID" INTEGER NOT NULL,
	"AssetValueName" TEXT NOT NULL,
	"AssetValueDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "ASSETVALUEFORASSET" (
	"AssetValueForAssetID" INTEGER NOT NULL,
	"AssetAssetValueGUID" TEXT NULL,
	"AssetID" INTEGER NOT NULL,
	"AssetGUID" TEXT NULL,
	"AssetValueID" INTEGER NOT NULL,
	"AssetValueGUID" TEXT NULL,
	"ValueValue" DOUBLE PRECISION NULL,
	"iso_currency_code" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ASSETVARIETY" (
	"AssetVarietyID" INTEGER NOT NULL,
	"AssetVarietyName" TEXT NOT NULL,
	"AssetVarietyDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"EnumerationVersionID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ASSETVARIETYFORASSET" (
	"AssetAssetVarietyID" INTEGER NOT NULL,
	"AssetVarietyID" INTEGER NOT NULL,
	"AssetVarietyGUID" TEXT NULL,
	"AssetID" INTEGER NOT NULL,
	"AssetGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ASSETWHITELIST" (
	"AssetWhitelistID" INTEGER NOT NULL,
	"AssetID" INTEGER NOT NULL,
	"OrganisationID" INTEGER NULL,
	"PersonID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"BLOB" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "ASSETZONE" (
	"AssetZoneID" INTEGER NOT NULL,
	"AssetZoneGUID" TEXT NULL,
	"AssetID" INTEGER NULL,
	"ZoneID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ASSOCIATION" (
	"AssociationID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "ASSOCIATIONRULE" (
	"AssociationRuleID" INTEGER NOT NULL,
	"RuleID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ASSURANCE" (
	"AssuranceID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "ASSURANCEREQUIREMENT" (
	"AssuranceRequirementID" INTEGER NOT NULL,
	"RequirementID" INTEGER NULL,
	"RequirementGUID" TEXT NULL,
	"AssuranceRequirementGUID" TEXT NULL,
	"AssuranceRequirementTitle" TEXT NULL,
	"AssuranceRequirementDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "ATTACHMENT" (
	"AttachmentID" INTEGER NOT NULL,
	"AttachmentGUID" TEXT NULL,
	"FileID" INTEGER NULL,
	"FileGUID" TEXT NULL,
	"MIMEID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"ConfidenceReasonID" INTEGER NULL,
	"TrustLevelID" INTEGER NULL,
	"TrustReasonID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ATTACHMENTREFERENCE" (
	"AttachmentReferenceID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "ATTRIBUTE" (
	"AttributeID" INTEGER NOT NULL,
	"AttributeName" TEXT NULL,
	"AttributeDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ATTRIBUTEVALUE" (
	"AttributeValueID" INTEGER NOT NULL,
	"AttributeID" INTEGER NOT NULL,
	"AttributeValueName" TEXT NULL,
	"AttributeValueDescription" TEXT NULL,
	"AttributeValueType" TEXT NULL,
	"AttributeValue" TEXT NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "AUDIT" (
	"AuditID" INTEGER NOT NULL,
	"ProjectID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "AUDITFINDING" (
	"AuditFindingID" INTEGER NOT NULL,
	"AuditID" INTEGER NOT NULL,
	"FindingID" INTEGER NOT NULL,
	"AuditProcedureID" INTEGER NULL,
	"AuditFindingName" TEXT NULL,
	"AuditFindingDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "AUDITLOGEVENT" (
	"AuditLogEventID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "AUDITPROCEDURE" (
	"AuditProcedureID" INTEGER NOT NULL,
	"AuditProcedureName" TEXT NULL,
	"AuditProcedureDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "AUTHENTICATIONTOKENPROTECTIONMECHANISM" (
	"AuthenticationTokenProtectionMechanismID" INTEGER NOT NULL,
	"AuthenticationTokenProtectionMechanismGUID" TEXT NULL,
	"AuthenticationTokenProtectionMechanismName" TEXT NULL,
	"AuthenticationTokenProtectionMechanismDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"TrustLevelID" INTEGER NULL,
	"TrustReasonID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "AUTHENTICATIONTOKENPROTECTIONMECHANISMBLACKLIST" (
	"AuthenticationTokenProtectionMechanismBlacklistID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "AUTHENTICATIONTYPE" (
	"AuthenticationTypeID" INTEGER NOT NULL,
	"AuthenticationTypeGUID" TEXT NULL,
	"AuthenticationTypeName" TEXT NULL,
	"AuthenticationTypeDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ValidityID" INTEGER NULL,
	"VocabularyID" INTEGER NULL,
	"TrustLevelID" INTEGER NULL,
	"TrustReasonID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "AUTHENTICATIONTYPEBLACKLIST" (
	"AuthenticationTypeBlacklistID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "AUTHENTICATIONTYPEDESCRIPTION" (
	"AuthenticationTypeDescriptionID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "AUTHENTICATIONTYPEREFERENCE" (
	"AuthenticationTypeReferenceID" INTEGER NOT NULL,
	"AuthenticationTypeID" INTEGER NULL,
	"AuthenticationTypeGUID" TEXT NULL,
	"ReferenceID" INTEGER NULL,
	"ReferenceGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "AUTHOR" (
	"AuthorID" INTEGER NOT NULL,
	"AuthorName" TEXT NOT NULL,
	"PersonID" INTEGER NULL,
	"OrganisationID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "AVAILABILITYLOSSTYPE" (
	"AvailabilityLossTypeID" INTEGER NOT NULL,
	"AvailabilityLossTypeName" TEXT NULL,
	"AvailabilityLossTypeDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"EnumerationVersionID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "AVAILABILITYVIOLATIONPROPERTIES" (
	"AvailabilityViolationPropertiesID" INTEGER NOT NULL,
	"AvailabilityViolationPropertiesName" TEXT NULL,
	"AvailabilityViolationPropertiesDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"EnumerationVersionID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ieEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "AVAILABILITYVIOLATIONSTRATEGICOBJECTIVE" (
	"AvailabilityViolationStrategicObjectiveID" INTEGER NOT NULL,
	"AvailabilityViolationStrategicObjectiveName" TEXT NULL,
	"AvailabilityViolationStrategicObjectiveDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"EnumerationVersionID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "AVAILABILITYVIOLATIONTACTICALOBJECTIVE" (
	"AvailabilityViolationTacticalObjectiveID" INTEGER NOT NULL,
	"AvailabilityViolationTacticalObjectiveName" TEXT NULL,
	"AvailabilityViolationTacticalObjectiveDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"EnumerationVersionID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "BANNER" (
	"BannerID" INTEGER NOT NULL,
	"BannerGUID" TEXT NULL,
	"BannerName" TEXT NULL,
	"BannerDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "BANNERREGEX" (
	"BannerRegexID" INTEGER NOT NULL,
	"BannerRegexGUID" TEXT NULL,
	"BannerID" INTEGER NOT NULL,
	"BannerGUID" TEXT NULL,
	"RegexID" INTEGER NOT NULL,
	"RegexGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "BEGINFUNCTION" (
	"BeginFunctionID" INTEGER NOT NULL,
	"StartsWithCharacters" TEXT NOT NULL,
	"OVALComponentGroupID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "BEHAVIOMETRIC" (
	"BehaviometricID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "BEHAVIOR" (
	"BehaviorID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "BEHAVIORACTIONCOMPOSITION" (
	"BehaviorActionCompositionID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "BEHAVIORALCHARACTERISTIC" (
	"BehavioralCharacteristicID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "BEHAVIORASSOCIATEDCODE" (
	"BehaviorAssociatedCodeID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "BEHAVIORCOLLECTION" (
	"BehaviorCollectionID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "BEHAVIORDESCRIPTION" (
	"BehaviorDescriptionID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "BEHAVIORDISCOVERYMETHOD" (
	"BehaviorDiscoveryMethodID" INTEGER NOT NULL,
	"BehaviorID" INTEGER NULL,
	"DiscoveryMethodID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "BEHAVIORIDMATCHINGPATTERN" (
	"BehaviorIDPatternID" INTEGER NOT NULL,
	"BehaviorIDPatternGUID" TEXT NULL,
	"BehaviorID" INTEGER NOT NULL,
	"BehaviorGUID" TEXT NULL,
	"BehaviorIDMatchingPattern" TEXT NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "BEHAVIORIDPATTERN" (
	"BehaviorIDPatternID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "BEHAVIORPURPOSE" (
	"BehaviorPurposeID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "BEHAVIORRELATIONSHIPS" (
	"BehaviorRelationShipsID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "BIOMETRIC" (
	"BiometricID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "BREACH" (
	"BreachID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "BREACHDESCRIPTION" (
	"BreachDescriptionID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "BREACHEVIDENCE" (
	"BreachEvidenceID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "BREACHFINDING" (
	"BreachFindingID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "BREACHNOTIFICATION" (
	"BreachNotificationID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "BREACHTAG" (
	"BreachTagID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "BREAK" (
	"BreakID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "BROWSER" (
	"BrowserID" INTEGER NOT NULL,
	"SoftwareID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "BROWSERCHARACTERISTIC" (
	"BrowserCharacteristicID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "BULLETIN" (
	"BulletinID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "BUSINESSIMPACT" (
	"BusinessImpactID" INTEGER NOT NULL,
	"BusinessImpactGUID" TEXT NULL,
	"ImpactLevel" TEXT NOT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "BUSINESSIMPACTFORBUSINESSRISK" (
	"BusinessRiskBusinessImpactID" INTEGER NOT NULL,
	"BusinessImpactID" INTEGER NOT NULL,
	"BusinessImpactGUID" TEXT NULL,
	"BusinessRiskID" INTEGER NOT NULL,
	"BusinessRiskGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "BUSINESSIMPACTFORREGULATORYRISK" (
	"RegulatoryRiskBusinessImpactID" INTEGER NOT NULL,
	"BusinessImpactID" INTEGER NOT NULL,
	"BusinessImpactGUID" TEXT NULL,
	"RegulatoryRiskID" INTEGER NOT NULL,
	"RegulatoryRiskGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "BUSINESSPROCESS" (
	"BusinessProcessID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "BUSINESSRISK" (
	"BusinessRiskID" INTEGER NOT NULL,
	"RiskDescription" TEXT NOT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "BYTERUN" (
	"ByteRunID" INTEGER NOT NULL,
	"Offset" INTEGER NULL,
	"File_System_Offset" INTEGER NULL,
	"Image_Offset" INTEGER NULL,
	"Length" INTEGER NULL,
	"HashListID" INTEGER NULL,
	"Byte_Run_Data" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"CollectionMethodID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "BYTERUNS" (
	"ByteRunsID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "BYTESRUNSBYTERUN" (
	"ByteRunsButeRunID" INTEGER NOT NULL,
	"ByteRunsID" INTEGER NOT NULL,
	"ByteRunID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"CollectionMethodID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CAPABILITYOBJECTIVE" (
	"CapabilityObjectiveID" INTEGER NOT NULL,
	"CapabilityObjectiveGUID" TEXT NULL,
	"ObjectiveID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"EnumerationVersionID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CAPABILITYOBJECTIVERELATIONSHIP" (
	"CapabilityObjectiveRelashionshipID" INTEGER NOT NULL,
	"CapabilityObjectiveRelashionshipName" TEXT NULL,
	"CapabilityObjectiveRelashionshipDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"VocabularyID" INTEGER NULL,
	"EnumerationVersionID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CATEGORY" (
	"CategoryID" INTEGER NOT NULL,
	"CategoryName" TEXT NOT NULL,
	"CategoryDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ValidityID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CATEGORYDESCRIPTION" (
	"CategoryDescriptionID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "CATEGORYREFERENCE" (
	"CategoryReferenceID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "CATEGORYTAG" (
	"CategoryTagID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "CCE" (
	"CCEID" INTEGER NOT NULL,
	"cce_id" TEXT NOT NULL,
	"platform" TEXT NULL,
	"PlatformID" INTEGER NULL,
	"modified" TEXT NULL,
	"description" TEXT NULL,
	"parameter" TEXT NULL,
	"technical_mechanism" TEXT NULL,
	"reference" TEXT NULL,
	"resource_id" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"CreationObjectGUID" TEXT NULL,
	"SourceID" INTEGER NULL,
	"SourceGUID" TEXT NULL,
	"RepositoryID" INTEGER NULL,
	"RepositoryGUID" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"VocabularyGUID" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ImportanceID" INTEGER NULL,
	"ImportanceGUID" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"ConfidenceLevelGUID" TEXT NULL,
	"ConfidenceReasonID" INTEGER NULL,
	"ConfidenceReasonGUID" TEXT NULL,
	"TrustLevelID" INTEGER NULL,
	"TrustLevelGUID" TEXT NULL,
	"TrustReasonID" INTEGER NULL,
	"TrustReasonGUID" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CCEFORASSET" (
	"AssetCCEID" INTEGER NOT NULL,
	"AssetID" INTEGER NOT NULL,
	"CCEID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "CCEFORCPE" (
	"CPECCEID" INTEGER NOT NULL,
	"cce_id" TEXT NULL,
	"CCEID" INTEGER NOT NULL,
	"CPEID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CCEFORTHREATACTORTTP" (
	"ThreatActorTTPCCEID" INTEGER NOT NULL,
	"ThreatActorTTPID" INTEGER NOT NULL,
	"CCEID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CollectionMethodID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"ConfidenceReasonID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CCEPARAMETER" (
	"CCEParameterID" INTEGER NOT NULL,
	"CCEParameterText" TEXT NOT NULL,
	"CCEParameterDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CCEPARAMETERFORCCE" (
	"CCECCEParameterID" INTEGER NOT NULL,
	"CCEID" INTEGER NULL,
	"CCEParameterID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CCEPARAMETERTAG" (
	"CCEParameterTagID" INTEGER NOT NULL,
	"CCEParameterID" INTEGER NULL,
	"TagID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CCEREFERENCE" (
	"CCEReferenceID" INTEGER NOT NULL,
	"resource_id" TEXT NOT NULL,
	"ReferenceText" TEXT NOT NULL,
	"ReferenceID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CCEREFERENCEFORCCE" (
	"CCECCEReferenceID" INTEGER NOT NULL,
	"CCEReferenceID" INTEGER NOT NULL,
	"CCEID" INTEGER NULL,
	"cce_id" TEXT NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CCERESOURCE" (
	"CCEResourceID" INTEGER NOT NULL,
	"resource_id" TEXT NOT NULL,
	"modified" TEXT NULL,
	"ResourceTitle" TEXT NULL,
	"ResourcePublisher" TEXT NULL,
	"issued" TEXT NULL,
	"ResourceVersion" TEXT NULL,
	"ResourceFormat" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CCERESOURCEAUTHOR" (
	"CCEResourceAuthorID" INTEGER NOT NULL,
	"CCEResourceID" INTEGER NOT NULL,
	"AuthorID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CCERESOURCEFORCCE" (
	"CCECCEResourceID" INTEGER NOT NULL,
	"CCEResourceID" INTEGER NOT NULL,
	"CCEID" INTEGER NULL,
	"cce_id" TEXT NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CCERESOURCEFORCCEREFERENCE" (
	"CCEReferenceCCEResourceID" INTEGER NOT NULL,
	"CCEResourceID" INTEGER NOT NULL,
	"CCEReferenceID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CCETECHNICALMECHANISM" (
	"CCETechnicalMechanismID" INTEGER NOT NULL,
	"TechnicalMechanismText" TEXT NOT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "CCETECHNICALMECHANISMFORCCE" (
	"CCECCETechnicalMechanismID" INTEGER NOT NULL,
	"CCEID" INTEGER NULL,
	"CCETechnicalMechanismID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "CCETECHNICALMECHANISMTAG" (
	"CCETechnicalMechanismTagID" INTEGER NOT NULL,
	"CCETechnicalMechanismID" INTEGER NULL,
	"TagID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CERTIFICATE" (
	"CertificateID" INTEGER NOT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CERTIFICATION" (
	"CertificationID" INTEGER NOT NULL,
	"CertificationGUID" TEXT NULL,
	"CertificationAcronym" TEXT NULL,
	"CertificationName" TEXT NOT NULL,
	"CertificationDescription" TEXT NULL,
	"lang" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ValidityID" INTEGER NULL,
	"TrustLevelID" INTEGER NULL,
	"TrustReasonID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CERTIFICATIONSKILL" (
	"CertificationSkillID" INTEGER NOT NULL,
	"CertificationID" INTEGER NULL,
	"SkillID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "CHANGECONTROL" (
	"ChangeControlID" INTEGER NOT NULL,
	"SecurityControlID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CHANGELOGENTRYTYPEENUM" (
	"ChangeLogEntryTypeEnumID" INTEGER NOT NULL,
	"ChangeLogEntryType" TEXT NULL,
	"ChangeLogEntryTypeDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "CHANGERECORD" (
	"ChangeRecordID" INTEGER NOT NULL,
	"ChangeRecordGUID" TEXT NULL,
	"ChangedObjectGUID" TEXT NULL,
	"BeforeChange" TEXT NULL,
	"AfterChange" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"ConfidenceReasonID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "CHANGEREQUEST" (
	"ChangeRequestID" INTEGER NOT NULL,
	"ChangeRequestGUID" TEXT NULL,
	"ImportanceID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"StatusID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CHANGEREQUESTAPPROVAL" (
	"ChangeRequestApprovalID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "CHANGEREQUESTCHANGERECORD" (
	"ChangeRequestChangeRecordID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "CHAPTER" (
	"ChapterID" INTEGER NOT NULL,
	"SectionID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CHARACTER" (
	"CharacterID" INTEGER NOT NULL,
	"CharacterGUID" TEXT NULL,
	"CharacterValue" TEXT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CHARACTERBLACKLIST" (
	"CharacterBlacklistID" INTEGER NOT NULL,
	"CharacterID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "CHARACTERENCODING" (
	"CharacterEncodingID" INTEGER NOT NULL,
	"CharacterEncodingName" TEXT NOT NULL,
	"CharacterEncodingDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"EnumerationVersionID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"BLOB" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "CHARACTERISTIC" (
	"CharacteristicID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "CHARACTERSET" (
	"CharacterSetID" INTEGER NOT NULL,
	"CharacterSetGUID" TEXT NULL,
	"CharacterSetName" TEXT NULL,
	"CharacterSetValue" TEXT NULL,
	"CharacterSetDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "CHARACTERSETBLACKLIST" (
	"CharacterSetBlacklistID" INTEGER NOT NULL,
	"CharacterSetID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CHARACTERSETWHITELIST" (
	"CharacterSetWhitelistID" INTEGER NOT NULL,
	"CharacterSetID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CHARACTERWHITELIST" (
	"CharacterWhitelistID" INTEGER NOT NULL,
	"CharacterID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "CHARSET" (
	"CharSetID" INTEGER NOT NULL,
	"CharacterSetID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CHECKENUMERATION" (
	"CheckEnumerationID" INTEGER NOT NULL,
	"EnumerationValue" TEXT NOT NULL,
	"EnumerationDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CHECKLIST" (
	"ChecklistID" INTEGER NOT NULL,
	"Title" TEXT NULL,
	"Description" TEXT NULL,
	"AnswerSchemes" TEXT NULL,
	"ChecklistCategoryID" INTEGER NULL,
	"MethodologyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CHECKLISTANSWER" (
	"AnswerID" INTEGER NOT NULL,
	"QuestionID" INTEGER NULL,
	"Answer" TEXT NULL,
	"AnswerComments" TEXT NULL,
	"AttachmentID" INTEGER NULL,
	"AttachmentData" BLOB NULL,
	"MIMEID" INTEGER NULL,
	"AttachmentMimeType" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"OrganisationID" INTEGER NULL,
	"PersonID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CHECKLISTCATEGORY" (
	"ChecklistCategoryID" INTEGER NOT NULL,
	"CategoryID" INTEGER NULL,
	"Title" TEXT NULL,
	"ChecklistCategoryDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CHECKLISTCHAPTER" (
	"ChapterID" INTEGER NOT NULL,
	"Title" TEXT NULL,
	"ChecklistID" INTEGER NULL,
	"ParentChapterID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CHECKLISTQUESTION" (
	"QuestionID" INTEGER NOT NULL,
	"QuestionRefID" TEXT NULL,
	"Title" TEXT NULL,
	"LongName" TEXT NULL,
	"Description" TEXT NULL,
	"Target" TEXT NULL,
	"ChapterID" INTEGER NULL,
	"Tags" TEXT NULL,
	"lang" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CHECKLISTQUESTIONCATEGORY" (
	"QuestionCategoryID" INTEGER NOT NULL,
	"QuestionID" INTEGER NOT NULL,
	"CategoryID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CHECKLISTQUESTIONSECURITYCONTROL" (
	"QuestionSecurityControlID" INTEGER NOT NULL,
	"QuestionID" INTEGER NOT NULL,
	"SecurityControlID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CIAIMPACTFORATTACKPATTERN" (
	"AttackPatternCIAImpactID" INTEGER NOT NULL,
	"AttackPatternID" INTEGER NULL,
	"AttackPatternGUID" TEXT NULL,
	"Confidentiality_Impact" TEXT NULL,
	"Integrity_Impact" TEXT NULL,
	"Availability_Impact" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CLASSIFICATION" (
	"ClassificationID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "CLASSIFICATIONCATEGORY" (
	"ClassificationCategoryID" INTEGER NOT NULL,
	"ClassificationCategoryGUID" TEXT NULL,
	"ClassificationCategoryName" TEXT NULL,
	"ClassificationCategoryDescription" TEXT NULL,
	"CategoryID" INTEGER NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "CLASSIFICATIONLEVEL" (
	"ClassificationLevelID" INTEGER NOT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CLASSIFICATIONRESTRICTION" (
	"ClassificationRestrictionID" INTEGER NOT NULL,
	"ClassificationID" INTEGER NOT NULL,
	"RestrictionID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"ValidityID" INTEGER NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CLUSTEREDGENODEPAIR" (
	"ClusterEdgeNodePairID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "COASTAGE" (
	"COAStageID" INTEGER NOT NULL,
	"COAStageGUID" TEXT NULL,
	"COAStageName" TEXT NOT NULL,
	"COAStageDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"EnumerationVersionID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CODE" (
	"CodeID" INTEGER NOT NULL,
	"CodeGUID" TEXT NULL,
	"Block_Nature" TEXT NULL,
	"ScriptID" INTEGER NULL,
	"Description" TEXT NULL,
	"Type" TEXT NULL,
	"CodeTypeID" INTEGER NULL,
	"Purpose" TEXT NULL,
	"CodePurposeID" INTEGER NULL,
	"Code_Language" TEXT NULL,
	"CodeLanguageID" INTEGER NULL,
	"TargetedPlatformsID" INTEGER NULL,
	"Processor_Family" TEXT NULL,
	"Discovery_Method" TEXT NULL,
	"MeasureSourceID" INTEGER NULL,
	"Start_Address" TEXT NULL,
	"MemoryAddressID" INTEGER NULL,
	"Code_Segment" TEXT NULL,
	"Code_Segment_XOR" TEXT NULL,
	"CodeSegmentXORID" INTEGER NULL,
	"DigitalSignaturesID" INTEGER NULL,
	"Extracted_Features" TEXT NULL,
	"ExtractedFeaturesID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"RepositoryID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"TrustLevelID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CODEFUNCTION" (
	"CodeFunctionID" INTEGER NOT NULL,
	"CodeFunctionGUID" TEXT NULL,
	"CodeID" INTEGER NULL,
	"CodeGUID" TEXT NULL,
	"FunctionID" INTEGER NULL,
	"FunctionGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"CollectionMethodID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"ConfidenceReasonID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"LastCheckedDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "CODELANGUAGE" (
	"CodeLanguageID" INTEGER NOT NULL,
	"LanguageID" INTEGER NULL,
	"BLOB" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "CODELANGUAGES" (
	"CodeLanguagesID" INTEGER NOT NULL,
	"CodeID" INTEGER NOT NULL,
	"LanguageID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"CodeLanguageDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"CollectionMethodID" INTEGER NULL,
	"CollectionToolID" INTEGER NULL,
	"DiscoveryMethodID" INTEGER NULL,
	"DiscoveryToolID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CODELICENSE" (
	"CodeLicenseID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "CODELINE" (
	"CodeLineID" INTEGER NOT NULL,
	"CodeLineGUID" TEXT NULL,
	"LineOfCode" TEXT NULL,
	"KnownVulnerable" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "CODELINEFUNCTION" (
	"CodeLineFunctionID" INTEGER NOT NULL,
	"CodeLineID" INTEGER NOT NULL,
	"FunctionID" INTEGER NULL,
	"LanguageFunctionID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "CODELINES" (
	"CodeLinesID" INTEGER NOT NULL,
	"CodeID" INTEGER NOT NULL,
	"CodeLineID" INTEGER NOT NULL,
	"ordinal_position" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "CODEPROCESSORTYPE" (
	"CodeProcessorTypeID" INTEGER NOT NULL,
	"CodeID" INTEGER NOT NULL,
	"ProcessorTypeID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CODEPURPOSE" (
	"CodePurposeID" INTEGER NOT NULL,
	"CodePurposeEnumID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "CODEPURPOSEENUM" (
	"CodePurposeEnumID" INTEGER NOT NULL,
	"CodePurpose" TEXT NULL,
	"CodePurposeDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"BLOB" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "CODESEGMENTXOR" (
	"CodeSegmentXORID" INTEGER NOT NULL,
	"xor_pattern" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "CODETYPE" (
	"CodeTypeID" INTEGER NOT NULL,
	"CodeTypeEnumID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CODETYPEENUM" (
	"CodeTypeEnumID" INTEGER NOT NULL,
	"CodeType" TEXT NULL,
	"CodeTypeDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"BLOB" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "COLLECTIONMETHOD" (
	"CollectionMethodID" INTEGER NOT NULL,
	"CollectionMethodName" TEXT NULL,
	"MeasureSourceID" INTEGER NULL,
	"CollectionMethodDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"TrustLevelID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "COLLECTIONMETHODDESCRIPTION" (
	"CollectionMethodDescriptionID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "COLLECTIONMETHODREFERENCE" (
	"CollectionMethodReferenceID" INTEGER NOT NULL,
	"CollectionMethodID" INTEGER NOT NULL,
	"ReferenceID" INTEGER NOT NULL,
	"CollectionMethodDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "COLLECTIONMETHODTAG" (
	"CollectionMethodTagID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "COLSTAGE" (
	"COLStageID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "COMMAND" (
	"CommandID" INTEGER NOT NULL,
	"CommandName" TEXT NOT NULL,
	"CommandDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"KnownVulnerable" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "COMMANDANDCONTROLPROPERTIES" (
	"CommandandControlPropertiesID" INTEGER NOT NULL,
	"CommandandControlPropertiesName" TEXT NULL,
	"CommandandControlPropertiesDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"VocabularyID" INTEGER NULL,
	"EnumerationVersionID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "COMMANDANDCONTROLSTRATEGICOBJECTIVE" (
	"CommandandControlStrategicObjectiveID" INTEGER NOT NULL,
	"CommandandControlStrategicObjectiveName" TEXT NULL,
	"CommandandControlStrategicObjectiveDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"EnumerationVersionID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "COMMANDANDCONTROLTACTICALOBJECTIVE" (
	"CommandandControlTacticalObjectiveID" INTEGER NOT NULL,
	"CommandandControlTacticalObjectiveName" TEXT NULL,
	"CommandandControlTacticalObjectiveDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"EnumerationVersionID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "COMMANDS" (
	"CommandsID" INTEGER NOT NULL,
	"ScriptName" TEXT NOT NULL,
	"CommandsDescription" TEXT NULL,
	"BLOB" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "COMMONCAPABILITYPROPERTIES" (
	"CommonCapabilityPropertiesID" INTEGER NOT NULL,
	"CommonCapabilityPropertiesName" TEXT NULL,
	"CommonCapabilityPropertiesDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"EnumerationVersionID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "COMPLIANCE" (
	"ComplianceID" INTEGER NOT NULL,
	"ComplianceGUID" TEXT NULL,
	"ComplianceName" TEXT NULL,
	"ComplianceVersion" TEXT NULL,
	"ComplianceDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ImportanceID" INTEGER NULL,
	"TrustLevelID" INTEGER NULL,
	"TrustReasonID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "COMPLIANCECATEGORY" (
	"ComplianceCategoryID" INTEGER NOT NULL,
	"ComplianceCategoryName" TEXT NULL,
	"ComplianceCategoryDescription" TEXT NULL,
	"ComplianceID" INTEGER NULL,
	"ParentCategoryID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "COMPLIANCECERTIFICATION" (
	"ComplianceCertificationID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "COMPLIANCECHANGERECORD" (
	"ComplianceChangeRecordID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "COMPLIANCEDESCRIPTION" (
	"ComplianceDescriptionID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "COMPLIANCEREFERENCE" (
	"ComplianceReferenceID" INTEGER NOT NULL,
	"ComplianceID" INTEGER NOT NULL,
	"ReferenceID" INTEGER NOT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ComplianceReferenceDescription" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "COMPLIANCETAG" (
	"ComplianceTagID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "COMPONENT" (
	"ComponentID" INTEGER PRIMARY KEY,
	"ComponentGUID" TEXT NULL,
	"SbomID" INTEGER NULL,
	"Name" TEXT NULL,
	"Version" TEXT NULL,
	"ComponentType" TEXT NULL,
	"PURL" TEXT NULL,
	"CPE" TEXT NULL,
	"CPEID" INTEGER NULL,
	"Supplier" TEXT NULL,
	"Publisher" TEXT NULL,
	"Group" TEXT NULL,
	"License" TEXT NULL,
	"Hash" TEXT NULL,
	"BOMRef" TEXT NULL,
	"Scope" TEXT NULL,
	"Description" TEXT NULL,
	"AssetID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"TenantID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "SBOM" (
	"SbomID" INTEGER PRIMARY KEY,
	"SbomGUID" TEXT NULL,
	"Name" TEXT NULL,
	"Format" TEXT NULL,
	"SpecVersion" TEXT NULL,
	"SerialNumber" TEXT NULL,
	"SubjectName" TEXT NULL,
	"SubjectVersion" TEXT NULL,
	"AssetID" INTEGER NULL,
	"ApplicationID" INTEGER NULL,
	"ComponentCount" INTEGER NULL,
	"VulnerableCount" INTEGER NULL,
	"LicenseCount" INTEGER NULL,
	"Source" TEXT NULL,
	"ToolName" TEXT NULL,
	"Notes" TEXT NULL,
	"PersonID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"TenantID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "COMPONENTDEPENDENCY" (
	"DependencyID" INTEGER PRIMARY KEY,
	"SbomID" INTEGER NULL,
	"FromRef" TEXT NULL,
	"ToRef" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"TenantID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "COMPRESSION" (
	"CompressionID" INTEGER NOT NULL,
	"compression_mechanism" TEXT NULL,
	"compression_mechanism_ref" TEXT NULL,
	"CompressionDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "COMPRESSIONMECHANISM" (
	"CompressionMechanismID" INTEGER NOT NULL,
	"MechanismID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "COMPRESSIONMECHANISMDESCRIPTION" (
	"CompressionMechanismDescriptionID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "COMPRESSIONMECHANISMTAG" (
	"CompressionMechanismTagID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "COMPRESSIONREFERENCE" (
	"CompressionReferenceID" INTEGER NOT NULL,
	"CompressionID" INTEGER NOT NULL,
	"ReferenceID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CONCATFUNCTION" (
	"ConcatFunctionID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "CONDITION" (
	"ConditionID" INTEGER NOT NULL,
	"ConditionName" TEXT NOT NULL,
	"ConditionDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CONDITIONAPPLICATION" (
	"ConditionApplicationID" INTEGER NOT NULL,
	"ConditionApplicationName" TEXT NOT NULL,
	"ConditionApplicationDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CONFIDENCELEVEL" (
	"ConfidenceLevelID" INTEGER NOT NULL,
	"ConfidenceLevelGUID" TEXT NULL,
	"ConfidenceLevelName" TEXT NOT NULL,
	"ConfidenceLevelDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CONFIDENCEREASON" (
	"ConfidenceReasonID" INTEGER NOT NULL,
	"ConfidenceReasonName" TEXT NULL,
	"ConfidenceReasonDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CONFIDENTIALITYLEVEL" (
	"ConfidentialityLevelID" INTEGER NOT NULL,
	"ClassificationID" INTEGER NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CONNECTION" (
	"ConnectionID" INTEGER NOT NULL,
	"ipaddressIPv4" TEXT NULL,
	"ipaddressIPv6" TEXT NULL,
	"macaddress" TEXT NULL,
	"subnetmaskIPv4" TEXT NULL,
	"subnetmaskIPv6" TEXT NULL,
	"defaultrouteIPv4" TEXT NULL,
	"defaultrouteIPv6" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CONNECTIONFORASSET" (
	"AssetConnectionID" INTEGER NOT NULL,
	"AssetConnectionGUID" TEXT NULL,
	"ConnectionID" INTEGER NOT NULL,
	"ConnectionGUID" TEXT NULL,
	"AssetID" INTEGER NOT NULL,
	"AssetGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"CollectionMethodID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"ConfidenceReasonID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ValidityID" INTEGER NULL,
	"LastCheckedDate" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"TrustLevelID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CONTACT" (
	"ContactID" INTEGER NOT NULL,
	"ContactTypeID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CONTACTTYPE" (
	"ContactTypeID" INTEGER NOT NULL,
	"ContactTypeGUID" TEXT NULL,
	"ContactTypeName" TEXT NOT NULL,
	"ContactTypeDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "CONTENTENUMERATION" (
	"ContentEnumerationID" INTEGER NOT NULL,
	"ContentEnumerationValue" TEXT NOT NULL,
	"ContentEnumerationDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "CONTEXT" (
	"ContextID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "CONTROL" (
	"ControlID" INTEGER NOT NULL,
	"ControlGUID" TEXT NULL,
	"ControlName" TEXT NULL,
	"ControlDescription" TEXT NULL,
	"ReliabilityID" INTEGER NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ValidityID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CONTROLCATEGORY" (
	"ControlCategoryID" INTEGER NOT NULL,
	"ControlCategoryGUID" TEXT NULL,
	"CategoryID" INTEGER NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ValidityID" INTEGER NULL,
	"TrustLevelID" INTEGER NULL,
	"TrustReasonID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CONTROLDESCRIPTION" (
	"ControlDescriptionID" INTEGER NOT NULL,
	"ControlID" INTEGER NULL,
	"ControlGUID" TEXT NULL,
	"DescriptionID" INTEGER NULL,
	"DescriptionGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CONTROLREFERENCE" (
	"ControlReferenceID" INTEGER NOT NULL,
	"ControlID" INTEGER NULL,
	"ControlGUID" TEXT NULL,
	"ReferenceID" INTEGER NULL,
	"ReferenceGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CONTROLSTRENGTH" (
	"ControlStrengthID" INTEGER NOT NULL,
	"ControlStrengthGUID" TEXT NULL,
	"ControlStrengthName" TEXT NULL,
	"ControlStrengthDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CONTROLTAG" (
	"ControlTagID" INTEGER NOT NULL,
	"ControlID" INTEGER NULL,
	"ControlGUID" TEXT NULL,
	"TagID" INTEGER NULL,
	"TagGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "COOKIE" (
	"CookieID" INTEGER NOT NULL,
	"CookieGUID" TEXT NULL,
	"CookieNameValue" TEXT NULL,
	"CookieNameID" INTEGER NULL,
	"CookieNameGUID" TEXT NULL,
	"CookieValue" TEXT NULL,
	"CookieDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"CollectionMethodID" INTEGER NULL,
	"CollectionToolID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "COOKIEAPPLICATION" (
	"CookieApplicationID" INTEGER NOT NULL,
	"ApplicationID" INTEGER NULL,
	"ApplicationGUID" TEXT NULL,
	"CookieApplicationRelationship" TEXT NULL,
	"CookieApplicationDescription" TEXT NULL,
	"CookieID" INTEGER NULL,
	"CookieGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "COOKIECPE" (
	"CookieCPEID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "COOKIEFILE" (
	"CookieFileID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "COOKIENAME" (
	"CookieNameID" INTEGER NOT NULL,
	"CookieNameGUID" TEXT NULL,
	"CookieNameValue" TEXT NULL,
	"CookieNameDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "COOKIENAMEAPPLICATION" (
	"CookieNameApplicationID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "COOKIENAMEORGANISATION" (
	"CookieNameOrganisationID" INTEGER NOT NULL,
	"OrganisationID" INTEGER NULL,
	"OrganisationGUID" TEXT NULL,
	"CookieNameOrganisationRelationship" TEXT NULL,
	"CookieNameOrganisationDescription" TEXT NULL,
	"CookieNameID" INTEGER NULL,
	"CookieNameGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "COOKIENAMEPRODUCT" (
	"CookieNameProductID" INTEGER NOT NULL,
	"CookieNameID" INTEGER NULL,
	"ProductID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "COOKIEPERSON" (
	"CookiePersonID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "COOKIESECURITYCONTROL" (
	"CookieSecurityControlID" INTEGER NOT NULL,
	"CookieID" INTEGER NULL,
	"CookieGUID" TEXT NULL,
	"CookieSecurityControlRelationship" TEXT NULL,
	"CookieSecurityControlDescription" TEXT NULL,
	"SecurityControlID" INTEGER NULL,
	"SecurityControlGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "COUNTFUNCTION" (
	"CountFunctionID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "COUNTRY" (
	"CountryID" INTEGER NOT NULL,
	"CountryGUID" TEXT NULL,
	"CountryCode" TEXT NOT NULL,
	"CountryName" TEXT NOT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromdate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "COUNTRYLAW" (
	"CountryLawID" INTEGER NOT NULL,
	"CountryID" INTEGER NOT NULL,
	"LawID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "COUNTRYLOCALE" (
	"CountryLocaleID" INTEGER NOT NULL,
	"CountryID" INTEGER NOT NULL,
	"LocaleID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "COUNTRYTELEPHONE" (
	"CountryTelephoneID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "COUNTRYZONE" (
	"CountryZoneID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "COURSEOFACTION" (
	"CourseOfActionID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "COURSEOFACTIONTYPE" (
	"CourseOfActionTypeID" INTEGER NOT NULL,
	"CourseOfActionTypeGUID" TEXT NULL,
	"CourseOfActionTypeName" TEXT NULL,
	"CourseOfActionTypeDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"EnumerationVersionID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "COURSEOFLAW" (
	"CourseOfLawID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "CPE" (
	"CPEID" INTEGER NOT NULL,
	"CPEName" TEXT NOT NULL,
	"CPETitle" TEXT NULL,
	"NVDID" INTEGER NULL,
	"ModificationDate" TEXT NULL,
	"Status" TEXT NULL,
	"CPEDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"TrustLevelID" INTEGER NULL,
	"TrustReasonID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CPEBANNER" (
	"CPEBannerID" INTEGER NOT NULL,
	"CPEID" INTEGER NOT NULL,
	"BannerID" INTEGER NOT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"RepositoryID" INTEGER NULL,
	"CreationObjectID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CPEBLACKLIST" (
	"CPEBlacklistID" INTEGER NOT NULL,
	"CPEID" INTEGER NOT NULL,
	"OrganisationID" INTEGER NULL,
	"PersonID" INTEGER NULL,
	"AssetID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CPEFILELIST" (
	"CPEFileListID" INTEGER NOT NULL,
	"CPEID" INTEGER NULL,
	"CPEName" TEXT NULL,
	"CPEFileListRelationship" TEXT NULL,
	"CPEFileListDescription" TEXT NULL,
	"FileListID" INTEGER NULL,
	"FileListGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "CPEFORAPPLICATION" (
	"ApplicationCPEID" INTEGER NOT NULL,
	"ApplicationID" INTEGER NOT NULL,
	"ApplicationGUID" TEXT NULL,
	"CPEID" INTEGER NOT NULL,
	"CreationDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"LastCheckedDate" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"VocabularyID" INTEGER NULL,
	"CollectionMethodID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CPEFORASSET" (
	"AssetCPEID" INTEGER NOT NULL,
	"AssetID" INTEGER NOT NULL,
	"AssetGUID" TEXT NULL,
	"CPEID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"CollectionMethodID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"TrustLevelID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CPEFORFIXACTION" (
	"FixActionCPEID" INTEGER NOT NULL,
	"CPEID" INTEGER NOT NULL,
	"FixActionID" INTEGER NOT NULL,
	"relationshiptype" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"CollectionMethodID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CPEFORORGANISATION" (
	"OrganisationCPEID" INTEGER NOT NULL,
	"OrganisationID" INTEGER NOT NULL,
	"CPEID" INTEGER NOT NULL,
	"Usage" TEXT NULL,
	"Description" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CollectionMethodID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"LastCheckedDate" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CPEFORPLATFORM" (
	"PlatformCPEID" INTEGER NOT NULL,
	"PlatformID" INTEGER NOT NULL,
	"CPEID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CPEFORPRODUCT" (
	"ProductCPEID" INTEGER NOT NULL,
	"ProductID" INTEGER NOT NULL,
	"ProductGUID" TEXT NULL,
	"CPEID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CPEFORTOOL" (
	"ToolCPEID" INTEGER NOT NULL,
	"ToolID" INTEGER NOT NULL,
	"ToolGUID" TEXT NULL,
	"CPEID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CPEGOOGLEDORK" (
	"CPEGoogleDorkID" INTEGER NOT NULL,
	"CPEID" INTEGER NOT NULL,
	"GoogleDorkID" INTEGER NOT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CPELOGICALTEST" (
	"CPELogicalTestID" INTEGER NOT NULL,
	"negate" INTEGER NULL,
	"OperatorEnumerationID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CPEPATCH" (
	"CPEPatchID" INTEGER NOT NULL,
	"CPEID" INTEGER NULL,
	"PatchID" INTEGER NULL,
	"PatchGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CPEPORT" (
	"CPEPortID" INTEGER NOT NULL,
	"CPEID" INTEGER NOT NULL,
	"PortID" INTEGER NOT NULL,
	"CPEPortUsage" TEXT NULL,
	"CPEPortDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CPEREFERENCE" (
	"CPEReferenceID" INTEGER NOT NULL,
	"CPEID" INTEGER NULL,
	"ReferenceID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CPETAG" (
	"CPETagID" INTEGER NOT NULL,
	"CPEID" INTEGER NOT NULL,
	"TagID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidityID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CPETECHNOLOGY" (
	"CPETechnologyID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "CPEURI" (
	"CPEURIID" INTEGER NOT NULL,
	"CPEID" INTEGER NOT NULL,
	"URIObjectID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CPEWHITELIST" (
	"CPEWhitelistID" INTEGER NOT NULL,
	"CPEID" INTEGER NOT NULL,
	"OrganisationID" INTEGER NULL,
	"OrganisationGUID" TEXT NULL,
	"PersonID" INTEGER NULL,
	"PersonGUID" TEXT NULL,
	"AssetID" INTEGER NULL,
	"AssetGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CREATIONOBJECT" (
	"CreationObjectID" INTEGER NOT NULL,
	"CreationObjectGUID" TEXT NULL,
	"ObjectID" INTEGER NULL,
	"RecordGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"OrganisationID" INTEGER NULL,
	"OrganisationGUID" TEXT NULL,
	"PersonID" INTEGER NULL,
	"PersonGUID" TEXT NULL,
	"AccountID" INTEGER NULL,
	"AccountGUID" TEXT NULL,
	"UserID" INTEGER NULL,
	"UserGUID" TEXT NULL,
	"AssetID" INTEGER NULL,
	"AssetGUID" TEXT NULL,
	"SensorID" INTEGER NULL,
	"SensorGUID" TEXT NULL,
	"ToolID" INTEGER NULL,
	"ToolGUID" TEXT NULL,
	"ToolFunctionID" INTEGER NULL,
	"ToolFunctionGUID" TEXT NULL,
	"ToolCodeID" INTEGER NULL,
	"ToolCodeGUID" TEXT NULL,
	"CollectionMethodID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"ConfidenceReasonID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"suspected_malicious" INTEGER NULL,
	"SuspectedMaliciousReasonID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CREATIONOBJECTHASH" (
	"CreationObjectHashID" INTEGER NOT NULL,
	"CreationObjectID" INTEGER NOT NULL,
	"CreationObjectGUID" TEXT NULL,
	"CreationObjectHashValue" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"CreationDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "CREDENTIAL" (
	"CredentialID" INTEGER NOT NULL,
	"AuthenticationTypeID" INTEGER NULL,
	"Username" TEXT NULL,
	"Password" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidityID" INTEGER NULL,
	"TrustLevelID" INTEGER NULL,
	"TrustReasonID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CREDENTIALACCESSRECORD" (
	"CredentialAccessRecordID" INTEGER NOT NULL,
	"CredentialID" INTEGER NOT NULL,
	"AccessRecordID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"CreationRecordID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CREDENTIALREPOSITORY" (
	"CredentialRepositoryID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "CRITICALITYLEVEL" (
	"CriticalityLevelID" INTEGER NOT NULL,
	"CriticalityLevelGUID" TEXT NULL,
	"CriticalityLevelName" TEXT NULL,
	"CriticalityLevelDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CUSTOMOBJECT" (
	"CustomObjectID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "CWE" (
	"CWEID" TEXT NOT NULL,
	"CWEGUID" TEXT NULL,
	"CWEName" TEXT NULL,
	"CWEStatus" TEXT NULL,
	"CWEAbstraction" TEXT NULL,
	"CWEDescriptionSummary" TEXT NULL,
	"CWEExtendedDescription" TEXT NULL,
	"CWECausalNature" TEXT NULL,
	"CWEBackgroundDetails" TEXT NULL,
	"Maintenance_Notes" TEXT NULL,
	"Relationship_Notes" TEXT NULL,
	"Terminology_Notes" TEXT NULL,
	"White_Box_Definitions" TEXT NULL,
	"Platform_Notes" TEXT NULL,
	"Other_Notes" TEXT NULL,
	"Research_Gaps" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CWEURL" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"CollectionMethodID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"ConfidenceReasonID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ImportanceID" INTEGER NULL,
	"CriticalityLevelID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CWEAFFECTEDFUNCTION" (
	"CWEAffectedFunctionID" INTEGER NOT NULL,
	"CWEID" TEXT NOT NULL,
	"FunctionID" INTEGER NOT NULL,
	"FunctionGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CWEAFFECTEDRESOURCE" (
	"CWEAffectedResourceID" INTEGER NOT NULL,
	"CWEID" TEXT NOT NULL,
	"AffectedResourceID" INTEGER NOT NULL,
	"AffectedResourceGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CWEALTERNATETERM" (
	"CWEAlternateTermID" INTEGER NOT NULL,
	"CWEID" TEXT NOT NULL,
	"AlternateTerm" TEXT NOT NULL,
	"AlternateTermDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CWEALTERNATETERMTAG" (
	"CWEAlternateTermTagID" INTEGER NOT NULL,
	"CWEAlternateTermID" INTEGER NULL,
	"TagID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CWEARCHITECTURALPARADIGM" (
	"CWEArchitecturalParadigmID" INTEGER NOT NULL,
	"CWEID" TEXT NULL,
	"ArchitecturalParadigmID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CWEATTACKCONSEQUENCE" (
	"CWEAttackConsequenceID" INTEGER NOT NULL,
	"CWEID" TEXT NOT NULL,
	"CWEAttackConsequenceOrder" INTEGER NOT NULL,
	"Consequence_Note" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CWEATTACKCONSEQUENCESCOPE" (
	"CWEAttackConsequenceScopeID" INTEGER NOT NULL,
	"CWEAttackConsequenceID" INTEGER NULL,
	"AttackScopeID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CWEATTACKCONSEQUENCETAG" (
	"CWEAttackConsequenceTagID" INTEGER NOT NULL,
	"CWEAttackConsequenceID" INTEGER NULL,
	"TagID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CWEATTACKTECHNICALIMPACT" (
	"CWEAttackTechnicalImpactID" INTEGER NOT NULL,
	"CWEAttackConsequenceID" INTEGER NULL,
	"AttackTechnicalImpactID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CWEDEMONSTRATIVEEXAMPLE" (
	"CWEDemonstrativeExampleID" INTEGER NOT NULL,
	"CWEID" TEXT NOT NULL,
	"DemonstrativeExampleID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CWEDESCRIPTION" (
	"CWEDescriptionID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "CWEDETECTIONMETHOD" (
	"CWEDetectionMethodID" INTEGER NOT NULL,
	"CWEDetectionMethodGUID" TEXT NULL,
	"CWEID" TEXT NOT NULL,
	"CWEGUID" TEXT NULL,
	"DetectionMethodID" INTEGER NOT NULL,
	"DetectionMethodGUID" TEXT NULL,
	"CWEDetectionMethodDescription" TEXT NULL,
	"CWEDetectionMethodEffectiveness" TEXT NULL,
	"CWEDetectionMethodEffectivenessNotes" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"TrustLevelID" INTEGER NULL,
	"TrustReasonID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "CWEEXPLOITATIONFACTOR" (
	"CWEExploitationFactorID" INTEGER NOT NULL,
	"CWEID" TEXT NULL,
	"ExploitationFactorID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "CWEFOROWASPTOP10" (
	"CWEOWASPTOP10ID" INTEGER NOT NULL,
	"CWEID" TEXT NOT NULL,
	"OWASPTOP10ID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"Mapping_Fit" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CWEFUNCTIONALAREA" (
	"CWEFunctionalAreaID" INTEGER NOT NULL,
	"CWEFunctionalAreaGUID" TEXT NULL,
	"CWEID" TEXT NULL,
	"FunctionalAreaID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CWELANGUAGE" (
	"CWELanguageID" INTEGER NOT NULL,
	"CWEID" TEXT NOT NULL,
	"LanguageID" INTEGER NOT NULL,
	"LanguageGUID" TEXT NULL,
	"Prevalence" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CWELANGUAGECLASS" (
	"CWELanguageClassID" INTEGER NOT NULL,
	"CWEID" TEXT NOT NULL,
	"LanguageClassID" INTEGER NOT NULL,
	"BLOB" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CWEMODEOFINTRODUCTION" (
	"CWEModeOfIntroductionID" INTEGER NOT NULL,
	"CWEID" TEXT NULL,
	"ModeOfIntroductionDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CWEMODEOFINTRODUCTIONTAG" (
	"CWEModeOfIntroductionTagID" INTEGER NOT NULL,
	"CWEModeOfIntroductionID" INTEGER NULL,
	"TagID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CWEORDINALITY" (
	"CWEOrdinalityID" INTEGER NOT NULL,
	"CWEID" TEXT NULL,
	"WeaknessOrdinality" TEXT NULL,
	"Ordinality_Description" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "CWEOS" (
	"CWEOSID" INTEGER NOT NULL,
	"CWEID" TEXT NULL,
	"Operating_System_Name" TEXT NULL,
	"Prevalence" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "CWEOSCLASS" (
	"CWEOSClassID" INTEGER NOT NULL,
	"CWEID" TEXT NULL,
	"OSClassID" INTEGER NULL,
	"Prevalence" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "CWEREFERENCE" (
	"CWEReferenceID" INTEGER NOT NULL,
	"CWEID" TEXT NOT NULL,
	"ReferenceID" INTEGER NOT NULL,
	"Reference_Section" TEXT NULL,
	"LocalReferenceID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CWERELATIONSHIPCATEGORY" (
	"CWERelationshipCategoryID" INTEGER NOT NULL,
	"CWEID" TEXT NOT NULL,
	"RelationshipNature" TEXT NOT NULL,
	"RelationshipTargetCWEID" TEXT NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "CWERELEVANTPROPERTY" (
	"CWERelevantPropertyID" INTEGER NOT NULL,
	"CWEID" TEXT NULL,
	"Relevant_Property" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CWEREPOSITORY" (
	"CWERepositoryID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "CWERESEARCHGAP" (
	"CWEResearchGapID" INTEGER NOT NULL,
	"CWEID" TEXT NULL,
	"ResearchGapText" TEXT NULL,
	"ResearchGapTextClean" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "CWETAG" (
	"CWETagID" INTEGER NOT NULL,
	"CWEID" TEXT NULL,
	"TagID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CWETAXONOMYNODE" (
	"CWETaxonomyNodeID" INTEGER NOT NULL,
	"CWEID" TEXT NOT NULL,
	"TaxonomyNodeID" INTEGER NOT NULL,
	"Mapping_Fit" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CWETECHNOLOGY" (
	"CWETechnologyID" INTEGER NOT NULL,
	"CWEID" TEXT NULL,
	"TechnologyID" INTEGER NULL,
	"Prevalence" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "CWETHEORETICALNOTE" (
	"CWETheoreticalNoteID" INTEGER NOT NULL,
	"CWEID" TEXT NOT NULL,
	"TheoreticalNoteID" INTEGER NOT NULL,
	"BLOB" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "CWETIMEOFINTRODUCTION" (
	"CWETimeOfIntroductionID" INTEGER NOT NULL,
	"CWEID" TEXT NOT NULL,
	"PhaseID" INTEGER NULL,
	"IntroductoryPhase" TEXT NOT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "CWETOP25" (
	"CWETOP25ID" INTEGER NOT NULL,
	"CWEID" TEXT NOT NULL,
	"YearTop25" INTEGER NOT NULL,
	"Rank" INTEGER NOT NULL,
	"Score" DOUBLE PRECISION NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "DATACLASSIFICATION" (
	"DataClassificationID" INTEGER NOT NULL,
	"InformationTypeID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "DATADICTIONARY" (
	"DataDictionaryID" INTEGER NOT NULL,
	"DictionaryID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "DATAEXFILTRATIONPROPERTIES" (
	"DataExfiltrationPropertiesID" INTEGER NOT NULL,
	"DataExfiltrationPropertiesName" TEXT NULL,
	"DataExfiltrationPropertiesDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"EnumerationVersionID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "DATAEXFILTRATIONSTRATEGICOBJECTIVE" (
	"DataExfiltrationStrategicObjectiveID" INTEGER NOT NULL,
	"DataExfiltrationStrategicObjectiveName" TEXT NULL,
	"DataExfiltrationStrategicObjectiveDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"EnumerationVersionID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "DATAEXFILTRATIONTACTICALOBJECTIVE" (
	"DataExfiltrationTacticalObjectiveID" INTEGER NOT NULL,
	"DataExfiltrationTacticalObjectiveName" TEXT NULL,
	"DataExfiltrationTacticalObjectiveDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"EnumerationVersionID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "DATAFEED" (
	"DataFeedID" INTEGER NOT NULL,
	"FeedID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "DATAFORMAT" (
	"DataFormatID" INTEGER NOT NULL,
	"DataFormatName" TEXT NULL,
	"DataFormatDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "DATAMODEL" (
	"DataModelID" INTEGER NOT NULL,
	"ModelID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "DATASEGMENT" (
	"DataSegmentID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "DATASIZEUNIT" (
	"DataSizeUnitID" INTEGER NOT NULL,
	"DataSizeName" TEXT NOT NULL,
	"DataSizeDescription" TEXT NULL,
	"lang" TEXT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "DATATHEFTPROPERTIES" (
	"DataTheftPropertiesID" INTEGER NOT NULL,
	"DataTheftPropertiesName" TEXT NULL,
	"DataTheftPropertiesDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"VocabularyID" INTEGER NULL,
	"EnumerationVersionID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "DATATHEFTSTRATEGICOBJECTIVE" (
	"DataTheftStrategicObjectiveID" INTEGER NOT NULL,
	"DataTheftStrategicObjectiveName" TEXT NULL,
	"DataTheftStrategicObjectiveDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"EnumerationVersionID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "DATATHEFTTACTICALOBJECTIVE" (
	"DataTheftTacticalObjectiveID" INTEGER NOT NULL,
	"DataTheftTacticalObjectiveName" TEXT NULL,
	"DataTheftTacticalObjectiveDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"EnumerationVersionID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "DATATRANSFER" (
	"DataTransferID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "DATATRANSFORMATION" (
	"DataTransformationID" INTEGER NOT NULL,
	"TransformationID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "DATATYPE" (
	"DataTypeID" INTEGER NOT NULL,
	"DataTypeName" TEXT NOT NULL,
	"DataTypeDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "DATETIMEFORMAT" (
	"DateTimeFormatID" INTEGER NOT NULL,
	"DateTimeFormatValue" TEXT NOT NULL,
	"DataType" TEXT NOT NULL,
	"DateTimeFormatDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "DEBUGGINGACTIONNAME" (
	"DebuggingActionNameID" INTEGER NOT NULL,
	"DebuggingActionNameName" TEXT NOT NULL,
	"DebuggingActionNameDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"EnumerationVersionID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "DEFENSETOOL" (
	"DefenseToolID" INTEGER NOT NULL,
	"DefenseToolGUID" TEXT NULL,
	"ToolID" INTEGER NULL,
	"DefenseToolName" TEXT NULL,
	"DefenseToolDescription" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"ReliabilityID" INTEGER NULL,
	"TrustLevelID" INTEGER NULL,
	"TrustReasonID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "DEFENSETOOLTYPE" (
	"DefenseToolTypeID" INTEGER NOT NULL,
	"DefenseToolTypeName" TEXT NOT NULL,
	"DefenseToolTypeDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "DEMONSTRATIVEEXAMPLE" (
	"DemonstrativeExampleID" INTEGER NOT NULL,
	"DemonstrativeExampleGUID" TEXT NULL,
	"DemonstrativeExampleVocabularyID" TEXT NULL,
	"DemonstrativeExampleIntroText" TEXT NULL,
	"DemonstrativeExampleBody" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"LanguageID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "DEMONSTRATIVEEXAMPLECODE" (
	"DemonstrativeExampleCodeID" INTEGER NOT NULL,
	"DemonstrativeExampleID" INTEGER NOT NULL,
	"CodeID" INTEGER NOT NULL,
	"Block_Nature" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "DEMONSTRATIVEEXAMPLEREFERENCE" (
	"DemonstrativeExampleReferenceID" INTEGER NOT NULL,
	"DemonstrativeExampleID" INTEGER NULL,
	"ReferenceID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "DEMONSTRATIVEEXAMPLEVULNERABILITY" (
	"DemonstrativeExampleVulnerabilityID" INTEGER NOT NULL,
	"DemonstrativeExampleID" INTEGER NULL,
	"VulnerabilityID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "DESCRIPTION" (
	"DescriptionID" INTEGER NOT NULL,
	"DescriptionGUID" TEXT NULL,
	"DescriptionText" TEXT NULL,
	"LocaleID" INTEGER NULL,
	"VersionID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ConfidentialityLevelID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "DESCRIPTIONCHANGERECORD" (
	"DescriptionChangeRecordID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "DESCRIPTIONREFERENCE" (
	"DescriptionReferenceID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "DESCRIPTIONTAG" (
	"DescriptionTagID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "DESTRUCTIONPROPERTIES" (
	"DestructionPropertiesID" INTEGER NOT NULL,
	"DestructionPropertiesName" TEXT NULL,
	"DestructionPropertiesDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"EnumerationVersionID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "DESTRUCTIONSTRATEGICOBJECTIVE" (
	"DestructionStrategicObjectiveID" INTEGER NOT NULL,
	"DestructionStrategicObjectiveName" TEXT NULL,
	"DestructionStrategicObjectiveDestruction" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"EnumerationVersionID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "DESTRUCTIONTACTICALOBJECTIVE" (
	"DestructionTacticalObjectiveID" INTEGER NOT NULL,
	"DestructionTacticalObjectiveName" TEXT NULL,
	"DestructionTacticalObjectiveDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"VocabularyID" INTEGER NULL,
	"EnumerationVersionID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "DETECTABILITY" (
	"DetectabilityID" INTEGER NOT NULL,
	"DetectabilityName" TEXT NOT NULL,
	"DetectabilityDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "DETECTIONMETHOD" (
	"DetectionMethodID" INTEGER NOT NULL,
	"DetectionMethodGUID" TEXT NULL,
	"MethodID" INTEGER NULL,
	"DetectionMethodVocabularyID" TEXT NULL,
	"DetectionMethodName" TEXT NOT NULL,
	"DetectionMethodDescription" TEXT NULL,
	"DetectionMethodEffectiveness" TEXT NULL,
	"DetectionMethodEffectivenessNotes" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "DEVICE" (
	"DeviceID" INTEGER NOT NULL,
	"DeviceGUID" TEXT NULL,
	"Device_Type" TEXT NOT NULL,
	"Manufacturer" TEXT NULL,
	"OrganisationID" INTEGER NULL,
	"Model" TEXT NULL,
	"Firmware_Version" TEXT NULL,
	"CPEID" INTEGER NULL,
	"CPEName" TEXT NULL,
	"Serial_Number" TEXT NULL,
	"Description" TEXT NULL,
	"ClockSpeedFrequency" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "DEVICEBLACKLIST" (
	"DeviceBlacklistID" INTEGER NOT NULL,
	"DeviceID" INTEGER NOT NULL,
	"OrganisationID" INTEGER NULL,
	"PersonID" INTEGER NULL,
	"AssetID" INTEGER NULL,
	"CreatedDate" INTEGER NULL,
	"ValidFromDate" INTEGER NULL,
	"ValidUntilDate" INTEGER NULL,
	"BLOB" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "DEVICECOMPONENT" (
	"DeviceComponentID" INTEGER NOT NULL,
	"DeviceComponentGUID" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "DEVICEDRIVERACTIONNAME" (
	"DeviceDriverActionNameID" INTEGER NOT NULL,
	"DeviceDriverActionNameName" TEXT NOT NULL,
	"DeviceDriverActionNameDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"EnumerationVersionID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "DEVICETYPE" (
	"DeviceTypeID" INTEGER NOT NULL,
	"DeviceTypeGUID" TEXT NULL,
	"DeviceTypeName" TEXT NULL,
	"DeviceTypeDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "DEVICEWHITELIST" (
	"DeviceWhitelistID" INTEGER NOT NULL,
	"DeviceID" INTEGER NOT NULL,
	"OrganisationID" INTEGER NULL,
	"PersonID" INTEGER NULL,
	"AssetID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"BLOB" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "DICTIONARY" (
	"DictionaryID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "DIGITALSIGNATUREINFO" (
	"DigitalSignatureInfoID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "DIGITALSIGNATURES" (
	"DigitalSignaturesID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "DIRECTORY" (
	"DirectoryID" INTEGER NOT NULL,
	"DirectoryGUID" TEXT NULL,
	"DirectoryPathname" TEXT NULL,
	"DirectoryDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "DIRECTORYACTIONNAME" (
	"DirectoryActionNameID" INTEGER NOT NULL,
	"DirectoryActionNameName" TEXT NOT NULL,
	"DirectoryActionNameDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"EnumerationVersionID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "DIRECTORYLIST" (
	"DirectoryListID" INTEGER NOT NULL,
	"DirectoryListGUID" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "DISCOVERYMETHOD" (
	"DiscoveryMethodID" INTEGER NOT NULL,
	"DiscoveryMethodGUID" TEXT NULL,
	"DiscoveryMethodName" TEXT NULL,
	"MeasureSourceID" INTEGER NULL,
	"DiscoveryMethodDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"EnumerationVersionID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "DISK" (
	"DiskID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "DISKACTIONNAME" (
	"DiskActionNameID" INTEGER NOT NULL,
	"DiskActionNameName" TEXT NULL,
	"DiskActionNameDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"EnumerationVersionID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "DISKPARTITION" (
	"DiskPartitionID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "DNSACTIONNAME" (
	"DNSActionNameID" INTEGER NOT NULL,
	"DNSActionNameName" TEXT NOT NULL,
	"DNSActionNameDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"EnumerationVersionID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "DNSCACHE" (
	"DNSCacheID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "DNSQUERY" (
	"DNSQueryID" INTEGER NOT NULL,
	"DNDQueryGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "DNSRECORD" (
	"DNSRecordID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "DOCUMENT" (
	"DocumentID" INTEGER NOT NULL,
	"DocumentGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"DocumentName" TEXT NULL,
	"DocumentDescription" TEXT NULL,
	"DocumentURL" TEXT NULL,
	"Category" TEXT NULL,
	"Author" TEXT NULL,
	"Classification" TEXT NULL,   -- data-sensitivity label: Public / Internal / Confidential / Restricted
	"TLP" TEXT NULL               -- Traffic Light Protocol 2.0 sharing marker (TLP:CLEAR…TLP:RED)
);

CREATE TABLE IF NOT EXISTS "DOCUMENTCATEGORY" (
	"DocumentCategoryID" INTEGER NOT NULL,
	"DocumentID" INTEGER NULL,
	"CategoryID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "DOCUMENTCLASSIFICATION" (
	"DocumentClassificationID" INTEGER NOT NULL,
	"DocumentID" INTEGER NOT NULL,
	"DocumentGUID" TEXT NULL,
	"ClassificationID" INTEGER NOT NULL,
	"ClassificationGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"ConfidenceReasonID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "DOCUMENTTITLE" (
	"DocumentTitleID" INTEGER NOT NULL,
	"DocumentID" INTEGER NOT NULL,
	"DocumentGUID" TEXT NULL,
	"TitleID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "DOCUMENTVERSION" (
	"DocumentVersionID" INTEGER NOT NULL,
	"DocumentID" INTEGER NOT NULL,
	"DocumentGUID" TEXT NULL,
	"VersionID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "DOCXMLDOCUMENT" (
	"DocXMLDocumentID" INTEGER NOT NULL,
	"DocumentID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "DOMAIN" (
	"DomainID" INTEGER NOT NULL,
	"DomainGUID" TEXT NULL,
	"DomainName" TEXT NOT NULL,
	"DomainDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "DOMAINBLACKLIST" (
	"DomainBlacklistID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "DOMAINEMAILADDRESS" (
	"DomainEmailAddressID" INTEGER NOT NULL,
	"DomainID" INTEGER NOT NULL,
	"EmailAddressID" INTEGER NOT NULL,
	"emailaddress" TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS "DOMAINNAME" (
	"DomainNameID" INTEGER NOT NULL,
	"DomainNameValue" TEXT NULL,
	"DomainNameTypeID" INTEGER NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"TrustLevelID" INTEGER NULL,
	"TrustReasonID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "DOMAINNAMEBLACKLIST" (
	"DomainNameBlacklistID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "DOMAINNAMECHANGERECORD" (
	"DomainNameChangeRecordID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "DOMAINNAMEREPUTATION" (
	"DomainNameReputationID" INTEGER NOT NULL,
	"DomainNameID" INTEGER NULL,
	"ReputationID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "DOMAINNAMETYPE" (
	"DomainNameTypeID" INTEGER NOT NULL,
	"DomainNameTypeValue" TEXT NULL,
	"DomainNameTypeDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"VocabularyGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "DOMAINORGANISATION" (
	"DomainOrganisationID" INTEGER NOT NULL,
	"DomainID" INTEGER NOT NULL,
	"OrganisationID" INTEGER NOT NULL,
	"DomainOrganisationDescription" TEXT NULL,
	"RelationshipTypeID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"CollectionMethodID" INTEGER NULL,
	"CollectionToolID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "DOMAINPERSON" (
	"DomainPersonID" INTEGER NOT NULL,
	"DomainID" INTEGER NOT NULL,
	"PersonID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "DOMAINTYPE" (
	"DomainTypeID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "DOMAINTYPEENUM" (
	"DomainTypeEnumID" INTEGER NOT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "DOMAINWHITELIST" (
	"DomainWhitelistID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "DOWNTIME" (
	"DowntimeID" INTEGER NOT NULL,
	"AssetID" INTEGER NULL,
	"DownFromDate" TEXT NULL,
	"DownToDate" TEXT NOT NULL,
	"DowntimeDuration" INTEGER NULL,
	"DowntimePlanned" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "DPE" (
	"DPEID" INTEGER NOT NULL,
	"CPEID" TEXT NULL,
	"CredentialID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"PortID" INTEGER NULL,
	"ProtocolID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "EDGE" (
	"EdgeID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "EFFECTIVENESS" (
	"EffectivenessID" INTEGER NOT NULL,
	"EffectivenessGUID" TEXT NULL,
	"EffectivenessName" TEXT NOT NULL,
	"EffectivenessDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "EFFECTTYPE" (
	"EffectTypeID" INTEGER NOT NULL,
	"EffectTypeName" TEXT NOT NULL,
	"EffectTypeDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "EMAIL" (
	"EmailID" INTEGER NOT NULL,
	"emailaddress" TEXT NOT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "EMAILADDRESS" (
	"EmailAddressID" INTEGER NOT NULL,
	"EmailAddressGUID" TEXT NULL,
	"EmailID" INTEGER NULL,
	"emailaddress" TEXT NOT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"CollectionMethodID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"TrustLevelID" INTEGER NULL,
	"TrustReasonID" INTEGER NULL,
	"suspected_malicious" INTEGER NULL,
	"SuspectedMaliciousReasonID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "EMAILFORORGANISATION" (
	"emailaddress" TEXT NOT NULL,
	"OrganisationID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"TrustLevelID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "EMAILFORPERSON" (
	"emailaddress" TEXT NOT NULL,
	"PersonID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"BLOB" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "EMAILHEADER" (
	"EmailHeaderID" INTEGER NOT NULL,
	"EmailHeaderGUID" TEXT NULL,
	"HeaderID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"Received_Lines" INTEGER NULL,
	"EmailTo" INTEGER NULL,
	"EmailCC" INTEGER NULL,
	"EmailBCC" INTEGER NULL,
	"EmailFrom" INTEGER NULL,
	"EmailSubject" TEXT NULL,
	"In_Reply_To" TEXT NULL,
	"DateSent" TEXT NULL,
	"Message_ID" TEXT NULL,
	"Sender" INTEGER NULL,
	"Reply_To" INTEGER NULL,
	"Errors_To" TEXT NULL,
	"Boundary" TEXT NULL,
	"Content_Type" TEXT NULL,
	"MIMEID" INTEGER NULL,
	"MIME_Version" TEXT NULL,
	"Precedence" TEXT NULL,
	"User_Agent" TEXT NULL,
	"UserAgentID" INTEGER NULL,
	"UserAgentGUID" TEXT NULL,
	"X_Mailer" TEXT NULL,
	"X_Originating_IP" INTEGER NULL,
	"X_Priority" INTEGER NULL,
	"CollectionMethodID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"ConfidenceReasonID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"suspected_malicious" INTEGER NULL,
	"SuspectedMaliciousReasonID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "EMAILHEADERTAG" (
	"EmailHeaderTagID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "EMAILMESSAGE" (
	"EmailMessageID" INTEGER NOT NULL,
	"EmailMessageGUID" TEXT NULL,
	"MessageID" INTEGER NULL,
	"EmailMessageIsEncrypted" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"Email_Server" TEXT NULL,
	"CPEID" TEXT NULL,
	"AssetEmailServerID" INTEGER NULL,
	"AssetEmailServerGUID" TEXT NULL,
	"AssetSourceID" INTEGER NULL,
	"AssetSourceGUID" TEXT NULL,
	"AssetDestinationID" INTEGER NULL,
	"AssetDestinationGUID" TEXT NULL,
	"Raw_Body" TEXT NULL,
	"suspected_malicious" INTEGER NULL,
	"SuspectedMaliciousReasonID" INTEGER NULL,
	"ImportanceID" INTEGER NULL,
	"Raw_Header" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ValidityID" INTEGER NULL,
	"CollectionMethodID" INTEGER NULL,
	"TrustLevelID" INTEGER NULL,
	"TrustReasonID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "EMAILMESSAGEATTACHMENT" (
	"EmailMessageAttachmentID" INTEGER NOT NULL,
	"EmailMessageID" INTEGER NOT NULL,
	"EmailMessageGUID" TEXT NULL,
	"AttachmentID" INTEGER NOT NULL,
	"AttachmentGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"ConfidenceReasonID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "EMAILMESSAGECLASSIFICATION" (
	"EmailMessageClassificationID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "EMAILMESSAGELINK" (
	"EmailMessageLinkID" INTEGER NOT NULL,
	"EmailMessageID" INTEGER NOT NULL,
	"LinkID" INTEGER NOT NULL,
	"suspected_malicious" INTEGER NULL,
	"SuspectedMaliciousReasonID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"CollectionMethodID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"ConfidenceReasonID" INTEGER NULL,
	"TrustLevelID" INTEGER NULL,
	"TrustReasonID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "EMAILMESSAGERESTRICTION" (
	"EmailMessageRestrictionID" INTEGER NOT NULL,
	"EmailMessageID" INTEGER NOT NULL,
	"RestrictionID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ValidityID" INTEGER NULL,
	"BLOB" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "EMAILMESSAGETAG" (
	"EmailMessageTagID" INTEGER NOT NULL,
	"EmailMessageID" INTEGER NOT NULL,
	"TagID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "EMAILRECEIVEDLINELIST" (
	"EmailReceivedLineListID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "EMAILRECIPIENT" (
	"EmailRecipientID" INTEGER NOT NULL,
	"EmailAddressID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "EMAILRECIPIENTS" (
	"EmailRecipientsID" INTEGER NOT NULL,
	"EmailRecipientsGUID" TEXT NULL,
	"GroupID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ValidityID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "EMAILRECIPIENTSLIST" (
	"EmailRecipientsListID" INTEGER NOT NULL,
	"EmailRecipientsID" INTEGER NOT NULL,
	"EmailRecipientsGUID" TEXT NULL,
	"EmailRecipientID" INTEGER NOT NULL,
	"EmailRecipientGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"CollectionMethodID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"ConfidenceReasonID" INTEGER NULL,
	"TrustLevelID" INTEGER NULL,
	"TrustReasonID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ENCODING" (
	"EncodingID" INTEGER NOT NULL,
	"algorithm" TEXT NOT NULL,
	"EncodingAlgorithmID" INTEGER NULL,
	"EncodingDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ENCODINGALGORITHM" (
	"EncodingAlgorithmID" INTEGER NOT NULL,
	"AlgorithmID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ENCRYPTION" (
	"EncryptionID" INTEGER NOT NULL,
	"encryption_mechanism" TEXT NOT NULL,
	"EncryptionMechanismID" INTEGER NULL,
	"encryption_mechanism_ref" TEXT NULL,
	"EncryptionDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ENCRYPTIONKEY" (
	"EncryptionKeyID" INTEGER NOT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ENCRYPTIONMECHANISM" (
	"EncryptionMechanismID" INTEGER NOT NULL,
	"MechanismID" INTEGER NULL,
	"EncryptionMechanismName" TEXT NULL,
	"EncryptionMechanismDescription" TEXT NULL,
	"TrustLevelID" INTEGER NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "ENCRYPTIONREFERENCE" (
	"EncryptionReferenceID" INTEGER NOT NULL,
	"EncryptionID" INTEGER NOT NULL,
	"ReferenceID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ENDFUNCTION" (
	"EndFunctionID" INTEGER NOT NULL,
	"EndsWithCharacters" TEXT NOT NULL,
	"OVALComponentGroupID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "ENDIANNESSTYPE" (
	"EndiannessTypeID" INTEGER NOT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ENDPOINT" (
	"EndPointID" INTEGER NOT NULL,
	"AssetID" INTEGER NULL,
	"DeviceID" INTEGER NULL,
	"AddressID" INTEGER NULL,
	"ProtocolID" INTEGER NULL,
	"ProtocolName" TEXT NULL,
	"PortID" INTEGER NULL,
	"PortNumber" INTEGER NULL,
	"Service" TEXT NULL,
	"Version" TEXT NULL,
	"CPEName" TEXT NULL,
	"SessionID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "ENGINE" (
	"EngineID" INTEGER NOT NULL,
	"EngineName" TEXT NULL,
	"EngineDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "ENTITY" (
	"EntityID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "ENTITYDESCRIPTION" (
	"EntityDescriptionID" INTEGER NOT NULL,
	"EntityID" INTEGER NOT NULL,
	"DescriptionID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "ENTITYNAME" (
	"EntityNameID" INTEGER NOT NULL,
	"EntityID" INTEGER NOT NULL,
	"NameID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "ENTITYRESTRICTION" (
	"EntityRestrictionID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "ENTITYTYPE" (
	"EntityTypeID" INTEGER NOT NULL,
	"EntityID" INTEGER NOT NULL,
	"TypeID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "ENTRYPOINT" (
	"EntryPointID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "ENTRYVARIABLE" (
	"EntryVariableID" INTEGER NOT NULL,
	"VariableID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ENUMERATIONVERSION" (
	"EnumerationVersionID" INTEGER NOT NULL,
	"EnumerationName" TEXT NULL,
	"VersionID" INTEGER NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"BLOB" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "ENVIRONMENT" (
	"EnvironmentID" INTEGER NOT NULL,
	"CapecEnvironmentID" TEXT NULL,
	"EnvironmentTitle" TEXT NOT NULL,
	"EnvironmentDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "ESCAPEREGEXFUNCTION" (
	"EscapeRegexFunctionID" INTEGER NOT NULL,
	"OVALComponentGroupID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "EVALUATIONMETHOD" (
	"EvaluationMethodID" INTEGER NOT NULL,
	"MethodID" INTEGER NULL,
	"VocabularyID" INTEGER NULL,
	"ReliabilityID" INTEGER NULL,
	"TrustLevelID" INTEGER NULL,
	"TrustReasonID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "EVENT" (
	"EventID" INTEGER NOT NULL,
	"EventGUID" TEXT NULL,
	"EventName" TEXT NULL,
	"EventTypeID" INTEGER NULL,
	"start_datetime" TEXT NULL,
	"stop_datetime" TEXT NULL,
	"AnomalyEvent" INTEGER NULL,
	"AnomalyDescription" TEXT NULL,
	"AuditRecordEvent" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "EVENTCOLLECTIONMETHOD" (
	"EventCollectionMethodID" INTEGER NOT NULL,
	"EventID" INTEGER NOT NULL,
	"EventGUID" TEXT NULL,
	"CollectionMethodID" INTEGER NOT NULL,
	"CollectionMethodGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"AssetID" INTEGER NULL,
	"DeviceID" INTEGER NULL,
	"ProductID" INTEGER NULL,
	"CPEID" INTEGER NULL,
	"CPEName" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "EVENTCOMMENT" (
	"EventCommentID" INTEGER NOT NULL,
	"Comment" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "EVENTCOMMENTFOREVENT" (
	"EventEventCommentID" INTEGER NOT NULL,
	"EventID" INTEGER NOT NULL,
	"EventCommentID" INTEGER NOT NULL,
	"BLOB" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "EVENTENDPOINT" (
	"EndPointEventID" INTEGER NOT NULL,
	"EventID" INTEGER NOT NULL,
	"EndPointID" INTEGER NOT NULL,
	"BLOB" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "EVENTFILTER" (
	"EventFilterID" INTEGER NOT NULL,
	"EventFilterContent" TEXT NULL,
	"EventFilterDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "EVENTFORASSET" (
	"AssetEventID" INTEGER NOT NULL,
	"AssetID" INTEGER NOT NULL,
	"relationshiptype" TEXT NULL,
	"relationshipscope" TEXT NULL,
	"EventID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"CollectionMethodID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "EVENTFOREVENT" (
	"EventForEventID" INTEGER NOT NULL,
	"EventRefID" INTEGER NOT NULL,
	"relationshiptype" TEXT NULL,
	"relationshipscope" TEXT NULL,
	"EventSubjectID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"ConfidenceReasonID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "EVENTFORINCIDENT" (
	"IncidentEventID" INTEGER NOT NULL,
	"EventID" INTEGER NOT NULL,
	"IncidentID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "EVENTPROPERTY" (
	"EventPropertyID" INTEGER NOT NULL,
	"EventPropertyGUID" TEXT NULL,
	"EventPropertyIDREF" TEXT NULL,
	"EventPropertyName" TEXT NULL,
	"EventPropertyDescription" TEXT NULL,
	"appears_random" INTEGER NULL,
	"datatype" TEXT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "EVENTPROPERTYADDRESS" (
	"EventPropertyAddressID" INTEGER NOT NULL,
	"EventPropertyID" INTEGER NOT NULL,
	"AddressID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "EVENTPROPERTYFOREVENT" (
	"EventEventPropertyID" INTEGER NOT NULL,
	"EventID" INTEGER NOT NULL,
	"EventPropertyID" INTEGER NOT NULL,
	"EventPropertyValue" TEXT NULL,
	"BLOB" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "EVENTSIGNATURE" (
	"EventSignatureID" INTEGER NOT NULL,
	"EventSignatureGUID" TEXT NULL,
	"EventID" INTEGER NOT NULL,
	"EventGUID" TEXT NULL,
	"SignatureID" INTEGER NOT NULL,
	"SignatureGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"total_packets_collected" INTEGER NULL,
	"total_bytes_collected" INTEGER NULL,
	"data_flow_direction" TEXT NULL,
	"connection_start_datetime" TEXT NULL,
	"connection_end_datetime" TEXT NULL,
	"CollectionMethodID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "EVENTSUPPRESSION" (
	"EventSuppressionID" INTEGER NOT NULL,
	"EventSuppressionContent" TEXT NULL,
	"EventSuppressionDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "EVENTTYPE" (
	"EventTypeID" INTEGER NOT NULL,
	"EventTypeName" TEXT NOT NULL,
	"EventTypeDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"EnumerationVersionID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"BLOB" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "EVIDENCE" (
	"EvidenceID" INTEGER NOT NULL,
	"EvidenceGUID" TEXT NULL,
	"EvidenceName" TEXT NULL,
	"EvidenceDescription" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"ConfidentialityLevelID" INTEGER NULL,
	"ImportanceID" INTEGER NULL,
	"SourceID" INTEGER NULL,
	"CollectionMethodID" INTEGER NULL,
	"TrustLevelID" INTEGER NULL,
	"TrustReasonID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ReliabilityID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "EVIDENCEACCESSRECORD" (
	"EvidenceAccessRecordID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "EVIDENCEACL" (
	"EvidenceACLID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "EVIDENCECATEGORY" (
	"EvidenceCategoryID" INTEGER NOT NULL,
	"EvidenceCategoryGUID" TEXT NULL,
	"CategoryID" INTEGER NULL,
	"EvidenceCategoryName" TEXT NULL,
	"EvidenceCategoryDescription" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"ReliabilityID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "EVIDENCERESTRICTION" (
	"EvidenceRestrictionID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "EXCELFILE" (
	"ExcelFileID" INTEGER NOT NULL,
	"FileID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "EXIFTAG" (
	"EXIFTagID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "EXISTENCEENUMERATION" (
	"ExistenceEnumerationID" INTEGER NOT NULL,
	"ExistenceValue" TEXT NOT NULL,
	"ExistenceDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "EXPLOIT" (
	"ExploitID" INTEGER NOT NULL,
	"ExploitGUID" TEXT NULL,
	"ExploitReferential" TEXT NULL,
	"ExploitRefID" TEXT NULL,
	"SourceID" INTEGER NULL,
	"SourceGUID" TEXT NULL,
	"ExploitName" TEXT NULL,
	"ExploitLocation" TEXT NULL,
	TEXT TEXT NULL,
	"Verification" INTEGER NULL,
	"Platform" TEXT NULL,
	"Author" TEXT NULL,
	"AuthorID" INTEGER NULL,
	"PersonID" INTEGER NULL,
	"RPORT" INTEGER NULL,
	"ExploitDescription" TEXT NULL,
	"ExploitType" TEXT NULL,
	"CodeID" INTEGER NULL,
	"ExploitCode" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"ReliabilityID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"LastCheckDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "EXPLOITABILITY" (
	"ExploitabilityID" INTEGER NOT NULL,
	"ExploitabilityLevel" TEXT NOT NULL,
	"ExploitabilityDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "EXPLOITACCESSRECORD" (
	"ExploitAccessRecordID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "EXPLOITATIONFACTOR" (
	"ExploitationFactorID" INTEGER NOT NULL,
	"ExploitationFactorGUID" TEXT NULL,
	"ExploitationFactorName" TEXT NULL,
	"ExploitationFactorDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "EXPLOITAUTHOR" (
	"ExploitAuthorID" INTEGER NOT NULL,
	"ExploitID" INTEGER NOT NULL,
	"ExploitGUID" TEXT NULL,
	"AuthorID" INTEGER NOT NULL,
	"AuthorGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "EXPLOITCATEGORY" (
	"ExploitCategoryID" INTEGER NOT NULL,
	"CategoryID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "EXPLOITCHANGERECORD" (
	"ExploitChangeRecordID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "EXPLOITDESCRIPTION" (
	"ExploitDescriptionID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "EXPLOITFILE" (
	"ExploitFileID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "EXPLOITFORCPE" (
	"CPEExploitID" INTEGER NOT NULL,
	"CPEExploitGUID" TEXT NULL,
	"CPEID" INTEGER NULL,
	"CPEName" TEXT NULL,
	"ExploitID" INTEGER NOT NULL,
	"ExploitGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ExploitCPEName" TEXT NULL,
	"ExploitCPEDescription" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"ConfidenceReasonID" INTEGER NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "EXPLOITFORFUNCTION" (
	"ExploitFunctionID" INTEGER NOT NULL,
	"ExploitFunctionGUID" TEXT NULL,
	"ExploitID" INTEGER NOT NULL,
	"ExploitGUID" TEXT NULL,
	"ExploitFunctionRelationship" TEXT NULL,
	"FunctionID" INTEGER NOT NULL,
	"FunctionGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "EXPLOITFORREFERENCE" (
	"ExploitReferenceID" INTEGER NOT NULL,
	"ExploitReferenceGUID" TEXT NULL,
	"ReferenceID" INTEGER NOT NULL,
	"ReferenceGUID" TEXT NULL,
	"ExploitID" INTEGER NOT NULL,
	"ExploitGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "EXPLOITFORTECHNOLOGY" (
	"ExploitTechnologyID" INTEGER NOT NULL,
	"TechnologyID" INTEGER NULL,
	"ExploitID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "EXPLOITFORTHREATACTORTTP" (
	"ThreatActorTTPExploitID" INTEGER NOT NULL,
	"ExploitID" INTEGER NOT NULL,
	"ThreatActorTTPID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "EXPLOITFORURI" (
	"ExploitURIID" INTEGER NOT NULL,
	"URIObjectID" INTEGER NULL,
	"ExploitID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"ConfidenceReasonID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "EXPLOITFORVULNERABILITY" (
	"VulnerabilityExploitID" INTEGER NOT NULL,
	"VulnerabilityExploitGUID" TEXT NULL,
	"VulnerabilityExploitDescription" TEXT NULL,
	"ExploitID" INTEGER NOT NULL,
	"ExploitGUID" TEXT NULL,
	"VulnerabilityID" INTEGER NOT NULL,
	"VulnerabilityGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"RepositoryID" INTEGER NULL,
	"CollectionMethodID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"ConfidenceReasonID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "EXPLOITLANGUAGE" (
	"ExploitLanguageID" INTEGER NOT NULL,
	"ExploitID" INTEGER NULL,
	"ExploitGUID" TEXT NULL,
	"LanguageID" INTEGER NULL,
	"LanguageGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"VocabularyID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "EXPLOITLIKELIHOOD" (
	"ExploitLikelihoodID" INTEGER NOT NULL,
	"Likelihood" TEXT NOT NULL,
	"LikelihoodDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "EXPLOITLIKELIHOODFORATTACKPATTERN" (
	"AttackPatternExploitLikelihoodID" INTEGER NOT NULL,
	"ExploitLikelihoodID" INTEGER NOT NULL,
	"AttackPatternID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"Explanation" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "EXPLOITLIKELIHOODFORCWE" (
	"ExploitLikelihoodForCWEID" INTEGER NOT NULL,
	"CWEID" TEXT NOT NULL,
	"ExploitLikelihoodID" INTEGER NOT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"RepositoryID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "EXPLOITOSINSTRUCTIONMEMORYADDRESS" (
	"ExploitOSInstructionMemoryAddressID" INTEGER NOT NULL,
	"ExploitID" INTEGER NOT NULL,
	"OSInstructionMemoryAddressID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"CollectionMethodID" INTEGER NULL,
	"CollectionToolID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "EXPLOITPARAMETER" (
	"ExploitParameterID" INTEGER NOT NULL,
	"ExploitParameterName" TEXT NOT NULL,
	"DefaultValue" TEXT NULL,
	"ExploitParameterDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "EXPLOITPARAMETERFOREXPLOIT" (
	"ExploitParametersID" INTEGER NOT NULL,
	"ExploitID" INTEGER NOT NULL,
	"ExploitParameterID" INTEGER NOT NULL,
	"OrderRank" INTEGER NULL,
	"DefaultValue" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "EXPLOITPLATFORM" (
	"ExploitPlatformID" INTEGER NOT NULL,
	"ExploitID" INTEGER NULL,
	"PlatformID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "EXPLOITRESTRICTION" (
	"ExploitRestrictionID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "EXPLOITTAG" (
	"ExploitTagID" INTEGER NOT NULL,
	"ExploitID" INTEGER NULL,
	"TagID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "EXPOSURELEVEL" (
	"ExposureLevelID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "EXTRACTEDFEATURES" (
	"ExtractedFeaturesID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "FACILITY" (
	"FacilityID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "FACILITYPHYSICALLOCATION" (
	"FacilityPhysicalLocationID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "FACTORY" (
	"FactoryID" INTEGER NOT NULL,
	"ManufacturID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "FACTORYASSURANCE" (
	"FactoryAssuranceID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "FACTORYCOMPLIANCE" (
	"FactoryComplianceID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "FACTORYPOLICY" (
	"FactoryPolicyID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "FAX" (
	"FaxID" INTEGER NOT NULL,
	"TelephoneID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "FEED" (
	"FeedID" INTEGER NOT NULL,
	"RepositoryID" INTEGER NULL,
	"ReferenceID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "FIELD" (
	"FieldID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "FILE" (
	"FileID" INTEGER NOT NULL,
	"FileGUID" TEXT NULL,
	"FileName" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ValidityID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"TrustLevelID" INTEGER NULL,
	"TrustReasonID" INTEGER NULL,
	"CollectionMethodID" INTEGER NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "FILEACTIONNAME" (
	"FileActionNameID" INTEGER NOT NULL,
	"FileActionNameName" TEXT NOT NULL,
	"FileActionNameDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"EnumerationVersionID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "FILECHANGERECORD" (
	"FileChangeRecordID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "FILECLASSIFICATION" (
	"FileClassificationID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "FILEDESCRIPTION" (
	"FileDescriptionID" INTEGER NOT NULL,
	"FileID" INTEGER NOT NULL,
	"DescriptionID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ValidityID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "FILEENCRYPTION" (
	"FileEncryptionID" INTEGER NOT NULL,
	"FileID" INTEGER NOT NULL,
	"EncryptionID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "FILEEXTENSION" (
	"FileExtensionID" INTEGER NOT NULL,
	"FileExtensionGUID" TEXT NULL,
	"FileExtensionName" TEXT NULL,
	"FileExtensionDescription" TEXT NULL,
	"FileExtensionValue" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidityID" INTEGER NULL,
	"TrustLevelID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "FILEEXTENSIONBLACKLIST" (
	"FileExtensionBlacklistID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "FILEEXTENSIONWHITELIST" (
	"FileExtensionWhitelistID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "FILELIST" (
	"FileListID" INTEGER NOT NULL,
	"FileListGUID" TEXT NULL,
	"FileListName" TEXT NULL,
	"FileListDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ValidityID" INTEGER NULL,
	"CollectionMethodID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"ConfidenceReasonID" INTEGER NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "FILELISTFILES" (
	"FileListFileID" INTEGER NOT NULL,
	"FileListID" INTEGER NOT NULL,
	"FileListGUID" TEXT NULL,
	"FileID" INTEGER NOT NULL,
	"FileGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ValidityID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "FILEREFERENCE" (
	"FileReferenceID" INTEGER NOT NULL,
	"FileReferenceGUID" TEXT NULL,
	"FileID" INTEGER NOT NULL,
	"ReferenceID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ValidityID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"ConfidenceReasonID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "FILEREPOSITORY" (
	"FileRepositoryID" INTEGER NOT NULL,
	"FileID" INTEGER NOT NULL,
	"FileGUID" TEXT NULL,
	"RepositoryID" INTEGER NOT NULL,
	"RepositoryGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ValidityID" INTEGER NULL,
	"LastCheckedDate" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"ConfidenceReasonID" INTEGER NULL,
	"TrustLevelID" INTEGER NULL,
	"TrustReasonID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "FILERESTRICTION" (
	"FileRestrictionID" INTEGER NOT NULL,
	"FileID" INTEGER NOT NULL,
	"RestrictionID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "FILERESTRICTIONCHANGERECORD" (
	"FileRestrictionChangeRecordID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "FILETAG" (
	"FileTagID" INTEGER NOT NULL,
	"FileID" INTEGER NOT NULL,
	"TagID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "FILEVERSION" (
	"FileVersionID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "FILTER" (
	"FilterID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "FILTERACTION" (
	"FilterActionID" INTEGER NOT NULL,
	"FilterActionValue" TEXT NOT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "FINDING" (
	"FindingID" INTEGER NOT NULL,
	"FindingGUID" TEXT NULL,
	"FindingName" TEXT NULL,
	"FindingDescription" TEXT NULL,
	"ImportanceID" INTEGER NULL,
	"AssetID" INTEGER NULL,
	"EndPointID" INTEGER NULL,
	"ApplicationID" INTEGER NULL,
	"FindingStatus" TEXT NULL,
	"CriticalityLevelID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"ReportedDate" TEXT NULL,
	"FindingDecision" TEXT NULL,
	"MitigationDate" TEXT NULL,
	"RemediationDate" TEXT NULL,
	"FindingResult" TEXT NULL,
	"FindingURL" TEXT NULL,
	"VulnerableParameterType" TEXT NULL,
	"VulnerableParameter" TEXT NULL,
	"VulnerableParameterValue" TEXT NULL,
	"FindingRequest" TEXT NULL,
	"RequestType" TEXT NULL,
	"FindingResponse" TEXT NULL,
	"IsFalsePositive" INTEGER NULL,
	"VulnerabilityID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"CollectionMethodID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"ConfidenceReasonID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"JobID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "FINDINGASSET" (
	"FindingAssetID" INTEGER NOT NULL,
	"FindingAssetGUID" TEXT NULL,
	"FindingID" INTEGER NULL,
	"FindingGUID" TEXT NULL,
	"AssetID" INTEGER NULL,
	"AssetGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"FindingAssetRelationship" TEXT NULL,
	"FindingAssetDescription" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "FINDINGCATEGORY" (
	"FindingCategoryID" INTEGER NOT NULL,
	"FindingCategoryGUID" TEXT NULL,
	"CategoryID" INTEGER NULL,
	"FindingCategoryName" TEXT NULL,
	"FindingCategoryDescription" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ValidityID" INTEGER NULL,
	"ImportanceID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "FINDINGCATEGORYRACIMATRIX" (
	"FindingCategoryRACIMatrixID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "FINDINGCHANGERECORD" (
	"FindingChangeRecordID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "FINDINGCODE" (
	"FindingCodeID" INTEGER NOT NULL,
	"FindingID" INTEGER NOT NULL,
	"CodeID" INTEGER NOT NULL,
	"CodeLineID" INTEGER NULL,
	"FindingCodeDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"ConfidenceReasonID" INTEGER NULL,
	"ImportanceID" INTEGER NULL,
	"CriticalityLevelID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "FINDINGDESCRIPTION" (
	"FindingDescriptionID" INTEGER NOT NULL,
	"FindingDescriptionGUID" TEXT NULL,
	"FindingID" INTEGER NOT NULL,
	"FindingGUID" TEXT NULL,
	"DescriptionID" INTEGER NOT NULL,
	"DescriptionGUID" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "FINDINGEVIDENCE" (
	"FindingEvidenceID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "FINDINGHTTPSESSION" (
	"FindingHTTPSessionID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "FINDINGIMPACT" (
	"FindingImpactID" INTEGER NOT NULL,
	"FindingID" INTEGER NULL,
	"FindingGUID" TEXT NULL,
	"ImpactID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "FINDINGMATURITY" (
	"FindingMaturityID" INTEGER NOT NULL,
	"FindingID" INTEGER NULL,
	"FindingGUID" TEXT NULL,
	"SecurityDomainMaturityID" INTEGER NULL,
	"SecurityDomainMaturityGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "FINDINGPERSON" (
	"FindingPersonID" INTEGER NOT NULL,
	"FindingPersonGUID" TEXT NULL,
	"FindingID" INTEGER NULL,
	"FindingGUID" TEXT NULL,
	"FindingPersonRelationship" TEXT NULL,
	"FindingPersonDescription" TEXT NULL,
	"PersonID" INTEGER NULL,
	"PersonGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"ConfidenceReasonID" INTEGER NULL,
	"CollectionMethodID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"LastCheckedDate" TEXT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "FINDINGRACIMATRIX" (
	"FindingRACIMatrixID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "FINDINGRECOMMENDATION" (
	"FindingRecommendationID" INTEGER NOT NULL,
	"FindingID" INTEGER NOT NULL,
	"RecommendationID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"FindingRecommendationName" TEXT NULL,
	"FindingRecommendationDescription" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "FINDINGREFERENCE" (
	"FindingReferenceID" INTEGER NOT NULL,
	"FindingID" INTEGER NOT NULL,
	"FindingGUID" TEXT NULL,
	"ReferenceID" INTEGER NOT NULL,
	"ReferenceGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ValidityID" INTEGER NULL,
	"ImportanceID" INTEGER NULL,
	"TrustLevelID" INTEGER NULL,
	"TrustReasonID" INTEGER NULL,
	"CollectionMethodID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"ConfidenceReasonID" INTEGER NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "FINDINGSTATUS" (
	"FindingStatusID" INTEGER NOT NULL,
	"FindingStatusDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "FINDINGTAG" (
	"FindingTagID" INTEGER NOT NULL,
	"FindingID" INTEGER NOT NULL,
	"FindingGUID" TEXT NULL,
	"TagID" INTEGER NULL,
	"TagGUID" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ValidityID" INTEGER NULL,
	"ImportanceID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "FINDINGVULNERABILITY" (
	"FindingVulnerabilityID" INTEGER NOT NULL,
	"FindingID" INTEGER NULL,
	"VulnerabilityID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"FindingVulnerabilityName" TEXT NULL,
	"FindingVulnerabilityDescription" TEXT NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "FIREWALLRULE" (
	"FirewallRuleID" INTEGER NOT NULL,
	"FirewallRuleGUID" TEXT NULL,
	"RuleID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"ToolGenerationID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ValidityID" INTEGER NULL,
	"ReliabilityID" INTEGER NULL,
	"ReliabilityReasonID" INTEGER NULL,
	"CollectionMethodID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"ConfidenceReasonID" INTEGER NULL,
	"TrustLevelID" INTEGER NULL,
	"TrustReasonID" INTEGER NULL,
	"LastCheckedDate" TEXT NULL,
	"ToolDeploymentID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "FIREWALLRULEADDRESS" (
	"FirewallRuleAddressID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "FIREWALLRULECHANGERECORD" (
	"FirewallRuleChangeRecordID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "FIREWALLRULECHANGEREQUEST" (
	"FirewallRuleChangeRequestID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "FIXACTION" (
	"FixActionID" INTEGER NOT NULL,
	"FixActionGUID" TEXT NULL,
	"description" TEXT NULL,
	"type" TEXT NULL,
	"source" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"lang" TEXT NULL,
	"id" TEXT NULL,
	"reboot" INTEGER NULL,
	"strategy" TEXT NULL,
	"disruption" TEXT NULL,
	"complexity" TEXT NULL,
	"systemURI" TEXT NULL,
	"platformURI" TEXT NULL,
	"XCCDFContent" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "FIXACTIONCOST" (
	"FixActionCostID" INTEGER NOT NULL,
	"cost_corrective_action" TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS "FIXACTIONFORFIXACTION" (
	"FixActionRelationshipID" INTEGER NOT NULL,
	"FixActionRefID" INTEGER NOT NULL,
	"relationshiptype" TEXT NULL,
	"FixActionSubjectID" INTEGER NOT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "FIXACTIONFORINCIDENT" (
	"FixActionForIncidentID" INTEGER NOT NULL,
	"FixActionID" INTEGER NOT NULL,
	"IncidentID" INTEGER NOT NULL,
	"FixActionCostID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "FIXACTIONFORVULNERABILITY" (
	"VulnerabilityFixActionID" INTEGER NOT NULL,
	"FixActionID" INTEGER NOT NULL,
	"FixActionGUID" TEXT NULL,
	"VulnerabilityID" INTEGER NOT NULL,
	"VulnerabilityGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "FIXACTIONPATCH" (
	"FixActionPatchID" INTEGER NOT NULL,
	"FixActionID" INTEGER NULL,
	"FixActionGUID" TEXT NULL,
	"FixActionPatchRelationship" TEXT NULL,
	"FixActionPatchDescription" TEXT NULL,
	"PatchID" INTEGER NULL,
	"PatchGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "FIXSYSTEM" (
	"FixSystemID" INTEGER NOT NULL,
	"systemURI" TEXT NOT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "FLAG" (
	"FlagID" INTEGER NOT NULL,
	"FlagValue" TEXT NOT NULL,
	"FlagDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "FRAMEWORK" (
	"FrameworkID" INTEGER NOT NULL,
	"FrameworkName" TEXT NOT NULL,
	"FrameworkVersion" TEXT NULL,
	"FrameworkDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "FRAMEWORKFORTECHNICALCONTEXT" (
	"TechnicalContextFrameworkID" INTEGER NOT NULL,
	"TechnicalContextFrameworkGUID" TEXT NULL,
	"FrameworkID" INTEGER NOT NULL,
	"TechnicalContextID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "FRAMEWORKREFERENCE" (
	"FrameworkReferenceID" INTEGER NOT NULL,
	"FrameworkReferenceDescription" TEXT NULL,
	"FrameworkID" INTEGER NOT NULL,
	"ReferenceID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "FRAUDSTRATEGICOBJECTIVE" (
	"FraudStrategicObjectiveID" INTEGER NOT NULL,
	"FraudStrategicObjectiveName" TEXT NULL,
	"FraudStrategicObjectiveDestruction" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"EnumerationVersionID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "FRAUDTACTICALOBJECTIVE" (
	"FraudTacticalObjectiveID" INTEGER NOT NULL,
	"FraudTacticalObjectiveName" TEXT NULL,
	"FraudTacticalObjectiveDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"VocabularyID" INTEGER NULL,
	"EnumerationVersionID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "FREQUENCY" (
	"FrequencyID" INTEGER NOT NULL,
	"rate" DOUBLE PRECISION NOT NULL,
	"scale" TEXT NOT NULL,
	"TrendID" INTEGER NULL,
	"TrendName" TEXT NULL,
	"TimeUnitID" INTEGER NULL,
	"units" TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS "FTPACTIONNAME" (
	"FTPActionNameID" INTEGER NOT NULL,
	"FTPActionNameName" TEXT NOT NULL,
	"FTPActionNameDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"EnumerationVersionID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "FUNCTION" (
	"FunctionID" INTEGER NOT NULL,
	"FunctionName" TEXT NOT NULL,
	"VocabularyID" INTEGER NULL,
	"KnownVulnerable" INTEGER NULL,
	"deprecated" INTEGER NULL,
	"FunctionVersion" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"FunctionDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "FUNCTIONALAREA" (
	"FunctionalAreaID" INTEGER NOT NULL,
	"FunctionalAreaGUID" TEXT NULL,
	"FunctionalAreaName" TEXT NULL,
	"FunctionalAreaDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ImportanceID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "FUNCTIONARGUMENT" (
	"FunctionArgumentID" INTEGER NOT NULL,
	"FunctionID" INTEGER NULL,
	"FunctionArgumentName" TEXT NOT NULL,
	"FunctionArgumentDescription" TEXT NULL,
	"FunctionArgumentType" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "FUNCTIONCHARACTERDELIMITER" (
	"FunctionCharacterDelimiterID" INTEGER NOT NULL,
	"FunctionID" INTEGER NOT NULL,
	"CharacterDelimiterID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "FUNCTIONDESCRIPTION" (
	"FunctionDescriptionID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "FUNCTIONREFERENCE" (
	"FunctionReferenceID" INTEGER NOT NULL,
	"FunctionID" INTEGER NOT NULL,
	"ReferenceID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"FunctionReferenceDescription" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "FUNCTIONRELATIONSHIP" (
	"FunctionRelationshipID" INTEGER NOT NULL,
	"FunctionRelationshipGUID" TEXT NULL,
	"FunctionParentID" INTEGER NOT NULL,
	"FunctionSubjectID" INTEGER NOT NULL,
	"FunctionRelationshipDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "FUNCTIONRELATIONSHIPREFERENCE" (
	"FunctionRelationshipReferenceID" INTEGER NOT NULL,
	"FunctionRelationshipGUID" TEXT NULL,
	"FunctionRelationshipID" INTEGER NOT NULL,
	"ReferenceID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "FUNCTIONTAG" (
	"FunctionTagID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "GEOLOCATION" (
	"GeoLocationID" INTEGER NOT NULL,
	"GeoLocationGUID" TEXT NULL,
	"room_identifier" TEXT NULL,
	"building_number" TEXT NULL,
	"street_address" TEXT NULL,
	"city" TEXT NULL,
	"state" TEXT NULL,
	"postal_code" TEXT NULL,
	"country" TEXT NULL,
	"latitude" INTEGER NULL,
	"longitude" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"CreationObjectGUID" TEXT NULL,
	"BLOB" TEXT NOT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"CollectionMethodID" INTEGER NULL,
	"CollectionMethodGUID" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"LastCheckedDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "GOOGLEDORK" (
	"GoogleDorkID" INTEGER NOT NULL,
	"DorkValue" TEXT NULL,
	"DorkExpectedPattern" TEXT NULL,
	"DorkDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "GOOGLEDORKURI" (
	"GoogleDorkURIID" INTEGER NOT NULL,
	"GoogleDorkID" INTEGER NOT NULL,
	"URIObjectID" INTEGER NOT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "GROUP" (
	"GroupID" INTEGER NOT NULL,
	"GroupGUID" TEXT NULL,
	"GroupName" TEXT NULL,
	"GroupDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "GROUPINGRELATIONSHIP" (
	"GroupingRelationshipID" INTEGER NOT NULL,
	"GroupingRelationshipName" TEXT NOT NULL,
	"GroupingRelationshipDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"EnumerationVersionID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "GUIACTIONNAME" (
	"GUIActionNameID" INTEGER NOT NULL,
	"GUIActionNameName" TEXT NOT NULL,
	"GUIActionNameDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"EnumerationVersionID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "GUIDELINE" (
	"GuidelineID" INTEGER NOT NULL,
	"GuidelineGUID" TEXT NULL,
	"GuidelineText" TEXT NOT NULL,
	"GuidelineDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "GUIDELINEFORATTACKPATTERN" (
	"AttackPatternGuidelineID" INTEGER NOT NULL,
	"GuidelineID" INTEGER NOT NULL,
	"AttackPatternID" INTEGER NOT NULL,
	"capec_id" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "GUIDIALOGBOX" (
	"GUIDialogboxID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "GUIOBJECT" (
	"GUIObjectID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "GUIWINDOW" (
	"GUIWindowID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "HANDLETYPE" (
	"HandleTypeID" INTEGER NOT NULL,
	"HandleType" TEXT NOT NULL,
	"HandleTypeDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "HARDWARE" (
	"HardwareID" INTEGER NOT NULL,
	"DeviceID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "HASHLIST" (
	"HashListID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"RepositoryID" INTEGER NULL,
	"CollectionMethodID" INTEGER NULL,
	"CollectionToolID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "HASHLISTVALUES" (
	"HashListValuesID" INTEGER NOT NULL,
	"HashListID" INTEGER NOT NULL,
	"HashValueID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "HASHNAME" (
	"HashNameID" INTEGER NOT NULL,
	"HashingAlgorithmName" TEXT NOT NULL,
	"HashingAlgorithmDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"TrustLevelID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"EnumerationVersionID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "HASHVALUE" (
	"HashValueID" INTEGER NOT NULL,
	"HashNameID" INTEGER NULL,
	"HashValueValue" TEXT NOT NULL,
	"CollectedDate" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"CollectionMethodID" INTEGER NULL,
	"CollectionToolID" INTEGER NULL,
	"RepositoryID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "HEADER" (
	"HeaderID" INTEGER NOT NULL,
	"HeaderGUID" TEXT NULL,
	"HeaderName" TEXT NULL,
	"HeaderDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "HEADERDESCRIPTION" (
	"HeaderDescriptionID" INTEGER NOT NULL,
	"HeaderID" INTEGER NOT NULL,
	"DescriptionID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "HEADERREFERENCE" (
	"HeaderReferenceID" INTEGER NOT NULL,
	"HeaderID" INTEGER NOT NULL,
	"ReferenceID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "HEADERTAG" (
	"HeaderTagID" INTEGER NOT NULL,
	"HeaderID" INTEGER NOT NULL,
	"TagID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "HIVELIST" (
	"HiveListID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "HOOKING" (
	"HookingID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "HOOKINGACTIONNAME" (
	"HookingActionNameID" INTEGER NOT NULL,
	"HookingActionNameName" TEXT NOT NULL,
	"HookingActionNameDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"EnumerationVersionID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "HOST" (
	"HostID" INTEGER NOT NULL,
	"ipaddressIPv4" TEXT NULL,
	"macaddress" TEXT NULL,
	"OsName" TEXT NULL,
	"HostService" TEXT NULL,
	"HostVersion" TEXT NULL,
	"BLOB" TEXT NULL,
	"CPEID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "HOSTENDPOINT" (
	"HostEndPointID" INTEGER NOT NULL,
	"HostPort" INTEGER NULL,
	"HostProtocol" TEXT NULL,
	"HostID" INTEGER NULL,
	"HostService" TEXT NULL,
	"HostVersion" TEXT NULL,
	"BLOB" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "HOSTFIELD" (
	"HostFieldID" INTEGER NOT NULL,
	"Domain_Name" TEXT NULL,
	"Port" INTEGER NULL,
	"PortID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "HOSTNAME" (
	"HostNameID" INTEGER NOT NULL,
	"HostNameGUID" TEXT NULL,
	"is_domain_name" INTEGER NULL,
	"Hostname_Value" TEXT NULL,
	"Naming_System" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "HTTPACTIONNAME" (
	"HTTPActionNameID" INTEGER NOT NULL,
	"HTTPActionNameName" TEXT NOT NULL,
	"HTTPActionNameDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"EnumerationVersionID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "HTTPCLIENTREQUEST" (
	"HTTPClientRequestID" INTEGER NOT NULL,
	"HTTPClientRequestGUID" TEXT NULL,
	"HTTP_Request_Line" INTEGER NULL,
	"HTTP_Request_Header" INTEGER NULL,
	"HTTP_Message_Body" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"CollectionMethodID" INTEGER NULL,
	"CollectionToolID" INTEGER NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "HTTPHEADER" (
	"HTTPHeaderID" INTEGER NOT NULL,
	"HTTPHeaderGUID" TEXT NULL,
	"HeaderID" INTEGER NULL,
	"HTTPHeaderName" TEXT NULL,
	"HTTPHeaderDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"TrustLevelID" INTEGER NULL,
	"TrustReasonID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "HTTPHEADERCPE" (
	"HTTPHeaderCPEID" INTEGER NOT NULL,
	"CPEID" INTEGER NULL,
	"CPEName" TEXT NOT NULL,
	"HTTPHeaderID" INTEGER NOT NULL,
	"isspecific" INTEGER NULL,
	"isknownvulnerable" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"ConfidenceReasonID" INTEGER NULL,
	"VocabularyID" INTEGER NULL,
	"ReferenceID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "HTTPHEADERDESCRIPTION" (
	"HTTPHeaderDescriptionID" INTEGER NOT NULL,
	"HTTPHeaderID" INTEGER NOT NULL,
	"DescriptionID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "HTTPHEADERPRODUCT" (
	"HTTPHeaderProductID" INTEGER NOT NULL,
	"HTTPHeaderID" INTEGER NULL,
	"HTTPHeaderGUID" TEXT NULL,
	"ProductID" INTEGER NULL,
	"ProductGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "HTTPMESSAGE" (
	"HTTPMessageID" INTEGER NOT NULL,
	"MessageID" INTEGER NULL,
	"Length" INTEGER NULL,
	"Message_Body" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"CollectionMethodID" INTEGER NULL,
	"CollectionToolID" INTEGER NULL,
	"DiscoveryMethodID" INTEGER NULL,
	"DiscoveryToolID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "HTTPMETHOD" (
	"HTTPMethodID" INTEGER NOT NULL,
	"HTTPMethodEnumID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "HTTPMETHODENUM" (
	"HTTPMethodEnumID" INTEGER NOT NULL,
	"HTTPMethodName" TEXT NULL,
	"HTTPMethodDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"knowndangerous" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "HTTPREQUESTHEADER" (
	"HTTPRequestHeaderID" INTEGER NOT NULL,
	"Raw_Header" TEXT NULL,
	"Parsed_Header" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"CollectionMethodID" INTEGER NULL,
	"CollectionToolID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "HTTPREQUESTHEADERFIELDS" (
	"HTTPRequestHeaderFieldsID" INTEGER NOT NULL,
	"Accept" TEXT NULL,
	"Accept_Charset" TEXT NULL,
	"Accept_Language" TEXT NULL,
	"Accept_Datetime" TEXT NULL,
	"Accept_Encoding" TEXT NULL,
	"AuthorizationHeader" TEXT NULL,
	"Cache_Control" TEXT NULL,
	"Connection" TEXT NULL,
	"Cookie" TEXT NULL,
	"CookieID" INTEGER NULL,
	"Content_Length" INTEGER NULL,
	"Content_MD5" TEXT NULL,
	"Content_Type" TEXT NULL,
	"ContentMIMEID" INTEGER NULL,
	TEXT TEXT NULL,
	"Expect" TEXT NULL,
	"FromHeader" TEXT NULL,
	"FromEmailAddressID" INTEGER NULL,
	"HostFieldID" INTEGER NULL,
	"If_Match" TEXT NULL,
	"If_Modified_Since" TEXT NULL,
	"If_None_Match" TEXT NULL,
	"If_Range" TEXT NULL,
	"If_Unmodified_Since" TEXT NULL,
	"Max_Forwards" INTEGER NULL,
	"Pragma" TEXT NULL,
	"Proxy_Authorization" TEXT NULL,
	"Range" TEXT NULL,
	"Referer" TEXT NULL,
	"RefererURIID" INTEGER NULL,
	"TE" TEXT NULL,
	"User_Agent" TEXT NULL,
	"UserAgentID" INTEGER NULL,
	"Via" TEXT NULL,
	"Warning" TEXT NULL,
	"DNT" TEXT NULL,
	"X_Requested_With" TEXT NULL,
	"X_Forwarded_For" TEXT NULL,
	"X_ATT_DeviceId" TEXT NULL,
	"X_Wap_Profile" TEXT NULL,
	"X_Wap_ProfileURIID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"CollectionMethodID" INTEGER NULL,
	"CollectionToolID" INTEGER NULL,
	"TrustLevelID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "HTTPREQUESTLINE" (
	"HTTPRequestLineID" INTEGER NOT NULL,
	"HTTP_Method" INTEGER NULL,
	"Value" TEXT NULL,
	"Version" TEXT NULL,
	"CreationDate" TEXT NULL,
	"BLOB" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "HTTPREQUESTRESPONSE" (
	"HTTPRequestResponseID" INTEGER NOT NULL,
	"HTTPRequestResponseGUID" TEXT NULL,
	"HTTP_Client_Request" INTEGER NULL,
	"HTTP_Server_Response" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"CollectionMethodID" INTEGER NULL,
	"CollectionToolID" INTEGER NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "HTTPRESPONSEHEADER" (
	"HTTPResponseHeaderID" INTEGER NOT NULL,
	"Raw_Header" TEXT NULL,
	"Parsed_Header" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"CollectionMethodID" INTEGER NULL,
	"CollectionToolID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "HTTPRESPONSEHEADERFIELDS" (
	"HTTPResponseHeaderFieldsID" INTEGER NOT NULL,
	"Access_Control_Allow_Origin" TEXT NULL,
	"Accept_Ranges" TEXT NULL,
	"Age" INTEGER NULL,
	"Cache_Control" TEXT NULL,
	"Connection" TEXT NULL,
	"Content_Encoding" TEXT NULL,
	"Content_Language" TEXT NULL,
	"Content_Length" INTEGER NULL,
	"Content_Location" TEXT NULL,
	"Content_MD5" TEXT NULL,
	"Content_Disposition" TEXT NULL,
	"Content_Range" TEXT NULL,
	"Content_Type" TEXT NULL,
	"ContentMIMEID" INTEGER NULL,
	TEXT TEXT NULL,
	"ETag" TEXT NULL,
	"Expires" TEXT NULL,
	"Last_Modified" TEXT NULL,
	"Link" TEXT NULL,
	"Location" TEXT NULL,
	"LocationURIID" INTEGER NULL,
	"P3P" TEXT NULL,
	"Pragma" TEXT NULL,
	"Proxy_Authenticate" TEXT NULL,
	"Refresh" INTEGER NULL,
	"Retry_After" INTEGER NULL,
	"Server" TEXT NULL,
	"Set_Cookie" TEXT NULL,
	"Strict_Transport_Security" TEXT NULL,
	"Trailer" TEXT NULL,
	"Transfer_Encoding" TEXT NULL,
	"Vary" TEXT NULL,
	"VaryURIID" INTEGER NULL,
	"Via" TEXT NULL,
	"Warning" TEXT NULL,
	"WWW_Authenticate" TEXT NULL,
	"X_Frame_Options" TEXT NULL,
	"X_XSS_Protection" TEXT NULL,
	"X_Content_Type_Options" TEXT NULL,
	"X_Forwarded_Proto" TEXT NULL,
	"X_Powered_By" TEXT NULL,
	"X_UA_Compatible" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"CollectionMethodID" INTEGER NULL,
	"CollectionToolID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "HTTPSERVERRESPONSE" (
	"HTTPServerResponseID" INTEGER NOT NULL,
	"HTTP_Status_Line" INTEGER NULL,
	"HTTP_Response_Header" INTEGER NULL,
	"HTTP_Message_Body" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"CollectionMethodID" INTEGER NULL,
	"CollectionToolID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "HTTPSESSION" (
	"HTTPSessionID" INTEGER NOT NULL,
	"HTTPSessionGUID" TEXT NULL,
	"SessionID" INTEGER NULL,
	"SessionGUID" TEXT NULL,
	"HTTP_Request_ResponseID" INTEGER NULL,
	"HTTPRequestResponseGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "HTTPSESSIONCOOKIE" (
	"HTTPSessionCookieID" INTEGER NOT NULL,
	"HTTPSessionCookieGUID" TEXT NULL,
	"HTTPSessionID" INTEGER NULL,
	"HTTPSessionGUID" TEXT NULL,
	"HTTPSessionCookieRelationship" TEXT NULL,
	"HTTPSessionDescription" TEXT NULL,
	"CookieID" INTEGER NULL,
	"CookieGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "HTTPSTATUSLINE" (
	"HTTPStatusLineID" INTEGER NOT NULL,
	"Version" TEXT NULL,
	"VersionID" INTEGER NULL,
	"Status_Code" INTEGER NULL,
	"Reason_Phrase" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "HUMANRISK" (
	"HumanRiskID" INTEGER NOT NULL,
	"HumanRiskName" TEXT NOT NULL,
	"HumanRiskDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ICOMHANDLERACTION" (
	"IComHandlerActionID" INTEGER NOT NULL,
	"COM_Data" TEXT NULL,
	"COM_Class_ID" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "IDENTIFICATIONSYSTEM" (
	"IdentificationSystemID" INTEGER NOT NULL,
	"SystemURI" TEXT NOT NULL,
	"IdentifierValueDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "IDENTIFIER" (
	"IdentifierID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "IDTENTRY" (
	"IDTEntryID" INTEGER NOT NULL,
	"Type_Attr" TEXT NULL,
	"Offset_High" TEXT NULL,
	"Offset_Low" TEXT NULL,
	"Offset_Middle" TEXT NULL,
	"Selector" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"CollectionMethodID" INTEGER NULL,
	"CollectionToolID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "IDTENTRYLIST" (
	"IDTEntryListID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"CollectionMethodID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "IDTENTRYLISTENTRIES" (
	"IDTEntryListEntriesID" INTEGER NOT NULL,
	"IDTEntryListID" INTEGER NOT NULL,
	"IDTEntryID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"CollectionMethodID" INTEGER NULL,
	"CollectionToolID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "IEXECACTION" (
	"IExecActionID" INTEGER NOT NULL,
	"Exec_Arguments" TEXT NULL,
	"Exec_Program_Path" TEXT NULL,
	"Exec_Working_Directory" TEXT NULL,
	"DirectoryID" INTEGER NULL,
	"Exec_Program_Hashes" TEXT NULL,
	"HashListID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "IMAGEFILE" (
	"ImageFileID" INTEGER NOT NULL,
	"FileID" INTEGER NULL,
	"ImageFileFormatID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"image_is_compressed" INTEGER NULL,
	"Image_Height" INTEGER NULL,
	"Image_Width" INTEGER NULL,
	"Bits_Per_Pixel" INTEGER NULL,
	"Compression_Algorithm" TEXT NULL,
	"CompressionID" INTEGER NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "IMAGEFILEEXIFTAG" (
	"ImageFileEXIFTagID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "IMAGEFILEFORMAT" (
	"ImageFileFormatID" INTEGER NOT NULL,
	"ImageFileFormatName" TEXT NULL,
	"ImageFileFormatDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "IMAGEFILETYPE" (
	"ImageFileTypeID" INTEGER NOT NULL,
	"ImageFileTypeName" TEXT NULL,
	"ImageFileTypeDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"TrustLevelID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "IMPACT" (
	"ImpactID" INTEGER NOT NULL,
	"TechnicalImpact" INTEGER NULL,
	"BusinessImpact" INTEGER NULL,
	"ImpactName" TEXT NULL,
	"ImpactDescription" TEXT NOT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "IMPACTQUALIFICATION" (
	"ImpactQualificationID" INTEGER NOT NULL,
	"ImpactQualificationName" TEXT NULL,
	"ImpactQualificationDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"EnumerationVersionID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "IMPACTRATING" (
	"ImpactRatingID" INTEGER NOT NULL,
	"ImpactRatingName" TEXT NULL,
	"ImpactRatingDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"EnumerationVersionID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "IMPORTANCE" (
	"ImportanceID" INTEGER NOT NULL,
	"ImportanceGUID" TEXT NULL,
	"ImportanceLevel" TEXT NULL,
	"ImportanceDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"EnumerationVersionID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "IMPORTANCETYPE" (
	"ImportanceTypeID" INTEGER NOT NULL,
	"ImportanceTypeName" TEXT NOT NULL,
	"ImportanceTypeDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"EnumerationVersionID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "INDICATOR" (
	"IndicatorID" INTEGER NOT NULL,
	"IndicatorGUID" TEXT NULL,
	"IndicatorTitle" TEXT NOT NULL,
	"IndicatorDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"ConfidenceLevel" TEXT NULL,
	"ConfidenceReasonID" INTEGER NULL,
	"LikelyImpact" TEXT NULL,
	"Producer" TEXT NULL,
	"negate" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"VocabularyID" INTEGER NULL,
	"RepositoryID" INTEGER NULL,
	"ImportanceID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "INDICATORENVIRONMENT" (
	"IndicatorEnvironmentID" INTEGER NOT NULL,
	"IndicatorEnvironmentGUID" TEXT NULL,
	"IndicatorID" INTEGER NULL,
	"IndicatorGUID" TEXT NULL,
	"EnvironmentID" INTEGER NULL,
	"EnvironmentGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "INDICATORFORINDICATOR" (
	"IndicatorRefID" INTEGER NOT NULL,
	"IndicatorSubjectID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "INDICATORID" (
	"IndicatorIDID" INTEGER NOT NULL,
	"IndicatorAlternativeID" TEXT NOT NULL,
	"resource" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "INDICATORIDFORINCIDENTIOC" (
	"IndicatorIDID" INTEGER NOT NULL,
	"IncidentIOCID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "INDICATORIDFORINDICATOR" (
	"IndicatorIDID" INTEGER NOT NULL,
	"IndicatorID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "INDICATORTESTMECHANISM" (
	"IndicatorTestMechanismID" INTEGER NOT NULL,
	"IndicatorID" INTEGER NULL,
	"TestMechanismID" INTEGER NULL,
	"Product_Name" TEXT NULL,
	"Version" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "INDICATORTESTMECHANISMCPE" (
	"IndicatorTestMechanismCPEID" INTEGER NOT NULL,
	"IndicatorTestMechanismID" INTEGER NULL,
	"CPEID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"VocabularyID" INTEGER NULL,
	"RepositoryID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "INDICATORTESTMECHANISMEVENTFILTER" (
	"IndicatorTestMechanismEventFilterID" INTEGER NOT NULL,
	"IndicatorTestMechanismID" INTEGER NULL,
	"EventFilterID" INTEGER NULL,
	"RuleID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "INDICATORTESTMECHANISMEVENTSUPPRESSION" (
	"IndicatorTestMechanismEventSuppressionID" INTEGER NOT NULL,
	"IndicatorTestMechanismID" INTEGER NULL,
	"EventSuppressionID" INTEGER NULL,
	"RuleID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "INDICATORTESTMECHANISMRATEFILTER" (
	"IndicatorTestMechanismRateFilterID" INTEGER NOT NULL,
	"IndicatorTestMechanismID" INTEGER NULL,
	"RateFilterID" INTEGER NULL,
	"RuleID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "INDICATORTESTMECHANISMRULE" (
	"IndicatorTestMechanismRuleID" INTEGER NOT NULL,
	"IndicatorTestMechanismID" INTEGER NULL,
	"RuleID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "INDICATORTYPE" (
	"IndicatorTypeID" INTEGER NOT NULL,
	"IndicatorTypeGUID" TEXT NULL,
	"IndicatorTypeName" TEXT NULL,
	"IndicatorTypeDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"EnumerationVersionID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "INFECTIONPROPAGATIONPROPERTIES" (
	"InfectionPropagationPropertiesID" INTEGER NOT NULL,
	"InfectionPropagationPropertiesName" TEXT NULL,
	"InfectionPropagationPropertiesDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"VocabularyID" INTEGER NULL,
	"EnumerationVersionID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "INFECTIONPROPAGATIONSTRATEGICOBJECTIVE" (
	"InfectionPropagationStrategicObjectiveID" INTEGER NOT NULL,
	"InfectionPropagationStrategicObjectiveName" TEXT NULL,
	"InfectionPropagationStrategicObjectiveDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"EnumerationVersionID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "INFECTIONPROPAGATIONTACTICALOBJECTIVE" (
	"InfectionPropagationTacticalObjectiveID" INTEGER NOT NULL,
	"InfectionPropagationTacticalObjectiveName" TEXT NULL,
	"InfectionPropagationTacticalObjectiveDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"EnumerationVersionID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "INFLUENCE" (
	"InfluenceID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "INFORMATIONSOURCEROLE" (
	"InformationSourceRoleID" INTEGER NOT NULL,
	"InformationSourceRoleGUID" TEXT NULL,
	"InformationSourceRoleName" TEXT NULL,
	"InformationSourceRoleDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"EnumerationVersionID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "INFORMATIONSOURCETYPE" (
	"InformationSourceTypeID" INTEGER NOT NULL,
	"InformationSourceTypeGUID" TEXT NULL,
	"InformationSourceTypeName" TEXT NOT NULL,
	"InformationSourceTypeDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"EnumerationVersionID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "INFORMATIONTYPE" (
	"InformationTypeID" INTEGER NOT NULL,
	"InformationTypeGUID" TEXT NULL,
	"InformationTypeName" TEXT NOT NULL,
	"InformationTypeDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"EnumerationVersionID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "INFORMATIONTYPEFORTHREATACTORTTP" (
	"InformationTypeID" INTEGER NOT NULL,
	"ThreatActorTTPID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "INFRASTRUCTURE" (
	"InfrastructureID" INTEGER NOT NULL,
	"InfrastructureGUID" TEXT NULL,
	"isCritical" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "INJECTIONVECTOR" (
	"InjectionVectorID" INTEGER NOT NULL,
	"InjectionVectorGUID" TEXT NULL,
	"InjectionVectorText" TEXT NOT NULL,
	"InjectionVectorDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "INJECTIONVECTORFORATTACKPATTERN" (
	"AttackPatternInjectionVectorID" INTEGER NOT NULL,
	"InjectionVectorID" INTEGER NOT NULL,
	"AttackPatternID" INTEGER NOT NULL,
	"capec_id" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "INSTANCE" (
	"InstanceID" INTEGER NOT NULL,
	"ProcessID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "INSTRUCTION" (
	"InstructionID" INTEGER NOT NULL,
	"OpcodeID" INTEGER NOT NULL,
	"Register1ID" INTEGER NULL,
	"Register2ID" INTEGER NULL,
	"InstructionOperand1Value" TEXT NULL,
	"InstructionOperand2Value" TEXT NULL,
	"InstructionHEXValue" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "INTEGRITYLEVEL" (
	"IntegrityLevelID" INTEGER NOT NULL,
	"IntegrityLevel" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"IntegrityLevelDescription" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "INTEGRITYVIOLATIONSTRATEGICOBJECTIVE" (
	"IntegrityViolationStrategicObjectiveID" INTEGER NOT NULL,
	"IntegrityViolationStrategicObjectiveName" TEXT NULL,
	"IntegrityViolationStrategicObjectiveDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"EnumerationVersionID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "INTEGRITYVIOLATIONTACTICALOBJECTIVE" (
	"IntegrityViolationTacticalObjectiveID" INTEGER NOT NULL,
	"IntegrityViolationTacticalObjectiveName" TEXT NULL,
	"IntegrityViolationTacticalObjectiveDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"EnumerationVersionID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "INTERACTIONLEVEL" (
	"InteractionLevelID" INTEGER NOT NULL,
	"InteractionLevel" TEXT NOT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "INTERACTIONPOINTS" (
	"InteractionPointsID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "INTERACTIONPOINTSECURITYCONTROL" (
	"InteractionPointSecurityControlID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "INTERFACE" (
	"InterfaceID" INTEGER NOT NULL,
	"InterfaceName" TEXT NOT NULL,
	"ipaddressIPv4" TEXT NULL,
	"ipaddressIPv6" TEXT NULL,
	"MacAddress" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "INTERFACEFORSYSTEMINFO" (
	"SystemInfoID" INTEGER NOT NULL,
	"InterfaceID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "INTRUSION" (
	"IntrusionID" INTEGER NOT NULL,
	"BreachID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "INVESTIGATION" (
	"InvestigationID" INTEGER NOT NULL,
	"ProjectID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "IPCACTIONNAME" (
	"IPCActionNameID" INTEGER NOT NULL,
	"IPCActionNameName" TEXT NOT NULL,
	"IPCActionNameDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"EnumerationVersionID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "IPFIXDATASET" (
	"IPFIXDataSetID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "IPFIXMESSAGE" (
	"IPFIXMessageID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "IPFIXMESSAGEHEADER" (
	"IPFIXMessageHeaderID" INTEGER NOT NULL,
	"VersionNumber" TEXT NULL,
	"Byte_Length" INTEGER NULL,
	"Export_Timestamp" INTEGER NULL,
	"Sequence_Number" INTEGER NULL,
	"Observation_Domain_ID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "IPFIXOPTIONSTEMPLATERECORD" (
	"IPFIXOptionsTemplateRecordID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "IPFIXOPTIONSTEMPLATERECORDFIELDSPECIFIERS" (
	"IPFIXOptionsTemplateRecordFieldSpecifiersID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "IPFIXOPTIONSTEMPLATERECORDHEADER" (
	"IPFIXOptionsTemplateRecordHeaderID" INTEGER NOT NULL,
	"Template_ID" INTEGER NULL,
	"Field_Count" INTEGER NULL,
	"Scope_Field_Count" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "IPFIXOPTIONSTEMPLATESET" (
	"IPFIXOptionsTemplateSetID" INTEGER NOT NULL,
	"Padding" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "IPFIXSET" (
	"IPFIXSetID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "IPFIXSETHEADER" (
	"IPFIXSetHeaderID" INTEGER NOT NULL,
	"Set_ID" INTEGER NULL,
	"Length" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "IPFIXTEMPLATERECORD" (
	"IPFIXTemplateRecordID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "IPFIXTEMPLATERECORDFIELDSPECIFIER" (
	"IPFIXTemplateRecordFieldSpecifierID" INTEGER NOT NULL,
	"Enterprise_Bit" INTEGER NULL,
	"Information_Element_ID" TEXT NULL,
	"Field_Length" INTEGER NULL,
	"Enterprise_Number" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "IPFIXTEMPLATERECORDHEADER" (
	"IPFIXTemplateRecordHeaderID" INTEGER NOT NULL,
	"Template_ID" INTEGER NULL,
	"Field_Count" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "IPFIXTEMPLATESET" (
	"IPFIXTemplateSetID" INTEGER NOT NULL,
	"Padding" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "IRCACTIONNAME" (
	"IRCActionNameID" INTEGER NOT NULL,
	"IRCActionNameName" TEXT NOT NULL,
	"IRCActionNameDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"EnumerationVersionID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "ISHOWMESSAGEACTION" (
	"IShowMessageActionID" INTEGER NOT NULL,
	"Show_Message_Body" TEXT NULL,
	"Show_Message_Title" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "ISOCURRENCY" (
	"iso_currency_code" TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS "JOB" (
	"JobID" INTEGER NOT NULL,
	"JobGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"ProviderID" INTEGER NULL,
	"DateStart" TEXT NULL,
	"DateEnd" TEXT NULL,
	"Status" TEXT NULL,
	"AgentID" INTEGER NULL,
	"SessionID" INTEGER NULL,
	"AssetSessionID" INTEGER NULL,
	"Parameters" BLOB NULL,
	"XmlResult" BLOB NULL,
	"ErrorReason" TEXT NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "KERNELHOOK" (
	"KernelHookID" INTEGER NOT NULL,
	"KernelHookTypeEnumID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "KERNELHOOKTYPEENUM" (
	"KernelHookTypeEnumID" INTEGER NOT NULL,
	"KernelHookType" TEXT NULL,
	"KernelHookTypeDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "KEYWORD" (
	"KeywordID" INTEGER NOT NULL,
	"KeywordValue" TEXT NOT NULL,
	"lang" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "KILLCHAIN" (
	"KillChainID" INTEGER NOT NULL,
	"KillChainGID" TEXT NULL,
	"KillChainName" TEXT NOT NULL,
	"KillChainDefiner" TEXT NULL,
	"KillChainReference" TEXT NULL,
	"KillChainNumberOfPhases" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "KILLCHAINFORTHREATACTORTTP" (
	"KillChainID" INTEGER NOT NULL,
	"ThreatActorTTPID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "KILLCHAINPHASE" (
	"KillChainPhaseID" INTEGER NOT NULL,
	"KillChainPhaseGID" TEXT NULL,
	"KillChainPhaseName" TEXT NOT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "KILLCHAINPHASEFORKILLCHAIN" (
	"KillChainKillChainPhaseID" INTEGER NOT NULL,
	"KillChainID" INTEGER NOT NULL,
	"KillChainPhaseID" INTEGER NOT NULL,
	"ordinality" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "KILLCHAINPHASEFORTHREATACTORTTP" (
	"ThreatActorTTPKillChainPhaseID" INTEGER NOT NULL,
	"KillChainPhaseID" INTEGER NOT NULL,
	"ThreatActorTTPID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "LABEL" (
	"LabelID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "LANGUAGE" (
	"LanguageID" INTEGER NOT NULL,
	"LanguageGUID" TEXT NULL,
	"LanguageName" TEXT NULL,
	"LanguageDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "LANGUAGECHARACTEREOL" (
	"LanguageCharacterEOLID" INTEGER NOT NULL,
	"LanguageID" INTEGER NOT NULL,
	"CharacterID" INTEGER NOT NULL,
	"ordinal_position" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "LANGUAGECLASS" (
	"LanguageClassID" INTEGER NOT NULL,
	"LanguageClassDescription" TEXT NOT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "LANGUAGEFORAPPLICATION" (
	"ApplicationLanguageID" INTEGER NOT NULL,
	"ApplicationID" INTEGER NOT NULL,
	"LanguageID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "LANGUAGEFORTECHNICALCONTEXT" (
	"TechnicalContextLanguageID" INTEGER NOT NULL,
	"LanguageID" INTEGER NOT NULL,
	"LanguageGUID" TEXT NULL,
	"TechnicalContextID" INTEGER NOT NULL,
	"TechnicalContextGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "LANGUAGEFUNCTION" (
	"LanguageFunctionID" INTEGER NOT NULL,
	"LanguageFunctionGUID" TEXT NULL,
	"LanguageID" INTEGER NOT NULL,
	"LanguageGUID" TEXT NULL,
	"FunctionID" INTEGER NOT NULL,
	"FunctionGUID" TEXT NULL,
	"LanguageFunctionDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ValidityID" INTEGER NULL,
	"isDeprecated" INTEGER NULL,
	"CreationObjectID" INTEGER NULL,
	"CreationObjectGUID" TEXT NULL,
	"isKnownVulnerable" INTEGER NULL,
	"CollectionMethodID" INTEGER NULL,
	"CollectionMethodGUID" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"ConfidenceLevelGUID" TEXT NULL,
	"ConfidenceReasonID" INTEGER NULL,
	"ConfidenceReasonGUID" TEXT NULL,
	"TrustLevelID" INTEGER NULL,
	"TrustLevelGUID" TEXT NULL,
	"TrustReasonID" INTEGER NULL,
	"TrustReasonGUID" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"VocabularyGUID" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "LANGUAGEFUNCTIONREFERENCE" (
	"LanguageFunctionReferenceID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "LANGUAGEFUNCTIONTAG" (
	"LanguageFunctionTagID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "LAW" (
	"LawID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "LIBRARY" (
	"LibraryID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "LIBRARYACTIONNAME" (
	"LibraryActionNameID" INTEGER NOT NULL,
	"LibraryActionNameName" TEXT NOT NULL,
	"LibraryActionNameDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"EnumerationVersionID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "LIBRARYDESCRIPTION" (
	"LibraryDescriptionID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "LIBRARYREFERENCE" (
	"LibraryReferenceID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "LIBRARYTAG" (
	"LibraryTagID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "LICENSE" (
	"LicenseID" INTEGER NOT NULL,
	"LicenseName" TEXT NULL,
	"LicenseVersion" TEXT NULL,
	"LicenseTypeID" INTEGER NULL,
	"LicenseDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "LICENSEACCESSRECORD" (
	"LicenseAccessRecordID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "LICENSECHANGERECORD" (
	"LicenseChangeRecordID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "LICENSERESTRICTION" (
	"LicenseRestrictionID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "LICENSETYPE" (
	"LicenseTypeID" INTEGER NOT NULL,
	"LicenseTypeName" TEXT NULL,
	"LicenseTypeDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "LINK" (
	"LinkID" INTEGER NOT NULL,
	"LinkGUID" TEXT NULL,
	"ReferenceID" INTEGER NULL,
	"LinkURL" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"suspected_malicious" INTEGER NULL,
	"SuspectedMaliciousReasonID" INTEGER NULL,
	"CollectionMethodID" INTEGER NULL,
	"TrustLevelID" INTEGER NULL,
	"TrustReasonID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "LINKTYPE" (
	"LinkTypeID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "LINUXPACKAGE" (
	"LinuxPackageID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "LOCALE" (
	"LocaleID" INTEGER NOT NULL,
	"LocaleGUID" TEXT NULL,
	"LCIDHex" TEXT NULL,
	"LCIDDec" INTEGER NULL,
	"LocaleValue" TEXT NULL,
	"LocaleDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "LOCALEDESCRIPTION" (
	"LocaleDescriptionID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "LOCALEREFERENCE" (
	"LocaleReferenceID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "LOCATIONPOINT" (
	"LocationPointID" INTEGER NOT NULL,
	"latitude" INTEGER NOT NULL,
	"longitude" INTEGER NOT NULL,
	"elevation" INTEGER NULL,
	"radius" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "LOCATIONPOINTFORASSET" (
	"LocationPointID" INTEGER NOT NULL,
	"AssetID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"source" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "LOCATIONPOINTFORORGANISATION" (
	"LocationPointID" INTEGER NOT NULL,
	"OrganisationID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"source" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "LOCATIONPOINTFORPERSON" (
	"LocationPointID" INTEGER NOT NULL,
	"PersonID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"source" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "LOCATIONREGION" (
	"LocationRegionID" INTEGER NOT NULL,
	"regionname" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "LOCATIONREGIONFORASSET" (
	"LocationRegionID" INTEGER NOT NULL,
	"AssetID" INTEGER NOT NULL,
	"BLOB" TEXT NOT NULL,
	"source" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "LOGFILE" (
	"LogFileID" INTEGER NOT NULL,
	"FileID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "LOSSDURATION" (
	"LossDurationID" INTEGER NOT NULL,
	"LossDurationName" TEXT NULL,
	"LossDurationDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"EnumerationVersionID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "LOSSFACTOR" (
	"LossFactorID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "LOSSFORM" (
	"LossFormID" INTEGER NOT NULL,
	"LossFormName" TEXT NOT NULL,
	"LossFormDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "LOSSPROPERTY" (
	"LossPropertyID" INTEGER NOT NULL,
	"LossPropertyGUID" TEXT NULL,
	"LossPropertyName" TEXT NOT NULL,
	"LossPropertyDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"EnumerationVersionID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "LOSSPROPERTYFORINCIDENT" (
	"IncidentID" INTEGER NOT NULL,
	"LossPropertyID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "MACHINEACCESSCONTROLPROPERTIES" (
	"MachineAccessControlPropertiesID" INTEGER NOT NULL,
	"MachineAccessControlPropertiesName" TEXT NULL,
	"MachineAccessControlPropertiesDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"EnumerationVersionID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "MACHINEACCESSCONTROLSTRATEGICOBJECTIVE" (
	"MachineAccessControlStrategicObjectiveID" INTEGER NOT NULL,
	"MachineAccessControlStrategicObjectiveName" TEXT NULL,
	"MachineAccessControlStrategicObjectiveDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"EnumerationVersionID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "MACHINEACCESSCONTROLTACTICALOBJECTIVE" (
	"MachineAccessControlTacticalObjectiveID" INTEGER NOT NULL,
	"MachineAccessControlTacticalObjectiveName" TEXT NULL,
	"MachineAccessControlTacticalObjectiveDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"VocabularyID" INTEGER NULL,
	"EnumerationVersionID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "MAINTENANCENOTE" (
	"MaintenanceNoteID" INTEGER NOT NULL,
	"MaintenanceNoteText" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "MANAGEMENT" (
	"ManagementID" INTEGER NOT NULL,
	"ManagementName" TEXT NULL,
	"ManagementDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"EnumerationVersionID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "MATURITYLEVEL" (
	"MaturityLevelID" INTEGER NOT NULL,
	"MaturityLevelGUID" TEXT NULL,
	"MaturityLevelVocabularyID" TEXT NULL,
	"MaturityLevelName" TEXT NULL,
	"MaturityLevelDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "MATURITYRATING" (
	"MaturityRatingID" INTEGER NOT NULL,
	"ScoringSystemID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "MEASURESOURCE" (
	"MeasureSourceID" INTEGER NOT NULL,
	"SourceClassID" INTEGER NULL,
	"SourceClassName" TEXT NULL,
	"MeasureSourceName" TEXT NULL,
	"SourceTypeID" INTEGER NULL,
	"SourceTypeName" TEXT NULL,
	"MeasureSourceDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"TrustLevelID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "MEASURESOURCECONTRIBUTOR" (
	"MeasureSourceID" INTEGER NOT NULL,
	"PersonID" INTEGER NOT NULL,
	"BLOB" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "MEASURESOURCEINFORMATIONSOURCETYPE" (
	"MeasureSourceID" INTEGER NOT NULL,
	"InformationSourceTypeID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "MEASURESOURCEPLATFORM" (
	"MeasureSourceID" INTEGER NOT NULL,
	"PlatformID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "MEASURESOURCESYSTEM" (
	"MeasureSourceID" INTEGER NOT NULL,
	"SystemID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "MEASURESOURCETOOL" (
	"MeasureSourceID" INTEGER NOT NULL,
	"ToolInformationID" INTEGER NOT NULL,
	"BLOB" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "MEASURESOURCETOOLTYPE" (
	"MeasureSourceID" INTEGER NOT NULL,
	"ToolTypeID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "MECHANISM" (
	"MechanismID" INTEGER NOT NULL,
	"MechanismGUID" TEXT NULL,
	"MechanismName" TEXT NULL,
	"MechanismDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"TrustLevelID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "MECHANISMDESCRIPTION" (
	"MechanismDescriptionID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "MECHANISMREFERENCE" (
	"MechanismReferenceID" INTEGER NOT NULL,
	"MechanismReferenceGUID" TEXT NULL,
	"MechanismID" INTEGER NOT NULL,
	"ReferenceID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "MECHANISMRELATIONSHIP" (
	"MechanismRelationshipID" INTEGER NOT NULL,
	"MechanismRelationshipGUID" TEXT NULL,
	"MechanismParentID" INTEGER NOT NULL,
	"MechanismSubjectID" INTEGER NOT NULL,
	"MechanismRelationshipDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "MECHANISMTAG" (
	"MechanismTagID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "MEMORYADDRESS" (
	"MemoryAddressID" INTEGER NOT NULL,
	"MemoryAddressGUID" TEXT NULL,
	"MemoryAddressValue" TEXT NOT NULL,
	"MemoryAddressDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"CollectionMethodID" INTEGER NULL,
	"CollectionToolID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "MEMORYADDRESSREFERENCE" (
	"MemoryAddressReferenceID" INTEGER NOT NULL,
	"MemoryAddressID" INTEGER NOT NULL,
	"ReferenceID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "MEMORYDUMP" (
	"MemoryDumpID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "MEMORYOBJECT" (
	"MemoryObjectID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "MEMORYSECTIONLIST" (
	"MemorySectionListID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "MESSAGE" (
	"MessageID" INTEGER NOT NULL,
	"MessageGUID" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "MESSAGECONFIDENTIALITYLEVEL" (
	"MessageConfidentialityLevelID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "MESSAGELEVEL" (
	"MessageLevelID" INTEGER NOT NULL,
	"MessageLevelValue" TEXT NOT NULL,
	"MessageLevelDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "MESSAGESMS" (
	"MessageSMSID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "METADATA" (
	"MetadataID" INTEGER NOT NULL,
	"MetadataContent" TEXT NOT NULL,
	"type" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "METHOD" (
	"MethodID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "METHODOLOGY" (
	"MethodologyID" INTEGER NOT NULL,
	"MethodologyGUID" TEXT NULL,
	"MethodologyName" TEXT NOT NULL,
	"MethodologyDescription" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"lang" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"MethodologyReference" TEXT NULL,
	"MethodologyVersion" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ValidityID" INTEGER NULL,
	"TrustLevelID" INTEGER NULL,
	"TrustReasonID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "METHODOLOGYCHAPTER" (
	"MethodologyChapterID" INTEGER NOT NULL,
	"ChapterID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "METHODOLOGYDESCRIPTION" (
	"MethodologyDescriptionID" INTEGER NOT NULL,
	"MethodologyID" INTEGER NOT NULL,
	"DescriptionID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ValidityID" INTEGER NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "METHODOLOGYNODE" (
	"MethodologyNodeID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "METHODOLOGYREFERENCE" (
	"MethodologyReferenceID" INTEGER NOT NULL,
	"MethodologyID" INTEGER NOT NULL,
	"ReferenceID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "METHODOLOGYTAG" (
	"MethodologyTagID" INTEGER NOT NULL,
	"MethodologyID" INTEGER NOT NULL,
	"TagID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "METHODOLOGYTECHNIQUE" (
	"MethodologyTechniqueID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "METHODOLOGYTEST" (
	"MethodologyTestID" INTEGER NOT NULL,
	"MethodologyTestGUID" TEXT NULL,
	"MethodologyID" INTEGER NULL,
	"MethodologyGUID" TEXT NULL,
	"TestID" INTEGER NULL,
	"TestGUID" TEXT NULL,
	"TestVocabularyID" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "METRIC" (
	"MetricID" INTEGER NOT NULL,
	"MetricGUID" TEXT NULL,
	"MetricName" TEXT NULL,
	"MetricDescription" TEXT NULL,
	"MetricExamples" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "METRICCATEGORY" (
	"MetricCategoryID" INTEGER NOT NULL,
	"CategoryID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "METRICCHANGERECORD" (
	"MetricChangeRecordID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "METRICDESCRIPTION" (
	"MetricDescriptionID" INTEGER NOT NULL,
	"MetricID" INTEGER NOT NULL,
	"DescriptionID" INTEGER NOT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "METRICREFERENCE" (
	"MetricReferenceID" INTEGER NOT NULL,
	"MetricID" INTEGER NOT NULL,
	"ReferenceID" INTEGER NOT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "METRICTAG" (
	"MetricTagID" INTEGER NOT NULL,
	"MetricID" INTEGER NOT NULL,
	"TagID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "MIME" (
	"MIMEID" INTEGER NOT NULL,
	"MIMEType" TEXT NULL,
	"MIMETypeDescription" TEXT NULL,
	"MIMEVersion" TEXT NULL,
	"MIMETypeReference" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "MIMEVERSION" (
	"MIMEVersionID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "MIMEWHITELIST" (
	"MIMEWhitelistID" INTEGER NOT NULL,
	"MIMEID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "MININGSCHEMA" (
	"MiningSchemaID" INTEGER NOT NULL,
	"SchemaID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "MITIGATION" (
	"MitigationID" INTEGER NOT NULL,
	"MitigationGUID" TEXT NULL,
	"MitigationVocabularyID" TEXT NULL,
	"MitigationName" TEXT NULL,
	"SolutionMitigationText" TEXT NOT NULL,
	"EffectivenessID" INTEGER NULL,
	"Mitigation_Effectiveness_Notes" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"ShortTerm" INTEGER NULL,
	"LongTerm" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "MITIGATIONCODE" (
	"MitigationCodeID" INTEGER NOT NULL,
	"MitigationID" INTEGER NOT NULL,
	"CodeID" INTEGER NOT NULL,
	"Block_Nature" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "MITIGATIONEFFECTIVENESS" (
	"MitigationEffectivenessID" INTEGER NOT NULL,
	"MitigationID" INTEGER NULL,
	"EffectivenessID" INTEGER NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "MITIGATIONFORATTACKPATTERN" (
	"AttackPatternMitigationID" INTEGER NOT NULL,
	"MitigationID" INTEGER NOT NULL,
	"MitigationGUID" TEXT NULL,
	"AttackPatternID" INTEGER NOT NULL,
	"AttackPatternGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "MITIGATIONFORCWE" (
	"CWEMitigationID" INTEGER NOT NULL,
	"MitigationID" INTEGER NOT NULL,
	"MitigationGUID" TEXT NULL,
	"MitigationVocabularyID" TEXT NULL,
	"CWEID" TEXT NOT NULL,
	"MitigationPhaseID" INTEGER NULL,
	"MitigationStrategyID" INTEGER NULL,
	"CWEMitigationDescription" TEXT NULL,
	"EffectivenessID" INTEGER NULL,
	"CWEMitigationEffectivenessNotes" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "MITIGATIONPHASE" (
	"MitigationPhaseID" INTEGER NOT NULL,
	"MitigationPhaseGUID" TEXT NULL,
	"PhaseID" INTEGER NULL,
	"PhaseGUID" TEXT NULL,
	"MitigationPhaseName" TEXT NOT NULL,
	"MitigationPhaseDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ImportanceID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "MITIGATIONPHASEFORMITIGATION" (
	"MitigationMitigationPhaseID" INTEGER NOT NULL,
	"MitigationID" INTEGER NOT NULL,
	"MitigationGUID" TEXT NULL,
	"MitigationPhaseID" INTEGER NOT NULL,
	"MitigationPhaseGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "MITIGATIONPHASETAG" (
	"MitigationPhaseTagID" INTEGER NOT NULL,
	"MitigationPhaseID" INTEGER NULL,
	"MitigationPhaseGUID" TEXT NULL,
	"TagID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "MITIGATIONREFERENCE" (
	"MitigationReferenceID" INTEGER NOT NULL,
	"MitigationID" INTEGER NOT NULL,
	"MitigationGUID" TEXT NULL,
	"ReferenceID" INTEGER NOT NULL,
	"ReferenceGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"MitigationReferenceDescription" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "MITIGATIONSTRATEGY" (
	"MitigationStrategyID" INTEGER NOT NULL,
	"MitigationStrategyGUID" TEXT NULL,
	"StrategyID" INTEGER NULL,
	"StrategyGUID" TEXT NULL,
	"MitigationStrategyName" TEXT NULL,
	"MitigationStrategyDescription" TEXT NULL,
	"MitigationStrategyVocabularyID" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"TrustLevelID" INTEGER NULL,
	"TrustReasonID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "MITIGATIONSTRATEGYFORMITIGATION" (
	"MitigationMitigationStrategyID" INTEGER NOT NULL,
	"MitigationID" INTEGER NOT NULL,
	"MitigationGUID" TEXT NULL,
	"MitigationStrategyID" INTEGER NOT NULL,
	"MitigationStrategyGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NOT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "MITIGATIONSTRATEGYTAG" (
	"MitigationStrategyTagID" INTEGER NOT NULL,
	"MitigationStrategyID" INTEGER NULL,
	"MitigationStrategyGUID" TEXT NULL,
	"TagID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "MMSMESSAGE" (
	"MMSMessageID" INTEGER NOT NULL,
	"MessageID" INTEGER NULL,
	"SMSMessageID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "MOBILEDEVICE" (
	"MobileDeviceID" INTEGER NOT NULL,
	"DeviceID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "MODEL" (
	"ModelID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "MODELCATEGORY" (
	"ModelCategoryID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "MODELDESCRIPTION" (
	"ModelDescriptionID" INTEGER NOT NULL,
	"ModelID" INTEGER NOT NULL,
	"DescriptionID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "MODULE" (
	"ModuleID" INTEGER NOT NULL,
	"ModuleName" TEXT NULL,
	"ModuleDescription" TEXT NULL,
	"ModuleVersion" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "MUTEX" (
	"MutexID" INTEGER NOT NULL,
	"MutexName" TEXT NULL,
	"MutexDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "MUTEXNAME" (
	"MutexNameID" INTEGER NOT NULL,
	"MutexID" INTEGER NULL,
	"MutexName" TEXT NOT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "MUTEXNAMES" (
	"MutexNamesID" INTEGER NOT NULL,
	"MutexID" INTEGER NOT NULL,
	"MutexNameID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "MUTEXTYPE" (
	"MutexTypeID" INTEGER NOT NULL,
	"MutexType" TEXT NULL,
	"MutexTypeDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "NAICS" (
	"NAICSID" INTEGER NOT NULL,
	"NAICSSector" TEXT NOT NULL,
	"NAICSDescription" TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS "NAME" (
	"NameID" INTEGER NOT NULL,
	"NameText" TEXT NULL,
	"LocaleID" INTEGER NULL,
	"VersionID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "NETROUTE" (
	"NetRouteID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "NETWORK" (
	"NetworkID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "NETWORKACTIONNAME" (
	"NetworkActionNameID" INTEGER NOT NULL,
	"NetworkActionNameName" TEXT NOT NULL,
	"NetworkActionNameDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"EnumerationVersionID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "NETWORKCONNECTION" (
	"NetworkConnectionID" INTEGER NOT NULL,
	"NetworkConnectionGUID" TEXT NULL,
	"tls_used" INTEGER NULL,
	"Creation_Time" TEXT NULL,
	"ProtocolLayer3ID" INTEGER NULL,
	"Layer3_Protocol" TEXT NULL,
	"ProtocolLayer4ID" INTEGER NULL,
	"Layer4_Protocol" TEXT NULL,
	"ProtocolLayer7ID" INTEGER NULL,
	"Layer7_Protocol" TEXT NULL,
	"SourceSocketAddressID" INTEGER NULL,
	"SourceTCPStateID" INTEGER NULL,
	"Source_TCP_State" TEXT NULL,
	"DestinationSocketAddressID" INTEGER NULL,
	"DestinationTCPStateID" INTEGER NULL,
	"Destination_TCP_State" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "NETWORKCONNECTIONLAYER7" (
	"NetworkConnectionLayer7ID" INTEGER NOT NULL,
	"NetworkConnectionID" INTEGER NULL,
	"NetworkConnectionGUID" TEXT NULL,
	"HTTPSessionID" INTEGER NULL,
	"HTTPSessionGUID" TEXT NULL,
	"DNSQueryID" INTEGER NULL,
	"DNDQueryGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "NETWORKFLOW" (
	"NetworkFlowID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "NETWORKFLOWLABEL" (
	"NetworkFlowLabelID" INTEGER NOT NULL,
	"Src_Socket_Address" INTEGER NULL,
	"Dest_Socket_Address" INTEGER NULL,
	"IP_Protocol" INTEGER NULL,
	"Ingress_Interface_Index" INTEGER NULL,
	"Egress_Interface_Index" INTEGER NULL,
	"IP_Type_Of_Service" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "NETWORKINTERFACE" (
	"NetworkInterfaceID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "NETWORKPACKET" (
	"NetworkPacketID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "NETWORKROUTE" (
	"NetworkRouteID" INTEGER NOT NULL,
	"NetworkRouteGUID" TEXT NULL,
	"NetRouteID" INTEGER NULL,
	"is_ipv6" INTEGER NULL,
	"is_autoconfigure_address" INTEGER NULL,
	"is_immortal" INTEGER NULL,
	"is_loopback" INTEGER NULL,
	"is_publish" INTEGER NULL,
	"DestinationAddressID" INTEGER NULL,
	"OriginAddressID" INTEGER NULL,
	"NetmaskID" INTEGER NULL,
	"GatewayAddressID" INTEGER NULL,
	"Metric" INTEGER NULL,
	"NetworkRouteTypeID" INTEGER NULL,
	"NetworkRouteType" TEXT NULL,
	"ProtocolID" INTEGER NULL,
	"NetworkRouteProtocol" TEXT NULL,
	"NetworkRouteInterface" TEXT NULL,
	"PreferredLifetime" INTEGER NULL,
	"ValidLifetime" INTEGER NULL,
	"RouteAge" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "NETWORKROUTEENTRY" (
	"NetworkRouteEntryID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "NETWORKROUTETYPE" (
	"NetworkRouteTypeID" INTEGER NOT NULL,
	"RouteType" TEXT NULL,
	"RouteTypeDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "NETWORKSHARE" (
	"NetworkShareID" INTEGER NOT NULL,
	"NetworkShareGUID" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "NETWORKSHAREACTIONNAME" (
	"NetworkShareActionNameID" INTEGER NOT NULL,
	"NetworkShareActionNameName" TEXT NOT NULL,
	"NetworkShareActionNameDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"EnumerationVersionID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "NETWORKSOCKET" (
	"NetworkSocketID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "NETWORKSUBNET" (
	"NetworkSubnetID" INTEGER NOT NULL,
	"NetworkSubnetGUID" TEXT NULL,
	"NetworkSubnetName" TEXT NULL,
	"NetworkSubnetDescription" TEXT NULL,
	"NetworkSubnetNumberOfIPAddresses" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "NETWORKSUBNETROUTES" (
	"NetworkSubnetRoutesID" INTEGER NOT NULL,
	"NetworkSubnetID" INTEGER NULL,
	"NetworkSubnetGUID" TEXT NULL,
	"NetworkRouteID" INTEGER NULL,
	"NetworkRouteGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "NETWORKZONE" (
	"NetworkZoneID" INTEGER NOT NULL,
	"NetworkZoneGUID" TEXT NULL,
	"ZoneID" INTEGER NULL,
	"ZoneGUID" TEXT NULL,
	"NetworkZoneName" TEXT NULL,
	"NetworkZoneDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ValidityID" INTEGER NULL,
	"TrustLevelID" INTEGER NULL,
	"TrustReasonID" INTEGER NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "NETWORKZONEDESCRIPTION" (
	"NetworkZoneDescriptionID" INTEGER NOT NULL,
	"NetworkZoneID" INTEGER NULL,
	"NetworkZoneGUID" TEXT NULL,
	"DescriptionID" INTEGER NULL,
	"DescriptionGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "NETWORKZONERESTRICTION" (
	"NetworkZoneRestrictionID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "NETWORKZONETAG" (
	"NetworkZoneTagID" INTEGER NOT NULL,
	"ConfidentialityLevelID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "NEURALNETWORK" (
	"NeuralNetworkID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "NOTIFICATION" (
	"NotificationID" INTEGER NOT NULL,
	"NotificationGUID" TEXT NULL,
	"BLOB" TEXT NULL,
	"UserID" TEXT NULL,
	"NotificationMessage" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"ImportanceID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "OBFUSCATIONTECHNIQUE" (
	"ObfuscationTechniqueID" INTEGER NOT NULL,
	"ObfuscationTechniqueGUID" TEXT NULL,
	"TechniqueID" INTEGER NULL,
	"ObfuscationTechniqueName" TEXT NOT NULL,
	"ObfuscationTechniqueDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "OBFUSCATIONTECHNIQUETAG" (
	"ObfuscationTechniqueTagID" INTEGER NOT NULL,
	"ObfuscationTechniqueID" INTEGER NULL,
	"TagID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "OBJECTIVE" (
	"ObjectiveID" INTEGER NOT NULL,
	"ObjectiveGUID" TEXT NULL,
	"ObjectiveCategoryID" INTEGER NULL,
	"ObjectiveVocabularyID" TEXT NULL,
	"ObjectiveName" TEXT NULL,
	"ObjectiveDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "OBJECTIVECATEGORY" (
	"ObjectiveCategoryID" INTEGER NOT NULL,
	"ObjectiveCategoryGUID" TEXT NULL,
	"CategoryID" INTEGER NULL,
	"ObjectiveCategoryName" TEXT NULL,
	"ObjectiveCategoryDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "OBJECTIVETAG" (
	"ObjectiveTagID" INTEGER NOT NULL,
	"ObjectiveID" INTEGER NULL,
	"TagID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "OBJECTRELATIONSHIP" (
	"ObjectRelationshipID" INTEGER NOT NULL,
	"ObjectRelationshipName" TEXT NOT NULL,
	"ObjectRelationshipDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"EnumerationVersionID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"BLOB" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "OBJECTSTATE" (
	"ObjectStateID" INTEGER NOT NULL,
	"ObjectStateName" TEXT NOT NULL,
	"ObjectStateDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"EnumerationVersionID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"BLOB" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "OBJECTTYPE" (
	"ObjectTypeID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "OBSERVATIONMETHOD" (
	"ObservationMethodID" INTEGER NOT NULL,
	"ObservationMethodGUID" TEXT NULL,
	"ObservationMethodName" TEXT NOT NULL,
	"ObservationMethodDescription" TEXT NULL,
	"MeasureSourceID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "OFFSET" (
	"OffsetID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "ONTOLOGY" (
	"OntologyID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "OPCODE" (
	"OpcodeID" INTEGER NOT NULL,
	"OpcodeName" TEXT NOT NULL,
	"OpcodeDescription" TEXT NULL,
	"OpcodeHEXValue" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "OPCODEFORCPE" (
	"CPEID" TEXT NOT NULL,
	"OpcodeID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "OPERATIONENUMERATION" (
	"OperationEnumerationID" INTEGER NOT NULL,
	"OperationValue" TEXT NOT NULL,
	"OperationDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "OPERATIONENUMERATIONFORSIMPLEDATATYPE" (
	"SimpleDataTypeID" INTEGER NOT NULL,
	"OperationEnumerationID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "OPERATORENUMERATION" (
	"OperatorEnumerationID" INTEGER NOT NULL,
	"OperatorValue" TEXT NOT NULL,
	"OperatorDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "ORGANISATION" (
	"OrganisationID" INTEGER NOT NULL,
	"OrganisationGUID" TEXT NULL,
	"OrganisationName" TEXT NOT NULL,
	"OrganisationType" TEXT NULL,
	"OrganisationKnownAs" TEXT NULL,
	"industry" TEXT NULL,
	"CountryID" INTEGER NULL,
	"employee_count" TEXT NULL,
	"revenueamount" INTEGER NULL,
	"iso_currency_code" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"TrustLevelID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ORGANISATIONACCESSRECORD" (
	"OrganisationAccessRecordID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "ORGANISATIONCHANGERECORD" (
	"OrganisationChangeRecordID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "ORGANISATIONDOMAINNAME" (
	"OrganisationDomainNameID" INTEGER NOT NULL,
	"OrganisationID" INTEGER NOT NULL,
	"OrganisationGUID" TEXT NULL,
	"OrganisationDomainNameRelationship" TEXT NULL,
	"DomainNameID" INTEGER NULL,
	"DomainNameGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ORGANISATIONFORTHREATACTORTTP" (
	"ThreatActorTTPOrganisationID" INTEGER NOT NULL,
	"ThreatActorTTPID" INTEGER NOT NULL,
	"ThreatActorTTPGUID" TEXT NULL,
	"OrganisationID" INTEGER NOT NULL,
	"OrganisationGUID" TEXT NULL,
	"Information_Source" TEXT NULL,
	"ConfidenceLevel" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"notes" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ORGANISATIONLICENSE" (
	"OrganisationLicenseID" INTEGER NOT NULL,
	"OrganisationID" INTEGER NOT NULL,
	"LicenseID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "ORGANISATIONPOLICY" (
	"OrganisationPolicyID" INTEGER NOT NULL,
	"OrganisationID" INTEGER NOT NULL,
	"PolicyID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ORGANISATIONPROJECT" (
	"OrganisationProjectID" INTEGER NOT NULL,
	"OrganisationID" INTEGER NULL,
	"OrganisationGUID" TEXT NULL,
	"OrganisationProjectRelationship" TEXT NULL,
	"OrganisationProjectDescription" TEXT NULL,
	"ProjectID" INTEGER NULL,
	"ProjectGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromdate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ORGANISATIONRISKSCORE" (
	"EnterpriseRiskScoreID" INTEGER NOT NULL,
	"CreatedDate" DATE NULL,
	"OrganisationID" INTEGER NULL,
	"RiskScore" DOUBLE PRECISION NULL
);

CREATE TABLE IF NOT EXISTS "TOOLSTAR" (
	"StarID" INTEGER PRIMARY KEY,
	"ToolID" INTEGER NOT NULL,
	"UserID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL
);

CREATE UNIQUE INDEX IF NOT EXISTS ux_toolstar_user_tool ON "TOOLSTAR"("UserID","ToolID")

CREATE INDEX IF NOT EXISTS ix_toolstar_tool ON "TOOLSTAR"("ToolID")

CREATE TABLE IF NOT EXISTS "ORGANISATIONSCHEDULE" (
	"OrganisationScheduleID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "ORGANISATIONTAG" (
	"OrganisationTagID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "ORGANISATIONTECHNOLOGY" (
	"OrganisationTechnologyID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "ORGANISATIONWORKINGHOURS" (
	"OrganisationWorkingHoursID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "ORGANIZATIONALUNIT" (
	"OrganizationalUnitID" INTEGER NOT NULL,
	"OrganizationalUnitGUID" TEXT NULL,
	"OUName" TEXT NOT NULL,
	"OUDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ValidityID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ORGANIZATIONALUNITFORORGANISATION" (
	"OrganisationUnitsID" INTEGER NOT NULL,
	"OrganisationID" INTEGER NOT NULL,
	"OrganisationGUID" TEXT NULL,
	"OrganizationalUnitID" INTEGER NOT NULL,
	"OrganizationalUnitGUID" TEXT NULL,
	"OUChildName" TEXT NULL,
	"OUChildDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ORGANIZATIONALUNITPOLICY" (
	"OrganizationalUnitPolicyID" INTEGER NOT NULL,
	"OrganizationalUnitID" INTEGER NOT NULL,
	"OrganizationalUnitGUID" TEXT NULL,
	"OrganizationalUnitRelationship" TEXT NULL,
	"PolicyID" INTEGER NOT NULL,
	"PolicyGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "OS" (
	"OSID" INTEGER NOT NULL,
	"Operating_System_Name" TEXT NULL,
	"OSname" TEXT NOT NULL,
	"OSversion" TEXT NULL,
	"LocaleID" INTEGER NULL,
	"OSlang" TEXT NULL,
	"OSSP" TEXT NULL,
	"Platform" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "OSCLASS" (
	"OSClassID" INTEGER NOT NULL,
	"OSClassGUID" TEXT NULL,
	"Operating_System_Class_Description" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "OSFAMILY" (
	"OSFamilyID" INTEGER NOT NULL,
	"FamilyName" TEXT NULL,
	"FamilyDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "OSFAMILYFOROS" (
	"OSFamilyOSID" INTEGER NOT NULL,
	"OSID" INTEGER NOT NULL,
	"OSFamilyID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "OSFAMILYPLATFORM" (
	"OSFamilyPlatformID" INTEGER NOT NULL,
	"OSFamilyID" INTEGER NULL,
	"PlatformID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "OSILAYER" (
	"OSILayerID" INTEGER NOT NULL,
	"OSILayerName" TEXT NOT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "OSILAYERFORATTACKSURFACE" (
	"AttackSurfaceOSILayerID" INTEGER NOT NULL,
	"OSILayerID" INTEGER NOT NULL,
	"AttackSurfaceID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "OSINSTRUCTIONMEMORYADDRESS" (
	"OSInstructionMemoryAddressID" INTEGER NOT NULL,
	"OSID" INTEGER NOT NULL,
	"InstructionID" INTEGER NOT NULL,
	"MemoryAddressID" INTEGER NOT NULL,
	"OSPatchLevelID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"CollectionMethodID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "OSPATCH" (
	"OSPatchID" INTEGER NOT NULL,
	"OSPatchGUID" TEXT NULL,
	"OSID" INTEGER NULL,
	"OSGUID" TEXT NULL,
	"PatchID" INTEGER NULL,
	"PatchGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"CollectionMethodID" INTEGER NULL,
	"CollectionMethodGUID" TEXT NULL,
	"TrustLevelID" INTEGER NULL,
	"TrustLevelGUID" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "OSPATCHLEVEL" (
	"OSPatchLevelID" INTEGER NOT NULL,
	"OSPatchLevelGUID" TEXT NOT NULL,
	"OSPatchLevelDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "OSPATCHLEVELPATCH" (
	"OSPatchesID" INTEGER NOT NULL,
	"OSPatchLevelID" INTEGER NOT NULL,
	"OSPatchID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "OUTPUTFIELD" (
	"OutputFieldID" INTEGER NOT NULL,
	"FieldID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "OWASPTOP10" (
	"OWASPTOP10ID" INTEGER NOT NULL,
	"OWASPTOP10GUID" TEXT NULL,
	"OWASPTOP10RefID" TEXT NULL,
	"OWASPName" TEXT NOT NULL,
	"OWASPDescription" TEXT NULL,
	"Detectability" TEXT NULL,
	"Rank" INTEGER NOT NULL,
	"YearTop10" INTEGER NULL,
	"ReferenceURL" TEXT NULL,
	"OWASPTOP10Type" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"CollectionMethodID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"ConfidenceReasonID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "OWASPTOP10ATTACKVECTOR" (
	"OWASPTOP10ID" INTEGER NOT NULL,
	"AttackVectorID" INTEGER NOT NULL,
	"ExploitabilityLevel" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "OWASPTOP10DEFENSETOOLTYPE" (
	"OWASPTOP10ID" INTEGER NOT NULL,
	"DefenseToolTypeID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "OWASPTOP10DETECTABILITY" (
	"OWASPTOP10ID" INTEGER NOT NULL,
	"DetectabilityID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "OWASPTOP10EXPLOITABILITY" (
	"OWASPTOP10ExploitabilityID" INTEGER NOT NULL,
	"OWASPTOP10ID" INTEGER NOT NULL,
	"ExploitabilityID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "OWASPTOP10IMPACT" (
	"OWASPTOP10ID" INTEGER NOT NULL,
	"ImpactID" INTEGER NOT NULL,
	"ImpactSeverity" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "OWASPTOP10MAPPING" (
	"OWASPTOP10MappingID" INTEGER NOT NULL,
	"OWASPTOP10RefID" INTEGER NOT NULL,
	"OWASPNameRef" TEXT NULL,
	"RankRef" INTEGER NULL,
	"YearRef" INTEGER NULL,
	"OWASPTOP10SubjectID" INTEGER NOT NULL,
	"OWASPNameSubject" TEXT NULL,
	"RankSubject" INTEGER NULL,
	"YearSubject" INTEGER NULL,
	"CreationDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "OWASPTOP10PREVALENCE" (
	"OWASPTOP10ID" INTEGER NOT NULL,
	"PrevalenceID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "OWASPTOP10REFERENCE" (
	"OWASPTOP10ID" INTEGER NOT NULL,
	"ReferenceID" INTEGER NOT NULL,
	"BLOB" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "OWASPTOP10TOOLINFORMATION" (
	"OWASPTOP10ID" INTEGER NOT NULL,
	"ToolInformationID" INTEGER NOT NULL,
	"Relationship" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "OWNERSHIP" (
	"OwnershipID" INTEGER NOT NULL,
	"OwnershipName" TEXT NULL,
	"OwnershipDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"EnumerationVersionID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "PACKAGEINTENT" (
	"PackageIntentID" INTEGER NOT NULL,
	"PackageIntentGUID" TEXT NULL,
	"PackageIntentName" TEXT NULL,
	"PackageIntentDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromdate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"ImportanceID" INTEGER NULL,
	"EnumerationVersionID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "PACKAGING" (
	"PackagingID" INTEGER NOT NULL,
	"PackagingGUID" TEXT NULL,
	"PackagingLayerName" TEXT NOT NULL,
	"PackagingDescription" TEXT NULL,
	"is_encrypted" INTEGER NULL,
	"is_compressed" INTEGER NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"RepositoryID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"ConfidenceReasonID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "PACKAGINGCOMPRESSION" (
	"PackagingCompressionID" INTEGER NOT NULL,
	"PackagingCompressionGUID" TEXT NULL,
	"PackagingCompressionDescription" TEXT NULL,
	"PackagingID" INTEGER NOT NULL,
	"PackagingGUID" TEXT NULL,
	"CompressionID" INTEGER NOT NULL,
	"CompressionGUID" TEXT NULL,
	"LayerOrder" INTEGER NOT NULL,
	"CompressionPassword" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"CollectionMethodID" INTEGER NULL,
	"CollectionToolID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"ConfidenceReasonID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "PACKAGINGENCODING" (
	"PackagingEncodingID" INTEGER NOT NULL,
	"PackagingEncodingGUID" TEXT NULL,
	"PackagingID" INTEGER NOT NULL,
	"PackagingGUID" TEXT NULL,
	"EncodingID" INTEGER NOT NULL,
	"EncodingGUID" TEXT NULL,
	"LayerOrder" INTEGER NOT NULL,
	"algorithm" TEXT NULL,
	"character_set" TEXT NULL,
	"CharacterSetID" INTEGER NULL,
	"custom_character_set_ref" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"CollectionMethodID" INTEGER NULL,
	"CollectionToolID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "PACKAGINGENCRYPTION" (
	"PackagingEncryptionID" INTEGER NOT NULL,
	"PackagingEncryptionGUID" TEXT NULL,
	"PackagingID" INTEGER NOT NULL,
	"PackagingGUID" TEXT NULL,
	"EncryptionID" INTEGER NOT NULL,
	"EncryptionGUID" TEXT NULL,
	"LayerOrder" INTEGER NOT NULL,
	"encryption_key" TEXT NULL,
	"encryption_key_ref" TEXT NULL,
	"PackagingEncryptionDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"CollectionMethodID" INTEGER NULL,
	"CollectionToolID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"ConfidenceReasonID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "PARAGRAPH" (
	"ParagraphID" INTEGER NOT NULL,
	"SectionID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "PARAMETER" (
	"ParameterID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "PARAMETERDESCRIPTION" (
	"ParameterDescriptionID" INTEGER NOT NULL,
	"ParameterID" INTEGER NOT NULL,
	"DescriptionID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "PARAMETERSFORPROVIDER" (
	"ID" INTEGER NOT NULL,
	"ServiceCategoryID" INTEGER NOT NULL,
	"Strategy" TEXT NULL,
	"Policy" TEXT NULL,
	"ProviderID" INTEGER NOT NULL,
	"Parameters" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "PARAMETERTAG" (
	"ParameterTagID" INTEGER NOT NULL,
	"ParameterID" INTEGER NOT NULL,
	"TagID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "PASSWORDQUESTION" (
	"PasswordQuestionID" INTEGER NOT NULL,
	"Label" TEXT NULL,
	"Value" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "PATCH" (
	"PatchID" INTEGER NOT NULL,
	"PatchGUID" TEXT NULL,
	"PatchVocabularyID" TEXT NULL,
	"PatchTitle" TEXT NULL,
	"PatchDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"RepositoryID" INTEGER NULL,
	"TrustLevelID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "PATCHFILE" (
	"PatchFileID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "PATCHREFERENCE" (
	"PatchReferenceID" INTEGER NOT NULL,
	"PatchID" INTEGER NOT NULL,
	"PatchGUID" TEXT NULL,
	"PatchReferenceRelationship" TEXT NULL,
	"PatchReferenceDescription" TEXT NULL,
	"ReferenceID" INTEGER NOT NULL,
	"ReferenceGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "PATCHREPOSITORY" (
	"PatchRepositoryID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "PATTERNFIELDGROUP" (
	"PatternFieldGroupID" INTEGER NOT NULL,
	"ConditionApplicationID" INTEGER NULL,
	"apply_condition" TEXT NULL,
	"bit_mask" TEXT NULL,
	"ConditionID" INTEGER NULL,
	"condition" TEXT NULL,
	"has_changed" INTEGER NULL,
	"PatternTypeID" INTEGER NULL,
	"pattern_type" TEXT NULL,
	"regex_syntax" TEXT NULL,
	"trend" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "PATTERNTYPE" (
	"PatternTypeID" INTEGER NOT NULL,
	"PatternTypeName" TEXT NOT NULL,
	"PatternTypeDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "PAYLOAD" (
	"PayloadID" INTEGER NOT NULL,
	"AttackPayloadID" INTEGER NULL,
	"PayloadGUID" TEXT NULL,
	"PayloadName" TEXT NULL,
	"PayloadText" TEXT NULL,
	"PayloadDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "PCAPFILE" (
	"PCAPFileID" INTEGER NOT NULL,
	"FileID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "PDFFILE" (
	"PDFFileID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "PERFORMANCEREQUIREMENT" (
	"PerformanceRequirementID" INTEGER NOT NULL,
	"RequirementID" INTEGER NULL,
	"RequirementGUID" TEXT NULL,
	"PerformanceRequirementGUID" TEXT NULL,
	"PerformanceRequirementTitle" TEXT NULL,
	"PerformanceRequirementDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "PERIMETER" (
	"PerimeterID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "PERIMETERDESCRIPTION" (
	"PerimeterDescriptionID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "PERIMETERZONE" (
	"PerimeterZoneID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "PERMISSION" (
	"PermissionID" INTEGER NOT NULL,
	"PermissionName" TEXT NULL,
	"PermissionDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"TrustLevelID" INTEGER NULL,
	"CreationObjectID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "PERMISSIONDESCRIPTION" (
	"PermissionDescriptionID" INTEGER NOT NULL,
	"PermissionID" INTEGER NOT NULL,
	"DescriptionID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "PERSISTENCEPROPERTIES" (
	"PersistencePropertiesID" INTEGER NOT NULL,
	"PersistencePropertiesName" TEXT NULL,
	"PersistencePropertiesDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"EnumerationVersionID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "PERSISTENCESTRATEGICOBJECTIVE" (
	"PersistenceStrategicObjectiveID" INTEGER NOT NULL,
	"PersistenceStrategicObjectiveName" TEXT NULL,
	"PersistenceStrategicObjectiveDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"EnumerationVersionID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "PERSISTENCETACTICALOBJECTIVE" (
	"PersistenceTacticalObjectiveID" INTEGER NOT NULL,
	"PersistenceTacticalObjectiveName" TEXT NULL,
	"PersistenceTacticalObjectiveDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"VocabularyID" INTEGER NULL,
	"EnumerationVersionID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "PERSON" (
	"PersonID" INTEGER NOT NULL,
	"PrecedingTitle" TEXT NULL,
	"Title" TEXT NULL,
	"FirstName" TEXT NULL,
	"MiddleName" TEXT NULL,
	"LastNamePrefix" TEXT NULL,
	"LastName" TEXT NULL,
	"FullName" TEXT NULL,
	"OtherName" TEXT NULL,
	"Alias" TEXT NULL,
	"Suffix" TEXT NULL,
	"GeneralSuffix" TEXT NULL,
	"PersonFunction" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"ModifiedDate" TEXT NULL,
	"birthdate" TEXT NULL,
	"BLOB" TEXT NULL,
	"TrustLevelID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"email" TEXT NULL,
	-- Org-chart / directory fields, aligned with Microsoft Entra ID / Active Directory (see /org-chart)
	"ManagerPersonID" INTEGER NULL,    -- org-chart parent edge (Entra/AD manager)
	"JobTitle" TEXT NULL, "Department" TEXT NULL, "CompanyName" TEXT NULL, "OfficeLocation" TEXT NULL,
	"UserPrincipalName" TEXT NULL, "EmployeeID" TEXT NULL, "EmployeeType" TEXT NULL,
	"EntraObjectID" TEXT NULL, "ObjectGUID" TEXT NULL, "OnPremisesSamAccountName" TEXT NULL,
	"UsageLocation" TEXT NULL, "MobilePhone" TEXT NULL, "BusinessPhone" TEXT NULL, "AccountEnabled" INTEGER NULL,
	"TenantID" INTEGER NULL    -- tenant scope (PERSON was historically a global directory)
);

CREATE TABLE IF NOT EXISTS "PERSONASSURANCE" (
	"PersonAssuranceID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "PERSONBLACKLIST" (
	"PersonBlacklistID" INTEGER NOT NULL,
	"PersonID" INTEGER NOT NULL,
	"OrganisationID" INTEGER NULL,
	"AssetID" INTEGER NULL,
	"PhysicalLocationID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"BLOB" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "PERSONCERTIFICATION" (
	"PersonCertificationID" INTEGER NOT NULL,
	"PersonID" INTEGER NULL,
	"CertificationID" INTEGER NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "PERSONDEVICE" (
	"PersonDeviceID" INTEGER NOT NULL,
	"PersonID" INTEGER NOT NULL,
	"DeviceID" INTEGER NOT NULL,
	"BLOB" TEXT NULL,
	"RACIValue" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"TrustLevelID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "PERSONDOMAINNAME" (
	"PersonDomainNameID" INTEGER NOT NULL,
	"PersonID" INTEGER NULL,
	"PersonGUID" TEXT NULL,
	"PersonDomainNameRelationship" TEXT NULL,
	"DomainNameID" INTEGER NULL,
	"DomainNameGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "PERSONFORAPPLICATION" (
	"ApplicationID" INTEGER NOT NULL,
	"PersonID" INTEGER NOT NULL,
	"RelationShip" TEXT NULL,
	"RACIValue" TEXT NULL,
	"BLOB" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"TrustLevelID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "PERSONFORASSET" (
	"PersonID" INTEGER NOT NULL,
	"AssetID" INTEGER NOT NULL,
	"relationshiptype" TEXT NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"RACIValue" TEXT NULL,
	"TrustLevelID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "PERSONFORINCIDENT" (
	"IncidentPersonID" INTEGER NOT NULL,
	"PersonID" INTEGER NOT NULL,
	"IncidentID" INTEGER NOT NULL,
	"IncidentPersonRole" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "PERSONFORORGANISATION" (
	"PersonOrganisationID" INTEGER NOT NULL,
	"PersonID" INTEGER NOT NULL,
	"OrganisationID" INTEGER NOT NULL,
	"relationshiptype" TEXT NOT NULL,
	"ScheduleID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ValidityID" INTEGER NULL,
	"RACIValue" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"ConfidenceReasonID" INTEGER NULL,
	"TrustLevelID" INTEGER NULL,
	"TrustReasonID" INTEGER NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "PERSONFORPERSONGROUP" (
	"PersonGroupPersonID" INTEGER NOT NULL,
	"PersonGroupID" INTEGER NOT NULL,
	"PersonID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "PERSONFORPROJECT" (
	"ProjectPersonID" INTEGER NOT NULL,
	"ProjectID" INTEGER NOT NULL,
	"ProjectGUID" TEXT NULL,
	"PersonID" INTEGER NOT NULL,
	"PersonGUID" TEXT NULL,
	"PersonRole" TEXT NOT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"TrustLevelID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "PERSONFORTHREATACTORTTP" (
	"ThreatActorTTPPersonID" INTEGER NOT NULL,
	"ThreatActorTTPPersonGUID" TEXT NULL,
	"PersonID" INTEGER NOT NULL,
	"PersonGUID" TEXT NULL,
	"ThreatActorTTPPersonRelationship" TEXT NULL,
	"ThreatActorTTPID" INTEGER NOT NULL,
	"ThreatActorTTPGUID" TEXT NULL,
	"Information_Source" TEXT NULL,
	"ConfidenceLevel" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"notes" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "PERSONGEOLOCATION" (
	"PersonGeoLocationID" INTEGER NOT NULL,
	"PersonID" INTEGER NOT NULL,
	"PersonGUID" TEXT NULL,
	"GeoLocationID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "PERSONGROUP" (
	"PersonGroupID" INTEGER NOT NULL,
	"PersonGroupName" TEXT NOT NULL,
	"PersonGroupDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"TrustLevelID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "PERSONLICENSE" (
	"PersonLicenseID" INTEGER NOT NULL,
	"PersonID" INTEGER NOT NULL,
	"PersonGUID" TEXT NULL,
	"LicenseID" INTEGER NOT NULL,
	"LicenseGUID" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "PERSONPERMISSION" (
	"PersonPermissionID" INTEGER NOT NULL,
	"PersonID" INTEGER NOT NULL,
	"PermissionID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "PERSONPHYSICALLOCATION" (
	"PersonPhysicalLocationID" INTEGER NOT NULL,
	"PersonID" INTEGER NOT NULL,
	"PersonGUID" TEXT NULL,
	"PhysicalLocationID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "PERSONSCHEDULE" (
	"PersonScheduleID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "PERSONSKILL" (
	"PersonSkillID" INTEGER NOT NULL,
	"PersonID" INTEGER NULL,
	"PersonGUID" TEXT NULL,
	"SkillID" INTEGER NULL,
	"SkillGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "PERSONTAG" (
	"PersonTagID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "PERSONWHITELIST" (
	"PersonWhitelistID" INTEGER NOT NULL,
	"PersonID" INTEGER NOT NULL,
	"OrganisationID" INTEGER NULL,
	"AssetID" INTEGER NULL,
	"PhysicalLocationID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"BLOB" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "PERSONWORKINGHOURS" (
	"PersonWorkingHoursID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "PGPSIGNATURE" (
	"PGPSignatureID" INTEGER NOT NULL,
	"SignatureID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "PHASE" (
	"PhaseID" INTEGER NOT NULL,
	"PhaseGUID" TEXT NULL,
	"PhaseName" TEXT NULL,
	"PhaseDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "PHASEMAPPING" (
	"PhaseMappingID" INTEGER NOT NULL,
	"PhaseRefID" INTEGER NULL,
	"PhaseRefGUID" TEXT NULL,
	"PhaseRelationship" TEXT NULL,
	"PhaseMappingDescription" TEXT NULL,
	"PhaseSubjectID" INTEGER NULL,
	"PhaseSubjectGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "PHASETAG" (
	"PhaseTagID" INTEGER NOT NULL,
	"PhaseID" INTEGER NULL,
	"PhaseGUID" TEXT NULL,
	"TagID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "PHONECALL" (
	"PhoneCallID" INTEGER NOT NULL,
	"TelephoneCallID" INTEGER NULL,
	"duration" TEXT NULL,
	"isSpam" INTEGER NULL,
	"isSocialEngineering" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "PHONECALLTAG" (
	"PhoneCallTagID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "PHYSICALLOCATION" (
	"PhysicalLocationID" INTEGER NOT NULL,
	"PhysicalLocationName" TEXT NOT NULL,
	"PhysicalLocationDescription" TEXT NULL,
	"TrustLevelID" INTEGER NULL,
	"VocabularyID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "PHYSICALLOCATIONASSURANCE" (
	"PhysicalLocationAssuranceID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "PHYSICALLOCATIONCLASSIFICATION" (
	"PhysicalLocationClassificationID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "PHYSICALLOCATIONCONTROL" (
	"PhysicalLocationControlID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "PHYSICALLOCATIONDESCRIPTION" (
	"PhysicalLocationDescriptionID" INTEGER NOT NULL,
	"PhysicalLocationID" INTEGER NOT NULL,
	"PhysicalLocationGUID" TEXT NULL,
	"DescriptionID" INTEGER NULL,
	"DescriptionGUID" TEXT NULL,
	"ConfidentialityLevelID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "PHYSICALLOCATIONRESTRICTION" (
	"PhysicalLocationRestrictionID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "PHYSICALLOCATIONSECURITYCONTROL" (
	"PhysicalLocationSecurityControlID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "PHYSICALLOCATIONTAG" (
	"PhysicalLocationTagID" INTEGER NOT NULL,
	"PhysicalLocationID" INTEGER NULL,
	"PhysicalLocationGUID" TEXT NULL,
	"TagID" INTEGER NULL,
	"TagGUID" TEXT NULL,
	"ConfidentialityLevelID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ValidityID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "PHYSIOLOGICALCHARACTERISTIC" (
	"PhysiologicalCharacteristicID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "PIPEOBJECT" (
	"PipeObjectID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "PKI" (
	"PKIID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "PLAN" (
	"PlanID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "PLATFORM" (
	"PlatformID" INTEGER NOT NULL,
	"PlatformGUID" TEXT NULL,
	"PlatformName" TEXT NOT NULL,
	"VocabularyID" INTEGER NULL,
	"PlatformDescription" TEXT NULL,
	"structuring_format" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "PLATFORMFORCCE" (
	"CCEPlatformID" INTEGER NOT NULL,
	"CCEID" INTEGER NULL,
	"PlatformID" INTEGER NOT NULL,
	"cce_id" TEXT NOT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "PLATFORMFORTECHNICALCONTEXT" (
	"TechnicalContextPlatformID" INTEGER NOT NULL,
	"TechnicalContextPlatformGUID" TEXT NULL,
	"PlatformID" INTEGER NOT NULL,
	"PlatformGUID" TEXT NULL,
	"TechnicalContextID" INTEGER NOT NULL,
	"TechnicalContextGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "PLATFORMMAPPING" (
	"PlatformMappingID" INTEGER NOT NULL,
	"PlaformRefID" INTEGER NULL,
	"PlatformRefGUID" TEXT NULL,
	"PlatformRelationship" TEXT NULL,
	"PlatformSubjectID" INTEGER NULL,
	"PlatformSubjectGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CollectionMethodID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "PLATFORMSPECIFICATION" (
	"PlatformSpecificationID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "PLATFORMTAG" (
	"PlatformTagID" INTEGER NOT NULL,
	"PlatformID" INTEGER NULL,
	"TagID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "PLUGIN" (
	"PluginID" INTEGER NOT NULL,
	"PluginGUID" TEXT NULL,
	"PluginName" TEXT NULL,
	"PluginDescription" TEXT NULL,
	"ModuleID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "PLUGINPARAMETER" (
	"PluginParameterID" INTEGER NOT NULL,
	"PluginID" INTEGER NOT NULL,
	"ParameterID" INTEGER NOT NULL,
	"ordinal_position" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "PLUGINREFERENCE" (
	"PluginReferenceID" INTEGER NOT NULL,
	"PluginID" INTEGER NOT NULL,
	"ReferenceID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ValidityID" INTEGER NULL,
	"VocabularyID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"ConfidenceReasonID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "PLUGINTAG" (
	"PluginTagID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "PLUGINVERSION" (
	"PluginVersionID" INTEGER NOT NULL,
	"PluginID" INTEGER NOT NULL,
	"VersionID" INTEGER NOT NULL,
	"PluginVersionDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ValidityID" INTEGER NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "POLICY" (
	"PolicyID" INTEGER NOT NULL,
	"PolicyName" TEXT NULL,
	"PolicyDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "POLICYTERM" (
	"PolicyTermID" INTEGER NOT NULL,
	"AcronymID" INTEGER NULL,
	"PolicyTerm" TEXT NOT NULL,
	"PolicyTermDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "POLICYTERMFORPOLICY" (
	"PolicyTermForPolicyID" INTEGER NOT NULL,
	"PolicyID" INTEGER NOT NULL,
	"PolicyTermID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "PORT" (
	"PortID" INTEGER NOT NULL,
	"Port_Value" INTEGER NOT NULL,
	"ProtocolID" INTEGER NULL,
	"DefaultProtocolName" TEXT NULL,
	"DefaultServiceName" TEXT NULL,
	"PortName" TEXT NULL,
	"PortDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "PORTFOREXPLOIT" (
	"ExploitPortID" INTEGER NOT NULL,
	"ExploitID" INTEGER NOT NULL,
	"ExploitGUID" TEXT NULL,
	"ExploitPortRelationship" TEXT NULL,
	"PortID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "PORTFORVULNERABILITY" (
	"VulnerabilityPortID" INTEGER NOT NULL,
	"VulnerabilityID" INTEGER NOT NULL,
	"VulnerabilityGUID" TEXT NULL,
	"VulnerabilityPortRelationship" TEXT NULL,
	"PortID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "POSSIBLERESTRICTION" (
	"PossibleRestrictionID" INTEGER NOT NULL,
	"RestrictionHint" TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS "POSTALADDRESS" (
	"PostalAddressID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "PREVALENCE" (
	"PrevalenceID" INTEGER NOT NULL,
	"PrevalenceName" TEXT NOT NULL,
	"PrevalenceDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "PRIORITYLEVEL" (
	"PriorityLevelID" INTEGER NOT NULL,
	"PriorityLevelName" TEXT NULL,
	"PriotityCode" TEXT NULL,
	"Sequencing" TEXT NULL,
	"PriorityLevelDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "PRIVACYNOTIFICATION" (
	"PrivacyNotificationID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "PRIVACYRULE" (
	"PrivacyRuleID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "PRIVILEGE" (
	"PrivilegeID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "PRIVILEGEESCALATIONPROPERTIES" (
	"PrivilegeEscalationPropertiesID" INTEGER NOT NULL,
	"PrivilegeEscalationPropertiesName" TEXT NULL,
	"PrivilegeEscalationPropertiesDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"EnumerationVersionID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "PRIVILEGEESCALATIONSTRATEGICOBJECTIVE" (
	"PrivilegeEscalationStrategicObjectiveID" INTEGER NOT NULL,
	"PrivilegeEscalationStrategicObjectiveName" TEXT NULL,
	"PrivilegeEscalationStrategicObjectiveDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"EnumerationVersionID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "PRIVILEGEESCALATIONTACTICALOBJECTIVE" (
	"PrivilegeEscalationTacticalObjectiveID" INTEGER NOT NULL,
	"PrivilegeEscalationTacticalObjectiveName" TEXT NULL,
	"PrivilegeEscalationTacticalObjectiveDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"EnumerationVersionID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "PRIVILEGESFORROLE" (
	"ID" INTEGER NOT NULL,
	"RoleID" TEXT NULL,
	"Responsible" INTEGER NULL,
	"Accountable" INTEGER NULL,
	"Consulted" INTEGER NULL,
	"Informed" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "PROBINGSTRATEGICOBJECTIVE" (
	"ProbingStrategicObjectiveID" INTEGER NOT NULL,
	"ProbingStrategicObjectiveName" TEXT NULL,
	"ProbingStrategicObjectiveDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"EnumerationVersionID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "PROBINGTACTICALOBJECTIVE" (
	"ProbingTacticalObjectiveID" INTEGER NOT NULL,
	"ProbingTacticalObjectiveName" TEXT NULL,
	"ProbingTacticalObjectiveDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"EnumerationVersionID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "PROBINGTECHNIQUE" (
	"ProbingTechniqueID" INTEGER NOT NULL,
	"ProbingTechniqueGUID" TEXT NULL,
	"TechniqueID" INTEGER NULL,
	"ProbingTechniqueName" TEXT NULL,
	"ProbingTechniqueDescription" TEXT NOT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "PROBINGTECHNIQUEFORATTACKPATTERN" (
	"AttackPatternProbingTechniqueID" INTEGER NOT NULL,
	"AttackPatternID" INTEGER NOT NULL,
	"capec_id" TEXT NULL,
	"ProbingTechniqueID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "PROCEDURE" (
	"ProcedureID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "PROCESS" (
	"ProcessID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "PROCESSACTIONNAME" (
	"ProcessActionNameID" INTEGER NOT NULL,
	"ProcessActionNameName" TEXT NOT NULL,
	"ProcessActionNameDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"EnumerationVersionID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "PROCESSMEMORYACTIONNAME" (
	"ProcessMemoryActionNameID" INTEGER NOT NULL,
	"ProcessMemoryActionNameName" TEXT NOT NULL,
	"ProcessMemoryActionNameDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"EnumerationVersionID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "PROCESSORTYPE" (
	"ProcessorTypeID" INTEGER NOT NULL,
	"ProcessorTypeName" TEXT NOT NULL,
	"ProcessorTypeDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "PROCESSORTYPEMAPPING" (
	"ProcessorTypeMappingID" INTEGER NOT NULL,
	"ProcessorTypeRefID" INTEGER NOT NULL,
	"ProcessorTypeSubjectID" INTEGER NOT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "PROCESSORTYPEREGISTER" (
	"ProcessorTypeID" INTEGER NOT NULL,
	"RegisterID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "PROCESSTHREADACTIONNAME" (
	"ProcessThreadActionNameID" INTEGER NOT NULL,
	"ProcessThreadActionNameName" TEXT NOT NULL,
	"ProcessThreadActionNameDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"EnumerationVersionID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "PRODUCT" (
	"ProductID" INTEGER NOT NULL,
	"ProductGUID" TEXT NULL,
	"ProductName" TEXT NULL,
	"ProductVendor" TEXT NULL,
	"OrganisationID" INTEGER NULL,
	"CPEName" TEXT NULL,
	"ProductEdition" TEXT NULL,
	"ProductUpdate" TEXT NULL,
	"ProductVersion" TEXT NULL,
	"CPEID" INTEGER NULL,
	"ProductLanguage" TEXT NULL,
	"LocaleID" INTEGER NULL,
	"DeviceID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"ProductDescription" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CollectionMethodID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "PRODUCTCATEGORY" (
	"ProductCategoryID" INTEGER NOT NULL,
	"ProductCategoryGUID" TEXT NULL,
	"CategoryID" INTEGER NULL,
	"ProductCategoryName" TEXT NULL,
	"ProductCategoryShortName" TEXT NULL,
	"ProductCategoryDescription" TEXT NULL,
	"OrganisationID" INTEGER NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "PRODUCTCATEGORYFORPRODUCT" (
	"ProductCategoryForProductID" INTEGER NOT NULL,
	"ProductID" INTEGER NOT NULL,
	"ProductGUID" TEXT NULL,
	"ProductCategoryID" INTEGER NOT NULL,
	"ProductCategoryGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CollectionMethodID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "PRODUCTEXPLOIT" (
	"ProductExploitID" INTEGER NOT NULL,
	"ProductID" INTEGER NULL,
	"ProductGUID" TEXT NULL,
	"ExploitID" INTEGER NULL,
	"ExploitGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "PRODUCTFILE" (
	"ProductFileID" INTEGER NOT NULL,
	"ProductID" INTEGER NULL,
	"ProductFileRelationship" TEXT NULL,
	"ProductFileDescription" TEXT NULL,
	"FileID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "PRODUCTFILELIST" (
	"ProductFileListID" INTEGER NOT NULL,
	"ProductID" INTEGER NULL,
	"ProductGUID" TEXT NULL,
	"ProductFileListRelationship" TEXT NULL,
	"ProductFileListDescription" TEXT NULL,
	"FileListID" INTEGER NULL,
	"FileListGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "PRODUCTMAPPING" (
	"ProductMappingID" INTEGER NOT NULL,
	"ProductRefID" INTEGER NULL,
	"ProductRefGUID" TEXT NULL,
	"ProductRelationship" TEXT NULL,
	"ProductMappingDescription" TEXT NULL,
	"ProductSubjectID" INTEGER NULL,
	"ProductSubjectGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "PRODUCTPATCH" (
	"ProductPatchID" INTEGER NOT NULL,
	"ProductID" INTEGER NULL,
	"ProductGUID" TEXT NULL,
	"ProductPatchRelationship" TEXT NULL,
	"ProductPatchDescription" TEXT NULL,
	"PatchID" INTEGER NULL,
	"PatchGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "PRODUCTPLATFORM" (
	"ProductPlaformID" INTEGER NOT NULL,
	"ProductID" INTEGER NULL,
	"ProductGUID" TEXT NULL,
	"ProductPlatformRelationship" TEXT NULL,
	"PlatformID" INTEGER NULL,
	"PlatformGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromdate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CollectionMethodID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "PRODUCTPORT" (
	"ProductPortID" INTEGER NOT NULL,
	"ProductID" INTEGER NULL,
	"ProductGUID" TEXT NULL,
	"ProductPortRelationship" TEXT NULL,
	"PortID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "PRODUCTTAG" (
	"ProductTagID" INTEGER NOT NULL,
	"ProductID" INTEGER NULL,
	"TagID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "PROJECT" (
	"ProjectID" INTEGER NOT NULL,
	"ProjectGUID" TEXT NULL,
	"ProjectName" TEXT NOT NULL,
	"ProjectDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"ExpectedCompletionDate" TEXT NULL,
	"DueDate" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ValidityID" INTEGER NULL,
	"VocabularyID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ConfidentialityLevelID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ImportanceID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "PROJECTDESCRIPTION" (
	"ProjectDescriptionID" INTEGER NOT NULL,
	"ProjectID" INTEGER NULL,
	"ProjectGUID" TEXT NULL,
	"DescriptionID" INTEGER NULL,
	"DescriptionGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "PROJECTFINDING" (
	"ProjectFindingID" INTEGER NOT NULL,
	"ProjectID" INTEGER NULL,
	"ProjectGUID" TEXT NULL,
	"FindingID" INTEGER NULL,
	"FindingGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "PROJECTFORAPPLICATION" (
	"ProjectApplicationID" INTEGER NOT NULL,
	"ProjectID" INTEGER NOT NULL,
	"ProjectGUID" TEXT NULL,
	"ApplicationID" INTEGER NOT NULL,
	"ApplicationGUID" TEXT NULL,
	"PersonID" INTEGER NULL,
	"PersonGUID" TEXT NULL,
	"ProjectDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"OrganisationID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "PROJECTMAPPING" (
	"ProjectMappingID" INTEGER NOT NULL,
	"ProjectRefID" INTEGER NULL,
	"ProjectRefGUID" TEXT NULL,
	"ProjectRelationship" TEXT NULL,
	"ProjectMappingDescription" TEXT NULL,
	"ProjectSubjectID" INTEGER NULL,
	"ProjectSubjectGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "PROJECTMETHODOLOGY" (
	"ProjectMethodologyID" INTEGER NOT NULL,
	"ProjectID" INTEGER NOT NULL,
	"ProjectGUID" TEXT NULL,
	"MethodologyID" INTEGER NOT NULL,
	"MethodologyGUID" TEXT NULL,
	"PersonID" INTEGER NULL,
	"PersonGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"ProjectMethodologyDescription" TEXT NOT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "PROJECTPERSON" (
	"ProjectPersonID" INTEGER NOT NULL,
	"ProjectID" INTEGER NOT NULL,
	"ProjectGUID" TEXT NULL,
	"PersonID" INTEGER NOT NULL,
	"PersonGUID" TEXT NULL,
	"ProjectPersonRole" TEXT NULL,
	"ProjectPersonDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "PROJECTTAG" (
	"ProjectTagID" INTEGER NOT NULL,
	"ProjectID" INTEGER NULL,
	"ProjectGUID" TEXT NULL,
	"TagID" INTEGER NULL,
	"TagGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "PROJECTTASK" (
	"ProjectTaskID" INTEGER NOT NULL,
	"ProjectID" INTEGER NOT NULL,
	"ProjectGUID" TEXT NULL,
	"TaskID" INTEGER NOT NULL,
	"TaskGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"ProjectTaskName" TEXT NULL,
	"ProjectTaskDescription" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "PROJECTTASKFINDING" (
	"ProjectTaskFindingID" INTEGER NOT NULL,
	"ProjectTaskID" INTEGER NULL,
	"ProjectTaskGUID" TEXT NULL,
	"FindingID" INTEGER NULL,
	"FindingGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "PROJECTTASKPERSON" (
	"ProjectTaskPersonID" INTEGER NOT NULL,
	"ProjectTaskID" INTEGER NOT NULL,
	"ProjectTaskGUID" TEXT NULL,
	"PersonID" INTEGER NOT NULL,
	"PersonGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"ProjectTaskPersonRole" TEXT NULL,
	"ProjectTaskDescription" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "PROJECTTECHNIQUE" (
	"ProjectTechniqueID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "PROPERTYTYPE" (
	"PropertyTypeID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "PROTOCOL" (
	"ProtocolID" INTEGER NOT NULL,
	"ProtocolAbbreviation" TEXT NULL,
	"ProtocolName" TEXT NOT NULL,
	"ProtocolDescription" TEXT NULL,
	"ProtocolRFC" TEXT NULL,
	"ProtocolBAF" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"OSILayerID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "PROTOCOLCOMMAND" (
	"ProtocolCommandID" INTEGER NOT NULL,
	"ProtocolID" INTEGER NULL,
	"CommandID" INTEGER NULL,
	"KnownVulnerable" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "PROTOCOLFORPROTOCOL" (
	"ProtocolRelationshipID" INTEGER NOT NULL,
	"ProtocolRefID" INTEGER NOT NULL,
	"ProtocolRelationshipName" TEXT NULL,
	"ProtocolSubjectID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "PROTOCOLHEADER" (
	"ProtocolHeaderID" INTEGER NOT NULL,
	"ProtocolHeaderGUID" TEXT NULL,
	"Protocol_Field_Name" TEXT NULL,
	"Protocol_Field_Description" TEXT NULL,
	"Protocol_Operation_Code" TEXT NULL,
	"Protocol_Data" TEXT NULL,
	"Protocol_Flag_Value" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "PROTOCOLREFERENCE" (
	"ProtocolReferenceID" INTEGER NOT NULL,
	"ProtocolID" INTEGER NULL,
	"ReferenceID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "PROVIDER" (
	"ProviderID" INTEGER NOT NULL,
	"ProviderGUID" TEXT NULL,
	"ProviderName" TEXT NULL,
	"PluginReference" TEXT NULL,
	"ServiceCategoryID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ValidityID" INTEGER NULL,
	"TrustLevelID" INTEGER NULL,
	"TrustReasonID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "PROVIDERSFORACCOUNT" (
	"ProviderAccountID" INTEGER NOT NULL,
	"ProviderID" INTEGER NULL,
	"AccountID" INTEGER NULL,
	"ValidUntil" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "RACIMATRIX" (
	"RACIMatrixID" INTEGER NOT NULL,
	"TaskType" TEXT NULL,
	"TaskID" TEXT NULL,
	"RACIResponsability" TEXT NULL,
	"UserID" TEXT NULL,
	"AccountID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "RACITASK" (
	"RACITaskID" INTEGER NOT NULL,
	"TaskType" TEXT NULL,
	"RACIResponsability" TEXT NULL,
	"UserID" TEXT NULL,
	"AccountID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "RATEFILTER" (
	"RateFilterID" INTEGER NOT NULL,
	"RateFilterContent" TEXT NULL,
	"RateFilterDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "RAWARTIFACT" (
	"RawArtifactID" INTEGER NOT NULL,
	"RawArtifactGUID" TEXT NULL,
	"byte_order" TEXT NULL,
	"is_encrypted" INTEGER NULL,
	"is_compressed" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"CollectionMethodID" INTEGER NULL,
	"SourceID" INTEGER NULL,
	"RepositoryID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "RAWARTIFACTDESCRIPTION" (
	"RawArtifactDescriptionID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "RAWARTIFACTTAG" (
	"RawArtifactTagID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "REASON" (
	"ReasonID" INTEGER NOT NULL,
	"ReasonGUID" TEXT NULL,
	"ReasonName" TEXT NULL,
	"ReasonDescription" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "RECOMMENDATION" (
	"RecommendationID" INTEGER NOT NULL,
	"RecommendationGUID" TEXT NULL,
	"RecommendationVocabularyID" TEXT NULL,
	"RecommendationName" TEXT NULL,
	"RecommendationLevel" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"RecommendationDescription" TEXT NULL,
	"RecommendationRationale" TEXT NULL,
	"RemediationProcedure" TEXT NULL,
	"RecommendationImpact" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"StatusID" INTEGER NULL,
	"ScoringStatusID" INTEGER NULL,
	"LocaleID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "RECOMMENDATIONAUDITPROCEDURE" (
	"RecommendationAuditProcedureID" INTEGER NOT NULL,
	"RecommendationID" INTEGER NOT NULL,
	"AuditProcedureID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"RecommendationAuditProcedureName" TEXT NULL,
	"RecommendationAuditProcedureDescription" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "RECOMMENDATIONCCE" (
	"RecommendationCCEID" INTEGER NOT NULL,
	"RecommendationID" INTEGER NOT NULL,
	"RecommendationGUID" TEXT NULL,
	"CCEID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "RECOMMENDATIONTAG" (
	"RecommendationTagID" INTEGER NOT NULL,
	"RecommendationID" INTEGER NOT NULL,
	"RecommendationGUID" TEXT NULL,
	"TagID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "RECOMMENDATIONTIP" (
	"RecommendationTipID" INTEGER NOT NULL,
	"RecommendationTypeGUID" TEXT NULL,
	"RecommendationID" INTEGER NULL,
	"RecommendationGUID" TEXT NULL,
	"TipID" INTEGER NULL,
	"TipGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "REFERENCE" (
	"ReferenceID" INTEGER NOT NULL,
	"ReferenceGUID" TEXT NULL,
	"ReferenceSourceID" TEXT NULL,
	"Source" TEXT NULL,
	"SourceTrustLevelID" INTEGER NULL,
	"SourceTrustReasonID" INTEGER NULL,
	"ReferenceTitle" TEXT NULL,
	"ReferenceDescription" TEXT NULL,
	"Type" TEXT NULL,
	"ReferenceCategoryID" INTEGER NULL,
	"ReferenceURL" TEXT NULL,
	"ReferenceFilePath" TEXT NULL,
	"lang" TEXT NULL,
	"LocaleID" INTEGER NULL,
	"notes" TEXT NULL,
	"ReferenceVersion" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ValidityID" INTEGER NULL,
	"LastCheckedDate" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"ConfidenceReasonID" INTEGER NULL,
	"TrustLevelID" INTEGER NULL,
	"TrustReasonID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"Reference_Publication" TEXT NULL,
	"Reference_Edition" TEXT NULL,
	"Reference_PubDate" TEXT NULL,
	"Reference_Publisher" TEXT NULL,
	"ReferenceISBN" TEXT NULL,
	"Reference_Date" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "REFERENCEAUTHOR" (
	"ReferenceAuthorID" INTEGER NOT NULL,
	"ReferenceID" INTEGER NOT NULL,
	"AuthorID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "REFERENCECATEGORY" (
	"ReferenceCategoryID" INTEGER NOT NULL,
	"ReferenceCategoryGUID" TEXT NULL,
	"CategoryID" INTEGER NOT NULL,
	"ReferenceCategoryName" TEXT NULL,
	"ReferenceCategoryDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"TrustLevelID" INTEGER NULL,
	"TrustReasonID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "REFERENCECATEGORYTAG" (
	"ReferenceCategoryTagID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "REFERENCECHANGERECORD" (
	"ReferenceChangeRecordID" INTEGER NOT NULL,
	"ReferenceID" INTEGER NOT NULL,
	"ReferenceGUID" TEXT NULL,
	"ChangeRecordID" INTEGER NOT NULL,
	"ChangeRecordGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "REFERENCEDESCRIPTION" (
	"ReferenceDescriptionID" INTEGER NOT NULL,
	"ReferenceID" INTEGER NOT NULL,
	"DescriptionID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "REFERENCEMAPPING" (
	"ReferenceMappingID" INTEGER NOT NULL,
	"ReferenceRefID" INTEGER NULL,
	"RelationShipText" TEXT NULL,
	"ReferenceSubjectID" INTEGER NULL,
	"ReferenceMappingDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "REFERENCETAG" (
	"ReferenceTagID" INTEGER NOT NULL,
	"ReferenceID" INTEGER NOT NULL,
	"ReferenceGUID" TEXT NULL,
	"TagID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "REGEX" (
	"RegexID" INTEGER NOT NULL,
	"RegularExpression" TEXT NULL,
	"RegexDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"TrustLevelID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "REGEXCAPTUREFUNCTION" (
	"RegexCaptureFunctionID" INTEGER NOT NULL,
	"Regex" TEXT NOT NULL,
	"OVALComponentGroupID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "REGEXLANGUAGE" (
	"RegexLanguageID" INTEGER NOT NULL,
	"RegexID" INTEGER NOT NULL,
	"LanguageID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "REGEXREFERENCE" (
	"RegexReferenceID" INTEGER NOT NULL,
	"RegexID" INTEGER NOT NULL,
	"ReferenceID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "REGISTER" (
	"RegisterID" INTEGER NOT NULL,
	"RegisterName" TEXT NOT NULL,
	"RegisterDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "REGISTRYACTIONNAME" (
	"RegistryActionNameID" INTEGER NOT NULL,
	"RegistryActionNameName" TEXT NOT NULL,
	"RegistryActionNameDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"EnumerationVersionID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "REGISTRYDATATYPE" (
	"RegistryDatatypeID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "REGISTRYDATATYPEREFERENCE" (
	"RegistryDatatypeReferenceID" INTEGER NOT NULL,
	"RegistryDatatypeID" INTEGER NOT NULL,
	"ReferenceID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "REGISTRYDATATYPESENUM" (
	"RegistryDatatypesEnumID" INTEGER NOT NULL,
	"RegistryDatatypeName" TEXT NOT NULL,
	"RegistryDatatypeDescription" TEXT NULL,
	"RegistryDatatypeReference" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "REGISTRYHIVEENUM" (
	"RegistryHiveEnumID" INTEGER NOT NULL,
	"RegistryHiveName" TEXT NOT NULL,
	"RegistryHiveDescription" TEXT NULL,
	"RegistryHiveReference" TEXT NULL,
	"ReferenceID" INTEGER NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "REGISTRYSUBKEYS" (
	"RegistrySubkeysID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "REGISTRYSUBKEYSKEYS" (
	"RegistrySubkeysKeysID" INTEGER NOT NULL,
	"RegistrySubkeysID" INTEGER NOT NULL,
	"WindowsRegistryKeyObjectID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"CollectionMethodID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "REGISTRYVALUE" (
	"RegistryValueID" INTEGER NOT NULL,
	"Name" TEXT NULL,
	"Data" TEXT NULL,
	"RegistryDatatypeID" INTEGER NULL,
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

CREATE TABLE IF NOT EXISTS "REGISTRYVALUES" (
	"RegistryValuesID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"CollectionMethodID" INTEGER NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "REGISTRYVALUESREGISTRYVALUE" (
	"RegistryValuesRegistryValueID" INTEGER NOT NULL,
	"RegistryValuesID" INTEGER NOT NULL,
	"RegistryValueID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"CollectionMethodID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "REGULAREXPRESSION" (
	"RegularExpressionID" INTEGER NOT NULL,
	"RegexID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "REGULATORYRISK" (
	"RegulatoryRiskID" INTEGER NOT NULL,
	"RegulatoryRiskGUID" TEXT NULL,
	"RiskDescription" TEXT NOT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "RELATIONSHIPTYPE" (
	"RelationshipTypeID" INTEGER NOT NULL,
	"RelationshipTypeTerm" TEXT NULL,
	"RelationshipTypeDomain" TEXT NULL,
	"RelationshipTypeRange" TEXT NULL,
	"RelationshipTypeDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "RELIABILITY" (
	"ReliabilityID" INTEGER NOT NULL,
	"ReliabilityGUID" TEXT NULL,
	"ReliabilityName" TEXT NULL,
	"ReliabilityDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "RELIABILITYREASON" (
	"ReliabilityReasonID" INTEGER NOT NULL,
	"ReliabilityReasonGUID" TEXT NULL,
	"ReasonID" INTEGER NULL,
	"ReasonGUID" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "REMOTEMACHINEMANIPULATIONSTRATEGICOBJECTIVE" (
	"RemoteMachineManipulationStrategicObjectiveID" INTEGER NOT NULL,
	"RemoteMachineManipulationStrategicObjectiveName" TEXT NULL,
	"RemoteMachineManipulationStrategicObjectiveDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"EnumerationVersionID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "REMOTEMACHINEMANIPULATIONTACTICALOBJECTIVE" (
	"RemoteMachineManipulationTacticalObjectiveID" INTEGER NOT NULL,
	"RemoteMachineManipulationTacticalObjectiveName" TEXT NULL,
	"RemoteMachineManipulationTacticalObjectiveDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"EnumerationVersionID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "REPORT" (
	"ReportID" INTEGER NOT NULL,
	"ReportGUID" TEXT NULL,
	"ReportContent" TEXT NULL,
	"ReferenceID" INTEGER NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "REPORTFORREPORTS" (
	"ReportsID" INTEGER NOT NULL,
	"ReportID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "REPORTREQUEST" (
	"ReportRequestID" INTEGER NOT NULL,
	"ARFReportRequestID" TEXT NOT NULL,
	"ReportRequestContent" TEXT NULL,
	"ReferenceID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "REPORTREQUESTFORREPORTREQUESTS" (
	"ReportRequestsID" INTEGER NOT NULL,
	"ReportRequestID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "REPORTREQUESTS" (
	"ReportRequestsID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "REPORTS" (
	"ReportsID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "REPOSITORY" (
	"RepositoryID" INTEGER NOT NULL,
	"RepositoryGUID" TEXT NULL,
	"RepositoryName" TEXT NULL,
	"RepositoryDescription" TEXT NULL,
	"RepositoryURL" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ValidityID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"ConfidenceReasonID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"TrustLevelID" INTEGER NULL,
	"TrustReasonID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "REPOSITORYRESTRICTION" (
	"RepositoryRestrictionID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "REPUTATION" (
	"ReputationID" INTEGER NOT NULL,
	"ReputationGUID" TEXT NULL,
	"ReputationTitle" TEXT NULL,
	"ReputationDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "REQUIREMENT" (
	"RequirementID" INTEGER NOT NULL,
	"RequirementGUID" TEXT NULL,
	"RequirementTitle" TEXT NULL,
	"RequirementDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "REQUIREMENTCATEGORY" (
	"RequirementCategoryID" INTEGER NOT NULL,
	"RequirementID" INTEGER NULL,
	"CategoryID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "REQUIREMENTDESCRIPTION" (
	"RequirementDescriptionID" INTEGER NOT NULL,
	"RequirementID" INTEGER NULL,
	"DescriptionID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "REQUIREMENTMAPPING" (
	"RequirementMappingID" INTEGER NOT NULL,
	"RequirementRefID" INTEGER NULL,
	"RequirementRefGUID" TEXT NULL,
	"RequirementSubjectID" INTEGER NULL,
	"RequirementSubjectGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "RESTRICTION" (
	"RestrictionID" INTEGER NOT NULL,
	"OperationEnumerationValue" TEXT NOT NULL,
	"VariableValue" TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS "RESULTENUMERATION" (
	"ResultEnumerationID" INTEGER NOT NULL,
	"ResultEnumerationValue" TEXT NOT NULL,
	"ResultEnumerationDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "RISKRATING" (
	"RiskRatingID" INTEGER NOT NULL,
	"RiskRatingGUID" TEXT NULL,
	"RiskRatingName" TEXT NULL,
	"RiskRatingDescription" TEXT NULL,
	"MethodologyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"TrustLevelID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ROLE" (
	"RoleID" INTEGER NOT NULL,
	"RoleGUID" TEXT NULL,
	"RoleName" TEXT NULL,
	"RoleDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ROPCHAIN" (
	"ROPChainID" INTEGER NOT NULL,
	"ROPChainName" TEXT NOT NULL,
	"ROPChainDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ROPCHAININSTRUCTION" (
	"ROPChainID" INTEGER NOT NULL,
	"InstructionID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "ROPCHAINREFERENCE" (
	"ROPChainID" INTEGER NOT NULL,
	"ReferenceID" INTEGER NOT NULL,
	"BLOB" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "ROPGADGET" (
	"ROPGadgetID" INTEGER NOT NULL,
	"ROPGadgetGUID" TEXT NULL,
	"ROPGadgetName" TEXT NULL,
	"ROPGadgetDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ReliabilityID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ROPGADGETFORROPCHAIN" (
	"ROPChainID" INTEGER NOT NULL,
	"ROPGadgetID" INTEGER NOT NULL,
	"ROPGadgetOrder" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "ROPGADGETINSTRUCTION" (
	"ROGGadgetID" INTEGER NOT NULL,
	"InstructionID" INTEGER NOT NULL,
	"InstructionOrder" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "ROPGADGETTAG" (
	"ROPGadgetTagID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "RSAPUBLICKEY" (
	"RSAPublicKeyID" INTEGER NOT NULL,
	"RSAPublicKeyGUID" TEXT NULL,
	"Modulus" TEXT NOT NULL,
	"Exponent" INTEGER NOT NULL,
	"isEncrypted" INTEGER NULL,
	"CreationDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "RSAPUBLICKEYACCESSRECORD" (
	"RSAPlublicKeyAccessRecordID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "RULE" (
	"RuleID" INTEGER NOT NULL,
	"RuleGUID" TEXT NULL,
	"RuleTitle" TEXT NULL,
	"RuleVersion" INTEGER NULL,
	"RuleDescription" TEXT NULL,
	"RuleContent" TEXT NULL,
	"RuleVocabularyID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "RULECATEGORIES" (
	"RuleCategoriesID" INTEGER NOT NULL,
	"RuleID" INTEGER NULL,
	"RuleCategoryID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "RULECATEGORY" (
	"RuleCategoryID" INTEGER NOT NULL,
	"CategoryID" INTEGER NULL,
	"RuleCategoryName" TEXT NULL,
	"RuleCategoryDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "RULEPRODUCT" (
	"RuleProductID" INTEGER NOT NULL,
	"RuleID" INTEGER NULL,
	"RuleProductRelationship" TEXT NULL,
	"ProductID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "RULEPROTOCOL" (
	"RuleProtocolID" INTEGER NOT NULL,
	"RuleID" INTEGER NULL,
	"ProtocolID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "RULEREFERENCE" (
	"RuleReferenceID" INTEGER NOT NULL,
	"RuleID" INTEGER NULL,
	"ReferenceID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "SCENARIO" (
	"ScenarioID" INTEGER NOT NULL,
	"ScenarioName" TEXT NOT NULL,
	"ScenarioDescription" TEXT NULL,
	"BLOB" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "SCENARIOFOROWASPTOP10" (
	"OWASPTOP10ScenarioID" INTEGER NOT NULL,
	"OWASPTOP10ID" INTEGER NOT NULL,
	"ScenarioID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "SCHEDULE" (
	"ScheduleID" INTEGER NOT NULL,
	"ScheduleGUID" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "SCHEMA" (
	"SchemaID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "SCORINGFORMULA" (
	"ScoringFormulaID" INTEGER NOT NULL,
	"ScoringFormulaName" TEXT NOT NULL,
	"ScoringFormulaAbbreviation" TEXT NULL,
	"ScoringFormulaDescription" TEXT NULL,
	"ScoringFormulaIndividualScore" TEXT NULL,
	"ScoringFormulaHostScore" TEXT NULL,
	"ScoringFormulaNotes" TEXT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "SCORINGSTATUS" (
	"ScoringStatusID" INTEGER NOT NULL,
	"ScoringStatusName" TEXT NULL,
	"ScoringStatusValue" TEXT NULL,
	"ScoringStatusDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "SCORINGSYSTEM" (
	"ScoringSystemID" INTEGER NOT NULL,
	"ScoringSystemName" TEXT NOT NULL,
	"ScoringSystemDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "SCORINGSYSTEMDESCRIPTION" (
	"ScoringSystemDescriptionID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "SCORINGSYSTEMFORMULAS" (
	"ScoringSystemID" INTEGER NOT NULL,
	"ScoringFormulaID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "SCORINGSYSTEMREFERENCE" (
	"ScoringSystemID" INTEGER NOT NULL,
	"ReferenceID" INTEGER NOT NULL,
	"BLOB" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "SCORINGSYSTEMTAG" (
	"ScoringSystemTagID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "SCRIPT" (
	"ScriptID" INTEGER NOT NULL,
	"CommandsID" INTEGER NOT NULL,
	"CommandID" INTEGER NOT NULL,
	"CommandArgumentValue" TEXT NULL,
	"ScriptName" TEXT NULL,
	"ScriptDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "SCRIPTDESCRIPTION" (
	"ScriptDescriptionID" INTEGER NOT NULL,
	"ScriptID" INTEGER NOT NULL,
	"DescriptionID" INTEGER NOT NULL,
	"CreatedDate" TEXT NOT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "SCRIPTTAG" (
	"ScriptTagID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "SCRIPTVERSION" (
	"ScriptVersionID" INTEGER NOT NULL,
	"ScriptID" INTEGER NOT NULL,
	"VersionID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "SECONDARYOPERATIONPROPERTIES" (
	"SecondaryOperationPropertiesID" INTEGER NOT NULL,
	"SecondaryOperationPropertiesName" TEXT NULL,
	"SecondaryOperationPropertiesDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"EnumerationVersionID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "SECONDARYOPERATIONSTRATEGICOBJECTIVE" (
	"SecondaryOperationStrategicObjectiveID" INTEGER NOT NULL,
	"SecondaryOperationStrategicObjectiveName" TEXT NULL,
	"SecondaryOperationStrategicObjectiveDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"EnumerationVersionID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "SECONDARYOPERATIONTACTICALOBJECTIVE" (
	"SecondaryOperationTacticalObjectiveID" INTEGER NOT NULL,
	"SecondaryOperationTacticalObjectiveName" TEXT NULL,
	"SecondaryOperationTacticalObjectiveDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"VocabularyID" INTEGER NULL,
	"EnumerationVersionID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "SECTION" (
	"SectionID" INTEGER NOT NULL,
	"SectionName" TEXT NULL,
	"SectionDescription" TEXT NULL,
	"SectionValue" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromdate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "SECTIONDESCRIPTION" (
	"SectionDescriptionID" INTEGER NOT NULL,
	"SectionID" INTEGER NOT NULL,
	"DescriptionID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "SECTIONREFERENCE" (
	"SectionReferenceID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "SECTIONTAG" (
	"SectionTagID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "SECURITYATTRIBUTE" (
	"SecurityAttributeID" INTEGER NOT NULL,
	"SecurityAttributeCategoryID" INTEGER NOT NULL,
	"SecurityAttributeName" TEXT NOT NULL,
	"data_disclosure" TEXT NULL,
	"SecurityAttributeStateID" INTEGER NULL,
	"notes" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"durationvalue" INTEGER NULL,
	"durationunit" TEXT NULL,
	"IncidentID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "SECURITYATTRIBUTECATEGORY" (
	"SecurityAttributeCategoryID" INTEGER NOT NULL,
	"SecurityAttributeCategoryName" TEXT NOT NULL,
	"SecurityAttributeCategoryDescription" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "SECURITYATTRIBUTESTATE" (
	"SecurityAttributeStateID" INTEGER NOT NULL,
	"SecurityAttributeCategoryID" INTEGER NOT NULL,
	"SecurityAttributeStateName" TEXT NOT NULL,
	"SecurityAttributeStateDescription" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "SECURITYATTRIBUTEVARIETY" (
	"SecurityAttributeVarietyID" INTEGER NOT NULL,
	"SecurityAttributeCategoryID" INTEGER NOT NULL,
	"SecurityAttributeVarietyName" TEXT NOT NULL,
	"SecurityAttributeVarietyDescription" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "SECURITYCHANGE" (
	"SecurityChangeID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "SECURITYCOMPROMISEENUM" (
	"SecurityCompromiseEnumID" INTEGER NOT NULL,
	"SecurityCompromiseEnumName" TEXT NULL,
	"SecurityCompromiseEnumDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"EnumerationVersionID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "SECURITYCONTROL" (
	"SecurityControlID" INTEGER NOT NULL,
	"SecurityControlGUID" TEXT NULL,
	"ControlID" INTEGER NULL,
	"SecurityControlName" TEXT NOT NULL,
	"SecurityControlAbbrevation" TEXT NULL,
	"SecurityControlDescription" TEXT NULL,
	"BaselineImpact" TEXT NULL,
	"StatementDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"SecurityControlVocabularyID" TEXT NULL,
	"SecurityControlFamilyID" INTEGER NULL,
	"SecurityControlParentID" INTEGER NULL,
	"SecurityControlTypeID" INTEGER NULL,
	"RepositoryID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"TrustLevelID" INTEGER NULL,
	"TrustReasonID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ReliabilityID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "SECURITYCONTROLCHANGERECORD" (
	"SecurityControlChangeRecordID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "SECURITYCONTROLDESCRIPTION" (
	"SecurityControlDescriptionID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "SECURITYCONTROLENVIRONMENT" (
	"SecurityControlEnvironmentID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "SECURITYCONTROLFAMILY" (
	"SecurityControlFamilyID" INTEGER NOT NULL,
	"SecurityControlFamilyName" TEXT NOT NULL,
	"SecurityControlFamilyDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "SECURITYCONTROLFAMILYTAG" (
	"SecurityControlFamilyTagID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "SECURITYCONTROLFORHUMANRISK" (
	"HumanRiskSecurityControlID" INTEGER NOT NULL,
	"HumanRiskID" INTEGER NOT NULL,
	"SecurityControlID" INTEGER NOT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"BLOB" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "SECURITYCONTROLMAPPING" (
	"SecurityControlMappingID" INTEGER NOT NULL,
	"SecurityControlRefID" INTEGER NOT NULL,
	"SecurityControlRefGUID" TEXT NULL,
	"SecurityControlRelationship" TEXT NULL,
	"SecurityControlMappingDescription" TEXT NULL,
	"SecurityControlSubjectID" INTEGER NOT NULL,
	"SecurityControlSubjectGUID" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "SECURITYCONTROLPRIORITY" (
	"SecurityControlPriorityID" INTEGER NOT NULL,
	"SecurityControlID" INTEGER NULL,
	"PriorityLevelID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "SECURITYCONTROLREFERENCE" (
	"SecurityControlReferenceID" INTEGER NOT NULL,
	"SecurityControlID" INTEGER NULL,
	"SecurityControlGUID" TEXT NULL,
	"ReferenceID" INTEGER NULL,
	"ReferenceGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "SECURITYCONTROLSTRENGTH" (
	"SecurityControlStrenghtID" INTEGER NOT NULL,
	"SecurityControlID" INTEGER NOT NULL,
	"ControlStrengthID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "SECURITYCONTROLTAG" (
	"SecurityControlTagID" INTEGER NOT NULL,
	"SecurityControlID" INTEGER NULL,
	"SecurityControlGUID" TEXT NULL,
	"TagID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "SECURITYCONTROLTEST" (
	"SecurityControlTestID" INTEGER NOT NULL,
	"SecurityControlTestGUID" TEXT NULL,
	"SecurityControlID" INTEGER NULL,
	"SecurityControlGUID" TEXT NULL,
	"TestID" INTEGER NULL,
	"TestGUID" TEXT NULL,
	"TestVocabularyID" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "SECURITYCONTROLTOOL" (
	"SecurityControlToolID" INTEGER NOT NULL,
	"SecurityControlID" INTEGER NOT NULL,
	"SecuriyControlGUID" TEXT NULL,
	"RelationshipName" TEXT NULL,
	"ToolInformationID" INTEGER NOT NULL,
	"ToolInformationGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "SECURITYCONTROLTYPE" (
	"SecurityControlTypeID" INTEGER NOT NULL,
	"SecurityControlTypeName" TEXT NULL,
	"SecurityControlTypeDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "SECURITYCONTROLTYPETAG" (
	"SecurityControlTypeTagID" INTEGER NOT NULL,
	"SecurityControlTypeID" INTEGER NULL,
	"TagID" INTEGER NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "SECURITYDEGRADATIONPROPERTIES" (
	"SecurityDegradationPropertiesID" INTEGER NOT NULL,
	"SecurityDegradationPropertiesName" TEXT NULL,
	"SecurityDegradationPropertiesDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"EnumerationVersionID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "SECURITYDEGRADATIONSTRATEGICOBJECTIVE" (
	"SecurityDegradationStrategicObjectiveID" INTEGER NOT NULL,
	"SecurityDegradationStrategicObjectiveName" TEXT NULL,
	"SecurityDegradationStrategicObjectiveDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"EnumerationVersionID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "SECURITYDEGRADATIONTACTICALOBJECTIVE" (
	"SecurityDegradationTacticalObjectiveID" INTEGER NOT NULL,
	"SecurityDegradationTacticalObjectiveName" TEXT NULL,
	"SecurityDegradationTacticalObjectiveDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"EnumerationVersionID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "SECURITYDOMAIN" (
	"SecurityDomainID" INTEGER NOT NULL,
	"SecurityDomainGUID" TEXT NULL,
	"SecurityDomainName" TEXT NULL,
	"SecurityDomainDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "SECURITYDOMAINMATURITY" (
	"SecurityDomainMaturityID" INTEGER NOT NULL,
	"SecurityDomainID" INTEGER NULL,
	"SecurityDomainGUID" TEXT NULL,
	"MaturityLevelID" INTEGER NULL,
	"MaturityLevelGUID" TEXT NULL,
	"OrganisationID" INTEGER NULL,
	"OrganizationalUnitID" INTEGER NULL,
	"PersonID" INTEGER NULL,
	"SecurityDomainMaturityDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"ConfidenceReasonID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ValidityID" INTEGER NULL,
	"LastCheckedDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "SECURITYDOMAINOBJECTIVE" (
	"SecurityDomainObjectiveID" INTEGER NOT NULL,
	"SecurityDomainID" INTEGER NULL,
	"SecurityDomainGUID" TEXT NULL,
	"ObjectiveID" INTEGER NULL,
	"ObjectiveGUID" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "SECURITYDOMAINPROCESS" (
	"SecurityDomainProcessID" INTEGER NOT NULL,
	"SecurityDomainID" INTEGER NOT NULL,
	"SecurityDomainGUID" TEXT NULL,
	"SecurityProcessID" INTEGER NOT NULL,
	"SecurityProcessGUID" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "SECURITYDOMAINTAG" (
	"SecurityDomainTagID" INTEGER NOT NULL,
	"SecurityDomainID" INTEGER NULL,
	"SecurityDomainGUID" TEXT NULL,
	"TagID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "SECURITYEVALUATION" (
	"SecurityEvaluationID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "SECURITYLABEL" (
	"SecurityLabelID" INTEGER NOT NULL,
	"LabelID" INTEGER NULL,
	"SecurityLabelName" TEXT NULL,
	"SecurityLabelDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "SECURITYLABELREFERENCE" (
	"SecurityLabelReferenceID" INTEGER NOT NULL,
	"SecurityLabelID" INTEGER NOT NULL,
	"SecurityLabelGUID" TEXT NULL,
	"ReferenceID" INTEGER NOT NULL,
	"ReferenceGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "SECURITYMARKING" (
	"SecurityMarkingID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "SECURITYMETRIC" (
	"SecurityMetricID" INTEGER NOT NULL,
	"SecurityMetricGUID" TEXT NULL,
	"SecurityMetricName" TEXT NULL,
	"SecurityMetricDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"TrustLevelID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "SECURITYMETRICDESCRIPTION" (
	"SecurityMetricDescriptionID" INTEGER NOT NULL,
	"SecurityMetricID" INTEGER NULL,
	"SecurityMetricGUID" TEXT NULL,
	"DescriptionID" INTEGER NULL,
	"DescriptionGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "SECURITYMETRICREFERENCE" (
	"SecurityMetricReferenceID" INTEGER NOT NULL,
	"SecurityMetricID" INTEGER NULL,
	"SecurityMetricGUID" TEXT NULL,
	"ReferenceID" INTEGER NULL,
	"ReferenceGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "SECURITYMETRICTAG" (
	"SecurityMetricTagID" INTEGER NOT NULL,
	"SecurityMetricID" INTEGER NULL,
	"SecurityMetricGUID" TEXT NULL,
	"TagID" INTEGER NULL,
	"TagGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "SECURITYNOTIFICATION" (
	"SecurityNotificationID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "SECURITYPRINCIPLE" (
	"SecurityPrincipleID" INTEGER NOT NULL,
	"SecurityPrincipleGUID" TEXT NULL,
	"SecurityPrincipleName" TEXT NOT NULL,
	"SecurityPrincipleDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"TrustLevelID" INTEGER NULL,
	"TrustReasonID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "SECURITYPRINCIPLEDESCRIPTION" (
	"SecurityPrincipleDescriptionID" INTEGER NOT NULL,
	"SecurityPrincipleID" INTEGER NULL,
	"SecurityPrincipleGUID" TEXT NULL,
	"DescriptionID" INTEGER NULL,
	"DescriptionGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "SECURITYPRINCIPLEFORATTACKPATTERN" (
	"AttackPatternSecurityPrincipleID" INTEGER NOT NULL,
	"SecurityPrincipleID" INTEGER NOT NULL,
	"SecurityPrincipleGUID" TEXT NULL,
	"AttackPatternID" INTEGER NOT NULL,
	"AttackPatternGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "SECURITYPRINCIPLEREFERENCE" (
	"SecurityPrincipleReferenceID" INTEGER NOT NULL,
	"SecurityPrincipleID" INTEGER NULL,
	"SecurityPrincipleGUID" TEXT NULL,
	"ReferenceID" INTEGER NULL,
	"ReferenceGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "SECURITYPRINCIPLETAG" (
	"SecurityPrincipleTagID" INTEGER NOT NULL,
	"SecurityPrincipleTagGUID" TEXT NULL,
	"SecurityPrincipleID" INTEGER NULL,
	"SecurityPrincipleGUID" TEXT NULL,
	"TagID" INTEGER NULL,
	"TagGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "SECURITYPROCESS" (
	"SecurityProcessID" INTEGER NOT NULL,
	"SecurityProcessGUID" TEXT NULL,
	"SecurityProcessName" TEXT NULL,
	"SecurityProcessDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "SECURITYPROCESSMATURITYLEVEL" (
	"SecurityProcessMaturityLevelID" INTEGER NOT NULL,
	"SecurityProcessMaturityLevelGUID" TEXT NULL,
	"SecurityProcessID" INTEGER NULL,
	"SecurityProcessGUID" TEXT NULL,
	"MaturityLevelID" INTEGER NULL,
	"MaturityLevelGUID" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "SECURITYPROGRAM" (
	"SecurityProgramID" INTEGER NOT NULL,
	"SecurityProgramGUID" TEXT NULL,
	"SecurityProgramName" TEXT NOT NULL,
	"SecurityProgramDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"SecurityProgramTypeID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "SECURITYPROGRAMPROJECT" (
	"SecurityProgramProjectID" INTEGER NOT NULL,
	"SecurityProgramID" INTEGER NULL,
	"SecurityProgramGUID" TEXT NULL,
	"ProjectID" INTEGER NULL,
	"ProjectGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "SECURITYPROGRAMTYPE" (
	"SecurityProgramTypeID" INTEGER NOT NULL,
	"SecurityProgramTypeName" TEXT NOT NULL,
	"SecurityProgramTypeDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "SECURITYREQUIREMENT" (
	"SecurityRequirementID" INTEGER NOT NULL,
	"RequirementID" INTEGER NULL,
	"RequirementGUID" TEXT NULL,
	"SecurityRequirementGUID" TEXT NULL,
	"SecurityRequirementTitle" TEXT NULL,
	"SecurityRequirementDescription" TEXT NOT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "SECURITYREQUIREMENTCONTROL" (
	"SecurityRequirementControlID" INTEGER NOT NULL,
	"SecurityRequirementID" INTEGER NULL,
	"SecurityRequirementGUID" TEXT NULL,
	"SecurityControlID" INTEGER NULL,
	"SecurityControlGUID" TEXT NULL,
	"EffectivenessID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "SECURITYREQUIREMENTFORATTACKPATTERN" (
	"AttackPatternSecurityRequirementID" INTEGER NOT NULL,
	"SecurityRequirementID" INTEGER NOT NULL,
	"SecurityRequirementGUID" TEXT NULL,
	"AttackPatternID" INTEGER NOT NULL,
	"AttackPatternGUID" TEXT NULL,
	"capec_id" TEXT NULL,
	"AttackPatternSecurityRequirementDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "SECURITYREQUIREMENTMAPPING" (
	"SecurityRequirementMappingID" INTEGER NOT NULL,
	"AssuranceRequirementID" INTEGER NULL,
	"AssuranceRequirementGUID" TEXT NULL,
	"SecurityRequirementRefID" INTEGER NOT NULL,
	"SecurityRequirementRefGUID" TEXT NULL,
	"SecurityRequirementRelationship" TEXT NULL,
	"SecurityRequirementDescription" TEXT NULL,
	"SecurityRequirementSubjectID" INTEGER NULL,
	"SecurityRequirementSubjectGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "SECURITYREQUIREMENTTAG" (
	"SecurityRequirementTagID" INTEGER NOT NULL,
	"SecurityRequirementID" INTEGER NULL,
	"SecurityRequirementGUID" TEXT NULL,
	"TagID" INTEGER NULL,
	"TagGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "SECURITYREQUIREMENTTEST" (
	"SecurityRequirementTestID" INTEGER NOT NULL,
	"SecurityRequirementTestGUID" TEXT NULL,
	"SecurityRequirementID" INTEGER NULL,
	"SecurityRequirementGUID" TEXT NULL,
	"TestID" INTEGER NULL,
	"TestGUID" TEXT NULL,
	"TestVocabularyID" INTEGER NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "SECURITYRISKANALYSIS" (
	"SecurityRiskAnalysisID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "SEMAPHORE" (
	"SemaphoreID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "SENSOR" (
	"SensorID" INTEGER NOT NULL,
	"SensorGUID" TEXT NULL,
	"SensorName" TEXT NULL,
	"SensorDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"TrustLevelID" INTEGER NULL,
	"SensorVersionID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "SENSORTOOL" (
	"SensorToolID" INTEGER NOT NULL,
	"SensorID" INTEGER NOT NULL,
	"ToolID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"SensorToolDescription" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "SERVICEACTIONNAME" (
	"ServiceActionNameID" INTEGER NOT NULL,
	"ServiceActionNameName" TEXT NOT NULL,
	"ServiceActionNameDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"EnumerationVersionID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "SERVICECATEGORY" (
	"ServiceCategoryID" INTEGER NOT NULL,
	"ServiceCategoryName" TEXT NOT NULL,
	"ServiceCategoryDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"StatusID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "SESSION" (
	"SessionID" INTEGER NOT NULL,
	"UserID" TEXT NULL,
	"SessionIDValue" TEXT NULL,
	"SessionName" TEXT NULL,
	"SessionDescription" TEXT NULL,
	"DateStart" TEXT NULL,
	"DateEnd" TEXT NULL,
	"StatusID" INTEGER NULL,
	"Status" TEXT NULL,
	"ServiceCategoryID" INTEGER NULL,
	"Parameters" BLOB NULL,
	"SessionCronID" INTEGER NULL,
	"information" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "SESSIONCOOKIE" (
	"SessionCookieID" INTEGER NOT NULL,
	"SessionID" INTEGER NOT NULL,
	"SessionGUID" TEXT NULL,
	"CookieID" INTEGER NOT NULL,
	"CookieGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"SessionCookieName" TEXT NULL,
	"SessionCookieDescription" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "SESSIONCOOKIEATTRIBUTEVALUE" (
	"SessionCookieAttributeValueID" INTEGER NOT NULL,
	"SessionCookieID" INTEGER NOT NULL,
	"SessionCookieGUID" TEXT NULL,
	"AttributeValueID" INTEGER NOT NULL,
	"AttributeValueGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"SessionCookieAttributeValueName" TEXT NULL,
	"SessionCookieAttributeValueDescription" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "SESSIONCRON" (
	"SessionCronID" INTEGER NOT NULL,
	"UserID" TEXT NULL,
	"CronExpression" TEXT NULL,
	"Parameters" BLOB NULL,
	"StatusID" INTEGER NULL,
	"Status" TEXT NULL,
	"ServiceCategoryID" INTEGER NULL,
	"DateStart" TEXT NULL,
	"DateEnd" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "SETOPERATOR" (
	"SetOperatorID" INTEGER NOT NULL,
	"SetOperatorValue" TEXT NOT NULL,
	"SetOperatorDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "SEVERITYLEVEL" (
	"SeverityLevelID" INTEGER NOT NULL,
	"SeverityLevelGUID" TEXT NULL,
	"SeverityLevelName" TEXT NOT NULL,
	"SeverityLevelDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "SHELLCODE" (
	"ShellCodeID" INTEGER NOT NULL,
	"CodeID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ShellCodeName" TEXT NULL,
	"ShellCodeDescription" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"TrustLevelID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "SIDTYPE" (
	"SIDTypeID" INTEGER NOT NULL,
	"SIDTypeName" TEXT NOT NULL,
	"SIDTypeDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "SIGNAL" (
	"SignalID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "SIGNATURE" (
	"SignatureID" INTEGER NOT NULL,
	"SignatureName" TEXT NOT NULL,
	"SignatureDescription" TEXT NULL,
	"SignatureBase64Binary" TEXT NULL,
	"SeverityLevelID" INTEGER NULL,
	"SignatureSeverityLevel" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"SignatureTypeID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "SIGNATURECPE" (
	"CPESignatureID" INTEGER NOT NULL,
	"SignatureID" INTEGER NOT NULL,
	"CPEID" TEXT NOT NULL,
	"CreatedDate" TEXT NULL,
	"SignatureCPEName" TEXT NULL,
	"SignatureCPEDescription" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "SIGNATUREEXPLOIT" (
	"ExploitSignatureID" INTEGER NOT NULL,
	"SignatureID" INTEGER NOT NULL,
	"ExploitID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"SignatureExploitName" TEXT NULL,
	"SignatureExploitDescription" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"TrustLevelID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "SIGNATUREMALWAREINSTANCE" (
	"MalwareInstanceSignatureID" INTEGER NOT NULL,
	"SignatureID" INTEGER NOT NULL,
	"MalwareInstanceID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"SignatureMalwareInstanceName" TEXT NULL,
	"SignatureMalwareInstanceDescription" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "SIGNATUREPORT" (
	"SignatureID" INTEGER NOT NULL,
	"PortID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "SIGNATUREPROTOCOL" (
	"SignatureID" INTEGER NOT NULL,
	"ProtocolID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "SIGNATUREREFERENCE" (
	"SignatureReferenceID" INTEGER NOT NULL,
	"SignatureID" INTEGER NOT NULL,
	"ReferenceID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "SIGNATURETYPE" (
	"SignatureTypeID" INTEGER NOT NULL,
	"SignatureTypeName" TEXT NOT NULL,
	"SignatureTypeDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "SIGNATURETYPEREFERENCE" (
	"SitgnatureTypeReferenceID" INTEGER NOT NULL,
	"SignatureTypeID" INTEGER NOT NULL,
	"ReferenceID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "SIMPLEDATATYPE" (
	"SimpleDataTypeID" INTEGER NOT NULL,
	"DataTypeName" TEXT NOT NULL,
	"DataTypeDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "SKILL" (
	"SkillID" INTEGER NOT NULL,
	"SkillGUID" TEXT NULL,
	"SkillName" TEXT NULL,
	"SkillDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "SKILLCATEGORY" (
	"SkillCategoryID" INTEGER NOT NULL,
	"SkillCategoryGUID" TEXT NULL,
	"CategoryID" INTEGER NULL,
	"SkillCategoryName" TEXT NULL,
	"SkillCategoryDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "SKILLCATEGORYTAG" (
	"SkillCategoryTagID" INTEGER NOT NULL,
	"SkillCategoryID" INTEGER NULL,
	"TagID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "SKILLLEVEL" (
	"SkillLevelID" INTEGER NOT NULL,
	"SkillLevelValue" TEXT NULL,
	"SkillLevelDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "SKILLTAG" (
	"SkillTagID" INTEGER NOT NULL,
	"SkillID" INTEGER NULL,
	"TagID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "SMSMESSAGE" (
	"SMSMessageID" INTEGER NOT NULL,
	"MessageID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "SOCKETACTIONNAME" (
	"SocketActionNameID" INTEGER NOT NULL,
	"SocketActionNameName" TEXT NOT NULL,
	"SocketActionNameDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"EnumerationVersionID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "SOCKETADDRESS" (
	"SocketAddressID" INTEGER NOT NULL,
	"AddressID" INTEGER NULL,
	"HostNameID" INTEGER NULL,
	"PortID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "SOFTWARE" (
	"SoftwareID" INTEGER NOT NULL,
	"SoftwareGUID" TEXT NULL,
	"ProductID" INTEGER NULL,
	"ProductGUID" TEXT NULL,
	"ApplicationID" INTEGER NULL,
	"ApplicationGUID" TEXT NULL,
	"CPEID" INTEGER NULL,
	"SWIDTAG" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "SOFTWARECHARACTERISTIC" (
	"SoftwareCharacteristicID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "SOFTWAREFILELIST" (
	"SoftwareFileListID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "SOFTWARELICENSE" (
	"SoftwareLicenseID" INTEGER NOT NULL,
	"SoftwareID" INTEGER NOT NULL,
	"SoftwareGUID" TEXT NULL,
	"LicenseID" INTEGER NOT NULL,
	"LicenseGUID" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"ConfidenceReasonID" INTEGER NULL,
	"CollectionMethodID" INTEGER NULL,
	"LastCheckedDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "SOURCE" (
	"SourceID" INTEGER NOT NULL,
	"SourceGUID" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "SOURCECLASS" (
	"SourceClassID" INTEGER NOT NULL,
	"SourceClassName" TEXT NOT NULL,
	"SourceClassDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "SOURCETYPE" (
	"SourceTypeID" INTEGER NOT NULL,
	"SourceTypeName" TEXT NOT NULL,
	"SourceTypeDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "SPLITFUNCTION" (
	"SplitFunctionID" INTEGER NOT NULL,
	"SplitDelimiter" TEXT NOT NULL,
	"OVALComponentGroupID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "SPYINGSTRATEGICOBJECTIVE" (
	"SpyingStrategicObjectiveID" INTEGER NOT NULL,
	"SpyingStrategicObjectiveName" TEXT NULL,
	"SpyingStrategicObjectiveDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"EnumerationVersionID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "SPYINGTACTICALOBJECTIVE" (
	"SpyingTacticalObjectiveID" INTEGER NOT NULL,
	"SpyingTacticalObjectiveName" TEXT NULL,
	"SpyingTacticalObjectiveDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"EnumerationVersionID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "SSDTENTRY" (
	"SSDTEntryID" INTEGER NOT NULL,
	"Service_Table_Base" TEXT NULL,
	"Service_Counter_Table_Base" TEXT NULL,
	"Number_Of_Services" INTEGER NULL,
	"Argument_Table_Base" TEXT NULL,
	"hooked" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"CollectionMethodID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "STAGE" (
	"StageID" INTEGER NOT NULL,
	"StageGUID" TEXT NULL,
	"StageName" TEXT NULL,
	"StageDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ValidityID" INTEGER NULL,
	"TrustLevelID" INTEGER NULL,
	"TrustReasonID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "STAGECATEGORY" (
	"StageCategoryID" INTEGER NOT NULL,
	"CategoryID" INTEGER NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "STAGEDESCRIPTION" (
	"StageDescriptionID" INTEGER NOT NULL,
	"StageID" INTEGER NOT NULL,
	"DescriptionID" INTEGER NOT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ValidityID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"ConfidenceReasonID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "STANDARD" (
	"StandardID" INTEGER NOT NULL,
	"StandardGUID" TEXT NULL,
	"StandardVocabularyID" TEXT NULL,
	"StandardName" TEXT NOT NULL,
	"StandardDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "STANDARDCATEGORY" (
	"StandardCategoryID" INTEGER NOT NULL,
	"CategoryID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "STANDARDOBJECTIVE" (
	"StandardObjectiveID" INTEGER NOT NULL,
	"StandardObjectiveVocabularyID" TEXT NULL,
	"StandardID" INTEGER NULL,
	"ObjectiveID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "STANDARDORGANISATION" (
	"StandardOrganisationID" INTEGER NOT NULL,
	"StandardID" INTEGER NOT NULL,
	"RelationshipName" TEXT NULL,
	"OrganisationID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "STANDARDREFERENCE" (
	"StandardReferenceID" INTEGER NOT NULL,
	"StandardID" INTEGER NOT NULL,
	"StandardGUID" TEXT NULL,
	"ReferenceID" INTEGER NOT NULL,
	"ReferenceGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "STANDARDRELATIONSHIP" (
	"StandardRelationshipID" INTEGER NOT NULL,
	"StandardRefID" INTEGER NOT NULL,
	"RelationshipName" TEXT NULL,
	"StandardSubjectID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"VocabularyID" INTEGER NULL,
	"ReferenceURL" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "STANDARDSECTION" (
	"StandardSectionID" INTEGER NOT NULL,
	"StandardID" INTEGER NULL,
	"StandardGUID" TEXT NULL,
	"SectionID" INTEGER NULL,
	"SectionGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "STANDARDSECTIONMAPPING" (
	"StandardSectionMappingID" INTEGER NOT NULL,
	"StandardSectionRefID" INTEGER NULL,
	"StandardSectionSubjectID" INTEGER NULL,
	"ReferenceID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"MappingComment" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "STANDARDSECURITYREQUIREMENT" (
	"StandardSecurityRequirementID" INTEGER NOT NULL,
	"StandardID" INTEGER NULL,
	"SecurityRequirementID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "STANDARDTAG" (
	"StandardTagID" INTEGER NOT NULL,
	"StandardID" INTEGER NULL,
	"TagID" INTEGER NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "STANDARDVOCABULARY" (
	"StandardVocabularyID" INTEGER NOT NULL,
	"StandardID" INTEGER NOT NULL,
	"VocabularyID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "STARTUPINFO" (
	"StartupInfoID" INTEGER NOT NULL,
	"lpDesktop" TEXT NULL,
	"lpTitle" TEXT NULL,
	"dwX" INTEGER NULL,
	"dwY" INTEGER NULL,
	"dwXSize" INTEGER NULL,
	"dwYSize" INTEGER NULL,
	"dwXCountChars" INTEGER NULL,
	"dwYCountChars" INTEGER NULL,
	"dwFillAttribute" INTEGER NULL,
	"dwFlags" INTEGER NULL,
	"wShowWindow" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "STATUS" (
	"StatusID" INTEGER NOT NULL,
	"StatusName" TEXT NOT NULL,
	"StatusDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "STRATEGICOBJECTIVE" (
	"StrategicObjectiveID" INTEGER NOT NULL,
	"StrategicObjectiveGUID" TEXT NULL,
	"ObjectiveID" INTEGER NULL,
	"StrategicObjectiveName" TEXT NULL,
	"StrategicObjectiveDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "STRATEGY" (
	"StrategyID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "STRUCTUREDAUTHENTICATIONMECHANISM" (
	"StructuredAuthenticationMechanismID" INTEGER NOT NULL,
	"StructuredAuthenticationMechanismGUID" TEXT NULL,
	"StructuredAuthenticationMechanismDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ValidityID" INTEGER NULL,
	"TrustLevelID" INTEGER NULL,
	"TrustReasonID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "SUBCATEGORY" (
	"SubCategoryID" INTEGER NOT NULL,
	"CategoryParentID" INTEGER NOT NULL,
	"CategoryID" INTEGER NOT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "SUBJECTPUBLICKEY" (
	"SubjectPublicKeyID" INTEGER NOT NULL,
	"Public_Key_Algorithm" TEXT NOT NULL,
	"EncryptionID" INTEGER NULL,
	"RSA_Public_Key" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "SUBSTRINGFUNCTION" (
	"SubstringFunctionID" INTEGER NOT NULL,
	"SubstringStart" INTEGER NOT NULL,
	"SubstringLength" INTEGER NOT NULL,
	"OVALComponentGroupID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "SUPPLYCHAIN" (
	"SupplyChainID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "SUPPLYCHAINASSURANCE" (
	"SupplyChainAssuranceID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "SUPPLYCHAINCOMPLIANCE" (
	"SupplyChainComplianceID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "SUPPRESSIONTYPE" (
	"SuppressionTypeID" INTEGER NOT NULL,
	"SuppressionTypeName" TEXT NULL,
	"SuppressionTypeDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "SUSPECTEDMALICIOUSREASON" (
	"SuspectedMaliciousReasonID" INTEGER NOT NULL,
	"SuspectedMaliciousReasonGUID" TEXT NULL,
	"SuspectedMaliciousReasonName" TEXT NULL,
	"ReasonID" INTEGER NULL,
	"SuspectedMaliciousReasonDescription" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "SWENTAG" (
	"SWENTAGID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "SWIDTAG" (
	"SWIDTagID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "SWIDTAGCPE" (
	"SWIDTagCPEID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "SYNCHRONIZATIONACTIONNAME" (
	"SynchronizationActionNameID" INTEGER NOT NULL,
	"SynchronizationActionNameName" TEXT NOT NULL,
	"SynchronizationActionNameDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"EnumerationVersionID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "SYSTEM" (
	"SystemID" INTEGER NOT NULL,
	"AssetID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "SYSTEMACTIONNAME" (
	"SystemActionNameID" INTEGER NOT NULL,
	"SystemActionNameName" TEXT NOT NULL,
	"SystemActionNameDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"EnumerationVersionID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "SYSTEMINFO" (
	"SystemInfoID" INTEGER NOT NULL,
	"OSID" INTEGER NOT NULL,
	"architecture" TEXT NOT NULL,
	"primaryhostname" TEXT NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "SYSTEMINFOFOROVALSYSTEMCHARACTERISTICS" (
	"OVALSystemCharacteristicsID" INTEGER NOT NULL,
	"SystemInfo" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "SYSTEMTYPE" (
	"SystemTypeID" INTEGER NOT NULL,
	"SystemTypeGUID" TEXT NULL,
	"SystemTypeName" TEXT NOT NULL,
	"SystemTypeDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"EnumerationVersionID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "SYSTEMTYPEFORASSET" (
	"AssetSystemTypeID" INTEGER NOT NULL,
	"AssetID" INTEGER NOT NULL,
	"SystemTypeID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "SYSTEMTYPEFORTHREATACTORTTP" (
	"SystemTypeID" INTEGER NOT NULL,
	"ThreatActorTTPID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "TACTIC" (
	"TacticID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "TACTICALOBJECTIVE" (
	"TacticalObjectiveID" INTEGER NOT NULL,
	"TacticalObjectiveGUID" TEXT NULL,
	"ObjectiveID" INTEGER NULL,
	"TacticalObjectiveName" TEXT NULL,
	"TacticalObjectiveDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "TACTICCATEGORY" (
	"TacticCategoryID" INTEGER NOT NULL,
	"CategoryID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "TAG" (
	"TagID" INTEGER NOT NULL,
	"TagGUID" TEXT NULL,
	"TagValue" TEXT NULL,
	"casesensitive" INTEGER NULL,
	"TagDescription" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"ImportanceID" INTEGER NULL,
	"TagType" TEXT NULL,
	"CollectionMethodID" INTEGER NULL,
	"ToolID" INTEGER NULL,
	"ToolGUID" TEXT NULL,
	"SourceID" INTEGER NULL,
	"SourceGUID" TEXT NULL,
	"AssetID" INTEGER NULL,
	"AssetGUID" TEXT NULL,
	"AccountID" INTEGER NULL,
	"AccountGUID" TEXT NULL,
	"UserID" INTEGER NULL,
	"UserGUID" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"VocabularyGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ValidityID" INTEGER NULL,
	"TrustLevelID" INTEGER NULL,
	"TrustReasonID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "TAGBLACKLIST" (
	"TagBlacklistID" INTEGER NOT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "TAGCLASSIFICATION" (
	"TagClassificationID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "TAGFORASSET" (
	"TagAssetID" INTEGER NOT NULL,
	"AssetID" INTEGER NULL,
	"AssetGUID" TEXT NULL,
	"TagID" INTEGER NULL,
	"TagValue" TEXT NULL,
	"TagAssetDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "TAGRESTRICTION" (
	"TagRestrictionID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "TAGTAG" (
	"TagTagID" INTEGER NOT NULL,
	"TagTagGUID" TEXT NULL,
	"TagParentID" INTEGER NULL,
	"TagParentGUID" TEXT NULL,
	"TagSubjectID" INTEGER NULL,
	"TagSubjectGUID" TEXT NULL,
	"TagRelationship" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"ConfidenceReasonID" INTEGER NULL,
	"SourceID" INTEGER NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ImportanceID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "TARGET" (
	"TargetID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "TARGETEDPLATFORMS" (
	"TargetedPlatformsID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "TARGETEDPLATFORMSPECIFICATION" (
	"TargetedPlatformsSpecification" INTEGER NOT NULL,
	"TargetedPlatformsID" INTEGER NOT NULL,
	"PlatformSpecificationID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "TARGETS" (
	"TargetsID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "TASK" (
	"TaskID" INTEGER NOT NULL,
	"TaskName" TEXT NULL,
	"TaskDescription" TEXT NULL,
	"TaskPriority" TEXT NULL,
	"TaskStatus" TEXT NULL,
	"CompletionPercentage" DOUBLE PRECISION NULL,
	"ExpectedCompletionDate" TEXT NULL,
	"StartDate" TEXT NULL,
	"DueDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ValidityID" INTEGER NULL,
	"TrustLevelID" INTEGER NULL,
	"TrustReasonID" INTEGER NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "TASKACTION" (
	"TaskActionID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "TASKACTIONLIST" (
	"TaskActionListID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "TASKACTIONTYPE" (
	"TaskActionTypeID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "TASKATTACHMENT" (
	"TaskAttachmentID" INTEGER NOT NULL,
	"TaskID" INTEGER NULL,
	"Title" TEXT NULL,
	"Data" BLOB NULL,
	"MimeType" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "TASKDESCRIPTION" (
	"TaskDescriptionID" INTEGER NOT NULL,
	"TaskID" INTEGER NOT NULL,
	"TaskGUID" TEXT NULL,
	"DescriptionID" INTEGER NOT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "TASKFLAG" (
	"TaskFlagID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "TASKFORPROJECT" (
	"ProjectTaskID" INTEGER NOT NULL,
	"ProjectID" INTEGER NOT NULL,
	"TaskID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"ProjectTaskName" TEXT NULL,
	"ProjectTaskDescription" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "TASKPERSON" (
	"TaskID" INTEGER NOT NULL,
	"PersonID" INTEGER NOT NULL,
	"RelationshipType" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "TASKPRIORITY" (
	"TaskPriorityID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "TASKPRIORITYENUM" (
	"TaskPriorityEnumID" INTEGER NOT NULL,
	"TaskPriority" TEXT NULL,
	"TaskPriorityDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "TASKSTATUS" (
	"TaskStatusID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "TASKSTATUSENUM" (
	"TaskStatusEnumID" INTEGER NOT NULL,
	"Status" TEXT NULL,
	"TaskStatusDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "TASKTAG" (
	"TaskTagID" INTEGER NOT NULL,
	"TaskID" INTEGER NULL,
	"TagID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "TASKTRIGGER" (
	"TaskTriggerID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "TASKTRIGGERFREQUENCY" (
	"TaskTriggerFrequencyID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "TAXONOMY" (
	"TaxonomyID" INTEGER NOT NULL,
	"TaxonomyName" TEXT NOT NULL,
	"TaxonomyDescription" TEXT NULL,
	"TaxonomyVersion" TEXT NULL,
	"TaxonomyReference" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"DateModified" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "TAXONOMYNODE" (
	"TaxonomyNodeID" INTEGER NOT NULL,
	"TaxonomyID" INTEGER NULL,
	"TaxonomyNodeName" TEXT NULL,
	"TaxonomyMappedNodeID" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"TaxonomyNodeDescription" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "TAXONOMYREFERENCE" (
	"TaxonomyReferenceID" INTEGER NOT NULL,
	"TaxonomyID" INTEGER NOT NULL,
	"ReferenceID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"TaxonomyReferenceName" TEXT NULL,
	"TaxonomyReferenceDescription" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "TCPSTATE" (
	"TCPStateID" INTEGER NOT NULL,
	"TCPStateValue" TEXT NULL,
	"TCPStateDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "TECHNICALCONTEXT" (
	"TechnicalContextID" INTEGER NOT NULL,
	"AttackPatternID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "TECHNIQUE" (
	"TechniqueID" INTEGER NOT NULL,
	"TechniqueGUID" TEXT NULL,
	"TechniqueName" TEXT NULL,
	"TechniqueDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"TrustLevelID" INTEGER NULL,
	"TrustReasonID" INTEGER NULL,
	"ValidityID" INTEGER NULL,
	"CreationObjectID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "TECHNIQUECATEGORY" (
	"TechniqueCategoryID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "TECHNIQUEDESCRIPTION" (
	"TechniqueDescriptionID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "TECHNIQUEREFERENCE" (
	"TechniqueReferenceID" INTEGER NOT NULL,
	"TechniqueID" INTEGER NOT NULL,
	"TechniqueGUID" TEXT NULL,
	"ReferenceID" INTEGER NOT NULL,
	"ReferenceGUID" TEXT NULL,
	"TechniqueReferenceDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"ConfidenceReasonID" INTEGER NULL,
	"VocabularyID" INTEGER NULL,
	"TrustLevelID" INTEGER NULL,
	"TrustReasonID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ConfidentialityLevelID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "TECHNIQUEREFERENCETAG" (
	"TechniqueReferenceTagID" INTEGER NOT NULL,
	"TechniqueReferenceID" INTEGER NULL,
	"TechniqueReferenceGUID" TEXT NULL,
	"TagID" INTEGER NULL,
	"TagGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ValidityID" INTEGER NULL,
	"ImportanceID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"ConfidenceReasonID" INTEGER NULL,
	"TrustLevelID" INTEGER NULL,
	"TrustReasonID" INTEGER NULL,
	"ConfidentialityLevelID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "TECHNIQUERESTRICTION" (
	"TechniqueRestrictionID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "TECHNIQUESTEP" (
	"TechniqueStepID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "TECHNIQUETAG" (
	"TechniqueTagID" INTEGER NOT NULL,
	"TechniqueID" INTEGER NOT NULL,
	"TagID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "TECHNOLOGY" (
	"TechnologyID" INTEGER NOT NULL,
	"TechnologyGUID" TEXT NULL,
	"TechnologyName" TEXT NULL,
	"TechnologyDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "TECHNOLOGYDESCRIPTION" (
	"TechnologyDescriptionID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "TECHNOLOGYTAG" (
	"TechnologyTagID" INTEGER NOT NULL,
	"TechnologyID" INTEGER NOT NULL,
	"TagID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "TECHNOLOGYURI" (
	"TechnologyURIID" INTEGER NOT NULL,
	"TechnologyID" INTEGER NOT NULL,
	"URIObjectID" INTEGER NOT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"RepositoryID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "TELEPHONE" (
	"TelephoneID" INTEGER NOT NULL,
	"TelephoneGUID" TEXT NULL,
	"TelephoneNumber" TEXT NOT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ValidityID" INTEGER NULL,
	"VocabularyID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"ConfidenceReasonID" INTEGER NULL,
	"TrustLevelID" INTEGER NULL,
	"TrustReasonID" INTEGER NULL,
	"LastCheckedDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "TELEPHONECALL" (
	"TelephoneCallID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "TELEPHONEFORORGANISATION" (
	"OrganisationTelephoneID" INTEGER NOT NULL,
	"TelephoneID" INTEGER NOT NULL,
	"OrganisationID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "TELEPHONEFORPERSON" (
	"PersonTelephoneID" INTEGER NOT NULL,
	"TelephoneID" INTEGER NOT NULL,
	"PersonID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "TELEPHONETAG" (
	"TelephoneTagID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "TEST" (
	"TestID" INTEGER NOT NULL,
	"TestGUID" TEXT NULL,
	"TestName" TEXT NULL,
	"TestDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "TESTMECHANISMEFFICACY" (
	"TestMechanismEfficacyID" INTEGER NOT NULL,
	"Efficacy" TEXT NOT NULL,
	"EfficacyDescription" TEXT NULL,
	"ConfidenceLevel" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "TESTMECHANISMID" (
	"TestMechanismID" INTEGER NOT NULL,
	"CyberObservableTestMechanismID" INTEGER NOT NULL,
	"TestMechanismIDREF" TEXT NOT NULL,
	"Information_Source" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "THEORETICALNOTE" (
	"TheoreticalNoteID" INTEGER NOT NULL,
	"TheoreticalNoteText" TEXT NULL,
	"TheoreticalNoteTextClean" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "THREADRUNNINGSTATUS" (
	"ThreadRunningStatusID" INTEGER NOT NULL,
	"Running_Status" TEXT NOT NULL,
	"ThreadRunningStatusDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "TICKET" (
	"TicketID" INTEGER NOT NULL,
	"TicketGUID" TEXT NULL,
	"StatusID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "TICKETCHANGERECORD" (
	"TicketChangeRecordID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "TICKETCHANGEREQUEST" (
	"TicketChangeRequestID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "TICKETNOTIFICATION" (
	"TicketNotificationID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "TICKETRACIMATRIX" (
	"TicketRACIMatrixID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "TIMEDIFFERENCEFUNCTION" (
	"TimeDifferenceFunctionID" INTEGER NOT NULL,
	"DateTimeFormat1" TEXT NOT NULL,
	"DateTimeFormat2" TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS "TIMELINE" (
	"TimelineID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "TIMESHEET" (
	"TimesheetID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"TimesheetName" TEXT NULL,
	"TimesheetDescription" TEXT NULL,
	"TimeValue" DOUBLE PRECISION NULL,
	"TimeUnitID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ProjectID" INTEGER NULL,
	"TaskID" INTEGER NULL,
	"ProjectTaskID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "TIMESHEETPERSON" (
	"TimesheetPersonID" INTEGER NOT NULL,
	"TimesheetID" INTEGER NOT NULL,
	"PersonID" INTEGER NOT NULL,
	"PersonRole" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"TimesheetPersonDescription" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"StatusID" INTEGER NULL,
	"SignatureID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "TIMEUNIT" (
	"TimeUnitID" INTEGER NOT NULL,
	"TimeUnit" TEXT NOT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"TimeUnitDescription" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "TIP" (
	"TipID" INTEGER NOT NULL,
	"TipGUID" TEXT NULL,
	"TipName" TEXT NULL,
	"TipDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ValidityID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "TIPCATEGORY" (
	"TipCategoryID" INTEGER NOT NULL,
	"TipCategoryGUID" TEXT NULL,
	"CategoryID" INTEGER NULL,
	"TipCategoryName" TEXT NULL,
	"TipCategoryDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "TIPREFERENCE" (
	"TipReferenceID" INTEGER NOT NULL,
	"TipID" INTEGER NOT NULL,
	"TipGUID" TEXT NULL,
	"ReferenceID" INTEGER NOT NULL,
	"ReferenceGUID" TEXT NULL,
	"TipReferenceDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "TITLE" (
	"TitleID" INTEGER NOT NULL,
	"TitleText" TEXT NULL,
	"LocaleID" INTEGER NULL,
	"VersionID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "TOKEN" (
	"TokenID" INTEGER NOT NULL,
	"TokenParentID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"TokenName" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "TOOL" (
	"ToolID" INTEGER NOT NULL,
	"ToolGUID" TEXT NULL,
	"ToolName" TEXT NOT NULL,
	"ToolDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"TrustLevelID" INTEGER NULL,
	"ReliabilityID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "TOOLDOCUMENT" (
	"ToolDocumentID" INTEGER NOT NULL,
	"ToolDocumentGUID" TEXT NULL,
	"ToolID" INTEGER NULL,
	"DocumentID" INTEGER NULL,
	"CreatedDate" DATE NULL,
	"PersonID" INTEGER NULL,
	"ValidFrom" DATE NULL,
	"ValidUntil" DATE NULL,
	"ConfidenceLevel" TEXT NULL,
	"ConfidenceReasonID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "TOOLACCESSRECORD" (
	"ToolAccessRecordID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "TOOLCHANGERECORD" (
	"ToolChangeRecordID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "TOOLCODE" (
	"ToolCodeID" INTEGER NOT NULL,
	"ToolCodeGUID" TEXT NULL,
	"ToolID" INTEGER NULL,
	"ToolGUID" TEXT NULL,
	"CodeID" INTEGER NULL,
	"CodeGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"CreationObjectGUID" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"CollectionMethodID" INTEGER NULL,
	"CollectionMethodGUID" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"ConfidenceLevelGUID" TEXT NULL,
	"ConfidenceReasonID" INTEGER NULL,
	"ConfidenceReasonGUID" TEXT NULL,
	"SourceID" INTEGER NULL,
	"SourceGUID" TEXT NULL,
	"RepositoryID" INTEGER NULL,
	"RepositoryGUID" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "TOOLFUNCTION" (
	"ToolFunctionID" INTEGER NOT NULL,
	"ToolFunctionGUID" TEXT NULL,
	"ToolID" INTEGER NULL,
	"ToolGUID" TEXT NULL,
	"FunctionID" INTEGER NULL,
	"FunctionGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"CollectionMethodID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"ConfidenceReasonID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "TOOLINFORMATION" (
	"ToolInformationID" INTEGER NOT NULL,
	"ToolInformationGUID" TEXT NULL,
	"ToolInformationIDREF" TEXT NULL,
	"ToolName" TEXT NOT NULL,
	"ToolDescription" TEXT NULL,
	"Vendor" TEXT NULL,
	"Version" TEXT NULL,
	"Service_Pack" TEXT NULL,
	"Tool_Specific_Data" TEXT NULL,
	"Tool_Hashes" TEXT NULL,
	"Tool_Configuration" TEXT NULL,
	"Execution_Environment" TEXT NULL,
	"Errors" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "TOOLINFORMATIONDESCRIPTION" (
	"ToolInformationDescriptionID" INTEGER NOT NULL,
	"ToolInformationID" INTEGER NOT NULL,
	"DescriptionID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "TOOLINFORMATIONFORTOOL" (
	"ToolInformationForToolID" INTEGER NOT NULL,
	"ToolID" INTEGER NOT NULL,
	"ToolInformationID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "TOOLINFORMATIONMETADATA" (
	"ToolInformationID" INTEGER NOT NULL,
	"MetadataID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "TOOLINFORMATIONREFERENCE" (
	"ToolInformationReferenceID" INTEGER NOT NULL,
	"ToolInformationID" INTEGER NOT NULL,
	"ToolInformationGUID" TEXT NULL,
	"ReferenceID" INTEGER NOT NULL,
	"ReferenceGUID" TEXT NULL,
	"ToolReferenceTypeID" INTEGER NULL,
	"ToolReferenceTypeGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"ConfidenceReasonID" INTEGER NULL,
	"TrustLevelID" INTEGER NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "TOOLLICENSE" (
	"ToolLicenseID" INTEGER NOT NULL,
	"ToolID" INTEGER NOT NULL,
	"LicenseID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "TOOLREFERENCE" (
	"ToolReferenceID" INTEGER NOT NULL,
	"ToolID" INTEGER NOT NULL,
	"ReferenceID" INTEGER NOT NULL,
	"ToolReferenceTypeID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"CollectionMethodID" INTEGER NULL,
	"TrustLevelID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ConfidentialityLevelID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "TOOLREFERENCETYPE" (
	"ToolReferenceTypeID" INTEGER NOT NULL,
	"ToolReferenceTypeName" TEXT NOT NULL,
	"ToolReferenceTypeDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "TOOLREPOSITORY" (
	"ToolRepositoryID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "TOOLTAG" (
	"ToolTagID" INTEGER NOT NULL,
	"ToolTagGUID" TEXT NULL,
	"ToolID" INTEGER NULL,
	"ToolGUID" TEXT NULL,
	"TagID" INTEGER NULL,
	"TagGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValdFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "TOOLTECHNOLOGY" (
	"ToolTechnologyID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "TOOLTYPE" (
	"ToolTypeID" INTEGER NOT NULL,
	"ToolTypeGUID" TEXT NULL,
	"ToolTypeName" TEXT NOT NULL,
	"ToolTypeDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NOT NULL,
	"isEncrypted" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"EnumerationVersionID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "TOOLTYPEFORTOOLINFORMATION" (
	"ToolInformationID" INTEGER NOT NULL,
	"ToolTypeID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "TOOLUSERAGENT" (
	"ToolUserAgentID" INTEGER NOT NULL,
	"ToolID" INTEGER NULL,
	"UserAgentID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "TRAINING" (
	"TrainingID" INTEGER NOT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "TRAININGFORPERSON" (
	"TrainingPersonID" INTEGER NOT NULL,
	"PersonID" INTEGER NOT NULL,
	"TrainingID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "TRANSACTION" (
	"TransactionID" INTEGER NOT NULL,
	"UserID" TEXT NULL,
	TEXT TEXT NULL,
	"Amount" DOUBLE PRECISION NULL,
	"Status" TEXT NULL,
	"OrderNumber" TEXT NULL,
	"Email" TEXT NULL,
	"City" TEXT NULL,
	"ProductID" TEXT NULL,
	"ProductDescription" TEXT NULL,
	"HolderName" TEXT NULL,
	"PaymentMethod" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "TRANSFORMATION" (
	"TransformationID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "TREND" (
	"TrendID" INTEGER NOT NULL,
	"TrendName" TEXT NOT NULL,
	"TrendDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "TRIGGERFREQUENCYENUM" (
	"TriggerFrequencyEnumID" INTEGER NOT NULL,
	"TriggerFrequency" TEXT NULL,
	"TriggerFrequencyDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "TRIGGERLIST" (
	"TriggerListID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "TRIGGERTYPEENUM" (
	"TriggerTypeEnumID" INTEGER NOT NULL,
	"TriggerType" TEXT NULL,
	"TriggerTypeDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "TRUSTLEVEL" (
	"TrustLevelID" INTEGER NOT NULL,
	"TrustLevelGUID" TEXT NULL,
	"TrustLevelName" TEXT NOT NULL,
	"TrustLevelDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "TRUSTREASON" (
	"TrustReasonID" INTEGER NOT NULL,
	"TrustReasonGUID" TEXT NULL,
	"ReasonID" INTEGER NULL,
	"TrustReasonName" TEXT NULL,
	"TrustReasonDescription" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "TYPE" (
	"TypeID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "UNIDIRECTIONALFLOWRECORD" (
	"UnidirectionalFlowRecordID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "UNIQUEFUNCTION" (
	"UniqueFunctionID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "UNIT" (
	"UnitID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "UNIXFILE" (
	"UnixFileID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "UNIXNETWORKROUTEENTRY" (
	"UnixNetworkRouteEntryID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "UNIXPIPEOBJECT" (
	"UnixPipeObjectID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "UNIXPROCESS" (
	"UnixProcessID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "UNIXUSERACCOUNT" (
	"UnixUserAccountID" INTEGER NOT NULL,
	"AccountID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "UNIXVOLUME" (
	"UnixVolumeID" INTEGER NOT NULL,
	"VolumeObjectID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "URGENCY" (
	"UrgencyID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "URIOBJECT" (
	"URIObjectID" INTEGER NOT NULL,
	"URIValue" TEXT NULL,
	"URITypeID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "URITYPE" (
	"URITypeID" INTEGER NOT NULL,
	"URITypeName" TEXT NULL,
	"URITypeDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "URL" (
	"URLID" INTEGER NOT NULL,
	"ReferenceID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "URLHISTORY" (
	"URLHistoryID" INTEGER NOT NULL,
	"URLHistoryGUID" TEXT NULL,
	"BrowserToolInformationID" INTEGER NULL,
	"ToolInformationGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "URLHISTORYENTRIES" (
	"URLHistoryEntriesID" INTEGER NOT NULL,
	"URLHistoryID" INTEGER NULL,
	"URLHistoryGUID" TEXT NULL,
	"URLHistoryEntryID" INTEGER NULL,
	"URLHistoryEntryGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "URLHISTORYENTRY" (
	"URLHistoryEntryID" INTEGER NOT NULL,
	"URLHistoryEntryGUID" TEXT NULL,
	"URIObjectID" INTEGER NULL,
	"HostnameID" INTEGER NULL,
	"Referrer_URL" INTEGER NULL,
	"Page_Title" TEXT NULL,
	"User_Profile_Name" TEXT NULL,
	"Visit_Count" INTEGER NULL,
	"Manually_Entered_Count" INTEGER NULL,
	"Modification_DateTime" TEXT NULL,
	"Expiration_DateTime" TEXT NULL,
	"First_Visit_DateTime" TEXT NULL,
	"Last_Visit_DateTime" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"CollectionMethoID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "USAGETYPE" (
	"UsageTypeID" INTEGER NOT NULL,
	"TypeID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "USECASE" (
	"UseCaseID" INTEGER NOT NULL,
	"UseCaseGUID" TEXT NULL,
	"UseCaseDescription" TEXT NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "USECASECATEGORY" (
	"UseCaseCategoryID" INTEGER NOT NULL,
	"UseCaseCategoryGUID" TEXT NULL,
	"CategoryID" INTEGER NULL,
	"UseCasecategoryName" TEXT NULL,
	"UseCaseCategoryDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "USECASEFORBUSINESSRISK" (
	"BusinessRiskUseCaseID" INTEGER NOT NULL,
	"BusinessRiskUseCaseGUID" TEXT NULL,
	"UseCaseID" INTEGER NOT NULL,
	"UseCaseGUID" TEXT NULL,
	"BusinessRiskID" INTEGER NOT NULL,
	"BusinessRiskGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "USECASEFORREGULATORYRISK" (
	"RegulatoryRiskUseCaseID" INTEGER NOT NULL,
	"RegulatoryRiskUseCaseGUID" TEXT NULL,
	"UseCaseID" INTEGER NOT NULL,
	"UseCaseGUID" TEXT NULL,
	"RegulatoryRiskID" INTEGER NOT NULL,
	"RegulatoryRiskGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "USER" (
	"UserID" INTEGER NOT NULL,
	"UserGUID" TEXT NULL,
	"UserName" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromdate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "USERACCOUNT" (
	"UserAccountID" INTEGER NOT NULL,
	"AccountID" INTEGER NULL,
	"UserID" TEXT NULL,
	"UserAccountACL" INTEGER NULL,
	"UserAccountTypeID" INTEGER NULL,
	"UserAccountTypeName" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "USERACCOUNTTYPE" (
	"UserAccountTypeID" INTEGER NOT NULL,
	"UserAccountTypeGUID" TEXT NULL,
	"UserAccountTypeName" TEXT NULL,
	"UserAccountTypeDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "USERACTIONNAME" (
	"UserActionNameID" INTEGER NOT NULL,
	"UserActionNameName" TEXT NOT NULL,
	"UserActionNameDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"EnumerationVersionID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "USERAGENT" (
	"UserAgentID" INTEGER NOT NULL,
	"UserAgentGUID" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "USERAGENTBLACKLIST" (
	"UserAgentBlacklistID" INTEGER NOT NULL,
	"UserAgentBlacklistGUID" TEXT NULL,
	"UserAgentBlacklistName" TEXT NULL,
	"UserAgentBlacklistDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "USERAGENTCATEGORY" (
	"UserAgentCategoryID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "USERSESSION" (
	"UserSessionID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "VALIDITY" (
	"ValidityID" INTEGER NOT NULL,
	"Not_Before" TEXT NULL,
	"Not_After" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "VALUE" (
	"ValueID" INTEGER NOT NULL,
	"ValueValue" TEXT NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "VALUEBLACKLIST" (
	"ValueBlacklistID" INTEGER NOT NULL,
	"ValueID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "VALUEGROUP" (
	"ValueGroupID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "VALUEMAPPING" (
	"ValueMappingID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "VALUEWHITELIST" (
	"ValueWhitelistID" INTEGER NOT NULL,
	"ValueID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "VARIABLE" (
	"VariableID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "VERSION" (
	"VersionID" INTEGER NOT NULL,
	"VersionValue" TEXT NULL,
	"VersionDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "VIEWPORT" (
	"ViewPortID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "VOCABULARY" (
	"VocabularyID" INTEGER NOT NULL,
	"VocabularyGUID" TEXT NULL,
	"VocabularyName" TEXT NOT NULL,
	"VocabularyVersion" TEXT NULL,
	"VocabularyReference" TEXT NULL,
	"DateModified" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"TrustLevelID" INTEGER NULL,
	"TrustReasonID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "VOCABULARYCATEGORIES" (
	"VocabularyCategoriesID" INTEGER NOT NULL,
	"VocabularyID" INTEGER NULL,
	"VocabularyCategoryID" INTEGER NULL,
	"CategoryID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "VOCABULARYCATEGORY" (
	"VocabularyCategoryID" INTEGER NOT NULL,
	"VocabularyCategoryGUID" TEXT NULL,
	"CategoryID" INTEGER NULL,
	"VocabularyCategoryName" TEXT NULL,
	"VocabularyCategoryDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "VOCABULARYCHANGERECORD" (
	"VocabularyChangeRecordID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "VOCABULARYDESCRIPTION" (
	"VocabularyDescriptionID" INTEGER NOT NULL,
	"VocabularyDescribedID" INTEGER NOT NULL,
	"DescriptionID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "VOCABULARYREFERENCE" (
	"VocabularyID" INTEGER NOT NULL,
	"ReferenceID" INTEGER NOT NULL,
	"VocabularyReferenceDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "VOCABULARYTAG" (
	"VocabularyTagID" INTEGER NOT NULL,
	"VocabularyTaggedID" INTEGER NOT NULL,
	"TagID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ValidityID" INTEGER NULL,
	"VocabularyID" INTEGER NULL,
	"TrustLevelID" INTEGER NULL,
	"TrustReasonID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "VOCABULARYVERSION" (
	"VocabularyVersionID" INTEGER NOT NULL,
	"VocabularyVersionGUID" TEXT NULL,
	"VocabularyID" INTEGER NOT NULL,
	"VocabularyGUID" TEXT NULL,
	"VersionID" INTEGER NOT NULL,
	"ChangeLog" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "VOLUMEOBJECT" (
	"VolumeObjectID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "VULNERABLECONFIGURATION" (
	"VulnerableConfigurationID" INTEGER NOT NULL,
	"VulnerabilityID" INTEGER NULL,
	"ConfigurationOrder" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "VULNERABLECONFIGURATIONCPE" (
	"VulnerableConfigurationCPEID" INTEGER NOT NULL,
	"VulnerableConfigurationID" INTEGER NULL,
	"LogicalTestLevel" INTEGER NULL,
	"LogicalTestLevelOrder" INTEGER NULL,
	"CPELogicalTestID" INTEGER NULL,
	"CPEID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "WAITABLETIMERTYPE" (
	"WaitableTimerTypeID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "WAITABLETIMERTYPEENUM" (
	"WaitaibleTimerTypeEnumID" INTEGER NOT NULL,
	"WaitaibleTimerTypeName" TEXT NOT NULL,
	"WaitableTimerTypeDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "WAIVER" (
	"WaiverID" INTEGER NOT NULL,
	"WaiverName" TEXT NULL,
	"WaiverDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"OrganisationID" INTEGER NULL,
	"PersonID" INTEGER NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "WAIVERREASON" (
	"WaiverReasonID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "WARNING" (
	"WarningID" INTEGER NOT NULL,
	"WarningText" TEXT NOT NULL,
	"lang" TEXT NULL,
	"WarningCategoryID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "WARNINGCATEGORY" (
	"WarningCategoryID" INTEGER NOT NULL,
	"WarningCategoryName" TEXT NOT NULL,
	"WarningCategoryMeaning" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"lang" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "WASC" (
	"WASCID" INTEGER NOT NULL,
	"WASCThreatType" TEXT NOT NULL,
	"WASCRefID" TEXT NOT NULL,
	"WASCName" TEXT NULL,
	"WASCDescription" TEXT NULL,
	"WASCExample" TEXT NULL,
	"WASCRefURL" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "WASCCWE" (
	"WASCCWEID" INTEGER NOT NULL,
	"WASCID" INTEGER NOT NULL,
	"WASCRefID" TEXT NULL,
	"CWEID" TEXT NOT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"ConfidenceReasonID" INTEGER NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "WASCFORCAPEC" (
	"WASCForCAPECID" INTEGER NOT NULL,
	"WASCID" INTEGER NOT NULL,
	"WASCRefID" TEXT NULL,
	"AttackPatternID" INTEGER NULL,
	"capec_id" TEXT NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"RepositoryID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "WASCREFERENCE" (
	"WASCReferenceID" INTEGER NOT NULL,
	"WASCID" INTEGER NOT NULL,
	"ReferenceID" INTEGER NOT NULL,
	"ReferenceGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "WASCTHREATTYPE" (
	"WASCThreatTypeID" INTEGER NOT NULL,
	"ThreatTypeID" INTEGER NOT NULL,
	"WASCID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "WEAKNESS" (
	"WeaknessID" INTEGER NOT NULL,
	"WeaknessGUID" TEXT NULL,
	"CWEID" TEXT NULL,
	"WeaknessName" TEXT NULL,
	"WeaknessDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "WEAKNESSCWE" (
	"WeaknessCWEID" INTEGER NOT NULL,
	"WeaknessCWEGUID" TEXT NULL,
	"WeaknessID" INTEGER NOT NULL,
	"WeaknessGUID" TEXT NULL,
	"CWEID" TEXT NULL,
	"WeaknessCWEDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"ConfidenceReasonID" INTEGER NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "WHOISCHANGERECORD" (
	"WhoisChangeRecordID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "WHOISOBJECT" (
	"WhoisObjectID" INTEGER NOT NULL,
	"WhoisObjectGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "WORD" (
	"WordID" INTEGER NOT NULL,
	"WordGUID" TEXT NULL,
	"WordValue" TEXT NULL,
	"LocaleID" INTEGER NULL,
	"WordDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "WORDBLACKLIST" (
	"WordBlacklistID" INTEGER NOT NULL,
	"WordListID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "WORDFILE" (
	"WordFileID" INTEGER NOT NULL,
	"FileID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "WORDLIST" (
	"WordListID" INTEGER NOT NULL,
	"WordListGUID" TEXT NULL,
	"VersionID" INTEGER NULL,
	"VocabularyID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "WORDLISTCATEGORY" (
	"WordListCategoryID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "WORDLISTWORDS" (
	"WordListWordID" INTEGER NOT NULL,
	"WordListID" INTEGER NOT NULL,
	"WordID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"CollectionMethodID" INTEGER NULL,
	"CollectionToolID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "WORDWHITELIST" (
	"WordWhitelistID" INTEGER NOT NULL,
	"WordListID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "WORKINGHOURS" (
	"WorkingHoursID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "X509CERTIFICATE" (
	"X509CertificateID" INTEGER NOT NULL,
	"X509CertificateGUID" TEXT NULL,
	"CertificateID" INTEGER NULL,
	"Version" INTEGER NULL,
	"Serial_Number" TEXT NULL,
	"Signature_Algorithm" TEXT NULL,
	"EncryptionID" INTEGER NULL,
	"Issuer" TEXT NULL,
	"IssuerOrganisationID" INTEGER NULL,
	"ValidityID" INTEGER NULL,
	"Subject" TEXT NULL,
	"SubjectOrganisationID" INTEGER NULL,
	"SubjectPersonID" INTEGER NULL,
	"Subject_Public_Key" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"TrustLevelID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "X509CERTIFICATEACCESSRECORD" (
	"X509CertificateAccessRecordID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "X509CERTIFICATECHANGERECORD" (
	"X509CertificateChangeRecordID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "X509CERTIFICATENONSTANDARDEXTENSION" (
	"X509CertificateNonStandardExtensionID" INTEGER NOT NULL,
	"X509CertificateID" INTEGER NOT NULL,
	"X509NonStandardExtensionID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "X509CERTIFICATEOBJECT" (
	"X509CertificateObjectID" INTEGER NOT NULL,
	"X509CertificateID" INTEGER NOT NULL,
	"X509CertificateGUID" TEXT NULL,
	"X509SignatureID" INTEGER NOT NULL,
	"X509SignatureGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"TrustLevelID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "X509CERTIFICATESTANDARDEXTENSION" (
	"X509CertificateStandardExtensionID" INTEGER NOT NULL,
	"X509CertificateID" INTEGER NOT NULL,
	"X509CertificateGUID" TEXT NULL,
	"X509V3ExtensionID" INTEGER NOT NULL,
	"X509V3ExtensionGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "X509NONSTANDARDEXTENSION" (
	"X509NonStandardExtensionID" INTEGER NOT NULL,
	"X509NonStandardExtensionGUID" TEXT NULL,
	"Netscape_Comment" TEXT NULL,
	"Netscape_Certificate_Type" TEXT NULL,
	"Old_Authority_Key_Identifier" TEXT NULL,
	"Old_Primary_Key_Attributes" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "X509SIGNATURE" (
	"X509SignatureID" INTEGER NOT NULL,
	"X509SignatureGUID" TEXT NULL,
	"SignatureID" INTEGER NULL,
	"Signature_Algorithm" TEXT NULL,
	"EncryptionID" INTEGER NULL,
	"Signature" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"TrustLevelID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "X509V3EXTENSION" (
	"X509V3ExtensionID" INTEGER NOT NULL,
	"X509V3ExtensionGUID" TEXT NULL,
	"Basic_Constraints" TEXT NULL,
	"Name_Constraints" TEXT NULL,
	"Policy_Constraints" TEXT NULL,
	"Key_Usage" TEXT NULL,
	"Extended_Key_Usage" TEXT NULL,
	"Subject_Key_Identifier" TEXT NULL,
	"Authority_Key_Identifier" TEXT NULL,
	"Subject_Alternative_Name" TEXT NULL,
	"Issuer_Alternative_Name" TEXT NULL,
	"Subject_Directory_Attributes" TEXT NULL,
	"CRL_Distribution_Points" TEXT NULL,
	"Inhibit_Any_Policy" INTEGER NULL,
	"Private_Key_Usage_Period" INTEGER NULL,
	"Certificate_Policies" TEXT NULL,
	"Policy_Mappings" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "X509V3EXTENSIONACCESSRECORD" (
	"X509V3ExtensionAccessRecordID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "X509V3EXTENSIONPOLICYTERM" (
	"X509V3ExtensionPolicyTermID" INTEGER NOT NULL,
	"X509V3ExtensionID" INTEGER NOT NULL,
	"PolicyTermID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ZONE" (
	"ZoneID" INTEGER NOT NULL,
	"ZoneGUID" TEXT NULL,
	"ZoneName" TEXT NULL,
	"ZoneDescription" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"ValidityID" INTEGER NULL,
	"TrustLevelID" INTEGER NULL,
	"TrustReasonID" INTEGER NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ZONECLASSIFICATION" (
	"ZoneClassificationID" INTEGER NOT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ZONEDESCRIPTION" (
	"ZoneDescriptionID" INTEGER NOT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ZONERESTRICTION" (
	"ZoneRestrictionID" INTEGER NOT NULL,
	"isEncrypted" INTEGER NULL
);

-- New tables
CREATE TABLE IF NOT EXISTS "BIAAUDIT" (
    "BIAAuditID"          INTEGER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    "BIAAuditName"        TEXT NOT NULL,
    "BIAAuditDescription" TEXT,
    "BIAAuditScope"       TEXT,
    "BIAAuditDate"        TEXT,
    "BIAAuditStatus"      TEXT DEFAULT 'Draft',
    "Auditor"             TEXT,
    "CreatedDate"         TEXT,
    "CreatedByPersonID"   INTEGER
, "TenantID" INTEGER);
CREATE TABLE IF NOT EXISTS "BIAENTRY" (
    "BIAEntryID"           INTEGER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    "BIAAuditID"           INTEGER NOT NULL,
    "AssetID"              INTEGER,
    "AssetName"            TEXT,
    "AssetDescription"     TEXT,
    "AssetType"            TEXT,
    "CriticalityLevel"     TEXT,
    "OwnerPersonID"        INTEGER,
    "OwnerName"            TEXT,
    "RiskDescription"      TEXT,
    "RiskLevel"            TEXT,
    "ImpactFinancial"      TEXT,
    "ImpactOperational"    TEXT,
    "ImpactLegal"          TEXT,
    "ImpactReputational"   TEXT,
    "MTD"                  TEXT,
    "RTO"                  TEXT,
    "RPO"                  TEXT,
    "Notes"                TEXT,
    "CreatedDate"          TEXT,
    "ModifiedDate"         TEXT, "TenantID" INTEGER,
    FOREIGN KEY (BIAAuditID) REFERENCES BIAAUDIT(BIAAuditID)
);
-- Directed dependency edges between BIA entries ("From depends on To"), drives the BIA dependency graph.
CREATE TABLE IF NOT EXISTS "BIADEPENDENCY" (
    "BIADependencyID"      INTEGER PRIMARY KEY,
    "BIAAuditID"           INTEGER,
    "FromEntryID"          INTEGER,
    "ToEntryID"            INTEGER,
    "DependencyType"       TEXT,
    "Notes"                TEXT,
    "CreatedDate"          TEXT,
    "TenantID"             INTEGER
);
CREATE INDEX IF NOT EXISTS ix_biadep_audit ON BIADEPENDENCY(BIAAuditID);
CREATE TABLE IF NOT EXISTS "ACCOUNTTYPE"(
    "AccountTypeID" INTEGER NOT NULL,
    "AccountTypeName" TEXT NULL,
    "AccountTypeDescription" TEXT NULL,
    "VocabularyID" INTEGER NULL
);
CREATE TABLE IF NOT EXISTS "ASSETVULNERABILITY"(
    "AssetVulnerabilityID" INTEGER NOT NULL PRIMARY KEY,
    "AssetID" INTEGER NULL,
    "VulnerabilityID" INTEGER NULL,
    "CreatedDate" TEXT NULL,
    "ValidFromDate" TEXT NULL,
    "ValidUntilDate" TEXT NULL,
    "ToolID" INTEGER NULL
, "TenantID" INTEGER, "AssetVulnerabilityStatusID" INTEGER, "Status" INTEGER, "TotalControl" INTEGER, "FalsePositive" INTEGER DEFAULT 0, "PatchStatus" TEXT, "PatchedDate" DATE, "TargetDate" DATE, "RemediationOwnerPersonID" INTEGER, "Priority" TEXT, "MatchConfidence" TEXT, "MatchSource" TEXT, "MatchedToken" TEXT);
CREATE TABLE IF NOT EXISTS THREATMODEL (
      ThreatModelID INTEGER PRIMARY KEY,
      ThreatModelGUID TEXT, ThreatModelName TEXT, Description TEXT,
      Methodology TEXT, Status TEXT, Scope TEXT, RiskLevel TEXT, Owner TEXT,
      CreatedDate TEXT, VocabularyID INTEGER, TenantID INTEGER);
CREATE TABLE IF NOT EXISTS THREATMODELASSET (
      ThreatModelAssetID INTEGER PRIMARY KEY,
      ThreatModelID INTEGER, AssetID INTEGER, CreatedDate TEXT, TenantID INTEGER);
CREATE TABLE IF NOT EXISTS THREATMODELTHREAT (
      ThreatModelThreatID INTEGER PRIMARY KEY,
      ThreatModelID INTEGER, Title TEXT, STRIDECategory TEXT, Description TEXT,
      ThreatAgentID INTEGER, AttackPattern TEXT, Likelihood TEXT, Impact TEXT,
      RiskScore TEXT, Status TEXT, CreatedDate TEXT, TenantID INTEGER);
CREATE TABLE IF NOT EXISTS THREATMODELCONTROL (
      ThreatModelControlID INTEGER PRIMARY KEY,
      ThreatModelThreatID INTEGER, ControlID INTEGER, Status TEXT,
      CreatedDate TEXT, TenantID INTEGER);
CREATE TABLE IF NOT EXISTS "ASSETRISKSCORE" (
  "AssetRiskScoreID" INTEGER PRIMARY KEY,
  "Date" TEXT,
  "RiskScore" INTEGER,
  "ConfidenceLevel" INTEGER,
  "TrustLevel" INTEGER
, "AssetID" INTEGER);
CREATE TABLE IF NOT EXISTS "RISKSCORE" (
  "RiskScoreID" INTEGER PRIMARY KEY,
  "RiskScore" INTEGER,
  "Date" TEXT,
  "TenantID" INTEGER,
  "ConfidenceLevel" INTEGER
);
CREATE TABLE IF NOT EXISTS "ASSETTHREAT" ("AssetThreatID" INTEGER PRIMARY KEY, "AssetThreatGUID" TEXT, "AssetID" INTEGER, "ThreatID" INTEGER, "ValidFrom" DATE, "ValidUntil" TEXT, "ConfidenceLevel" INTEGER, "TrustLevel" INTEGER, "Criticity" INTEGER);
CREATE TABLE IF NOT EXISTS "ASSETAUDIT" ("AssetAuditID" INTEGER PRIMARY KEY, "AssetAuditGUID" TEXT, "AssetID" INTEGER, "AuditID" INTEGER, "Date" TEXT, "ValidFrom" DATE, "ValidUntil" TEXT, "ConfidenceLevel" INTEGER);
CREATE TABLE IF NOT EXISTS "ASSETAUDITFINDING" ("AssetAuditFindingID" INTEGER PRIMARY KEY, "AssetAuditFindingGUID" TEXT, "AssetID" INTEGER, "AuditFindingID" INTEGER, "Date" TEXT, "Status" TEXT, "ConfidenceLevel" INTEGER, "Criticity" INTEGER, "ValidFrom" DATE, "ValidUntil" TEXT);
CREATE TABLE IF NOT EXISTS "ASSETOVALDEFINITION" ("AssetOVALDefinitionID" INTEGER PRIMARY KEY, "AssetID" INTEGER, "OVALDefinitionID" INTEGER, "Status" TEXT, "ConfidenceLevel" TEXT, "CreatedDate" TEXT, "ValidFrom" DATE, "ValidUntil" TEXT);
CREATE TABLE IF NOT EXISTS "ASSETFINANCIALVALUE" ("AssetFinancialValueID" INTEGER PRIMARY KEY, "AssetID" INTEGER, "FinancialValue" INTEGER, "Currency" TEXT, "CreatedDate" TEXT, "ValidFrom" DATE, "ValidUntil" TEXT, "PersonID" INTEGER);
CREATE TABLE IF NOT EXISTS "VENDOR" ("VendorID" INTEGER PRIMARY KEY, "VendorName" TEXT, "VendorDescription" TEXT, "VendorURL" TEXT, "CreatedDate" TEXT, "ValidFrom" DATE, "ValidUntil" TEXT, "Source" TEXT, "ConfidenceLevel" TEXT, "TrustLevel" TEXT);
CREATE TABLE IF NOT EXISTS ASSETVULNERABILITYREMEDIATION (
      AssetVulnerabilityRemediationID INTEGER PRIMARY KEY,
      AssetVulnerabilityID INTEGER, RemediationName TEXT, RemediationDescription TEXT,
      CreatedDate TEXT, PersonID INTEGER, ValidFrom DATE, ValidUntil DATE);
CREATE TABLE IF NOT EXISTS APPLICATIONWHITELISTENTRY (
      AppWhitelistEntryID INTEGER PRIMARY KEY,
      ApplicationWhitelistID INTEGER, ApplicationID INTEGER,
      CreatedDate TEXT, ValidFrom DATE, ValidUntil DATE, PersonID INTEGER, ConfidenceLevel TEXT);
CREATE TABLE IF NOT EXISTS APPLICATIONBLACKLISTENTRY (
      AppBlacklistEntryID INTEGER PRIMARY KEY,
      ApplicationBlacklistID INTEGER, ApplicationID INTEGER,
      CreatedDate TEXT, PersonID INTEGER, ValidFrom DATE, ValidUntil DATE, VocabularyID INTEGER);
CREATE TABLE IF NOT EXISTS ASSETTAG (
      AssetTagID INTEGER PRIMARY KEY,
      AssetID INTEGER, TagID INTEGER, Tag TEXT,
      CreatedDate TEXT, ValidFrom DATE, ValidUntil DATE, PersonID INTEGER);
CREATE INDEX IF NOT EXISTS "ix_BIAAUDIT_tenant" ON "BIAAUDIT" ("TenantID");
CREATE INDEX IF NOT EXISTS "ix_BIAENTRY_tenant" ON "BIAENTRY" ("TenantID");
CREATE INDEX IF NOT EXISTS "ix_ASSETVULNERABILITY_tenant" ON "ASSETVULNERABILITY" ("TenantID");
CREATE INDEX IF NOT EXISTS ix_tmasset_model ON THREATMODELASSET(ThreatModelID);
CREATE INDEX IF NOT EXISTS ix_tmthreat_model ON THREATMODELTHREAT(ThreatModelID);
CREATE INDEX IF NOT EXISTS ix_tmcontrol_threat ON THREATMODELCONTROL(ThreatModelThreatID);
CREATE INDEX IF NOT EXISTS "ix_THREATMODEL_tenant" ON "THREATMODEL" ("TenantID");
CREATE INDEX IF NOT EXISTS "ix_THREATMODELASSET_tenant" ON "THREATMODELASSET" ("TenantID");
CREATE INDEX IF NOT EXISTS "ix_THREATMODELTHREAT_tenant" ON "THREATMODELTHREAT" ("TenantID");
CREATE INDEX IF NOT EXISTS "ix_THREATMODELCONTROL_tenant" ON "THREATMODELCONTROL" ("TenantID");
CREATE INDEX IF NOT EXISTS "ix_RISKSCORE_tenant" ON "RISKSCORE" ("TenantID");
CREATE INDEX IF NOT EXISTS ix_assetoval_asset ON ASSETOVALDEFINITION(AssetID);
CREATE INDEX IF NOT EXISTS ix_assetfinval_asset ON ASSETFINANCIALVALUE(AssetID);
CREATE INDEX IF NOT EXISTS ix_vendor_name ON VENDOR(VendorName);
CREATE INDEX IF NOT EXISTS ix_avremediation_av ON ASSETVULNERABILITYREMEDIATION(AssetVulnerabilityID);
CREATE INDEX IF NOT EXISTS ix_appwlentry_wl ON APPLICATIONWHITELISTENTRY(ApplicationWhitelistID);
CREATE INDEX IF NOT EXISTS ix_appblentry_bl ON APPLICATIONBLACKLISTENTRY(ApplicationBlacklistID);
CREATE INDEX IF NOT EXISTS ix_assettag_asset ON ASSETTAG(AssetID);

-- New columns on existing tables
ALTER TABLE "ACCESSRECORD" ADD COLUMN "AssetID" INTEGER;
ALTER TABLE "ACTION" ADD COLUMN "ActionName" TEXT;
ALTER TABLE "APPLICATIONBLACKLIST" ADD COLUMN "AppBlacklistName" TEXT;
ALTER TABLE "APPLICATIONBLACKLIST" ADD COLUMN "AppBlacklistDescription" TEXT;
ALTER TABLE "APPLICATIONBLACKLIST" ADD COLUMN "CreatedDate" TEXT;
ALTER TABLE "APPLICATIONBLACKLIST" ADD COLUMN "PersonID" INTEGER;
ALTER TABLE "APPLICATIONBLACKLIST" ADD COLUMN "ValidFrom" DATE;
ALTER TABLE "APPLICATIONBLACKLIST" ADD COLUMN "ValidUntil" DATE;
ALTER TABLE "APPLICATIONBLACKLIST" ADD COLUMN "ConfidenceLevel" TEXT;
ALTER TABLE "APPLICATIONWHITELIST" ADD COLUMN "AppWhitelistName" TEXT;
ALTER TABLE "APPLICATIONWHITELIST" ADD COLUMN "AppWhitelistDescription" TEXT;
ALTER TABLE "APPLICATIONWHITELIST" ADD COLUMN "CreatedDate" TEXT;
ALTER TABLE "APPLICATIONWHITELIST" ADD COLUMN "ValidFrom" DATE;
ALTER TABLE "APPLICATIONWHITELIST" ADD COLUMN "ValidUntil" DATE;
ALTER TABLE "APPLICATIONWHITELIST" ADD COLUMN "PersonID" INTEGER;
ALTER TABLE "APPLICATIONWHITELIST" ADD COLUMN "VocabularyID" INTEGER;
ALTER TABLE "ASSET" ADD COLUMN "TenantID" INTEGER;
ALTER TABLE "ASSET" ADD COLUMN "AssetImage" TEXT;
ALTER TABLE "ASSET" ADD COLUMN "PublicFacing" INTEGER;
ALTER TABLE "ASSET" ADD COLUMN "PersonID" INTEGER;
ALTER TABLE "ASSET" ADD COLUMN "PlatformID" INTEGER;
ALTER TABLE "ASSET" ADD COLUMN "RiskScore" INTEGER;
ALTER TABLE "ASSET" ADD COLUMN "AssetLocation" TEXT;
ALTER TABLE "ASSET" ADD COLUMN "FinancialValue" DOUBLE PRECISION;
ALTER TABLE "ASSET" ADD COLUMN "Currency" TEXT;
ALTER TABLE "ASSET" ADD COLUMN "HostPII" INTEGER;
ALTER TABLE "ASSET" ADD COLUMN "BusinessValue" INTEGER;
ALTER TABLE "ASSET" ADD COLUMN "SLAResponseHours" DOUBLE PRECISION;
ALTER TABLE "ASSET" ADD COLUMN "SLAResolutionHours" DOUBLE PRECISION;
ALTER TABLE "ASSET" ADD COLUMN "Backed" INTEGER;
ALTER TABLE "ASSET" ADD COLUMN "BackupPlanID" INTEGER;
ALTER TABLE "ASSET" ADD COLUMN "MFAEnabled" INTEGER;
ALTER TABLE "ASSETLOCATION" ADD COLUMN "AssetLocationName" TEXT;
ALTER TABLE "CONFIDENTIALITYLEVEL" ADD COLUMN "ConfidentialityLevelName" TEXT;
ALTER TABLE "CONFIDENTIALITYLEVEL" ADD COLUMN "ConfidentialityLevelDescription" TEXT;
ALTER TABLE "CONTROL" ADD COLUMN "ISO" TEXT;
ALTER TABLE "CONTROL" ADD COLUMN "NIST" TEXT;
ALTER TABLE "CONTROL" ADD COLUMN "CIS" TEXT;
ALTER TABLE "CONTROL" ADD COLUMN "Minimal" TEXT;
ALTER TABLE "CONTROL" ADD COLUMN "Balanced" TEXT;
ALTER TABLE "CONTROL" ADD COLUMN "Comprehensive" TEXT;
ALTER TABLE "CONTROL" ADD COLUMN "D3FEND" TEXT;
ALTER TABLE "CPEFORASSET" ADD COLUMN "TenantID" INTEGER;
ALTER TABLE "NOTIFICATION" ADD COLUMN "Title" TEXT;
ALTER TABLE "NOTIFICATION" ADD COLUMN "Level" TEXT;
ALTER TABLE "NOTIFICATION" ADD COLUMN "Link" TEXT;
ALTER TABLE "NOTIFICATION" ADD COLUMN "Source" TEXT;
ALTER TABLE "NOTIFICATION" ADD COLUMN "IsRead" INTEGER;
ALTER TABLE "NOTIFICATION" ADD COLUMN "ReadDate" TEXT;
ALTER TABLE "NOTIFICATION" ADD COLUMN "TenantID" INTEGER;
-- NOTE: PERSON.email is already declared in the CREATE TABLE "PERSON" above, so a
-- migration ALTER here would fail on a fresh create with "duplicate column name: email"
-- (better-sqlite3 exec() aborts the whole script on the first error, so XORCISM.db was
-- never created on a clean install). The redundant ALTER has been removed intentionally.
ALTER TABLE "POLICY" ADD COLUMN "Status" TEXT;
ALTER TABLE "POLICY" ADD COLUMN "WorkflowStatus" TEXT;
ALTER TABLE "POLICY" ADD COLUMN "Version" TEXT;
ALTER TABLE "POLICY" ADD COLUMN "PolicyReference" TEXT;
ALTER TABLE "POLICY" ADD COLUMN "OwnerPersonID" INTEGER;
ALTER TABLE "POLICY" ADD COLUMN "ApprovedByPersonID" INTEGER;
ALTER TABLE "POLICY" ADD COLUMN "EffectiveDate" DATE;
ALTER TABLE "POLICY" ADD COLUMN "ReviewDate" DATE;
ALTER TABLE "POLICY" ADD COLUMN "Category" TEXT;
ALTER TABLE "POLICY" ADD COLUMN "Framework" TEXT;
ALTER TABLE "POLICY" ADD COLUMN "Clause" TEXT;
ALTER TABLE "POLICY" ADD COLUMN "Classification" TEXT;
ALTER TABLE "POLICY" ADD COLUMN "Language" TEXT;
ALTER TABLE "POLICY" ADD COLUMN "Scope" TEXT;
ALTER TABLE "POLICY" ADD COLUMN "PolicyContent" TEXT;
ALTER TABLE "POLICY" ADD COLUMN "ApprovedDate" DATE;
ALTER TABLE "POLICY" ADD COLUMN "TenantID" INTEGER;
ALTER TABLE "TOOL" ADD COLUMN "Category" TEXT;
ALTER TABLE "TOOL" ADD COLUMN "ToolURL" TEXT;
ALTER TABLE "VOCABULARY" ADD COLUMN "VocabularyDescription" TEXT;
ALTER TABLE "TRAINING" ADD COLUMN "TrainingGUID" TEXT;
ALTER TABLE "TRAINING" ADD COLUMN "TrainingName" TEXT;
ALTER TABLE "TRAINING" ADD COLUMN "TrainingDescription" TEXT;
ALTER TABLE "TRAINING" ADD COLUMN "ValidFrom" DATE;
ALTER TABLE "TRAINING" ADD COLUMN "ValidUntil" TEXT;
ALTER TABLE "TRAINING" ADD COLUMN "Status" TEXT;
ALTER TABLE "TRAININGFORPERSON" ADD COLUMN "DateEnrolled" TEXT;
ALTER TABLE "TRAININGFORPERSON" ADD COLUMN "DateCompleted" TEXT;
ALTER TABLE "TRAININGFORPERSON" ADD COLUMN "Status" TEXT;
ALTER TABLE "TRAININGFORPERSON" ADD COLUMN "ConfidenceLevel" INTEGER;
ALTER TABLE "TRAININGFORPERSON" ADD COLUMN "ValidFrom" DATE;
ALTER TABLE "TRAININGFORPERSON" ADD COLUMN "ValidUntil" TEXT;
ALTER TABLE "TRAININGFORPERSON" ADD COLUMN "TenantID" INTEGER;

-- Pentest tool-chaining ("attack playbooks") — see xorcism_ts/server/chain.ts (ensureChainTables).
-- A playbook is a rule graph; a run executes it from a seed target; each step is a tool run
-- whose facts (ports/services/tech/vulns) trigger the follow-on tools.
CREATE TABLE IF NOT EXISTS "XCHAINPLAYBOOK" (
  "PlaybookID" INTEGER PRIMARY KEY, "PlaybookGUID" TEXT, "Name" TEXT, "Description" TEXT,
  "Definition" TEXT, "Builtin" INTEGER DEFAULT 0, "TenantID" INTEGER, "CreatedDate" TEXT, "CreatedBy" INTEGER);
CREATE TABLE IF NOT EXISTS "XCHAINRUN" (
  "ChainRunID" INTEGER PRIMARY KEY, "ChainRunGUID" TEXT, "AuditID" INTEGER, "PlaybookID" INTEGER,
  "PlaybookName" TEXT, "Name" TEXT, "SeedTarget" TEXT, "SeedKind" TEXT, "Mode" TEXT,
  "Status" TEXT DEFAULT 'running', "TenantID" INTEGER, "CreatedDate" TEXT, "CreatedBy" INTEGER,
  "FinishedDate" TEXT, "StepsTotal" INTEGER DEFAULT 0, "FindingsTotal" INTEGER DEFAULT 0,
  "BackingEngagementID" INTEGER);
CREATE TABLE IF NOT EXISTS "XCHAINSTEP" (
  "ChainStepID" INTEGER PRIMARY KEY, "ChainRunID" INTEGER, "ParentStepID" INTEGER, "Depth" INTEGER,
  "Connector" TEXT, "Target" TEXT, "RuleID" TEXT, "RuleLabel" TEXT, "JobID" INTEGER,
  "Status" TEXT DEFAULT 'pending', "FactsJSON" TEXT, "Summary" TEXT, "CreatedDate" TEXT, "FinishedDate" TEXT);
CREATE INDEX IF NOT EXISTS ix_chainrun_audit ON XCHAINRUN(AuditID);
CREATE INDEX IF NOT EXISTS ix_chainstep_run ON XCHAINSTEP(ChainRunID);

-- Attack-surface drift snapshots — see xorcism_ts/server/drift.ts (ensureDriftTable).
CREATE TABLE IF NOT EXISTS "XSURFACESNAPSHOT" (
  "SnapshotID" INTEGER PRIMARY KEY, "TenantID" INTEGER, "CreatedDate" TEXT, "CreatedBy" INTEGER,
  "AssetCount" INTEGER, "ExposedCount" INTEGER, "Payload" TEXT);
CREATE INDEX IF NOT EXISTS ix_surfsnap_tenant ON XSURFACESNAPSHOT(TenantID, SnapshotID);

-- ASSET ↔ CONTROL mapping (which security controls apply to which asset) — see ensureAssetColumns().
CREATE TABLE IF NOT EXISTS "ASSETCONTROL" (
  "AssetControlID" INTEGER PRIMARY KEY,
  "AssetControlGUID" TEXT,
  "AssetID" INTEGER,
  "ControlID" INTEGER,
  "CreatedDate" DATE,
  "PersonID" INTEGER,
  "Status" TEXT,
  "ValidFrom" DATE,
  "ValidUntil" DATE,
  "ConfidenceLevel" TEXT,
  "ConfidenceReasonID" INTEGER,
  "TenantID" INTEGER);
CREATE INDEX IF NOT EXISTS ix_assetcontrol_asset ON "ASSETCONTROL"("AssetID");
CREATE INDEX IF NOT EXISTS ix_assetcontrol_control ON "ASSETCONTROL"("ControlID");

-- Backup & recovery plan for an ASSET (referenced by ASSET.BackupPlanID).
CREATE TABLE IF NOT EXISTS "BACKUPPLAN" (
  "BackupPlanID" INTEGER PRIMARY KEY,
  "BackupPlanGUID" TEXT,
  "BackupPlanName" TEXT,
  "Description" TEXT,
  "AssetID" INTEGER,
  "Type" TEXT,
  "Frequency" INTEGER,
  "FrequencyUnit" TEXT,
  "LastRun" DATE,
  "LastTested" DATE,
  "RetentionDays" INTEGER,
  "StorageLocation" TEXT,
  "RPOHours" DOUBLE PRECISION,
  "RTOHours" DOUBLE PRECISION,
  "PersonID" INTEGER,
  "Status" TEXT,
  "CreatedDate" DATE,
  "ValidFrom" DATE,
  "ValidUntil" DATE,
  "TenantID" INTEGER);
CREATE INDEX IF NOT EXISTS ix_backupplan_asset ON "BACKUPPLAN"("AssetID");

-- Identity & Access Management (IAM) registry: human + non-human identities.
CREATE TABLE IF NOT EXISTS "IDENTITY" (
  "IdentityID" INTEGER PRIMARY KEY,
  "IdentityGUID" TEXT,
  "IdentityName" TEXT,
  "IdentityType" TEXT,
  "IdentityClass" TEXT,
  "Description" TEXT,
  "Status" TEXT,
  "OwnerPersonID" INTEGER,
  "AssetID" INTEGER,
  "Provider" TEXT,
  "ExternalID" TEXT,
  "PrivilegeLevel" TEXT,
  "Environment" TEXT,
  "CredentialType" TEXT,
  "MFAEnabled" TEXT,
  "LastRotatedDate" DATE,
  "ExpiryDate" DATE,
  "LastUsedDate" DATE,
  "RiskLevel" TEXT,
  "CreatedDate" DATE,
  "ModifiedDate" DATE,
  "TenantID" INTEGER);
CREATE INDEX IF NOT EXISTS ix_identity_owner ON "IDENTITY"("OwnerPersonID");
CREATE INDEX IF NOT EXISTS ix_identity_asset ON "IDENTITY"("AssetID");
CREATE INDEX IF NOT EXISTS ix_identity_type ON "IDENTITY"("IdentityType");

-- Junction: human identity <-> PERSON (a person may hold several identities).
CREATE TABLE IF NOT EXISTS "IDENTITYPERSON" (
  "IdentityPersonID" INTEGER PRIMARY KEY,
  "IdentityPersonGUID" TEXT,
  "IdentityID" INTEGER,
  "PersonID" INTEGER,
  "RelationshipType" TEXT,
  "CreatedDate" DATE,
  "TenantID" INTEGER);
CREATE INDEX IF NOT EXISTS ix_identityperson_identity ON "IDENTITYPERSON"("IdentityID");
CREATE INDEX IF NOT EXISTS ix_identityperson_person ON "IDENTITYPERSON"("PersonID");

-- NIST SP 800-53 control management (ensureControlImplementationTables, control53.ts).
-- Baseline membership + rich text on the (shared) 800-53 catalogue rows — global NIST facts, filled
-- by import_nist80053_baselines.py (baselines) and import_nist80053_details.py (statement/guidance…).
ALTER TABLE "CONTROL" ADD COLUMN "BaselineLow" INTEGER;
ALTER TABLE "CONTROL" ADD COLUMN "BaselineModerate" INTEGER;
ALTER TABLE "CONTROL" ADD COLUMN "BaselineHigh" INTEGER;
ALTER TABLE "CONTROL" ADD COLUMN "BaselinePrivacy" INTEGER;
ALTER TABLE "CONTROL" ADD COLUMN "Statement" TEXT;
ALTER TABLE "CONTROL" ADD COLUMN "Guidance" TEXT;
ALTER TABLE "CONTROL" ADD COLUMN "Params" TEXT;
ALTER TABLE "CONTROL" ADD COLUMN "RelatedControls" TEXT;
-- Per-tenant implementation status + SP 800-53A assessment of an 800-53 control (one per control per tenant).
CREATE TABLE IF NOT EXISTS "CONTROLIMPLEMENTATION" (
  "ControlImplementationID" INTEGER PRIMARY KEY,
  "ControlImplementationGUID" TEXT,
  "ControlID" INTEGER,
  "Status" TEXT,
  "Responsibility" TEXT,
  "Narrative" TEXT,
  "OwnerPersonID" INTEGER,
  "TargetDate" DATE,
  "LastReviewedDate" TEXT,
  "AssessmentResult" TEXT,
  "AssessedDate" TEXT,
  "AssessorPersonID" INTEGER,
  "AssessmentRemarks" TEXT,
  "CreatedDate" TEXT,
  "TenantID" INTEGER);
CREATE INDEX IF NOT EXISTS ix_ctrlimpl_control ON "CONTROLIMPLEMENTATION"("ControlID");
CREATE INDEX IF NOT EXISTS ix_ctrlimpl_tenant ON "CONTROLIMPLEMENTATION"("TenantID");
-- Crosswalk: an 800-53 control mapped to another framework object (ATT&CK technique, D3FEND, CSF…).
-- Global reference facts, filled by import_attack_80053_mappings.py.
CREATE TABLE IF NOT EXISTS "CONTROLMAPPING" (
  "MappingID" INTEGER PRIMARY KEY,
  "MappingGUID" TEXT,
  "ControlID" INTEGER,
  "Framework" TEXT,
  "ExternalID" TEXT,
  "ExternalName" TEXT,
  "Relationship" TEXT,
  "Source" TEXT,
  "CreatedDate" TEXT);
CREATE INDEX IF NOT EXISTS ix_ctrlmap_control ON "CONTROLMAPPING"("ControlID");
CREATE INDEX IF NOT EXISTS ix_ctrlmap_fw ON "CONTROLMAPPING"("Framework");
-- Plan of Action & Milestones — a control deficiency tracked to closure (per tenant).
CREATE TABLE IF NOT EXISTS "CONTROLPOAM" (
  "PoamID" INTEGER PRIMARY KEY,
  "PoamGUID" TEXT,
  "ControlID" INTEGER,
  "Title" TEXT,
  "WeaknessDescription" TEXT,
  "Severity" TEXT,
  "Status" TEXT,
  "RemediationPlan" TEXT,
  "Milestones" TEXT,
  "OwnerPersonID" INTEGER,
  "ScheduledCompletionDate" DATE,
  "ActualCompletionDate" DATE,
  "CreatedDate" TEXT,
  "TenantID" INTEGER);
CREATE INDEX IF NOT EXISTS ix_ctrlpoam_control ON "CONTROLPOAM"("ControlID");
CREATE INDEX IF NOT EXISTS ix_ctrlpoam_tenant ON "CONTROLPOAM"("TenantID");

-- Backup/restore TEST log against a BACKUPPLAN (manage backup testing: restore / integrity / failover).
CREATE TABLE IF NOT EXISTS "BACKUPTEST" (
  "BackupTestID" INTEGER PRIMARY KEY,
  "BackupTestGUID" TEXT,
  "BackupPlanID" INTEGER,
  "AssetID" INTEGER,
  "TestDate" DATE,
  "TestType" TEXT,
  "Result" TEXT,
  "RTOAchievedHours" DOUBLE PRECISION,
  "RPOAchievedHours" DOUBLE PRECISION,
  "DataIntegrityVerified" INTEGER,
  "TestedByPersonID" INTEGER,
  "Findings" TEXT,
  "NextTestDue" DATE,
  "Notes" TEXT,
  "CreatedDate" DATE,
  "TenantID" INTEGER);
CREATE INDEX IF NOT EXISTS ix_backuptest_plan ON "BACKUPTEST"("BackupPlanID");
CREATE INDEX IF NOT EXISTS ix_backuptest_tenant ON "BACKUPTEST"("TenantID");

-- Adversary Opportunity Index (AOI) — STOCK/FLOW snapshot history + the item-level debt ledger.
CREATE TABLE IF NOT EXISTS "THREATDEBTSNAPSHOT" (
  "SnapshotID" INTEGER PRIMARY KEY,
  "TenantID" INTEGER,
  "CreatedDate" TEXT,
  "AOI" INTEGER,
  "RawDebt" DOUBLE PRECISION,
  "Paths" INTEGER);
CREATE TABLE IF NOT EXISTS "THREATDEBTLEDGER" (
  "LedgerID" INTEGER PRIMARY KEY,
  "TenantID" INTEGER,
  "ItemKey" TEXT,
  "Source" TEXT,
  "Label" TEXT,
  "Debt" DOUBLE PRECISION,
  "OpenedDate" TEXT,
  "LastSeenDate" TEXT,
  "ClosedDate" TEXT,
  "CtemExposureID" INTEGER);
CREATE INDEX IF NOT EXISTS IX_TDLEDGER_OPEN ON "THREATDEBTLEDGER"("TenantID","ClosedDate");

-- Cyber Insurance Readiness — the tenant's policy record (carrier / limit / renewal).
CREATE TABLE IF NOT EXISTS "CYBERINSURANCEPOLICY" (
  "PolicyID" INTEGER PRIMARY KEY,
  "TenantID" INTEGER,
  "Carrier" TEXT,
  "PolicyNumber" TEXT,
  "CoverageLimit" DOUBLE PRECISION,
  "Retention" DOUBLE PRECISION,
  "Premium" DOUBLE PRECISION,
  "Currency" TEXT,
  "RenewalDate" TEXT,
  "Status" TEXT,
  "Notes" TEXT,
  "CreatedDate" TEXT,
  "UpdatedDate" TEXT);

-- AI runtime anomaly detection — per-AISYSTEM usage telemetry (daily rollups) + detections.
CREATE TABLE IF NOT EXISTS "AIUSAGE" (
  "UsageID" INTEGER PRIMARY KEY, "AISystemID" INTEGER, "TenantID" INTEGER, "Day" TEXT,
  "Requests" INTEGER, "TokensIn" INTEGER, "TokensOut" INTEGER, "Refusals" INTEGER,
  "InjectionAttempts" INTEGER, "DistinctUsers" INTEGER, "CreatedDate" TEXT);
CREATE INDEX IF NOT EXISTS ix_aiusage_sys ON "AIUSAGE"("AISystemID","Day");
CREATE TABLE IF NOT EXISTS "AIDETECTION" (
  "DetectionID" INTEGER PRIMARY KEY, "AISystemID" INTEGER, "TenantID" INTEGER, "Day" TEXT,
  "Type" TEXT, "Severity" TEXT, "Detail" TEXT, "Evidence" TEXT, "Status" TEXT DEFAULT 'open', "CreatedDate" TEXT);
CREATE INDEX IF NOT EXISTS ix_aidet_tenant ON "AIDETECTION"("TenantID");

-- SLSA supply-chain level tracker — per-artifact build-integrity attributes (computed level L0-L3).
CREATE TABLE IF NOT EXISTS "SLSAARTIFACT" (
  "ArtifactID" INTEGER PRIMARY KEY, "ArtifactGUID" TEXT, "ProjectName" TEXT, "Repo" TEXT, "BuildPlatform" TEXT,
  "ProvenanceGenerated" INTEGER DEFAULT 0, "ProvenanceSigned" INTEGER DEFAULT 0, "BuildHosted" INTEGER DEFAULT 0,
  "Isolated" INTEGER DEFAULT 0, "Hermetic" INTEGER DEFAULT 0, "TwoPersonReviewed" INTEGER DEFAULT 0,
  "ProvenanceVerified" INTEGER DEFAULT 0, "Notes" TEXT, "TenantID" INTEGER, "CreatedDate" TEXT);
CREATE INDEX IF NOT EXISTS ix_slsa_tenant ON "SLSAARTIFACT"("TenantID");

-- LLM Application Penetration Test methodology (llmpentest.ts): OWASP-LLM-2025 engagement + per-test-case tracker
CREATE TABLE IF NOT EXISTS "LLMPENTEST" (
  "EngagementID" INTEGER PRIMARY KEY, "EngagementGUID" TEXT, "AISystemID" INTEGER, "SystemName" TEXT,
  "Title" TEXT, "Scope" TEXT, "Tester" TEXT, "Status" TEXT, "Phase" INTEGER,
  "ReadinessScore" INTEGER, "Coverage" INTEGER, "Grade" TEXT, "Tested" INTEGER, "Passed" INTEGER, "Failed" INTEGER,
  "OpenFindings" INTEGER, "CreatedDate" TEXT, "UpdatedDate" TEXT, "TenantID" INTEGER);
CREATE TABLE IF NOT EXISTS "LLMPENTESTCASE" (
  "CaseID" INTEGER PRIMARY KEY, "EngagementID" INTEGER, "Owasp" TEXT, "Category" TEXT, "Mode" TEXT,
  "TestID" TEXT, "TestName" TEXT, "Technique" TEXT, "Status" TEXT, "Severity" TEXT, "Source" TEXT,
  "Finding" TEXT, "Evidence" TEXT, "CreatedDate" TEXT, "UpdatedDate" TEXT);
CREATE INDEX IF NOT EXISTS ix_llmpt_tenant ON "LLMPENTEST"("TenantID");
CREATE INDEX IF NOT EXISTS ix_llmpt_sys ON "LLMPENTEST"("AISystemID");
CREATE INDEX IF NOT EXISTS ix_llmptcase_eng ON "LLMPENTESTCASE"("EngagementID");

-- AI Operations (aiskills.ts): governed Skills/Prompt library + AI activity provenance log + agent handover routing
CREATE TABLE IF NOT EXISTS "AISKILL" (
  "SkillID" INTEGER PRIMARY KEY, "SkillGUID" TEXT, "Kind" TEXT, "Name" TEXT, "Description" TEXT, "Tags" TEXT,
  "Content" TEXT, "Source" TEXT, "Enabled" INTEGER DEFAULT 1, "Visibility" TEXT, "Version" INTEGER DEFAULT 1,
  "UsedCount" INTEGER DEFAULT 0, "Category" TEXT, "CreatedDate" TEXT, "UpdatedDate" TEXT, "TenantID" INTEGER);
CREATE TABLE IF NOT EXISTS "AIACTIVITY" (
  "ActivityID" INTEGER PRIMARY KEY, "ActivityGUID" TEXT, "Actor" TEXT, "Action" TEXT, "Model" TEXT, "Provider" TEXT,
  "SkillID" INTEGER, "EntityType" TEXT, "EntityKey" TEXT, "Summary" TEXT, "TokensIn" INTEGER, "TokensOut" INTEGER,
  "Outcome" TEXT, "CreatedDate" TEXT, "TenantID" INTEGER);
CREATE TABLE IF NOT EXISTS "AIHANDOVER" (
  "RouteID" INTEGER PRIMARY KEY, "RouteGUID" TEXT, "FromAgent" TEXT, "ToAgent" TEXT, "Type" TEXT, "Trigger" TEXT,
  "Enabled" INTEGER DEFAULT 1, "Notes" TEXT, "CreatedDate" TEXT, "TenantID" INTEGER);
CREATE INDEX IF NOT EXISTS ix_aiskill_tenant ON "AISKILL"("TenantID");
CREATE INDEX IF NOT EXISTS ix_aiactivity_tenant ON "AIACTIVITY"("TenantID","ActivityID");
CREATE INDEX IF NOT EXISTS ix_aihandover_tenant ON "AIHANDOVER"("TenantID");
