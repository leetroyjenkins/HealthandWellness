-- Dropping tables to make script re-runnable
DROP TRIGGER WeightChangeTrigger;
GO

DROP VIEW PatientJournals;

GO

DROP TABLE ResearchPermission;
DROP TABLE JournalPermission;
DROP TABLE ProjectSurveyBridge;
DROP TABLE ResearchParticipantList;
DROP TABLE ProjectAccountBridge;
DROP TABLE SurveyQuestionBridge;
DROP TABLE ExerciseBridge;
DROP TABLE FoodTrackingBridge;
DROP TABLE ResearchProject;
DROP TABLE UserAnswers;
DROP TABLE Questions;
DROP TABLE QuestionType;
DROP TABLE QuestionCategory;
DROP TABLE UnitOfMeasure;
DROP TABLE Survey;
DROP TABLE ExerciseType;
DROP TABLE FoodItems;
DROP TABLE HealthTracker;
DROP TABLE JournalEntry;
DROP TABLE Doctor;
DROP TABLE Patient;
DROP TABLE Researcher;
DROP TABLE WeightHistory;
DROP TABLE Account;
GO
DROP SEQUENCE researchpermission_id_seq;
DROP SEQUENCE journalpermission_id_seq;
DROP SEQUENCE projectsurveybridge_id_seq;
DROP SEQUENCE researchparticipantlist_id_seq;
DROP SEQUENCE projectaccountbridge_id_seq;
DROP SEQUENCE surveyquestionbridge_id_seq;
DROP SEQUENCE foodtrackingbridge_id_seq;
DROP SEQUENCE exercise_bridge_id_seq;
DROP SEQUENCE researchproject_id_seq;
DROP SEQUENCE useranswers_id_seq;
DROP SEQUENCE questiontype_id_seq;
DROP SEQUENCE question_cat_id_seq;
DROP SEQUENCE unitofmeasure_id_seq;
DROP SEQUENCE questions_id_seq;
DROP SEQUENCE survey_id_seq;
DROP SEQUENCE exercise_id_seq;
DROP SEQUENCE fooditems_id_seq;
DROP SEQUENCE healthtracker_id_seq;
DROP SEQUENCE journalentry_id_seq;
DROP SEQUENCE weight_hist_seq;
DROP SEQUENCE account_id_seq;
GO


DROP PROCEDURE CreateQuestionCategory;
DROP PROCEDURE CreateQuestionType;
DROP PROCEDURE CreateUnitofMeasure;
DROP PROCEDURE CreateUserAnswers;
DROP PROCEDURE CreateQuestions;
DROP PROCEDURE CreateSurvey;
DROP PROCEDURE CreateResearchProject;
DROP PROCEDURE CreateExercise;
DROP PROCEDURE CreateFoodItems;
DROP PROCEDURE CreateHealthTracker;
DROP PROCEDURE CreatePatient;
DROP PROCEDURE CreateResearcherAccount;
DROP PROCEDURE CreateDoctorAccount;
DROP PROCEDURE CreateAccount;
DROP PROCEDURE AddJournalEntry;

GO

-- TABLES

--This is the account table, the "heart" of the ERD.
CREATE TABLE Account(account_id DECIMAL(9) NOT NULL PRIMARY KEY 
					,username VARCHAR(32) NOT NULL
					,pseudonym VARCHAR(64) NOT NULL
					,email_address VARCHAR(255) NOT NULL
					,password VARCHAR(18) NOT NULL
					,creation_date DATE
					,birthdate DATE NOT NULL
					,biological_sex char(1) NOT NULL
					,user_weight DECIMAL(3) NOT NULL
					,first_name VARCHAR(255) NOT NULL
					,last_name VARCHAR(255) NOT NULL
					,CONSTRAINT AK_username UNIQUE (username) -- username must be unique.
					,CONSTRAINT AK_pseudonym UNIQUE (pseudonym) -- pseudonym must be unique.
					);

