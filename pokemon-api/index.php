<?php

use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;
//var_dump($_SERVER["REQUEST_METHOD"]);
use Slim\Factory\AppFactory;

require __DIR__ . '/vendor/autoload.php';
require_once './includes/app_constants.php';
require_once './includes/helpers/helper_functions.php';

//--Step 1) Instantiate App.
$app = AppFactory::create();

//-- Step 2) Add routing middleware.
$app->addRoutingMiddleware();

//-- Step 3) Add error handling middleware.
$errorMiddleware = $app->addErrorMiddleware(true, true, true);

//parsing middleware
$app->addBodyParsingMiddleware();

//-- Step 4)
// TODO: change the name of the sub directory here. You also need to change it in .htaccess
$app->setBasePath("/pokemon-api");

//-- Step 5) Include the files containing the definitions of the callbacks.
//require_once './includes/routes/artists_routes.php';
require_once './includes/routes/pokemon_routes.php';
require_once './includes/routes/ability_routes.php';
require_once './includes/routes/games_routes.php';
require_once './includes/routes/generations_routes.php';
require_once './includes/routes/gyms_routes.php';
require_once './includes/routes/locations_routes.php';
require_once './includes/routes/pokedex_routes.php';
require_once './includes/routes/pokemon_ability_routes.php';
require_once './includes/routes/trainers_routes.php';
require_once './includes/routes/moves_routes.php';
require_once './includes/routes/pokemon_moves_routes.php';

//-- Step 6)
// TODO: And here we define app routes.
//$app->get("/artists", "handleGetAllArtists");
$app->get("/pokemon/{pokemonId}", "handleGetPokemonById");
$app->get("/abilities/{abili}", "handleGetAbilityById");
$app->get("/games/{gamez}", "handleGetGameById");
$app->get("/generations/{gens}", "handleGetGenerationById");
$app->get("/gyms/{gyms}", "handleGetGymById");
$app->get("/locations/{location}", "handleGetLocationById");
$app->get("/pokedex/{pokedex}", "handleGetPokedexById");
$app->get("/pokemon_ability/{pokebi}", "handleGetPokeAbilityById");
$app->get("/trainers/{trainers}", "handleGetTrainerById");
$app->get("/moves/{moves}", "handleGetMoveById");
$app->get("/pokemonMove/{pokemonMoves}", "handleGetPokemonMoveById");
//Change this piece of shit 
$app->get("/pokemon/{pokemonId}/abilities", "handleGetAllAbilitiesRelatedToPokemon");
$app->get("/pokemon/{pokemonId}/moves", "handleGetAllMovesRelatedToPokemon");
$app->get("/pokemon/{pokemonId}/abilities/{pokemonAbility}", "handleGetSpecificAbilitiesRelatedToPokemon");
$app->get("/pokemon/{pokemonId}/moves/{pokemonMove}", "handleGetSpecificMovesRelatedToPokemon");



$app->delete("/pokemon/{pokemonId}", "deleteOnePokemon");
$app->delete("/abilities/{abili}", "deleteOneAbility");
$app->delete("/games/{gamez}", "deleteOneGame");
$app->delete("/generations/{gens}", "deleteOneGeneration");
$app->delete("/gyms/{gyms}", "deleteOneGym");
$app->delete("/locations/{location}", "deleteOneLocation");
$app->delete("/pokedex/{pokedex}", "deleteOnePokedex");
$app->delete("/pokemon_ability/{pokebi}", "deleteOnePokeAbility");
$app->delete("/trainers/{trainers}", "deleteOneTrainer");
$app->delete("/moves/{moves}", "deleteOneMove");
$app->delete("/pokemonMove/{pokemonMoves}", "deleteOnePokemonMove");
$app->delete("/pokemon/{pokemonId}/abilities", "deleteAbilityByPokemon");
$app->delete("/pokemon/{pokemonId}/moves", "deleteMovesByPokemon");
$app->delete("/pokemon/{pokemonId}/abilities/{abilityId}", "handleDeleteSpecificAbilitiesRelatedToPokemon");
$app->delete("/pokemon/{pokemonId}/moves/{moveId}", "handleDeleteSpecificMoveRelatedToPokemon");


//-------------------------------------------------------------------------------------------------
//post operations 

//base resources
$app->post("/generations", "handleCreateGeneration");
$app->post("/pokemon", "handleCreatePokemon");
$app->post("/abilities", "handleCreateAbility");
$app->post("/moves", "handleCreateMove");
$app->post("/trainers", "handleCreateTrainer");

