typeof(TRUE)
class(TRUE)

typeof(2L)
class(2L)

typeof(2)
class(2)

typeof(2 + 2i)
class(2 + 2i)

typeof("jumping fox")
class("jumping fox")

typeof(list(a = "jane", b = 123))
class(list(a = "jane", b = 123))

typeof(emptyenv())
class(emptyenv())

typeof(function(){ print(" hello")})
class(function(){ print(" hello")})

typeof(quote(x <- 3))
class(quote(x <- 3))

typeof(setClass("test", slots = list(value = "numeric"))(value = 123))
class(setClass("test", slots = list(value = "numeric"))(value = 123))