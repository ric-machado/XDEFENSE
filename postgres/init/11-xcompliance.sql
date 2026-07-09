-- PostgreSQL DDL — schema: xcompliance
-- GRC: auditoria, frameworks, controles, avaliações de risco, questionários,
-- gestão de crises, OCIL, EBIOS RM, FAIR, Zero Trust, OT/ICS, etc.
-- Extraído de xorcism_ts/server/db.ts (ensureComplianceDb e ensure*)

SET search_path = "xcompliance", public;

-- ── Auditoria central ────────────────────────────────────────────────────────

CREATE TABLE IF NOT EXISTS AUDIT (
  AuditID          INTEGER PRIMARY KEY,
  AuditGUID        TEXT, AuditName TEXT, AuditDate TEXT, AuditStatus TEXT, AuditorName TEXT,
  AuditDescription TEXT, AuditCategory TEXT, AuditScope TEXT, AuditType TEXT, AuditClosureDate TEXT,
  TenantID         INTEGER,
  AssessmentType   TEXT
);

CREATE TABLE IF NOT EXISTS AUDITFINDING (
  AuditFindingID   INTEGER PRIMARY KEY,
  AuditFindingGUID TEXT, FindingName TEXT, FindingDescription TEXT, FindingDate TEXT,
  FindingStatus    TEXT, FindingStakeholder TEXT, FindingCriticity TEXT,
  WorkflowStatus   TEXT, Severity TEXT, RemediationPlan TEXT,
  RemediationOwnerPersonID INTEGER, DueDate DATE, AssessmentType TEXT
);

CREATE TABLE IF NOT EXISTS AUDITREPORT (
  AuditReportID   INTEGER PRIMARY KEY,
  AuditReportGUID TEXT, ReportName TEXT, ReportDescription TEXT, ReportDate TEXT,
  ReportAuthor    TEXT, ReportClient TEXT, ReportStatus TEXT, PersonID INTEGER
);

CREATE TABLE IF NOT EXISTS EVIDENCE (
  EvidenceID          INTEGER PRIMARY KEY,
  EvidenceName        TEXT, EvidenceDescription TEXT, EvidenceDate TEXT, CreatedDate TEXT,
  ValidFrom           TEXT, ValidUntil TEXT, EvidenceURL TEXT, Validity TEXT, EvidenceFile TEXT
);

CREATE TABLE IF NOT EXISTS AUDITEVIDENCE (
  AuditEvidenceID   INTEGER PRIMARY KEY,
  AuditEvidenceGUID TEXT, AuditID INTEGER, EvidenceID INTEGER, CreatedDate TEXT,
  ConfidenceLevel   TEXT, Status TEXT
);

CREATE TABLE IF NOT EXISTS DOCUMENT (
  DocumentID          INTEGER PRIMARY KEY,
  DocumentGUID        TEXT, DocumentName TEXT, DocumentDescription TEXT, DocumentDate TEXT,
  Author              TEXT, ValidFrom TEXT, ValidUntil TEXT, DocumentURL TEXT,
  Version             TEXT, DocumentFile TEXT,
  Classification      TEXT, TLP TEXT
);

CREATE TABLE IF NOT EXISTS AUDITDOCUMENT (
  AuditDocumentID INTEGER PRIMARY KEY,
  AuditID         INTEGER, DocumentID INTEGER, CreatedDate TEXT, ConfidenceLevel TEXT,
  ValidFrom       TEXT, ValidUntil TEXT
);

CREATE TABLE IF NOT EXISTS DOCUMENTPERSON (
  DocumentPersonID INTEGER PRIMARY KEY,
  DocumentID       INTEGER, PersonID INTEGER, Role TEXT, CreatedDate TEXT,
  ValidFrom        TEXT, ValidUntil TEXT
);

-- ── Questionários e respostas (OCIL 2.0) ────────────────────────────────────

CREATE TABLE IF NOT EXISTS QUESTIONNAIRE (
  QuestionnaireID          INTEGER PRIMARY KEY,
  QuestionnaireName        TEXT, QuestionnaireDescription TEXT,
  CreatedDate              TEXT, ValidFrom TEXT, ValidUntil TEXT,
  OcilId TEXT, Revision TEXT, Operator TEXT, Language TEXT, FileName TEXT
);

CREATE TABLE IF NOT EXISTS QUESTION (
  QuestionID          INTEGER PRIMARY KEY,
  QuestionGUID        TEXT, QuestionName TEXT, QuestionDescription TEXT,
  PersonID            INTEGER, OrganisationID INTEGER,
  CreatedDate         TEXT, ModifiedDate TEXT, ValidFrom TEXT, ValidUntil TEXT,
  OcilId TEXT, Revision TEXT, QuestionType TEXT, QuestionText TEXT,
  DefaultAnswer TEXT, Model TEXT, ResultWhenTrue TEXT, ResultWhenFalse TEXT
);

CREATE TABLE IF NOT EXISTS ANSWER (
  AnswerID        INTEGER PRIMARY KEY,
  AnswerGUID      TEXT, Answer TEXT, AnswerNotes TEXT,
  CreatedDate     TEXT, ModifiedDate TEXT, PersonID INTEGER,
  ValidFrom       TEXT, ValidUntil TEXT, ConfidenceLevel TEXT, TrustLevel TEXT,
  OcilId          TEXT
);

