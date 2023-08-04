class ClassDefinition < OpenStruct
  def initialize(namespace: nil, name: nil, qualified_name: nil, node: nil, superclass: nil, instance_methods: [], class_methods: [], extended_modules: [], included_modules: [], comments: [], defined_files: [], referenced_files: [])
    super
  end

  def url(gem)
    Router.gem_class_path(gem.name, gem.version, qualified_name)
  end

  def eql?(other)
    qualified_name == other.qualified_name
  end

  def object_name
    "class"
  end

  def to_s
    "#{object_name} #{qualified_name}"
  end

  def to_param
    qualified_name
  end

  def title
    qualified_name
  end
end
