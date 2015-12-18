#===Class Libro
#*Metodo initialize
class Libro < Publicaciones
    attr_accessor :serie, :editorial, :edicion, :isbn
    def initialize(autor,titulo,f_pub,serie,editorial,edicion,isbn)
        super(autor,titulo,f_pub)
        @serie = serie
        @editorial = editorial
        @edicion = edicion
        @isbn = isbn
    end
end    