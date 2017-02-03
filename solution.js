class StringValidator{
  constructor(){
    this.pairs = { "[": "]", "{": "}" }
  }
  // loop through array
  // get first pair
  // see if second exists
  // if does exit
  // else return false

  validate(string){
    var stringArray = string.split("");
    var answer;
    var bcount = 0;
    var hcount = 0;
    var pcount = 0;
    var falseAnswer;

    for(var i = 0; i < stringArray.length; i++){
      var current = stringArray[i];
      if(current == "("){ pcount += 1; }
      if(current == "["){ bcount += 1; }
      if(current == "{"){ hcount += 1; }

      for(var j = 0 + 1; j < stringArray.length; j++){
        var newItem = stringArray[j];
        if(current == "(" && newItem == ")")
        if(current == "(" && newItem == ")"){ pcount += 1; }
        if(current == "[" && newItem == "]"){ bcount += 1; }
        if(current == "{" && newItem == "}"){ hcount += 1; }
      }
    }

    if((pcount % 2 != 0) || (hcount % 2 != 0) || (bcount % 2 != 0)){
      answer = false;
    } else {
      answer = true;
    }
    console.log(answer);
  }
}

module.exports = StringValidator;

var v = new StringValidator();
v.validate("([)]")
