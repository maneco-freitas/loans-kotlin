-- Criação da tabela Person
CREATE TABLE Person (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

-- Criação da tabela Loan
CREATE TABLE Loan (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    amount DOUBLE NOT NULL,
    person_id BIGINT,
    FOREIGN KEY (person_id) REFERENCES Person(id) ON DELETE CASCADE
);

-- Criação da tabela Installment
CREATE TABLE Installment (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    amount DOUBLE NOT NULL,
    due_date INT NOT NULL,
    loan_id BIGINT,
    FOREIGN KEY (loan_id) REFERENCES Loan(id) ON DELETE CASCADE
);
