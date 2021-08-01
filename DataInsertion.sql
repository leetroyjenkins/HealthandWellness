BEGIN TRANSACTION CreateAccount;
EXECUTE CreateAccount 'Mike123', 'Mike123@email.com', 'Mike123', 'password1', '1/4/2010', 'M', 200, 'Mike', 'Anderson';
COMMIT TRANSACTION CreateAccount;



BEGIN TRANSACTION CreatePatient;
EXECUTE CreatePatient 'John123', 'John123@email.com', 'John123', 'password2', '1/8/1970', 'M', 160, 'John', 'Anderson';
EXECUTE CreatePatient 'Bill123', 'Bill123@email.com', 'Bill123', 'password3', '6/5/1987', 'M', 190, 'Bill', 'Johnson';
EXECUTE CreatePatient 'Nancy123', 'Nancy123@email.com', 'Nancy123', 'password4', '11/15/47', 'F', 150, 'Nancy', 'Miller';
EXECUTE CreatePatient 'Susan123', 'Susan123@email.com', 'Susan123', 'password5', '12/12/2002', 'F', 160, 'Susan', 'Patel';
EXECUTE CreatePatient 'Jill123', 'Jill123@email.com', 'Jill123', 'password6', '05/06/1989', 'F', 120, 'Jill', 'Owens';
EXECUTE CreatePatient 'Ted123', 'Ted123@email.com', 'Ted123', 'password7', '04/01/1991', 'M', 240, 'Ted', 'Patel';
EXECUTE CreatePatient 'Rachel123', 'Rachel123@email.com', 'Rachel123', 'password8', '09/6/2006', 'F', 220, 'Rachel', 'Michels';
EXECUTE CreatePatient 'Michelle123', 'Michelle123@email.com', 'Michelle123', 'password9', '4/5/2012', 'M', 110, 'Michelle', 'Gibbs';
EXECUTE CreatePatient 'Nathan123', 'Nathan123@email.com', 'Nathan123', 'password10', '2/14/2000', 'M', 167, 'Nathan', 'McMurray';
EXECUTE CreatePatient 'Judah123', 'Judah123@email.com', 'Judah123', 'password11', '6/5/2009', 'M', 177, 'Judah', 'Smith';
COMMIT TRANSACTION CreatePatient;


BEGIN TRANSACTION CreateDoctorAccount;
EXECUTE CreateDoctorAccount'Groot123', 'Groot123@email.com', 'Groot123', 'password1', '1/4/2010', 'M', 300, 'Groot', 'Tree','University of Texas Hospital','Mental Health',1,'Texas','5/11/2025'
EXECUTE CreateDoctorAccount'Star123', 'Star123@email.com', 'Star123', 'password2', '1/8/1970', 'M', 210, 'Star', 'Lord','Fairview Southdale','Mental Health',2,'MN','5/21/2025'
EXECUTE CreateDoctorAccount'Vin123', 'Vin123@email.com', 'Vin123', 'password3', '6/5/1987', 'M', 230, 'Vin', 'Diesel','HCMC','Mental Health',3,'Minnesota','5/11/2025'
EXECUTE CreateDoctorAccount'Rocket123', 'Rocket123@email.com', 'Rocket123', 'password4', '11/15/47', 'M', 70, 'Rocket', 'Racoon','Boston Health','Mental Health',4,'City of Boston','5/21/2025'
EXECUTE CreateDoctorAccount'Ronan123', 'Ronan123@email.com', 'Ronan123', 'password5', '12/12/2002', 'M', 190, 'Ronan', 'None','Oasis Hospital','Mental Health',5,'Republic of China','5/11/2025'
EXECUTE CreateDoctorAccount'Drax123', 'Drax123@email.com', 'Drax123', 'password6', '05/06/1989', 'M', 260, 'Drax', 'The Destroyer','Mayo Clinic','Mental Health',6,'NM Health Department','5/21/2025'
EXECUTE CreateDoctorAccount'Zoe123', 'Zoe123@email.com', 'Zoe123', 'password7', '04/01/1991', 'F', 130, 'Zoe', 'Saldana','Boston Health','Mental Health',7,'Boston Chamber of Commerce','5/11/2025'
EXECUTE CreateDoctorAccount'Howard123', 'Howard123@email.com', 'Howard123', 'password8', '09/6/2006', 'M', 90, 'Howard', 'The Duck','NM Health','Mental Health',8,'NM Health Department','5/21/2025'
EXECUTE CreateDoctorAccount'Meredith123', 'Meredith123@email.com', 'Meredith123', 'password9', '4/5/2012', 'F', 125, 'Meredith', 'Quill','NM Health','Mental Health',9,'NM Health Department','5/11/2025'
EXECUTE CreateDoctorAccount'Korath123', 'Korath123@email.com', 'Korath123', 'password10', '2/14/2000', 'M', 180, 'Korath', 'The Pursuer','NM Health','Mental Health',10,'NM Health Department','5/21/2025'
EXECUTE CreateDoctorAccount'Karen123', 'Karen123@email.com', 'Karen123', 'password11', '6/5/2009', 'F', 125, 'Karen', 'Gillian','NM Health','Mental Health',11,'NM Health Department','5/11/2025'
COMMIT TRANSACTION CreateDoctorAccount;


