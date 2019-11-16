# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Escala
braden = Escala.create(nome: 'Escala de braden')

# Interpretaçoes da escala
Interpretacao.create(nome: 'Risco Brando', valor_minimo: 15, valor_maximo: 16, escala_id: braden.id)

# Parametros da escala
parametro1 = Parametro.create(nome: 'Percepção Sensorial', escala_id: braden.id)

# Respostas dos parametros da escala
Resposta.create(nome: 'Totalmente Limitado', pontuacao: 1, parametro_id: parametro1.id)
Resposta.create(nome: 'Muito Limitado', pontuacao: 2, parametro_id: parametro1.id)
Resposta.create(nome: 'Pouco Limitado', pontuacao: 3, parametro_id: parametro1.id)
Resposta.create(nome: 'Nenhuma Limitação', pontuacao: 4, parametro_id: parametro1.id)
