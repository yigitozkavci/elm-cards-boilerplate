module Types exposing (..)
import Http

type alias Model =
  {
    cards : List Card
  }

type alias Css =
  List (String, String)

type alias Card =
  { title : String, details : String }

type Msg
  = AddCard Card
  | FetchCards
  | FetchSucceed (List Card)
  | FetchFail Http.Error

