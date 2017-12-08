module Routes.StartVisitPage exposing (..)

import Helpers.ConvertToMin exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Model exposing (..)


startVisitPage : Model -> Html Msg
startVisitPage model =
    div [ class "w-60-ns center" ]
        [ img [ class "center pt5 h5 ma0", src "./assets/logo.png" ] []
        , p [ class "f3 w60 mh1 tc" ] [ text <| convertToMin model.timerLength ]
        , a [ href "#stopVisitQuestionPage", class "link" ] [ text "End Visit" ]
        , button [ class "ma3 brand bg-white center db f3", onClick CancelVisit ] [ text "Cancel this visit" ]
        ]
