CREATE TABLE prospects (
  prospect_id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  phone_number VARCHAR(20) NOT NULL,
  skills VARCHAR(255)
);

CREATE TABLE jobs (
  job_id SERIAL PRIMARY KEY,
  company VARCHAR(255) NOT NULL,
  title VARCHAR(255) NOT NULL,
  company_contact VARCHAR(255) NOT NULL,
  company_email VARCHAR(255) NOT NULL,
  posted_date DATE NOT NULL,
  required_skills VARCHAR(255) NOT NULL
);

CREATE TABLE matches (
  match_id SERIAL PRIMARY KEY,
  job_id INTEGER REFERENCES jobs(job_id),
  prospect_id INTEGER REFERENCES prospects(prospect_id),
  match_value INTEGER NOT NULL
);