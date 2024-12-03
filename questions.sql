USE userdb;
DROP TABLE IF EXISTS questions;

CREATE TABLE questions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id VARCHAR(50),
    question TEXT NOT NULL,
    answer TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- INSERT INTO questions (customer_id, question, answer) 
-- VALUES 
-- ('cust001', 'How can I reset my password?', 'You can reset your password by clicking on "Forgot Password" on the login page.'),
-- ('cust002', 'What are the support hours for customer service?', 'Our customer service is available 24/7.'),
-- ('cust003', 'How do I update my profile information?', 'To update your profile, navigate to the settings page and edit your details.'),
-- ('cust001', 'Is there a mobile app available for this service?', 'Yes, our mobile app is available on both iOS and Android platforms.'),
-- ('cust004', 'How do I cancel my subscription?', 'To cancel your subscription, go to the subscription section and select "Cancel Subscription".'),
-- ('cust002', 'What payment methods do you accept?', 'We accept credit cards, debit cards, and PayPal.'),
-- ('cust003', 'How do I contact technical support?', 'You can contact technical support via the "Help" section on our website.'),
-- ('cust005', 'What is the refund policy?', 'Our refund policy allows refunds within 30 days of purchase.'),
-- ('cust001', 'Are my account details secure?', 'Yes, we use industry-standard encryption to ensure your data is safe.'),
-- ('cust004', 'Can I switch plans after signing up?', 'Yes, you can upgrade or downgrade your plan at any time.');

-- SELECT * FROM questions;
