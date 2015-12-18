class DSL
    attr_accessor :autors, :journal, :title
    def initialize(title)
        self.autors = []
        self.journal = []
        self.instructions = []
        self.title = title

        yield self if block_given?
    end    
    
    def to_s
    output = name
    output << "\n#{'=' * name.size}\n\n"
    output << "Ingredients: #{ingredients.join(', ')}\n\n"

    instructions.each_with_index do |instruction, index|
      output << "#{index + 1}) #{instruction}\n"
    end

    output
  end
    def autor(name, options = {}, options1 = {})
        autor = name
        autor << " (#{options[:surname]})" if options[:surname]
        autor << " (#{options[:names]})" if options[:names]

        autors << autor
    end
  # Introduce un string con un ingrediente de la receta, siendo opcional 
  # la cantidad indicada mediante el parametro option de tipo hash
  def journals(name, options = {})
    journals = name
    journals << " (#{options[:n_rev]})" if options[:n_rev]
    journals << " (#{options[:volumen]})" if options[:volumen]
    journal << journals
  end

  # Idem para los pasos
  def step(text, options = {})
    instruction = text
    instruction << " (#{options[:during]})" if options[:during]

    instructions << instruction
  end

end    