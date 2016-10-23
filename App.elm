import State
import View exposing (..)
import Html.App as Html

main =
  Html.program {
    init = State.init,
    view = View.root,
    update = State.update,
    subscriptions = State.subscriptions
  }
