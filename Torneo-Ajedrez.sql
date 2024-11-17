// 

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