CREATE TABLE IF NOT EXISTS QUESTIONFORQUESTIONNAIRE (
  QuestionForQuestionnaireID INTEGER PRIMARY KEY,
  QuestionnaireID INTEGER, QuestionID INTEGER,
  CreatedDate TEXT, VocabularyID INTEGER,
  DisplayOrder INTEGER, TestActionOcilId TEXT
);

CREATE TABLE IF NOT EXISTS ANSWERFORQUESTION (
  AnswerForQuestionID INTEGER PRIMARY KEY,
  QuestionID INTEGER, AnswerID INTEGER, CreatedDate TEXT, PersonID INTEGER,
  Result TEXT, DisplayOrder INTEGER
);

CREATE TABLE IF NOT EXISTS ANSWEREVIDENCE (
  AnswerEvidenceID INTEGER PRIMARY KEY,
  AnswerID INTEGER, EvidenceID INTEGER, CreatedDate TEXT, PersonID INTEGER, ConfidenceLevel TEXT
);

CREATE TABLE IF NOT EXISTS NOTIFICATIONREGULATOR (
  NotificationRegulatorID INTEGER PRIMARY KEY,
  NotificationName TEXT, NotificationDescription TEXT, OrganisationID INTEGER,
  Regulation TEXT, CreatedDate TEXT, ModifiedDate TEXT, Notified DATE,
  PersonID INTEGER, ValidFrom DATE, ValidUntil DATE, ConfidenceLevel TEXT, IncidentID INTEGER
);

CREATE TABLE IF NOT EXISTS QUESTIONNAIREFORORGANISATION (
  QuestionnaireOrganisationID INTEGER PRIMARY KEY,
  QuestionnaireID INTEGER, OrganisationID INTEGER, Relationship TEXT,
  CreatedDate DATE, ValidFrom DATE, ValidUntil DATE, PersonID INTEGER
);

CREATE TABLE IF NOT EXISTS QUESTIONNAIRERUN (
  RunID            INTEGER PRIMARY KEY, RunGUID TEXT,
  QuestionnaireID  INTEGER, QuestionnaireName TEXT,
  Name TEXT, Subject TEXT, Respondent TEXT, Owner TEXT,
  Status TEXT DEFAULT 'in_progress', StartedDate TEXT, TargetDate TEXT, SubmittedDate TEXT,
  Score INTEGER, Conformance INTEGER,
  TenantID INTEGER, CreatedBy TEXT, CreatedDate TEXT
);

CREATE TABLE IF NOT EXISTS QUESTIONNAIRERESPONSE (
  ResponseID    INTEGER PRIMARY KEY, RunID INTEGER,
  QuestionID    INTEGER, Section TEXT, DisplayOrder INTEGER,
  Answer        TEXT, Comment TEXT, Evidence TEXT,
  AnsweredDate  TEXT, TenantID INTEGER
);

-- ── Gestão de crises (tabletop exercises) ───────────────────────────────────

CREATE TABLE IF NOT EXISTS CRISISSCENARIO (
  ScenarioID       INTEGER PRIMARY KEY, ScenarioGUID TEXT,
  ScenarioName     TEXT, ScenarioType TEXT, Description TEXT,
  Severity TEXT, Objectives TEXT, ThreatActor TEXT, AttackTechniques TEXT,
  Refs TEXT, IsTemplate INTEGER DEFAULT 1, Source TEXT,
  CreatedDate TEXT, TenantID INTEGER
);

CREATE TABLE IF NOT EXISTS EXERCISEINJECT (
  InjectID         INTEGER PRIMARY KEY, InjectGUID TEXT,
  AuditID          INTEGER, ScenarioID INTEGER, StepOrder INTEGER,
  InjectTime TEXT, Title TEXT, Description TEXT, InjectType TEXT,
  ExpectedAction TEXT, ActualResponse TEXT, Status TEXT,
  CreatedDate TEXT, TenantID INTEGER,
  Channel TEXT, OffsetMinutes INTEGER, Sender TEXT, Recipients TEXT, Subject TEXT, DeliveredDate TEXT
);

CREATE TABLE IF NOT EXISTS EXERCISEPARTICIPANT (
  ParticipantID    INTEGER PRIMARY KEY, ParticipantGUID TEXT,
  AuditID          INTEGER, PersonID INTEGER, ParticipantName TEXT,
  CrisisRole TEXT, Team TEXT, Attended INTEGER,
  CreatedDate TEXT, TenantID INTEGER,
  Email TEXT, Phone TEXT
);

CREATE TABLE IF NOT EXISTS EXERCISELOG (
  LogID            INTEGER PRIMARY KEY, LogGUID TEXT,
  AuditID          INTEGER, InjectID INTEGER, ParticipantID INTEGER,
  EventType TEXT, Channel TEXT, Message TEXT, LoggedAt TEXT, ByUser TEXT,
  CreatedDate TEXT, TenantID INTEGER
);

-- ── Remediação de achados ────────────────────────────────────────────────────

CREATE TABLE IF NOT EXISTS AUDITFINDINGREMEDIATION (
  RemediationID     INTEGER PRIMARY KEY, RemediationGUID TEXT,
  AuditFindingID    INTEGER, RemediationName TEXT, Description TEXT,
  RemediationType   TEXT, Status TEXT, Priority TEXT, OwnerPersonID INTEGER,
  TargetDate TEXT, CompletedDate TEXT, Progress INTEGER,
  CreatedDate TEXT, CreatedBy TEXT, TenantID INTEGER
);

