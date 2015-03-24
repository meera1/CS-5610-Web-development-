var mongoose = require('mongoose');
mongoose.connect('mongodb://localhost/practice');


var FormSchema = new mongoose.Schema({
    name: String,
    DOB: Date

}, {collection: "form"});


var Form = mongoose.model("Form", FormSchema);

var form1 = new Form({ name: 'Form 1', DOB: new Date() });

form1.save();

Form.find(function (err, data) {
    console.log(err);
    console.log(data);
});


Form.findById('550f07364f0cbbd416627677', function (err, data) {
    data.name = "Form 123";
    data.save();
    console.log(data); 
});