//to be mapped
//$app->post("/generations/{generationId}", "handleUnsupportedOperation");
//$app->post("/pokemon/{pokemonId}", "handleUnsupportedOperation");
//$app->post("/abilities/{abilityId}", "handleUnsupportedOperation");
//$app->post("/moves/{moveId}", "handleUnsupportedOperation");
//$app->post("/trainers/{trainerId}", "handleUnsupportedOperation");

//dependant resources
$app->post("/generations/{generationId}/games", "handleCreateGame");
$app->post("/trainers/{trainerId}/pokedex", "handleCreatePokedex");

// needs to be reevaluated for priority
//Unsuport this piece of shit that is bullying this young fine man 😘😍
//$app->post("/gyms/{gymId}/trainers", "handleCreateTrainer");

//to be mapped
//$app->post("/games/{gameId}/locations", "handleUnsupportedOperation");
//$app->post("/locations/{locationsId}/gyms", "handleUnsupportedOperation");
//$app->post("/generations/{generationId}/pokemon", "handleUnsupportedOperation");
//$app->post("/pokemon/{pokemonId}/abilities", "handleUnsupportedOperation");
//$app->post("/pokemon/{pokemonId}/moves", "handleUnsupportedOperation");

//to be mapped
//$app->post("/generations/{generationId}/games/{gameId}", "handleUnsupportedOperation");
//$app->post("/trainers/{trainerId}/pokedex/{pokedexId}", "handleUnsupportedOperation");
//$app->post("/games/{gameId}/locations/{locationId}", "handleUnsupportedOperation");
//$app->post("/locations/{locationsId}/gyms/{gymId}", "handleUnsupportedOperation");
//$app->post("/gyms/{gymId}/trainers/{trainerId}", "handleUnsupportedOperation");
//$app->post("/generations/{generationId}/pokemon/{pokemonId}", "handleUnsupportedOperation");
//$app->post("/pokemon/{pokemonId}/abilities/{abilityId}", "handleUnsupportedOperation");
//$app->post("/pokemon/{pokemonId}/moves/{moveId}", "handleUnsupportedOperation");


    




























function handleUnsupportedOperation(Request $request, Response $response, array $args) {
    $requested_format = $request->getHeader('Accept');
    
    if (isset($requested_format[0]) && $requested_format[0] === APP_MEDIA_TYPE_JSON) {
        $response_code = HTTP_METHOD_NOT_ALLOWED;
        $response_data = json_encode(getErrorUnsupportedMethod($request->getMethod), JSON_INVALID_UTF8_SUBSTITUTE);
    }
    else {
        $response_code = HTTP_UNSUPPORTED_MEDIA_TYPE;
        $response_data = json_encode(getErrorUnsupportedFormat(), JSON_INVALID_UTF8_SUBSTITUTE);
    }
    
    $response->getBody()->write($response_data);
    return $response->withStatus($response_code);
}

function handleBase(Request $request, Response $response, array $args) {
    $response_code = HTTP_OK;
    
    $requested_format = $request->getHeader('Accept');
    
    $resp = array(
        "message" => "Welcome to our pokemon api! Below are our resources and subresources.",
        "main resources" => array(
            "generations" => "localhost/generations",
            "pokemon" => "localhost/pokemon",
            "abilities" => "localhost/abilities",
            "moves" => "localhost/moves",
            "trainers" => "localhost/trainers"
        ),
        "subresources" => array(
            "games by generation" => "localhost/generations/{generationId}/games",
            "pokedex by trainers" => "localhost/trainers/{trainerId}/pokedex",
            "locations by games" => "localhost/games/{gameId}/locations",
            "gyms by location" => "localhost/locations/{locationsId}/gyms",
            "trainers as gym leaders" => "localhost/gyms/{gymId}/trainers",
            "pokemon by generation" => "localhost/generation/{generationId}/pokemon",
            "pokemon abilities" => "localhost/pokemon/{pokemonId}/abilities",
            "pokemon moves" => "localhost/pokemon/{pokemonId}/moves"
        )
    );
    
    if (isset($requested_format[0]) && $requested_format[0] === APP_MEDIA_TYPE_JSON) {
        $response_data = json_encode($resp);
    }
    else {
        $response_data = json_encode(getErrorUnsupportedFormat());
        $response_code = HTTP_UNSUPPORTED_MEDIA_TYPE;
    }
    
    $response->getBody()->write($response_data);
    return $response->withStatus($response_code);
}

// Run the app.
$app->run();