-- ── GRC — Governance, Risk & Compliance (modelo CISO Assistant) ─────────────

CREATE TABLE IF NOT EXISTS FOLDER (
  FolderID     INTEGER PRIMARY KEY, FolderGUID TEXT,
  Name TEXT, Description TEXT, ParentFolderID INTEGER, ContentType TEXT,
  CreatedDate TEXT, TenantID INTEGER
);

CREATE TABLE IF NOT EXISTS PERIMETER (
  PerimeterID   INTEGER PRIMARY KEY, PerimeterGUID TEXT,
  Name TEXT, Description TEXT, FolderID INTEGER, Ref TEXT,
  Status TEXT, LifecycleStatus TEXT, CreatedDate TEXT, TenantID INTEGER
);

CREATE TABLE IF NOT EXISTS FRAMEWORK (
  FrameworkID   INTEGER PRIMARY KEY, FrameworkGUID TEXT,
  Name TEXT, Description TEXT, Provider TEXT, Version TEXT,
  URN TEXT, Ref TEXT, Locale TEXT, CreatedDate TEXT, TenantID INTEGER
);

CREATE TABLE IF NOT EXISTS REQUIREMENTNODE (
  RequirementNodeID       INTEGER PRIMARY KEY, RequirementNodeGUID TEXT,
  FrameworkID             INTEGER, ParentRequirementNodeID INTEGER,
  URN TEXT, Ref TEXT, Name TEXT, Description TEXT,
  OrderID INTEGER, Depth INTEGER, Assessable INTEGER, CreatedDate TEXT, TenantID INTEGER
);

CREATE TABLE IF NOT EXISTS REFERENCECONTROL (
  ReferenceControlID    INTEGER PRIMARY KEY, ReferenceControlGUID TEXT,
  Name TEXT, Description TEXT, Category TEXT, Function TEXT,
  Provider TEXT, URN TEXT, Ref TEXT, CreatedDate TEXT, TenantID INTEGER
);

CREATE TABLE IF NOT EXISTS APPLIEDCONTROL (
  AppliedControlID      INTEGER PRIMARY KEY, AppliedControlGUID TEXT,
  Name TEXT, Description TEXT, ReferenceControlID INTEGER,
  Category TEXT, Function TEXT, Status TEXT, Priority INTEGER,
  Effort TEXT, Cost DOUBLE PRECISION, OwnerPersonID INTEGER, FolderID INTEGER,
  StartDate TEXT, ETA TEXT, ExpiryDate TEXT, CreatedDate TEXT, TenantID INTEGER
);

CREATE TABLE IF NOT EXISTS COMPLIANCEASSESSMENT (
  ComplianceAssessmentID   INTEGER PRIMARY KEY, ComplianceAssessmentGUID TEXT,
  Name TEXT, Description TEXT, FrameworkID INTEGER, PerimeterID INTEGER,
  Status TEXT, Version TEXT, AuthorPersonID INTEGER,
  Date TEXT, DueDate TEXT, Score INTEGER, CreatedDate TEXT, TenantID INTEGER
);

CREATE TABLE IF NOT EXISTS REQUIREMENTASSESSMENT (
  RequirementAssessmentID   INTEGER PRIMARY KEY, RequirementAssessmentGUID TEXT,
  ComplianceAssessmentID    INTEGER, RequirementNodeID INTEGER,
  Status TEXT, Result TEXT, Score INTEGER, IsScored INTEGER,
  Observation TEXT, CreatedDate TEXT, TenantID INTEGER
);

CREATE TABLE IF NOT EXISTS REQUIREMENTASSESSMENTCONTROL (
  RequirementAssessmentControlID INTEGER PRIMARY KEY,
  RequirementAssessmentID INTEGER, AppliedControlID INTEGER, CreatedDate TEXT, TenantID INTEGER
);

CREATE TABLE IF NOT EXISTS REQUIREMENTASSESSMENTEVIDENCE (
  RequirementAssessmentEvidenceID INTEGER PRIMARY KEY,
  RequirementAssessmentID INTEGER, EvidenceID INTEGER, CreatedDate TEXT, TenantID INTEGER
);

-- ── Risco ────────────────────────────────────────────────────────────────────

CREATE TABLE IF NOT EXISTS RISKMATRIX (
  RiskMatrixID    INTEGER PRIMARY KEY, RiskMatrixGUID TEXT,
  Name TEXT, Description TEXT, Definition TEXT,
  ProbabilityCount INTEGER, ImpactCount INTEGER, CreatedDate TEXT, TenantID INTEGER
);

CREATE TABLE IF NOT EXISTS RISKASSESSMENT (
  RiskAssessmentID   INTEGER PRIMARY KEY, RiskAssessmentGUID TEXT,
  Name TEXT, Description TEXT, PerimeterID INTEGER, RiskMatrixID INTEGER,
  Status TEXT, Version TEXT, AuthorPersonID INTEGER, Date TEXT, CreatedDate TEXT, TenantID INTEGER,
  Methodology TEXT, Workshop INTEGER, ExpressMode INTEGER
);