CREATE TABLE WeightHistory (weight_change_id DECIMAL(15) NOT NULL PRIMARY KEY
							 ,old_weight DECIMAL(3) NOT NULL
							 ,new_weight DECIMAL(3) NOT NULL
							 ,account_id DECIMAL(9) NOT NULL
							 ,effective_date DATETIME NOT NULL
							 ,FOREIGN KEY (account_id) REFERENCES Account(account_id)
							 );


CREATE TABLE Doctor (account_id DECIMAL(9) NOT NULL PRIMARY KEY 
					,specialization VARCHAR(255)
					,license_number VARCHAR(32) NOT NULL
					,licensing_authority VARCHAR(64) NOT NULL
					,license_exp_date DATE
					,organization VARCHAR(255) 
					,FOREIGN KEY (account_id) REFERENCES Account(account_id)
					);

CREATE TABLE Patient (account_id DECIMAL(9) NOT NULL PRIMARY KEY 
					 ,treatment_start DATE
					 ,FOREIGN KEY (account_id) REFERENCES Account(account_id)
					 );

CREATE TABLE Researcher (account_id DECIMAL(9) NOT NULL PRIMARY KEY
						,FOREIGN KEY (account_id) REFERENCES Account(account_id)
						,organization VARCHAR(255) 
						);

CREATE TABLE JournalEntry (entry_id DECIMAL(12) NOT NULL PRIMARY KEY
						  ,account_id DECIMAL(9) NOT NULL
						  ,entry_date DATE DEFAULT GETDATE() --defaults to current date unless overridden in application
						  ,journal_entry TEXT NOT NULL
						  ,journal_mood VARCHAR(32)
						  ,journal_title VARCHAR(64) DEFAULT (GETDATE() + ' Entry')
						  ,public_journal_entry DECIMAL(1) NOT NULL DEFAULT 0 -- Defaults to not public.
						  ,hidden_journal_entry DECIMAL(1) NOT NULL DEFAULT 0 --  Defaults to not hidden.
						  ,FOREIGN KEY (account_id) REFERENCES Account(account_id)
						  );

CREATE TABLE HealthTracker (health_tracker_id DECIMAL(12) NOT NULL PRIMARY KEY
						 ,account_id DECIMAL(9) NOT NULL
						 ,health_tracker_time DATE NOT NULL
						 ,hidden_health_entry DECIMAL(1) NOT NULL DEFAULT 0 -- Defaults to not hidden.
						 ,FOREIGN KEY (account_id) REFERENCES Account(account_id)
						 );

CREATE TABLE FoodItems(food_item_id DECIMAL(12) NOT NULL PRIMARY KEY
					  ,food_name VARCHAR(64) NOT NULL
					  ,food_description VARCHAR(255)
					  ,calories DECIMAL(5)
					  );

CREATE TABLE ExerciseType(exercise_id DECIMAL(12) NOT NULL PRIMARY KEY
							  ,exercise_name VARCHAR(64) NOT NULL
							  ,exercise_description VARCHAR(255)
							  );

CREATE TABLE Survey (survey_id DECIMAL(12) NOT NULL PRIMARY KEY
					,account_id DECIMAL(9) NOT NULL
					,survey_name VARCHAR(32) NOT NULL
					,survey_creation_date DATE NOT NULL
					,public_survey DECIMAL(1) NOT NULL DEFAULT 0 -- Defaults to not public.
					,FOREIGN KEY (account_id) REFERENCES Account(account_id)
					);

CREATE TABLE UnitOfMeasure (unit_id DECIMAL(6) NOT NULL PRIMARY KEY
						   ,unit_of_measure VARCHAR(32) NOT NULL
						   ,unit_description VARCHAR(255)
						   ,unit_abbreviation VARCHAR(32)
						   );

CREATE TABLE QuestionType (question_type_id DECIMAL(4) NOT NULL PRIMARY KEY
						  ,question_type VARCHAR(64)
						  ,answer_format VARCHAR(32)
						  );

