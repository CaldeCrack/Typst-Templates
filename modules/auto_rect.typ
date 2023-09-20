/*
width: width of the rect
height: height of the rect
color: color displayed in rect
value: value to display in rect
*/
#let auto_rect(width, height, color, position, value) = {
  align(position)[
    #rect(
      width: width,
      height: height,
      fill: color,
    )[#if type(value) == int {str(value)} else {value}]
  ]
}
