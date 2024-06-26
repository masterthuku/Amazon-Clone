const express = require('express');
const productRouter = express.Router();
const auth = require('../middleware/auth');
const Product = require('../models/product');

productRouter.get('/api/products', auth, async (req, res) => {
    try {
        console.log(req.query.category);
        const products = await productRouter.find({category: req.query.category});
        return res.json(products);
    } catch (e) {
        res.status(500).json({ error: e.message });
    }
});

module.exports = productRouter;