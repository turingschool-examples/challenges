var assert = require('chai').assert;
var enumerators = require('../enumerators');
var input = [1, 2, 3, 2];

describe('each', function() {
  it('Returns the original array', function() {
    var decimal = 1;

    var returnValue = enumerators.each(input, function(num) {
      decimal = decimal / num;
    });

    assert.equal(returnValue, input);
  });

  it('Executes the provided callback on each element of the input array', function() {
    var decimal = 1;

    var returnValue = enumerators.each(input, function(num) {
      decimal = decimal / num;
    });

    assert.isBelow(decimal, 1);
    assert.isAbove(decimal, 0);
  });
});

describe('map', function() {
  it('Does not modify the original array', function() {
    var returnValue = enumerators.map(input, function(num) {
      return num * 2;
    });

    assert.deepEqual(input, [1, 2, 3, 2])
  });

  it('Returns a modified array', function() {
    var doubled = enumerators.map(input, function(num) {
      return num * 2;
    });

    assert.deepEqual(doubled, [2, 4, 6, 4]);
  });
});

describe('select', function() {
  it('Does not modify the original array', function() {
    var returnValue = enumerators.select(input, function(num) {
      return num === 2;
    });

    assert.deepEqual(input, [1, 2, 3, 2])
  });

  it('Returns a modified array', function() {
    var onlyTwos = enumerators.select(input, function(num) {
      return num === 2;
    });

    assert.deepEqual(onlyTwos, [2, 2]);
  });
});

describe('all', function() {
  it('Does not modify the original array', function() {
    enumerators.all(input, function(num) {
      return num === 2;
    });

    assert.deepEqual(input, [1, 2, 3, 2])
  });

  it('Returns true if all elements in the array pass the test', function() {
    var allIntegers = enumerators.all(input, function(num) {
      return typeof num === 'number';
    });

    assert.isTrue(allIntegers);
  });

  it('Returns false if any element fails the provided test', function() {
    var allEven = enumerators.all(input, function(num) {
      return num % 2 === 0;
    });

    assert.isFalse(allEven);
  });
});

describe('some', function() {
  it('Does not modify the original array', function() {
    enumerators.some(input, function(num) {
      return num === 2;
    });

    assert.deepEqual(input, [1, 2, 3, 2])
  });

  it('Returns true if any elements in the array pass the test', function() {
    var threeInArray = enumerators.some(input, function(num) {
      return num === 3;
    });

    assert.isTrue(threeInArray);
  });

  it('Returns false if all elements fail the provided test', function() {
    var greaterThanFivePresent = enumerators.some(input, function(num) {
      return num > 5;
    });

    assert.isFalse(greaterThanFivePresent);
  });
});

describe('reduce', function() {
  it('Does not modify the original array', function() {
    var returnValue = enumerators.reduce(input, function(num) {
      return num === 2;
    });

    assert.deepEqual(input, [1, 2, 3, 2])
  });

  it('Returns a value derived from the input array', function() {
    var sum = enumerators.reduce(input, function(memo, num) {
      return memo + num;
    });

    assert.equal(sum, 8);

    var convertedToString = enumerators.reduce(input, function(memo, num) {
      return memo + String(num);
    });

    assert.equal(convertedToString, '1232');
  });

  it('Takes an optional initialization argument', function() {
    var numWasEven = enumerators.reduce(input, function(memo, num) {
      memo.push(num % 2 === 0);
      return memo;
    }, []); // <- Optional 3rd argument here (An empty array)

    assert.deepEqual(numWasEven, [false, true, false, true])
  });
});