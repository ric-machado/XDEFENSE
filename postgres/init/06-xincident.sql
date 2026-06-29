-- PostgreSQL DDL — schema: xincident
-- Gerado por scripts/pg_convert.sh a partir de XINCIDENT_sqlite.sql
-- NÃO edite manualmente; re-execute o script para regenerar.

SET search_path = "xincident", public;

CREATE TABLE IF NOT EXISTS "INCIDENT" (
	"IncidentID" INTEGER NOT NULL,
	"source_id" TEXT NULL,
	"IncidentCategoryID" INTEGER NULL,
	"publication_status" TEXT NULL,
	"datetime_reported" TEXT NULL,
	"start_datetime" TEXT NULL,
	"end_datetime" TEXT NULL,
	"detect_datetime" TEXT NULL,
	"confirmed" INTEGER NULL,
	"security_compromise" TEXT NULL,
	"exercise" INTEGER NULL,
	"ProjectID" INTEGER NULL,
	"exercise_name" TEXT NULL,
	"import_datetime" TEXT NULL,
	"BLOB" TEXT NULL,
	"IncidentStatusID" INTEGER NULL,
	"status" TEXT NULL,
	"status_description" TEXT NULL,
	"synopsis" TEXT NULL,
	"summary" TEXT NULL,
	"impact" TEXT NULL,
	"confidence" TEXT NULL,
	"notes" TEXT NULL,
	"locations_affected" INTEGER NULL,
	"IncidentDiscoveryMethodID" INTEGER NULL,
	"control_failure" TEXT NULL,
	"corrective_action" TEXT NULL,
	"AlternativeID" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "INCIDENTCATEGORY" (
	"IncidentCategoryID" INTEGER NOT NULL,
	"IncidentCategoryGUID" TEXT NULL,
	"CategoryID" INTEGER NULL,
	"IncidentCategoryName" TEXT NOT NULL,
	"IncidentCategoryDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"EnumerationVersionID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "INCIDENTCATEGORYDESCRIPTION" (
	"IncidentCategoryDescriptionID" INTEGER NOT NULL,
	"IncidentCategoryID" INTEGER NOT NULL,
	"IncidentCategoryGUID" TEXT NULL,
	"DescriptionID" INTEGER NOT NULL,
	"DescriptionGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "INCIDENTCATEGORYRACIMATRIX" (
	"IncidentCategoryRACIMatrixID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "INCIDENTCOMPROMISE" (
	"IncidentCompromiseID" INTEGER NOT NULL,
	"IncidentCompromiseGUID" TEXT NULL,
	"SecurityCompromise" TEXT NOT NULL,
	"VocabularyID" INTEGER NULL,
	"documentation" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "INCIDENTDISCOVERYMETHOD" (
	"IncidentDiscoveryMethodID" INTEGER NOT NULL,
	"DiscoveryMethodID" INTEGER NULL,
	"IncidentDiscoveryMethodName" TEXT NOT NULL,
	"IncidentDiscoveryMethodDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "INCIDENTEFFECT" (
	"IncidentEffectID" INTEGER NOT NULL,
	"IncidentEffectGUID" TEXT NULL,
	"PossibleEffect" TEXT NOT NULL,
	"IncidentEffectDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"EnumerationVersionID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "INCIDENTFORASSET" (
	"AssetIncidentID" INTEGER NOT NULL,
	"AssetIncidentGUID" TEXT NULL,
	"AssetID" INTEGER NOT NULL,
	"AssetGUID" TEXT NULL,
	"AssetIncidentRelationship" TEXT NULL,
	"AssetIncidentDescription" TEXT NULL,
	"IncidentID" INTEGER NOT NULL,
	"IncidentGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"notes" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "INCIDENTFORINCIDENT" (
	"IncidentRefID" INTEGER NOT NULL,
	"relationshiptype" TEXT NULL,
	"relationshipscope" TEXT NULL,
	"IncidentSubjectID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "INCIDENTFORPERSON" (
	"IncidentID" INTEGER NOT NULL,
	"PersonID" INTEGER NOT NULL,
	"relationshiptype" TEXT NULL,
	"notes" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "INCIDENTFORTHREATCAMPAIGN" (
	"IncidentID" INTEGER NOT NULL,
	"CampaignID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "INCIDENTID" (
	"IncidentIDID" INTEGER NOT NULL,
	"name" TEXT NOT NULL,
	"instance" TEXT NULL,
	"restriction" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "INCIDENTIMPACT" (
	"IncidentImpactID" INTEGER NOT NULL,
	"IncidentID" INTEGER NOT NULL,
	"IncidentImpactRatingID" INTEGER NULL,
	"IncidentImpactLossVarietyID" INTEGER NULL,
	"IncidentImpactLossRatingID" INTEGER NULL,
	"overall_amount" DOUBLE PRECISION NULL,
	"overall_min_amount" DOUBLE PRECISION NULL,
	"overall_max_amount" DOUBLE PRECISION NULL,
	"iso_currency_code" TEXT NULL,
	"notes" TEXT NULL,
	"DateCreated" TEXT NULL,
	"BLOB" TEXT NULL,
	"IncidentImpactAvailabilityVarietyID" INTEGER NULL,
	"IncidentImpactAvailabilityDurationLossID" INTEGER NULL,
	"IncidentImpactIntegrityVarietyID" INTEGER NULL,
	"IncidentImpactConfidentialityStateID" INTEGER NULL,
	"IncidentImpactConfidentialityVarietyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "INCIDENTIMPACTAVAILABILITYLOSSDURATION" (
	"IncidentImpactAvailabilityLossDurationID" INTEGER NOT NULL,
	"LossDuration" TEXT NOT NULL,
	"LossDurationDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "INCIDENTIMPACTAVAILABILITYVARIETY" (
	"IncidentImpactAvailabilityVarietyID" INTEGER NOT NULL,
	"IncidentImpactAvailabilityVarietyName" TEXT NULL,
	"IncidentImpactAvailabilityVarietyDescription" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "INCIDENTIMPACTCONFIDENTIALITYSTATE" (
	"IncidentImpactConfidentialityStateID" INTEGER NOT NULL,
	"IncidentImpactConfidentialityStateName" TEXT NOT NULL,
	"IncidentImpactConfidentialityStateDescription" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "INCIDENTIMPACTCONFIDENTIALITYVARIETY" (
	"IncidentImpactConfidentialityVarietyID" INTEGER NOT NULL,
	"IncidentImpactConfidentialityVarietyName" TEXT NOT NULL,
	"IncidentImpactConfidentialityVarietyDescription" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "INCIDENTIMPACTINTEGRITYVARIETY" (
	"IncidentImpactIntegrityVarietyID" INTEGER NOT NULL,
	"IncidentImpactIntegrityVarietyName" TEXT NOT NULL,
	"IncidentImpactIntegrityVarietyDescription" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "INCIDENTIMPACTLOSSPROPERTY" (
	"IncidentImpactLossPropertyID" INTEGER NOT NULL,
	"IncidentImpactLossPropertyName" TEXT NOT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "INCIDENTIMPACTLOSSRATING" (
	"IncidentImpactLossRatingID" INTEGER NOT NULL,
	"IncidentImpactLossRatingName" TEXT NOT NULL,
	"IncidentImpactLossRatingDescription" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "INCIDENTIMPACTLOSSVARIETY" (
	"IncidentImpactLossVarietyID" INTEGER NOT NULL,
	"IncidentImpactLossVarietyName" TEXT NOT NULL,
	"IncidentImpactLossVarietyDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "INCIDENTIMPACTRATING" (
	"IncidentImpactRatingID" INTEGER NOT NULL,
	"IncidentImpactRatingName" TEXT NOT NULL,
	"IncidentImpactRatingDescription" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "INCIDENTINQUIRY" (
	"IncidentIQID" INTEGER NOT NULL,
	"IncidentInquiryIntentID" INTEGER NULL,
	"purpose" TEXT NOT NULL,
	"CreatedDate" TEXT NULL,
	"format" TEXT NULL,
	"BLOB" TEXT NULL,
	"lang" TEXT NULL,
	"restriction" TEXT NULL,
	"IODEFversion" TEXT NULL,
	"formatid" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "INCIDENTINQUIRYINTENT" (
	"IncidentInquiryIntentID" INTEGER NOT NULL,
	"PackageIntent" TEXT NOT NULL,
	"PackageIntentDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "INCIDENTIOC" (
	"IncidentIOCID" INTEGER NOT NULL,
	"IncidentID" INTEGER NOT NULL,
	"comment" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"IncidentIOCTypeID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "INCIDENTIOCFORTHREATCAMPAIGN" (
	"IncidentIOCID" INTEGER NOT NULL,
	"ThreatCampaignID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "INCIDENTIOCTYPE" (
	"IncidentIOCTypeID" INTEGER NOT NULL,
	"IndicatorTypeName" TEXT NOT NULL,
	"IndicatorTypeDocumentaion" TEXT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "INCIDENTIOCTYPEFORINDICATOR" (
	"IncidentIOCTypeID" INTEGER NOT NULL,
	"IndicatorID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "INCIDENTREGISTRYHANDLE" (
	"IncidentRegistryHandleID" INTEGER NOT NULL,
	"registry" TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS "INCIDENTSTATUS" (
	"IncidentStatusID" INTEGER NOT NULL,
	"IncidentStatusGUID" TEXT NULL,
	"IncidentStatusName" TEXT NOT NULL,
	"IncidentStatusDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"EnumerationVersionID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "INCIDENTTIMELINE" (
	"IncidentTimelineID" INTEGER NOT NULL,
	"IncidentID" INTEGER NOT NULL,
	"investigationDate" TEXT NULL,
	"incidentDate" TEXT NULL,
	"TimetoCompromiseValue" INTEGER NULL,
	"TimetoCompromiseUnit" TEXT NULL,
	"TimetoExfiltrationValue" INTEGER NULL,
	"TimetoExfiltrationUnit" TEXT NULL,
	"TimetoDiscoveryValue" INTEGER NULL,
	"TimetoDiscoveryUnit" TEXT NULL,
	"TimetoContainmentValue" INTEGER NULL,
	"TimetoContainmentUnit" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "INCIDENTTIMELINEUNIT" (
	"IncidentTimelineUnitID" INTEGER NOT NULL,
	"TimeUnit" TEXT NOT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ALERT"(
	"AlertID" INTEGER PRIMARY KEY,
	"AlertGUID" TEXT NULL,
	"AlertName" TEXT NULL,
	"AlertDescription" TEXT NULL,
	"Severity" TEXT NULL,
	"Status" TEXT NULL,
	"Category" TEXT NULL,
	"AttackTechniques" TEXT NULL,
	"RecommendedActions" TEXT NULL,
	"ServiceSource" TEXT NULL DEFAULT 'XORCISM',
	"DetectionSource" TEXT NULL DEFAULT 'Manual',
	"Classification" TEXT NULL,
	"Determination" TEXT NULL,
	"AssignedTo" TEXT NULL,
	"Tags" TEXT NULL,
	"Duration" DOUBLE PRECISION NULL,
	"PersonID" INTEGER NULL,
	"CreatedDate" DATE NULL,
	"IncidentID" INTEGER NULL,
	"TenantID" INTEGER NULL
);

CREATE INDEX IF NOT EXISTS ix_alert_incident ON ALERT(IncidentID)

CREATE TABLE IF NOT EXISTS "ALERTFORASSET"(
	"AssetAlertID" INTEGER PRIMARY KEY,
	"AlertID" INTEGER NULL,
	"AssetID" INTEGER NULL,
	"Relationship" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"TenantID" INTEGER NULL,
	UNIQUE("AlertID", "AssetID")
);

CREATE INDEX IF NOT EXISTS ix_alertforasset_alert ON ALERTFORASSET(AlertID)

CREATE TABLE IF NOT EXISTS "ALERTEVIDENCE"(
	"AlertEvidenceID" INTEGER PRIMARY KEY,
	"AlertID" INTEGER NULL,
	"EvidenceType" TEXT NULL,
	"EvidenceValue" TEXT NULL,
	"EvidenceDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"TenantID" INTEGER NULL
);

CREATE INDEX IF NOT EXISTS ix_alertevidence_alert ON ALERTEVIDENCE(AlertID)

-- Regulatory incident-reporting obligations — tracked submissions per incident × regulator × stage
-- (DORA / NIS2 / GDPR / CRA reporting deadlines).
CREATE TABLE IF NOT EXISTS "REGINCIDENTREPORT" (
  "ReportID" INTEGER PRIMARY KEY, "IncidentID" INTEGER, "TenantID" INTEGER, "Regulator" TEXT, "Stage" TEXT,
  "DueDate" TEXT, "Status" TEXT DEFAULT 'pending', "SubmittedDate" TEXT, "Reference" TEXT, "Notes" TEXT, "CreatedDate" TEXT);
CREATE INDEX IF NOT EXISTS ix_regincrep_inc ON "REGINCIDENTREPORT"("IncidentID");
CREATE INDEX IF NOT EXISTS ix_regincrep_tenant ON "REGINCIDENTREPORT"("TenantID");

-- Lightweight per-incident evidence file attachments. File bytes live in the content-addressed
-- blob store (XORCISM.FILEBLOB, deduped by Sha256); this table is the per-incident registry only.
-- For chain-of-custody evidence use CERT Operations (forensic cases). Tenant-scoped.
CREATE TABLE IF NOT EXISTS "INCIDENTEVIDENCE" (
  "EvidenceID" INTEGER PRIMARY KEY, "EvidenceGUID" TEXT, "IncidentID" INTEGER, "FileName" TEXT, "ContentType" TEXT,
  "Sha256" TEXT, "Size" INTEGER, "Description" TEXT, "UploadedByUserID" INTEGER, "UploadedByName" TEXT,
  "CreatedDate" TEXT, "TenantID" INTEGER);
CREATE INDEX IF NOT EXISTS ix_incevidence_inc ON "INCIDENTEVIDENCE"("IncidentID");
CREATE INDEX IF NOT EXISTS ix_incevidence_tenant ON "INCIDENTEVIDENCE"("TenantID");
