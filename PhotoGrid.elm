module PhotoGrid exposing (..)

import Html exposing (beginnerProgram, text, div, Html, img)
import Html.Attributes exposing (class, src)
import Types exposing (examplePhoto, exampleComment, Photo)
import List exposing (repeat, map)


type Msg
    = Nothing


type alias Model =
    { photos : List Photo }


photoView : Photo -> Html Msg
photoView photo =
    div [ class "photo" ]
        [ img [ src photo.url ] [] ]


photoGridView : List Photo -> Html Msg
photoGridView photos =
    div [ class "photo-grid" ]
        (map photoView photos)


model : { photos : List { commentCount : number, comments : List Types.Comment, likeCount : number1, location : String, url : String, username : String } }
model =
    { photos = repeat 12 examplePhoto }


view : Model -> Html Msg
view model =
    photoGridView model.photos


update msg model =
    model


main =
    beginnerProgram
        { model = model
        , view = view
        , update = update
        }