CREATE TABLE IF NOT EXISTS RISKSCENARIO (
  RiskScenarioID   INTEGER PRIMARY KEY, RiskScenarioGUID TEXT,
  RiskAssessmentID INTEGER, Ref TEXT, Name TEXT, Description TEXT,
  ThreatID INTEGER, ThreatName TEXT, ExistingControls TEXT,
  CurrentProbability INTEGER, CurrentImpact INTEGER, CurrentRiskLevel INTEGER,
  ResidualProbability INTEGER, ResidualImpact INTEGER, ResidualRiskLevel INTEGER,
  TreatmentStrategy TEXT, Justification TEXT, Status TEXT, CreatedDate TEXT, TenantID INTEGER,
  ScenarioType TEXT, RiskSourceID INTEGER, FearedEventID INTEGER, StakeholderID INTEGER,
  Likelihood INTEGER, Severity INTEGER, AttackPath TEXT,
  LossEventFrequency DOUBLE PRECISION, AnnualizedLossExpectancy DOUBLE PRECISION, Currency TEXT
);

CREATE TABLE IF NOT EXISTS RISKSCENARIOCONTROL (
  RiskScenarioControlID INTEGER PRIMARY KEY,
  RiskScenarioID INTEGER, AppliedControlID INTEGER, CreatedDate TEXT, TenantID INTEGER
);

CREATE TABLE IF NOT EXISTS RISKSCENARIOASSET (
  RiskScenarioAssetID INTEGER PRIMARY KEY,
  RiskScenarioID INTEGER, AssetID INTEGER, CreatedDate TEXT, TenantID INTEGER
);

CREATE TABLE IF NOT EXISTS RISKACCEPTANCE (
  RiskAcceptanceID    INTEGER PRIMARY KEY, RiskAcceptanceGUID TEXT,
  Name TEXT, Description TEXT, RiskScenarioID INTEGER, ApproverPersonID INTEGER,
  Status TEXT, Justification TEXT,
  AcceptedDate TEXT, ExpiryDate TEXT, RevokedDate TEXT, CreatedDate TEXT, TenantID INTEGER
);

CREATE TABLE IF NOT EXISTS SECURITYEXCEPTION (
  SecurityExceptionID  INTEGER PRIMARY KEY, SecurityExceptionGUID TEXT,
  Name TEXT, Description TEXT, Ref TEXT, Status TEXT, Severity TEXT,
  OwnerPersonID INTEGER, ApproverPersonID INTEGER, ExpiryDate TEXT, CreatedDate TEXT, TenantID INTEGER
);

CREATE TABLE IF NOT EXISTS GRCTHREAT (
  ThreatID    INTEGER PRIMARY KEY, ThreatGUID TEXT,
  Name TEXT, Description TEXT, Provider TEXT, URN TEXT, Ref TEXT, CreatedDate TEXT, TenantID INTEGER
);

-- ── Risk Register ────────────────────────────────────────────────────────────

CREATE TABLE IF NOT EXISTS RISKREGISTER (
  RiskRegisterID   INTEGER PRIMARY KEY, RiskRegisterGUID TEXT,
  Name TEXT, Description TEXT, PerimeterID INTEGER, OwnerPersonID INTEGER,
  Status TEXT, CreatedDate TEXT, TenantID INTEGER
);

CREATE TABLE IF NOT EXISTS RISKREGISTERENTRY (
  RiskRegisterEntryID   INTEGER PRIMARY KEY, RiskRegisterEntryGUID TEXT,
  RiskRegisterID INTEGER, Ref TEXT, Title TEXT, Description TEXT, Category TEXT,
  RiskOwnerPersonID INTEGER, AssetID INTEGER,
  ThreatID INTEGER, ThreatName TEXT, VulnerabilityID INTEGER,
  InherentProbability INTEGER, InherentImpact INTEGER, InherentRiskLevel INTEGER,
  CurrentProbability INTEGER, CurrentImpact INTEGER, CurrentRiskLevel INTEGER,
  ResidualProbability INTEGER, ResidualImpact INTEGER, ResidualRiskLevel INTEGER,
  TreatmentStrategy TEXT, TreatmentPlan TEXT, Justification TEXT, Status TEXT,
  IdentifiedDate TEXT, ReviewDate TEXT, TargetDate TEXT, ClosedDate TEXT,
  CreatedDate TEXT, TenantID INTEGER,
  LossEventFrequency DOUBLE PRECISION, SingleLossExpectancy DOUBLE PRECISION,
  AnnualizedLossExpectancy DOUBLE PRECISION, PrimaryLoss DOUBLE PRECISION, SecondaryLoss DOUBLE PRECISION, Currency TEXT
);

CREATE TABLE IF NOT EXISTS RISKREGISTERENTRYASSET (
  RiskRegisterEntryAssetID INTEGER PRIMARY KEY,
  RiskRegisterEntryID INTEGER, AssetID INTEGER, CreatedDate TEXT, TenantID INTEGER
);

CREATE TABLE IF NOT EXISTS RISKREGISTERENTRYCONTROL (
  RiskRegisterEntryControlID INTEGER PRIMARY KEY,
  RiskRegisterEntryID INTEGER, AppliedControlID INTEGER, CreatedDate TEXT, TenantID INTEGER
);

-- ── Compliance Journey ───────────────────────────────────────────────────────

CREATE TABLE IF NOT EXISTS COMPLIANCEJOURNEY (
  JourneyID          INTEGER PRIMARY KEY, JourneyGUID TEXT,
  FrameworkKey TEXT, FrameworkName TEXT, Name TEXT, Scope TEXT, Owner TEXT,
  Status TEXT, StartedDate TEXT, TargetDate TEXT,
  ComplianceAssessmentID INTEGER, AuditID INTEGER,
  TenantID INTEGER, CreatedBy TEXT, CreatedDate TEXT
);

