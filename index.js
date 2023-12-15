import express from 'express';
import pg from 'pg';
import bodyParser from 'body-parser';

const app = express();
const PORT = 3000;

const db = new pg.Client({
    user: "postgres",
    host: "localhost",
    database: "Booknotes",
    password: "dbpassword123",
    port: 5432,
});
db.connect();

app.use(bodyParser.json());
app.use(express.static('public'));

/**
 * Returns all books in the database ordered by name
 * @returns {Promise<Array>} Array of book objects
 */
async function getBooks() {
    const result = await db.query('SELECT * FROM book_details ORDER BY name');
    return result.rows;
}

/**
 * Returns a specific book from the database
 * @param {number} id - The ID of the book
 * @returns {Promise<Object>} The book object
 */
async function getBook(id) {
    const result = await db.query('SELECT * FROM book_details WHERE id = $1', [id]);
    return result.rows[0];
}

let books = getBooks();

// Home page
app.get('/', async (req, res) => {
    try {
        const books = await getBooks();
        res.render('index.ejs', { books });
    } catch (error) {
        console.log(error);
        res.status(500).json({ error: error.message });
    }
});

// Add book 
app.post('/add', async (req, res) => {
    try {
        const book = getBook(req.params.id);
    } catch (error) {
        console.log(error);
        res.status(500).json({ error: error.message });
    }
});

// Get book
app.get('/book/:id', async (req, res) => {
    try {
        res.render('viewBook.ejs', { book: await getBook(req.params.id)});
    } catch (error) {
        console.log(error);
        res.status(500).json({ error: error.message });
    }
});

app.listen(PORT, () => {
  console.log(`App listening on port ${PORT}`);
});