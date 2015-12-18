#===Class Publicaciones
#*Metodo initialize
#*Metodo to_s
#*Metodo <=>
class Publicaciones
        include Comparable
        attr_accessor :autor, :titulo, :f_pub
        
    def initialize(autor, titulo,f_pub)
        @autor = autor
        @titulo = titulo
        @f_pub = f_pub
    end
        
    def to_s
        "Autor: #{@autor}\n Titulo: #{@titulo}\n ISBN: #{@isbn}\n Fecha: #{@fecha}\n"
    end
        
    def <=>(anOther)
        titulo.size <=> anOther.titulo.size
    end
end