#' MoralSupport
#'
#' Function produces a message when you input a your current confidence level on a scale from 1 to 10.
#'
#' @param x is an integer on a scale from 1 to 10 based on how dumb you're currently feeling
#'
#' @return A heart graph with a message of encouragement
#' @export
#'
#' @examples MoralSupport(10)
#' @examples MoralSupport(3)
#' @examples MoralSupport(13)
#'
#'
MoralSupport<- function(x){
  if(x>=5. && x<=10 ){
    ggplot2::ggplot(data=heart)+
      ggplot2::geom_polygon(
        mapping=ggplot2::aes(x=x, y=y), fill="hotpink")+
      ggplot2::annotate("text",
                        label="You're not an idiot, and you're doing great!",
                        x=0, y=0, colour="black")
  } else if (x<5 && x>0) {
    ggplot2::ggplot(data=heart)+
      ggplot2::geom_polygon(
        mapping=ggplot2::aes(x=x, y=y), fill="lightblue")+
      ggplot2::annotate("text",
                        label="You might be an idiot, but that's ok!",
                        x=0, y=0, colour="black")
  } else {
    ggplot2::ggplot(data=heart)+
      ggplot2::geom_polygon(
        mapping=ggplot2::aes(x=-x, y=-y))+
      ggplot2::annotate("text",
                        label="You're definitely an idiot, because you didn't \n even enter the argument correctly",
                        x=0, y=0, colour="white")
  }

}