CREATE TABLE QuestionCategory (question_cat_id DECIMAL(6) NOT NULL PRIMARY KEY
							  ,question_category VARCHAR(64)
							  );

CREATE TABLE Questions(question_id DECIMAL(12) NOT NULL PRIMARY KEY
						 ,question_text VARCHAR(255) NOT NULL
						 ,question_type_id DECIMAL(4) NOT NULL
						 ,question_cat_id DECIMAL(6)
						 ,question_creation_date DATE NOT NULL
						 ,unit_id DECIMAL(6)
						 ,FOREIGN KEY (question_type_id) REFERENCES QuestionType(question_type_id)
						 ,FOREIGN KEY (unit_id) REFERENCES UnitofMeasure(unit_id)
						 ,FOREIGN KEY (question_cat_id) REFERENCES QuestionCategory(question_cat_id)
						 );

CREATE TABLE UserAnswers (answer_id DECIMAL(16) NOT NULL PRIMARY KEY
						 ,survey_id DECIMAL(12) NOT NULL
						 ,question_id DECIMAL(12) NOT NULL
						 ,answer_text VARCHAR(255)
						 ,answer_date DATE NOT NULL
						 ,hidden_answer DECIMAL(1) NOT NULL
						 ,FOREIGN KEY (survey_id) REFERENCES Survey(survey_id)
						 ,FOREIGN KEY (question_id) REFERENCES Questions(question_id)
						 );

CREATE TABLE ResearchProject (project_id DECIMAL(9) NOT NULL PRIMARY KEY
							 ,project_name VARCHAR(255) 
							 ,project_start_date DATE NOT NULL
							 ,project_active DECIMAL(1) NOT NULL
							 );

CREATE TABLE FoodTrackingBridge (food_bridge_id DECIMAL(15) NOT NULL PRIMARY KEY
								,health_tracker_id DECIMAL(12) NOT NULL
								,food_item_id DECIMAL(12) NOT NULL
								,food_consume_time DATE NOT NULL
								,portion_size DECIMAL(2,1) DEFAULT 1.0
								,FOREIGN KEY (health_tracker_id) REFERENCES HealthTracker(health_tracker_id)
								,FOREIGN KEY (food_item_id) REFERENCES FoodItems(food_item_id)
								);

CREATE TABLE ExerciseBridge (exercise_bridge_id DECIMAL(15) NOT NULL PRIMARY KEY
								,health_tracker_id DECIMAL(12) NOT NULL
								,exercise_id DECIMAL(12) NOT NULL
								,exercise_date DATETIME NOT NULL
								,calories_burned DECIMAL(5) NOT NULL
								,exercise_dur_min DECIMAL(5) NOT NULL
								,exercise_instensity DECIMAL(1) DEFAULT 3
								,FOREIGN KEY (health_tracker_id) REFERENCES HealthTracker(health_tracker_id)
								,FOREIGN KEY (exercise_id) REFERENCES ExerciseType(exercise_id)
								);

CREATE TABLE SurveyQuestionBridge (survey_question_bridge_id DECIMAL(15) NOT NULL PRIMARY KEY
								  ,survey_id DECIMAL(12) NOT NULL
								  ,question_id DECIMAL(12) NOT NULL
								  ,question_order DECIMAL(3) NOT NULL
								  ,FOREIGN KEY (survey_id) REFERENCES Survey(survey_id)
								  ,FOREIGN KEY (question_id) REFERENCES Questions(question_id)
								  );

CREATE TABLE ProjectAccountBridge (proj_bridge_id DECIMAL(15) NOT NULL PRIMARY KEY
								  ,account_id DECIMAL(9) NOT NULL
								  ,project_id DECIMAL(9) NOT NULL
								  ,project_head DECIMAL(1) NOT NULL
								  ,FOREIGN KEY (account_id) REFERENCES Account(account_id)
								  ,FOREIGN KEY (project_id) REFERENCES ResearchProject(project_id)
								  );