BEGIN TRANSACTION CreateResearcherAccount;
EXECUTE CreateResearcherAccount 'John300','John300@email.com', 'John300', 'password1', '1/4/2010','M',300, 'John','Anderson','NM Health';
EXECUTE CreateResearcherAccount 'Bill210','Bill210@email.com', 'Bill210', 'password2', '1/8/1970','M',210, 'Bill','Johnson','NM Health';
EXECUTE CreateResearcherAccount 'Nancy230','Nancy230@email.com', 'Nancy230', 'password3', '6/5/1987','M',230, 'Nancy','Miller','NM Health';
EXECUTE CreateResearcherAccount 'Susan70','Susan70@email.com', 'Susan70', 'password4', '11/15/47','M',70, 'Susan','Patel','Boston Health';
EXECUTE CreateResearcherAccount 'Jill190','Jill190@email.com', 'Jill190', 'password5', '12/12/2002','M',190, 'Jill','Owens','Oasis Hospital';
EXECUTE CreateResearcherAccount 'Ted260','Ted260@email.com', 'Ted260', 'password6', '05/06/1989','M',260, 'Ted','Patel','Mayo Clinic';
EXECUTE CreateResearcherAccount 'Rachel130','Rachel130@email.com', 'Rachel130', 'password7', '04/01/1991','F',130, 'Rachel','Michels','Boston Health';
EXECUTE CreateResearcherAccount 'Michelle90','Michelle90@email.com', 'Michelle90', 'password8', '09/6/2006','M',90, 'Michelle','Gibbs','NM Health';
EXECUTE CreateResearcherAccount 'Nathan125','Nathan125@email.com', 'Nathan125', 'password9', '4/5/2012','F',125, 'Nathan','McMurray','Fairview Southdale';
EXECUTE CreateResearcherAccount 'Judah180','Judah180@email.com', 'Judah180', 'password10', '2/14/2000','M',180, 'Judah','Smith','HCMC';
EXECUTE CreateResearcherAccount 'Judd125','Judd125@email.com', 'Judd125', 'password11', '6/5/2009','F',125, 'Judd','Sampson','University of Texas Hospital';
COMMIT TRANSACTION CreateResearcherAccount;


BEGIN TRANSACTION AddJournalEntry;
EXECUTE AddJournalEntry 11, 'This is a journal entry.', 'Happy', 'My first Entry.', 1, 0;
EXECUTE AddJournalEntry 3, 'Journals! Entries!', 'Sad', '#2', 1, 0;
EXECUTE AddJournalEntry 11, 'Also, This is a new entry', 'excited', '#3', 1, 0;
EXECUTE AddJournalEntry 7, 'I"m writing about things.', 'angry', '#4', 1, 0;
EXECUTE AddJournalEntry 9, 'I am the writer of this entry.', 'lonely', '#5', 1, 0;
EXECUTE AddJournalEntry 11, 'Enter my journal, words.', 'Sad', '#6', 1, 0;
EXECUTE AddJournalEntry 13, 'The words I type get saved. Wow!', 'fatigued', '#7', 0, 1;
EXECUTE AddJournalEntry 15, 'This is a sentence.', 'envious', '#8', 0, 1;
EXECUTE AddJournalEntry 11, 'Not a sentence', 'jealous', '#9', 0, 1;
EXECUTE AddJournalEntry 19, ' This is really time consuming.', 'bitter', 'My only entry.', 0, 1;
EXECUTE AddJournalEntry 11, 'The time has come for me to finish my journals. ', 'Happy', '', 0, 0;
COMMIT TRANSACTION AddJournalEntry;

GO

BEGIN TRANSACTION UpdateJournalPermission;
INSERT INTO JournalPermission(journal_security_id, account_id_doctor, account_id_patient)
VALUES (NEXT VALUE FOR journalpermission_id_seq, 12, 2),
		(NEXT VALUE FOR journalpermission_id_seq, 13, 3),
		(NEXT VALUE FOR journalpermission_id_seq, 14, 4),
		(NEXT VALUE FOR journalpermission_id_seq, 15, 5),
		(NEXT VALUE FOR journalpermission_id_seq, 12, 6),
		(NEXT VALUE FOR journalpermission_id_seq, 16, 7),
		(NEXT VALUE FOR journalpermission_id_seq, 17, 8),
		(NEXT VALUE FOR journalpermission_id_seq, 18, 9),
		(NEXT VALUE FOR journalpermission_id_seq, 13, 10),
		(NEXT VALUE FOR journalpermission_id_seq, 12, 11);

