module View exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Types exposing (..)

cardView : Card -> Html Msg
cardView card =
  div [ class "card", style cardStyle ] [ 
    h1 [] [ text card.title ],
    hr [] [],
    p [] [ text card.details ] 
  ]

cardStyle : Css
cardStyle =
  [
    ("border", "1px solid red"),
    ("width", "100px"),
    ("margin", "30px"),
    ("padding", "20px"),
    ("float", "left")
  ]

root : Model -> Html Msg
root model =
  div [] [ 
    ul [] (List.map (\card -> (cardView card)) model.cards),
    button [ onClick FetchCards ] [ text "Fetch them" ]
  ]
