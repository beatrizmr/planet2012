class Type < ActiveRecord::Base
  has_many :sites
  
  
  # Se a�ade esta definici�n de recurso
  validates :name, :description, :presence => true      # campo obligatorio
  validates :name,               :uniqueness => true  # Campo �nico (no repetido)
end