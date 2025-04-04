require 'faker'

puts "Borrando datos anteriores..."
UserFerment.destroy_all
FermentRecipe.destroy_all
User.destroy_all



marco = User.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password_digest: BCrypt::Password.create(Faker::Internet.password)
)

ruben = User.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password_digest: BCrypt::Password.create(Faker::Internet.password)
)


puts "Creando MArco y Ruben"



yogurt = FermentRecipe.create!(
  name: "Yogurt",
  ingredients: "Leche, Fermento de yogur",
  instructions: 'Calienta la leche a 85°C y enfríala a 43°C. Añade los cultivos de yogur y mezcla bien. Cubre y deja fermentar en un lugar cálido durante 6-12 horas.',
  fermentation_time: 7,
  photos: [],
  user: marco
)
kefir = FermentRecipe.create!(
  name: "Kefir",
  ingredients: "Leche, Granos de kefir",
  instructions: 'Añade los granos de kefir a la leche y deja fermentar a temperatura ambiente durante 24 horas. Cuela los granos y disfruta del kefir.',
  fermentation_time: 24,
  photos: [],
  user: ruben
)
chucrut = FermentRecipe.create!(
  name: "Chucrut",
  ingredients: "Repollo, Sal",
  instructions: 'Corta el repollo y mézclalo con sal. Masajea hasta que suelte su jugo. Coloca en un frasco y deja fermentar a temperatura ambiente durante 1-4 semanas.',
  fermentation_time: 14,
  photos: [],
  user: ruben
)
kimchi = FermentRecipe.create!(
  name: "Kimchi",
  ingredients: "Repollo napa, Rábano daikon, Salsa de pescado, Chile en polvo",
  instructions: 'Corta el repollo y mezcla con sal. Deja reposar durante 2 horas. Mezcla con rábano, salsa de pescado y chile. Coloca en un frasco y deja fermentar a temperatura ambiente durante 1-2 semanas.',
  fermentation_time: 7,
  photos: [],
  user: marco
)
miso = FermentRecipe.create!(
  name: "Miso",
  ingredients: "Soja, Sal, Koji",
  instructions: 'Remoja la soja durante la noche. Cocina y tritura. Mezcla con koji y sal. Coloca en un frasco y deja fermentar en un lugar fresco durante 6 meses a 2 años.',
  fermentation_time: 2,
  photos: [],
  user: marco
)
tempeh = FermentRecipe.create!(
  name: "Tempeh",
  ingredients: "Soja, Cultivo de tempeh",
  instructions: 'Remoja la soja durante la noche. Cocina y tritura. Mezcla con el cultivo de tempeh y coloca en un molde. Deja fermentar a temperatura ambiente durante 24-48 horas.',
  fermentation_time: 2,
  photos: [],
  user: ruben
)

puts 'todo listoo'