CREATE TABLE ResearchParticipantList (participant_list_id DECIMAL(15) NOT NULL PRIMARY KEY
									 ,project_id DECIMAL(9) NOT NULL
									 ,account_id DECIMAL(9) NOT NULL
									 ,FOREIGN KEY (project_id) REFERENCES ResearchProject(project_id)
									 ,FOREIGN KEY (account_id) REFERENCES Account(account_id)
									 );

CREATE TABLE ProjectSurveyBridge (project_survey_id DECIMAL(15) PRIMARY KEY
								 ,project_id DECIMAL(9) NOT NULL
								 ,survey_id DECIMAL(12) NOT NULL
								 ,FOREIGN KEY (project_id) REFERENCES ResearchProject(project_id)
								 ,FOREIGN KEY (survey_id) REFERENCES Survey(survey_id)
								 );

CREATE TABLE JournalPermission (journal_security_id DECIMAL(16) NOT NULL PRIMARY KEY
							 ,account_id_doctor DECIMAL(9) NOT NULL
							 ,account_id_patient DECIMAL(9) NOT NULL
							 ,FOREIGN KEY (account_id_doctor) REFERENCES Doctor(account_id)
							 ,FOREIGN KEY (account_id_patient) REFERENCES Patient(account_id)
							 );

CREATE TABLE ResearchPermission (research_security_id DECIMAL(16) NOT NULL PRIMARY KEY
							 ,account_id_researcher DECIMAL(9) NOT NULL
							 ,account_id_patient DECIMAL(9) NOT NULL
							 ,FOREIGN KEY (account_id_researcher) REFERENCES Researcher(account_id)
							 ,FOREIGN KEY (account_id_patient) REFERENCES Account(account_id)
							 );
GO
--SEQUENCES

CREATE SEQUENCE account_id_seq START WITH 1;

CREATE SEQUENCE weight_hist_seq START WITH 1;

CREATE SEQUENCE journalentry_id_seq START WITH 1;

CREATE SEQUENCE healthtracker_id_seq START WITH 1;

CREATE SEQUENCE fooditems_id_seq START WITH 1;

CREATE SEQUENCE exercise_id_seq START WITH 1;

CREATE SEQUENCE survey_id_seq START WITH 1;

CREATE SEQUENCE questions_id_seq START WITH 1;

CREATE SEQUENCE question_cat_id_seq START WITH 1;

CREATE SEQUENCE unitofmeasure_id_seq START WITH 1;

CREATE SEQUENCE questiontype_id_seq START WITH 1;

CREATE SEQUENCE useranswers_id_seq START WITH 1;

CREATE SEQUENCE researchproject_id_seq START WITH 1;

CREATE SEQUENCE exercise_bridge_id_seq START WITH 1;

CREATE SEQUENCE foodtrackingbridge_id_seq START WITH 1;

CREATE SEQUENCE surveyquestionbridge_id_seq START WITH 1;

CREATE SEQUENCE projectaccountbridge_id_seq START WITH 1;

CREATE SEQUENCE researchparticipantlist_id_seq START WITH 1;

CREATE SEQUENCE projectsurveybridge_id_seq START WITH 1;

CREATE SEQUENCE journalpermission_id_seq START WITH 1;

CREATE SEQUENCE researchpermission_id_seq START WITH 1;

GO

--INDEXES
GO
CREATE INDEX IX_Account_birthdate 
ON Account(birthdate);

CREATE INDEX IX_JournalEntry_journal_mood 
ON JournalEntry(journal_mood);

CREATE INDEX IX_JournalEntry_entry_date 
ON JournalEntry(entry_date);

CREATE INDEX IX_JournalPermission_account_id_doctor 
ON JournalPermission(account_id_doctor);

CREATE INDEX IX_JournalPermission_account_id_patient 
ON JournalPermission(account_id_patient);

