-- PostgreSQL DDL — schema: xattack
-- Gerado por scripts/pg_convert.sh a partir de XATTACK_sqlite.sql
-- NÃO edite manualmente; re-execute o script para regenerar.

SET search_path = "xattack", public;

CREATE TABLE IF NOT EXISTS "ATTACKCATEGORY" (
	"AttackCategoryID" INTEGER NOT NULL,
	"AttackCategoryGUID" TEXT NULL,
	"CategoryID" INTEGER NULL,
	"CategoryGUID" TEXT NULL,
	"AttackCategoryName" TEXT NULL,
	"AttackCategoryDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"VocabularyGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"CreationObjectGUID" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ATTACKCATEGORYREFERENCE" (
	"AttackCategoryReferenceID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "ATTACKCONSEQUENCE" (
	"AttackConsequenceID" INTEGER NOT NULL,
	"Consequence" TEXT NULL,
	"ConsequenceNote" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ATTACKCONSEQUENCETAG" (
	"AttackConsequenceTagID" INTEGER NOT NULL,
	"AttackConsequenceID" INTEGER NULL,
	"TagID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ATTACKEXAMPLE" (
	"AttackExampleID" INTEGER NOT NULL,
	"AttackExampleGUID" TEXT NULL,
	"AttackExampleName" TEXT NULL,
	"AttackExampleDescription" TEXT NOT NULL,
	"VocabularyID" INTEGER NULL,
	"AttackExampleVocabularyID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ATTACKEXAMPLEFORATTACKPATTERN" (
	"AttackExampleForAttackPatternID" INTEGER NOT NULL,
	"AttackExampleID" INTEGER NOT NULL,
	"AttackExampleGUID" TEXT NULL,
	"AttackPatternID" INTEGER NOT NULL,
	"AttackPatternGUID" TEXT NULL,
	"capec_id" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ATTACKEXECUTIONFLOW" (
	"AttackExecutionFlowID" INTEGER NOT NULL,
	"AttackPatternID" INTEGER NULL,
	"capec_id" TEXT NULL,
	"AttackExecutionFlowGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ATTACKEXECUTIONFLOWPHASE" (
	"AttackExecutionFlowPhaseID" INTEGER NOT NULL,
	"AttackExecutionFlowID" INTEGER NULL,
	"AttackExecutionFlowGUID" TEXT NULL,
	"AttackPhaseID" INTEGER NULL,
	"AttackPhaseGUID" TEXT NULL,
	"AttackPhaseOrder" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "ATTACKMETHOD" (
	"AttackMethodID" INTEGER NOT NULL,
	"AttackMethodGUID" TEXT NULL,
	"AttackMethodTitle" TEXT NOT NULL,
	"AttackMethodDescription" TEXT NULL,
	"SourceID" INTEGER NULL,
	"SourceGUID" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"VocabularyGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"CreationObjectGUID" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ATTACKMETHODDESCRIPTION" (
	"AttackMethodDescriptionID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "ATTACKMETHODFORATTACKPATTERN" (
	"AttackPatternMethodID" INTEGER NOT NULL,
	"AttackMethodID" INTEGER NOT NULL,
	"AttackPatternID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ATTACKMETHODREFERENCE" (
	"AttackMethodReferenceID" INTEGER NOT NULL,
	"AttackMethodID" INTEGER NULL,
	"ReferenceID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ATTACKMETHODTAG" (
	"AttackMethodTagID" INTEGER NOT NULL,
	"AttackMethodID" INTEGER NULL,
	"TagID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ATTACKPATTERN" (
	"AttackPatternID" INTEGER NOT NULL,
	"AttackPatternGUID" TEXT NULL,
	"capec_id" TEXT NULL,
	"category" INTEGER NULL,
	"AttackPatternName" TEXT NULL,
	"AttackPatternDescription" TEXT NULL,
	"PatternAbstraction" TEXT NULL,
	"PatternCompleteness" TEXT NULL,
	"PatternStatus" TEXT NULL,
	"TypicalSeverity" TEXT NULL,
	"Payload_Activation_Impact" TEXT NULL,
	"SourceID" INTEGER NULL,
	"SourceGUID" TEXT NULL,
	"RepositoryID" INTEGER NULL,
	"RepositoryGUID" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"VocabularyGUID" TEXT NULL,
	"BLOB" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"CreationObjectGUID" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ATTACKPATTERNATTACKCONSEQUENCE" (
	"AttackPatternAttackConsequenceID" INTEGER NOT NULL,
	"AttackPatternID" INTEGER NULL,
	"AttackPatternGUID" TEXT NULL,
	"CAPECAttackConsequenceOrder" INTEGER NULL,
	"AttackConsequenceID" INTEGER NULL,
	"Consequence_Note" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "ATTACKPATTERNATTACKCONSEQUENCESCOPE" (
	"AttackPatternAttackConsequenceScopeID" INTEGER NOT NULL,
	"AttackPatternAttackConsequenceID" INTEGER NULL,
	"AttackScopeID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "ATTACKPATTERNATTACKTECHNICALIMPACT" (
	"AttackPatternAttackTechnicalImpactID" INTEGER NOT NULL,
	"AttackPatternAttackConsequenceID" INTEGER NULL,
	"AttackTechnicalImpactID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ATTACKPATTERNCWE" (
	"AttackPatternCWEID" INTEGER NOT NULL,
	"AttackPatternID" INTEGER NULL,
	"WeaknessRelationship" TEXT NULL,
	"CWEID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ATTACKPATTERNFORTHREATACTORTTP" (
	"AttackPatternForThreatActorTTPID" INTEGER NOT NULL,
	"AttackPatternID" INTEGER NOT NULL,
	"ThreatActorTTPID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ATTACKPATTERNINDICATORWARNING" (
	"AttackPatternIndicatorWarningID" INTEGER NOT NULL,
	"AttackPatternID" INTEGER NULL,
	"AttackPatternIndicatorWarningOrder" INTEGER NULL,
	"IndicatorWarningAttack" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ATTACKPATTERNMITIGATION" (
	"AttackPatternMitigationID" INTEGER NOT NULL,
	"AttackPatternMitigationGUID" TEXT NULL,
	"AttackPatternID" INTEGER NULL,
	"AttackPatternGUID" TEXT NULL,
	"MitigationID" INTEGER NULL,
	"MitigationGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "ATTACKPATTERNNOTE" (
	"AttackPatternNoteID" INTEGER NOT NULL,
	"NoteText" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ATTACKPATTERNNOTES" (
	"AttackPatternNotesID" INTEGER NOT NULL,
	"AttackPatternID" INTEGER NULL,
	"NoteOrder" INTEGER NULL,
	"AttackPatternNoteID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ATTACKPATTERNOBFUSCATIONTECHNIQUE" (
	"AttackPatternObfuscationTechniqueID" INTEGER NOT NULL,
	"AttackPatternID" INTEGER NOT NULL,
	"AttackPatternGUID" TEXT NULL,
	"ObfuscationTechniqueID" INTEGER NOT NULL,
	"ObfuscationTechniqueGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "ATTACKPATTERNPROBINGTECHNIQUE" (
	"AttackPatternProbingTechniqueID" INTEGER NOT NULL,
	"AttackPatternID" INTEGER NULL,
	"AttackPatternGUID" TEXT NULL,
	"AttackTechniqueID" INTEGER NULL,
	"AttackTechniqueGUID" TEXT NULL,
	"TechniqueID" INTEGER NULL,
	"TechniqueGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "ATTACKPATTERNREFERENCE" (
	"AttackPatternReferenceID" INTEGER NOT NULL,
	"AttackPatternReferenceGUID" TEXT NULL,
	"AttackPatternID" INTEGER NULL,
	"AttackPatternGUID" TEXT NULL,
	"ReferenceID" INTEGER NULL,
	"ReferenceGUID" TEXT NULL,
	"Reference_ID" TEXT NULL,
	"Local_Reference_ID" TEXT NULL,
	"Reference_Section" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "ATTACKPATTERNRELATIONSHIP" (
	"AttackPatternRelationshipID" INTEGER NOT NULL,
	"AttackPatternRefID" INTEGER NULL,
	"AttackPatternRefGUID" TEXT NULL,
	"RelationshipName" TEXT NULL,
	"Relationship_Description" TEXT NULL,
	"AttackPatternSubjectID" INTEGER NULL,
	"AttackPatternSubjectGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ATTACKPATTERNSECURITYCONTROL" (
	"AttackPatternSecurityControlID" INTEGER NOT NULL,
	"AttackPatternID" INTEGER NULL,
	"SecurityControlID" INTEGER NULL,
	"AttackPatternSecurityControlVocabularyID" INTEGER NULL,
	"AttackPatternSecurityControlOrder" INTEGER NULL,
	"SecurityControlTypeID" INTEGER NULL,
	"SecurityControlType" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "ATTACKPATTERNTAG" (
	"AttackPatternTagID" INTEGER NOT NULL,
	"AttackPatternTagGUID" TEXT NULL,
	"AttackPatternID" INTEGER NULL,
	"AttackPatternGUID" TEXT NULL,
	"TagID" INTEGER NULL,
	"TagGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ATTACKPATTERNVIEW" (
	"AttackPatternViewID" INTEGER NOT NULL,
	"AttackPatternViewGUID" TEXT NULL,
	"ViewVocabularyID" INTEGER NULL,
	"AttackPatternViewName" TEXT NULL,
	"View_Structure" TEXT NULL,
	"AttackPatternViewDescription" TEXT NULL,
	"View_Filter" TEXT NULL,
	"ViewStatus" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ATTACKPATTERNVIEWRELATIONSHIP" (
	"AttackPatternViewRelationshipID" INTEGER NOT NULL,
	"AttackPatternViewID" INTEGER NULL,
	"Ordinal" TEXT NULL,
	"Relationship_Target_Form" TEXT NULL,
	"Relationship_Nature" TEXT NULL,
	"Relationship_Description" TEXT NULL,
	"AttackPatternID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ATTACKPAYLOAD" (
	"AttackPayloadID" INTEGER NOT NULL,
	"AttackPayloadGUID" TEXT NULL,
	"PayloadText" TEXT NOT NULL,
	"Payload_Activation_Impact" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"ValidFromdate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ATTACKPAYLOADENCODER" (
	"AttackPayloadEncoderID" INTEGER NOT NULL,
	"AttackPayloadEncoderName" TEXT NULL,
	"AttackPayloadEncoderDescription" TEXT NULL,
	"AttackPayloadEncoderVersion" TEXT NULL,
	"BLOB" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ATTACKPAYLOADFORATTACKPATTERN" (
	"AttackPatternPayloadID" INTEGER NOT NULL,
	"AttackPatternPayloadGUID" TEXT NULL,
	"AttackPayloadID" INTEGER NOT NULL,
	"AttackPayloadGUID" TEXT NULL,
	"AttackPayloadImpactID" INTEGER NULL,
	"AttackPatternID" INTEGER NOT NULL,
	"AttackPatternGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "ATTACKPAYLOADIMPACT" (
	"AttackPayloadImpactID" INTEGER NOT NULL,
	"PayloadActivationImpactDescription" TEXT NOT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "ATTACKPAYLOADIMPACTFORATTACKPATTERN" (
	"AttackPatternPayloadImpactID" INTEGER NOT NULL,
	"AttackPayloadImpactID" INTEGER NOT NULL,
	"AttackPatternID" INTEGER NOT NULL,
	"capec_id" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "ATTACKPHASE" (
	"AttackPhaseID" INTEGER NOT NULL,
	"AttackPhaseGUID" TEXT NULL,
	"PhaseID" INTEGER NULL,
	"AttackPhaseName" TEXT NULL,
	"AttackPhaseDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "ATTACKPHASEFORATTACKPATTERN" (
	"AttackPatternAttackPhaseID" INTEGER NOT NULL,
	"AttackPatternID" INTEGER NULL,
	"AttackPatternGUID" TEXT NULL,
	"AttackPhaseGUID" TEXT NULL,
	"AttackPhaseID" INTEGER NULL,
	"AttackPhaseVocabularyID" INTEGER NULL,
	"AttackPhaseOrder" INTEGER NULL,
	"AttackPhaseDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "ATTACKPREREQUISITE" (
	"AttackPrerequisiteID" INTEGER NOT NULL,
	"AttackPrerequisiteGUID" TEXT NULL,
	"PrerequisiteText" TEXT NOT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "ATTACKPREREQUISITEFORATTACKPATTERN" (
	"AttackPatternAttackPrerequisiteID" INTEGER NOT NULL,
	"AttackPrerequisiteID" INTEGER NOT NULL,
	"AttackPatternID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ATTACKPURPOSE" (
	"AttackPurposeID" INTEGER NOT NULL,
	"AttackPurposeGUID" TEXT NULL,
	"AttackPurposeName" TEXT NOT NULL,
	"AttackPurposeDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ATTACKPURPOSEFORATTACKPATTERN" (
	"AttackPatternPurposeID" INTEGER NOT NULL,
	"AttackPurposeID" INTEGER NOT NULL,
	"AttackPatternID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ATTACKRESOURCE" (
	"AttackResourceID" INTEGER NOT NULL,
	"AttackResourceText" TEXT NOT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ATTACKRESOURCEFORATTACKPATTERN" (
	"AttackPatternAttackResourceRequiredID" INTEGER NOT NULL,
	"AttackResourceID" INTEGER NOT NULL,
	"AttackPatternID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "ATTACKRESOURCETAG" (
	"AttackResourceTagID" INTEGER NOT NULL,
	"AttackResourceID" INTEGER NULL,
	"TagID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ATTACKSCENARIO" (
	"AttackScenarioID" INTEGER NOT NULL,
	"ScenarioID" INTEGER NOT NULL,
	"BLOB" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "ATTACKSCOPE" (
	"AttackScopeID" INTEGER NOT NULL,
	"AttackScopeGUID" TEXT NULL,
	"ConsequenceScope" TEXT NOT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "ATTACKSTEP" (
	"AttackStepID" INTEGER NOT NULL,
	"AttackStepGUID" TEXT NULL,
	"AttackPatternAttackPhaseID" INTEGER NULL,
	"AttackStepVocabularyID" INTEGER NULL,
	"AttackStepOrder" INTEGER NULL,
	"Attack_Step_Title" TEXT NULL,
	"Attack_Step_Description" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ATTACKSTEPINDICATOR" (
	"AttackStepIndicatorID" INTEGER NOT NULL,
	"AttackStepIndicatorGUID" TEXT NULL,
	"AttackStepID" INTEGER NULL,
	"AttackStepGUID" TEXT NULL,
	"IndicatorID" INTEGER NULL,
	"IndicatorGUID" TEXT NULL,
	"AttackStepIndicatorVocabularyID" TEXT NULL,
	"AttackStepIndicatorType" TEXT NULL,
	"AttackStepIndicatorDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "ATTACKSTEPINDICATORENVIRONMENT" (
	"AttackStepIndicatorEnvironmentID" INTEGER NOT NULL,
	"AttackStepIndicatorID" INTEGER NOT NULL,
	"EnvironmentID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "ATTACKSTEPINDICATORTAG" (
	"AttackStepIndicatorTagID" INTEGER NOT NULL,
	"AttackStepIndicatorID" INTEGER NULL,
	"TagID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ATTACKSTEPOUTCOME" (
	"AttackStepOutcomeID" INTEGER NOT NULL,
	"AttackStepID" INTEGER NULL,
	"OutcomeVocabularyID" TEXT NULL,
	"OutcomeType" TEXT NULL,
	"OutcomeDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "ATTACKSTEPOUTCOMETAG" (
	"AttackStepOutcomeTagID" INTEGER NOT NULL,
	"AttackStepOutcomeID" INTEGER NULL,
	"TagID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ATTACKSTEPSECURITYCONTROL" (
	"AttackStepSecurityControlID" INTEGER NOT NULL,
	"AttackStepID" INTEGER NULL,
	"AttackStepGUID" TEXT NULL,
	"SecurityControlID" INTEGER NULL,
	"SecurityControlGUID" TEXT NULL,
	"AttackStepSecurityControlVocabularyID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ATTACKSTEPTAG" (
	"AttackStepTagID" INTEGER NOT NULL,
	"AttackStepID" INTEGER NULL,
	"TagID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ATTACKSTEPTECHNIQUE" (
	"AttackStepTechniqueID" INTEGER NOT NULL,
	"AttackStepTechniqueGUID" TEXT NULL,
	"AttackStepTechniqueVocabularyID" TEXT NULL,
	"AttackStepID" INTEGER NULL,
	"AttackTechniqueID" INTEGER NULL,
	"AttackStepTechniqueOrder" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ATTACKSTEPTECHNIQUEENVIRONMENT" (
	"AttackStepTechniqueEnvironmentID" INTEGER NOT NULL,
	"AttackStepTechniqueID" INTEGER NULL,
	"EnvironmentID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ATTACKSTEPTECHNIQUELEVERAGEDPATTERN" (
	"AttackStepTechniqueLeveragedPatternID" INTEGER NOT NULL,
	"AttackStepTechniqueID" INTEGER NULL,
	"AttackStepTechniqueGUID" TEXT NULL,
	"AttackPatternID" INTEGER NULL,
	"AttackPatternGUID" TEXT NULL,
	"LeveragedAttackPatternOrder" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ATTACKSURFACE" (
	"AttackSurfaceID" INTEGER NOT NULL,
	"AttackSurfaceGUID" TEXT NULL,
	"AttackSurfaceName" TEXT NULL,
	"AttackSurfaceDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"ConfidenceReasonID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "ATTACKSURFACECHANGERECORD" (
	"AttackSurfaceChangeRecordID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "ATTACKSURFACEFORATTACKPATTERN" (
	"AttackPatternSurfaceID" INTEGER NOT NULL,
	"AttackSurfaceID" INTEGER NOT NULL,
	"AttackPatternID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ATTACKSURFACEINTERACTIONPOINTS" (
	"AttackSurfaceInteractionPointsID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "ATTACKSURFACELOCALITY" (
	"AttackSurfaceLocalityID" INTEGER NOT NULL,
	"AttackSurfaceLocalityName" TEXT NOT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "ATTACKSURFACELOCALITYFORATTACKSURFACE" (
	"AttackSurfaceLocalitiesID" INTEGER NOT NULL,
	"AttackSurfaceLocalityID" INTEGER NOT NULL,
	"AttackSurfaceID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ATTACKSURFACESERVICE" (
	"AttackSurfaceServiceID" INTEGER NOT NULL,
	"AttackSurfaceID" INTEGER NOT NULL,
	"EndPointID" INTEGER NULL,
	"TargetFunctionalServiceID" INTEGER NULL,
	"TargetFunctionalServiceName" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "ATTACKSURFACESERVICEPROTOCOL" (
	"AttackSurfaceServiceProtocolID" INTEGER NOT NULL,
	"AttackSurfaceServiceID" INTEGER NOT NULL,
	"TargetFunctionalServiceProtocolID" INTEGER NULL,
	"ProtocolID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "ATTACKSURFACETYPE" (
	"AttackSurfaceTypeID" INTEGER NOT NULL,
	"AttackSurfaceTypeName" TEXT NOT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "ATTACKSURFACETYPEFORATTACKSURFACE" (
	"AttackSurfaceTypesID" INTEGER NOT NULL,
	"AttackSurfaceTypeID" INTEGER NOT NULL,
	"AttackSurfaceID" INTEGER NOT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ATTACKTECHNICALIMPACT" (
	"AttackTechnicalImpactID" INTEGER NOT NULL,
	"AttackTechnicalImpactGUID" TEXT NULL,
	"ImpactID" INTEGER NULL,
	"ConsequenceTechnicalImpact" TEXT NOT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "ATTACKTECHNIQUE" (
	"AttackTechniqueID" INTEGER NOT NULL,
	"AttackTechniqueGUID" TEXT NULL,
	"TechniqueID" INTEGER NULL,
	"AttackTechniqueName" TEXT NULL,
	"AttackTechniqueDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ATTACKTECHNIQUEINDICATOR" (
	"AttackTechniqueIndicatorID" INTEGER NOT NULL,
	"AttackTechniqueID" INTEGER NULL,
	"IndicatorID" INTEGER NULL,
	"CreatedDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "ATTACKTECHNIQUEREFERENCE" (
	"AttackTechniqueReferenceID" INTEGER NOT NULL,
	"AttackTechniqueID" INTEGER NULL,
	"ReferenceID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ATTACKTECHNIQUETAG" (
	"AttackTechniqueTagID" INTEGER NOT NULL,
	"AttackTechniqueID" INTEGER NULL,
	"AttackTechniqueGUID" TEXT NULL,
	"TagID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ATTACKTECHNIQUETOOL" (
	"AttackTechniqueToolID" INTEGER NOT NULL,
	"AttackTechniqueID" INTEGER NULL,
	"AttackTechniqueGUID" TEXT NULL,
	"AttackToolID" INTEGER NULL,
	"AttackToolGUID" TEXT NULL,
	"ToolID" INTEGER NULL,
	"ToolGUID" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "ATTACKTOOL" (
	"AttackToolID" INTEGER NOT NULL,
	"AttackTooldGUID" TEXT NULL,
	"TooldID" INTEGER NULL,
	"AttackToolTypeID" INTEGER NULL,
	"AttackToolName" TEXT NOT NULL,
	"AttackToolVersion" TEXT NULL,
	"VersionID" INTEGER NULL,
	"AttackToolDescription" TEXT NULL,
	"AttackToolAuthor" TEXT NULL,
	"AttackToolLink" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"CreationObjectID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ATTACKTOOLAUTHENTICATIONTYPE" (
	"AttackToolAuthenticationTypeID" INTEGER NOT NULL,
	"AttackToolID" INTEGER NULL,
	"AuthenticationTypeID" INTEGER NULL,
	"AttackToolAuthenticationTypeDescription" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ATTACKTOOLDESCRIPTION" (
	"AttackToolDescriptionID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "ATTACKTOOLFORTHREATACTORTTP" (
	"ThreatActorTTPAttackToolID" INTEGER NOT NULL,
	"AttackToolID" INTEGER NOT NULL,
	"ThreatActorTTPID" INTEGER NOT NULL,
	"notes" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"isEncrypted" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "ATTACKTOOLMODULE" (
	"AttackToolModuleID" INTEGER NOT NULL,
	"AttackToolModuleName" TEXT NULL,
	"AttackToolModuleDescription" TEXT NULL,
	"AttackToolModuleVersion" TEXT NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ATTACKTOOLMODULEAUTHENTICATIONTYPE" (
	"AttackToolModuleAuthenticationTypeID" INTEGER NOT NULL,
	"AttackToolModuleID" INTEGER NULL,
	"AuthenticationTypeID" INTEGER NULL,
	"AttackToolModuleAuthenticationTypeDescription" TEXT NULL,
	"ConfidenceLevelID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"BLOB" TEXT NULL
);

CREATE TABLE IF NOT EXISTS "ATTACKTOOLTAG" (
	"AttackToolTagID" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "ATTACKTOOLTYPE" (
	"AttackToolTypeID" INTEGER NOT NULL,
	"AttackToolTypeGUID" TEXT NULL,
	"AttackToolTypeName" TEXT NOT NULL,
	"AttackToolTypeDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL,
	"EnumerationVersionID" INTEGER NULL
);

CREATE TABLE IF NOT EXISTS "ATTACKVECTOR" (
	"AttackVectorID" INTEGER NOT NULL,
	"AttackVectorName" TEXT NULL,
	"AttackvectorDescription" TEXT NULL,
	"VocabularyID" INTEGER NULL,
	"CreatedDate" TEXT NULL,
	"BLOB" TEXT NULL,
	"ValidFromDate" TEXT NULL,
	"ValidUntilDate" TEXT NULL,
	"isEncrypted" INTEGER NULL
);
