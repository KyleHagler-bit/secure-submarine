const express = require('express');
const pool = require('../modules/pool');
const router = express.Router();
const { rejectUnauthenticated } = require('../modules/authentication-middleware');


//added rejectUnauthenticated to GET
//Also added queryText to ensure that not all secrets were shown on DOM
router.get('/', rejectUnauthenticated, (req, res) => {
    console.log('req.user:', req.user);
    const queryText = `SELECT * FROM "secret" WHERE secrecy_level <= $1;`
    const queryValues = [req.user.clearance_level];
    pool.query(queryText, queryValues)
        .then(results => res.send(results.rows))
        .catch(error => {
            console.log('Error making SELECT for secrets:', error);
            res.sendStatus(500);
        });
});

module.exports = router;