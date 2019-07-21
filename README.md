# login_wanda

Exploring BLOC patterns and Streams.

## Why do we use Streams?

- A lot of Dart + Flutter libraries return streams that you and I can work with.
- We can compose streams out of easily reusable functions.
- Can be really easy to read Streams and understand how they modify data.
- Streams are all about time-series data - far easier to do some time-related stuff with streams.

## Examples of Streams

> Click-rate App

##### index.html

```
  <button>Click me</button>
```

##### App.dart

```
import 'dart:html';

void main() {
  final ButtonElement button = querySelector('button');

  button.onClick
    .timeout(
      new Duration(seconds: 1),
      onTimeout: (sink) => sink.addError('You lost!')
    )
    .listen(
      (event) {},
      onError: (err) => print(err)
    )
}
```

> Word Guessing App

##### index.html

```
  <h4>Guess the word</h4>
  <input />
  <button>Guess</button>
```

##### App.dart

```
import 'dart:html';

void main() {
  final ButtonElement button = querySelector('button');
  final InputElement input = querySelector('input');

  button.onClick.
    .take(4)
    .where((event) => input.value == 'banana')
    .listen(
      (event) => print('You got it'),
      onDone: () => print('Nope, bad guesses')
    );
}
```