COMMIT TRANSACTION JournalPermission;

GO

BEGIN TRANSACTION UpdateResearchPermission;
INSERT INTO ResearchPermission(research_security_id, account_id_researcher, account_id_patient)
VALUES (NEXT VALUE FOR researchpermission_id_seq, 23, 2),
		(NEXT VALUE FOR researchpermission_id_seq, 23, 3),
		(NEXT VALUE FOR researchpermission_id_seq, 24, 4),
		(NEXT VALUE FOR researchpermission_id_seq, 25, 5),
		(NEXT VALUE FOR researchpermission_id_seq, 26, 6),
		(NEXT VALUE FOR researchpermission_id_seq, 26, 7),
		(NEXT VALUE FOR researchpermission_id_seq, 27, 8),
		(NEXT VALUE FOR researchpermission_id_seq, 28, 9),
		(NEXT VALUE FOR researchpermission_id_seq, 23, 10),
		(NEXT VALUE FOR researchpermission_id_seq, 25, 11);

COMMIT TRANSACTION UpdateResearchPermission;

GO

-- Initially I used the trigger to create the changes to demonstrate it works.
BEGIN TRANSACTION CreateWeightHistory;
UPDATE Account
SET user_weight = 205
WHERE account_id = 1;

UPDATE Account
SET user_weight = 210
WHERE account_id = 1;

UPDATE Account
SET user_weight = 205
WHERE account_id = 1;

UPDATE Account
SET user_weight = 203
WHERE account_id = 1;

UPDATE Account
SET user_weight = 198
WHERE account_id = 1;

UPDATE Account
SET user_weight = 193
WHERE account_id = 1;


COMMIT TRANSACTION CreateWeightHistory;

BEGIN TRANSACTION ChangeWeightHistoryDate;

UPDATE Account
SET creation_date = CAST('9/1/2018' AS DATE)
WHERE account_id = 1;

UPDATE WeightHistory
SET effective_date = CAST ('10/1/2018' AS DATE)
WHERE weight_change_id = 1;

UPDATE WeightHistory
SET effective_date = CAST ('12/1/2018' AS DATE)
WHERE weight_change_id = 2;

UPDATE WeightHistory
SET effective_date = CAST ('1/1/2019' AS DATE)
WHERE weight_change_id = 3;

UPDATE WeightHistory
SET effective_date = CAST ('6/1/2020' AS DATE)
WHERE weight_change_id = 4;

UPDATE WeightHistory
SET effective_date = CAST ('1/1/2021' AS DATE)
WHERE weight_change_id = 5;

UPDATE WeightHistory
SET effective_date = CAST ('4/1/2021' AS DATE)
WHERE weight_change_id = 6;

COMMIT TRANSACTION ChangeWeightHistoryDate;

GO

-- Then I added many rows directly to the table so that my query would have a more robust set of results that I can demonstrate.

