var each = function(array, callback) {
  for ( var i = 0; i < array.length; i ++ ) {
    callback(array[i]);
  };
  return array;
};

var map = function(array, callback) {
  var newArr = [];

  for ( var i = 0; i < array.length; i ++ ) {
    newArr.push(callback(array[i]));
  }

  return newArr;
};

var select = function(array, callback) {
  var newArr = [];

  for ( var i = 0; i < array.length; i ++ ) {
    if (callback(array[i])) {
      newArr.push(array[i]);
    }
  }

  return newArr;
};

var all = function(array, callback) {
  for ( var i = 0; i < array.length; i ++ ) {
    if (!callback(array[i])) {
      return false;
    }
  }

  return true;
};

var some = function(array, callback) {
  for ( var i = 0; i < array.length; i ++ ) {
    if (callback(array[i])) {
      return true;
    }
  }

  return false;
};

var reduce = function(array, callback, initial) {
  for (var i = 0; i < array.length; i ++ ) {
    if (!initial) {
      initial = array[i];
    } else {
      initial = callback(initial, array[i]);
    }
  }
  return initial;
};

module.exports = { each, map, select, all, some, reduce };
