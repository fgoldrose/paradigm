module Main exposing (..)

import Browser
import Html exposing (Html)


main : Program Flags Model Msg
main =
    Browser.element
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }


type alias Model =
    {}


type Msg
    = Msg1Example
    | Msg2Example


type alias Flags =
    ()


init : Flags -> ( Model, Cmd Msg )
init () =
    ( initModel, Cmd.none )


initModel : Model
initModel =
    {}


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Msg1Example ->
            ( model, Cmd.none )

        Msg2Example ->
            ( model, Cmd.none )


view : Model -> Html Msg
view model =
    Html.div [] [ Html.text "example" ]


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none
