var mongoose = require('mongoose');
var schema = mongoose.Schema({
    fName: String,
    lName: String,
    email: String
});
module.exports = mongoose.model('emp', schema);