CREATE TABLE IF NOT EXISTS COMPLIANCEJOURNEYSTEP (
  StepID      INTEGER PRIMARY KEY, JourneyID INTEGER,
  PhaseOrder  INTEGER, Phase TEXT, StepOrder INTEGER,
  Title TEXT, Description TEXT, Link TEXT,
  Status TEXT DEFAULT 'todo', Notes TEXT, CompletedDate TEXT, TenantID INTEGER
);

-- ── TPRM (Third-Party Risk) ──────────────────────────────────────────────────

CREATE TABLE IF NOT EXISTS TPRMVENDOR (
  VendorID            INTEGER PRIMARY KEY, VendorGUID TEXT,
  Name TEXT, Domain TEXT, Description TEXT, Category TEXT, ServicesProvided TEXT,
  ContactName TEXT, ContactEmail TEXT, Owner TEXT,
  Tier TEXT, DataSensitivity TEXT, BusinessCriticality TEXT,
  Status TEXT DEFAULT 'onboarding',
  UsesAI INTEGER DEFAULT 0, AIUseDescription TEXT,
  InherentRisk INTEGER, PostureScore INTEGER, PostureGrade TEXT,
  QuestionnaireRunID INTEGER, QuestionnaireConformance INTEGER,
  ResidualRisk INTEGER, ResidualTier TEXT,
  LastAssessedDate TEXT, NextReviewDate TEXT, ReviewCadenceDays INTEGER DEFAULT 365,
  TenantID INTEGER, CreatedBy TEXT, CreatedDate TEXT
);

CREATE TABLE IF NOT EXISTS TPRMFINDING (
  FindingID   INTEGER PRIMARY KEY, FindingGUID TEXT, VendorID INTEGER,
  Source TEXT, Category TEXT, Title TEXT, Detail TEXT,
  Severity TEXT, Status TEXT DEFAULT 'open', Evidence TEXT,
  CreatedDate TEXT, TenantID INTEGER
);

-- ── Zero Trust Maturity ──────────────────────────────────────────────────────

CREATE TABLE IF NOT EXISTS ZTFUNCTION (
  FunctionID    INTEGER PRIMARY KEY, FunctionKey TEXT UNIQUE,
  Pillar TEXT, PillarKey TEXT, IsCrossCutting INTEGER DEFAULT 0,
  Name TEXT, Description TEXT,
  Stage0 TEXT, Stage1 TEXT, Stage2 TEXT, Stage3 TEXT, DisplayOrder INTEGER
);

CREATE TABLE IF NOT EXISTS ZTMATURITYASSESSMENT (
  AssessmentID  INTEGER PRIMARY KEY, AssessmentGUID TEXT,
  Name TEXT, Scope TEXT, Owner TEXT,
  Status TEXT DEFAULT 'in_progress', OverallStage DOUBLE PRECISION, Score INTEGER, TargetStage INTEGER DEFAULT 3,
  StartedDate TEXT, TargetDate TEXT, TenantID INTEGER, CreatedBy TEXT, CreatedDate TEXT
);

CREATE TABLE IF NOT EXISTS ZTMATURITYITEM (
  ItemID        INTEGER PRIMARY KEY, AssessmentID INTEGER, FunctionKey TEXT,
  Pillar TEXT, PillarKey TEXT, CurrentStage INTEGER, TargetStage INTEGER,
  AutoStage INTEGER, Notes TEXT, Evidence TEXT, TenantID INTEGER
);

CREATE TABLE IF NOT EXISTS ZTPOLICY (
  PolicyID      INTEGER PRIMARY KEY, PolicyGUID TEXT, Name TEXT, Source TEXT, ExternalID TEXT,
  State TEXT, Subjects TEXT, Resources TEXT, Conditions TEXT, GrantControls TEXT,
  RequireMfa INTEGER, RequireCompliantDevice INTEGER, Block INTEGER,
  TenantID INTEGER, CreatedDate TEXT
);

-- ── EBIOS RM ─────────────────────────────────────────────────────────────────

CREATE TABLE IF NOT EXISTS EBIOSBUSINESSVALUE (
  BusinessValueID   INTEGER PRIMARY KEY, BusinessValueGUID TEXT,
  RiskAssessmentID  INTEGER, Name TEXT, Description TEXT,
  Nature TEXT, OwnerPersonID INTEGER, CreatedDate TEXT, TenantID INTEGER
);

CREATE TABLE IF NOT EXISTS EBIOSSUPPORTINGASSET (
  SupportingAssetID INTEGER PRIMARY KEY, SupportingAssetGUID TEXT,
  RiskAssessmentID  INTEGER, BusinessValueID INTEGER, AssetID INTEGER,
  Name TEXT, Description TEXT, Type TEXT, CreatedDate TEXT, TenantID INTEGER
);

CREATE TABLE IF NOT EXISTS EBIOSFEAREDEVENT (
  FearedEventID   INTEGER PRIMARY KEY, FearedEventGUID TEXT,
  RiskAssessmentID INTEGER, BusinessValueID INTEGER,
  Name TEXT, Description TEXT,
  ImpactAvailability INTEGER, ImpactIntegrity INTEGER, ImpactConfidentiality INTEGER,
  ImpactTraceability INTEGER, Consequences TEXT, Severity INTEGER,
  CreatedDate TEXT, TenantID INTEGER
);

