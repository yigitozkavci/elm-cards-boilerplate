module State exposing (..)
import Types exposing (..)
import Rest

init : (Model, Cmd Msg)
init =
  (Model [], Rest.fetchCards)

-- SUBSCRIPTIONS
subscriptions : Model -> Sub Msg
subscriptions model =
  Sub.none

update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
  case msg of
    FetchCards ->
      (model, Rest.fetchCards)
    AddCard card ->
      ({ model | cards = card :: model.cards }, Cmd.none)
    FetchSucceed cards ->
      ({ model | cards = cards }, Cmd.none)
    FetchFail _ ->
      (model, Cmd.none)