CREATE INDEX IX_Doctor_account_id 
ON Doctor(account_id);

CREATE INDEX IX_HealthTracker_account_id 
ON HealthTracker(account_id);

CREATE INDEX IX_FoodTrackingBridge_food_item_id 
ON FoodTrackingBridge(food_item_id);

CREATE INDEX IX_FoodTrackingBridge_health_tracker_id 
ON FoodTrackingBridge(health_tracker_id);

CREATE INDEX IX_ExerciseBridge_exercise_id 
ON ExerciseBridge(exercise_id);

CREATE INDEX IX_ExerciseBridge_health_tracker_id 
ON ExerciseBridge(health_tracker_id);

CREATE INDEX IX_JournalEntry_account_id 
ON JournalEntry(account_id);

CREATE INDEX IX_Patient_account_id 
ON Patient(account_id);

CREATE INDEX IX_ProjectAccountBridge_account_id 
ON ProjectAccountBridge(account_id);

CREATE INDEX IX_ProjectAccountBridge_project_id 
ON ProjectAccountBridge(project_id);

CREATE INDEX IX_ProjectSurveyBridge_project_id 
ON ProjectSurveyBridge(project_id);

CREATE INDEX IX_ProjectSurveyBridge_survey_id 
ON ProjectSurveyBridge(survey_id);

CREATE INDEX IX_Questions_question_cat_id 
ON Questions(question_cat_id);

CREATE INDEX IX_Questions_question_type_id 
ON Questions(question_type_id);

CREATE INDEX IX_Questions_unit_id 
ON Questions(unit_id);

CREATE INDEX IX_Researcher_account_id 
ON Researcher(account_id);

CREATE INDEX IX_ResearchParticipantList_project_id 
ON ResearchParticipantList(project_id);

CREATE INDEX IX_ResearchParticipantList_account_id 
ON ResearchParticipantList(account_id);

CREATE INDEX IX_ResearchPermission_account_id_researcher 
ON ResearchPermission(account_id_researcher);

CREATE INDEX IX_ResearchPermission_account_id_participant 
ON ResearchPermission(account_id_patient);

CREATE INDEX IX_Survey_account_id 
ON Survey(account_id);

CREATE INDEX IX_SurveyQuestionBridge_question_id 
ON SurveyQuestionBridge(question_id);

CREATE INDEX IX_SurveyQuestionBridge_survey_id 
ON SurveyQuestionBridge(survey_id);

CREATE INDEX IX_UserAnswers_question_id 
ON UserAnswers(question_id);

CREATE INDEX IX_UserAnswers_survey_id 
ON UserAnswers(survey_id);

CREATE INDEX IX_WeightHistory_account_id 
ON WeightHistory(account_id );

-- HISTORY TRIGGER

GO

CREATE TRIGGER WeightChangeTrigger
ON Account
AFTER UPDATE
AS
BEGIN
	DECLARE @old_weight DECIMAL(3) = (SELECT user_weight FROM DELETED);
	DECLARE @new_weight DECIMAL(3) = (SELECT user_weight FROM INSERTED);

	IF (@old_weight != @new_weight)
		INSERT INTO WeightHistory (weight_change_id
									,old_weight
									,new_weight
									,account_id
									,effective_date)
		VALUES (NEXT VALUE FOR weight_hist_seq
				,@old_weight
				,@new_weight
				,(SELECT account_id FROM INSERTED)
				,GETDATE()
				);
END;
GO


--STORED PROCEDURES
--Replace this with your stored procedure definitions.

-- Use Case 1: Account Creation for users.
CREATE PROCEDURE CreateAccount @username VARCHAR(32)
								,@email_address VARCHAR(255)
								,@pseudonym VARCHAR(255)
								,@password VARCHAR(18)
								,@birthdate DATE
								,@biological_sex CHAR(1)
								,@user_weight DECIMAL(3)
								,@first_name VARCHAR(255)
								,@last_name VARCHAR(255)