CREATE TABLE IF NOT EXISTS EBIOSRISKSOURCE (
  RiskSourceID    INTEGER PRIMARY KEY, RiskSourceGUID TEXT,
  RiskAssessmentID INTEGER, Name TEXT, Category TEXT, Objective TEXT,
  Motivation INTEGER, Resources INTEGER, Activity INTEGER, Pertinence INTEGER,
  Retained INTEGER, CreatedDate TEXT, TenantID INTEGER
);

CREATE TABLE IF NOT EXISTS EBIOSSTAKEHOLDER (
  StakeholderID   INTEGER PRIMARY KEY, StakeholderGUID TEXT,
  RiskAssessmentID INTEGER, Name TEXT, Category TEXT, Type TEXT,
  Dependency INTEGER, Penetration INTEGER, Maturity INTEGER, Trust INTEGER,
  ThreatLevel DOUBLE PRECISION, Zone TEXT, CreatedDate TEXT, TenantID INTEGER
);

-- ── FAIR MAM / TEF ───────────────────────────────────────────────────────────

CREATE TABLE IF NOT EXISTS FAIRMAMCATEGORY (
  CategoryID  INTEGER PRIMARY KEY, Code TEXT, Name TEXT, ParentCode TEXT,
  LossType TEXT, Party TEXT, Description TEXT, SortOrder INTEGER, TenantID INTEGER
);

CREATE TABLE IF NOT EXISTS FAIRMAMASSESSMENT (
  AssessmentID     INTEGER PRIMARY KEY, AssessmentGUID TEXT,
  Name TEXT, ScenarioRef TEXT, RiskRegisterEntryID INTEGER, IncidentID INTEGER,
  Currency TEXT, MaterialityThreshold DOUBLE PRECISION, RevenueBasis DOUBLE PRECISION,
  Status TEXT, Determination TEXT, PersonID INTEGER,
  CreatedDate TEXT, ValidFrom TEXT, ValidUntil TEXT, TenantID INTEGER
);

CREATE TABLE IF NOT EXISTS FAIRMAMLINEITEM (
  LineItemID    INTEGER PRIMARY KEY, AssessmentID INTEGER, CategoryID INTEGER,
  Minimum DOUBLE PRECISION, MostLikely DOUBLE PRECISION, Maximum DOUBLE PRECISION,
  Notes TEXT, TenantID INTEGER
);

CREATE TABLE IF NOT EXISTS FAIRTEFASSESSMENT (
  AssessmentID    INTEGER PRIMARY KEY, AssessmentGUID TEXT, Name TEXT, ScenarioRef TEXT,
  RiskRegisterEntryID INTEGER, FairMamAssessmentID INTEGER, ThreatCommunity TEXT, Iterations INTEGER, Currency TEXT,
  CfMin DOUBLE PRECISION, CfMl DOUBLE PRECISION, CfMax DOUBLE PRECISION,
  PoaMin DOUBLE PRECISION, PoaMl DOUBLE PRECISION, PoaMax DOUBLE PRECISION,
  TcapMin DOUBLE PRECISION, TcapMl DOUBLE PRECISION, TcapMax DOUBLE PRECISION,
  RsMin DOUBLE PRECISION, RsMl DOUBLE PRECISION, RsMax DOUBLE PRECISION,
  LossMagnitude DOUBLE PRECISION, TefMean DOUBLE PRECISION, VulnMean DOUBLE PRECISION,
  LefMean DOUBLE PRECISION, LefP10 DOUBLE PRECISION, LefP50 DOUBLE PRECISION, LefP90 DOUBLE PRECISION,
  AleMean DOUBLE PRECISION, AleP90 DOUBLE PRECISION,
  Status TEXT, PersonID INTEGER, CreatedDate TEXT, TenantID INTEGER
);

-- ── PQCMM (Crypto Maturity) ──────────────────────────────────────────────────

CREATE TABLE IF NOT EXISTS PQCMMLEVEL (
  LevelID   INTEGER PRIMARY KEY, Level INTEGER, Name TEXT,
  Summary TEXT, Criteria TEXT, SortOrder INTEGER
);

CREATE TABLE IF NOT EXISTS PQCMMASSESSMENT (
  AssessmentID   INTEGER PRIMARY KEY, AssessmentGUID TEXT,
  SubjectType TEXT, SubjectName TEXT, AssetID INTEGER,
  CurrentLevel INTEGER, TargetLevel INTEGER, Standard TEXT,
  CryptoAgile INTEGER, ZeroLegacy INTEGER, HasCBOM INTEGER,
  Evidence TEXT, Notes TEXT, OwnerPersonID INTEGER,
  Status TEXT, AssessedDate TEXT, ReviewDate TEXT,
  CreatedDate TEXT, TenantID INTEGER
);

-- ── NIST SP 800-30 ───────────────────────────────────────────────────────────

CREATE TABLE IF NOT EXISTS NIST80030THREATSOURCE (
  ThreatSourceID   INTEGER PRIMARY KEY, ThreatSourceGUID TEXT,
  RiskAssessmentID INTEGER, Name TEXT, SourceType TEXT, Category TEXT,
  Capability INTEGER, Intent INTEGER, Targeting INTEGER, RangeOfEffects TEXT,
  Relevance INTEGER, Description TEXT, CreatedDate TEXT, TenantID INTEGER
);

