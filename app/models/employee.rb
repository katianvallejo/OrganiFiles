class Employee < ActiveRecord::Base
	belongs_to :user
	validates :no_identificacion, presence: true
	validates :primer_nombre, presence: true, length: {minimum: 3}
	validates :segundo_nombre, length: {minimum: 3}
	validates :primer_apellido, presence: true, length: {minimum: 3}
	validates :segundo_apellido,  length: {minimum: 3}
	validates :direccion, presence: true, length: {minimum: 7} 
	validates :telefono, presence: true, length: {minimum: 7}
	validates :barrio, presence: true, length: {minimum: 3} 
	validates :salario, presence: true, length: {minimum: 3}
end
