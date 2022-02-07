var express = require('express');
var index = express();
//call body-parser dependency
 var bodyParser = require('body-parser');
// //call mongoose dependency for use mongodb 
const mongoose = require('mongoose');
// include the mongodb database file in index.js 
var User = require('./models/db');

var server = index.listen(4000,function(){
    console.log("Go to port number 4000");
});

index.use(bodyParser.urlencoded({extended: true}));
index.use(bodyParser.json());
// // connect with mongodb
mongoose.connect('mongodb://localhost:27017/employee', { useNewUrlParser: true }, (err) => {
    if(!err){
        console.log('MongoDB Connection Succeeded');
    }
    else{
        console.log('Error in MongoDB Connection :' +err)
    }
});
index.get('/',function(req,res){
    res.json('Devre Esha');
});
app.set('view engine','ejs');

app.get('/', function(req,res){
    res.json('insert');
});
app.post('/insert', function(req,res){
    var user = new User({
        name:req.body.name,
        email:req.body.email,
        password:req.body.password
    });
    user.save(()=>{
        
        res.redirect('/show');
    });
});
app.get('/show', function(req,res){
    User.find({},function(err,result){
        res.render('show', {users:result});
    });
});
app.get('/delete/:id', async function(req,res){
    await User.findByIdAndDelete(req.params.id);
    res.redirect('/show');
});
app.get('/edit/:id', function(req,res){
    User.findById(req.params.id, function(err,result){
        res.render('edit', {users:result});
    });
});
app.post('/update/:id',async function(req,res){
    await User.findByIdAndUpdate(req.params.id,req.body);
    res.redirect('/show');
});