CREATE TABLE IF NOT EXISTS NIST80030THREATEVENT (
  ThreatEventID    INTEGER PRIMARY KEY, ThreatEventGUID TEXT,
  RiskAssessmentID INTEGER, ThreatSourceID INTEGER, Name TEXT, Description TEXT,
  Relevance TEXT, LikelihoodInitiation INTEGER, CreatedDate TEXT, TenantID INTEGER
);

CREATE TABLE IF NOT EXISTS NIST80030VULNERABILITY (
  NistVulnID       INTEGER PRIMARY KEY, NistVulnGUID TEXT,
  RiskAssessmentID INTEGER, Name TEXT, Description TEXT, PredisposingCondition TEXT,
  Severity INTEGER, Pervasiveness INTEGER, AssetID INTEGER, CreatedDate TEXT, TenantID INTEGER
);

CREATE TABLE IF NOT EXISTS NIST80030RISK (
  RiskID           INTEGER PRIMARY KEY, RiskGUID TEXT,
  RiskAssessmentID INTEGER, Name TEXT, Description TEXT,
  ThreatSourceID INTEGER, ThreatEventID INTEGER, NistVulnID INTEGER,
  LikelihoodInitiation INTEGER, LikelihoodImpact INTEGER, OverallLikelihood INTEGER,
  ImpactLevel INTEGER, RiskLevel INTEGER, RiskResponse TEXT, Notes TEXT,
  CreatedDate TEXT, TenantID INTEGER
);

-- ── Trust Center ─────────────────────────────────────────────────────────────

CREATE TABLE IF NOT EXISTS TRUSTCENTER (
  TrustCenterID INTEGER PRIMARY KEY, TenantID INTEGER, Slug TEXT, Enabled INTEGER DEFAULT 0,
  CompanyName TEXT, Title TEXT, Intro TEXT, ContactEmail TEXT, Subprocessors TEXT, Frameworks TEXT,
  ShowControls INTEGER DEFAULT 1, ShowUptime INTEGER DEFAULT 1, ShowPolicies INTEGER DEFAULT 1,
  UpdatedAt TEXT, CreatedDate TEXT
);

-- ── OT/ICS Security ──────────────────────────────────────────────────────────

CREATE TABLE IF NOT EXISTS OTZONE (
  ZoneID    INTEGER PRIMARY KEY, ZoneGUID TEXT, AuditID INTEGER,
  Name TEXT, Description TEXT, PurdueLevel TEXT, Criticality TEXT,
  SecurityLevelTarget INTEGER, SecurityLevelAchieved INTEGER, SecurityLevelCapability INTEGER,
  AssetCount INTEGER, Status TEXT, CreatedDate TEXT, TenantID INTEGER
);

CREATE TABLE IF NOT EXISTS OTCONDUIT (
  ConduitID  INTEGER PRIMARY KEY, ConduitGUID TEXT, AuditID INTEGER,
  Name TEXT, Description TEXT, FromZoneID INTEGER, ToZoneID INTEGER, Protocols TEXT,
  SecurityLevelTarget INTEGER, SecurityLevelAchieved INTEGER, CreatedDate TEXT, TenantID INTEGER
);

CREATE TABLE IF NOT EXISTS OTZONEASSET (
  ZoneAssetID INTEGER PRIMARY KEY, ZoneID INTEGER, AssetID INTEGER, CreatedDate TEXT, TenantID INTEGER
);

-- ── Governance Items (Maturidade) ────────────────────────────────────────────

CREATE TABLE IF NOT EXISTS GOVERNANCEITEM (
  ItemID INTEGER PRIMARY KEY, Category TEXT, CategoryCode TEXT, SubCode TEXT,
  Title TEXT, Description TEXT, SortOrder INTEGER
);

CREATE TABLE IF NOT EXISTS GOVERNANCESTATUS (
  StatusID      INTEGER PRIMARY KEY, ItemID INTEGER, Status TEXT, Maturity INTEGER,
  OwnerPersonID INTEGER, Evidence TEXT, Notes TEXT, ReviewDate TEXT,
  TenantID INTEGER, UpdatedDate TEXT
);

-- ── CSF Maturity ─────────────────────────────────────────────────────────────

CREATE TABLE IF NOT EXISTS CSFMATURITYLEVEL (
  LevelID INTEGER PRIMARY KEY, Score INTEGER, Name TEXT, Description TEXT
);

CREATE TABLE IF NOT EXISTS CSFSUBCATEGORY (
  SubID INTEGER PRIMARY KEY, FunctionCode TEXT, FunctionName TEXT,
  CategoryCode TEXT, CategoryName TEXT, SubCode TEXT, Outcome TEXT, SortOrder INTEGER
);

CREATE TABLE IF NOT EXISTS CSFMATURITYSCORE (
  ScoreID        INTEGER PRIMARY KEY, SubID INTEGER,
  CurrentLevel INTEGER, TargetLevel INTEGER, Notes TEXT,
  OwnerPersonID INTEGER, TenantID INTEGER, AssessedDate TEXT
);

-- ── Indexes ───────────────────────────────────────────────────────────────────