BEGIN TRANSACTION UpdateWeightHistory;
INSERT INTO WeightHistory
VALUES
(NEXT VALUE FOR weight_hist_seq, 200,195, 1, CAST ('1/1/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 201,196, 2, CAST ('1/2/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 202,197, 3, CAST ('1/3/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 203,198, 4, CAST ('1/4/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 204,199, 5, CAST ('1/5/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 205,200, 6, CAST ('1/6/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 206,201, 7, CAST ('1/7/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 207,202, 8, CAST ('1/8/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 208,203, 9, CAST ('1/9/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 209,204, 10, CAST ('1/10/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 210,205, 11, CAST ('1/11/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 211,206, 1, CAST ('1/12/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 212,207, 2, CAST ('1/13/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 213,208, 3, CAST ('1/14/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 214,209, 4, CAST ('1/15/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 215,210, 5, CAST ('1/16/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 216,211, 6, CAST ('1/17/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 217,212, 7, CAST ('1/18/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 218,213, 8, CAST ('1/19/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 219,214, 9, CAST ('1/20/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 220,215, 10, CAST ('1/21/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 221,216, 11, CAST ('1/22/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 222,217, 1, CAST ('1/23/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 223,218, 2, CAST ('1/24/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 224,219, 3, CAST ('1/25/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 225,220, 4, CAST ('1/26/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 226,221, 5, CAST ('1/27/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 227,222, 6, CAST ('1/28/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 228,223, 7, CAST ('1/29/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 229,224, 8, CAST ('1/30/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 230,225, 9, CAST ('1/31/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 231,226, 10, CAST ('1/1/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 232,227, 11, CAST ('1/2/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 233,228, 1, CAST ('1/3/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 234,229, 2, CAST ('1/4/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 235,230, 3, CAST ('1/5/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 236,231, 4, CAST ('1/6/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 237,232, 5, CAST ('1/7/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 238,233, 6, CAST ('1/8/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 239,234, 7, CAST ('1/9/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 240,235, 8, CAST ('1/10/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 241,236, 9, CAST ('1/11/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 242,237, 10, CAST ('1/12/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 243,238, 11, CAST ('1/13/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 244,239, 1, CAST ('1/14/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 245,240, 2, CAST ('1/15/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 246,241, 3, CAST ('1/16/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 247,242, 4, CAST ('1/17/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 248,243, 5, CAST ('1/18/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 249,244, 6, CAST ('1/19/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 250,245, 7, CAST ('1/20/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 251,246, 8, CAST ('1/21/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 252,247, 9, CAST ('1/22/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 253,248, 10, CAST ('1/23/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 254,249, 11, CAST ('1/24/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 255,250, 1, CAST ('1/25/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 256,251, 2, CAST ('1/26/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 257,252, 3, CAST ('1/27/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 258,253, 4, CAST ('1/28/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 259,254, 5, CAST ('1/29/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 260,255, 6, CAST ('1/1/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 261,256, 7, CAST ('1/2/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 262,257, 8, CAST ('1/3/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 263,258, 9, CAST ('1/4/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 264,259, 10, CAST ('1/5/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 265,260, 11, CAST ('1/6/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 266,261, 1, CAST ('1/7/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 267,262, 2, CAST ('1/8/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 268,263, 3, CAST ('1/9/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 269,264, 4, CAST ('1/10/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 270,265, 5, CAST ('1/11/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 271,266, 6, CAST ('1/12/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 272,267, 7, CAST ('1/13/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 273,268, 8, CAST ('1/14/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 274,269, 9, CAST ('1/15/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 275,270, 10, CAST ('1/16/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 276,271, 11, CAST ('1/17/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 277,272, 1, CAST ('1/18/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 278,273, 2, CAST ('1/19/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 279,274, 3, CAST ('1/20/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 280,275, 4, CAST ('1/21/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 281,276, 5, CAST ('1/22/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 282,277, 6, CAST ('1/23/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 283,278, 7, CAST ('1/24/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 284,279, 8, CAST ('1/25/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 285,280, 9, CAST ('1/26/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 286,281, 10, CAST ('1/27/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 287,282, 11, CAST ('1/28/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 288,283, 1, CAST ('1/29/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 289,284, 2, CAST ('1/30/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 290,285, 3, CAST ('1/31/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 291,286, 4, CAST ('1/1/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 292,287, 5, CAST ('1/2/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 293,288, 6, CAST ('1/3/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 294,289, 7, CAST ('1/4/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 295,290, 8, CAST ('1/5/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 296,291, 9, CAST ('1/6/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 297,292, 10, CAST ('1/7/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 298,293, 11, CAST ('1/8/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 299,294, 1, CAST ('1/9/2020' AS DATE)),
(NEXT VALUE FOR weight_hist_seq, 300,295, 2, CAST ('1/10/2020' AS DATE));


COMMIT TRANSACTION UpdateWeightHistory;



GO

-- Inserts to the HealthTracker Table
BEGIN TRANSACTION CreateHealthTracker;
EXECUTE CreateHealthTracker 1,1;
EXECUTE CreateHealthTracker 2,0;
EXECUTE CreateHealthTracker 3,1;
EXECUTE CreateHealthTracker 4,1;
EXECUTE CreateHealthTracker 5,1;
EXECUTE CreateHealthTracker 6,0;
EXECUTE CreateHealthTracker 7,0;
EXECUTE CreateHealthTracker 8,0;
EXECUTE CreateHealthTracker 9,1;
EXECUTE CreateHealthTracker 10,1;
EXECUTE CreateHealthTracker 11,1;
EXECUTE CreateHealthTracker 12,1;
EXECUTE CreateHealthTracker 13,1;
EXECUTE CreateHealthTracker 14,1;
EXECUTE CreateHealthTracker 15,1;
EXECUTE CreateHealthTracker 16,1;
EXECUTE CreateHealthTracker 17,1;
EXECUTE CreateHealthTracker 18,1;
EXECUTE CreateHealthTracker 19,1;
EXECUTE CreateHealthTracker 20,1;
EXECUTE CreateHealthTracker 21,1;
EXECUTE CreateHealthTracker 22,1;
EXECUTE CreateHealthTracker 23,1;
EXECUTE CreateHealthTracker 24,1;
EXECUTE CreateHealthTracker 25,1;

COMMIT TRANSACTION CreateHealthTracker;

GO


--Insert into FoodItems
BEGIN TRANSACTION CreateFoodItems;
EXECUTE CreateFoodItems 'Pizza (whole)','This is a whole pizza from Papa Johns', 1750;
EXECUTE CreateFoodItems 'Pizza (slice)','This is a slice of papa johns pizza.', 250;
EXECUTE CreateFoodItems 'Hot Dog','This is a hot dog from Target field.', 400;
EXECUTE CreateFoodItems 'Curry','This is my wife"s curry.', 250;
EXECUTE CreateFoodItems 'Lasagna','This is my mom"s lasagna.', 300;
EXECUTE CreateFoodItems 'Cheeseburger','This is a cheeseburger from The Blue Door Pub.', 1200;
EXECUTE CreateFoodItems 'Kale Salad','This is a kale salad I make.', 150;
EXECUTE CreateFoodItems 'Samosa','This is a samaosa my wife makes.', 400;
EXECUTE CreateFoodItems 'Chili','This is the chili I make.', 250;
EXECUTE CreateFoodItems 'Chips','These are Lays BBQ chips.', 250;
COMMIT TRANSACTION CreateFoodItems;

GO 

--Insert into Excercise
BEGIN TRANSACTION CreateExercise;
EXECUTE CreateExercise 'Yoga','Doing Yoga in a class.';
EXECUTE CreateExercise 'Running','Running around the neighborhood';
EXECUTE CreateExercise 'Jogging','Jogging in the compound.';
EXECUTE CreateExercise 'Walking','Walking through the park.';
EXECUTE CreateExercise 'Cycling','Cycling to Shunyi.';
EXECUTE CreateExercise 'Lifting Weights','Lifting at the Gym.';
EXECUTE CreateExercise 'Rowing','Rowing at the gym.';
EXECUTE CreateExercise 'Biking','Biking at the gym.';
EXECUTE CreateExercise 'Hiking','Hiking on the Great Wall.';
EXECUTE CreateExercise 'Swimming','Swimming at the gym.';
COMMIT TRANSACTION CreateExercise;

GO 

-- Insert into Food_Item_Bridge
BEGIN TRANSACTION CreateFoodItemBridgeItems;
INSERT INTO FoodTrackingBridge(food_bridge_id, health_tracker_id, food_item_id, food_consume_time, portion_size)
VALUES (NEXT VALUE FOR foodtrackingbridge_id_seq, 1, 1, CAST( '4/1/2015' AS DATE), 1.0),
		(NEXT VALUE FOR foodtrackingbridge_id_seq, 2, 2, CAST( '4/1/2015' AS DATE), 1.0),
		(NEXT VALUE FOR foodtrackingbridge_id_seq, 3, 3, CAST( '4/1/2015' AS DATE), 1.0),
		(NEXT VALUE FOR foodtrackingbridge_id_seq, 4, 4, CAST( '4/5/2015' AS DATE), 1.0),
		(NEXT VALUE FOR foodtrackingbridge_id_seq, 5, 5, CAST( '4/1/2015' AS DATE), 1.0),
		(NEXT VALUE FOR foodtrackingbridge_id_seq, 6, 6, CAST( '4/6/2015' AS DATE), 1.0),
		(NEXT VALUE FOR foodtrackingbridge_id_seq, 7, 7, CAST( '4/1/2015' AS DATE), 1.5),
		(NEXT VALUE FOR foodtrackingbridge_id_seq, 8, 8, CAST( '4/3/2015' AS DATE), 1.0),
		(NEXT VALUE FOR foodtrackingbridge_id_seq, 9, 9, CAST( '4/1/2015' AS DATE), 1.0),
		(NEXT VALUE FOR foodtrackingbridge_id_seq, 10, 10, CAST( '4/1/2015' AS DATE), 1.0);

COMMIT TRANSACTION CreateFoodItemBridgeItems;

GO

BEGIN TRANSACTION CreateExcerciseBridge;
INSERT INTO ExerciseBridge(exercise_bridge_id, health_tracker_id, exercise_id, exercise_date, calories_burned, exercise_dur_min, exercise_instensity)
VALUES (NEXT VALUE FOR exercise_bridge_id_seq, 11,1, CAST( '4/1/2015' AS DATE), 100,60,5),
		(NEXT VALUE FOR exercise_bridge_id_seq, 12,2, CAST( '4/1/2015' AS DATE), 150,45,5),
		(NEXT VALUE FOR exercise_bridge_id_seq, 13,3, CAST( '4/1/2015' AS DATE), 200,60,3),
		(NEXT VALUE FOR exercise_bridge_id_seq, 14,4, CAST( '4/5/2015' AS DATE), 100,60,3),
		(NEXT VALUE FOR exercise_bridge_id_seq, 15,5, CAST( '4/1/2015' AS DATE), 75,60,3),
		(NEXT VALUE FOR exercise_bridge_id_seq, 16,6, CAST( '4/6/2015' AS DATE), 220,45,4),
		(NEXT VALUE FOR exercise_bridge_id_seq, 17,7, CAST( '4/1/2015' AS DATE), 450,30,4),
		(NEXT VALUE FOR exercise_bridge_id_seq, 18,8, CAST( '4/3/2015' AS DATE), 246,30,3),
		(NEXT VALUE FOR exercise_bridge_id_seq, 19,9, CAST( '4/1/2015' AS DATE), 350,30,3),
		(NEXT VALUE FOR exercise_bridge_id_seq, 20,10, CAST( '4/1/2015' AS DATE), 300,90,5);

COMMIT TRANSACTION CreateExcerciseBridge;

GO

BEGIN TRANSACTION CreateResearchProject;
EXECUTE CreateResearchProject 'My first project', "4/10/2007",1;
EXECUTE CreateResearchProject 'My Biggest project', "4/10/2007",1;
EXECUTE CreateResearchProject 'My Failed project', "4/10/2007",0;
EXECUTE CreateResearchProject 'Studies in pyschology', "4/10/2017",1;
EXECUTE CreateResearchProject 'What"s my weight?', "4/10/2020",1;
EXECUTE CreateResearchProject 'Wow, this is a project', "4/10/2021",0;
EXECUTE CreateResearchProject 'Project to end all projects', "4/10/2005",0;
EXECUTE CreateResearchProject 'I wish I was done with my project', "4/10/2006",1;
EXECUTE CreateResearchProject 'Projects are fun?', "4/10/2007",0;
EXECUTE CreateResearchProject 'The project.', "4/10/2007",0;
EXECUTE CreateResearchProject 'A Project.'," 4/10/2008",0;
COMMIT TRANSACTION CreateResearchProject;

GO

BEGIN TRANSACTION ResearchParticipantList;
INSERT INTO ResearchParticipantList(participant_list_id, project_id, account_id)
VALUES (NEXT VALUE FOR researchparticipantlist_id_seq , 1,2),
		(NEXT VALUE FOR researchparticipantlist_id_seq , 2,3),
		(NEXT VALUE FOR researchparticipantlist_id_seq , 3,4),
		(NEXT VALUE FOR researchparticipantlist_id_seq , 4,5),
		(NEXT VALUE FOR researchparticipantlist_id_seq , 5,6),
		(NEXT VALUE FOR researchparticipantlist_id_seq , 6,7),
		(NEXT VALUE FOR researchparticipantlist_id_seq , 7,8),
		(NEXT VALUE FOR researchparticipantlist_id_seq , 8,9),
		(NEXT VALUE FOR researchparticipantlist_id_seq , 9,10),
		(NEXT VALUE FOR researchparticipantlist_id_seq , 10,11);
COMMIT TRANSACTION ResearchParticipantList;

GO

BEGIN TRANSACTION CreateProjectAccountBridge;
INSERT INTO ProjectAccountBridge(proj_bridge_id, account_id, project_id, project_head)
VALUES (NEXT VALUE FOR projectaccountbridge_id_seq, 2,1,1),
		(NEXT VALUE FOR projectaccountbridge_id_seq, 3,2,1),
		(NEXT VALUE FOR projectaccountbridge_id_seq, 4,3,1),
		(NEXT VALUE FOR projectaccountbridge_id_seq, 5,4,0),
		(NEXT VALUE FOR projectaccountbridge_id_seq, 6,5,0),
		(NEXT VALUE FOR projectaccountbridge_id_seq, 7,6,0),
		(NEXT VALUE FOR projectaccountbridge_id_seq, 8,7,0),
		(NEXT VALUE FOR projectaccountbridge_id_seq, 9,8,0),
		(NEXT VALUE FOR projectaccountbridge_id_seq, 10,9,0),
		(NEXT VALUE FOR projectaccountbridge_id_seq, 11,10,0);

COMMIT TRANSACTION CreateProjectAccountBridge;

GO

BEGIN TRANSACTION CreateSurvey;
EXECUTE CreateSurvey 1,'My first survey',"4/10/2007",1;
EXECUTE CreateSurvey 1,'My Biggest survey'," 4/10/2007 ",1;
EXECUTE CreateSurvey 2,'My Failed survey'," 4/10/2007 ",0;
EXECUTE CreateSurvey 5,'Studies in pyschology'," 4/10/2017 ",1;
EXECUTE CreateSurvey 3,'What"s my weight?'," 4/10/2020 ",1;
EXECUTE CreateSurvey 4,'Wow, this is a survey'," 4/10/2021 ",0;
EXECUTE CreateSurvey 9,'survey to end all surveys'," 4/10/2005 ",0;
EXECUTE CreateSurvey 11,'I wish I was done with my survey'," 4/10/2006 ",1;
EXECUTE CreateSurvey 10,'surveys are fun?'," 4/10/2007 ",0;
EXECUTE CreateSurvey 12,'The survey.'," 4/10/2007 ",0;
EXECUTE CreateSurvey 8,'A survey.'," 4/10/2008",0;
COMMIT TRANSACTION CreateResearchProject;

GO

BEGIN TRANSACTION CreateProjectSurveyBridge;

INSERT INTO ProjectSurveyBridge(project_survey_id, project_id, survey_id)
VALUES (NEXT VALUE FOR projectsurveybridge_id_seq, 1,1),
(NEXT VALUE FOR projectsurveybridge_id_seq, 2,2),
(NEXT VALUE FOR projectsurveybridge_id_seq, 3,3),
(NEXT VALUE FOR projectsurveybridge_id_seq, 4,4),
(NEXT VALUE FOR projectsurveybridge_id_seq, 5,5),
(NEXT VALUE FOR projectsurveybridge_id_seq, 6,6),
(NEXT VALUE FOR projectsurveybridge_id_seq, 7,7),
(NEXT VALUE FOR projectsurveybridge_id_seq, 8,8),
(NEXT VALUE FOR projectsurveybridge_id_seq, 9,9),
(NEXT VALUE FOR projectsurveybridge_id_seq, 10,10);
COMMIT TRANSACTION CreateProjectSurveyBridge;

GO

BEGIN TRANSACTION CreateQuestionType;
EXECUTE CreateQuestionType 'Decimal(1)','Likert 1-5';
EXECUTE CreateQuestionType 'VARCHAR(255)','Free-form';
EXECUTE CreateQuestionType 'Decimal(1)','Likert 1-7';
EXECUTE CreateQuestionType 'Decimal(1)','Likert 1-3';
EXECUTE CreateQuestionType 'VARCHAR(32)','Yes/No';
EXECUTE CreateQuestionType 'Decimal(1)','Likert 1-10';
EXECUTE CreateQuestionType 'VARCHAR(255)','Short-Answer';
EXECUTE CreateQuestionType 'Text','Essay';
EXECUTE CreateQuestionType 'VARCHAR(255)','Drop-Down';
EXECUTE CreateQuestionType 'Decimal(1)','Integer';
EXECUTE CreateQuestionType 'Decimal(1)','Decimal';
COMMIT TRANSACTION CreateQuestionType;

GO

BEGIN TRANSACTION CreateQuestionCategory;
EXECUTE CreateQuestionCategory 'Mental Health ';
EXECUTE CreateQuestionCategory 'Height ';
EXECUTE CreateQuestionCategory 'Physical Health ';
EXECUTE CreateQuestionCategory 'Lung Capacity ';
EXECUTE CreateQuestionCategory 'Hair Color ';
EXECUTE CreateQuestionCategory 'Ethnic Grouping ';
EXECUTE CreateQuestionCategory 'Eye Color ';
EXECUTE CreateQuestionCategory 'Essays ';
EXECUTE CreateQuestionCategory 'Geographical Demographics ';
EXECUTE CreateQuestionCategory 'Race ';
EXECUTE CreateQuestionCategory 'Body Measurements ';
COMMIT TRANSACTION CreateQuestionCategory;

GO

BEGIN TRANSACTION CreatUnitofMeasure;
EXECUTE CreateUnitofMeasure 'Mile','m ','1' ;
EXECUTE CreateUnitofMeasure 'Kilometer','km ','1' ;
EXECUTE CreateUnitofMeasure 'Meter','m ','0' ;
EXECUTE CreateUnitofMeasure 'centimeter','cm ','1' ;
EXECUTE CreateUnitofMeasure 'foot','ft ','1' ;
EXECUTE CreateUnitofMeasure 'inch','in  ','0' ;
EXECUTE CreateUnitofMeasure 'pound','lb ','0' ;
EXECUTE CreateUnitofMeasure 'kilogram','kg ','1' ;
EXECUTE CreateUnitofMeasure 'ounce','oz ','0' ;
EXECUTE CreateUnitofMeasure 'celcius','C  ','0' ;
EXECUTE CreateUnitofMeasure 'farenheit','F  ','0' ;
COMMIT TRANSACTION CreatUnitofMeasure;

GO

BEGIN TRANSACTION CreateQuestions;
EXECUTE CreateQuestions 'On a scale of 1 - 10 how do you feel mentally?',6, 1, "4/10/2007",NULL;
EXECUTE CreateQuestions 'On a scale of 1 -10 how do you feel mentally?',6, 1, " 4/10/2007",NULL;
EXECUTE CreateQuestions 'On a scale of 1 -10 how do you feel spiritually?',6, 1, " 4/10/2007",NULL;
EXECUTE CreateQuestions 'Did you exercise yesterday?',5, 3, " 4/10/2017",NULL;
EXECUTE CreateQuestions 'Will you exercise today?',5, 3, " 4/10/2020",NULL;
EXECUTE CreateQuestions 'Did you medidate yesterday?',5, 1, " 4/10/2021",NULL;
EXECUTE CreateQuestions 'Will you meditate today?',5, 1, " 4/10/2005",NULL;
EXECUTE CreateQuestions 'Were you sick yestereday?',5, 3, " 4/10/2006",NULL;
EXECUTE CreateQuestions 'Are you sick today?',5, 3, " 4/10/2007",NULL;
EXECUTE CreateQuestions 'How did you feel mentally yesterday?',7, 3, " 4/10/2007",NULL;
EXECUTE CreateQuestions 'How did you feel physically yesterday?',7, 3, " 4/10/2000",NULL;


COMMIT TRANSACTION CreateQuestions;

GO

BEGIN TRANSACTION CreateSurveyQuestionBridge;
INSERT INTO SurveyQuestionBridge (survey_question_bridge_id, survey_id, question_id, question_order)
	VALUES (NEXT VALUE FOR surveyquestionbridge_id_seq, 1,1,1),
		(NEXT VALUE FOR surveyquestionbridge_id_seq, 1,2,2),
		(NEXT VALUE FOR surveyquestionbridge_id_seq, 1,3,3),
		(NEXT VALUE FOR surveyquestionbridge_id_seq, 1,4,4),
		(NEXT VALUE FOR surveyquestionbridge_id_seq, 1,5,5),
		(NEXT VALUE FOR surveyquestionbridge_id_seq, 1,6,6),
		(NEXT VALUE FOR surveyquestionbridge_id_seq, 1,7,7),
		(NEXT VALUE FOR surveyquestionbridge_id_seq, 1,8,8),
		(NEXT VALUE FOR surveyquestionbridge_id_seq, 1,9,9),
		(NEXT VALUE FOR surveyquestionbridge_id_seq, 1,10,10);
COMMIT TRANSACTION CreateSurveyQuestionBridge;

GO

BEGIN TRANSACTION CreateUserAnswers;
EXECUTE CreateUserAnswers 1,1,'5 ', "4/10/2020",0;
EXECUTE CreateUserAnswers 1,2,'6 ', "4/10/2020",0;
EXECUTE CreateUserAnswers 1,3,'4 ', "4/10/2020",0;
EXECUTE CreateUserAnswers 1,4,'N ', "4/10/2020",0;
EXECUTE CreateUserAnswers 1,5,'N ', "4/10/2020",0;
EXECUTE CreateUserAnswers 1,6,'Y ', "4/10/2020",0;
EXECUTE CreateUserAnswers 1,7,'Y ', "4/10/2020",0;
EXECUTE CreateUserAnswers 1,8,'N ', "4/10/2020",1;
EXECUTE CreateUserAnswers 1,9,'Y ', "4/10/2020",1;
EXECUTE CreateUserAnswers 1,10,'Tired ', "4/10/2020",1;
EXECUTE CreateUserAnswers 1,11,'Strong ', "4/10/2020",1;
EXECUTE CreateUserAnswers 4,1,'5 ', "3/23/2021",1;
EXECUTE CreateUserAnswers 4,2,'6 ', "3/23/2021",1;
EXECUTE CreateUserAnswers 4,3,'4 ', "3/23/2021",1;
EXECUTE CreateUserAnswers 4,4,'N ', "3/23/2021",1;
EXECUTE CreateUserAnswers 7,1,'N ', "4/1/2021",1;
EXECUTE CreateUserAnswers 7,2,'Y ', "4/1/2021",1;
EXECUTE CreateUserAnswers 7,3,'Y ', "4/1/2021",1;
EXECUTE CreateUserAnswers 7,4,'N ', "4/1/2021",1;
EXECUTE CreateUserAnswers 8,1,'Y ', "5/1/2020",1;
EXECUTE CreateUserAnswers 8,2,'Tired ', "5/1/2020",1;
COMMIT TRANSACTION CreateUserAnswers;

GO