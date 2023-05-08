INSERT INTO prospect_finder.prospects (name, phone_number, email, skills)
VALUES
  ('Vera Downs','(832) 902-5266','sit.amet@hotmail.com','5'),
  ('Jasmine Mccall','(624) 524-0241','ultrices.iaculis@hotmail.couk','5'),
  ('Morgan Diaz','(801) 951-0656','malesuada@google.edu','11'),
  ('Fulton Ramsey','(678) 874-3071','pellentesque.ut@google.net','9'),
  ('Selma Johns','(863) 385-4403','mauris@yahoo.net','17'),
  ('Joshua Everett','(243) 342-7774','amet.risus@aol.couk','9'),
  ('Cleo Tucker','1-458-515-3588','metus.sit@google.org','3'),
  ('Sara Hester','1-678-582-2175','sed@protonmail.edu','17'),
  ('Nehru Todd','(725) 888-2391','mi.lacinia.mattis@icloud.org','3'),
  ('Gage Odom','(353) 204-7787','nec.urna@protonmail.com','5');
  

INSERT INTO prospect_finder.jobs (company, title, company_contact, company_email, posted_date, required_skills)
VALUES
  ('Lumen','specialist','Logan Walls','placerat@google.edu','Sep 21, 2023','interdum. Sed auctor'),
  ('Dunder Mifflin','auditor','Xenos Willis','pede.ultrices@aol.org','Mar 5, 2023','sollicitudin commodo ipsum.'),
  ('Acme Corporation','receptionist','Richard Hurley','semper@outlook.org','Dec 28, 2023','libero. Integer in'),
  ('Los Pollos Hermanos','custodian','Sean Knowles','ullamcorper.velit@aol.couk','Oct 16, 2022','tortor at risus.'),
  ('Soylent Industries','broker','Connor Rowland','aenean.eget@aol.com','May 16, 2022','dui, nec tempus'),
  ('Cyberdyne Systems','data analyst','Xenos Beach','mauris.eu@aol.com','Aug 24, 2022','a, facilisis non,'),
  ('Duff Beer','data engineer','Ronan Cummings','in.faucibus@aol.com','Jan 19, 2023','erat semper rutrum.'),
  ('Initech','data entry specialist','Octavius Schroeder','non.luctus.sit@aol.org','Apr 8, 2023','Nulla semper tellus'),
  ('Wayne Enterprises','maanger','Wayne Oliver','donec.egestas.aliquam@protonmail.couk','May 16, 2023','sagittis. Nullam vitae'),
  ('Monsters Inc','security','Miriam Nixon','dui.fusce@protonmail.ca','Jun 5, 2022','neque. In ornare');


INSERT INTO prospect_finder.matches (job_id,prospect_id,match_value )
VALUES
  (4,5,'0.14'),
  (6,1,'0.83'),
  (4,4,'0.29'),
  (4,7,'0.40'),
  (5,4,'0.94'),
  (10,3,'0.08'),
  (2,8,'0.99'),
  (2,9,'0.08'),
  (5,10,'0.79'),
  (2,9,'0.25'),
  (3,2,'0.38'),
  (2,5,'0.52'),
  (4,1,'0.49'),
  (6,10,'0.20'),
  (7,2,'0.64'),
  (10,2,'0.29'),
  (4,2,'0.89'),
  (2,6,'0.75'),
  (8,6,'0.79'),
  (8,4,'0.61'),
  (2,10,'0.96'),
  (10,8,'0.82'),
  (7,2,'0.88'),
  (4,8,'0.52'),
  (9,6,'0.99'),
  (6,3,'0.35'),
  (9,3,'0.07'),
  (9,7,'0.28'),
  (7,4,'0.64'),
  (3,2,'0.18'),
  (3,7,'0.13'),
  (8,8,'0.75'),
  (3,5,'0.23'),
  (7,3,'0.84'),
  (5,3,'0.63'),
  (5,8,'0.89'),
  (4,5,'0.12'),
  (2,4,'0.61'),
  (4,2,'0.88'),
  (3,4,'0.94');