CREATE INDEX IF NOT EXISTS ix_qforq_q              ON QUESTIONFORQUESTIONNAIRE(QuestionnaireID);
CREATE INDEX IF NOT EXISTS ix_afq_q                ON ANSWERFORQUESTION(QuestionID);
CREATE INDEX IF NOT EXISTS ix_exerciseinject_audit  ON EXERCISEINJECT(AuditID);
CREATE INDEX IF NOT EXISTS ix_exerciseinject_scen   ON EXERCISEINJECT(ScenarioID);
CREATE INDEX IF NOT EXISTS ix_exercisepartic_audit  ON EXERCISEPARTICIPANT(AuditID);
CREATE INDEX IF NOT EXISTS ix_crisisscenario_tenant ON CRISISSCENARIO(TenantID);
CREATE INDEX IF NOT EXISTS ix_exerciselog_audit     ON EXERCISELOG(AuditID);
CREATE INDEX IF NOT EXISTS ix_auditfindingremediation_finding ON AUDITFINDINGREMEDIATION(AuditFindingID);
CREATE INDEX IF NOT EXISTS ix_reqnode_framework     ON REQUIREMENTNODE(FrameworkID);
CREATE INDEX IF NOT EXISTS ix_reqassess_assessment  ON REQUIREMENTASSESSMENT(ComplianceAssessmentID);
CREATE INDEX IF NOT EXISTS ix_reqassess_node        ON REQUIREMENTASSESSMENT(RequirementNodeID);
CREATE INDEX IF NOT EXISTS ix_riskscenario_assess   ON RISKSCENARIO(RiskAssessmentID);
CREATE INDEX IF NOT EXISTS ix_appliedcontrol_ref    ON APPLIEDCONTROL(ReferenceControlID);
CREATE INDEX IF NOT EXISTS ix_rrentry_register      ON RISKREGISTERENTRY(RiskRegisterID);
CREATE INDEX IF NOT EXISTS ix_rrentryasset_entry    ON RISKREGISTERENTRYASSET(RiskRegisterEntryID);
CREATE INDEX IF NOT EXISTS ix_rrentryctrl_entry     ON RISKREGISTERENTRYCONTROL(RiskRegisterEntryID);
CREATE INDEX IF NOT EXISTS ix_journey_tenant        ON COMPLIANCEJOURNEY(TenantID);
CREATE INDEX IF NOT EXISTS ix_journeystep_journey   ON COMPLIANCEJOURNEYSTEP(JourneyID);
CREATE INDEX IF NOT EXISTS ix_qrun_tenant           ON QUESTIONNAIRERUN(TenantID);
CREATE INDEX IF NOT EXISTS ix_qresp_run             ON QUESTIONNAIRERESPONSE(RunID);
CREATE INDEX IF NOT EXISTS ix_tprmvendor_tenant     ON TPRMVENDOR(TenantID);
CREATE INDEX IF NOT EXISTS ix_tprmfinding_vendor    ON TPRMFINDING(VendorID);
CREATE INDEX IF NOT EXISTS ix_ztassessment_tenant   ON ZTMATURITYASSESSMENT(TenantID);
CREATE INDEX IF NOT EXISTS ix_ztitem_assessment     ON ZTMATURITYITEM(AssessmentID);
CREATE UNIQUE INDEX IF NOT EXISTS ux_ztpolicy_extid ON ZTPOLICY(Source, ExternalID);
CREATE INDEX IF NOT EXISTS ix_fairmamassessment_tenant ON FAIRMAMASSESSMENT(TenantID);
CREATE INDEX IF NOT EXISTS ix_fairmamlineitem_assess   ON FAIRMAMLINEITEM(AssessmentID);
CREATE INDEX IF NOT EXISTS ix_fairtefassessment_tenant ON FAIRTEFASSESSMENT(TenantID);
CREATE INDEX IF NOT EXISTS ix_pqcmmassessment_tenant ON PQCMMASSESSMENT(TenantID);
CREATE INDEX IF NOT EXISTS ix_pqcmmassessment_asset  ON PQCMMASSESSMENT(AssetID);
CREATE INDEX IF NOT EXISTS ix_n30src_ra  ON NIST80030THREATSOURCE(RiskAssessmentID);
CREATE INDEX IF NOT EXISTS ix_n30evt_ra  ON NIST80030THREATEVENT(RiskAssessmentID);
CREATE INDEX IF NOT EXISTS ix_n30vuln_ra ON NIST80030VULNERABILITY(RiskAssessmentID);
CREATE INDEX IF NOT EXISTS ix_n30risk_ra ON NIST80030RISK(RiskAssessmentID);
CREATE INDEX IF NOT EXISTS ix_trustcenter_slug   ON TRUSTCENTER(Slug);
CREATE INDEX IF NOT EXISTS ix_trustcenter_tenant ON TRUSTCENTER(TenantID);
CREATE INDEX IF NOT EXISTS ix_otzone_audit    ON OTZONE(AuditID);
CREATE INDEX IF NOT EXISTS ix_otconduit_audit ON OTCONDUIT(AuditID);
CREATE INDEX IF NOT EXISTS ix_otzoneasset_zone ON OTZONEASSET(ZoneID);
CREATE UNIQUE INDEX IF NOT EXISTS ux_govstatus ON GOVERNANCESTATUS(ItemID, TenantID);
CREATE UNIQUE INDEX IF NOT EXISTS ux_csfscore  ON CSFMATURITYSCORE(SubID, TenantID);
