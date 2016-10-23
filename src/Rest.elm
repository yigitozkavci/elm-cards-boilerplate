module Rest exposing (..)
import Task
import Types exposing (..)
import Http
import Json.Decode as Json exposing (..)

fetchCards : Cmd Msg
fetchCards =
  let
    url =
      "http://localhost:3000/cards"
  in
    Task.perform FetchFail FetchSucceed (Http.get cardListDecoder url)

cardListDecoder : Json.Decoder (List Card)
cardListDecoder =
  Json.list cardDecoder

cardDecoder : Json.Decoder Card
cardDecoder =
  Json.object2 Card ("title" := Json.string) ("details" := Json.string)