AS
BEGIN
	INSERT INTO Account(account_id
						,username
						,email_address
						,pseudonym
						,password
						,creation_date
						,birthdate
						,biological_sex
						,user_weight
						,first_name
						,last_name
						)
	VALUES (NEXT VALUE FOR account_id_seq
			,@username
			,@email_address
			,@pseudonym
			,@password
			,GETDATE()
			,CAST (@birthdate AS DATE)
			,@biological_sex
			,@user_weight
			,@first_name
			,@last_name);
END;
GO
-- Use Case 2: Account Creation for Doctors and Researchers.
CREATE PROCEDURE CreateDoctorAccount @username VARCHAR(32)
								,@email_address VARCHAR(255)
								,@pseudonym VARCHAR(255)
								,@password VARCHAR(18)
								,@birthdate DATE
								,@biological_sex CHAR(1)
								,@user_weight DECIMAL(3)
								,@first_name VARCHAR(255)
								,@last_name VARCHAR(255)
								,@organization VARCHAR(255)
								,@specialization VARCHAR(255)
								,@license_number VARCHAR(32)
								,@licensing_authority VARCHAR(64)
								,@license_exp_date DATE


AS
BEGIN

	INSERT INTO Account(account_id, username, email_address, pseudonym, password, creation_date, birthdate, 
						biological_sex, user_weight, first_name, last_name)
	VALUES (NEXT VALUE FOR account_id_seq, @username, @email_address, @pseudonym, @password, GETDATE(),
			CAST (@birthdate AS DATE), @biological_sex, @user_weight, @first_name, @last_name);

	INSERT INTO Doctor(account_id, organization, specialization, license_number, licensing_authority, license_exp_date) 
	VALUES(CAST((SELECT Current_Value FROM SYS.Sequences WHERE name='account_id_seq')AS DECIMAL(9)), @organization, @specialization, @license_number, @licensing_authority,
			CAST(@license_exp_date AS DATE));

END;
GO
-- Use Case 3: Creating a Journal Entry
CREATE PROCEDURE AddJournalEntry @account_id DECIMAL(9)
								,@journal_entry TEXT
								,@journal_mood VARCHAR(32)
								,@journal_title VARCHAR(64)
								,@public DECIMAL(1)
								,@hidden DECIMAL(1)

AS
BEGIN
	INSERT INTO JournalEntry(entry_id, account_id, entry_date, journal_entry, journal_mood, 
								journal_title, public_journal_entry, hidden_journal_entry)
	VALUES(NEXT VALUE FOR journalentry_id_seq, @account_id, GETDATE(), @journal_entry, @journal_mood, @journal_title,
			@public, @hidden);
END;
GO
-- Other procedures for data insertion.

-- 
CREATE PROCEDURE CreateResearcherAccount @username VARCHAR(32)
								,@email_address VARCHAR(255)
								,@pseudonym VARCHAR(255)
								,@password VARCHAR(18)
								,@birthdate DATE
								,@biological_sex CHAR(1)
								,@user_weight DECIMAL(3)
								,@first_name VARCHAR(255)
								,@last_name VARCHAR(255)
								,@organization VARCHAR(255)

AS
BEGIN

	INSERT INTO Account(account_id, username, email_address, pseudonym, password, creation_date, birthdate, 
						biological_sex, user_weight, first_name, last_name)
	VALUES (NEXT VALUE FOR account_id_seq, @username, @email_address, @pseudonym, @password, GETDATE(),
			CAST (@birthdate AS DATE), @biological_sex, @user_weight, @first_name, @last_name);

	INSERT INTO Researcher(account_id, organization) 
	VALUES(CAST((SELECT Current_Value FROM SYS.Sequences WHERE name='account_id_seq')AS DECIMAL(9)), @organization);

END;
GO

