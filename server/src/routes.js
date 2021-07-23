import bodyParser from 'body-parser';
import cors from 'cors';
import express from 'express';

const app = express();

// Convert request body JSON to object
app.use(bodyParser.json());
// Enable CORS for requests
app.use(cors());

app.post('/login', (req, res) => {
    const credentials = {user: 'guest', pass: 'guest'}

    if(req.body.user == credentials.user && req.body.pass == credentials.pass) {
        const token = {token: `${Date.now()}`}
        res.status(200).send(JSON.stringify(token));
    } else {
        const error = {error: 'username or password are incorrect'}
        res.status(400).send(JSON.stringify(error));
    }
});

app.listen(4747, () => {
    console.log('server running on port 4747');
});