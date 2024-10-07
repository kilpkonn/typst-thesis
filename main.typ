#import "template.typ": *

#show: project.with(
  title: "Title in English",
  title_estonian: "Pealkiri eesti keeles",
  thesis_type: "Master's thesis",
  thesis_type_estonian: "Magistritöö",
  authors: (
    (
      name: "Author Author",
      student_code: "123456IAPM"
    ),
  ),
  supervisors: (
    (
      name: "Supervisor Supervisor",
      degree: "MSc",
    ),
  ),
  location: "Tallinn",
  date: "May 12, 2024",
  dev: false,
)

= Introduction
Here is an example footnote#cite-footnote("typst-thesis", "2024-04-06", "https://github.com/kilpkonn/typst-thesis", "http://web.archive.org/web/20241007182045/https://github.com/kilpkonn/typst-thesis").

We can see an example of Rust code in @into-example-1:
#figure(
sourcecode()[
```rs
enum Option<T> { None, Some(T) }

fn wrap(arg: i32) -> Option<i32> {
    todo!();
}
```],
caption: [
    Rust function to wrap `i32` in `Option`
  ],
) <into-example-1>


You can also write inline code with syntax highlighting like ```rust Option``` and ```rust todo!()```.
For development purposes you can leave #note[Some note text here][notes].
You can also give suggestions to #suggestion[change][improve] things.
Or leave todo notes.
#todo[Write a good introduction]
#todo-supervisor[
  Write even better thesis
  #todo[No can do, not enough time]
]

You can also add figures, we can see a random one in @fig.
#figure(
  // placement: auto,
  image("fig/time.png", width: 60%),
  caption: [
    The execution time of the algorithm is linear in the search depth.
    $"Slope" = 7.6"ms"/"depth"$, standard deviation = 6.7ms
  ],
) <fig>

Or write tables like so:
#figure(
  table(
    columns: 4,
    [t], [1], [2], [3],
    [y], [0.3s], [0.4s], [0.8s],
  ),
  caption: [Timing results],
)

You can also do fancy math
$ f(x, y) := cases(
  1 "if" (x dot y)/2 <= 0,
  2 "if" x "is even",
  3 "if" x in NN,
  sum_(k=x)^y k "otherwise",
) $

Here is an example citation to @example-cite that was originally written as a thesis in Typst.

= Background <background>
#todo[Gotta write this]

= Conclusion <conclusion>
#todo-supervisor[Write this as well]