CREATE PROCEDURE CreatePatient @username VARCHAR(32)
								,@email_address VARCHAR(255)
								,@pseudonym VARCHAR(255)
								,@password VARCHAR(18)
								,@birthdate DATE
								,@biological_sex CHAR(1)
								,@user_weight DECIMAL(3)
								,@first_name VARCHAR(255)
								,@last_name VARCHAR(255)
AS
BEGIN

	INSERT INTO Account(account_id, username, email_address, pseudonym, password, creation_date, birthdate, 
						biological_sex, user_weight, first_name, last_name)
	VALUES (NEXT VALUE FOR account_id_seq, @username, @email_address, @pseudonym, @password, GETDATE(),
			CAST (@birthdate AS DATE), @biological_sex, @user_weight, @first_name, @last_name);

	INSERT INTO Patient(account_id, treatment_start) 
	VALUES(CAST((SELECT Current_Value FROM SYS.Sequences WHERE name='account_id_seq')AS DECIMAL(9)), GETDATE());

END;

GO

CREATE PROCEDURE CreateHealthTracker @account_id DECIMAL(9)
									,@hidden DECIMAL(1)
AS
BEGIN

	INSERT INTO HealthTracker(health_tracker_id, account_id, health_tracker_time, hidden_health_entry)
	VALUES (NEXT VALUE FOR healthtracker_id_seq, @account_id, GETDATE(), @hidden);

END;

GO

CREATE PROCEDURE CreateFoodItems @food_name VARCHAR(64)
									,@food_description VARCHAR(255)
									,@calories DECIMAL(5)
AS
BEGIN

	INSERT INTO FoodItems(food_item_id, food_name, food_description, calories)
	VALUES (NEXT VALUE FOR fooditems_id_seq, @food_name, @food_description, @calories);


END;

GO

CREATE PROCEDURE CreateExercise @exercise_name VARCHAR(64)
									,@exercise_description VARCHAR(255)
AS
BEGIN

	INSERT INTO ExerciseType(exercise_id, exercise_name, exercise_description)
	VALUES (NEXT VALUE FOR exercise_id_seq, @exercise_name, @exercise_description);

END;

GO

CREATE PROCEDURE CreateResearchProject @project_name VARCHAR(255)
									,@start_date DATE
									,@active DECIMAL(1)
AS
BEGIN

	INSERT INTO ResearchProject(project_id, project_name, project_start_date, project_active)
	VALUES (NEXT VALUE FOR researchproject_id_seq, @project_name, CAST (@start_date AS DATE), @active);

END;

GO

CREATE PROCEDURE CreateSurvey 
									@account_id DECIMAL(9)
									,@survey_name VARCHAR(32)
									,@creation_date DATE
									,@public DECIMAL(1)
AS
BEGIN

	INSERT INTO Survey(survey_id, account_id, survey_name, survey_creation_date, public_survey)
	VALUES (NEXT VALUE FOR survey_id_seq, @account_id, @survey_name, CAST(@creation_date AS DATE), @public);

END;

GO



CREATE PROCEDURE CreateQuestionCategory @question_category VARCHAR(64)
AS
BEGIN
	INSERT INTO QuestionCategory(question_cat_id, question_category)
	VALUES(NEXT VALUE FOR question_cat_id_seq, @question_category);

END;

GO

CREATE PROCEDURE CreateQuestionType @answer_format VARCHAR(32)
									,@question_type VARCHAR(64)
AS
BEGIN
	INSERT INTO QuestionType(question_type_id, question_type, answer_format)
	VALUES(NEXT VALUE FOR questiontype_id_seq, @question_type, @answer_format);

END;


GO

CREATE PROCEDURE CreateUnitofMeasure @measure VARCHAR(32)
									,@desc VARCHAR(255)
									,@abr VARCHAR(32)
AS
BEGIN
	INSERT INTO UnitOfMeasure(unit_id, unit_of_measure, unit_description, unit_abbreviation)
	VALUES(NEXT VALUE FOR unitofmeasure_id_seq, @measure, @desc, @abr);

END;

GO

