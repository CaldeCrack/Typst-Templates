// width: width of the table
// values: values to display in the table
#let auto_table(width, values) = {
  let columns = values.at(0).len()
  let percentage = 1% * width / columns
  align(center)[
    #table(
      columns: (for i in range(columns) {(percentage, )}),
      align: center,
      ..for i in range(values.len()) {
        values.at(i).map(str)
      }
    )
  ]
}
