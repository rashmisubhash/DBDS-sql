USE userdb;
DROP TABLE IF EXISTS customer_questions;

CREATE TABLE customer_questions (
    question_id INT AUTO_INCREMENT PRIMARY KEY,       -- Unique identifier for each question
    customer_id VARCHAR(50) NOT NULL,                 -- ID of the customer asking the question
    question TEXT NOT NULL,                           -- The question text
    reply TEXT,                                       -- The reply text (optional, initially NULL)
    status ENUM('Pending', 'Answered') DEFAULT 'Pending', -- Status of the question
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,   -- Timestamp when the question was created
    replied_at TIMESTAMP NULL DEFAULT NULL,           -- Timestamp when the reply was added
    FOREIGN KEY (customer_id) REFERENCES member(uname) -- Foreign key linking to the member table
) ENGINE=InnoDB;

-- In-- sert sample questions
-- INSERT INTO customer_questions (customer_id, question) VALUES
-- ('testCustomer', 'How can I reset my password?'),
-- ('testCustomer', 'When will my order ship?'),
-- ('testCustomer', 'Can I cancel my subscription?');
