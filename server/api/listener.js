import routeHandler from './routes';

/**
 * Basic CRUD listener
 * @param {Request} req 
 * @param {Response} res 
 */
export default function requestListener(req, res) {

    switch (req.method) {
        case 'POST':
            let body = '';

            req.on('data', chunk => {
                body += chunk.toString();
            });
            req.on('end', () => {
                // Quick and dirty with no actual check for content type
                req.body = JSON.parse(body);
                routeHandler(req, res);
            });
            break;
        default:
            const request = { method: req.method, url: req.url, body: req.body }

            res.setHeader('Content-Type', 'application/json');
            res.writeHead(200);
            res.end(`${JSON.stringify(request)}`);
            break;
    }

}