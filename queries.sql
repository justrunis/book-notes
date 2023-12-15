-- Create a book table
CREATE TABLE book_details (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    author VARCHAR(255) NOT NULL,
    rating DECIMAL(3, 2) NOT NULL,
    isbn VARCHAR(13) NOT NULL,
    publication_date DATE NOT NULL,
    genre VARCHAR(255) NOT NULL,
    cover_image VARCHAR(255) NULL,
    description TEXT NULL
);


-- Insert 5 books into the table
INSERT INTO book_details (name, author, rating, isbn, publication_date, genre, cover_image, description)
VALUES ('Book 1', 'Author 1', 4.5, 'ISBN1', '2022-01-01', 'Fiction', 'cover1.jpg', 'Description 1'),
       ('Book 2', 'Author 2', 3.8, 'ISBN2', '2022-02-01', 'Mystery', 'cover2.jpg', 'Description 2'),
       ('Book 3', 'Author 3', 4.2, 'ISBN3', '2022-03-01', 'Romance', 'cover3.jpg', 'Description 3'),
       ('Book 4', 'Author 4', 4.0, 'ISBN4', '2022-04-01', 'Science Fiction', 'cover4.jpg', 'Description 4'),
       ('Book 5', 'Author 5', 4.7, 'ISBN5', '2022-05-01', 'Thriller', 'cover5.jpg', 'Description 5');

-- Insert real book examples into the table
INSERT INTO book_details (name, author, rating, isbn, publication_date, genre, cover_image, description)
VALUES ('The Catcher in the Rye', 'J.D. Salinger', 4.0, '0316769487', '1951-07-16', 'Fiction', 'catcher.jpg', 'A coming-of-age novel that has become a modern classic.'),
        ('To Kill a Mockingbird', 'Harper Lee', 4.8, '0060935464', '1960-07-11', 'Fiction', 'mockingbird.jpg', 'A powerful story that explores racial injustice and moral growth.'),
        ('1984', 'George Orwell', 4.6, '0451524934', '1949-06-08', 'Fiction', '1984.jpg', 'A dystopian novel depicting a totalitarian society and the struggle for freedom.'),
        ('The Great Gatsby', 'F. Scott Fitzgerald', 4.3, '0743273567', '1925-04-10', 'Fiction', 'gatsby.jpg', 'A tale of wealth, love, and the American Dream in the Jazz Age.'),
        ('Moby-Dick', 'Herman Melville', 4.1, '0142437247', '1851-10-18', 'Fiction', 'mobydick.jpg', 'An epic adventure of Captain Ahab and his obsession with the white whale.');

