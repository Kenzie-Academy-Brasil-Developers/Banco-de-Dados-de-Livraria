SELECT * FROM books;
--------------------------------------------------------
SELECT 
    books.*,
    categories.name AS category_name
FROM 
    books
JOIN 
    books_categories ON books.id = books_categories."bookId"
JOIN 
    categories ON books_categories."categoryId" = categories.id
WHERE 
    categories.name = 'Fantasia';
------------------------------------------------------------------
SELECT
    books.id AS books_id,
    books.name AS books_name,
    books.pages AS books_pages,
    categories.id AS categories_id,
    categories.name AS categories_name

    FROM books
    JOIN books_categories ON books.id=books_categories."bookId"
    JOIN categories ON books_categories."categoryId"=categories.id;
------------------------------------------------------------------
    SELECT
    authors.id AS author_id,
    authors.name AS author_name,
    authors.bio AS author_bio,
    books.id AS book_id,
    books.name AS book_name,
    books.pages AS book_pages,
    books."createdAt" AS book_createdAt,
    books."updatedAt" AS book_updatedAt
FROM
    books
JOIN
    authors ON books."authorId" = authors.id
WHERE
    books.name = 'Harry Potter';