-- Inserindo pessoas
INSERT INTO Person (name) VALUES ('Alice');
INSERT INTO Person (name) VALUES ('Bob');
INSERT INTO Person (name) VALUES ('Charlie');
INSERT INTO Person (name) VALUES ('Diana');
INSERT INTO Person (name) VALUES ('Ethan');

-- Inserindo empréstimos
INSERT INTO Loan (amount, person_id) VALUES (1000.00, 1); -- Empréstimo de Alice
INSERT INTO Loan (amount, person_id) VALUES (2000.00, 2); -- Empréstimo de Bob
INSERT INTO Loan (amount, person_id) VALUES (1500.00, 3); -- Empréstimo de Charlie
INSERT INTO Loan (amount, person_id) VALUES (2500.00, 4); -- Empréstimo de Diana
INSERT INTO Loan (amount, person_id) VALUES (3000.00, 5); -- Empréstimo de Ethan

-- Inserindo parcelas para o empréstimo de Alice
INSERT INTO Installment (amount, due_date, loan_id) VALUES (500.00, 1, 1);
INSERT INTO Installment (amount, due_date, loan_id) VALUES (500.00, 2, 1);

-- Inserindo parcelas para o empréstimo de Bob
INSERT INTO Installment (amount, due_date, loan_id) VALUES (1000.00, 1, 2);
INSERT INTO Installment (amount, due_date, loan_id) VALUES (1000.00, 2, 2);

-- Inserindo parcelas para o empréstimo de Charlie
INSERT INTO Installment (amount, due_date, loan_id) VALUES (750.00, 1, 3);
INSERT INTO Installment (amount, due_date, loan_id) VALUES (750.00, 2, 3);

-- Inserindo parcelas para o empréstimo de Diana
INSERT INTO Installment (amount, due_date, loan_id) VALUES (1250.00, 1, 4);
INSERT INTO Installment (amount, due_date, loan_id) VALUES (1250.00, 2, 4);

-- Inserindo parcelas para o empréstimo de Ethan
INSERT INTO Installment (amount, due_date, loan_id) VALUES (1500.00, 1, 5);
INSERT INTO Installment (amount, due_date, loan_id) VALUES (1500.00, 2, 5);
