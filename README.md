Parte II

1-Elaborar el comando rails new animal
2-Luego elaboramos el diagrama de flujo donde identificamos la relaciones que existe entre "Animal" como padre y los hijos que heredarian sus metodos que en este caso seria "dog", "cat", "cow".
3-Teniendo ya definido las relaciones procederemos a generar los modelos correspondiente con los siguientes comandos:
  *rails g model animal animaleable:references{polymorphic}
  con esto creariamos la relacion polimorfica "animaleable" que nos facilitara la asociacion con futuroa animales que tengamos 
  *rails g model dog
  *rails g model cat  
  *rails g model cow

4-En los modelos creados por cada animal agregaremos el comandos has_many :animals, as: :animaleable y en el modelo de Animal verificaremos que el comando  belongs_to :animaleable, polymorphic: true, este correcto. Una vez generado esto procederemos a hacer las migraciones, con el comando rails db:migrate.

5-Luego de hacer la migracion, procederemos a verificar la relaciones entre el modelo animal y los modelos de animales(Dog, Cat, Cow). Entraremos a la consola rails c.

    * Dog.create
    * Dog.last.animals << Animal.create

Luego al consultar en el modelo animal podremos darnos cuenta que en la columna "animaleable_type" del modelo animal estara reflejado "dog" y en la columna "animaleable_id" el id del objeto que fue creado en el modelo dog.

