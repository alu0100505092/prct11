#===Class Lista
#*Metodo initialize
#*Metodo push
#*Metodo pushf
#*Metodo pop
#*Metodo ext
#*Metodo extfin
#*Metodo inicio
#*Metodo fin
#*Metodo each

Nodo = Struct.new(:value, :next, :prev)

class Lista 
    include Enumerable
    def initialize(nodo)
        @inicio = Nodo.new(nil)
        @fin = Nodo.new(nil)
        @fin = @inicio
    end    
    
    def push(nodo1)
        nodo = Nodo.new(nodo1, nil, nil)
        nodo.next = @inicio
        @inicio.prev = nodo
        @inicio = nodo 
    end    
    
    def pushf(nodo1) 
        nodo = Nodo.new(nodo1, nil, nil)
        @inicio = nodo
        @fin = nodo
    end
    
    def pop(nodo)
        @inicio = @inicio.next
    end
    
    def ext 
        aux = @inicio
        @inicio = @inicio.next
        aux.value
    end
    
    def extfin
        aux = @fin
        @fin = @fin.prev
        aux.value
    end
        
    def inicio
        @inicio.value
    end
    
    def fin
        @fin.value
    end
    
    def each 
        aux = @inicio
        while aux != nil do
            yield aux.value  
            aux = aux.next 
        end
    end
end


        

  