CREATE PROCEDURE CreateQuestions @question_text VARCHAR(255)
								,@type DECIMAL(4)
								,@category DECIMAL(6)
								,@creation_date DATE
								,@unit DECIMAL(6)

AS
BEGIN
	INSERT INTO Questions(question_id, question_text, question_type_id, question_cat_id, question_creation_date, unit_id)
	VALUES (NEXT VALUE FOR questions_id_seq, @question_text, @type, @category, CAST(@creation_date AS DATE), @unit);
END;

GO

CREATE PROCEDURE CreateUserAnswers @survey_id DECIMAL(12)
									,@question_id DECIMAL(12)
									,@answer_text VARCHAR(255)
									,@answer_date DATE
									,@hidden DECIMAL(1)

AS 
BEGIN
	INSERT INTO UserAnswers(answer_id, survey_id, question_id, answer_text, answer_date, hidden_answer)
	VALUES(NEXT VALUE FOR useranswers_id_seq, @survey_id, @question_id, @answer_text, CAST(@answer_date AS DATE), @hidden)
END;

GO



--QUERIES
-- This query shows how many distinct accounts posted during a time period, divided up by day.
SELECT COUNT(DISTINCT WeightHistory.account_id) AS Entries, FORMAT(WeightHistory.effective_date, 'M-d-yyyy') AS Date
FROM WeightHistory
WHERE WeightHistory.effective_date > '12/31/2019' AND WeightHistory.effective_date < '2/1/2020'
GROUP BY WeightHistory.effective_date
ORDER BY WeightHistory.effective_date;


-- Query for question number 2, showing how many of each account type, and the total.

SELECT (SELECT COUNT(Account.account_id)
				FROM Account
				WHERE Account.account_id NOT IN (SELECT Doctor.account_id
													FROM Doctor
													UNION
													SELECT Patient.account_id
													FROM Patient
													UNION
													SELECT Researcher.account_id
													FROM Researcher))  AS 'Standard Accounts'
		,COUNT(Doctor.account_id) AS 'Doctor'
		,COUNT(Patient.account_id) AS 'Patient'
		,COUNT(Researcher.account_id) AS 'Researcher'
		,COUNT(Account.account_id) AS 'Total Accounts'
FROM Account
FULL JOIN Doctor ON Doctor.account_id = Account.account_id
FULL JOIN Patient ON Patient.account_id = Account.account_id
FULL JOIN Researcher ON Researcher.account_id = Account.account_id;

-- Query #3, showing survey questions and answers grouped by survey template

SELECT Survey.account_id
		,Survey.survey_id
		,Survey.survey_name
		,SurveyQuestionBridge.question_order AS 'Question #'
		,Questions.question_text
		,UserAnswers.answer_text
		,QuestionType.question_type
FROM UserAnswers
JOIN Questions ON Questions.question_id = UserAnswers.question_id
JOIN Survey ON Survey.survey_id = UserAnswers.survey_id
JOIN SurveyQuestionBridge ON SurveyQuestionBridge.question_id = Questions.question_id
JOIN QuestionType ON QuestionType.question_type_id = Questions.question_type_id
ORDER BY Survey.account_id, Survey.survey_id, FORMAT(UserAnswers.answer_date, 'MM-DD-YYYY'), SurveyQuestionBridge.question_order;

-- Question #4 Creating a View for Doctors to use to read their patient's journals.
GO

CREATE OR ALTER VIEW PatientJournals 
AS
SELECT Account.last_name AS 'Patient'
		,JournalEntry.entry_date
		,JournalEntry.journal_title
		,JournalEntry.journal_mood
		,JournalEntry.journal_entry
FROM JournalEntry
JOIN Account ON Account.account_id = JournalEntry.account_id
WHERE JournalEntry.account_id IN (SELECT JournalPermission.account_id_patient
										FROM JournalPermission
										WHERE JournalPermission.account_id_doctor = 12)
		AND JournalEntry.hidden_journal_entry = 0;

GO