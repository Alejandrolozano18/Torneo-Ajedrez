// codigo ejecutado :jheisson alejandro lozano cruz

//======================> Crear colección para Participantes <======================//
db.participantes.insertMany([
  { 
    "nombre": "Carlos Pérez", 
    "documento": "123456789", 
    "fecha_nacimiento": "1990-01-15", 
    "ranking": 2100 
  },
  { 
    "nombre": "Ana Gómez", 
    "documento": "123456788", 
    "fecha_nacimiento": "1995-02-20", 
    "ranking": 2200 
  },
  { 
    "nombre": "Luis Ramírez", 
    "documento": "123456787", 
    "fecha_nacimiento": "1985-03-10", 
    "ranking": 2300 
  },
  { 
    "nombre": "Sofía Torres", 
    "documento": "123456786", 
    "fecha_nacimiento": "1992-04-05", 
    "ranking": 2250 
  },
  { 
    "nombre": "Jorge Díaz", 
    "documento": "123456785", 
    "fecha_nacimiento": "1988-05-30", 
    "ranking": 2150 
  }
]);

// Explicación:
// - Esta colección almacena los datos básicos de los jugadores.
// - Cada jugador tiene un nombre, documento único, fecha de nacimiento y 
//   ranking (ELO) que determina su habilidad en el ajedrez.


//======================> Crear colección para Árbitros <======================//
db.arbitros.insertMany([
  { 
    "nombre": "Mario López", 
    "documento": "100200300", 
    "experiencia": "10 años", 
    "disponibilidad": ["2024-11-20", "2024-11-21", "2024-11-22"] 
  },
  { 
    "nombre": "Lucía Fernández", 
    "documento": "200300400", 
    "experiencia": "7 años", 
    "disponibilidad": ["2024-11-21", "2024-11-22", "2024-11-23"] 
  }
]);

// Explicación:
// - Los árbitros supervisan las partidas y garantizan que se cumplan las reglas.
// - Cada árbitro tiene nombre, documento, experiencia en años y días disponibles para arbitrar.

//======================> Crear colección para Partidas <======================//
db.partidas.insertMany([
  {
    "jugador_blancas": "Carlos Pérez",
    "jugador_negras": "Ana Gómez",
    "fecha": "2024-11-20",
    "hora": "10:00",
    "lugar": "Sala 1",
    "arbitro": "Mario López"
  },
  {
    "jugador_blancas": "Luis Ramírez",
    "jugador_negras": "Sofía Torres",
    "fecha": "2024-11-20",
    "hora": "14:00",
    "lugar": "Sala 2",
    "arbitro": "Lucía Fernández"
  },
  {
    "jugador_blancas": "Jorge Díaz",
    "jugador_negras": "Carlos Pérez",
    "fecha": "2024-11-21",
    "hora": "10:00",
    "lugar": "Sala 1",
    "arbitro": "Mario López"
  }
]);

// Explicación:
// - Cada partida tiene dos jugadores: uno con piezas blancas y otro con negras.
// - Incluye la fecha, hora, lugar y el árbitro asignado.


// codigo ejecutado :CRISTIAN SANTIAGO RIVERA GUZMAN

//======================> Crear colección para Resultados <======================//
db.resultados.insertMany([
  {
    "partida_id": ObjectId("64f1234567890abcdef12345"), // ID de la primera partida
    "puntaje_blancas": 1,
    "puntaje_negras": 0,
    "ganador": "Carlos Pérez"
  },
  {
    "partida_id": ObjectId("64f1234567890abcdef12346"), // ID de la segunda partida
    "puntaje_blancas": 0.5,
    "puntaje_negras": 0.5,
    "ganador": "Empate"
  },
  {
    "partida_id": ObjectId("64f1234567890abcdef12347"), // ID de la tercera partida
    "puntaje_blancas": 0,
    "puntaje_negras": 1,
    "ganador": "Jorge Díaz"
  }
]);

// Explicación:
// - El resultado de cada partida indica quién ganó y los puntajes obtenidos por las piezas blancas y negras.
// - Se usa "Empate" si ninguno de los dos jugadores gana.

//======================> Crear colección para Tabla de Posiciones <======================//
db.tabla_posiciones.insertMany([
  { "jugador": "Carlos Pérez", "partidas_jugadas": 2, "victorias": 1, "empates": 0, "derrotas": 1, "puntos": 1 },
  { "jugador": "Ana Gómez", "partidas_jugadas": 1, "victorias": 0, "empates": 0, "derrotas": 1, "puntos": 0 },
  { "jugador": "Luis Ramírez", "partidas_jugadas": 1, "victorias": 0, "empates": 1, "derrotas": 0, "puntos": 0.5 },
  { "jugador": "Sofía Torres", "partidas_jugadas": 1, "victorias": 0, "empates": 1, "derrotas": 0, "puntos": 0.5 },
  { "jugador": "Jorge Díaz", "partidas_jugadas": 1, "victorias": 1, "empates": 0, "derrotas": 0, "puntos": 1 }
]);

// Explicación:
// - La tabla de posiciones muestra un resumen de cada jugador, incluyendo sus partidas jugadas, victorias, empates, derrotas y puntos acumulados.
//======================> Consultas <======================//

db.participantes.find();
//db.participantes.deleteMany({});
//======================> Obtener la tabla de posiciones ordenada por puntos <======================//
db.tabla_posiciones.find().sort({ puntos: -1 });

//======================> Consultar partidas arbitradas por un árbitro específico <======================//

db.partidas.find(
  { arbitro: "Mario López" },
  { _id: 0, fecha: 1, hora: 1, lugar: 1, jugador_blancas: 1, jugador_negras: 1 }
);

//======================> Consultar resultados de partidas de un jugador específico <======================//

db.resultados.aggregate([
  {
    $lookup: {
      from: "partidas",
      localField: "partida_id",
      foreignField: "_id",
      as: "detalle_partida"
    }
  },
  {
    $match: {
      $or: [
        { "detalle_partida.jugador_blancas": "Carlos Pérez" },
        { "detalle_partida.jugador_negras": "Carlos Pérez" }
      ]
    }
  },
  {
    $project: {
      _id: 0,
      partida_id: 1,
      "detalle_partida.fecha": 1,
      "detalle_partida.jugador_blancas": 1,
      "detalle_partida.jugador_negras": 1,
      puntaje_blancas: 1,
      puntaje_negras: 1,
      ganador: 1
    }
  }
]);