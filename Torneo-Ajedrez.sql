// codigo ejecutado :jheisson alejandro lozano cruz
//======================> Crear colección para Participantes <======================//
db.participantes.insertMany([
  { 
    "nombre": "Perez Candelario Manuel",
    "titulo": "GM",
    "federacion": "ESP",
    "elo": 2615,
    "ranking_inicial": 3
  },
  { 
    "nombre": "Predke Alexandr",
    "titulo": "GM",
    "federacion": "RUS",
    "elo": 2619,
    "ranking_inicial": 1
  },
  { 
    "nombre": "Solodovnichenko Yuri",
    "titulo": "GM",
    "federacion": "UKR",
    "elo": 2554,
    "ranking_inicial": 6
  },
  { 
    "nombre": "Ibarra Jerez Jose Carlos",
    "titulo": "GM",
    "federacion": "ESP",
    "elo": 2542,
    "ranking_inicial": 8
  },
  { 
    "nombre": "Popov Ivan",
    "titulo": "GM",
    "federacion": "RUS",
    "elo": 2585,
    "ranking_inicial": 4
  },
  { 
    "nombre": "Forcen Esteban Daniel",
    "titulo": "GM",
    "federacion": "ESP",
    "elo": 2567,
    "ranking_inicial": 5
  },
  { 
    "nombre": "Burmakin Vladimir",
    "titulo": "GM",
    "federacion": "RUS",
    "elo": 2495,
    "ranking_inicial": 11
  },
  { 
    "nombre": "Grachev Boris",
    "titulo": "GM",
    "federacion": "RUS",
    "elo": 2618,
    "ranking_inicial": 2
  },
  { 
    "nombre": "Sivuk Vitaly",
    "titulo": "GM",
    "federacion": "UKR",
    "elo": 2523,
    "ranking_inicial": 10
  },
  { 
    "nombre": "Martinez Reyes Pedro Ramon",
    "titulo": "FM",
    "federacion": "VEN",
    "elo": 2404,
    "ranking_inicial": 19
  }
]);

//======================> Crear colección para Árbitros <======================//
db.arbitros.insertMany([
  { 
    "nombre": "Árbitro Principal",
    "titulo": "IA",
    "federacion": "ESP",
    "experiencia": "15 años",
    "disponibilidad": ["2019-04-17", "2019-04-18", "2019-04-19", "2019-04-20", "2019-04-21"]
  },
  { 
    "nombre": "Árbitro Adjunto",
    "titulo": "FA",
    "federacion": "ESP",
    "experiencia": "8 años",
    "disponibilidad": ["2019-04-17", "2019-04-18", "2019-04-19", "2019-04-20", "2019-04-21"]
  }
]);

//======================> Crear colección para Partidas <======================//
db.partidas.insertMany([
  {
    "ronda": 1,
    "jugador_blancas": "Perez Candelario Manuel",
    "jugador_negras": "Predke Alexandr",
    "fecha": "2019-04-17",
    "resultado": "1/2-1/2",
    "arbitro": "Árbitro Principal"
  },
  {
    "ronda": 1,
    "jugador_blancas": "Solodovnichenko Yuri",
    "jugador_negras": "Ibarra Jerez Jose Carlos",
    "fecha": "2019-04-17",
    "resultado": "1-0",
    "arbitro": "Árbitro Adjunto"
  },
  {
    "ronda": 2,
    "jugador_blancas": "Popov Ivan",
    "jugador_negras": "Forcen Esteban Daniel",
    "fecha": "2019-04-18",
    "resultado": "1/2-1/2",
    "arbitro": "Árbitro Principal"
  }
]);

//======================> Crear colección para Resultados Finales <======================//
db.resultados_finales.insertMany([
  {
    "posicion": 1,
    "jugador": "Perez Candelario Manuel",
    "puntos": 7.5,
    "desempate1": 52.0,
    "desempate2": 56.0,
    "desempate3": 41.0,
    "desempate4": 45.50
  },
  {
    "posicion": 2,
    "jugador": "Predke Alexandr",
    "puntos": 7.5,
    "desempate1": 51.5,
    "desempate2": 56.0,
    "desempate3": 39.0,
    "desempate4": 45.75
  },
  {
    "posicion": 3,
    "jugador": "Solodovnichenko Yuri",
    "puntos": 7.0,
    "desempate1": 53.5,
    "desempate2": 57.5,
    "desempate3": 40.0,
    "desempate4": 43.00
  },
  {
    "posicion": 4,
    "jugador": "Ibarra Jerez Jose Carlos",
    "puntos": 7.0,
    "desempate1": 51.0,
    "desempate2": 56.0,
    "desempate3": 38.5,
    "desempate4": 41.25
  },
  {
    "posicion": 5,
    "jugador": "Popov Ivan",
    "puntos": 7.0,
    "desempate1": 50.0,
    "desempate2": 53.0,
    "desempate3": 38.0,
    "desempate4": 39.50
  },
  {
    "posicion": 6,
    "jugador": "Forcen Esteban Daniel",
    "puntos": 7.0,
    "desempate1": 49.5,
    "desempate2": 54.0,
    "desempate3": 38.5,
    "desempate4": 40.75
  },
  {
    "posicion": 7,
    "jugador": "Burmakin Vladimir",
    "puntos": 7.0,
    "desempate1": 49.0,
    "desempate2": 53.5,
    "desempate3": 38.5,
    "desempate4": 39.50
  },
  {
    "posicion": 8,
    "jugador": "Grachev Boris",
    "puntos": 7.0,
    "desempate1": 48.0,
    "desempate2": 52.5,
    "desempate3": 37.0,
    "desempate4": 39.75
  },
  {
    "posicion": 9,
    "jugador": "Sivuk Vitaly",
    "puntos": 7.0,
    "desempate1": 48.0,
    "desempate2": 51.5,
    "desempate3": 37.5,
    "desempate4": 37.25
  },
  {
    "posicion": 10,
    "jugador": "Martinez Reyes Pedro Ramon",
    "puntos": 7.0,
    "desempate1": 47.5,
    "desempate2": 52.0,
    "desempate3": 37.0,
    "desempate4": 38.25
  }
]);

// codigo ejecutado :CRISTIAN SANTIAGO RIVERA GUZMAN


//======================> Crear colección para Información del Torneo <======================//
db.torneo_info.insertOne({
  "nombre": "Torneo de La Roda",
  "lugar": "La Roda (Albacete)",
  "fecha_inicio": "2019-04-17",
  "fecha_fin": "2019-04-21",
  "tipo_torneo": "Internacional",
  "num_rondas": 9,
  "sistema": "Suizo",
  "ritmo_juego": "90min + 30seg",
  "director_torneo": "Director Principal",
  "arbitro_principal": "Árbitro Principal"
});

//======================> Consultas útiles <======================//

// Obtener clasificación final ordenada por puntos y desempates
db.resultados_finales.find().sort({
  puntos: -1,
  desempate1: -1,
  desempate2: -1,
  desempate3: -1
});

// Buscar jugadores por título
db.participantes.find({
  titulo: "GM"
});

// Obtener detalles de partidas por fecha
db.partidas.find({
  fecha: "2019-04-17"
});

// Obtener jugadores por federación
db.participantes.find({
  federacion: "ESP"
});
