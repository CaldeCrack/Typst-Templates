/*
width: width of the table
height: height of the table
position: alignment of the table
values: values to display in the table
*/
#let auto_table(width, height, position, values) = {
  let col_number = values.at(0).len()
  let row_number = values.len()
  let hor_percentage = if width != auto {width / col_number} else {auto}
  let ver_percentage = if height != auto {height / row_number} else {auto}
  align(position)[
    #table(
      columns: (for i in range(col_number) {(hor_percentage, )}),
      rows: (for i in range(row_number) {(ver_percentage, )}),
      align: center,
      ..for i in range(values.len()) {
        values.at(i).map(n => if type(n) == int {str(n)} else {n})
      }
    )
  ]
}
