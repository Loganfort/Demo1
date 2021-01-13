const express = require('express');
const router = express.Router();

const mysqlConnection  = require('../database.js');

// GET all Pelicula
router.get('/', (req, res) => {
  mysqlConnection.query('SELECT * FROM pelicula', (err, rows, fields) => {
    if(!err) {
      res.json(rows);
    } else {
      console.log(err);
    }
  });  
});

// GET Pelicula
router.get('/:id', (req, res) => {
  const { id } = req.params; 
  mysqlConnection.query('SELECT * FROM pelicula WHERE id = ?', [id], (err, rows, fields) => {
    if (!err) {
      res.json(rows[0]);
    } else {
      console.log(err);
    }
  });
});

// DELETE Pelicula
router.delete('/:id', (req, res) => {
  const { id } = req.params;
  mysqlConnection.query('DELETE FROM pelicula WHERE id = ?', [id], (err, rows, fields) => {
    if(!err) {
      res.json({status: 'pelicula Deleted'});
    } else {
      console.log(err);
    }
  });
});

// INSERT An Pelicula
router.post('/', (req, res) => {
  const {id, name, des,CodGenero, Codidioma} = req.body;
  console.log(id, name, des,CodGenero, Codidioma);
  const query ='CALL PeliculaInsert_Update(?,?,?,?,?);';
  mysqlConnection.query(query, [id, name, des,CodGenero, Codidioma], (err, rows, fields) => {
    if(!err) {
      res.json({status: 'Pelicula Saved'});
    } else {
      console.log(err);
    }
  });

});

router.put('/:id', (req, res) => {
  const { name, des,CodGenero, Codidioma } = req.body;
  const { id } = req.params;
  const query = 'CALL PeliculaInsert_Update(?,?,?,?,?);';
  mysqlConnection.query(query, [id, name,des,CodGenero, Codidioma], (err, rows, fields) => {
    if(!err) {
      res.json({status: 'Pelicula Updated'});
    } else {
      console.log(err);
    }
  });
});

module.exports = router;
