/**
 * @param {Request} req - Request object
 * @param {Response} res - Response object
 */
export default function routeHandler(req, res) {
    const route = req.url.split('api')[1];

    switch (route) {
        case '/login':
            login(req, res);
            break;
        default:
            res.writeHead(404);
            res.end('ERROR: Endpoint not found');
            break;
    }
}

/**
 * 
 * @param {Request} req - Request object
 * @param {Response} res - Response object
 */
function login(req, res) {
    let resp;
    // This is crap, I'd use an actual DB in prod
    const credentials = {user: 'guest', pass: 'guest'}
    res.setHeader('Content-Type', 'application/json');

    if(req.body.user !== credentials.user || req.body.password !== credentials.pass) {
        res.writeHead(400);
        resp = {
            error: 'Incorrect user name or password'
        }
    } else {
        res.writeHead(200);
        resp = {
            token: Date.now()
        }
    }

    res.end(JSON.stringify(resp));
}